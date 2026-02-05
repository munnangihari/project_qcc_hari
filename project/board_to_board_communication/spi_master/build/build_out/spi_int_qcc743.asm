
/home/hari/QCCSDK-QCC74x/examples/peripherals/spi/spi_master/build/build_out/spi_int_qcc743.elf:     file format elf32-littleriscv


Disassembly of section .init:

a0000000 <__start>:
a0000000:	c2fc2197          	auipc	gp,0xc2fc2
a0000004:	31818193          	addi	gp,gp,792 # 62fc2318 <__global_pointer$>
a0000008:	30047073          	csrci	mstatus,8
a000000c:	20056537          	lui	a0,0x20056
a0000010:	0b052583          	lw	a1,176(a0) # 200560b0 <remain_wifi_ram+0x200360b0>
a0000014:	40280537          	lui	a0,0x40280
a0000018:	7641                	lui	a2,0xffff0
a000001a:	8df1                	and	a1,a1,a2
a000001c:	00b50363          	beq	a0,a1,a0000022 <__start+0x22>
a0000020:	a001                	j	a0000020 <__start+0x20>
a0000022:	00007517          	auipc	a0,0x7
a0000026:	d5e50513          	addi	a0,a0,-674 # a0006d80 <trap>
a000002a:	00356513          	ori	a0,a0,3
a000002e:	30551073          	csrw	mtvec,a0
a0000032:	300022f3          	csrr	t0,mstatus
a0000036:	7369                	lui	t1,0xffffa
a0000038:	137d                	addi	t1,t1,-1
a000003a:	0062f2b3          	and	t0,t0,t1
a000003e:	6309                	lui	t1,0x2
a0000040:	0062e2b3          	or	t0,t0,t1
a0000044:	30029073          	csrw	mstatus,t0
a0000048:	c2fc3117          	auipc	sp,0xc2fc3
a000004c:	e1810113          	addi	sp,sp,-488 # 62fc2e60 <gpio>
a0000050:	34011073          	csrw	mscratch,sp
a0000054:	76f060ef          	jal	ra,a0006fc2 <SystemInit>
a0000058:	665060ef          	jal	ra,a0006ebc <start_load>
a000005c:	12c070ef          	jal	ra,a0007188 <System_Post_Init>
a0000060:	04a040ef          	jal	ra,a00040aa <main>

a0000064 <__exit>:
a0000064:	a001                	j	a0000064 <__exit>

Disassembly of section .text:

a0000c80 <__lshrdi3>:
a0000c80:	ce01                	beqz	a2,a0000c98 <__lshrdi3+0x18>
a0000c82:	02000793          	li	a5,32
a0000c86:	8f91                	sub	a5,a5,a2
a0000c88:	00f04963          	bgtz	a5,a0000c9a <__lshrdi3+0x1a>
a0000c8c:	fe060513          	addi	a0,a2,-32 # fffeffe0 <__psram_limit+0x57beffe0>
a0000c90:	4701                	li	a4,0
a0000c92:	00a5d533          	srl	a0,a1,a0
a0000c96:	85ba                	mv	a1,a4
a0000c98:	8082                	ret
a0000c9a:	00c5d733          	srl	a4,a1,a2
a0000c9e:	00c55533          	srl	a0,a0,a2
a0000ca2:	00f595b3          	sll	a1,a1,a5
a0000ca6:	8d4d                	or	a0,a0,a1
a0000ca8:	b7fd                	j	a0000c96 <__lshrdi3+0x16>

a0000caa <__ashldi3>:
a0000caa:	ce01                	beqz	a2,a0000cc2 <__ashldi3+0x18>
a0000cac:	02000793          	li	a5,32
a0000cb0:	8f91                	sub	a5,a5,a2
a0000cb2:	00f04963          	bgtz	a5,a0000cc4 <__ashldi3+0x1a>
a0000cb6:	fe060593          	addi	a1,a2,-32
a0000cba:	4701                	li	a4,0
a0000cbc:	00b515b3          	sll	a1,a0,a1
a0000cc0:	853a                	mv	a0,a4
a0000cc2:	8082                	ret
a0000cc4:	00c51733          	sll	a4,a0,a2
a0000cc8:	00c595b3          	sll	a1,a1,a2
a0000ccc:	00f55533          	srl	a0,a0,a5
a0000cd0:	8dc9                	or	a1,a1,a0
a0000cd2:	b7fd                	j	a0000cc0 <__ashldi3+0x16>

a0000cd4 <__divdi3>:
a0000cd4:	8e2a                	mv	t3,a0
a0000cd6:	4801                	li	a6,0
a0000cd8:	0005da63          	bgez	a1,a0000cec <__divdi3+0x18>
a0000cdc:	00a037b3          	snez	a5,a0
a0000ce0:	40b005b3          	neg	a1,a1
a0000ce4:	8d9d                	sub	a1,a1,a5
a0000ce6:	40a00e33          	neg	t3,a0
a0000cea:	587d                	li	a6,-1
a0000cec:	0006db63          	bgez	a3,a0000d02 <__divdi3+0x2e>
a0000cf0:	00c037b3          	snez	a5,a2
a0000cf4:	40d006b3          	neg	a3,a3
a0000cf8:	fff84813          	not	a6,a6
a0000cfc:	8e9d                	sub	a3,a3,a5
a0000cfe:	40c00633          	neg	a2,a2
a0000d02:	88b2                	mv	a7,a2
a0000d04:	8f36                	mv	t5,a3
a0000d06:	8ef2                	mv	t4,t3
a0000d08:	832e                	mv	t1,a1
a0000d0a:	22069463          	bnez	a3,a0000f32 <__divdi3+0x25e>
a0000d0e:	a0009737          	lui	a4,0xa0009
a0000d12:	de070713          	addi	a4,a4,-544 # a0008de0 <__psram_limit+0xf7c08de0>
a0000d16:	0cc5f263          	bgeu	a1,a2,a0000dda <__divdi3+0x106>
a0000d1a:	67c1                	lui	a5,0x10
a0000d1c:	0af67863          	bgeu	a2,a5,a0000dcc <__divdi3+0xf8>
a0000d20:	0ff00793          	li	a5,255
a0000d24:	00c7b7b3          	sltu	a5,a5,a2
a0000d28:	078e                	slli	a5,a5,0x3
a0000d2a:	00f656b3          	srl	a3,a2,a5
a0000d2e:	9736                	add	a4,a4,a3
a0000d30:	00074683          	lbu	a3,0(a4)
a0000d34:	97b6                	add	a5,a5,a3
a0000d36:	02000693          	li	a3,32
a0000d3a:	40f68733          	sub	a4,a3,a5
a0000d3e:	00f68c63          	beq	a3,a5,a0000d56 <__divdi3+0x82>
a0000d42:	00e595b3          	sll	a1,a1,a4
a0000d46:	00fe57b3          	srl	a5,t3,a5
a0000d4a:	00e618b3          	sll	a7,a2,a4
a0000d4e:	00b7e333          	or	t1,a5,a1
a0000d52:	00ee1eb3          	sll	t4,t3,a4
a0000d56:	0108d513          	srli	a0,a7,0x10
a0000d5a:	02a356b3          	divu	a3,t1,a0
a0000d5e:	01089593          	slli	a1,a7,0x10
a0000d62:	81c1                	srli	a1,a1,0x10
a0000d64:	010ed793          	srli	a5,t4,0x10
a0000d68:	02a37733          	remu	a4,t1,a0
a0000d6c:	8636                	mv	a2,a3
a0000d6e:	02d58333          	mul	t1,a1,a3
a0000d72:	0742                	slli	a4,a4,0x10
a0000d74:	8fd9                	or	a5,a5,a4
a0000d76:	0067fc63          	bgeu	a5,t1,a0000d8e <__divdi3+0xba>
a0000d7a:	97c6                	add	a5,a5,a7
a0000d7c:	fff68613          	addi	a2,a3,-1
a0000d80:	0117e763          	bltu	a5,a7,a0000d8e <__divdi3+0xba>
a0000d84:	0067f563          	bgeu	a5,t1,a0000d8e <__divdi3+0xba>
a0000d88:	ffe68613          	addi	a2,a3,-2
a0000d8c:	97c6                	add	a5,a5,a7
a0000d8e:	406787b3          	sub	a5,a5,t1
a0000d92:	02a7f733          	remu	a4,a5,a0
a0000d96:	0ec2                	slli	t4,t4,0x10
a0000d98:	010ede93          	srli	t4,t4,0x10
a0000d9c:	02a7d7b3          	divu	a5,a5,a0
a0000da0:	0742                	slli	a4,a4,0x10
a0000da2:	01d76eb3          	or	t4,a4,t4
a0000da6:	02f586b3          	mul	a3,a1,a5
a0000daa:	873e                	mv	a4,a5
a0000dac:	00defb63          	bgeu	t4,a3,a0000dc2 <__divdi3+0xee>
a0000db0:	9ec6                	add	t4,t4,a7
a0000db2:	fff78713          	addi	a4,a5,-1 # ffff <wifi_ram_max_size+0x7fff>
a0000db6:	011ee663          	bltu	t4,a7,a0000dc2 <__divdi3+0xee>
a0000dba:	00def463          	bgeu	t4,a3,a0000dc2 <__divdi3+0xee>
a0000dbe:	ffe78713          	addi	a4,a5,-2
a0000dc2:	01061513          	slli	a0,a2,0x10
a0000dc6:	8d59                	or	a0,a0,a4
a0000dc8:	4301                	li	t1,0
a0000dca:	a85d                	j	a0000e80 <__divdi3+0x1ac>
a0000dcc:	010006b7          	lui	a3,0x1000
a0000dd0:	47c1                	li	a5,16
a0000dd2:	f4d66ce3          	bltu	a2,a3,a0000d2a <__divdi3+0x56>
a0000dd6:	47e1                	li	a5,24
a0000dd8:	bf89                	j	a0000d2a <__divdi3+0x56>
a0000dda:	e601                	bnez	a2,a0000de2 <__divdi3+0x10e>
a0000ddc:	4885                	li	a7,1
a0000dde:	02d8d8b3          	divu	a7,a7,a3
a0000de2:	67c1                	lui	a5,0x10
a0000de4:	0af8f963          	bgeu	a7,a5,a0000e96 <__divdi3+0x1c2>
a0000de8:	0ff00793          	li	a5,255
a0000dec:	0117f363          	bgeu	a5,a7,a0000df2 <__divdi3+0x11e>
a0000df0:	4f21                	li	t5,8
a0000df2:	01e8d7b3          	srl	a5,a7,t5
a0000df6:	973e                	add	a4,a4,a5
a0000df8:	00074783          	lbu	a5,0(a4)
a0000dfc:	02000693          	li	a3,32
a0000e00:	97fa                	add	a5,a5,t5
a0000e02:	40f68733          	sub	a4,a3,a5
a0000e06:	08f69f63          	bne	a3,a5,a0000ea4 <__divdi3+0x1d0>
a0000e0a:	411585b3          	sub	a1,a1,a7
a0000e0e:	4305                	li	t1,1
a0000e10:	0108d513          	srli	a0,a7,0x10
a0000e14:	01089613          	slli	a2,a7,0x10
a0000e18:	8241                	srli	a2,a2,0x10
a0000e1a:	010ed713          	srli	a4,t4,0x10
a0000e1e:	02a5d7b3          	divu	a5,a1,a0
a0000e22:	02a5f6b3          	remu	a3,a1,a0
a0000e26:	02f605b3          	mul	a1,a2,a5
a0000e2a:	06c2                	slli	a3,a3,0x10
a0000e2c:	8f55                	or	a4,a4,a3
a0000e2e:	86be                	mv	a3,a5
a0000e30:	00b77c63          	bgeu	a4,a1,a0000e48 <__divdi3+0x174>
a0000e34:	9746                	add	a4,a4,a7
a0000e36:	fff78693          	addi	a3,a5,-1 # ffff <wifi_ram_max_size+0x7fff>
a0000e3a:	01176763          	bltu	a4,a7,a0000e48 <__divdi3+0x174>
a0000e3e:	00b77563          	bgeu	a4,a1,a0000e48 <__divdi3+0x174>
a0000e42:	ffe78693          	addi	a3,a5,-2
a0000e46:	9746                	add	a4,a4,a7
a0000e48:	8f0d                	sub	a4,a4,a1
a0000e4a:	02a777b3          	remu	a5,a4,a0
a0000e4e:	0ec2                	slli	t4,t4,0x10
a0000e50:	010ede93          	srli	t4,t4,0x10
a0000e54:	02a75733          	divu	a4,a4,a0
a0000e58:	07c2                	slli	a5,a5,0x10
a0000e5a:	01d7eeb3          	or	t4,a5,t4
a0000e5e:	02e60633          	mul	a2,a2,a4
a0000e62:	87ba                	mv	a5,a4
a0000e64:	00cefb63          	bgeu	t4,a2,a0000e7a <__divdi3+0x1a6>
a0000e68:	9ec6                	add	t4,t4,a7
a0000e6a:	fff70793          	addi	a5,a4,-1
a0000e6e:	011ee663          	bltu	t4,a7,a0000e7a <__divdi3+0x1a6>
a0000e72:	00cef463          	bgeu	t4,a2,a0000e7a <__divdi3+0x1a6>
a0000e76:	ffe70793          	addi	a5,a4,-2
a0000e7a:	01069513          	slli	a0,a3,0x10
a0000e7e:	8d5d                	or	a0,a0,a5
a0000e80:	859a                	mv	a1,t1
a0000e82:	00080963          	beqz	a6,a0000e94 <__divdi3+0x1c0>
a0000e86:	00a037b3          	snez	a5,a0
a0000e8a:	406005b3          	neg	a1,t1
a0000e8e:	8d9d                	sub	a1,a1,a5
a0000e90:	40a00533          	neg	a0,a0
a0000e94:	8082                	ret
a0000e96:	010007b7          	lui	a5,0x1000
a0000e9a:	4f41                	li	t5,16
a0000e9c:	f4f8ebe3          	bltu	a7,a5,a0000df2 <__divdi3+0x11e>
a0000ea0:	4f61                	li	t5,24
a0000ea2:	bf81                	j	a0000df2 <__divdi3+0x11e>
a0000ea4:	00e898b3          	sll	a7,a7,a4
a0000ea8:	00f5d533          	srl	a0,a1,a5
a0000eac:	00ee1eb3          	sll	t4,t3,a4
a0000eb0:	00e595b3          	sll	a1,a1,a4
a0000eb4:	00fe57b3          	srl	a5,t3,a5
a0000eb8:	0108de13          	srli	t3,a7,0x10
a0000ebc:	00b7e633          	or	a2,a5,a1
a0000ec0:	03c557b3          	divu	a5,a0,t3
a0000ec4:	01089593          	slli	a1,a7,0x10
a0000ec8:	81c1                	srli	a1,a1,0x10
a0000eca:	03c57733          	remu	a4,a0,t3
a0000ece:	01065513          	srli	a0,a2,0x10
a0000ed2:	833e                	mv	t1,a5
a0000ed4:	02f586b3          	mul	a3,a1,a5
a0000ed8:	0742                	slli	a4,a4,0x10
a0000eda:	8f49                	or	a4,a4,a0
a0000edc:	00d77c63          	bgeu	a4,a3,a0000ef4 <__divdi3+0x220>
a0000ee0:	9746                	add	a4,a4,a7
a0000ee2:	fff78313          	addi	t1,a5,-1 # ffffff <remain_wifi_ram+0xfdffff>
a0000ee6:	01176763          	bltu	a4,a7,a0000ef4 <__divdi3+0x220>
a0000eea:	00d77563          	bgeu	a4,a3,a0000ef4 <__divdi3+0x220>
a0000eee:	ffe78313          	addi	t1,a5,-2
a0000ef2:	9746                	add	a4,a4,a7
a0000ef4:	40d706b3          	sub	a3,a4,a3
a0000ef8:	03c6f733          	remu	a4,a3,t3
a0000efc:	0642                	slli	a2,a2,0x10
a0000efe:	8241                	srli	a2,a2,0x10
a0000f00:	03c6d6b3          	divu	a3,a3,t3
a0000f04:	0742                	slli	a4,a4,0x10
a0000f06:	02d587b3          	mul	a5,a1,a3
a0000f0a:	00c765b3          	or	a1,a4,a2
a0000f0e:	8736                	mv	a4,a3
a0000f10:	00f5fc63          	bgeu	a1,a5,a0000f28 <__divdi3+0x254>
a0000f14:	95c6                	add	a1,a1,a7
a0000f16:	fff68713          	addi	a4,a3,-1 # ffffff <remain_wifi_ram+0xfdffff>
a0000f1a:	0115e763          	bltu	a1,a7,a0000f28 <__divdi3+0x254>
a0000f1e:	00f5f563          	bgeu	a1,a5,a0000f28 <__divdi3+0x254>
a0000f22:	ffe68713          	addi	a4,a3,-2
a0000f26:	95c6                	add	a1,a1,a7
a0000f28:	0342                	slli	t1,t1,0x10
a0000f2a:	8d9d                	sub	a1,a1,a5
a0000f2c:	00e36333          	or	t1,t1,a4
a0000f30:	b5c5                	j	a0000e10 <__divdi3+0x13c>
a0000f32:	14d5e263          	bltu	a1,a3,a0001076 <__divdi3+0x3a2>
a0000f36:	67c1                	lui	a5,0x10
a0000f38:	02f6ff63          	bgeu	a3,a5,a0000f76 <__divdi3+0x2a2>
a0000f3c:	0ff00713          	li	a4,255
a0000f40:	00d737b3          	sltu	a5,a4,a3
a0000f44:	078e                	slli	a5,a5,0x3
a0000f46:	a0009737          	lui	a4,0xa0009
a0000f4a:	00f6d533          	srl	a0,a3,a5
a0000f4e:	de070713          	addi	a4,a4,-544 # a0008de0 <__psram_limit+0xf7c08de0>
a0000f52:	972a                	add	a4,a4,a0
a0000f54:	00074703          	lbu	a4,0(a4)
a0000f58:	973e                	add	a4,a4,a5
a0000f5a:	02000793          	li	a5,32
a0000f5e:	40e78333          	sub	t1,a5,a4
a0000f62:	02e79163          	bne	a5,a4,a0000f84 <__divdi3+0x2b0>
a0000f66:	4505                	li	a0,1
a0000f68:	f0b6ece3          	bltu	a3,a1,a0000e80 <__divdi3+0x1ac>
a0000f6c:	00ce3533          	sltu	a0,t3,a2
a0000f70:	00154513          	xori	a0,a0,1
a0000f74:	b731                	j	a0000e80 <__divdi3+0x1ac>
a0000f76:	01000737          	lui	a4,0x1000
a0000f7a:	47c1                	li	a5,16
a0000f7c:	fce6e5e3          	bltu	a3,a4,a0000f46 <__divdi3+0x272>
a0000f80:	47e1                	li	a5,24
a0000f82:	b7d1                	j	a0000f46 <__divdi3+0x272>
a0000f84:	00e657b3          	srl	a5,a2,a4
a0000f88:	006696b3          	sll	a3,a3,t1
a0000f8c:	8edd                	or	a3,a3,a5
a0000f8e:	00e5d533          	srl	a0,a1,a4
a0000f92:	006597b3          	sll	a5,a1,t1
a0000f96:	00ee5733          	srl	a4,t3,a4
a0000f9a:	0106df13          	srli	t5,a3,0x10
a0000f9e:	00f765b3          	or	a1,a4,a5
a0000fa2:	03e57733          	remu	a4,a0,t5
a0000fa6:	01069e93          	slli	t4,a3,0x10
a0000faa:	010ede93          	srli	t4,t4,0x10
a0000fae:	0105d793          	srli	a5,a1,0x10
a0000fb2:	006618b3          	sll	a7,a2,t1
a0000fb6:	03e55533          	divu	a0,a0,t5
a0000fba:	0742                	slli	a4,a4,0x10
a0000fbc:	8fd9                	or	a5,a5,a4
a0000fbe:	02ae8fb3          	mul	t6,t4,a0
a0000fc2:	862a                	mv	a2,a0
a0000fc4:	01f7fc63          	bgeu	a5,t6,a0000fdc <__divdi3+0x308>
a0000fc8:	97b6                	add	a5,a5,a3
a0000fca:	fff50613          	addi	a2,a0,-1
a0000fce:	00d7e763          	bltu	a5,a3,a0000fdc <__divdi3+0x308>
a0000fd2:	01f7f563          	bgeu	a5,t6,a0000fdc <__divdi3+0x308>
a0000fd6:	ffe50613          	addi	a2,a0,-2
a0000fda:	97b6                	add	a5,a5,a3
a0000fdc:	41f787b3          	sub	a5,a5,t6
a0000fe0:	03e7f733          	remu	a4,a5,t5
a0000fe4:	05c2                	slli	a1,a1,0x10
a0000fe6:	81c1                	srli	a1,a1,0x10
a0000fe8:	03e7d7b3          	divu	a5,a5,t5
a0000fec:	0742                	slli	a4,a4,0x10
a0000fee:	8f4d                	or	a4,a4,a1
a0000ff0:	02fe8eb3          	mul	t4,t4,a5
a0000ff4:	85be                	mv	a1,a5
a0000ff6:	01d77c63          	bgeu	a4,t4,a000100e <__divdi3+0x33a>
a0000ffa:	9736                	add	a4,a4,a3
a0000ffc:	fff78593          	addi	a1,a5,-1 # ffff <wifi_ram_max_size+0x7fff>
a0001000:	00d76763          	bltu	a4,a3,a000100e <__divdi3+0x33a>
a0001004:	01d77563          	bgeu	a4,t4,a000100e <__divdi3+0x33a>
a0001008:	ffe78593          	addi	a1,a5,-2
a000100c:	9736                	add	a4,a4,a3
a000100e:	01061513          	slli	a0,a2,0x10
a0001012:	6f41                	lui	t5,0x10
a0001014:	8d4d                	or	a0,a0,a1
a0001016:	ffff0693          	addi	a3,t5,-1 # ffff <wifi_ram_max_size+0x7fff>
a000101a:	00d575b3          	and	a1,a0,a3
a000101e:	01055613          	srli	a2,a0,0x10
a0001022:	00d8f6b3          	and	a3,a7,a3
a0001026:	0108d893          	srli	a7,a7,0x10
a000102a:	41d70733          	sub	a4,a4,t4
a000102e:	02d58eb3          	mul	t4,a1,a3
a0001032:	02d606b3          	mul	a3,a2,a3
a0001036:	010ed793          	srli	a5,t4,0x10
a000103a:	031585b3          	mul	a1,a1,a7
a000103e:	95b6                	add	a1,a1,a3
a0001040:	97ae                	add	a5,a5,a1
a0001042:	03160633          	mul	a2,a2,a7
a0001046:	00d7f363          	bgeu	a5,a3,a000104c <__divdi3+0x378>
a000104a:	967a                	add	a2,a2,t5
a000104c:	0107d693          	srli	a3,a5,0x10
a0001050:	9636                	add	a2,a2,a3
a0001052:	02c76063          	bltu	a4,a2,a0001072 <__divdi3+0x39e>
a0001056:	d6c719e3          	bne	a4,a2,a0000dc8 <__divdi3+0xf4>
a000105a:	6741                	lui	a4,0x10
a000105c:	177d                	addi	a4,a4,-1
a000105e:	8ff9                	and	a5,a5,a4
a0001060:	07c2                	slli	a5,a5,0x10
a0001062:	00eefeb3          	and	t4,t4,a4
a0001066:	006e1e33          	sll	t3,t3,t1
a000106a:	97f6                	add	a5,a5,t4
a000106c:	4301                	li	t1,0
a000106e:	e0fe79e3          	bgeu	t3,a5,a0000e80 <__divdi3+0x1ac>
a0001072:	157d                	addi	a0,a0,-1
a0001074:	bb91                	j	a0000dc8 <__divdi3+0xf4>
a0001076:	4301                	li	t1,0
a0001078:	4501                	li	a0,0
a000107a:	b519                	j	a0000e80 <__divdi3+0x1ac>

a000107c <__moddi3>:
a000107c:	8f2a                	mv	t5,a0
a000107e:	8e2e                	mv	t3,a1
a0001080:	4801                	li	a6,0
a0001082:	0005db63          	bgez	a1,a0001098 <__moddi3+0x1c>
a0001086:	00a037b3          	snez	a5,a0
a000108a:	40b005b3          	neg	a1,a1
a000108e:	40f58e33          	sub	t3,a1,a5
a0001092:	40a00f33          	neg	t5,a0
a0001096:	587d                	li	a6,-1
a0001098:	0006d963          	bgez	a3,a00010aa <__moddi3+0x2e>
a000109c:	00c035b3          	snez	a1,a2
a00010a0:	40d006b3          	neg	a3,a3
a00010a4:	8e8d                	sub	a3,a3,a1
a00010a6:	40c00633          	neg	a2,a2
a00010aa:	8732                	mv	a4,a2
a00010ac:	87b6                	mv	a5,a3
a00010ae:	857a                	mv	a0,t5
a00010b0:	85f2                	mv	a1,t3
a00010b2:	1c069f63          	bnez	a3,a0001290 <__moddi3+0x214>
a00010b6:	a00096b7          	lui	a3,0xa0009
a00010ba:	de068693          	addi	a3,a3,-544 # a0008de0 <__psram_limit+0xf7c08de0>
a00010be:	0ace7f63          	bgeu	t3,a2,a000117c <__moddi3+0x100>
a00010c2:	68c1                	lui	a7,0x10
a00010c4:	0b167563          	bgeu	a2,a7,a000116e <__moddi3+0xf2>
a00010c8:	0ff00893          	li	a7,255
a00010cc:	00c8f363          	bgeu	a7,a2,a00010d2 <__moddi3+0x56>
a00010d0:	47a1                	li	a5,8
a00010d2:	00f658b3          	srl	a7,a2,a5
a00010d6:	96c6                	add	a3,a3,a7
a00010d8:	0006c303          	lbu	t1,0(a3)
a00010dc:	933e                	add	t1,t1,a5
a00010de:	02000793          	li	a5,32
a00010e2:	406788b3          	sub	a7,a5,t1
a00010e6:	00678c63          	beq	a5,t1,a00010fe <__moddi3+0x82>
a00010ea:	011e15b3          	sll	a1,t3,a7
a00010ee:	006f5333          	srl	t1,t5,t1
a00010f2:	01161733          	sll	a4,a2,a7
a00010f6:	00b365b3          	or	a1,t1,a1
a00010fa:	011f1533          	sll	a0,t5,a7
a00010fe:	01075313          	srli	t1,a4,0x10
a0001102:	0265f6b3          	remu	a3,a1,t1
a0001106:	01071613          	slli	a2,a4,0x10
a000110a:	8241                	srli	a2,a2,0x10
a000110c:	01055793          	srli	a5,a0,0x10
a0001110:	0265d5b3          	divu	a1,a1,t1
a0001114:	06c2                	slli	a3,a3,0x10
a0001116:	8fd5                	or	a5,a5,a3
a0001118:	02b605b3          	mul	a1,a2,a1
a000111c:	00b7f863          	bgeu	a5,a1,a000112c <__moddi3+0xb0>
a0001120:	97ba                	add	a5,a5,a4
a0001122:	00e7e563          	bltu	a5,a4,a000112c <__moddi3+0xb0>
a0001126:	00b7f363          	bgeu	a5,a1,a000112c <__moddi3+0xb0>
a000112a:	97ba                	add	a5,a5,a4
a000112c:	8f8d                	sub	a5,a5,a1
a000112e:	0267f6b3          	remu	a3,a5,t1
a0001132:	0542                	slli	a0,a0,0x10
a0001134:	8141                	srli	a0,a0,0x10
a0001136:	0267d7b3          	divu	a5,a5,t1
a000113a:	06c2                	slli	a3,a3,0x10
a000113c:	8d55                	or	a0,a0,a3
a000113e:	02f607b3          	mul	a5,a2,a5
a0001142:	00f57863          	bgeu	a0,a5,a0001152 <__moddi3+0xd6>
a0001146:	953a                	add	a0,a0,a4
a0001148:	00e56563          	bltu	a0,a4,a0001152 <__moddi3+0xd6>
a000114c:	00f57363          	bgeu	a0,a5,a0001152 <__moddi3+0xd6>
a0001150:	953a                	add	a0,a0,a4
a0001152:	8d1d                	sub	a0,a0,a5
a0001154:	01155533          	srl	a0,a0,a7
a0001158:	4581                	li	a1,0
a000115a:	00080963          	beqz	a6,a000116c <__moddi3+0xf0>
a000115e:	00a037b3          	snez	a5,a0
a0001162:	40b005b3          	neg	a1,a1
a0001166:	8d9d                	sub	a1,a1,a5
a0001168:	40a00533          	neg	a0,a0
a000116c:	8082                	ret
a000116e:	010008b7          	lui	a7,0x1000
a0001172:	47c1                	li	a5,16
a0001174:	f5166fe3          	bltu	a2,a7,a00010d2 <__moddi3+0x56>
a0001178:	47e1                	li	a5,24
a000117a:	bfa1                	j	a00010d2 <__moddi3+0x56>
a000117c:	e601                	bnez	a2,a0001184 <__moddi3+0x108>
a000117e:	4705                	li	a4,1
a0001180:	02f75733          	divu	a4,a4,a5
a0001184:	6641                	lui	a2,0x10
a0001186:	0ec77e63          	bgeu	a4,a2,a0001282 <__moddi3+0x206>
a000118a:	0ff00613          	li	a2,255
a000118e:	00e67363          	bgeu	a2,a4,a0001194 <__moddi3+0x118>
a0001192:	47a1                	li	a5,8
a0001194:	00f75633          	srl	a2,a4,a5
a0001198:	96b2                	add	a3,a3,a2
a000119a:	0006c303          	lbu	t1,0(a3)
a000119e:	40ee05b3          	sub	a1,t3,a4
a00011a2:	933e                	add	t1,t1,a5
a00011a4:	02000793          	li	a5,32
a00011a8:	406788b3          	sub	a7,a5,t1
a00011ac:	06678d63          	beq	a5,t1,a0001226 <__moddi3+0x1aa>
a00011b0:	01171733          	sll	a4,a4,a7
a00011b4:	006e5633          	srl	a2,t3,t1
a00011b8:	01075693          	srli	a3,a4,0x10
a00011bc:	011e15b3          	sll	a1,t3,a7
a00011c0:	006f5333          	srl	t1,t5,t1
a00011c4:	00b36333          	or	t1,t1,a1
a00011c8:	01071593          	slli	a1,a4,0x10
a00011cc:	81c1                	srli	a1,a1,0x10
a00011ce:	01035e13          	srli	t3,t1,0x10
a00011d2:	011f1533          	sll	a0,t5,a7
a00011d6:	02d677b3          	remu	a5,a2,a3
a00011da:	02d65633          	divu	a2,a2,a3
a00011de:	07c2                	slli	a5,a5,0x10
a00011e0:	01c7e7b3          	or	a5,a5,t3
a00011e4:	02c58633          	mul	a2,a1,a2
a00011e8:	00c7f863          	bgeu	a5,a2,a00011f8 <__moddi3+0x17c>
a00011ec:	97ba                	add	a5,a5,a4
a00011ee:	00e7e563          	bltu	a5,a4,a00011f8 <__moddi3+0x17c>
a00011f2:	00c7f363          	bgeu	a5,a2,a00011f8 <__moddi3+0x17c>
a00011f6:	97ba                	add	a5,a5,a4
a00011f8:	40c78633          	sub	a2,a5,a2
a00011fc:	02d677b3          	remu	a5,a2,a3
a0001200:	0342                	slli	t1,t1,0x10
a0001202:	01035313          	srli	t1,t1,0x10
a0001206:	02d65633          	divu	a2,a2,a3
a000120a:	07c2                	slli	a5,a5,0x10
a000120c:	02c58633          	mul	a2,a1,a2
a0001210:	0067e5b3          	or	a1,a5,t1
a0001214:	00c5f863          	bgeu	a1,a2,a0001224 <__moddi3+0x1a8>
a0001218:	95ba                	add	a1,a1,a4
a000121a:	00e5e563          	bltu	a1,a4,a0001224 <__moddi3+0x1a8>
a000121e:	00c5f363          	bgeu	a1,a2,a0001224 <__moddi3+0x1a8>
a0001222:	95ba                	add	a1,a1,a4
a0001224:	8d91                	sub	a1,a1,a2
a0001226:	01075613          	srli	a2,a4,0x10
a000122a:	02c5f7b3          	remu	a5,a1,a2
a000122e:	01071693          	slli	a3,a4,0x10
a0001232:	82c1                	srli	a3,a3,0x10
a0001234:	01055313          	srli	t1,a0,0x10
a0001238:	02c5d5b3          	divu	a1,a1,a2
a000123c:	07c2                	slli	a5,a5,0x10
a000123e:	0067e7b3          	or	a5,a5,t1
a0001242:	02b685b3          	mul	a1,a3,a1
a0001246:	00b7f863          	bgeu	a5,a1,a0001256 <__moddi3+0x1da>
a000124a:	97ba                	add	a5,a5,a4
a000124c:	00e7e563          	bltu	a5,a4,a0001256 <__moddi3+0x1da>
a0001250:	00b7f363          	bgeu	a5,a1,a0001256 <__moddi3+0x1da>
a0001254:	97ba                	add	a5,a5,a4
a0001256:	40b785b3          	sub	a1,a5,a1
a000125a:	02c5f7b3          	remu	a5,a1,a2
a000125e:	0542                	slli	a0,a0,0x10
a0001260:	8141                	srli	a0,a0,0x10
a0001262:	02c5d5b3          	divu	a1,a1,a2
a0001266:	07c2                	slli	a5,a5,0x10
a0001268:	8d5d                	or	a0,a0,a5
a000126a:	02b685b3          	mul	a1,a3,a1
a000126e:	00b57863          	bgeu	a0,a1,a000127e <__moddi3+0x202>
a0001272:	953a                	add	a0,a0,a4
a0001274:	00e56563          	bltu	a0,a4,a000127e <__moddi3+0x202>
a0001278:	00b57363          	bgeu	a0,a1,a000127e <__moddi3+0x202>
a000127c:	953a                	add	a0,a0,a4
a000127e:	8d0d                	sub	a0,a0,a1
a0001280:	bdd1                	j	a0001154 <__moddi3+0xd8>
a0001282:	01000637          	lui	a2,0x1000
a0001286:	47c1                	li	a5,16
a0001288:	f0c766e3          	bltu	a4,a2,a0001194 <__moddi3+0x118>
a000128c:	47e1                	li	a5,24
a000128e:	b719                	j	a0001194 <__moddi3+0x118>
a0001290:	ecde65e3          	bltu	t3,a3,a000115a <__moddi3+0xde>
a0001294:	67c1                	lui	a5,0x10
a0001296:	04f6f463          	bgeu	a3,a5,a00012de <__moddi3+0x262>
a000129a:	0ff00313          	li	t1,255
a000129e:	00d337b3          	sltu	a5,t1,a3
a00012a2:	078e                	slli	a5,a5,0x3
a00012a4:	a0009737          	lui	a4,0xa0009
a00012a8:	00f6d8b3          	srl	a7,a3,a5
a00012ac:	de070713          	addi	a4,a4,-544 # a0008de0 <__psram_limit+0xf7c08de0>
a00012b0:	9746                	add	a4,a4,a7
a00012b2:	00074303          	lbu	t1,0(a4)
a00012b6:	933e                	add	t1,t1,a5
a00012b8:	02000793          	li	a5,32
a00012bc:	406788b3          	sub	a7,a5,t1
a00012c0:	02679663          	bne	a5,t1,a00012ec <__moddi3+0x270>
a00012c4:	01c6e463          	bltu	a3,t3,a00012cc <__moddi3+0x250>
a00012c8:	e8cf69e3          	bltu	t5,a2,a000115a <__moddi3+0xde>
a00012cc:	40cf0533          	sub	a0,t5,a2
a00012d0:	40de05b3          	sub	a1,t3,a3
a00012d4:	00af3f33          	sltu	t5,t5,a0
a00012d8:	41e585b3          	sub	a1,a1,t5
a00012dc:	bdbd                	j	a000115a <__moddi3+0xde>
a00012de:	01000737          	lui	a4,0x1000
a00012e2:	47c1                	li	a5,16
a00012e4:	fce6e0e3          	bltu	a3,a4,a00012a4 <__moddi3+0x228>
a00012e8:	47e1                	li	a5,24
a00012ea:	bf6d                	j	a00012a4 <__moddi3+0x228>
a00012ec:	006657b3          	srl	a5,a2,t1
a00012f0:	011696b3          	sll	a3,a3,a7
a00012f4:	8edd                	or	a3,a3,a5
a00012f6:	006e5fb3          	srl	t6,t3,t1
a00012fa:	006f57b3          	srl	a5,t5,t1
a00012fe:	011f1533          	sll	a0,t5,a7
a0001302:	0106df13          	srli	t5,a3,0x10
a0001306:	011e15b3          	sll	a1,t3,a7
a000130a:	03efde33          	divu	t3,t6,t5
a000130e:	01161eb3          	sll	t4,a2,a7
a0001312:	8fcd                	or	a5,a5,a1
a0001314:	01069593          	slli	a1,a3,0x10
a0001318:	81c1                	srli	a1,a1,0x10
a000131a:	0107d713          	srli	a4,a5,0x10
a000131e:	03eff633          	remu	a2,t6,t5
a0001322:	03c58fb3          	mul	t6,a1,t3
a0001326:	0642                	slli	a2,a2,0x10
a0001328:	8f51                	or	a4,a4,a2
a000132a:	8672                	mv	a2,t3
a000132c:	01f77c63          	bgeu	a4,t6,a0001344 <__moddi3+0x2c8>
a0001330:	9736                	add	a4,a4,a3
a0001332:	fffe0613          	addi	a2,t3,-1
a0001336:	00d76763          	bltu	a4,a3,a0001344 <__moddi3+0x2c8>
a000133a:	01f77563          	bgeu	a4,t6,a0001344 <__moddi3+0x2c8>
a000133e:	ffee0613          	addi	a2,t3,-2
a0001342:	9736                	add	a4,a4,a3
a0001344:	41f70733          	sub	a4,a4,t6
a0001348:	03e77e33          	remu	t3,a4,t5
a000134c:	07c2                	slli	a5,a5,0x10
a000134e:	83c1                	srli	a5,a5,0x10
a0001350:	03e75733          	divu	a4,a4,t5
a0001354:	0e42                	slli	t3,t3,0x10
a0001356:	00fe6e33          	or	t3,t3,a5
a000135a:	02e585b3          	mul	a1,a1,a4
a000135e:	87ba                	mv	a5,a4
a0001360:	00be7c63          	bgeu	t3,a1,a0001378 <__moddi3+0x2fc>
a0001364:	9e36                	add	t3,t3,a3
a0001366:	fff70793          	addi	a5,a4,-1 # ffffff <remain_wifi_ram+0xfdffff>
a000136a:	00de6763          	bltu	t3,a3,a0001378 <__moddi3+0x2fc>
a000136e:	00be7563          	bgeu	t3,a1,a0001378 <__moddi3+0x2fc>
a0001372:	ffe70793          	addi	a5,a4,-2
a0001376:	9e36                	add	t3,t3,a3
a0001378:	0642                	slli	a2,a2,0x10
a000137a:	6fc1                	lui	t6,0x10
a000137c:	8e5d                	or	a2,a2,a5
a000137e:	40be05b3          	sub	a1,t3,a1
a0001382:	ffff8e13          	addi	t3,t6,-1 # ffff <wifi_ram_max_size+0x7fff>
a0001386:	01c67f33          	and	t5,a2,t3
a000138a:	010ed713          	srli	a4,t4,0x10
a000138e:	8241                	srli	a2,a2,0x10
a0001390:	01cefe33          	and	t3,t4,t3
a0001394:	03cf07b3          	mul	a5,t5,t3
a0001398:	03c60e33          	mul	t3,a2,t3
a000139c:	02ef0f33          	mul	t5,t5,a4
a00013a0:	02e60633          	mul	a2,a2,a4
a00013a4:	9f72                	add	t5,t5,t3
a00013a6:	0107d713          	srli	a4,a5,0x10
a00013aa:	977a                	add	a4,a4,t5
a00013ac:	01c77363          	bgeu	a4,t3,a00013b2 <__moddi3+0x336>
a00013b0:	967e                	add	a2,a2,t6
a00013b2:	01075e13          	srli	t3,a4,0x10
a00013b6:	9672                	add	a2,a2,t3
a00013b8:	6e41                	lui	t3,0x10
a00013ba:	1e7d                	addi	t3,t3,-1
a00013bc:	01c77733          	and	a4,a4,t3
a00013c0:	0742                	slli	a4,a4,0x10
a00013c2:	01c7f7b3          	and	a5,a5,t3
a00013c6:	97ba                	add	a5,a5,a4
a00013c8:	00c5e663          	bltu	a1,a2,a00013d4 <__moddi3+0x358>
a00013cc:	00c59b63          	bne	a1,a2,a00013e2 <__moddi3+0x366>
a00013d0:	00f57963          	bgeu	a0,a5,a00013e2 <__moddi3+0x366>
a00013d4:	41d78eb3          	sub	t4,a5,t4
a00013d8:	01d7b7b3          	sltu	a5,a5,t4
a00013dc:	97b6                	add	a5,a5,a3
a00013de:	8e1d                	sub	a2,a2,a5
a00013e0:	87f6                	mv	a5,t4
a00013e2:	40f507b3          	sub	a5,a0,a5
a00013e6:	00f53533          	sltu	a0,a0,a5
a00013ea:	8d91                	sub	a1,a1,a2
a00013ec:	8d89                	sub	a1,a1,a0
a00013ee:	00659333          	sll	t1,a1,t1
a00013f2:	0117d533          	srl	a0,a5,a7
a00013f6:	00a36533          	or	a0,t1,a0
a00013fa:	0115d5b3          	srl	a1,a1,a7
a00013fe:	bbb1                	j	a000115a <__moddi3+0xde>

a0001400 <__udivdi3>:
a0001400:	88aa                	mv	a7,a0
a0001402:	87ae                	mv	a5,a1
a0001404:	8832                	mv	a6,a2
a0001406:	8536                	mv	a0,a3
a0001408:	8346                	mv	t1,a7
a000140a:	20069663          	bnez	a3,a0001616 <__udivdi3+0x216>
a000140e:	a00096b7          	lui	a3,0xa0009
a0001412:	de068693          	addi	a3,a3,-544 # a0008de0 <__psram_limit+0xf7c08de0>
a0001416:	0ac5ff63          	bgeu	a1,a2,a00014d4 <__udivdi3+0xd4>
a000141a:	6741                	lui	a4,0x10
a000141c:	0ae67563          	bgeu	a2,a4,a00014c6 <__udivdi3+0xc6>
a0001420:	0ff00713          	li	a4,255
a0001424:	00c73733          	sltu	a4,a4,a2
a0001428:	070e                	slli	a4,a4,0x3
a000142a:	00e65533          	srl	a0,a2,a4
a000142e:	96aa                	add	a3,a3,a0
a0001430:	0006c683          	lbu	a3,0(a3)
a0001434:	02000513          	li	a0,32
a0001438:	9736                	add	a4,a4,a3
a000143a:	40e506b3          	sub	a3,a0,a4
a000143e:	00e50b63          	beq	a0,a4,a0001454 <__udivdi3+0x54>
a0001442:	00d795b3          	sll	a1,a5,a3
a0001446:	00e8d733          	srl	a4,a7,a4
a000144a:	00d61833          	sll	a6,a2,a3
a000144e:	8dd9                	or	a1,a1,a4
a0001450:	00d89333          	sll	t1,a7,a3
a0001454:	01085893          	srli	a7,a6,0x10
a0001458:	0315d6b3          	divu	a3,a1,a7
a000145c:	01081613          	slli	a2,a6,0x10
a0001460:	8241                	srli	a2,a2,0x10
a0001462:	01035793          	srli	a5,t1,0x10
a0001466:	0315f733          	remu	a4,a1,a7
a000146a:	8536                	mv	a0,a3
a000146c:	02d605b3          	mul	a1,a2,a3
a0001470:	0742                	slli	a4,a4,0x10
a0001472:	8fd9                	or	a5,a5,a4
a0001474:	00b7fc63          	bgeu	a5,a1,a000148c <__udivdi3+0x8c>
a0001478:	97c2                	add	a5,a5,a6
a000147a:	fff68513          	addi	a0,a3,-1
a000147e:	0107e763          	bltu	a5,a6,a000148c <__udivdi3+0x8c>
a0001482:	00b7f563          	bgeu	a5,a1,a000148c <__udivdi3+0x8c>
a0001486:	ffe68513          	addi	a0,a3,-2
a000148a:	97c2                	add	a5,a5,a6
a000148c:	8f8d                	sub	a5,a5,a1
a000148e:	0317f733          	remu	a4,a5,a7
a0001492:	0342                	slli	t1,t1,0x10
a0001494:	01035313          	srli	t1,t1,0x10
a0001498:	0317d7b3          	divu	a5,a5,a7
a000149c:	0742                	slli	a4,a4,0x10
a000149e:	00676333          	or	t1,a4,t1
a00014a2:	02f606b3          	mul	a3,a2,a5
a00014a6:	863e                	mv	a2,a5
a00014a8:	00d37b63          	bgeu	t1,a3,a00014be <__udivdi3+0xbe>
a00014ac:	9342                	add	t1,t1,a6
a00014ae:	fff78613          	addi	a2,a5,-1 # ffff <wifi_ram_max_size+0x7fff>
a00014b2:	01036663          	bltu	t1,a6,a00014be <__udivdi3+0xbe>
a00014b6:	00d37463          	bgeu	t1,a3,a00014be <__udivdi3+0xbe>
a00014ba:	ffe78613          	addi	a2,a5,-2
a00014be:	0542                	slli	a0,a0,0x10
a00014c0:	8d51                	or	a0,a0,a2
a00014c2:	4581                	li	a1,0
a00014c4:	a85d                	j	a000157a <__udivdi3+0x17a>
a00014c6:	01000537          	lui	a0,0x1000
a00014ca:	4741                	li	a4,16
a00014cc:	f4a66fe3          	bltu	a2,a0,a000142a <__udivdi3+0x2a>
a00014d0:	4761                	li	a4,24
a00014d2:	bfa1                	j	a000142a <__udivdi3+0x2a>
a00014d4:	e601                	bnez	a2,a00014dc <__udivdi3+0xdc>
a00014d6:	4705                	li	a4,1
a00014d8:	02c75833          	divu	a6,a4,a2
a00014dc:	6741                	lui	a4,0x10
a00014de:	08e87f63          	bgeu	a6,a4,a000157c <__udivdi3+0x17c>
a00014e2:	0ff00713          	li	a4,255
a00014e6:	01077363          	bgeu	a4,a6,a00014ec <__udivdi3+0xec>
a00014ea:	4521                	li	a0,8
a00014ec:	00a85733          	srl	a4,a6,a0
a00014f0:	96ba                	add	a3,a3,a4
a00014f2:	0006c703          	lbu	a4,0(a3)
a00014f6:	02000613          	li	a2,32
a00014fa:	972a                	add	a4,a4,a0
a00014fc:	40e606b3          	sub	a3,a2,a4
a0001500:	08e61563          	bne	a2,a4,a000158a <__udivdi3+0x18a>
a0001504:	410787b3          	sub	a5,a5,a6
a0001508:	4585                	li	a1,1
a000150a:	01085893          	srli	a7,a6,0x10
a000150e:	01081613          	slli	a2,a6,0x10
a0001512:	8241                	srli	a2,a2,0x10
a0001514:	01035713          	srli	a4,t1,0x10
a0001518:	0317f6b3          	remu	a3,a5,a7
a000151c:	0317d7b3          	divu	a5,a5,a7
a0001520:	06c2                	slli	a3,a3,0x10
a0001522:	8f55                	or	a4,a4,a3
a0001524:	02f60e33          	mul	t3,a2,a5
a0001528:	853e                	mv	a0,a5
a000152a:	01c77c63          	bgeu	a4,t3,a0001542 <__udivdi3+0x142>
a000152e:	9742                	add	a4,a4,a6
a0001530:	fff78513          	addi	a0,a5,-1
a0001534:	01076763          	bltu	a4,a6,a0001542 <__udivdi3+0x142>
a0001538:	01c77563          	bgeu	a4,t3,a0001542 <__udivdi3+0x142>
a000153c:	ffe78513          	addi	a0,a5,-2
a0001540:	9742                	add	a4,a4,a6
a0001542:	41c70733          	sub	a4,a4,t3
a0001546:	031777b3          	remu	a5,a4,a7
a000154a:	0342                	slli	t1,t1,0x10
a000154c:	01035313          	srli	t1,t1,0x10
a0001550:	03175733          	divu	a4,a4,a7
a0001554:	07c2                	slli	a5,a5,0x10
a0001556:	0067e333          	or	t1,a5,t1
a000155a:	02e606b3          	mul	a3,a2,a4
a000155e:	863a                	mv	a2,a4
a0001560:	00d37b63          	bgeu	t1,a3,a0001576 <__udivdi3+0x176>
a0001564:	9342                	add	t1,t1,a6
a0001566:	fff70613          	addi	a2,a4,-1 # ffff <wifi_ram_max_size+0x7fff>
a000156a:	01036663          	bltu	t1,a6,a0001576 <__udivdi3+0x176>
a000156e:	00d37463          	bgeu	t1,a3,a0001576 <__udivdi3+0x176>
a0001572:	ffe70613          	addi	a2,a4,-2
a0001576:	0542                	slli	a0,a0,0x10
a0001578:	8d51                	or	a0,a0,a2
a000157a:	8082                	ret
a000157c:	01000737          	lui	a4,0x1000
a0001580:	4541                	li	a0,16
a0001582:	f6e865e3          	bltu	a6,a4,a00014ec <__udivdi3+0xec>
a0001586:	4561                	li	a0,24
a0001588:	b795                	j	a00014ec <__udivdi3+0xec>
a000158a:	00d81833          	sll	a6,a6,a3
a000158e:	00e7d533          	srl	a0,a5,a4
a0001592:	00d89333          	sll	t1,a7,a3
a0001596:	00d797b3          	sll	a5,a5,a3
a000159a:	00e8d733          	srl	a4,a7,a4
a000159e:	01085893          	srli	a7,a6,0x10
a00015a2:	00f76633          	or	a2,a4,a5
a00015a6:	03157733          	remu	a4,a0,a7
a00015aa:	01081793          	slli	a5,a6,0x10
a00015ae:	83c1                	srli	a5,a5,0x10
a00015b0:	01065593          	srli	a1,a2,0x10
a00015b4:	03155533          	divu	a0,a0,a7
a00015b8:	0742                	slli	a4,a4,0x10
a00015ba:	8f4d                	or	a4,a4,a1
a00015bc:	02a786b3          	mul	a3,a5,a0
a00015c0:	85aa                	mv	a1,a0
a00015c2:	00d77c63          	bgeu	a4,a3,a00015da <__udivdi3+0x1da>
a00015c6:	9742                	add	a4,a4,a6
a00015c8:	fff50593          	addi	a1,a0,-1 # ffffff <remain_wifi_ram+0xfdffff>
a00015cc:	01076763          	bltu	a4,a6,a00015da <__udivdi3+0x1da>
a00015d0:	00d77563          	bgeu	a4,a3,a00015da <__udivdi3+0x1da>
a00015d4:	ffe50593          	addi	a1,a0,-2
a00015d8:	9742                	add	a4,a4,a6
a00015da:	40d706b3          	sub	a3,a4,a3
a00015de:	0316f733          	remu	a4,a3,a7
a00015e2:	0642                	slli	a2,a2,0x10
a00015e4:	8241                	srli	a2,a2,0x10
a00015e6:	0316d6b3          	divu	a3,a3,a7
a00015ea:	0742                	slli	a4,a4,0x10
a00015ec:	02d78533          	mul	a0,a5,a3
a00015f0:	00c767b3          	or	a5,a4,a2
a00015f4:	8736                	mv	a4,a3
a00015f6:	00a7fc63          	bgeu	a5,a0,a000160e <__udivdi3+0x20e>
a00015fa:	97c2                	add	a5,a5,a6
a00015fc:	fff68713          	addi	a4,a3,-1
a0001600:	0107e763          	bltu	a5,a6,a000160e <__udivdi3+0x20e>
a0001604:	00a7f563          	bgeu	a5,a0,a000160e <__udivdi3+0x20e>
a0001608:	ffe68713          	addi	a4,a3,-2
a000160c:	97c2                	add	a5,a5,a6
a000160e:	05c2                	slli	a1,a1,0x10
a0001610:	8f89                	sub	a5,a5,a0
a0001612:	8dd9                	or	a1,a1,a4
a0001614:	bddd                	j	a000150a <__udivdi3+0x10a>
a0001616:	14d5e263          	bltu	a1,a3,a000175a <__udivdi3+0x35a>
a000161a:	6741                	lui	a4,0x10
a000161c:	02e6ff63          	bgeu	a3,a4,a000165a <__udivdi3+0x25a>
a0001620:	0ff00713          	li	a4,255
a0001624:	00d735b3          	sltu	a1,a4,a3
a0001628:	058e                	slli	a1,a1,0x3
a000162a:	a0009737          	lui	a4,0xa0009
a000162e:	00b6d533          	srl	a0,a3,a1
a0001632:	de070713          	addi	a4,a4,-544 # a0008de0 <__psram_limit+0xf7c08de0>
a0001636:	972a                	add	a4,a4,a0
a0001638:	00074703          	lbu	a4,0(a4)
a000163c:	02000513          	li	a0,32
a0001640:	972e                	add	a4,a4,a1
a0001642:	40e505b3          	sub	a1,a0,a4
a0001646:	02e51163          	bne	a0,a4,a0001668 <__udivdi3+0x268>
a000164a:	4505                	li	a0,1
a000164c:	f2f6e7e3          	bltu	a3,a5,a000157a <__udivdi3+0x17a>
a0001650:	00c8b533          	sltu	a0,a7,a2
a0001654:	00154513          	xori	a0,a0,1
a0001658:	b70d                	j	a000157a <__udivdi3+0x17a>
a000165a:	01000737          	lui	a4,0x1000
a000165e:	45c1                	li	a1,16
a0001660:	fce6e5e3          	bltu	a3,a4,a000162a <__udivdi3+0x22a>
a0001664:	45e1                	li	a1,24
a0001666:	b7d1                	j	a000162a <__udivdi3+0x22a>
a0001668:	00e65833          	srl	a6,a2,a4
a000166c:	00b696b3          	sll	a3,a3,a1
a0001670:	00d86833          	or	a6,a6,a3
a0001674:	00e7de33          	srl	t3,a5,a4
a0001678:	01085e93          	srli	t4,a6,0x10
a000167c:	03de76b3          	remu	a3,t3,t4
a0001680:	00b797b3          	sll	a5,a5,a1
a0001684:	00e8d733          	srl	a4,a7,a4
a0001688:	00b61333          	sll	t1,a2,a1
a000168c:	00f76633          	or	a2,a4,a5
a0001690:	01081793          	slli	a5,a6,0x10
a0001694:	83c1                	srli	a5,a5,0x10
a0001696:	01065713          	srli	a4,a2,0x10
a000169a:	03de5e33          	divu	t3,t3,t4
a000169e:	06c2                	slli	a3,a3,0x10
a00016a0:	8f55                	or	a4,a4,a3
a00016a2:	03c78f33          	mul	t5,a5,t3
a00016a6:	8572                	mv	a0,t3
a00016a8:	01e77c63          	bgeu	a4,t5,a00016c0 <__udivdi3+0x2c0>
a00016ac:	9742                	add	a4,a4,a6
a00016ae:	fffe0513          	addi	a0,t3,-1 # ffff <wifi_ram_max_size+0x7fff>
a00016b2:	01076763          	bltu	a4,a6,a00016c0 <__udivdi3+0x2c0>
a00016b6:	01e77563          	bgeu	a4,t5,a00016c0 <__udivdi3+0x2c0>
a00016ba:	ffee0513          	addi	a0,t3,-2
a00016be:	9742                	add	a4,a4,a6
a00016c0:	41e70733          	sub	a4,a4,t5
a00016c4:	03d776b3          	remu	a3,a4,t4
a00016c8:	03d75733          	divu	a4,a4,t4
a00016cc:	06c2                	slli	a3,a3,0x10
a00016ce:	02e78e33          	mul	t3,a5,a4
a00016d2:	01061793          	slli	a5,a2,0x10
a00016d6:	83c1                	srli	a5,a5,0x10
a00016d8:	8fd5                	or	a5,a5,a3
a00016da:	863a                	mv	a2,a4
a00016dc:	01c7fc63          	bgeu	a5,t3,a00016f4 <__udivdi3+0x2f4>
a00016e0:	97c2                	add	a5,a5,a6
a00016e2:	fff70613          	addi	a2,a4,-1 # ffffff <remain_wifi_ram+0xfdffff>
a00016e6:	0107e763          	bltu	a5,a6,a00016f4 <__udivdi3+0x2f4>
a00016ea:	01c7f563          	bgeu	a5,t3,a00016f4 <__udivdi3+0x2f4>
a00016ee:	ffe70613          	addi	a2,a4,-2
a00016f2:	97c2                	add	a5,a5,a6
a00016f4:	0542                	slli	a0,a0,0x10
a00016f6:	6ec1                	lui	t4,0x10
a00016f8:	8d51                	or	a0,a0,a2
a00016fa:	fffe8693          	addi	a3,t4,-1 # ffff <wifi_ram_max_size+0x7fff>
a00016fe:	00d57833          	and	a6,a0,a3
a0001702:	01055613          	srli	a2,a0,0x10
a0001706:	00d376b3          	and	a3,t1,a3
a000170a:	01035313          	srli	t1,t1,0x10
a000170e:	41c787b3          	sub	a5,a5,t3
a0001712:	02d80e33          	mul	t3,a6,a3
a0001716:	02d606b3          	mul	a3,a2,a3
a000171a:	010e5713          	srli	a4,t3,0x10
a000171e:	02680833          	mul	a6,a6,t1
a0001722:	9836                	add	a6,a6,a3
a0001724:	9742                	add	a4,a4,a6
a0001726:	02660633          	mul	a2,a2,t1
a000172a:	00d77363          	bgeu	a4,a3,a0001730 <__udivdi3+0x330>
a000172e:	9676                	add	a2,a2,t4
a0001730:	01075693          	srli	a3,a4,0x10
a0001734:	9636                	add	a2,a2,a3
a0001736:	02c7e063          	bltu	a5,a2,a0001756 <__udivdi3+0x356>
a000173a:	d8c794e3          	bne	a5,a2,a00014c2 <__udivdi3+0xc2>
a000173e:	67c1                	lui	a5,0x10
a0001740:	17fd                	addi	a5,a5,-1
a0001742:	8f7d                	and	a4,a4,a5
a0001744:	0742                	slli	a4,a4,0x10
a0001746:	00fe7e33          	and	t3,t3,a5
a000174a:	00b898b3          	sll	a7,a7,a1
a000174e:	9772                	add	a4,a4,t3
a0001750:	4581                	li	a1,0
a0001752:	e2e8f4e3          	bgeu	a7,a4,a000157a <__udivdi3+0x17a>
a0001756:	157d                	addi	a0,a0,-1
a0001758:	b3ad                	j	a00014c2 <__udivdi3+0xc2>
a000175a:	4581                	li	a1,0
a000175c:	4501                	li	a0,0
a000175e:	bd31                	j	a000157a <__udivdi3+0x17a>

a0001760 <__umoddi3>:
a0001760:	8eaa                	mv	t4,a0
a0001762:	832e                	mv	t1,a1
a0001764:	8832                	mv	a6,a2
a0001766:	87b6                	mv	a5,a3
a0001768:	1c069263          	bnez	a3,a000192c <__umoddi3+0x1cc>
a000176c:	a0009737          	lui	a4,0xa0009
a0001770:	de070713          	addi	a4,a4,-544 # a0008de0 <__psram_limit+0xf7c08de0>
a0001774:	0ac5f563          	bgeu	a1,a2,a000181e <__umoddi3+0xbe>
a0001778:	66c1                	lui	a3,0x10
a000177a:	08d67b63          	bgeu	a2,a3,a0001810 <__umoddi3+0xb0>
a000177e:	0ff00693          	li	a3,255
a0001782:	00c6f363          	bgeu	a3,a2,a0001788 <__umoddi3+0x28>
a0001786:	47a1                	li	a5,8
a0001788:	00f656b3          	srl	a3,a2,a5
a000178c:	9736                	add	a4,a4,a3
a000178e:	00074703          	lbu	a4,0(a4)
a0001792:	97ba                	add	a5,a5,a4
a0001794:	02000713          	li	a4,32
a0001798:	40f708b3          	sub	a7,a4,a5
a000179c:	00f70b63          	beq	a4,a5,a00017b2 <__umoddi3+0x52>
a00017a0:	011315b3          	sll	a1,t1,a7
a00017a4:	00fed7b3          	srl	a5,t4,a5
a00017a8:	01161833          	sll	a6,a2,a7
a00017ac:	8ddd                	or	a1,a1,a5
a00017ae:	011e9533          	sll	a0,t4,a7
a00017b2:	01085693          	srli	a3,a6,0x10
a00017b6:	02d5f7b3          	remu	a5,a1,a3
a00017ba:	01081613          	slli	a2,a6,0x10
a00017be:	8241                	srli	a2,a2,0x10
a00017c0:	01055713          	srli	a4,a0,0x10
a00017c4:	02d5d5b3          	divu	a1,a1,a3
a00017c8:	07c2                	slli	a5,a5,0x10
a00017ca:	8f5d                	or	a4,a4,a5
a00017cc:	02b605b3          	mul	a1,a2,a1
a00017d0:	00b77863          	bgeu	a4,a1,a00017e0 <__umoddi3+0x80>
a00017d4:	9742                	add	a4,a4,a6
a00017d6:	01076563          	bltu	a4,a6,a00017e0 <__umoddi3+0x80>
a00017da:	00b77363          	bgeu	a4,a1,a00017e0 <__umoddi3+0x80>
a00017de:	9742                	add	a4,a4,a6
a00017e0:	8f0d                	sub	a4,a4,a1
a00017e2:	02d777b3          	remu	a5,a4,a3
a00017e6:	0542                	slli	a0,a0,0x10
a00017e8:	8141                	srli	a0,a0,0x10
a00017ea:	02d75733          	divu	a4,a4,a3
a00017ee:	07c2                	slli	a5,a5,0x10
a00017f0:	8d5d                	or	a0,a0,a5
a00017f2:	02e60733          	mul	a4,a2,a4
a00017f6:	00e57863          	bgeu	a0,a4,a0001806 <__umoddi3+0xa6>
a00017fa:	9542                	add	a0,a0,a6
a00017fc:	01056563          	bltu	a0,a6,a0001806 <__umoddi3+0xa6>
a0001800:	00e57363          	bgeu	a0,a4,a0001806 <__umoddi3+0xa6>
a0001804:	9542                	add	a0,a0,a6
a0001806:	8d19                	sub	a0,a0,a4
a0001808:	01155533          	srl	a0,a0,a7
a000180c:	4581                	li	a1,0
a000180e:	8082                	ret
a0001810:	010006b7          	lui	a3,0x1000
a0001814:	47c1                	li	a5,16
a0001816:	f6d669e3          	bltu	a2,a3,a0001788 <__umoddi3+0x28>
a000181a:	47e1                	li	a5,24
a000181c:	b7b5                	j	a0001788 <__umoddi3+0x28>
a000181e:	e601                	bnez	a2,a0001826 <__umoddi3+0xc6>
a0001820:	4685                	li	a3,1
a0001822:	02c6d833          	divu	a6,a3,a2
a0001826:	66c1                	lui	a3,0x10
a0001828:	0ed87b63          	bgeu	a6,a3,a000191e <__umoddi3+0x1be>
a000182c:	0ff00693          	li	a3,255
a0001830:	0106f363          	bgeu	a3,a6,a0001836 <__umoddi3+0xd6>
a0001834:	47a1                	li	a5,8
a0001836:	00f856b3          	srl	a3,a6,a5
a000183a:	9736                	add	a4,a4,a3
a000183c:	00074603          	lbu	a2,0(a4)
a0001840:	410305b3          	sub	a1,t1,a6
a0001844:	963e                	add	a2,a2,a5
a0001846:	02000793          	li	a5,32
a000184a:	40c788b3          	sub	a7,a5,a2
a000184e:	06c78a63          	beq	a5,a2,a00018c2 <__umoddi3+0x162>
a0001852:	01181833          	sll	a6,a6,a7
a0001856:	00c357b3          	srl	a5,t1,a2
a000185a:	011315b3          	sll	a1,t1,a7
a000185e:	01085313          	srli	t1,a6,0x10
a0001862:	00ced633          	srl	a2,t4,a2
a0001866:	8e4d                	or	a2,a2,a1
a0001868:	01081593          	slli	a1,a6,0x10
a000186c:	81c1                	srli	a1,a1,0x10
a000186e:	011e9533          	sll	a0,t4,a7
a0001872:	0267d6b3          	divu	a3,a5,t1
a0001876:	0267f733          	remu	a4,a5,t1
a000187a:	01065793          	srli	a5,a2,0x10
a000187e:	02d586b3          	mul	a3,a1,a3
a0001882:	0742                	slli	a4,a4,0x10
a0001884:	8f5d                	or	a4,a4,a5
a0001886:	00d77863          	bgeu	a4,a3,a0001896 <__umoddi3+0x136>
a000188a:	9742                	add	a4,a4,a6
a000188c:	01076563          	bltu	a4,a6,a0001896 <__umoddi3+0x136>
a0001890:	00d77363          	bgeu	a4,a3,a0001896 <__umoddi3+0x136>
a0001894:	9742                	add	a4,a4,a6
a0001896:	40d706b3          	sub	a3,a4,a3
a000189a:	0266f733          	remu	a4,a3,t1
a000189e:	0642                	slli	a2,a2,0x10
a00018a0:	8241                	srli	a2,a2,0x10
a00018a2:	0266d6b3          	divu	a3,a3,t1
a00018a6:	0742                	slli	a4,a4,0x10
a00018a8:	02d586b3          	mul	a3,a1,a3
a00018ac:	00c765b3          	or	a1,a4,a2
a00018b0:	00d5f863          	bgeu	a1,a3,a00018c0 <__umoddi3+0x160>
a00018b4:	95c2                	add	a1,a1,a6
a00018b6:	0105e563          	bltu	a1,a6,a00018c0 <__umoddi3+0x160>
a00018ba:	00d5f363          	bgeu	a1,a3,a00018c0 <__umoddi3+0x160>
a00018be:	95c2                	add	a1,a1,a6
a00018c0:	8d95                	sub	a1,a1,a3
a00018c2:	01085693          	srli	a3,a6,0x10
a00018c6:	02d5f733          	remu	a4,a1,a3
a00018ca:	01081793          	slli	a5,a6,0x10
a00018ce:	83c1                	srli	a5,a5,0x10
a00018d0:	01055613          	srli	a2,a0,0x10
a00018d4:	02d5d5b3          	divu	a1,a1,a3
a00018d8:	0742                	slli	a4,a4,0x10
a00018da:	8f51                	or	a4,a4,a2
a00018dc:	02b785b3          	mul	a1,a5,a1
a00018e0:	00b77863          	bgeu	a4,a1,a00018f0 <__umoddi3+0x190>
a00018e4:	9742                	add	a4,a4,a6
a00018e6:	01076563          	bltu	a4,a6,a00018f0 <__umoddi3+0x190>
a00018ea:	00b77363          	bgeu	a4,a1,a00018f0 <__umoddi3+0x190>
a00018ee:	9742                	add	a4,a4,a6
a00018f0:	40b705b3          	sub	a1,a4,a1
a00018f4:	02d5f733          	remu	a4,a1,a3
a00018f8:	0542                	slli	a0,a0,0x10
a00018fa:	8141                	srli	a0,a0,0x10
a00018fc:	02d5d5b3          	divu	a1,a1,a3
a0001900:	02b785b3          	mul	a1,a5,a1
a0001904:	01071793          	slli	a5,a4,0x10
a0001908:	8d5d                	or	a0,a0,a5
a000190a:	00b57863          	bgeu	a0,a1,a000191a <__umoddi3+0x1ba>
a000190e:	9542                	add	a0,a0,a6
a0001910:	01056563          	bltu	a0,a6,a000191a <__umoddi3+0x1ba>
a0001914:	00b57363          	bgeu	a0,a1,a000191a <__umoddi3+0x1ba>
a0001918:	9542                	add	a0,a0,a6
a000191a:	8d0d                	sub	a0,a0,a1
a000191c:	b5f5                	j	a0001808 <__umoddi3+0xa8>
a000191e:	010006b7          	lui	a3,0x1000
a0001922:	47c1                	li	a5,16
a0001924:	f0d869e3          	bltu	a6,a3,a0001836 <__umoddi3+0xd6>
a0001928:	47e1                	li	a5,24
a000192a:	b731                	j	a0001836 <__umoddi3+0xd6>
a000192c:	eed5e1e3          	bltu	a1,a3,a000180e <__umoddi3+0xae>
a0001930:	67c1                	lui	a5,0x10
a0001932:	04f6f463          	bgeu	a3,a5,a000197a <__umoddi3+0x21a>
a0001936:	0ff00893          	li	a7,255
a000193a:	00d8b7b3          	sltu	a5,a7,a3
a000193e:	078e                	slli	a5,a5,0x3
a0001940:	a0009737          	lui	a4,0xa0009
a0001944:	00f6d833          	srl	a6,a3,a5
a0001948:	de070713          	addi	a4,a4,-544 # a0008de0 <__psram_limit+0xf7c08de0>
a000194c:	9742                	add	a4,a4,a6
a000194e:	00074883          	lbu	a7,0(a4)
a0001952:	98be                	add	a7,a7,a5
a0001954:	02000793          	li	a5,32
a0001958:	41178833          	sub	a6,a5,a7
a000195c:	03179663          	bne	a5,a7,a0001988 <__umoddi3+0x228>
a0001960:	0066e463          	bltu	a3,t1,a0001968 <__umoddi3+0x208>
a0001964:	eacee5e3          	bltu	t4,a2,a000180e <__umoddi3+0xae>
a0001968:	40ce8533          	sub	a0,t4,a2
a000196c:	40d305b3          	sub	a1,t1,a3
a0001970:	00aebeb3          	sltu	t4,t4,a0
a0001974:	41d585b3          	sub	a1,a1,t4
a0001978:	bd59                	j	a000180e <__umoddi3+0xae>
a000197a:	01000737          	lui	a4,0x1000
a000197e:	47c1                	li	a5,16
a0001980:	fce6e0e3          	bltu	a3,a4,a0001940 <__umoddi3+0x1e0>
a0001984:	47e1                	li	a5,24
a0001986:	bf6d                	j	a0001940 <__umoddi3+0x1e0>
a0001988:	011657b3          	srl	a5,a2,a7
a000198c:	010696b3          	sll	a3,a3,a6
a0001990:	00d7ee33          	or	t3,a5,a3
a0001994:	01135f33          	srl	t5,t1,a7
a0001998:	011ed7b3          	srl	a5,t4,a7
a000199c:	010e9533          	sll	a0,t4,a6
a00019a0:	010e5e93          	srli	t4,t3,0x10
a00019a4:	010315b3          	sll	a1,t1,a6
a00019a8:	03df5333          	divu	t1,t5,t4
a00019ac:	8fcd                	or	a5,a5,a1
a00019ae:	010e1593          	slli	a1,t3,0x10
a00019b2:	81c1                	srli	a1,a1,0x10
a00019b4:	0107d713          	srli	a4,a5,0x10
a00019b8:	01061633          	sll	a2,a2,a6
a00019bc:	03df76b3          	remu	a3,t5,t4
a00019c0:	02658f33          	mul	t5,a1,t1
a00019c4:	06c2                	slli	a3,a3,0x10
a00019c6:	8f55                	or	a4,a4,a3
a00019c8:	869a                	mv	a3,t1
a00019ca:	01e77c63          	bgeu	a4,t5,a00019e2 <__umoddi3+0x282>
a00019ce:	9772                	add	a4,a4,t3
a00019d0:	fff30693          	addi	a3,t1,-1 # 1fff <HeapMinSize+0xfff>
a00019d4:	01c76763          	bltu	a4,t3,a00019e2 <__umoddi3+0x282>
a00019d8:	01e77563          	bgeu	a4,t5,a00019e2 <__umoddi3+0x282>
a00019dc:	ffe30693          	addi	a3,t1,-2
a00019e0:	9772                	add	a4,a4,t3
a00019e2:	41e70733          	sub	a4,a4,t5
a00019e6:	03d77333          	remu	t1,a4,t4
a00019ea:	07c2                	slli	a5,a5,0x10
a00019ec:	83c1                	srli	a5,a5,0x10
a00019ee:	03d75733          	divu	a4,a4,t4
a00019f2:	0342                	slli	t1,t1,0x10
a00019f4:	00f36333          	or	t1,t1,a5
a00019f8:	02e585b3          	mul	a1,a1,a4
a00019fc:	87ba                	mv	a5,a4
a00019fe:	00b37c63          	bgeu	t1,a1,a0001a16 <__umoddi3+0x2b6>
a0001a02:	9372                	add	t1,t1,t3
a0001a04:	fff70793          	addi	a5,a4,-1 # ffffff <remain_wifi_ram+0xfdffff>
a0001a08:	01c36763          	bltu	t1,t3,a0001a16 <__umoddi3+0x2b6>
a0001a0c:	00b37563          	bgeu	t1,a1,a0001a16 <__umoddi3+0x2b6>
a0001a10:	ffe70793          	addi	a5,a4,-2
a0001a14:	9372                	add	t1,t1,t3
a0001a16:	06c2                	slli	a3,a3,0x10
a0001a18:	6f41                	lui	t5,0x10
a0001a1a:	8edd                	or	a3,a3,a5
a0001a1c:	40b305b3          	sub	a1,t1,a1
a0001a20:	ffff0313          	addi	t1,t5,-1 # ffff <wifi_ram_max_size+0x7fff>
a0001a24:	0066feb3          	and	t4,a3,t1
a0001a28:	01065713          	srli	a4,a2,0x10
a0001a2c:	82c1                	srli	a3,a3,0x10
a0001a2e:	00667333          	and	t1,a2,t1
a0001a32:	026e87b3          	mul	a5,t4,t1
a0001a36:	02668333          	mul	t1,a3,t1
a0001a3a:	02ee8eb3          	mul	t4,t4,a4
a0001a3e:	02e686b3          	mul	a3,a3,a4
a0001a42:	9e9a                	add	t4,t4,t1
a0001a44:	0107d713          	srli	a4,a5,0x10
a0001a48:	9776                	add	a4,a4,t4
a0001a4a:	00677363          	bgeu	a4,t1,a0001a50 <__umoddi3+0x2f0>
a0001a4e:	96fa                	add	a3,a3,t5
a0001a50:	01075313          	srli	t1,a4,0x10
a0001a54:	969a                	add	a3,a3,t1
a0001a56:	6341                	lui	t1,0x10
a0001a58:	137d                	addi	t1,t1,-1
a0001a5a:	00677733          	and	a4,a4,t1
a0001a5e:	0742                	slli	a4,a4,0x10
a0001a60:	0067f7b3          	and	a5,a5,t1
a0001a64:	97ba                	add	a5,a5,a4
a0001a66:	00d5e663          	bltu	a1,a3,a0001a72 <__umoddi3+0x312>
a0001a6a:	00d59b63          	bne	a1,a3,a0001a80 <__umoddi3+0x320>
a0001a6e:	00f57963          	bgeu	a0,a5,a0001a80 <__umoddi3+0x320>
a0001a72:	40c78633          	sub	a2,a5,a2
a0001a76:	00c7b7b3          	sltu	a5,a5,a2
a0001a7a:	97f2                	add	a5,a5,t3
a0001a7c:	8e9d                	sub	a3,a3,a5
a0001a7e:	87b2                	mv	a5,a2
a0001a80:	40f507b3          	sub	a5,a0,a5
a0001a84:	00f53533          	sltu	a0,a0,a5
a0001a88:	8d95                	sub	a1,a1,a3
a0001a8a:	8d89                	sub	a1,a1,a0
a0001a8c:	011598b3          	sll	a7,a1,a7
a0001a90:	0107d533          	srl	a0,a5,a6
a0001a94:	00a8e533          	or	a0,a7,a0
a0001a98:	0105d5b3          	srl	a1,a1,a6
a0001a9c:	bb8d                	j	a000180e <__umoddi3+0xae>

a0001a9e <__adddf3>:
a0001a9e:	1101                	addi	sp,sp,-32
a0001aa0:	ce06                	sw	ra,28(sp)
a0001aa2:	cc22                	sw	s0,24(sp)
a0001aa4:	ca26                	sw	s1,20(sp)
a0001aa6:	c84a                	sw	s2,16(sp)
a0001aa8:	c64e                	sw	s3,12(sp)
a0001aaa:	c452                	sw	s4,8(sp)
a0001aac:	002029f3          	frrm	s3
a0001ab0:	001008b7          	lui	a7,0x100
a0001ab4:	18fd                	addi	a7,a7,-1
a0001ab6:	00b8f733          	and	a4,a7,a1
a0001aba:	0145d413          	srli	s0,a1,0x14
a0001abe:	01f5d493          	srli	s1,a1,0x1f
a0001ac2:	0146d593          	srli	a1,a3,0x14
a0001ac6:	00371793          	slli	a5,a4,0x3
a0001aca:	00d8f8b3          	and	a7,a7,a3
a0001ace:	01d55713          	srli	a4,a0,0x1d
a0001ad2:	7ff47413          	andi	s0,s0,2047
a0001ad6:	7ff5f593          	andi	a1,a1,2047
a0001ada:	8f5d                	or	a4,a4,a5
a0001adc:	01f6d313          	srli	t1,a3,0x1f
a0001ae0:	00351793          	slli	a5,a0,0x3
a0001ae4:	01d65693          	srli	a3,a2,0x1d
a0001ae8:	088e                	slli	a7,a7,0x3
a0001aea:	40b40533          	sub	a0,s0,a1
a0001aee:	00361813          	slli	a6,a2,0x3
a0001af2:	0116e6b3          	or	a3,a3,a7
a0001af6:	862a                	mv	a2,a0
a0001af8:	34649163          	bne	s1,t1,a0001e3a <__adddf3+0x39c>
a0001afc:	10a05963          	blez	a0,a0001c0e <__adddf3+0x170>
a0001b00:	e1b9                	bnez	a1,a0001b46 <__adddf3+0xa8>
a0001b02:	0106e533          	or	a0,a3,a6
a0001b06:	e511                	bnez	a0,a0001b12 <__adddf3+0x74>
a0001b08:	7ff00693          	li	a3,2047
a0001b0c:	2ad61c63          	bne	a2,a3,a0001dc4 <__adddf3+0x326>
a0001b10:	a839                	j	a0001b2e <__adddf3+0x90>
a0001b12:	fff60513          	addi	a0,a2,-1 # ffffff <remain_wifi_ram+0xfdffff>
a0001b16:	e901                	bnez	a0,a0001b26 <__adddf3+0x88>
a0001b18:	983e                	add	a6,a6,a5
a0001b1a:	96ba                	add	a3,a3,a4
a0001b1c:	00f837b3          	sltu	a5,a6,a5
a0001b20:	96be                	add	a3,a3,a5
a0001b22:	4605                	li	a2,1
a0001b24:	a059                	j	a0001baa <__adddf3+0x10c>
a0001b26:	7ff00893          	li	a7,2047
a0001b2a:	05161163          	bne	a2,a7,a0001b6c <__adddf3+0xce>
a0001b2e:	00f766b3          	or	a3,a4,a5
a0001b32:	6e068c63          	beqz	a3,a000222a <__adddf3+0x78c>
a0001b36:	004006b7          	lui	a3,0x400
a0001b3a:	8ef9                	and	a3,a3,a4
a0001b3c:	4401                	li	s0,0
a0001b3e:	20069263          	bnez	a3,a0001d42 <__adddf3+0x2a4>
a0001b42:	45c1                	li	a1,16
a0001b44:	aafd                	j	a0001d42 <__adddf3+0x2a4>
a0001b46:	7ff00613          	li	a2,2047
a0001b4a:	00c41e63          	bne	s0,a2,a0001b66 <__adddf3+0xc8>
a0001b4e:	00f766b3          	or	a3,a4,a5
a0001b52:	6c068f63          	beqz	a3,a0002230 <__adddf3+0x792>
a0001b56:	004006b7          	lui	a3,0x400
a0001b5a:	8ef9                	and	a3,a3,a4
a0001b5c:	12068563          	beqz	a3,a0001c86 <__adddf3+0x1e8>
a0001b60:	7ff00613          	li	a2,2047
a0001b64:	a485                	j	a0001dc4 <__adddf3+0x326>
a0001b66:	00800637          	lui	a2,0x800
a0001b6a:	8ed1                	or	a3,a3,a2
a0001b6c:	03800613          	li	a2,56
a0001b70:	08a64a63          	blt	a2,a0,a0001c04 <__adddf3+0x166>
a0001b74:	467d                	li	a2,31
a0001b76:	06a64063          	blt	a2,a0,a0001bd6 <__adddf3+0x138>
a0001b7a:	02000613          	li	a2,32
a0001b7e:	8e09                	sub	a2,a2,a0
a0001b80:	00a858b3          	srl	a7,a6,a0
a0001b84:	00c695b3          	sll	a1,a3,a2
a0001b88:	00c81833          	sll	a6,a6,a2
a0001b8c:	0115e5b3          	or	a1,a1,a7
a0001b90:	01003833          	snez	a6,a6
a0001b94:	0105e833          	or	a6,a1,a6
a0001b98:	00a6d533          	srl	a0,a3,a0
a0001b9c:	983e                	add	a6,a6,a5
a0001b9e:	953a                	add	a0,a0,a4
a0001ba0:	00f837b3          	sltu	a5,a6,a5
a0001ba4:	00f506b3          	add	a3,a0,a5
a0001ba8:	8622                	mv	a2,s0
a0001baa:	008007b7          	lui	a5,0x800
a0001bae:	8ff5                	and	a5,a5,a3
a0001bb0:	cbb5                	beqz	a5,a0001c24 <__adddf3+0x186>
a0001bb2:	0605                	addi	a2,a2,1
a0001bb4:	7ff00793          	li	a5,2047
a0001bb8:	26f60163          	beq	a2,a5,a0001e1a <__adddf3+0x37c>
a0001bbc:	ff800737          	lui	a4,0xff800
a0001bc0:	177d                	addi	a4,a4,-1
a0001bc2:	00185793          	srli	a5,a6,0x1
a0001bc6:	8f75                	and	a4,a4,a3
a0001bc8:	00187813          	andi	a6,a6,1
a0001bcc:	0107e833          	or	a6,a5,a6
a0001bd0:	01f71793          	slli	a5,a4,0x1f
a0001bd4:	a2ed                	j	a0001dbe <__adddf3+0x320>
a0001bd6:	fe050593          	addi	a1,a0,-32
a0001bda:	02000893          	li	a7,32
a0001bde:	00b6d5b3          	srl	a1,a3,a1
a0001be2:	4601                	li	a2,0
a0001be4:	01150863          	beq	a0,a7,a0001bf4 <__adddf3+0x156>
a0001be8:	04000613          	li	a2,64
a0001bec:	40a60533          	sub	a0,a2,a0
a0001bf0:	00a69633          	sll	a2,a3,a0
a0001bf4:	01066833          	or	a6,a2,a6
a0001bf8:	01003833          	snez	a6,a6
a0001bfc:	0105e833          	or	a6,a1,a6
a0001c00:	4501                	li	a0,0
a0001c02:	bf69                	j	a0001b9c <__adddf3+0xfe>
a0001c04:	0106e833          	or	a6,a3,a6
a0001c08:	01003833          	snez	a6,a6
a0001c0c:	bfd5                	j	a0001c00 <__adddf3+0x162>
a0001c0e:	c97d                	beqz	a0,a0001d04 <__adddf3+0x266>
a0001c10:	40858633          	sub	a2,a1,s0
a0001c14:	e821                	bnez	s0,a0001c64 <__adddf3+0x1c6>
a0001c16:	00f76533          	or	a0,a4,a5
a0001c1a:	e911                	bnez	a0,a0001c2e <__adddf3+0x190>
a0001c1c:	7ff00793          	li	a5,2047
a0001c20:	02f60663          	beq	a2,a5,a0001c4c <__adddf3+0x1ae>
a0001c24:	8736                	mv	a4,a3
a0001c26:	87c2                	mv	a5,a6
a0001c28:	40060163          	beqz	a2,a000202a <__adddf3+0x58c>
a0001c2c:	aa61                	j	a0001dc4 <__adddf3+0x326>
a0001c2e:	fff60893          	addi	a7,a2,-1 # 7fffff <remain_wifi_ram+0x7dffff>
a0001c32:	00089963          	bnez	a7,a0001c44 <__adddf3+0x1a6>
a0001c36:	97c2                	add	a5,a5,a6
a0001c38:	0107b833          	sltu	a6,a5,a6
a0001c3c:	96ba                	add	a3,a3,a4
a0001c3e:	96c2                	add	a3,a3,a6
a0001c40:	883e                	mv	a6,a5
a0001c42:	b5c5                	j	a0001b22 <__adddf3+0x84>
a0001c44:	7ff00513          	li	a0,2047
a0001c48:	04a61563          	bne	a2,a0,a0001c92 <__adddf3+0x1f4>
a0001c4c:	0106e7b3          	or	a5,a3,a6
a0001c50:	5e078363          	beqz	a5,a0002236 <__adddf3+0x798>
a0001c54:	004007b7          	lui	a5,0x400
a0001c58:	8ff5                	and	a5,a5,a3
a0001c5a:	8736                	mv	a4,a3
a0001c5c:	5c079f63          	bnez	a5,a000223a <__adddf3+0x79c>
a0001c60:	87c2                	mv	a5,a6
a0001c62:	b5c5                	j	a0001b42 <__adddf3+0xa4>
a0001c64:	7ff00513          	li	a0,2047
a0001c68:	02a59163          	bne	a1,a0,a0001c8a <__adddf3+0x1ec>
a0001c6c:	0106e7b3          	or	a5,a3,a6
a0001c70:	5a078063          	beqz	a5,a0002210 <__adddf3+0x772>
a0001c74:	004007b7          	lui	a5,0x400
a0001c78:	8ff5                	and	a5,a5,a3
a0001c7a:	8736                	mv	a4,a3
a0001c7c:	58079f63          	bnez	a5,a000221a <__adddf3+0x77c>
a0001c80:	87c2                	mv	a5,a6
a0001c82:	7ff00613          	li	a2,2047
a0001c86:	4401                	li	s0,0
a0001c88:	bd6d                	j	a0001b42 <__adddf3+0xa4>
a0001c8a:	00800537          	lui	a0,0x800
a0001c8e:	8f49                	or	a4,a4,a0
a0001c90:	88b2                	mv	a7,a2
a0001c92:	03800613          	li	a2,56
a0001c96:	07164363          	blt	a2,a7,a0001cfc <__adddf3+0x25e>
a0001c9a:	467d                	li	a2,31
a0001c9c:	03164b63          	blt	a2,a7,a0001cd2 <__adddf3+0x234>
a0001ca0:	02000513          	li	a0,32
a0001ca4:	41150533          	sub	a0,a0,a7
a0001ca8:	00a71633          	sll	a2,a4,a0
a0001cac:	0117d333          	srl	t1,a5,a7
a0001cb0:	00a797b3          	sll	a5,a5,a0
a0001cb4:	00666633          	or	a2,a2,t1
a0001cb8:	00f037b3          	snez	a5,a5
a0001cbc:	8fd1                	or	a5,a5,a2
a0001cbe:	01175733          	srl	a4,a4,a7
a0001cc2:	97c2                	add	a5,a5,a6
a0001cc4:	9736                	add	a4,a4,a3
a0001cc6:	0107b6b3          	sltu	a3,a5,a6
a0001cca:	96ba                	add	a3,a3,a4
a0001ccc:	883e                	mv	a6,a5
a0001cce:	862e                	mv	a2,a1
a0001cd0:	bde9                	j	a0001baa <__adddf3+0x10c>
a0001cd2:	fe088613          	addi	a2,a7,-32 # fffe0 <remain_wifi_ram+0xdffe0>
a0001cd6:	02000313          	li	t1,32
a0001cda:	00c75633          	srl	a2,a4,a2
a0001cde:	4501                	li	a0,0
a0001ce0:	00688863          	beq	a7,t1,a0001cf0 <__adddf3+0x252>
a0001ce4:	04000513          	li	a0,64
a0001ce8:	41150533          	sub	a0,a0,a7
a0001cec:	00a71533          	sll	a0,a4,a0
a0001cf0:	8fc9                	or	a5,a5,a0
a0001cf2:	00f037b3          	snez	a5,a5
a0001cf6:	8fd1                	or	a5,a5,a2
a0001cf8:	4701                	li	a4,0
a0001cfa:	b7e1                	j	a0001cc2 <__adddf3+0x224>
a0001cfc:	8fd9                	or	a5,a5,a4
a0001cfe:	00f037b3          	snez	a5,a5
a0001d02:	bfdd                	j	a0001cf8 <__adddf3+0x25a>
a0001d04:	00140613          	addi	a2,s0,1
a0001d08:	7fe67513          	andi	a0,a2,2046
a0001d0c:	ed41                	bnez	a0,a0001da4 <__adddf3+0x306>
a0001d0e:	00f76533          	or	a0,a4,a5
a0001d12:	e421                	bnez	s0,a0001d5a <__adddf3+0x2bc>
a0001d14:	4c050163          	beqz	a0,a00021d6 <__adddf3+0x738>
a0001d18:	0106e633          	or	a2,a3,a6
a0001d1c:	30060763          	beqz	a2,a000202a <__adddf3+0x58c>
a0001d20:	983e                	add	a6,a6,a5
a0001d22:	00f837b3          	sltu	a5,a6,a5
a0001d26:	9736                	add	a4,a4,a3
a0001d28:	973e                	add	a4,a4,a5
a0001d2a:	008007b7          	lui	a5,0x800
a0001d2e:	8ff9                	and	a5,a5,a4
a0001d30:	4a078463          	beqz	a5,a00021d8 <__adddf3+0x73a>
a0001d34:	ff8007b7          	lui	a5,0xff800
a0001d38:	17fd                	addi	a5,a5,-1
a0001d3a:	8f7d                	and	a4,a4,a5
a0001d3c:	4581                	li	a1,0
a0001d3e:	87c2                	mv	a5,a6
a0001d40:	4605                	li	a2,1
a0001d42:	0077f693          	andi	a3,a5,7
a0001d46:	e6c5                	bnez	a3,a0001dee <__adddf3+0x350>
a0001d48:	56040d63          	beqz	s0,a00022c2 <__adddf3+0x824>
a0001d4c:	0015f693          	andi	a3,a1,1
a0001d50:	56068963          	beqz	a3,a00022c2 <__adddf3+0x824>
a0001d54:	0025e593          	ori	a1,a1,2
a0001d58:	a3ad                	j	a00022c2 <__adddf3+0x824>
a0001d5a:	7ff00613          	li	a2,2047
a0001d5e:	02c41d63          	bne	s0,a2,a0001d98 <__adddf3+0x2fa>
a0001d62:	5c050f63          	beqz	a0,a0002340 <__adddf3+0x8a2>
a0001d66:	00400637          	lui	a2,0x400
a0001d6a:	8e79                	and	a2,a2,a4
a0001d6c:	00163613          	seqz	a2,a2
a0001d70:	0612                	slli	a2,a2,0x4
a0001d72:	52859d63          	bne	a1,s0,a00022ac <__adddf3+0x80e>
a0001d76:	85b2                	mv	a1,a2
a0001d78:	0106e633          	or	a2,a3,a6
a0001d7c:	c611                	beqz	a2,a0001d88 <__adddf3+0x2ea>
a0001d7e:	00400637          	lui	a2,0x400
a0001d82:	8e75                	and	a2,a2,a3
a0001d84:	e211                	bnez	a2,a0001d88 <__adddf3+0x2ea>
a0001d86:	45c1                	li	a1,16
a0001d88:	52051363          	bnez	a0,a00022ae <__adddf3+0x810>
a0001d8c:	8736                	mv	a4,a3
a0001d8e:	87c2                	mv	a5,a6
a0001d90:	4401                	li	s0,0
a0001d92:	7ff00613          	li	a2,2047
a0001d96:	b775                	j	a0001d42 <__adddf3+0x2a4>
a0001d98:	00c59463          	bne	a1,a2,a0001da0 <__adddf3+0x302>
a0001d9c:	4581                	li	a1,0
a0001d9e:	bfe9                	j	a0001d78 <__adddf3+0x2da>
a0001da0:	4581                	li	a1,0
a0001da2:	b7dd                	j	a0001d88 <__adddf3+0x2ea>
a0001da4:	7ff00593          	li	a1,2047
a0001da8:	02b60063          	beq	a2,a1,a0001dc8 <__adddf3+0x32a>
a0001dac:	983e                	add	a6,a6,a5
a0001dae:	00f837b3          	sltu	a5,a6,a5
a0001db2:	9736                	add	a4,a4,a3
a0001db4:	973e                	add	a4,a4,a5
a0001db6:	01f71793          	slli	a5,a4,0x1f
a0001dba:	00185813          	srli	a6,a6,0x1
a0001dbe:	0107e7b3          	or	a5,a5,a6
a0001dc2:	8305                	srli	a4,a4,0x1
a0001dc4:	4401                	li	s0,0
a0001dc6:	a99d                	j	a000223c <__adddf3+0x79e>
a0001dc8:	00098663          	beqz	s3,a0001dd4 <__adddf3+0x336>
a0001dcc:	478d                	li	a5,3
a0001dce:	00f99663          	bne	s3,a5,a0001dda <__adddf3+0x33c>
a0001dd2:	e881                	bnez	s1,a0001de2 <__adddf3+0x344>
a0001dd4:	7ff00613          	li	a2,2047
a0001dd8:	a881                	j	a0001e28 <__adddf3+0x38a>
a0001dda:	4789                	li	a5,2
a0001ddc:	00f99363          	bne	s3,a5,a0001de2 <__adddf3+0x344>
a0001de0:	f8f5                	bnez	s1,a0001dd4 <__adddf3+0x336>
a0001de2:	4401                	li	s0,0
a0001de4:	577d                	li	a4,-1
a0001de6:	57fd                	li	a5,-1
a0001de8:	7fe00613          	li	a2,2046
a0001dec:	4595                	li	a1,5
a0001dee:	4689                	li	a3,2
a0001df0:	0015e593          	ori	a1,a1,1
a0001df4:	48d98563          	beq	s3,a3,a000227e <__adddf3+0x7e0>
a0001df8:	468d                	li	a3,3
a0001dfa:	46d98e63          	beq	s3,a3,a0002276 <__adddf3+0x7d8>
a0001dfe:	48099163          	bnez	s3,a0002280 <__adddf3+0x7e2>
a0001e02:	00f7f693          	andi	a3,a5,15
a0001e06:	4511                	li	a0,4
a0001e08:	46a68c63          	beq	a3,a0,a0002280 <__adddf3+0x7e2>
a0001e0c:	00478693          	addi	a3,a5,4 # ff800004 <__psram_limit+0x57400004>
a0001e10:	00f6b7b3          	sltu	a5,a3,a5
a0001e14:	973e                	add	a4,a4,a5
a0001e16:	87b6                	mv	a5,a3
a0001e18:	a1a5                	j	a0002280 <__adddf3+0x7e2>
a0001e1a:	00098763          	beqz	s3,a0001e28 <__adddf3+0x38a>
a0001e1e:	478d                	li	a5,3
a0001e20:	00f99863          	bne	s3,a5,a0001e30 <__adddf3+0x392>
a0001e24:	3e049d63          	bnez	s1,a000221e <__adddf3+0x780>
a0001e28:	4701                	li	a4,0
a0001e2a:	4781                	li	a5,0
a0001e2c:	4595                	li	a1,5
a0001e2e:	a951                	j	a00022c2 <__adddf3+0x824>
a0001e30:	4789                	li	a5,2
a0001e32:	3ef99663          	bne	s3,a5,a000221e <__adddf3+0x780>
a0001e36:	f8ed                	bnez	s1,a0001e28 <__adddf3+0x38a>
a0001e38:	b76d                	j	a0001de2 <__adddf3+0x344>
a0001e3a:	0ca05663          	blez	a0,a0001f06 <__adddf3+0x468>
a0001e3e:	e1c9                	bnez	a1,a0001ec0 <__adddf3+0x422>
a0001e40:	0106e533          	or	a0,a3,a6
a0001e44:	cc0502e3          	beqz	a0,a0001b08 <__adddf3+0x6a>
a0001e48:	fff60513          	addi	a0,a2,-1 # 3fffff <remain_wifi_ram+0x3dffff>
a0001e4c:	e911                	bnez	a0,a0001e60 <__adddf3+0x3c2>
a0001e4e:	41078833          	sub	a6,a5,a6
a0001e52:	40d706b3          	sub	a3,a4,a3
a0001e56:	0107b7b3          	sltu	a5,a5,a6
a0001e5a:	8e9d                	sub	a3,a3,a5
a0001e5c:	4605                	li	a2,1
a0001e5e:	a0a9                	j	a0001ea8 <__adddf3+0x40a>
a0001e60:	7ff00893          	li	a7,2047
a0001e64:	cd1605e3          	beq	a2,a7,a0001b2e <__adddf3+0x90>
a0001e68:	03800613          	li	a2,56
a0001e6c:	08a64863          	blt	a2,a0,a0001efc <__adddf3+0x45e>
a0001e70:	467d                	li	a2,31
a0001e72:	04a64f63          	blt	a2,a0,a0001ed0 <__adddf3+0x432>
a0001e76:	02000613          	li	a2,32
a0001e7a:	8e09                	sub	a2,a2,a0
a0001e7c:	00c695b3          	sll	a1,a3,a2
a0001e80:	00a858b3          	srl	a7,a6,a0
a0001e84:	00c81833          	sll	a6,a6,a2
a0001e88:	0115e5b3          	or	a1,a1,a7
a0001e8c:	01003833          	snez	a6,a6
a0001e90:	0105e833          	or	a6,a1,a6
a0001e94:	00a6d6b3          	srl	a3,a3,a0
a0001e98:	41078833          	sub	a6,a5,a6
a0001e9c:	40d706b3          	sub	a3,a4,a3
a0001ea0:	0107b7b3          	sltu	a5,a5,a6
a0001ea4:	8e9d                	sub	a3,a3,a5
a0001ea6:	8622                	mv	a2,s0
a0001ea8:	00800937          	lui	s2,0x800
a0001eac:	0126f7b3          	and	a5,a3,s2
a0001eb0:	d6078ae3          	beqz	a5,a0001c24 <__adddf3+0x186>
a0001eb4:	197d                	addi	s2,s2,-1
a0001eb6:	0126f933          	and	s2,a3,s2
a0001eba:	8a42                	mv	s4,a6
a0001ebc:	8432                	mv	s0,a2
a0001ebe:	a4b5                	j	a000212a <__adddf3+0x68c>
a0001ec0:	7ff00613          	li	a2,2047
a0001ec4:	c8c405e3          	beq	s0,a2,a0001b4e <__adddf3+0xb0>
a0001ec8:	00800637          	lui	a2,0x800
a0001ecc:	8ed1                	or	a3,a3,a2
a0001ece:	bf69                	j	a0001e68 <__adddf3+0x3ca>
a0001ed0:	fe050593          	addi	a1,a0,-32 # 7fffe0 <remain_wifi_ram+0x7dffe0>
a0001ed4:	02000893          	li	a7,32
a0001ed8:	00b6d5b3          	srl	a1,a3,a1
a0001edc:	4601                	li	a2,0
a0001ede:	01150763          	beq	a0,a7,a0001eec <__adddf3+0x44e>
a0001ee2:	04000613          	li	a2,64
a0001ee6:	8e09                	sub	a2,a2,a0
a0001ee8:	00c69633          	sll	a2,a3,a2
a0001eec:	01066833          	or	a6,a2,a6
a0001ef0:	01003833          	snez	a6,a6
a0001ef4:	0105e833          	or	a6,a1,a6
a0001ef8:	4681                	li	a3,0
a0001efa:	bf79                	j	a0001e98 <__adddf3+0x3fa>
a0001efc:	0106e833          	or	a6,a3,a6
a0001f00:	01003833          	snez	a6,a6
a0001f04:	bfd5                	j	a0001ef8 <__adddf3+0x45a>
a0001f06:	cd75                	beqz	a0,a0002002 <__adddf3+0x564>
a0001f08:	40858633          	sub	a2,a1,s0
a0001f0c:	e439                	bnez	s0,a0001f5a <__adddf3+0x4bc>
a0001f0e:	00f76533          	or	a0,a4,a5
a0001f12:	e509                	bnez	a0,a0001f1c <__adddf3+0x47e>
a0001f14:	7ff00793          	li	a5,2047
a0001f18:	849a                	mv	s1,t1
a0001f1a:	b319                	j	a0001c20 <__adddf3+0x182>
a0001f1c:	fff60893          	addi	a7,a2,-1 # 7fffff <remain_wifi_ram+0x7dffff>
a0001f20:	00089c63          	bnez	a7,a0001f38 <__adddf3+0x49a>
a0001f24:	40f807b3          	sub	a5,a6,a5
a0001f28:	00f83833          	sltu	a6,a6,a5
a0001f2c:	8e99                	sub	a3,a3,a4
a0001f2e:	410686b3          	sub	a3,a3,a6
a0001f32:	849a                	mv	s1,t1
a0001f34:	883e                	mv	a6,a5
a0001f36:	b71d                	j	a0001e5c <__adddf3+0x3be>
a0001f38:	7ff00513          	li	a0,2047
a0001f3c:	04a61663          	bne	a2,a0,a0001f88 <__adddf3+0x4ea>
a0001f40:	0106e7b3          	or	a5,a3,a6
a0001f44:	2e078e63          	beqz	a5,a0002240 <__adddf3+0x7a2>
a0001f48:	004007b7          	lui	a5,0x400
a0001f4c:	8ff5                	and	a5,a5,a3
a0001f4e:	8736                	mv	a4,a3
a0001f50:	2e079b63          	bnez	a5,a0002246 <__adddf3+0x7a8>
a0001f54:	87c2                	mv	a5,a6
a0001f56:	849a                	mv	s1,t1
a0001f58:	b6ed                	j	a0001b42 <__adddf3+0xa4>
a0001f5a:	7ff00513          	li	a0,2047
a0001f5e:	02a59163          	bne	a1,a0,a0001f80 <__adddf3+0x4e2>
a0001f62:	0106e7b3          	or	a5,a3,a6
a0001f66:	2e078363          	beqz	a5,a000224c <__adddf3+0x7ae>
a0001f6a:	004007b7          	lui	a5,0x400
a0001f6e:	8ff5                	and	a5,a5,a3
a0001f70:	8736                	mv	a4,a3
a0001f72:	2e079163          	bnez	a5,a0002254 <__adddf3+0x7b6>
a0001f76:	87c2                	mv	a5,a6
a0001f78:	7ff00613          	li	a2,2047
a0001f7c:	849a                	mv	s1,t1
a0001f7e:	b321                	j	a0001c86 <__adddf3+0x1e8>
a0001f80:	00800537          	lui	a0,0x800
a0001f84:	8f49                	or	a4,a4,a0
a0001f86:	88b2                	mv	a7,a2
a0001f88:	03800613          	li	a2,56
a0001f8c:	07164763          	blt	a2,a7,a0001ffa <__adddf3+0x55c>
a0001f90:	467d                	li	a2,31
a0001f92:	03164f63          	blt	a2,a7,a0001fd0 <__adddf3+0x532>
a0001f96:	02000513          	li	a0,32
a0001f9a:	41150533          	sub	a0,a0,a7
a0001f9e:	00a71633          	sll	a2,a4,a0
a0001fa2:	0117de33          	srl	t3,a5,a7
a0001fa6:	00a797b3          	sll	a5,a5,a0
a0001faa:	01c66633          	or	a2,a2,t3
a0001fae:	00f037b3          	snez	a5,a5
a0001fb2:	8fd1                	or	a5,a5,a2
a0001fb4:	01175733          	srl	a4,a4,a7
a0001fb8:	40f807b3          	sub	a5,a6,a5
a0001fbc:	40e68733          	sub	a4,a3,a4
a0001fc0:	00f836b3          	sltu	a3,a6,a5
a0001fc4:	40d706b3          	sub	a3,a4,a3
a0001fc8:	883e                	mv	a6,a5
a0001fca:	862e                	mv	a2,a1
a0001fcc:	849a                	mv	s1,t1
a0001fce:	bde9                	j	a0001ea8 <__adddf3+0x40a>
a0001fd0:	fe088613          	addi	a2,a7,-32
a0001fd4:	02000e13          	li	t3,32
a0001fd8:	00c75633          	srl	a2,a4,a2
a0001fdc:	4501                	li	a0,0
a0001fde:	01c88863          	beq	a7,t3,a0001fee <__adddf3+0x550>
a0001fe2:	04000513          	li	a0,64
a0001fe6:	41150533          	sub	a0,a0,a7
a0001fea:	00a71533          	sll	a0,a4,a0
a0001fee:	8fc9                	or	a5,a5,a0
a0001ff0:	00f037b3          	snez	a5,a5
a0001ff4:	8fd1                	or	a5,a5,a2
a0001ff6:	4701                	li	a4,0
a0001ff8:	b7c1                	j	a0001fb8 <__adddf3+0x51a>
a0001ffa:	8fd9                	or	a5,a5,a4
a0001ffc:	00f037b3          	snez	a5,a5
a0002000:	bfdd                	j	a0001ff6 <__adddf3+0x558>
a0002002:	00140613          	addi	a2,s0,1
a0002006:	7fe67613          	andi	a2,a2,2046
a000200a:	ea7d                	bnez	a2,a0002100 <__adddf3+0x662>
a000200c:	00f768b3          	or	a7,a4,a5
a0002010:	0106e533          	or	a0,a3,a6
a0002014:	e05d                	bnez	s0,a00020ba <__adddf3+0x61c>
a0002016:	06089263          	bnez	a7,a000207a <__adddf3+0x5dc>
a000201a:	1c051163          	bnez	a0,a00021dc <__adddf3+0x73e>
a000201e:	ffe98493          	addi	s1,s3,-2
a0002022:	0014b493          	seqz	s1,s1
a0002026:	4701                	li	a4,0
a0002028:	4781                	li	a5,0
a000202a:	00e7e6b3          	or	a3,a5,a4
a000202e:	24068063          	beqz	a3,a000226e <__adddf3+0x7d0>
a0002032:	01f7d693          	srli	a3,a5,0x1f
a0002036:	00171413          	slli	s0,a4,0x1
a000203a:	9436                	add	s0,s0,a3
a000203c:	00179693          	slli	a3,a5,0x1
a0002040:	0076f613          	andi	a2,a3,7
a0002044:	4581                	li	a1,0
a0002046:	c605                	beqz	a2,a000206e <__adddf3+0x5d0>
a0002048:	4609                	li	a2,2
a000204a:	1ac98963          	beq	s3,a2,a00021fc <__adddf3+0x75e>
a000204e:	460d                	li	a2,3
a0002050:	18c98c63          	beq	s3,a2,a00021e8 <__adddf3+0x74a>
a0002054:	4585                	li	a1,1
a0002056:	00099c63          	bnez	s3,a000206e <__adddf3+0x5d0>
a000205a:	00f6f613          	andi	a2,a3,15
a000205e:	4511                	li	a0,4
a0002060:	00a60763          	beq	a2,a0,a000206e <__adddf3+0x5d0>
a0002064:	ffc6b693          	sltiu	a3,a3,-4
a0002068:	0016c693          	xori	a3,a3,1
a000206c:	9436                	add	s0,s0,a3
a000206e:	8061                	srli	s0,s0,0x18
a0002070:	00144413          	xori	s0,s0,1
a0002074:	8805                	andi	s0,s0,1
a0002076:	4601                	li	a2,0
a0002078:	b1e9                	j	a0001d42 <__adddf3+0x2a4>
a000207a:	d945                	beqz	a0,a000202a <__adddf3+0x58c>
a000207c:	410785b3          	sub	a1,a5,a6
a0002080:	00b7b533          	sltu	a0,a5,a1
a0002084:	40d70633          	sub	a2,a4,a3
a0002088:	8e09                	sub	a2,a2,a0
a000208a:	00800537          	lui	a0,0x800
a000208e:	8d71                	and	a0,a0,a2
a0002090:	c919                	beqz	a0,a00020a6 <__adddf3+0x608>
a0002092:	40f807b3          	sub	a5,a6,a5
a0002096:	40e68733          	sub	a4,a3,a4
a000209a:	00f83833          	sltu	a6,a6,a5
a000209e:	41070733          	sub	a4,a4,a6
a00020a2:	849a                	mv	s1,t1
a00020a4:	b759                	j	a000202a <__adddf3+0x58c>
a00020a6:	00c5e7b3          	or	a5,a1,a2
a00020aa:	12079c63          	bnez	a5,a00021e2 <__adddf3+0x744>
a00020ae:	ffe98493          	addi	s1,s3,-2
a00020b2:	0014b493          	seqz	s1,s1
a00020b6:	4701                	li	a4,0
a00020b8:	bf8d                	j	a000202a <__adddf3+0x58c>
a00020ba:	7ff00613          	li	a2,2047
a00020be:	00c41e63          	bne	s0,a2,a00020da <__adddf3+0x63c>
a00020c2:	26088763          	beqz	a7,a0002330 <__adddf3+0x892>
a00020c6:	00400637          	lui	a2,0x400
a00020ca:	8e79                	and	a2,a2,a4
a00020cc:	00163613          	seqz	a2,a2
a00020d0:	0612                	slli	a2,a2,0x4
a00020d2:	26859363          	bne	a1,s0,a0002338 <__adddf3+0x89a>
a00020d6:	85b2                	mv	a1,a2
a00020d8:	a021                	j	a00020e0 <__adddf3+0x642>
a00020da:	02c59163          	bne	a1,a2,a00020fc <__adddf3+0x65e>
a00020de:	4581                	li	a1,0
a00020e0:	c511                	beqz	a0,a00020ec <__adddf3+0x64e>
a00020e2:	00400637          	lui	a2,0x400
a00020e6:	8e75                	and	a2,a2,a3
a00020e8:	e211                	bnez	a2,a00020ec <__adddf3+0x64e>
a00020ea:	45c1                	li	a1,16
a00020ec:	24089763          	bnez	a7,a000233a <__adddf3+0x89c>
a00020f0:	16050763          	beqz	a0,a000225e <__adddf3+0x7c0>
a00020f4:	8736                	mv	a4,a3
a00020f6:	87c2                	mv	a5,a6
a00020f8:	849a                	mv	s1,t1
a00020fa:	b959                	j	a0001d90 <__adddf3+0x2f2>
a00020fc:	4581                	li	a1,0
a00020fe:	b7fd                	j	a00020ec <__adddf3+0x64e>
a0002100:	41078a33          	sub	s4,a5,a6
a0002104:	0147b633          	sltu	a2,a5,s4
a0002108:	40d70933          	sub	s2,a4,a3
a000210c:	40c90933          	sub	s2,s2,a2
a0002110:	00800637          	lui	a2,0x800
a0002114:	00c97633          	and	a2,s2,a2
a0002118:	c62d                	beqz	a2,a0002182 <__adddf3+0x6e4>
a000211a:	40f80a33          	sub	s4,a6,a5
a000211e:	8e99                	sub	a3,a3,a4
a0002120:	01483833          	sltu	a6,a6,s4
a0002124:	41068933          	sub	s2,a3,a6
a0002128:	849a                	mv	s1,t1
a000212a:	06090063          	beqz	s2,a000218a <__adddf3+0x6ec>
a000212e:	854a                	mv	a0,s2
a0002130:	4d9010ef          	jal	ra,a0003e08 <__clzsi2>
a0002134:	ff850613          	addi	a2,a0,-8 # 7ffff8 <remain_wifi_ram+0x7dfff8>
a0002138:	47fd                	li	a5,31
a000213a:	04c7ce63          	blt	a5,a2,a0002196 <__adddf3+0x6f8>
a000213e:	02000693          	li	a3,32
a0002142:	8e91                	sub	a3,a3,a2
a0002144:	00c91733          	sll	a4,s2,a2
a0002148:	00da56b3          	srl	a3,s4,a3
a000214c:	8ed9                	or	a3,a3,a4
a000214e:	00ca1833          	sll	a6,s4,a2
a0002152:	06864b63          	blt	a2,s0,a00021c8 <__adddf3+0x72a>
a0002156:	8e01                	sub	a2,a2,s0
a0002158:	00160713          	addi	a4,a2,1 # 800001 <remain_wifi_ram+0x7e0001>
a000215c:	47fd                	li	a5,31
a000215e:	04e7c263          	blt	a5,a4,a00021a2 <__adddf3+0x704>
a0002162:	02000613          	li	a2,32
a0002166:	8e19                	sub	a2,a2,a4
a0002168:	00c697b3          	sll	a5,a3,a2
a000216c:	00e85533          	srl	a0,a6,a4
a0002170:	00c81633          	sll	a2,a6,a2
a0002174:	8fc9                	or	a5,a5,a0
a0002176:	00c03633          	snez	a2,a2
a000217a:	8fd1                	or	a5,a5,a2
a000217c:	00e6d733          	srl	a4,a3,a4
a0002180:	b56d                	j	a000202a <__adddf3+0x58c>
a0002182:	012a67b3          	or	a5,s4,s2
a0002186:	f3d5                	bnez	a5,a000212a <__adddf3+0x68c>
a0002188:	b71d                	j	a00020ae <__adddf3+0x610>
a000218a:	8552                	mv	a0,s4
a000218c:	47d010ef          	jal	ra,a0003e08 <__clzsi2>
a0002190:	02050513          	addi	a0,a0,32
a0002194:	b745                	j	a0002134 <__adddf3+0x696>
a0002196:	fd850693          	addi	a3,a0,-40
a000219a:	00da16b3          	sll	a3,s4,a3
a000219e:	4801                	li	a6,0
a00021a0:	bf4d                	j	a0002152 <__adddf3+0x6b4>
a00021a2:	1605                	addi	a2,a2,-31
a00021a4:	02000593          	li	a1,32
a00021a8:	00c6d633          	srl	a2,a3,a2
a00021ac:	4781                	li	a5,0
a00021ae:	00b70763          	beq	a4,a1,a00021bc <__adddf3+0x71e>
a00021b2:	04000793          	li	a5,64
a00021b6:	8f99                	sub	a5,a5,a4
a00021b8:	00f697b3          	sll	a5,a3,a5
a00021bc:	00f867b3          	or	a5,a6,a5
a00021c0:	00f037b3          	snez	a5,a5
a00021c4:	8fd1                	or	a5,a5,a2
a00021c6:	bdc5                	j	a00020b6 <__adddf3+0x618>
a00021c8:	ff8007b7          	lui	a5,0xff800
a00021cc:	17fd                	addi	a5,a5,-1
a00021ce:	40c40633          	sub	a2,s0,a2
a00021d2:	8efd                	and	a3,a3,a5
a00021d4:	bc81                	j	a0001c24 <__adddf3+0x186>
a00021d6:	8736                	mv	a4,a3
a00021d8:	87c2                	mv	a5,a6
a00021da:	bd81                	j	a000202a <__adddf3+0x58c>
a00021dc:	8736                	mv	a4,a3
a00021de:	87c2                	mv	a5,a6
a00021e0:	b5c9                	j	a00020a2 <__adddf3+0x604>
a00021e2:	8732                	mv	a4,a2
a00021e4:	87ae                	mv	a5,a1
a00021e6:	b591                	j	a000202a <__adddf3+0x58c>
a00021e8:	85a6                	mv	a1,s1
a00021ea:	e80492e3          	bnez	s1,a000206e <__adddf3+0x5d0>
a00021ee:	ff86b693          	sltiu	a3,a3,-8
a00021f2:	0016c693          	xori	a3,a3,1
a00021f6:	9436                	add	s0,s0,a3
a00021f8:	4585                	li	a1,1
a00021fa:	bd95                	j	a000206e <__adddf3+0x5d0>
a00021fc:	4585                	li	a1,1
a00021fe:	e60488e3          	beqz	s1,a000206e <__adddf3+0x5d0>
a0002202:	ff86b693          	sltiu	a3,a3,-8
a0002206:	0016c693          	xori	a3,a3,1
a000220a:	9436                	add	s0,s0,a3
a000220c:	85a6                	mv	a1,s1
a000220e:	b585                	j	a000206e <__adddf3+0x5d0>
a0002210:	4701                	li	a4,0
a0002212:	7ff00613          	li	a2,2047
a0002216:	4581                	li	a1,0
a0002218:	a06d                	j	a00022c2 <__adddf3+0x824>
a000221a:	87c2                	mv	a5,a6
a000221c:	b291                	j	a0001b60 <__adddf3+0xc2>
a000221e:	577d                	li	a4,-1
a0002220:	57fd                	li	a5,-1
a0002222:	7fe00613          	li	a2,2046
a0002226:	4401                	li	s0,0
a0002228:	b6d1                	j	a0001dec <__adddf3+0x34e>
a000222a:	4701                	li	a4,0
a000222c:	4781                	li	a5,0
a000222e:	a851                	j	a00022c2 <__adddf3+0x824>
a0002230:	4701                	li	a4,0
a0002232:	4781                	li	a5,0
a0002234:	bff9                	j	a0002212 <__adddf3+0x774>
a0002236:	4701                	li	a4,0
a0002238:	bff9                	j	a0002216 <__adddf3+0x778>
a000223a:	87c2                	mv	a5,a6
a000223c:	4581                	li	a1,0
a000223e:	b611                	j	a0001d42 <__adddf3+0x2a4>
a0002240:	4701                	li	a4,0
a0002242:	849a                	mv	s1,t1
a0002244:	bfc9                	j	a0002216 <__adddf3+0x778>
a0002246:	87c2                	mv	a5,a6
a0002248:	849a                	mv	s1,t1
a000224a:	bfcd                	j	a000223c <__adddf3+0x79e>
a000224c:	4701                	li	a4,0
a000224e:	7ff00613          	li	a2,2047
a0002252:	bfc5                	j	a0002242 <__adddf3+0x7a4>
a0002254:	87c2                	mv	a5,a6
a0002256:	7ff00613          	li	a2,2047
a000225a:	849a                	mv	s1,t1
a000225c:	b6a5                	j	a0001dc4 <__adddf3+0x326>
a000225e:	4781                	li	a5,0
a0002260:	4481                	li	s1,0
a0002262:	00400737          	lui	a4,0x400
a0002266:	7ff00613          	li	a2,2047
a000226a:	45c1                	li	a1,16
a000226c:	a899                	j	a00022c2 <__adddf3+0x824>
a000226e:	4701                	li	a4,0
a0002270:	4781                	li	a5,0
a0002272:	4601                	li	a2,0
a0002274:	b74d                	j	a0002216 <__adddf3+0x778>
a0002276:	e489                	bnez	s1,a0002280 <__adddf3+0x7e2>
a0002278:	00878693          	addi	a3,a5,8 # ff800008 <__psram_limit+0x57400008>
a000227c:	be51                	j	a0001e10 <__adddf3+0x372>
a000227e:	fced                	bnez	s1,a0002278 <__adddf3+0x7da>
a0002280:	ac041ae3          	bnez	s0,a0001d54 <__adddf3+0x2b6>
a0002284:	a83d                	j	a00022c2 <__adddf3+0x824>
a0002286:	4781                	li	a5,0
a0002288:	00098e63          	beqz	s3,a00022a4 <__adddf3+0x806>
a000228c:	470d                	li	a4,3
a000228e:	00e99763          	bne	s3,a4,a000229c <__adddf3+0x7fe>
a0002292:	c889                	beqz	s1,a00022a4 <__adddf3+0x806>
a0002294:	57fd                	li	a5,-1
a0002296:	7fe00613          	li	a2,2046
a000229a:	a029                	j	a00022a4 <__adddf3+0x806>
a000229c:	4709                	li	a4,2
a000229e:	fee99be3          	bne	s3,a4,a0002294 <__adddf3+0x7f6>
a00022a2:	d8ed                	beqz	s1,a0002294 <__adddf3+0x7f6>
a00022a4:	0055e593          	ori	a1,a1,5
a00022a8:	873e                	mv	a4,a5
a00022aa:	a80d                	j	a00022dc <__adddf3+0x83e>
a00022ac:	85b2                	mv	a1,a2
a00022ae:	0106e6b3          	or	a3,a3,a6
a00022b2:	ac068fe3          	beqz	a3,a0001d90 <__adddf3+0x2f2>
a00022b6:	4481                	li	s1,0
a00022b8:	00400737          	lui	a4,0x400
a00022bc:	4781                	li	a5,0
a00022be:	7ff00613          	li	a2,2047
a00022c2:	008006b7          	lui	a3,0x800
a00022c6:	8ef9                	and	a3,a3,a4
a00022c8:	ca91                	beqz	a3,a00022dc <__adddf3+0x83e>
a00022ca:	0605                	addi	a2,a2,1
a00022cc:	7ff00693          	li	a3,2047
a00022d0:	fad60be3          	beq	a2,a3,a0002286 <__adddf3+0x7e8>
a00022d4:	ff8006b7          	lui	a3,0xff800
a00022d8:	16fd                	addi	a3,a3,-1
a00022da:	8f75                	and	a4,a4,a3
a00022dc:	0037d513          	srli	a0,a5,0x3
a00022e0:	7ff00693          	li	a3,2047
a00022e4:	01d71793          	slli	a5,a4,0x1d
a00022e8:	8fc9                	or	a5,a5,a0
a00022ea:	830d                	srli	a4,a4,0x3
a00022ec:	00d61963          	bne	a2,a3,a00022fe <__adddf3+0x860>
a00022f0:	8fd9                	or	a5,a5,a4
a00022f2:	4701                	li	a4,0
a00022f4:	c789                	beqz	a5,a00022fe <__adddf3+0x860>
a00022f6:	00080737          	lui	a4,0x80
a00022fa:	4781                	li	a5,0
a00022fc:	4481                	li	s1,0
a00022fe:	7ff006b7          	lui	a3,0x7ff00
a0002302:	0652                	slli	a2,a2,0x14
a0002304:	0732                	slli	a4,a4,0xc
a0002306:	8e75                	and	a2,a2,a3
a0002308:	8331                	srli	a4,a4,0xc
a000230a:	8f51                	or	a4,a4,a2
a000230c:	04fe                	slli	s1,s1,0x1f
a000230e:	009766b3          	or	a3,a4,s1
a0002312:	873e                	mv	a4,a5
a0002314:	87b6                	mv	a5,a3
a0002316:	c199                	beqz	a1,a000231c <__adddf3+0x87e>
a0002318:	0015a073          	csrs	fflags,a1
a000231c:	40f2                	lw	ra,28(sp)
a000231e:	4462                	lw	s0,24(sp)
a0002320:	44d2                	lw	s1,20(sp)
a0002322:	4942                	lw	s2,16(sp)
a0002324:	49b2                	lw	s3,12(sp)
a0002326:	4a22                	lw	s4,8(sp)
a0002328:	853a                	mv	a0,a4
a000232a:	85be                	mv	a1,a5
a000232c:	6105                	addi	sp,sp,32
a000232e:	8082                	ret
a0002330:	da8587e3          	beq	a1,s0,a00020de <__adddf3+0x640>
a0002334:	4581                	li	a1,0
a0002336:	bb6d                	j	a00020f0 <__adddf3+0x652>
a0002338:	85b2                	mv	a1,a2
a000233a:	a4050be3          	beqz	a0,a0001d90 <__adddf3+0x2f2>
a000233e:	bfa5                	j	a00022b6 <__adddf3+0x818>
a0002340:	a4858ee3          	beq	a1,s0,a0001d9c <__adddf3+0x2fe>
a0002344:	4581                	li	a1,0
a0002346:	b499                	j	a0001d8c <__adddf3+0x2ee>

a0002348 <__divdf3>:
a0002348:	7179                	addi	sp,sp,-48
a000234a:	d422                	sw	s0,40(sp)
a000234c:	ca56                	sw	s5,20(sp)
a000234e:	c266                	sw	s9,4(sp)
a0002350:	d606                	sw	ra,44(sp)
a0002352:	d226                	sw	s1,36(sp)
a0002354:	d04a                	sw	s2,32(sp)
a0002356:	ce4e                	sw	s3,28(sp)
a0002358:	cc52                	sw	s4,24(sp)
a000235a:	c85a                	sw	s6,16(sp)
a000235c:	c65e                	sw	s7,12(sp)
a000235e:	c462                	sw	s8,8(sp)
a0002360:	842a                	mv	s0,a0
a0002362:	8cb2                	mv	s9,a2
a0002364:	8ab6                	mv	s5,a3
a0002366:	00202973          	frrm	s2
a000236a:	0145db13          	srli	s6,a1,0x14
a000236e:	00c59b93          	slli	s7,a1,0xc
a0002372:	7ffb7b13          	andi	s6,s6,2047
a0002376:	00cbdb93          	srli	s7,s7,0xc
a000237a:	01f5da13          	srli	s4,a1,0x1f
a000237e:	020b0663          	beqz	s6,a00023aa <__divdf3+0x62>
a0002382:	7ff00793          	li	a5,2047
a0002386:	06fb0b63          	beq	s6,a5,a00023fc <__divdf3+0xb4>
a000238a:	01d55713          	srli	a4,a0,0x1d
a000238e:	0b8e                	slli	s7,s7,0x3
a0002390:	01776bb3          	or	s7,a4,s7
a0002394:	008007b7          	lui	a5,0x800
a0002398:	00fbebb3          	or	s7,s7,a5
a000239c:	00351993          	slli	s3,a0,0x3
a00023a0:	c01b0b13          	addi	s6,s6,-1023
a00023a4:	4c01                	li	s8,0
a00023a6:	4481                	li	s1,0
a00023a8:	a0bd                	j	a0002416 <__divdf3+0xce>
a00023aa:	00abe7b3          	or	a5,s7,a0
a00023ae:	c7e1                	beqz	a5,a0002476 <__divdf3+0x12e>
a00023b0:	020b8b63          	beqz	s7,a00023e6 <__divdf3+0x9e>
a00023b4:	855e                	mv	a0,s7
a00023b6:	253010ef          	jal	ra,a0003e08 <__clzsi2>
a00023ba:	ff550713          	addi	a4,a0,-11
a00023be:	47f1                	li	a5,28
a00023c0:	02e7c863          	blt	a5,a4,a00023f0 <__divdf3+0xa8>
a00023c4:	46f5                	li	a3,29
a00023c6:	ff850993          	addi	s3,a0,-8
a00023ca:	8e99                	sub	a3,a3,a4
a00023cc:	013b9bb3          	sll	s7,s7,s3
a00023d0:	00d456b3          	srl	a3,s0,a3
a00023d4:	0176ebb3          	or	s7,a3,s7
a00023d8:	013419b3          	sll	s3,s0,s3
a00023dc:	c0d00593          	li	a1,-1011
a00023e0:	40a58b33          	sub	s6,a1,a0
a00023e4:	b7c1                	j	a00023a4 <__divdf3+0x5c>
a00023e6:	223010ef          	jal	ra,a0003e08 <__clzsi2>
a00023ea:	02050513          	addi	a0,a0,32
a00023ee:	b7f1                	j	a00023ba <__divdf3+0x72>
a00023f0:	fd850b93          	addi	s7,a0,-40
a00023f4:	01741bb3          	sll	s7,s0,s7
a00023f8:	4981                	li	s3,0
a00023fa:	b7cd                	j	a00023dc <__divdf3+0x94>
a00023fc:	00abe433          	or	s0,s7,a0
a0002400:	c041                	beqz	s0,a0002480 <__divdf3+0x138>
a0002402:	000807b7          	lui	a5,0x80
a0002406:	00fbf7b3          	and	a5,s7,a5
a000240a:	89aa                	mv	s3,a0
a000240c:	7ff00b13          	li	s6,2047
a0002410:	4c0d                	li	s8,3
a0002412:	44c1                	li	s1,16
a0002414:	fbc9                	bnez	a5,a00023a6 <__divdf3+0x5e>
a0002416:	00ca9513          	slli	a0,s5,0xc
a000241a:	00c55413          	srli	s0,a0,0xc
a000241e:	014ad513          	srli	a0,s5,0x14
a0002422:	7ff57593          	andi	a1,a0,2047
a0002426:	87e6                	mv	a5,s9
a0002428:	01fada93          	srli	s5,s5,0x1f
a000242c:	c1a5                	beqz	a1,a000248c <__divdf3+0x144>
a000242e:	7ff00713          	li	a4,2047
a0002432:	0ae58763          	beq	a1,a4,a00024e0 <__divdf3+0x198>
a0002436:	01dcd793          	srli	a5,s9,0x1d
a000243a:	00341513          	slli	a0,s0,0x3
a000243e:	8d5d                	or	a0,a0,a5
a0002440:	00800437          	lui	s0,0x800
a0002444:	8c49                	or	s0,s0,a0
a0002446:	003c9793          	slli	a5,s9,0x3
a000244a:	c0158513          	addi	a0,a1,-1023
a000244e:	4701                	li	a4,0
a0002450:	002c1693          	slli	a3,s8,0x2
a0002454:	8ed9                	or	a3,a3,a4
a0002456:	40ab05b3          	sub	a1,s6,a0
a000245a:	16fd                	addi	a3,a3,-1
a000245c:	4539                	li	a0,14
a000245e:	015a4633          	xor	a2,s4,s5
a0002462:	0ad56863          	bltu	a0,a3,a0002512 <__divdf3+0x1ca>
a0002466:	a0009537          	lui	a0,0xa0009
a000246a:	068a                	slli	a3,a3,0x2
a000246c:	d6850513          	addi	a0,a0,-664 # a0008d68 <__psram_limit+0xf7c08d68>
a0002470:	96aa                	add	a3,a3,a0
a0002472:	4294                	lw	a3,0(a3)
a0002474:	8682                	jr	a3
a0002476:	4b81                	li	s7,0
a0002478:	4981                	li	s3,0
a000247a:	4b01                	li	s6,0
a000247c:	4c05                	li	s8,1
a000247e:	b725                	j	a00023a6 <__divdf3+0x5e>
a0002480:	4b81                	li	s7,0
a0002482:	4981                	li	s3,0
a0002484:	7ff00b13          	li	s6,2047
a0002488:	4c09                	li	s8,2
a000248a:	bf31                	j	a00023a6 <__divdf3+0x5e>
a000248c:	019467b3          	or	a5,s0,s9
a0002490:	c7a5                	beqz	a5,a00024f8 <__divdf3+0x1b0>
a0002492:	c81d                	beqz	s0,a00024c8 <__divdf3+0x180>
a0002494:	8522                	mv	a0,s0
a0002496:	173010ef          	jal	ra,a0003e08 <__clzsi2>
a000249a:	85aa                	mv	a1,a0
a000249c:	ff558693          	addi	a3,a1,-11
a00024a0:	47f1                	li	a5,28
a00024a2:	02d7c963          	blt	a5,a3,a00024d4 <__divdf3+0x18c>
a00024a6:	4775                	li	a4,29
a00024a8:	ff858793          	addi	a5,a1,-8
a00024ac:	8f15                	sub	a4,a4,a3
a00024ae:	00f41533          	sll	a0,s0,a5
a00024b2:	00ecd733          	srl	a4,s9,a4
a00024b6:	00a76433          	or	s0,a4,a0
a00024ba:	00fc97b3          	sll	a5,s9,a5
a00024be:	c0d00713          	li	a4,-1011
a00024c2:	40b70533          	sub	a0,a4,a1
a00024c6:	b761                	j	a000244e <__divdf3+0x106>
a00024c8:	8566                	mv	a0,s9
a00024ca:	13f010ef          	jal	ra,a0003e08 <__clzsi2>
a00024ce:	02050593          	addi	a1,a0,32
a00024d2:	b7e9                	j	a000249c <__divdf3+0x154>
a00024d4:	fd858513          	addi	a0,a1,-40
a00024d8:	00ac9433          	sll	s0,s9,a0
a00024dc:	4781                	li	a5,0
a00024de:	b7c5                	j	a00024be <__divdf3+0x176>
a00024e0:	01946633          	or	a2,s0,s9
a00024e4:	ce19                	beqz	a2,a0002502 <__divdf3+0x1ba>
a00024e6:	00080737          	lui	a4,0x80
a00024ea:	8f61                	and	a4,a4,s0
a00024ec:	7ff00513          	li	a0,2047
a00024f0:	ef19                	bnez	a4,a000250e <__divdf3+0x1c6>
a00024f2:	470d                	li	a4,3
a00024f4:	44c1                	li	s1,16
a00024f6:	bfa9                	j	a0002450 <__divdf3+0x108>
a00024f8:	4401                	li	s0,0
a00024fa:	4781                	li	a5,0
a00024fc:	4501                	li	a0,0
a00024fe:	4705                	li	a4,1
a0002500:	bf81                	j	a0002450 <__divdf3+0x108>
a0002502:	4401                	li	s0,0
a0002504:	4781                	li	a5,0
a0002506:	7ff00513          	li	a0,2047
a000250a:	4709                	li	a4,2
a000250c:	b791                	j	a0002450 <__divdf3+0x108>
a000250e:	470d                	li	a4,3
a0002510:	b781                	j	a0002450 <__divdf3+0x108>
a0002512:	01746663          	bltu	s0,s7,a000251e <__divdf3+0x1d6>
a0002516:	268b9463          	bne	s7,s0,a000277e <__divdf3+0x436>
a000251a:	26f9e263          	bltu	s3,a5,a000277e <__divdf3+0x436>
a000251e:	01fb9513          	slli	a0,s7,0x1f
a0002522:	0019d713          	srli	a4,s3,0x1
a0002526:	01f99693          	slli	a3,s3,0x1f
a000252a:	001bdb93          	srli	s7,s7,0x1
a000252e:	00e569b3          	or	s3,a0,a4
a0002532:	00841513          	slli	a0,s0,0x8
a0002536:	0187d813          	srli	a6,a5,0x18
a000253a:	00a86833          	or	a6,a6,a0
a000253e:	8141                	srli	a0,a0,0x10
a0002540:	02abde33          	divu	t3,s7,a0
a0002544:	01081f13          	slli	t5,a6,0x10
a0002548:	010f5f13          	srli	t5,t5,0x10
a000254c:	00879893          	slli	a7,a5,0x8
a0002550:	0109d793          	srli	a5,s3,0x10
a0002554:	02abfbb3          	remu	s7,s7,a0
a0002558:	8372                	mv	t1,t3
a000255a:	03cf0733          	mul	a4,t5,t3
a000255e:	0bc2                	slli	s7,s7,0x10
a0002560:	0177e7b3          	or	a5,a5,s7
a0002564:	00e7fc63          	bgeu	a5,a4,a000257c <__divdf3+0x234>
a0002568:	97c2                	add	a5,a5,a6
a000256a:	fffe0313          	addi	t1,t3,-1
a000256e:	0107e763          	bltu	a5,a6,a000257c <__divdf3+0x234>
a0002572:	00e7f563          	bgeu	a5,a4,a000257c <__divdf3+0x234>
a0002576:	ffee0313          	addi	t1,t3,-2
a000257a:	97c2                	add	a5,a5,a6
a000257c:	8f99                	sub	a5,a5,a4
a000257e:	02a7deb3          	divu	t4,a5,a0
a0002582:	01099713          	slli	a4,s3,0x10
a0002586:	8341                	srli	a4,a4,0x10
a0002588:	02a7f7b3          	remu	a5,a5,a0
a000258c:	89f6                	mv	s3,t4
a000258e:	03df0e33          	mul	t3,t5,t4
a0002592:	07c2                	slli	a5,a5,0x10
a0002594:	8f5d                	or	a4,a4,a5
a0002596:	01c77c63          	bgeu	a4,t3,a00025ae <__divdf3+0x266>
a000259a:	9742                	add	a4,a4,a6
a000259c:	fffe8993          	addi	s3,t4,-1
a00025a0:	01076763          	bltu	a4,a6,a00025ae <__divdf3+0x266>
a00025a4:	01c77563          	bgeu	a4,t3,a00025ae <__divdf3+0x266>
a00025a8:	ffee8993          	addi	s3,t4,-2
a00025ac:	9742                	add	a4,a4,a6
a00025ae:	0342                	slli	t1,t1,0x10
a00025b0:	013369b3          	or	s3,t1,s3
a00025b4:	6341                	lui	t1,0x10
a00025b6:	fff30e93          	addi	t4,t1,-1 # ffff <wifi_ram_max_size+0x7fff>
a00025ba:	0109d293          	srli	t0,s3,0x10
a00025be:	0108df93          	srli	t6,a7,0x10
a00025c2:	41c70733          	sub	a4,a4,t3
a00025c6:	01d9fe33          	and	t3,s3,t4
a00025ca:	01d8feb3          	and	t4,a7,t4
a00025ce:	03de07b3          	mul	a5,t3,t4
a00025d2:	03d28433          	mul	s0,t0,t4
a00025d6:	03cf8e33          	mul	t3,t6,t3
a00025da:	008e03b3          	add	t2,t3,s0
a00025de:	0107de13          	srli	t3,a5,0x10
a00025e2:	9e1e                	add	t3,t3,t2
a00025e4:	03f282b3          	mul	t0,t0,t6
a00025e8:	008e7363          	bgeu	t3,s0,a00025ee <__divdf3+0x2a6>
a00025ec:	929a                	add	t0,t0,t1
a00025ee:	63c1                	lui	t2,0x10
a00025f0:	010e5313          	srli	t1,t3,0x10
a00025f4:	13fd                	addi	t2,t2,-1
a00025f6:	929a                	add	t0,t0,t1
a00025f8:	007e7333          	and	t1,t3,t2
a00025fc:	0342                	slli	t1,t1,0x10
a00025fe:	0077f7b3          	and	a5,a5,t2
a0002602:	933e                	add	t1,t1,a5
a0002604:	00576763          	bltu	a4,t0,a0002612 <__divdf3+0x2ca>
a0002608:	844e                	mv	s0,s3
a000260a:	02571e63          	bne	a4,t0,a0002646 <__divdf3+0x2fe>
a000260e:	0266fc63          	bgeu	a3,t1,a0002646 <__divdf3+0x2fe>
a0002612:	96c6                	add	a3,a3,a7
a0002614:	0116b7b3          	sltu	a5,a3,a7
a0002618:	97c2                	add	a5,a5,a6
a000261a:	973e                	add	a4,a4,a5
a000261c:	fff98413          	addi	s0,s3,-1
a0002620:	00e86663          	bltu	a6,a4,a000262c <__divdf3+0x2e4>
a0002624:	02e81163          	bne	a6,a4,a0002646 <__divdf3+0x2fe>
a0002628:	0116ef63          	bltu	a3,a7,a0002646 <__divdf3+0x2fe>
a000262c:	00576663          	bltu	a4,t0,a0002638 <__divdf3+0x2f0>
a0002630:	00e29b63          	bne	t0,a4,a0002646 <__divdf3+0x2fe>
a0002634:	0066f963          	bgeu	a3,t1,a0002646 <__divdf3+0x2fe>
a0002638:	96c6                	add	a3,a3,a7
a000263a:	0116b7b3          	sltu	a5,a3,a7
a000263e:	97c2                	add	a5,a5,a6
a0002640:	ffe98413          	addi	s0,s3,-2
a0002644:	973e                	add	a4,a4,a5
a0002646:	40668333          	sub	t1,a3,t1
a000264a:	40570733          	sub	a4,a4,t0
a000264e:	0066b6b3          	sltu	a3,a3,t1
a0002652:	8f15                	sub	a4,a4,a3
a0002654:	57fd                	li	a5,-1
a0002656:	0ee80763          	beq	a6,a4,a0002744 <__divdf3+0x3fc>
a000265a:	02a752b3          	divu	t0,a4,a0
a000265e:	01035793          	srli	a5,t1,0x10
a0002662:	02a77733          	remu	a4,a4,a0
a0002666:	8696                	mv	a3,t0
a0002668:	025f0e33          	mul	t3,t5,t0
a000266c:	0742                	slli	a4,a4,0x10
a000266e:	8f5d                	or	a4,a4,a5
a0002670:	01c77c63          	bgeu	a4,t3,a0002688 <__divdf3+0x340>
a0002674:	9742                	add	a4,a4,a6
a0002676:	fff28693          	addi	a3,t0,-1
a000267a:	01076763          	bltu	a4,a6,a0002688 <__divdf3+0x340>
a000267e:	01c77563          	bgeu	a4,t3,a0002688 <__divdf3+0x340>
a0002682:	ffe28693          	addi	a3,t0,-2
a0002686:	9742                	add	a4,a4,a6
a0002688:	41c70733          	sub	a4,a4,t3
a000268c:	02a75e33          	divu	t3,a4,a0
a0002690:	01031793          	slli	a5,t1,0x10
a0002694:	83c1                	srli	a5,a5,0x10
a0002696:	02a77733          	remu	a4,a4,a0
a000269a:	03cf0f33          	mul	t5,t5,t3
a000269e:	0742                	slli	a4,a4,0x10
a00026a0:	8f5d                	or	a4,a4,a5
a00026a2:	87f2                	mv	a5,t3
a00026a4:	01e77c63          	bgeu	a4,t5,a00026bc <__divdf3+0x374>
a00026a8:	9742                	add	a4,a4,a6
a00026aa:	fffe0793          	addi	a5,t3,-1
a00026ae:	01076763          	bltu	a4,a6,a00026bc <__divdf3+0x374>
a00026b2:	01e77563          	bgeu	a4,t5,a00026bc <__divdf3+0x374>
a00026b6:	ffee0793          	addi	a5,t3,-2
a00026ba:	9742                	add	a4,a4,a6
a00026bc:	06c2                	slli	a3,a3,0x10
a00026be:	8edd                	or	a3,a3,a5
a00026c0:	01069793          	slli	a5,a3,0x10
a00026c4:	83c1                	srli	a5,a5,0x10
a00026c6:	0106d313          	srli	t1,a3,0x10
a00026ca:	026f8e33          	mul	t3,t6,t1
a00026ce:	41e70733          	sub	a4,a4,t5
a00026d2:	02ff8fb3          	mul	t6,t6,a5
a00026d6:	02fe8f33          	mul	t5,t4,a5
a00026da:	03d30eb3          	mul	t4,t1,t4
a00026de:	010f5793          	srli	a5,t5,0x10
a00026e2:	9ff6                	add	t6,t6,t4
a00026e4:	97fe                	add	a5,a5,t6
a00026e6:	01d7f463          	bgeu	a5,t4,a00026ee <__divdf3+0x3a6>
a00026ea:	6541                	lui	a0,0x10
a00026ec:	9e2a                	add	t3,t3,a0
a00026ee:	0107d313          	srli	t1,a5,0x10
a00026f2:	9372                	add	t1,t1,t3
a00026f4:	6e41                	lui	t3,0x10
a00026f6:	1e7d                	addi	t3,t3,-1
a00026f8:	01c7f533          	and	a0,a5,t3
a00026fc:	0542                	slli	a0,a0,0x10
a00026fe:	01cf7f33          	and	t5,t5,t3
a0002702:	957a                	add	a0,a0,t5
a0002704:	00676663          	bltu	a4,t1,a0002710 <__divdf3+0x3c8>
a0002708:	2c671263          	bne	a4,t1,a00029cc <__divdf3+0x684>
a000270c:	87b6                	mv	a5,a3
a000270e:	c91d                	beqz	a0,a0002744 <__divdf3+0x3fc>
a0002710:	9742                	add	a4,a4,a6
a0002712:	fff68793          	addi	a5,a3,-1 # 7fefffff <__HeapLimit+0x1cecffff>
a0002716:	03076163          	bltu	a4,a6,a0002738 <__divdf3+0x3f0>
a000271a:	00676663          	bltu	a4,t1,a0002726 <__divdf3+0x3de>
a000271e:	2a671663          	bne	a4,t1,a00029ca <__divdf3+0x682>
a0002722:	00a8fd63          	bgeu	a7,a0,a000273c <__divdf3+0x3f4>
a0002726:	ffe68793          	addi	a5,a3,-2
a000272a:	00189693          	slli	a3,a7,0x1
a000272e:	0116b8b3          	sltu	a7,a3,a7
a0002732:	9846                	add	a6,a6,a7
a0002734:	9742                	add	a4,a4,a6
a0002736:	88b6                	mv	a7,a3
a0002738:	00671463          	bne	a4,t1,a0002740 <__divdf3+0x3f8>
a000273c:	00a88463          	beq	a7,a0,a0002744 <__divdf3+0x3fc>
a0002740:	0017e793          	ori	a5,a5,1
a0002744:	3ff58813          	addi	a6,a1,1023
a0002748:	11005863          	blez	a6,a0002858 <__divdf3+0x510>
a000274c:	0077f713          	andi	a4,a5,7
a0002750:	cf25                	beqz	a4,a00027c8 <__divdf3+0x480>
a0002752:	4709                	li	a4,2
a0002754:	0014e493          	ori	s1,s1,1
a0002758:	06e90763          	beq	s2,a4,a00027c6 <__divdf3+0x47e>
a000275c:	470d                	li	a4,3
a000275e:	06e90063          	beq	s2,a4,a00027be <__divdf3+0x476>
a0002762:	06091363          	bnez	s2,a00027c8 <__divdf3+0x480>
a0002766:	00f7f713          	andi	a4,a5,15
a000276a:	4691                	li	a3,4
a000276c:	04d70e63          	beq	a4,a3,a00027c8 <__divdf3+0x480>
a0002770:	00478713          	addi	a4,a5,4 # 80004 <remain_wifi_ram+0x60004>
a0002774:	00f737b3          	sltu	a5,a4,a5
a0002778:	943e                	add	s0,s0,a5
a000277a:	87ba                	mv	a5,a4
a000277c:	a0b1                	j	a00027c8 <__divdf3+0x480>
a000277e:	15fd                	addi	a1,a1,-1
a0002780:	4681                	li	a3,0
a0002782:	bb45                	j	a0002532 <__divdf3+0x1ea>
a0002784:	8652                	mv	a2,s4
a0002786:	845e                	mv	s0,s7
a0002788:	87ce                	mv	a5,s3
a000278a:	8762                	mv	a4,s8
a000278c:	468d                	li	a3,3
a000278e:	22d70763          	beq	a4,a3,a00029bc <__divdf3+0x674>
a0002792:	4685                	li	a3,1
a0002794:	22d70163          	beq	a4,a3,a00029b6 <__divdf3+0x66e>
a0002798:	4689                	li	a3,2
a000279a:	fad715e3          	bne	a4,a3,a0002744 <__divdf3+0x3fc>
a000279e:	a029                	j	a00027a8 <__divdf3+0x460>
a00027a0:	8656                	mv	a2,s5
a00027a2:	b7ed                	j	a000278c <__divdf3+0x444>
a00027a4:	0084e493          	ori	s1,s1,8
a00027a8:	4501                	li	a0,0
a00027aa:	4781                	li	a5,0
a00027ac:	7ff00713          	li	a4,2047
a00027b0:	a091                	j	a00027f4 <__divdf3+0x4ac>
a00027b2:	00080437          	lui	s0,0x80
a00027b6:	4781                	li	a5,0
a00027b8:	4601                	li	a2,0
a00027ba:	470d                	li	a4,3
a00027bc:	bfc1                	j	a000278c <__divdf3+0x444>
a00027be:	e609                	bnez	a2,a00027c8 <__divdf3+0x480>
a00027c0:	00878713          	addi	a4,a5,8
a00027c4:	bf45                	j	a0002774 <__divdf3+0x42c>
a00027c6:	fe6d                	bnez	a2,a00027c0 <__divdf3+0x478>
a00027c8:	01000737          	lui	a4,0x1000
a00027cc:	8f61                	and	a4,a4,s0
a00027ce:	c719                	beqz	a4,a00027dc <__divdf3+0x494>
a00027d0:	ff000737          	lui	a4,0xff000
a00027d4:	177d                	addi	a4,a4,-1
a00027d6:	8c79                	and	s0,s0,a4
a00027d8:	40058813          	addi	a6,a1,1024
a00027dc:	7fe00713          	li	a4,2046
a00027e0:	05074663          	blt	a4,a6,a000282c <__divdf3+0x4e4>
a00027e4:	0037d713          	srli	a4,a5,0x3
a00027e8:	01d41793          	slli	a5,s0,0x1d
a00027ec:	8fd9                	or	a5,a5,a4
a00027ee:	00345513          	srli	a0,s0,0x3
a00027f2:	8742                	mv	a4,a6
a00027f4:	0752                	slli	a4,a4,0x14
a00027f6:	7ff006b7          	lui	a3,0x7ff00
a00027fa:	0532                	slli	a0,a0,0xc
a00027fc:	8f75                	and	a4,a4,a3
a00027fe:	8131                	srli	a0,a0,0xc
a0002800:	8d59                	or	a0,a0,a4
a0002802:	067e                	slli	a2,a2,0x1f
a0002804:	00c56733          	or	a4,a0,a2
a0002808:	85ba                	mv	a1,a4
a000280a:	853e                	mv	a0,a5
a000280c:	c099                	beqz	s1,a0002812 <__divdf3+0x4ca>
a000280e:	0014a073          	csrs	fflags,s1
a0002812:	50b2                	lw	ra,44(sp)
a0002814:	5422                	lw	s0,40(sp)
a0002816:	5492                	lw	s1,36(sp)
a0002818:	5902                	lw	s2,32(sp)
a000281a:	49f2                	lw	s3,28(sp)
a000281c:	4a62                	lw	s4,24(sp)
a000281e:	4ad2                	lw	s5,20(sp)
a0002820:	4b42                	lw	s6,16(sp)
a0002822:	4bb2                	lw	s7,12(sp)
a0002824:	4c22                	lw	s8,8(sp)
a0002826:	4c92                	lw	s9,4(sp)
a0002828:	6145                	addi	sp,sp,48
a000282a:	8082                	ret
a000282c:	4789                	li	a5,2
a000282e:	02f90363          	beq	s2,a5,a0002854 <__divdf3+0x50c>
a0002832:	478d                	li	a5,3
a0002834:	00f90863          	beq	s2,a5,a0002844 <__divdf3+0x4fc>
a0002838:	00091763          	bnez	s2,a0002846 <__divdf3+0x4fe>
a000283c:	4781                	li	a5,0
a000283e:	7ff00713          	li	a4,2047
a0002842:	a029                	j	a000284c <__divdf3+0x504>
a0002844:	de65                	beqz	a2,a000283c <__divdf3+0x4f4>
a0002846:	57fd                	li	a5,-1
a0002848:	7fe00713          	li	a4,2046
a000284c:	0054e493          	ori	s1,s1,5
a0002850:	853e                	mv	a0,a5
a0002852:	b74d                	j	a00027f4 <__divdf3+0x4ac>
a0002854:	f665                	bnez	a2,a000283c <__divdf3+0x4f4>
a0002856:	bfc5                	j	a0002846 <__divdf3+0x4fe>
a0002858:	4705                	li	a4,1
a000285a:	04081463          	bnez	a6,a00028a2 <__divdf3+0x55a>
a000285e:	0077f693          	andi	a3,a5,7
a0002862:	8722                	mv	a4,s0
a0002864:	ca9d                	beqz	a3,a000289a <__divdf3+0x552>
a0002866:	4689                	li	a3,2
a0002868:	0014e493          	ori	s1,s1,1
a000286c:	02d90663          	beq	s2,a3,a0002898 <__divdf3+0x550>
a0002870:	468d                	li	a3,3
a0002872:	00d90f63          	beq	s2,a3,a0002890 <__divdf3+0x548>
a0002876:	02091263          	bnez	s2,a000289a <__divdf3+0x552>
a000287a:	00f7f693          	andi	a3,a5,15
a000287e:	4511                	li	a0,4
a0002880:	00a68d63          	beq	a3,a0,a000289a <__divdf3+0x552>
a0002884:	ffc7b713          	sltiu	a4,a5,-4
a0002888:	00174713          	xori	a4,a4,1
a000288c:	9722                	add	a4,a4,s0
a000288e:	a031                	j	a000289a <__divdf3+0x552>
a0002890:	e609                	bnez	a2,a000289a <__divdf3+0x552>
a0002892:	ff87b713          	sltiu	a4,a5,-8
a0002896:	bfcd                	j	a0002888 <__divdf3+0x540>
a0002898:	fe6d                	bnez	a2,a0002892 <__divdf3+0x54a>
a000289a:	8361                	srli	a4,a4,0x18
a000289c:	00174713          	xori	a4,a4,1
a00028a0:	8b05                	andi	a4,a4,1
a00028a2:	4505                	li	a0,1
a00028a4:	41050533          	sub	a0,a0,a6
a00028a8:	03800693          	li	a3,56
a00028ac:	0ca6c263          	blt	a3,a0,a0002970 <__divdf3+0x628>
a00028b0:	46fd                	li	a3,31
a00028b2:	04a6ca63          	blt	a3,a0,a0002906 <__divdf3+0x5be>
a00028b6:	41e58593          	addi	a1,a1,1054
a00028ba:	00a7d833          	srl	a6,a5,a0
a00028be:	00b416b3          	sll	a3,s0,a1
a00028c2:	00b797b3          	sll	a5,a5,a1
a00028c6:	0106e6b3          	or	a3,a3,a6
a00028ca:	00f037b3          	snez	a5,a5
a00028ce:	8fd5                	or	a5,a5,a3
a00028d0:	00a45533          	srl	a0,s0,a0
a00028d4:	0077f693          	andi	a3,a5,7
a00028d8:	c2ad                	beqz	a3,a000293a <__divdf3+0x5f2>
a00028da:	4689                	li	a3,2
a00028dc:	0014e493          	ori	s1,s1,1
a00028e0:	04d90c63          	beq	s2,a3,a0002938 <__divdf3+0x5f0>
a00028e4:	468d                	li	a3,3
a00028e6:	04d90563          	beq	s2,a3,a0002930 <__divdf3+0x5e8>
a00028ea:	04091863          	bnez	s2,a000293a <__divdf3+0x5f2>
a00028ee:	00f7f693          	andi	a3,a5,15
a00028f2:	4591                	li	a1,4
a00028f4:	04b68363          	beq	a3,a1,a000293a <__divdf3+0x5f2>
a00028f8:	00478693          	addi	a3,a5,4
a00028fc:	00f6b7b3          	sltu	a5,a3,a5
a0002900:	953e                	add	a0,a0,a5
a0002902:	87b6                	mv	a5,a3
a0002904:	a81d                	j	a000293a <__divdf3+0x5f2>
a0002906:	5685                	li	a3,-31
a0002908:	410686b3          	sub	a3,a3,a6
a000290c:	02000893          	li	a7,32
a0002910:	00d456b3          	srl	a3,s0,a3
a0002914:	4801                	li	a6,0
a0002916:	01150663          	beq	a0,a7,a0002922 <__divdf3+0x5da>
a000291a:	43e58593          	addi	a1,a1,1086
a000291e:	00b41833          	sll	a6,s0,a1
a0002922:	00f867b3          	or	a5,a6,a5
a0002926:	00f037b3          	snez	a5,a5
a000292a:	8fd5                	or	a5,a5,a3
a000292c:	4501                	li	a0,0
a000292e:	b75d                	j	a00028d4 <__divdf3+0x58c>
a0002930:	e609                	bnez	a2,a000293a <__divdf3+0x5f2>
a0002932:	00878693          	addi	a3,a5,8
a0002936:	b7d9                	j	a00028fc <__divdf3+0x5b4>
a0002938:	fe6d                	bnez	a2,a0002932 <__divdf3+0x5ea>
a000293a:	008006b7          	lui	a3,0x800
a000293e:	8ee9                	and	a3,a3,a0
a0002940:	ca81                	beqz	a3,a0002950 <__divdf3+0x608>
a0002942:	0014e493          	ori	s1,s1,1
a0002946:	4501                	li	a0,0
a0002948:	4781                	li	a5,0
a000294a:	e305                	bnez	a4,a000296a <__divdf3+0x622>
a000294c:	4705                	li	a4,1
a000294e:	b55d                	j	a00027f4 <__divdf3+0x4ac>
a0002950:	0037d693          	srli	a3,a5,0x3
a0002954:	01d51793          	slli	a5,a0,0x1d
a0002958:	8fd5                	or	a5,a5,a3
a000295a:	810d                	srli	a0,a0,0x3
a000295c:	e8070ce3          	beqz	a4,a00027f4 <__divdf3+0x4ac>
a0002960:	0014f713          	andi	a4,s1,1
a0002964:	e80708e3          	beqz	a4,a00027f4 <__divdf3+0x4ac>
a0002968:	4701                	li	a4,0
a000296a:	0024e493          	ori	s1,s1,2
a000296e:	b559                	j	a00027f4 <__divdf3+0x4ac>
a0002970:	8fc1                	or	a5,a5,s0
a0002972:	cf91                	beqz	a5,a000298e <__divdf3+0x646>
a0002974:	4789                	li	a5,2
a0002976:	0014e493          	ori	s1,s1,1
a000297a:	02f90363          	beq	s2,a5,a00029a0 <__divdf3+0x658>
a000297e:	478d                	li	a5,3
a0002980:	00f90c63          	beq	s2,a5,a0002998 <__divdf3+0x650>
a0002984:	4785                	li	a5,1
a0002986:	00091363          	bnez	s2,a000298c <__divdf3+0x644>
a000298a:	4795                	li	a5,5
a000298c:	838d                	srli	a5,a5,0x3
a000298e:	0024e493          	ori	s1,s1,2
a0002992:	4501                	li	a0,0
a0002994:	4701                	li	a4,0
a0002996:	bdb9                	j	a00027f4 <__divdf3+0x4ac>
a0002998:	47a5                	li	a5,9
a000299a:	da6d                	beqz	a2,a000298c <__divdf3+0x644>
a000299c:	4785                	li	a5,1
a000299e:	b7fd                	j	a000298c <__divdf3+0x644>
a00029a0:	47a5                	li	a5,9
a00029a2:	f66d                	bnez	a2,a000298c <__divdf3+0x644>
a00029a4:	bfe5                	j	a000299c <__divdf3+0x654>
a00029a6:	00080537          	lui	a0,0x80
a00029aa:	4781                	li	a5,0
a00029ac:	7ff00713          	li	a4,2047
a00029b0:	4601                	li	a2,0
a00029b2:	44c1                	li	s1,16
a00029b4:	b581                	j	a00027f4 <__divdf3+0x4ac>
a00029b6:	4501                	li	a0,0
a00029b8:	4781                	li	a5,0
a00029ba:	bfe9                	j	a0002994 <__divdf3+0x64c>
a00029bc:	00080537          	lui	a0,0x80
a00029c0:	4781                	li	a5,0
a00029c2:	7ff00713          	li	a4,2047
a00029c6:	4601                	li	a2,0
a00029c8:	b535                	j	a00027f4 <__divdf3+0x4ac>
a00029ca:	86be                	mv	a3,a5
a00029cc:	87b6                	mv	a5,a3
a00029ce:	bb8d                	j	a0002740 <__divdf3+0x3f8>

a00029d0 <__eqdf2>:
a00029d0:	882a                	mv	a6,a0
a00029d2:	002027f3          	frrm	a5
a00029d6:	001007b7          	lui	a5,0x100
a00029da:	0145d893          	srli	a7,a1,0x14
a00029de:	17fd                	addi	a5,a5,-1
a00029e0:	0146d313          	srli	t1,a3,0x14
a00029e4:	8e2a                	mv	t3,a0
a00029e6:	7ff8f893          	andi	a7,a7,2047
a00029ea:	7ff00513          	li	a0,2047
a00029ee:	00b7f733          	and	a4,a5,a1
a00029f2:	8eb2                	mv	t4,a2
a00029f4:	8ff5                	and	a5,a5,a3
a00029f6:	81fd                	srli	a1,a1,0x1f
a00029f8:	7ff37313          	andi	t1,t1,2047
a00029fc:	82fd                	srli	a3,a3,0x1f
a00029fe:	00a89863          	bne	a7,a0,a0002a0e <__eqdf2+0x3e>
a0002a02:	01076533          	or	a0,a4,a6
a0002a06:	e531                	bnez	a0,a0002a52 <__eqdf2+0x82>
a0002a08:	07131463          	bne	t1,a7,a0002a70 <__eqdf2+0xa0>
a0002a0c:	a019                	j	a0002a12 <__eqdf2+0x42>
a0002a0e:	00a31563          	bne	t1,a0,a0002a18 <__eqdf2+0x48>
a0002a12:	00c7e533          	or	a0,a5,a2
a0002a16:	e515                	bnez	a0,a0002a42 <__eqdf2+0x72>
a0002a18:	4505                	li	a0,1
a0002a1a:	04689c63          	bne	a7,t1,a0002a72 <__eqdf2+0xa2>
a0002a1e:	04f71a63          	bne	a4,a5,a0002a72 <__eqdf2+0xa2>
a0002a22:	05de1863          	bne	t3,t4,a0002a72 <__eqdf2+0xa2>
a0002a26:	00d58c63          	beq	a1,a3,a0002a3e <__eqdf2+0x6e>
a0002a2a:	04089463          	bnez	a7,a0002a72 <__eqdf2+0xa2>
a0002a2e:	01076733          	or	a4,a4,a6
a0002a32:	00e03533          	snez	a0,a4
a0002a36:	8082                	ret
a0002a38:	00186073          	csrsi	fflags,16
a0002a3c:	a815                	j	a0002a70 <__eqdf2+0xa0>
a0002a3e:	4501                	li	a0,0
a0002a40:	8082                	ret
a0002a42:	7ff00693          	li	a3,2047
a0002a46:	02d89163          	bne	a7,a3,a0002a68 <__eqdf2+0x98>
a0002a4a:	01076833          	or	a6,a4,a6
a0002a4e:	00080d63          	beqz	a6,a0002a68 <__eqdf2+0x98>
a0002a52:	000806b7          	lui	a3,0x80
a0002a56:	8f75                	and	a4,a4,a3
a0002a58:	d365                	beqz	a4,a0002a38 <__eqdf2+0x68>
a0002a5a:	7ff00713          	li	a4,2047
a0002a5e:	4505                	li	a0,1
a0002a60:	00e31963          	bne	t1,a4,a0002a72 <__eqdf2+0xa2>
a0002a64:	8e5d                	or	a2,a2,a5
a0002a66:	c611                	beqz	a2,a0002a72 <__eqdf2+0xa2>
a0002a68:	00080737          	lui	a4,0x80
a0002a6c:	8ff9                	and	a5,a5,a4
a0002a6e:	d7e9                	beqz	a5,a0002a38 <__eqdf2+0x68>
a0002a70:	4505                	li	a0,1
a0002a72:	8082                	ret

a0002a74 <__gedf2>:
a0002a74:	87aa                	mv	a5,a0
a0002a76:	00202773          	frrm	a4
a0002a7a:	00100737          	lui	a4,0x100
a0002a7e:	177d                	addi	a4,a4,-1
a0002a80:	0145d813          	srli	a6,a1,0x14
a0002a84:	00b778b3          	and	a7,a4,a1
a0002a88:	832a                	mv	t1,a0
a0002a8a:	7ff87813          	andi	a6,a6,2047
a0002a8e:	01f5d513          	srli	a0,a1,0x1f
a0002a92:	7ff00e93          	li	t4,2047
a0002a96:	0146d593          	srli	a1,a3,0x14
a0002a9a:	8f75                	and	a4,a4,a3
a0002a9c:	8e32                	mv	t3,a2
a0002a9e:	7ff5f593          	andi	a1,a1,2047
a0002aa2:	82fd                	srli	a3,a3,0x1f
a0002aa4:	01d81a63          	bne	a6,t4,a0002ab8 <__gedf2+0x44>
a0002aa8:	00f8eeb3          	or	t4,a7,a5
a0002aac:	060e8663          	beqz	t4,a0002b18 <__gedf2+0xa4>
a0002ab0:	00186073          	csrsi	fflags,16
a0002ab4:	5579                	li	a0,-2
a0002ab6:	8082                	ret
a0002ab8:	01d59663          	bne	a1,t4,a0002ac4 <__gedf2+0x50>
a0002abc:	00c76eb3          	or	t4,a4,a2
a0002ac0:	fe0e98e3          	bnez	t4,a0002ab0 <__gedf2+0x3c>
a0002ac4:	04081c63          	bnez	a6,a0002b1c <__gedf2+0xa8>
a0002ac8:	00f8e7b3          	or	a5,a7,a5
a0002acc:	0017b793          	seqz	a5,a5
a0002ad0:	e199                	bnez	a1,a0002ad6 <__gedf2+0x62>
a0002ad2:	8e59                	or	a2,a2,a4
a0002ad4:	ce0d                	beqz	a2,a0002b0e <__gedf2+0x9a>
a0002ad6:	eb81                	bnez	a5,a0002ae6 <__gedf2+0x72>
a0002ad8:	00d51463          	bne	a0,a3,a0002ae0 <__gedf2+0x6c>
a0002adc:	0105d963          	bge	a1,a6,a0002aee <__gedf2+0x7a>
a0002ae0:	c50d                	beqz	a0,a0002b0a <__gedf2+0x96>
a0002ae2:	557d                	li	a0,-1
a0002ae4:	8082                	ret
a0002ae6:	557d                	li	a0,-1
a0002ae8:	c691                	beqz	a3,a0002af4 <__gedf2+0x80>
a0002aea:	8536                	mv	a0,a3
a0002aec:	8082                	ret
a0002aee:	00b85463          	bge	a6,a1,a0002af6 <__gedf2+0x82>
a0002af2:	d965                	beqz	a0,a0002ae2 <__gedf2+0x6e>
a0002af4:	8082                	ret
a0002af6:	ff1765e3          	bltu	a4,a7,a0002ae0 <__gedf2+0x6c>
a0002afa:	00e89c63          	bne	a7,a4,a0002b12 <__gedf2+0x9e>
a0002afe:	fe6e61e3          	bltu	t3,t1,a0002ae0 <__gedf2+0x6c>
a0002b02:	ffc368e3          	bltu	t1,t3,a0002af2 <__gedf2+0x7e>
a0002b06:	4501                	li	a0,0
a0002b08:	8082                	ret
a0002b0a:	4505                	li	a0,1
a0002b0c:	8082                	ret
a0002b0e:	ffe5                	bnez	a5,a0002b06 <__gedf2+0x92>
a0002b10:	bfc1                	j	a0002ae0 <__gedf2+0x6c>
a0002b12:	fee8e0e3          	bltu	a7,a4,a0002af2 <__gedf2+0x7e>
a0002b16:	bfc5                	j	a0002b06 <__gedf2+0x92>
a0002b18:	fb0582e3          	beq	a1,a6,a0002abc <__gedf2+0x48>
a0002b1c:	fdd5                	bnez	a1,a0002ad8 <__gedf2+0x64>
a0002b1e:	4781                	li	a5,0
a0002b20:	bf4d                	j	a0002ad2 <__gedf2+0x5e>

a0002b22 <__ledf2>:
a0002b22:	87aa                	mv	a5,a0
a0002b24:	00202773          	frrm	a4
a0002b28:	00100737          	lui	a4,0x100
a0002b2c:	177d                	addi	a4,a4,-1
a0002b2e:	0145d813          	srli	a6,a1,0x14
a0002b32:	00b778b3          	and	a7,a4,a1
a0002b36:	832a                	mv	t1,a0
a0002b38:	7ff87813          	andi	a6,a6,2047
a0002b3c:	01f5d513          	srli	a0,a1,0x1f
a0002b40:	7ff00e93          	li	t4,2047
a0002b44:	0146d593          	srli	a1,a3,0x14
a0002b48:	8f75                	and	a4,a4,a3
a0002b4a:	8e32                	mv	t3,a2
a0002b4c:	7ff5f593          	andi	a1,a1,2047
a0002b50:	82fd                	srli	a3,a3,0x1f
a0002b52:	01d81a63          	bne	a6,t4,a0002b66 <__ledf2+0x44>
a0002b56:	00f8eeb3          	or	t4,a7,a5
a0002b5a:	060e8663          	beqz	t4,a0002bc6 <__ledf2+0xa4>
a0002b5e:	00186073          	csrsi	fflags,16
a0002b62:	4509                	li	a0,2
a0002b64:	8082                	ret
a0002b66:	01d59663          	bne	a1,t4,a0002b72 <__ledf2+0x50>
a0002b6a:	00c76eb3          	or	t4,a4,a2
a0002b6e:	fe0e98e3          	bnez	t4,a0002b5e <__ledf2+0x3c>
a0002b72:	04081c63          	bnez	a6,a0002bca <__ledf2+0xa8>
a0002b76:	00f8e7b3          	or	a5,a7,a5
a0002b7a:	0017b793          	seqz	a5,a5
a0002b7e:	e199                	bnez	a1,a0002b84 <__ledf2+0x62>
a0002b80:	8e59                	or	a2,a2,a4
a0002b82:	ce0d                	beqz	a2,a0002bbc <__ledf2+0x9a>
a0002b84:	eb81                	bnez	a5,a0002b94 <__ledf2+0x72>
a0002b86:	00d51463          	bne	a0,a3,a0002b8e <__ledf2+0x6c>
a0002b8a:	0105d963          	bge	a1,a6,a0002b9c <__ledf2+0x7a>
a0002b8e:	c50d                	beqz	a0,a0002bb8 <__ledf2+0x96>
a0002b90:	557d                	li	a0,-1
a0002b92:	8082                	ret
a0002b94:	557d                	li	a0,-1
a0002b96:	c691                	beqz	a3,a0002ba2 <__ledf2+0x80>
a0002b98:	8536                	mv	a0,a3
a0002b9a:	8082                	ret
a0002b9c:	00b85463          	bge	a6,a1,a0002ba4 <__ledf2+0x82>
a0002ba0:	d965                	beqz	a0,a0002b90 <__ledf2+0x6e>
a0002ba2:	8082                	ret
a0002ba4:	ff1765e3          	bltu	a4,a7,a0002b8e <__ledf2+0x6c>
a0002ba8:	00e89c63          	bne	a7,a4,a0002bc0 <__ledf2+0x9e>
a0002bac:	fe6e61e3          	bltu	t3,t1,a0002b8e <__ledf2+0x6c>
a0002bb0:	ffc368e3          	bltu	t1,t3,a0002ba0 <__ledf2+0x7e>
a0002bb4:	4501                	li	a0,0
a0002bb6:	8082                	ret
a0002bb8:	4505                	li	a0,1
a0002bba:	8082                	ret
a0002bbc:	ffe5                	bnez	a5,a0002bb4 <__ledf2+0x92>
a0002bbe:	bfc1                	j	a0002b8e <__ledf2+0x6c>
a0002bc0:	fee8e0e3          	bltu	a7,a4,a0002ba0 <__ledf2+0x7e>
a0002bc4:	bfc5                	j	a0002bb4 <__ledf2+0x92>
a0002bc6:	fb0582e3          	beq	a1,a6,a0002b6a <__ledf2+0x48>
a0002bca:	fdd5                	bnez	a1,a0002b86 <__ledf2+0x64>
a0002bcc:	4781                	li	a5,0
a0002bce:	bf4d                	j	a0002b80 <__ledf2+0x5e>

a0002bd0 <__muldf3>:
a0002bd0:	7179                	addi	sp,sp,-48
a0002bd2:	d422                	sw	s0,40(sp)
a0002bd4:	ca56                	sw	s5,20(sp)
a0002bd6:	c266                	sw	s9,4(sp)
a0002bd8:	d606                	sw	ra,44(sp)
a0002bda:	d226                	sw	s1,36(sp)
a0002bdc:	d04a                	sw	s2,32(sp)
a0002bde:	ce4e                	sw	s3,28(sp)
a0002be0:	cc52                	sw	s4,24(sp)
a0002be2:	c85a                	sw	s6,16(sp)
a0002be4:	c65e                	sw	s7,12(sp)
a0002be6:	c462                	sw	s8,8(sp)
a0002be8:	842a                	mv	s0,a0
a0002bea:	8cb2                	mv	s9,a2
a0002bec:	8ab6                	mv	s5,a3
a0002bee:	00202973          	frrm	s2
a0002bf2:	0145db93          	srli	s7,a1,0x14
a0002bf6:	00c59993          	slli	s3,a1,0xc
a0002bfa:	7ffbfb93          	andi	s7,s7,2047
a0002bfe:	00c9d993          	srli	s3,s3,0xc
a0002c02:	01f5db13          	srli	s6,a1,0x1f
a0002c06:	020b8663          	beqz	s7,a0002c32 <__muldf3+0x62>
a0002c0a:	7ff00793          	li	a5,2047
a0002c0e:	06fb8b63          	beq	s7,a5,a0002c84 <__muldf3+0xb4>
a0002c12:	01d55793          	srli	a5,a0,0x1d
a0002c16:	098e                	slli	s3,s3,0x3
a0002c18:	0137e9b3          	or	s3,a5,s3
a0002c1c:	008007b7          	lui	a5,0x800
a0002c20:	00f9e9b3          	or	s3,s3,a5
a0002c24:	00351a13          	slli	s4,a0,0x3
a0002c28:	c01b8b93          	addi	s7,s7,-1023
a0002c2c:	4c01                	li	s8,0
a0002c2e:	4481                	li	s1,0
a0002c30:	a0bd                	j	a0002c9e <__muldf3+0xce>
a0002c32:	00a9e7b3          	or	a5,s3,a0
a0002c36:	c3f9                	beqz	a5,a0002cfc <__muldf3+0x12c>
a0002c38:	02098b63          	beqz	s3,a0002c6e <__muldf3+0x9e>
a0002c3c:	854e                	mv	a0,s3
a0002c3e:	1ca010ef          	jal	ra,a0003e08 <__clzsi2>
a0002c42:	ff550713          	addi	a4,a0,-11 # 7fff5 <remain_wifi_ram+0x5fff5>
a0002c46:	47f1                	li	a5,28
a0002c48:	02e7c863          	blt	a5,a4,a0002c78 <__muldf3+0xa8>
a0002c4c:	47f5                	li	a5,29
a0002c4e:	ff850a13          	addi	s4,a0,-8
a0002c52:	8f99                	sub	a5,a5,a4
a0002c54:	014999b3          	sll	s3,s3,s4
a0002c58:	00f457b3          	srl	a5,s0,a5
a0002c5c:	0137e9b3          	or	s3,a5,s3
a0002c60:	01441a33          	sll	s4,s0,s4
a0002c64:	c0d00b93          	li	s7,-1011
a0002c68:	40ab8bb3          	sub	s7,s7,a0
a0002c6c:	b7c1                	j	a0002c2c <__muldf3+0x5c>
a0002c6e:	19a010ef          	jal	ra,a0003e08 <__clzsi2>
a0002c72:	02050513          	addi	a0,a0,32
a0002c76:	b7f1                	j	a0002c42 <__muldf3+0x72>
a0002c78:	fd850993          	addi	s3,a0,-40
a0002c7c:	013419b3          	sll	s3,s0,s3
a0002c80:	4a01                	li	s4,0
a0002c82:	b7cd                	j	a0002c64 <__muldf3+0x94>
a0002c84:	00a9e433          	or	s0,s3,a0
a0002c88:	cc3d                	beqz	s0,a0002d06 <__muldf3+0x136>
a0002c8a:	000807b7          	lui	a5,0x80
a0002c8e:	00f9f7b3          	and	a5,s3,a5
a0002c92:	8a2a                	mv	s4,a0
a0002c94:	7ff00b93          	li	s7,2047
a0002c98:	4c0d                	li	s8,3
a0002c9a:	44c1                	li	s1,16
a0002c9c:	fbc9                	bnez	a5,a0002c2e <__muldf3+0x5e>
a0002c9e:	014ad513          	srli	a0,s5,0x14
a0002ca2:	00ca9413          	slli	s0,s5,0xc
a0002ca6:	7ff57513          	andi	a0,a0,2047
a0002caa:	87e6                	mv	a5,s9
a0002cac:	8031                	srli	s0,s0,0xc
a0002cae:	01fada93          	srli	s5,s5,0x1f
a0002cb2:	c125                	beqz	a0,a0002d12 <__muldf3+0x142>
a0002cb4:	7ff00713          	li	a4,2047
a0002cb8:	0ae50563          	beq	a0,a4,a0002d62 <__muldf3+0x192>
a0002cbc:	01dcd793          	srli	a5,s9,0x1d
a0002cc0:	040e                	slli	s0,s0,0x3
a0002cc2:	8c5d                	or	s0,s0,a5
a0002cc4:	008007b7          	lui	a5,0x800
a0002cc8:	8c5d                	or	s0,s0,a5
a0002cca:	c0150513          	addi	a0,a0,-1023
a0002cce:	003c9793          	slli	a5,s9,0x3
a0002cd2:	4701                	li	a4,0
a0002cd4:	002c1693          	slli	a3,s8,0x2
a0002cd8:	8ed9                	or	a3,a3,a4
a0002cda:	9baa                	add	s7,s7,a0
a0002cdc:	16fd                	addi	a3,a3,-1
a0002cde:	4639                	li	a2,14
a0002ce0:	015b45b3          	xor	a1,s6,s5
a0002ce4:	001b8513          	addi	a0,s7,1
a0002ce8:	0ed66963          	bltu	a2,a3,a0002dda <__muldf3+0x20a>
a0002cec:	a0009637          	lui	a2,0xa0009
a0002cf0:	068a                	slli	a3,a3,0x2
a0002cf2:	da460613          	addi	a2,a2,-604 # a0008da4 <__psram_limit+0xf7c08da4>
a0002cf6:	96b2                	add	a3,a3,a2
a0002cf8:	4294                	lw	a3,0(a3)
a0002cfa:	8682                	jr	a3
a0002cfc:	4981                	li	s3,0
a0002cfe:	4a01                	li	s4,0
a0002d00:	4b81                	li	s7,0
a0002d02:	4c05                	li	s8,1
a0002d04:	b72d                	j	a0002c2e <__muldf3+0x5e>
a0002d06:	4981                	li	s3,0
a0002d08:	4a01                	li	s4,0
a0002d0a:	7ff00b93          	li	s7,2047
a0002d0e:	4c09                	li	s8,2
a0002d10:	bf39                	j	a0002c2e <__muldf3+0x5e>
a0002d12:	019467b3          	or	a5,s0,s9
a0002d16:	c3b5                	beqz	a5,a0002d7a <__muldf3+0x1aa>
a0002d18:	c80d                	beqz	s0,a0002d4a <__muldf3+0x17a>
a0002d1a:	8522                	mv	a0,s0
a0002d1c:	0ec010ef          	jal	ra,a0003e08 <__clzsi2>
a0002d20:	ff550693          	addi	a3,a0,-11
a0002d24:	47f1                	li	a5,28
a0002d26:	02d7c863          	blt	a5,a3,a0002d56 <__muldf3+0x186>
a0002d2a:	4775                	li	a4,29
a0002d2c:	ff850793          	addi	a5,a0,-8
a0002d30:	8f15                	sub	a4,a4,a3
a0002d32:	00f41433          	sll	s0,s0,a5
a0002d36:	00ecd733          	srl	a4,s9,a4
a0002d3a:	8c59                	or	s0,s0,a4
a0002d3c:	00fc97b3          	sll	a5,s9,a5
a0002d40:	c0d00713          	li	a4,-1011
a0002d44:	40a70533          	sub	a0,a4,a0
a0002d48:	b769                	j	a0002cd2 <__muldf3+0x102>
a0002d4a:	8566                	mv	a0,s9
a0002d4c:	0bc010ef          	jal	ra,a0003e08 <__clzsi2>
a0002d50:	02050513          	addi	a0,a0,32
a0002d54:	b7f1                	j	a0002d20 <__muldf3+0x150>
a0002d56:	fd850413          	addi	s0,a0,-40
a0002d5a:	008c9433          	sll	s0,s9,s0
a0002d5e:	4781                	li	a5,0
a0002d60:	b7c5                	j	a0002d40 <__muldf3+0x170>
a0002d62:	01946633          	or	a2,s0,s9
a0002d66:	ce19                	beqz	a2,a0002d84 <__muldf3+0x1b4>
a0002d68:	00080737          	lui	a4,0x80
a0002d6c:	8f61                	and	a4,a4,s0
a0002d6e:	7ff00513          	li	a0,2047
a0002d72:	ef19                	bnez	a4,a0002d90 <__muldf3+0x1c0>
a0002d74:	470d                	li	a4,3
a0002d76:	44c1                	li	s1,16
a0002d78:	bfb1                	j	a0002cd4 <__muldf3+0x104>
a0002d7a:	4401                	li	s0,0
a0002d7c:	4781                	li	a5,0
a0002d7e:	4501                	li	a0,0
a0002d80:	4705                	li	a4,1
a0002d82:	bf89                	j	a0002cd4 <__muldf3+0x104>
a0002d84:	4401                	li	s0,0
a0002d86:	4781                	li	a5,0
a0002d88:	7ff00513          	li	a0,2047
a0002d8c:	4709                	li	a4,2
a0002d8e:	b799                	j	a0002cd4 <__muldf3+0x104>
a0002d90:	470d                	li	a4,3
a0002d92:	b789                	j	a0002cd4 <__muldf3+0x104>
a0002d94:	00080437          	lui	s0,0x80
a0002d98:	4781                	li	a5,0
a0002d9a:	7ff00713          	li	a4,2047
a0002d9e:	4581                	li	a1,0
a0002da0:	44c1                	li	s1,16
a0002da2:	0752                	slli	a4,a4,0x14
a0002da4:	7ff006b7          	lui	a3,0x7ff00
a0002da8:	0432                	slli	s0,s0,0xc
a0002daa:	8f75                	and	a4,a4,a3
a0002dac:	8031                	srli	s0,s0,0xc
a0002dae:	05fe                	slli	a1,a1,0x1f
a0002db0:	8c59                	or	s0,s0,a4
a0002db2:	00b46733          	or	a4,s0,a1
a0002db6:	853e                	mv	a0,a5
a0002db8:	85ba                	mv	a1,a4
a0002dba:	c099                	beqz	s1,a0002dc0 <__muldf3+0x1f0>
a0002dbc:	0014a073          	csrs	fflags,s1
a0002dc0:	50b2                	lw	ra,44(sp)
a0002dc2:	5422                	lw	s0,40(sp)
a0002dc4:	5492                	lw	s1,36(sp)
a0002dc6:	5902                	lw	s2,32(sp)
a0002dc8:	49f2                	lw	s3,28(sp)
a0002dca:	4a62                	lw	s4,24(sp)
a0002dcc:	4ad2                	lw	s5,20(sp)
a0002dce:	4b42                	lw	s6,16(sp)
a0002dd0:	4bb2                	lw	s7,12(sp)
a0002dd2:	4c22                	lw	s8,8(sp)
a0002dd4:	4c92                	lw	s9,4(sp)
a0002dd6:	6145                	addi	sp,sp,48
a0002dd8:	8082                	ret
a0002dda:	6ec1                	lui	t4,0x10
a0002ddc:	fffe8e13          	addi	t3,t4,-1 # ffff <wifi_ram_max_size+0x7fff>
a0002de0:	010a5713          	srli	a4,s4,0x10
a0002de4:	0107d893          	srli	a7,a5,0x10
a0002de8:	01ca7a33          	and	s4,s4,t3
a0002dec:	01c7f7b3          	and	a5,a5,t3
a0002df0:	03488833          	mul	a6,a7,s4
a0002df4:	034786b3          	mul	a3,a5,s4
a0002df8:	02f70f33          	mul	t5,a4,a5
a0002dfc:	01e80333          	add	t1,a6,t5
a0002e00:	0106d813          	srli	a6,a3,0x10
a0002e04:	981a                	add	a6,a6,t1
a0002e06:	03170633          	mul	a2,a4,a7
a0002e0a:	01e87363          	bgeu	a6,t5,a0002e10 <__muldf3+0x240>
a0002e0e:	9676                	add	a2,a2,t4
a0002e10:	01085f93          	srli	t6,a6,0x10
a0002e14:	01c87833          	and	a6,a6,t3
a0002e18:	01c6f6b3          	and	a3,a3,t3
a0002e1c:	01045e93          	srli	t4,s0,0x10
a0002e20:	01c47e33          	and	t3,s0,t3
a0002e24:	0842                	slli	a6,a6,0x10
a0002e26:	9836                	add	a6,a6,a3
a0002e28:	03c70f33          	mul	t5,a4,t3
a0002e2c:	03ca06b3          	mul	a3,s4,t3
a0002e30:	034e8a33          	mul	s4,t4,s4
a0002e34:	01ea0333          	add	t1,s4,t5
a0002e38:	0106da13          	srli	s4,a3,0x10
a0002e3c:	9a1a                	add	s4,s4,t1
a0002e3e:	03d70733          	mul	a4,a4,t4
a0002e42:	01ea7463          	bgeu	s4,t5,a0002e4a <__muldf3+0x27a>
a0002e46:	6341                	lui	t1,0x10
a0002e48:	971a                	add	a4,a4,t1
a0002e4a:	010a5313          	srli	t1,s4,0x10
a0002e4e:	933a                	add	t1,t1,a4
a0002e50:	6741                	lui	a4,0x10
a0002e52:	fff70f13          	addi	t5,a4,-1 # ffff <wifi_ram_max_size+0x7fff>
a0002e56:	01ea7a33          	and	s4,s4,t5
a0002e5a:	01e6f6b3          	and	a3,a3,t5
a0002e5e:	0109d413          	srli	s0,s3,0x10
a0002e62:	0a42                	slli	s4,s4,0x10
a0002e64:	01e9f9b3          	and	s3,s3,t5
a0002e68:	03378f33          	mul	t5,a5,s3
a0002e6c:	9a36                	add	s4,s4,a3
a0002e6e:	9fd2                	add	t6,t6,s4
a0002e70:	033886b3          	mul	a3,a7,s3
a0002e74:	02f407b3          	mul	a5,s0,a5
a0002e78:	028882b3          	mul	t0,a7,s0
a0002e7c:	00f688b3          	add	a7,a3,a5
a0002e80:	010f5693          	srli	a3,t5,0x10
a0002e84:	96c6                	add	a3,a3,a7
a0002e86:	00f6f363          	bgeu	a3,a5,a0002e8c <__muldf3+0x2bc>
a0002e8a:	92ba                	add	t0,t0,a4
a0002e8c:	6741                	lui	a4,0x10
a0002e8e:	fff70793          	addi	a5,a4,-1 # ffff <wifi_ram_max_size+0x7fff>
a0002e92:	00ff7f33          	and	t5,t5,a5
a0002e96:	0106d893          	srli	a7,a3,0x10
a0002e9a:	8efd                	and	a3,a3,a5
a0002e9c:	03c987b3          	mul	a5,s3,t3
a0002ea0:	06c2                	slli	a3,a3,0x10
a0002ea2:	96fa                	add	a3,a3,t5
a0002ea4:	9896                	add	a7,a7,t0
a0002ea6:	03c40e33          	mul	t3,s0,t3
a0002eaa:	033e89b3          	mul	s3,t4,s3
a0002eae:	028e8f33          	mul	t5,t4,s0
a0002eb2:	99f2                	add	s3,s3,t3
a0002eb4:	0107d413          	srli	s0,a5,0x10
a0002eb8:	99a2                	add	s3,s3,s0
a0002eba:	01c9f363          	bgeu	s3,t3,a0002ec0 <__muldf3+0x2f0>
a0002ebe:	9f3a                	add	t5,t5,a4
a0002ec0:	6e41                	lui	t3,0x10
a0002ec2:	1e7d                	addi	t3,t3,-1
a0002ec4:	01c9f733          	and	a4,s3,t3
a0002ec8:	01c7f7b3          	and	a5,a5,t3
a0002ecc:	0742                	slli	a4,a4,0x10
a0002ece:	967e                	add	a2,a2,t6
a0002ed0:	973e                	add	a4,a4,a5
a0002ed2:	01463a33          	sltu	s4,a2,s4
a0002ed6:	971a                	add	a4,a4,t1
a0002ed8:	01470433          	add	s0,a4,s4
a0002edc:	9636                	add	a2,a2,a3
a0002ede:	00d636b3          	sltu	a3,a2,a3
a0002ee2:	01140e33          	add	t3,s0,a7
a0002ee6:	00de0eb3          	add	t4,t3,a3
a0002eea:	00673733          	sltu	a4,a4,t1
a0002eee:	01443433          	sltu	s0,s0,s4
a0002ef2:	8c59                	or	s0,s0,a4
a0002ef4:	00deb6b3          	sltu	a3,t4,a3
a0002ef8:	0109d993          	srli	s3,s3,0x10
a0002efc:	011e38b3          	sltu	a7,t3,a7
a0002f00:	944e                	add	s0,s0,s3
a0002f02:	00d8e6b3          	or	a3,a7,a3
a0002f06:	9436                	add	s0,s0,a3
a0002f08:	947a                	add	s0,s0,t5
a0002f0a:	017ed793          	srli	a5,t4,0x17
a0002f0e:	0426                	slli	s0,s0,0x9
a0002f10:	8c5d                	or	s0,s0,a5
a0002f12:	00961793          	slli	a5,a2,0x9
a0002f16:	0107e7b3          	or	a5,a5,a6
a0002f1a:	00f037b3          	snez	a5,a5
a0002f1e:	825d                	srli	a2,a2,0x17
a0002f20:	01000737          	lui	a4,0x1000
a0002f24:	8fd1                	or	a5,a5,a2
a0002f26:	0ea6                	slli	t4,t4,0x9
a0002f28:	8f61                	and	a4,a4,s0
a0002f2a:	01d7e7b3          	or	a5,a5,t4
a0002f2e:	cb25                	beqz	a4,a0002f9e <__muldf3+0x3ce>
a0002f30:	0017d713          	srli	a4,a5,0x1
a0002f34:	8b85                	andi	a5,a5,1
a0002f36:	8fd9                	or	a5,a5,a4
a0002f38:	01f41713          	slli	a4,s0,0x1f
a0002f3c:	8fd9                	or	a5,a5,a4
a0002f3e:	8005                	srli	s0,s0,0x1
a0002f40:	3ff50813          	addi	a6,a0,1023
a0002f44:	0d005063          	blez	a6,a0003004 <__muldf3+0x434>
a0002f48:	0077f713          	andi	a4,a5,7
a0002f4c:	c325                	beqz	a4,a0002fac <__muldf3+0x3dc>
a0002f4e:	4709                	li	a4,2
a0002f50:	0014e493          	ori	s1,s1,1
a0002f54:	04e90b63          	beq	s2,a4,a0002faa <__muldf3+0x3da>
a0002f58:	470d                	li	a4,3
a0002f5a:	04e90463          	beq	s2,a4,a0002fa2 <__muldf3+0x3d2>
a0002f5e:	04091763          	bnez	s2,a0002fac <__muldf3+0x3dc>
a0002f62:	00f7f713          	andi	a4,a5,15
a0002f66:	4691                	li	a3,4
a0002f68:	04d70263          	beq	a4,a3,a0002fac <__muldf3+0x3dc>
a0002f6c:	00478713          	addi	a4,a5,4 # 800004 <remain_wifi_ram+0x7e0004>
a0002f70:	00f737b3          	sltu	a5,a4,a5
a0002f74:	943e                	add	s0,s0,a5
a0002f76:	87ba                	mv	a5,a4
a0002f78:	a815                	j	a0002fac <__muldf3+0x3dc>
a0002f7a:	85da                	mv	a1,s6
a0002f7c:	844e                	mv	s0,s3
a0002f7e:	87d2                	mv	a5,s4
a0002f80:	8762                	mv	a4,s8
a0002f82:	4689                	li	a3,2
a0002f84:	1cd70763          	beq	a4,a3,a0003152 <__muldf3+0x582>
a0002f88:	468d                	li	a3,3
a0002f8a:	1cd70963          	beq	a4,a3,a000315c <__muldf3+0x58c>
a0002f8e:	4685                	li	a3,1
a0002f90:	fad718e3          	bne	a4,a3,a0002f40 <__muldf3+0x370>
a0002f94:	4401                	li	s0,0
a0002f96:	4781                	li	a5,0
a0002f98:	a265                	j	a0003140 <__muldf3+0x570>
a0002f9a:	85d6                	mv	a1,s5
a0002f9c:	b7dd                	j	a0002f82 <__muldf3+0x3b2>
a0002f9e:	855e                	mv	a0,s7
a0002fa0:	b745                	j	a0002f40 <__muldf3+0x370>
a0002fa2:	e589                	bnez	a1,a0002fac <__muldf3+0x3dc>
a0002fa4:	00878713          	addi	a4,a5,8
a0002fa8:	b7e1                	j	a0002f70 <__muldf3+0x3a0>
a0002faa:	fded                	bnez	a1,a0002fa4 <__muldf3+0x3d4>
a0002fac:	01000737          	lui	a4,0x1000
a0002fb0:	8f61                	and	a4,a4,s0
a0002fb2:	c719                	beqz	a4,a0002fc0 <__muldf3+0x3f0>
a0002fb4:	ff000737          	lui	a4,0xff000
a0002fb8:	177d                	addi	a4,a4,-1
a0002fba:	8c79                	and	s0,s0,a4
a0002fbc:	40050813          	addi	a6,a0,1024
a0002fc0:	7fe00713          	li	a4,2046
a0002fc4:	01074a63          	blt	a4,a6,a0002fd8 <__muldf3+0x408>
a0002fc8:	0037d713          	srli	a4,a5,0x3
a0002fcc:	01d41793          	slli	a5,s0,0x1d
a0002fd0:	8fd9                	or	a5,a5,a4
a0002fd2:	800d                	srli	s0,s0,0x3
a0002fd4:	8742                	mv	a4,a6
a0002fd6:	b3f1                	j	a0002da2 <__muldf3+0x1d2>
a0002fd8:	4789                	li	a5,2
a0002fda:	02f90363          	beq	s2,a5,a0003000 <__muldf3+0x430>
a0002fde:	478d                	li	a5,3
a0002fe0:	00f90863          	beq	s2,a5,a0002ff0 <__muldf3+0x420>
a0002fe4:	00091763          	bnez	s2,a0002ff2 <__muldf3+0x422>
a0002fe8:	4781                	li	a5,0
a0002fea:	7ff00713          	li	a4,2047
a0002fee:	a029                	j	a0002ff8 <__muldf3+0x428>
a0002ff0:	dde5                	beqz	a1,a0002fe8 <__muldf3+0x418>
a0002ff2:	57fd                	li	a5,-1
a0002ff4:	7fe00713          	li	a4,2046
a0002ff8:	0054e493          	ori	s1,s1,5
a0002ffc:	843e                	mv	s0,a5
a0002ffe:	b355                	j	a0002da2 <__muldf3+0x1d2>
a0003000:	f5e5                	bnez	a1,a0002fe8 <__muldf3+0x418>
a0003002:	bfc5                	j	a0002ff2 <__muldf3+0x422>
a0003004:	4705                	li	a4,1
a0003006:	04081463          	bnez	a6,a000304e <__muldf3+0x47e>
a000300a:	0077f693          	andi	a3,a5,7
a000300e:	8722                	mv	a4,s0
a0003010:	ca9d                	beqz	a3,a0003046 <__muldf3+0x476>
a0003012:	4689                	li	a3,2
a0003014:	0014e493          	ori	s1,s1,1
a0003018:	02d90663          	beq	s2,a3,a0003044 <__muldf3+0x474>
a000301c:	468d                	li	a3,3
a000301e:	00d90f63          	beq	s2,a3,a000303c <__muldf3+0x46c>
a0003022:	02091263          	bnez	s2,a0003046 <__muldf3+0x476>
a0003026:	00f7f693          	andi	a3,a5,15
a000302a:	4611                	li	a2,4
a000302c:	00c68d63          	beq	a3,a2,a0003046 <__muldf3+0x476>
a0003030:	ffc7b713          	sltiu	a4,a5,-4
a0003034:	00174713          	xori	a4,a4,1
a0003038:	9722                	add	a4,a4,s0
a000303a:	a031                	j	a0003046 <__muldf3+0x476>
a000303c:	e589                	bnez	a1,a0003046 <__muldf3+0x476>
a000303e:	ff87b713          	sltiu	a4,a5,-8
a0003042:	bfcd                	j	a0003034 <__muldf3+0x464>
a0003044:	fded                	bnez	a1,a000303e <__muldf3+0x46e>
a0003046:	8361                	srli	a4,a4,0x18
a0003048:	00174713          	xori	a4,a4,1
a000304c:	8b05                	andi	a4,a4,1
a000304e:	4685                	li	a3,1
a0003050:	410686b3          	sub	a3,a3,a6
a0003054:	03800613          	li	a2,56
a0003058:	0cd64263          	blt	a2,a3,a000311c <__muldf3+0x54c>
a000305c:	467d                	li	a2,31
a000305e:	04d64a63          	blt	a2,a3,a00030b2 <__muldf3+0x4e2>
a0003062:	41e50513          	addi	a0,a0,1054
a0003066:	00a41633          	sll	a2,s0,a0
a000306a:	00d7d833          	srl	a6,a5,a3
a000306e:	00a797b3          	sll	a5,a5,a0
a0003072:	01066633          	or	a2,a2,a6
a0003076:	00f037b3          	snez	a5,a5
a000307a:	8fd1                	or	a5,a5,a2
a000307c:	00d45433          	srl	s0,s0,a3
a0003080:	0077f693          	andi	a3,a5,7
a0003084:	c2ad                	beqz	a3,a00030e6 <__muldf3+0x516>
a0003086:	4689                	li	a3,2
a0003088:	0014e493          	ori	s1,s1,1
a000308c:	04d90c63          	beq	s2,a3,a00030e4 <__muldf3+0x514>
a0003090:	468d                	li	a3,3
a0003092:	04d90563          	beq	s2,a3,a00030dc <__muldf3+0x50c>
a0003096:	04091863          	bnez	s2,a00030e6 <__muldf3+0x516>
a000309a:	00f7f693          	andi	a3,a5,15
a000309e:	4611                	li	a2,4
a00030a0:	04c68363          	beq	a3,a2,a00030e6 <__muldf3+0x516>
a00030a4:	00478693          	addi	a3,a5,4
a00030a8:	00f6b7b3          	sltu	a5,a3,a5
a00030ac:	943e                	add	s0,s0,a5
a00030ae:	87b6                	mv	a5,a3
a00030b0:	a81d                	j	a00030e6 <__muldf3+0x516>
a00030b2:	5605                	li	a2,-31
a00030b4:	41060633          	sub	a2,a2,a6
a00030b8:	02000893          	li	a7,32
a00030bc:	00c45633          	srl	a2,s0,a2
a00030c0:	4801                	li	a6,0
a00030c2:	01168663          	beq	a3,a7,a00030ce <__muldf3+0x4fe>
a00030c6:	43e50513          	addi	a0,a0,1086
a00030ca:	00a41833          	sll	a6,s0,a0
a00030ce:	00f867b3          	or	a5,a6,a5
a00030d2:	00f037b3          	snez	a5,a5
a00030d6:	8fd1                	or	a5,a5,a2
a00030d8:	4401                	li	s0,0
a00030da:	b75d                	j	a0003080 <__muldf3+0x4b0>
a00030dc:	e589                	bnez	a1,a00030e6 <__muldf3+0x516>
a00030de:	00878693          	addi	a3,a5,8
a00030e2:	b7d9                	j	a00030a8 <__muldf3+0x4d8>
a00030e4:	fded                	bnez	a1,a00030de <__muldf3+0x50e>
a00030e6:	008006b7          	lui	a3,0x800
a00030ea:	8ee1                	and	a3,a3,s0
a00030ec:	ca81                	beqz	a3,a00030fc <__muldf3+0x52c>
a00030ee:	0014e493          	ori	s1,s1,1
a00030f2:	4401                	li	s0,0
a00030f4:	4781                	li	a5,0
a00030f6:	e305                	bnez	a4,a0003116 <__muldf3+0x546>
a00030f8:	4705                	li	a4,1
a00030fa:	b165                	j	a0002da2 <__muldf3+0x1d2>
a00030fc:	0037d693          	srli	a3,a5,0x3
a0003100:	01d41793          	slli	a5,s0,0x1d
a0003104:	8fd5                	or	a5,a5,a3
a0003106:	800d                	srli	s0,s0,0x3
a0003108:	c8070de3          	beqz	a4,a0002da2 <__muldf3+0x1d2>
a000310c:	0014f713          	andi	a4,s1,1
a0003110:	c80709e3          	beqz	a4,a0002da2 <__muldf3+0x1d2>
a0003114:	4701                	li	a4,0
a0003116:	0024e493          	ori	s1,s1,2
a000311a:	b161                	j	a0002da2 <__muldf3+0x1d2>
a000311c:	8fc1                	or	a5,a5,s0
a000311e:	cf91                	beqz	a5,a000313a <__muldf3+0x56a>
a0003120:	4789                	li	a5,2
a0003122:	0014e493          	ori	s1,s1,1
a0003126:	02f90363          	beq	s2,a5,a000314c <__muldf3+0x57c>
a000312a:	478d                	li	a5,3
a000312c:	00f90c63          	beq	s2,a5,a0003144 <__muldf3+0x574>
a0003130:	4785                	li	a5,1
a0003132:	00091363          	bnez	s2,a0003138 <__muldf3+0x568>
a0003136:	4795                	li	a5,5
a0003138:	838d                	srli	a5,a5,0x3
a000313a:	0024e493          	ori	s1,s1,2
a000313e:	4401                	li	s0,0
a0003140:	4701                	li	a4,0
a0003142:	b185                	j	a0002da2 <__muldf3+0x1d2>
a0003144:	47a5                	li	a5,9
a0003146:	d9ed                	beqz	a1,a0003138 <__muldf3+0x568>
a0003148:	4785                	li	a5,1
a000314a:	b7fd                	j	a0003138 <__muldf3+0x568>
a000314c:	47a5                	li	a5,9
a000314e:	f5ed                	bnez	a1,a0003138 <__muldf3+0x568>
a0003150:	bfe5                	j	a0003148 <__muldf3+0x578>
a0003152:	4401                	li	s0,0
a0003154:	4781                	li	a5,0
a0003156:	7ff00713          	li	a4,2047
a000315a:	b1a1                	j	a0002da2 <__muldf3+0x1d2>
a000315c:	00080437          	lui	s0,0x80
a0003160:	4781                	li	a5,0
a0003162:	7ff00713          	li	a4,2047
a0003166:	4581                	li	a1,0
a0003168:	b92d                	j	a0002da2 <__muldf3+0x1d2>

a000316a <__subdf3>:
a000316a:	1101                	addi	sp,sp,-32
a000316c:	ce06                	sw	ra,28(sp)
a000316e:	cc22                	sw	s0,24(sp)
a0003170:	ca26                	sw	s1,20(sp)
a0003172:	c84a                	sw	s2,16(sp)
a0003174:	c64e                	sw	s3,12(sp)
a0003176:	c452                	sw	s4,8(sp)
a0003178:	002029f3          	frrm	s3
a000317c:	001008b7          	lui	a7,0x100
a0003180:	18fd                	addi	a7,a7,-1
a0003182:	00b8f733          	and	a4,a7,a1
a0003186:	0145d413          	srli	s0,a1,0x14
a000318a:	00d8f8b3          	and	a7,a7,a3
a000318e:	01f5d493          	srli	s1,a1,0x1f
a0003192:	0146d593          	srli	a1,a3,0x14
a0003196:	00371793          	slli	a5,a4,0x3
a000319a:	01f6d313          	srli	t1,a3,0x1f
a000319e:	01d55713          	srli	a4,a0,0x1d
a00031a2:	01d65693          	srli	a3,a2,0x1d
a00031a6:	088e                	slli	a7,a7,0x3
a00031a8:	00361813          	slli	a6,a2,0x3
a00031ac:	7ff5f593          	andi	a1,a1,2047
a00031b0:	7ff00613          	li	a2,2047
a00031b4:	8f5d                	or	a4,a4,a5
a00031b6:	7ff47413          	andi	s0,s0,2047
a00031ba:	00351793          	slli	a5,a0,0x3
a00031be:	0116e6b3          	or	a3,a3,a7
a00031c2:	00c59563          	bne	a1,a2,a00031cc <__subdf3+0x62>
a00031c6:	0106e633          	or	a2,a3,a6
a00031ca:	e219                	bnez	a2,a00031d0 <__subdf3+0x66>
a00031cc:	00134313          	xori	t1,t1,1
a00031d0:	40b40633          	sub	a2,s0,a1
a00031d4:	3c931663          	bne	t1,s1,a00035a0 <__subdf3+0x436>
a00031d8:	12c05063          	blez	a2,a00032f8 <__subdf3+0x18e>
a00031dc:	e9a9                	bnez	a1,a000322e <__subdf3+0xc4>
a00031de:	0106e533          	or	a0,a3,a6
a00031e2:	e10d                	bnez	a0,a0003204 <__subdf3+0x9a>
a00031e4:	7ff00693          	li	a3,2047
a00031e8:	4401                	li	s0,0
a00031ea:	24d61363          	bne	a2,a3,a0003430 <__subdf3+0x2c6>
a00031ee:	00f766b3          	or	a3,a4,a5
a00031f2:	78068e63          	beqz	a3,a000398e <__subdf3+0x824>
a00031f6:	00400437          	lui	s0,0x400
a00031fa:	8c79                	and	s0,s0,a4
a00031fc:	00143413          	seqz	s0,s0
a0003200:	0412                	slli	s0,s0,0x4
a0003202:	a43d                	j	a0003430 <__subdf3+0x2c6>
a0003204:	fff60513          	addi	a0,a2,-1
a0003208:	e901                	bnez	a0,a0003218 <__subdf3+0xae>
a000320a:	983e                	add	a6,a6,a5
a000320c:	96ba                	add	a3,a3,a4
a000320e:	00f837b3          	sltu	a5,a6,a5
a0003212:	96be                	add	a3,a3,a5
a0003214:	4605                	li	a2,1
a0003216:	a041                	j	a0003296 <__subdf3+0x12c>
a0003218:	7ff00893          	li	a7,2047
a000321c:	03161f63          	bne	a2,a7,a000325a <__subdf3+0xf0>
a0003220:	00f766b3          	or	a3,a4,a5
a0003224:	fae9                	bnez	a3,a00031f6 <__subdf3+0x8c>
a0003226:	4701                	li	a4,0
a0003228:	4781                	li	a5,0
a000322a:	4401                	li	s0,0
a000322c:	ac8d                	j	a000349e <__subdf3+0x334>
a000322e:	7ff00593          	li	a1,2047
a0003232:	02b41063          	bne	s0,a1,a0003252 <__subdf3+0xe8>
a0003236:	00f766b3          	or	a3,a4,a5
a000323a:	74068d63          	beqz	a3,a0003994 <__subdf3+0x82a>
a000323e:	004006b7          	lui	a3,0x400
a0003242:	8ef9                	and	a3,a3,a4
a0003244:	7ff00613          	li	a2,2047
a0003248:	4581                	li	a1,0
a000324a:	2e069063          	bnez	a3,a000352a <__subdf3+0x3c0>
a000324e:	4441                	li	s0,16
a0003250:	a2c5                	j	a0003430 <__subdf3+0x2c6>
a0003252:	008005b7          	lui	a1,0x800
a0003256:	8ecd                	or	a3,a3,a1
a0003258:	8532                	mv	a0,a2
a000325a:	03800613          	li	a2,56
a000325e:	08a64863          	blt	a2,a0,a00032ee <__subdf3+0x184>
a0003262:	467d                	li	a2,31
a0003264:	04a64f63          	blt	a2,a0,a00032c2 <__subdf3+0x158>
a0003268:	02000613          	li	a2,32
a000326c:	8e09                	sub	a2,a2,a0
a000326e:	00c695b3          	sll	a1,a3,a2
a0003272:	00a858b3          	srl	a7,a6,a0
a0003276:	00c81833          	sll	a6,a6,a2
a000327a:	0115e5b3          	or	a1,a1,a7
a000327e:	01003833          	snez	a6,a6
a0003282:	0105e833          	or	a6,a1,a6
a0003286:	00a6d6b3          	srl	a3,a3,a0
a000328a:	983e                	add	a6,a6,a5
a000328c:	96ba                	add	a3,a3,a4
a000328e:	00f837b3          	sltu	a5,a6,a5
a0003292:	96be                	add	a3,a3,a5
a0003294:	8622                	mv	a2,s0
a0003296:	008007b7          	lui	a5,0x800
a000329a:	8ff5                	and	a5,a5,a3
a000329c:	cbad                	beqz	a5,a000330e <__subdf3+0x1a4>
a000329e:	0605                	addi	a2,a2,1
a00032a0:	7ff00793          	li	a5,2047
a00032a4:	2cf60e63          	beq	a2,a5,a0003580 <__subdf3+0x416>
a00032a8:	ff800737          	lui	a4,0xff800
a00032ac:	177d                	addi	a4,a4,-1
a00032ae:	00185793          	srli	a5,a6,0x1
a00032b2:	8f75                	and	a4,a4,a3
a00032b4:	00187813          	andi	a6,a6,1
a00032b8:	0107e833          	or	a6,a5,a6
a00032bc:	01f71793          	slli	a5,a4,0x1f
a00032c0:	a48d                	j	a0003522 <__subdf3+0x3b8>
a00032c2:	fe050593          	addi	a1,a0,-32
a00032c6:	02000893          	li	a7,32
a00032ca:	00b6d5b3          	srl	a1,a3,a1
a00032ce:	4601                	li	a2,0
a00032d0:	01150763          	beq	a0,a7,a00032de <__subdf3+0x174>
a00032d4:	04000613          	li	a2,64
a00032d8:	8e09                	sub	a2,a2,a0
a00032da:	00c69633          	sll	a2,a3,a2
a00032de:	01066833          	or	a6,a2,a6
a00032e2:	01003833          	snez	a6,a6
a00032e6:	0105e833          	or	a6,a1,a6
a00032ea:	4681                	li	a3,0
a00032ec:	bf79                	j	a000328a <__subdf3+0x120>
a00032ee:	0106e833          	or	a6,a3,a6
a00032f2:	01003833          	snez	a6,a6
a00032f6:	bfd5                	j	a00032ea <__subdf3+0x180>
a00032f8:	ce65                	beqz	a2,a00033f0 <__subdf3+0x286>
a00032fa:	40858633          	sub	a2,a1,s0
a00032fe:	e829                	bnez	s0,a0003350 <__subdf3+0x1e6>
a0003300:	00f76533          	or	a0,a4,a5
a0003304:	e911                	bnez	a0,a0003318 <__subdf3+0x1ae>
a0003306:	7ff00793          	li	a5,2047
a000330a:	02f60663          	beq	a2,a5,a0003336 <__subdf3+0x1cc>
a000330e:	8736                	mv	a4,a3
a0003310:	87c2                	mv	a5,a6
a0003312:	46060e63          	beqz	a2,a000378e <__subdf3+0x624>
a0003316:	ac09                	j	a0003528 <__subdf3+0x3be>
a0003318:	fff60893          	addi	a7,a2,-1
a000331c:	00089963          	bnez	a7,a000332e <__subdf3+0x1c4>
a0003320:	97c2                	add	a5,a5,a6
a0003322:	0107b833          	sltu	a6,a5,a6
a0003326:	96ba                	add	a3,a3,a4
a0003328:	96c2                	add	a3,a3,a6
a000332a:	883e                	mv	a6,a5
a000332c:	b5e5                	j	a0003214 <__subdf3+0xaa>
a000332e:	7ff00513          	li	a0,2047
a0003332:	04a61663          	bne	a2,a0,a000337e <__subdf3+0x214>
a0003336:	0106e7b3          	or	a5,a3,a6
a000333a:	4701                	li	a4,0
a000333c:	16078163          	beqz	a5,a000349e <__subdf3+0x334>
a0003340:	004007b7          	lui	a5,0x400
a0003344:	8ff5                	and	a5,a5,a3
a0003346:	8736                	mv	a4,a3
a0003348:	64079963          	bnez	a5,a000399a <__subdf3+0x830>
a000334c:	87c2                	mv	a5,a6
a000334e:	a015                	j	a0003372 <__subdf3+0x208>
a0003350:	7ff00513          	li	a0,2047
a0003354:	02a59163          	bne	a1,a0,a0003376 <__subdf3+0x20c>
a0003358:	0106e7b3          	or	a5,a3,a6
a000335c:	60078b63          	beqz	a5,a0003972 <__subdf3+0x808>
a0003360:	004007b7          	lui	a5,0x400
a0003364:	8ff5                	and	a5,a5,a3
a0003366:	8736                	mv	a4,a3
a0003368:	60079963          	bnez	a5,a000397a <__subdf3+0x810>
a000336c:	87c2                	mv	a5,a6
a000336e:	7ff00613          	li	a2,2047
a0003372:	4581                	li	a1,0
a0003374:	bde9                	j	a000324e <__subdf3+0xe4>
a0003376:	00800537          	lui	a0,0x800
a000337a:	8f49                	or	a4,a4,a0
a000337c:	88b2                	mv	a7,a2
a000337e:	03800613          	li	a2,56
a0003382:	07164363          	blt	a2,a7,a00033e8 <__subdf3+0x27e>
a0003386:	467d                	li	a2,31
a0003388:	03164b63          	blt	a2,a7,a00033be <__subdf3+0x254>
a000338c:	02000513          	li	a0,32
a0003390:	41150533          	sub	a0,a0,a7
a0003394:	00a71633          	sll	a2,a4,a0
a0003398:	0117d333          	srl	t1,a5,a7
a000339c:	00a797b3          	sll	a5,a5,a0
a00033a0:	00666633          	or	a2,a2,t1
a00033a4:	00f037b3          	snez	a5,a5
a00033a8:	8fd1                	or	a5,a5,a2
a00033aa:	01175733          	srl	a4,a4,a7
a00033ae:	97c2                	add	a5,a5,a6
a00033b0:	9736                	add	a4,a4,a3
a00033b2:	0107b6b3          	sltu	a3,a5,a6
a00033b6:	96ba                	add	a3,a3,a4
a00033b8:	883e                	mv	a6,a5
a00033ba:	862e                	mv	a2,a1
a00033bc:	bde9                	j	a0003296 <__subdf3+0x12c>
a00033be:	fe088613          	addi	a2,a7,-32 # fffe0 <remain_wifi_ram+0xdffe0>
a00033c2:	02000313          	li	t1,32
a00033c6:	00c75633          	srl	a2,a4,a2
a00033ca:	4501                	li	a0,0
a00033cc:	00688863          	beq	a7,t1,a00033dc <__subdf3+0x272>
a00033d0:	04000513          	li	a0,64
a00033d4:	41150533          	sub	a0,a0,a7
a00033d8:	00a71533          	sll	a0,a4,a0
a00033dc:	8fc9                	or	a5,a5,a0
a00033de:	00f037b3          	snez	a5,a5
a00033e2:	8fd1                	or	a5,a5,a2
a00033e4:	4701                	li	a4,0
a00033e6:	b7e1                	j	a00033ae <__subdf3+0x244>
a00033e8:	8fd9                	or	a5,a5,a4
a00033ea:	00f037b3          	snez	a5,a5
a00033ee:	bfdd                	j	a00033e4 <__subdf3+0x27a>
a00033f0:	00140613          	addi	a2,s0,1 # 400001 <remain_wifi_ram+0x3e0001>
a00033f4:	7fe67513          	andi	a0,a2,2046
a00033f8:	10051863          	bnez	a0,a0003508 <__subdf3+0x39e>
a00033fc:	00f76633          	or	a2,a4,a5
a0003400:	e039                	bnez	s0,a0003446 <__subdf3+0x2dc>
a0003402:	52060b63          	beqz	a2,a0003938 <__subdf3+0x7ce>
a0003406:	0106e633          	or	a2,a3,a6
a000340a:	38060263          	beqz	a2,a000378e <__subdf3+0x624>
a000340e:	983e                	add	a6,a6,a5
a0003410:	00f837b3          	sltu	a5,a6,a5
a0003414:	9736                	add	a4,a4,a3
a0003416:	973e                	add	a4,a4,a5
a0003418:	008007b7          	lui	a5,0x800
a000341c:	8ff9                	and	a5,a5,a4
a000341e:	50078e63          	beqz	a5,a000393a <__subdf3+0x7d0>
a0003422:	ff8007b7          	lui	a5,0xff800
a0003426:	17fd                	addi	a5,a5,-1
a0003428:	8f7d                	and	a4,a4,a5
a000342a:	4581                	li	a1,0
a000342c:	87c2                	mv	a5,a6
a000342e:	4605                	li	a2,1
a0003430:	0077f693          	andi	a3,a5,7
a0003434:	12069063          	bnez	a3,a0003554 <__subdf3+0x3ea>
a0003438:	c1bd                	beqz	a1,a000349e <__subdf3+0x334>
a000343a:	00147693          	andi	a3,s0,1
a000343e:	c2a5                	beqz	a3,a000349e <__subdf3+0x334>
a0003440:	00246413          	ori	s0,s0,2
a0003444:	a8a9                	j	a000349e <__subdf3+0x334>
a0003446:	7ff00513          	li	a0,2047
a000344a:	02a41563          	bne	s0,a0,a0003474 <__subdf3+0x30a>
a000344e:	5c060463          	beqz	a2,a0003a16 <__subdf3+0x8ac>
a0003452:	00400437          	lui	s0,0x400
a0003456:	8c79                	and	s0,s0,a4
a0003458:	00143413          	seqz	s0,s0
a000345c:	0412                	slli	s0,s0,0x4
a000345e:	02a59763          	bne	a1,a0,a000348c <__subdf3+0x322>
a0003462:	0106e5b3          	or	a1,a3,a6
a0003466:	c991                	beqz	a1,a000347a <__subdf3+0x310>
a0003468:	004005b7          	lui	a1,0x400
a000346c:	8df5                	and	a1,a1,a3
a000346e:	e591                	bnez	a1,a000347a <__subdf3+0x310>
a0003470:	4441                	li	s0,16
a0003472:	a021                	j	a000347a <__subdf3+0x310>
a0003474:	4401                	li	s0,0
a0003476:	fea586e3          	beq	a1,a0,a0003462 <__subdf3+0x2f8>
a000347a:	ea09                	bnez	a2,a000348c <__subdf3+0x322>
a000347c:	8736                	mv	a4,a3
a000347e:	87c2                	mv	a5,a6
a0003480:	4581                	li	a1,0
a0003482:	7ff00613          	li	a2,2047
a0003486:	b76d                	j	a0003430 <__subdf3+0x2c6>
a0003488:	4401                	li	s0,0
a000348a:	bfe1                	j	a0003462 <__subdf3+0x2f8>
a000348c:	0106e6b3          	or	a3,a3,a6
a0003490:	dae5                	beqz	a3,a0003480 <__subdf3+0x316>
a0003492:	4481                	li	s1,0
a0003494:	00400737          	lui	a4,0x400
a0003498:	4781                	li	a5,0
a000349a:	7ff00613          	li	a2,2047
a000349e:	008006b7          	lui	a3,0x800
a00034a2:	8ef9                	and	a3,a3,a4
a00034a4:	ca91                	beqz	a3,a00034b8 <__subdf3+0x34e>
a00034a6:	0605                	addi	a2,a2,1
a00034a8:	7ff00693          	li	a3,2047
a00034ac:	52d60e63          	beq	a2,a3,a00039e8 <__subdf3+0x87e>
a00034b0:	ff8006b7          	lui	a3,0xff800
a00034b4:	16fd                	addi	a3,a3,-1
a00034b6:	8f75                	and	a4,a4,a3
a00034b8:	0037d513          	srli	a0,a5,0x3
a00034bc:	7ff00693          	li	a3,2047
a00034c0:	01d71793          	slli	a5,a4,0x1d
a00034c4:	8fc9                	or	a5,a5,a0
a00034c6:	830d                	srli	a4,a4,0x3
a00034c8:	00d61963          	bne	a2,a3,a00034da <__subdf3+0x370>
a00034cc:	8fd9                	or	a5,a5,a4
a00034ce:	4701                	li	a4,0
a00034d0:	c789                	beqz	a5,a00034da <__subdf3+0x370>
a00034d2:	00080737          	lui	a4,0x80
a00034d6:	4781                	li	a5,0
a00034d8:	4481                	li	s1,0
a00034da:	7ff006b7          	lui	a3,0x7ff00
a00034de:	0652                	slli	a2,a2,0x14
a00034e0:	0732                	slli	a4,a4,0xc
a00034e2:	8e75                	and	a2,a2,a3
a00034e4:	8331                	srli	a4,a4,0xc
a00034e6:	8f51                	or	a4,a4,a2
a00034e8:	04fe                	slli	s1,s1,0x1f
a00034ea:	009766b3          	or	a3,a4,s1
a00034ee:	853e                	mv	a0,a5
a00034f0:	85b6                	mv	a1,a3
a00034f2:	c019                	beqz	s0,a00034f8 <__subdf3+0x38e>
a00034f4:	00142073          	csrs	fflags,s0
a00034f8:	40f2                	lw	ra,28(sp)
a00034fa:	4462                	lw	s0,24(sp)
a00034fc:	44d2                	lw	s1,20(sp)
a00034fe:	4942                	lw	s2,16(sp)
a0003500:	49b2                	lw	s3,12(sp)
a0003502:	4a22                	lw	s4,8(sp)
a0003504:	6105                	addi	sp,sp,32
a0003506:	8082                	ret
a0003508:	7ff00593          	li	a1,2047
a000350c:	02b60163          	beq	a2,a1,a000352e <__subdf3+0x3c4>
a0003510:	983e                	add	a6,a6,a5
a0003512:	00f837b3          	sltu	a5,a6,a5
a0003516:	9736                	add	a4,a4,a3
a0003518:	973e                	add	a4,a4,a5
a000351a:	01f71793          	slli	a5,a4,0x1f
a000351e:	00185813          	srli	a6,a6,0x1
a0003522:	0107e7b3          	or	a5,a5,a6
a0003526:	8305                	srli	a4,a4,0x1
a0003528:	4581                	li	a1,0
a000352a:	4401                	li	s0,0
a000352c:	b711                	j	a0003430 <__subdf3+0x2c6>
a000352e:	00098663          	beqz	s3,a000353a <__subdf3+0x3d0>
a0003532:	478d                	li	a5,3
a0003534:	00f99663          	bne	s3,a5,a0003540 <__subdf3+0x3d6>
a0003538:	e881                	bnez	s1,a0003548 <__subdf3+0x3de>
a000353a:	7ff00613          	li	a2,2047
a000353e:	a881                	j	a000358e <__subdf3+0x424>
a0003540:	4789                	li	a5,2
a0003542:	00f99363          	bne	s3,a5,a0003548 <__subdf3+0x3de>
a0003546:	f8f5                	bnez	s1,a000353a <__subdf3+0x3d0>
a0003548:	4581                	li	a1,0
a000354a:	577d                	li	a4,-1
a000354c:	57fd                	li	a5,-1
a000354e:	7fe00613          	li	a2,2046
a0003552:	4415                	li	s0,5
a0003554:	4689                	li	a3,2
a0003556:	00146413          	ori	s0,s0,1
a000355a:	48d98363          	beq	s3,a3,a00039e0 <__subdf3+0x876>
a000355e:	468d                	li	a3,3
a0003560:	46d98c63          	beq	s3,a3,a00039d8 <__subdf3+0x86e>
a0003564:	46099f63          	bnez	s3,a00039e2 <__subdf3+0x878>
a0003568:	00f7f693          	andi	a3,a5,15
a000356c:	4511                	li	a0,4
a000356e:	46a68a63          	beq	a3,a0,a00039e2 <__subdf3+0x878>
a0003572:	00478693          	addi	a3,a5,4 # ff800004 <__psram_limit+0x57400004>
a0003576:	00f6b7b3          	sltu	a5,a3,a5
a000357a:	973e                	add	a4,a4,a5
a000357c:	87b6                	mv	a5,a3
a000357e:	a195                	j	a00039e2 <__subdf3+0x878>
a0003580:	00098763          	beqz	s3,a000358e <__subdf3+0x424>
a0003584:	478d                	li	a5,3
a0003586:	00f99863          	bne	s3,a5,a0003596 <__subdf3+0x42c>
a000358a:	3e049c63          	bnez	s1,a0003982 <__subdf3+0x818>
a000358e:	4701                	li	a4,0
a0003590:	4781                	li	a5,0
a0003592:	4415                	li	s0,5
a0003594:	b729                	j	a000349e <__subdf3+0x334>
a0003596:	4789                	li	a5,2
a0003598:	3ef99563          	bne	s3,a5,a0003982 <__subdf3+0x818>
a000359c:	f8ed                	bnez	s1,a000358e <__subdf3+0x424>
a000359e:	b76d                	j	a0003548 <__subdf3+0x3de>
a00035a0:	0cc05763          	blez	a2,a000366e <__subdf3+0x504>
a00035a4:	e1c9                	bnez	a1,a0003626 <__subdf3+0x4bc>
a00035a6:	0106e533          	or	a0,a3,a6
a00035aa:	c2050de3          	beqz	a0,a00031e4 <__subdf3+0x7a>
a00035ae:	fff60513          	addi	a0,a2,-1
a00035b2:	e911                	bnez	a0,a00035c6 <__subdf3+0x45c>
a00035b4:	41078833          	sub	a6,a5,a6
a00035b8:	40d706b3          	sub	a3,a4,a3
a00035bc:	0107b7b3          	sltu	a5,a5,a6
a00035c0:	8e9d                	sub	a3,a3,a5
a00035c2:	4605                	li	a2,1
a00035c4:	a0a9                	j	a000360e <__subdf3+0x4a4>
a00035c6:	7ff00893          	li	a7,2047
a00035ca:	c5160be3          	beq	a2,a7,a0003220 <__subdf3+0xb6>
a00035ce:	03800613          	li	a2,56
a00035d2:	08a64963          	blt	a2,a0,a0003664 <__subdf3+0x4fa>
a00035d6:	467d                	li	a2,31
a00035d8:	06a64063          	blt	a2,a0,a0003638 <__subdf3+0x4ce>
a00035dc:	02000613          	li	a2,32
a00035e0:	8e09                	sub	a2,a2,a0
a00035e2:	00c695b3          	sll	a1,a3,a2
a00035e6:	00a858b3          	srl	a7,a6,a0
a00035ea:	00c81833          	sll	a6,a6,a2
a00035ee:	0115e5b3          	or	a1,a1,a7
a00035f2:	01003833          	snez	a6,a6
a00035f6:	0105e833          	or	a6,a1,a6
a00035fa:	00a6d6b3          	srl	a3,a3,a0
a00035fe:	41078833          	sub	a6,a5,a6
a0003602:	40d706b3          	sub	a3,a4,a3
a0003606:	0107b7b3          	sltu	a5,a5,a6
a000360a:	8e9d                	sub	a3,a3,a5
a000360c:	8622                	mv	a2,s0
a000360e:	00800937          	lui	s2,0x800
a0003612:	0126f7b3          	and	a5,a3,s2
a0003616:	ce078ce3          	beqz	a5,a000330e <__subdf3+0x1a4>
a000361a:	197d                	addi	s2,s2,-1
a000361c:	0126f933          	and	s2,a3,s2
a0003620:	8a42                	mv	s4,a6
a0003622:	8432                	mv	s0,a2
a0003624:	a4b5                	j	a0003890 <__subdf3+0x726>
a0003626:	7ff00593          	li	a1,2047
a000362a:	c0b406e3          	beq	s0,a1,a0003236 <__subdf3+0xcc>
a000362e:	008005b7          	lui	a1,0x800
a0003632:	8ecd                	or	a3,a3,a1
a0003634:	8532                	mv	a0,a2
a0003636:	bf61                	j	a00035ce <__subdf3+0x464>
a0003638:	fe050593          	addi	a1,a0,-32 # 7fffe0 <remain_wifi_ram+0x7dffe0>
a000363c:	02000893          	li	a7,32
a0003640:	00b6d5b3          	srl	a1,a3,a1
a0003644:	4601                	li	a2,0
a0003646:	01150763          	beq	a0,a7,a0003654 <__subdf3+0x4ea>
a000364a:	04000613          	li	a2,64
a000364e:	8e09                	sub	a2,a2,a0
a0003650:	00c69633          	sll	a2,a3,a2
a0003654:	01066833          	or	a6,a2,a6
a0003658:	01003833          	snez	a6,a6
a000365c:	0105e833          	or	a6,a1,a6
a0003660:	4681                	li	a3,0
a0003662:	bf71                	j	a00035fe <__subdf3+0x494>
a0003664:	0106e833          	or	a6,a3,a6
a0003668:	01003833          	snez	a6,a6
a000366c:	bfd5                	j	a0003660 <__subdf3+0x4f6>
a000366e:	ce6d                	beqz	a2,a0003768 <__subdf3+0x5fe>
a0003670:	40858633          	sub	a2,a1,s0
a0003674:	e439                	bnez	s0,a00036c2 <__subdf3+0x558>
a0003676:	00f76533          	or	a0,a4,a5
a000367a:	e509                	bnez	a0,a0003684 <__subdf3+0x51a>
a000367c:	7ff00793          	li	a5,2047
a0003680:	849a                	mv	s1,t1
a0003682:	b161                	j	a000330a <__subdf3+0x1a0>
a0003684:	fff60893          	addi	a7,a2,-1
a0003688:	00089c63          	bnez	a7,a00036a0 <__subdf3+0x536>
a000368c:	40f807b3          	sub	a5,a6,a5
a0003690:	00f83833          	sltu	a6,a6,a5
a0003694:	8e99                	sub	a3,a3,a4
a0003696:	410686b3          	sub	a3,a3,a6
a000369a:	849a                	mv	s1,t1
a000369c:	883e                	mv	a6,a5
a000369e:	b715                	j	a00035c2 <__subdf3+0x458>
a00036a0:	7ff00513          	li	a0,2047
a00036a4:	04a61563          	bne	a2,a0,a00036ee <__subdf3+0x584>
a00036a8:	0106e7b3          	or	a5,a3,a6
a00036ac:	2e078a63          	beqz	a5,a00039a0 <__subdf3+0x836>
a00036b0:	004007b7          	lui	a5,0x400
a00036b4:	8ff5                	and	a5,a5,a3
a00036b6:	8736                	mv	a4,a3
a00036b8:	2e079763          	bnez	a5,a00039a6 <__subdf3+0x83c>
a00036bc:	87c2                	mv	a5,a6
a00036be:	849a                	mv	s1,t1
a00036c0:	b94d                	j	a0003372 <__subdf3+0x208>
a00036c2:	7ff00513          	li	a0,2047
a00036c6:	02a59063          	bne	a1,a0,a00036e6 <__subdf3+0x57c>
a00036ca:	0106e7b3          	or	a5,a3,a6
a00036ce:	2c078f63          	beqz	a5,a00039ac <__subdf3+0x842>
a00036d2:	004007b7          	lui	a5,0x400
a00036d6:	8ff5                	and	a5,a5,a3
a00036d8:	8736                	mv	a4,a3
a00036da:	2c079e63          	bnez	a5,a00039b6 <__subdf3+0x84c>
a00036de:	87c2                	mv	a5,a6
a00036e0:	7ff00613          	li	a2,2047
a00036e4:	bfe9                	j	a00036be <__subdf3+0x554>
a00036e6:	00800537          	lui	a0,0x800
a00036ea:	8f49                	or	a4,a4,a0
a00036ec:	88b2                	mv	a7,a2
a00036ee:	03800613          	li	a2,56
a00036f2:	07164763          	blt	a2,a7,a0003760 <__subdf3+0x5f6>
a00036f6:	467d                	li	a2,31
a00036f8:	03164f63          	blt	a2,a7,a0003736 <__subdf3+0x5cc>
a00036fc:	02000513          	li	a0,32
a0003700:	41150533          	sub	a0,a0,a7
a0003704:	00a71633          	sll	a2,a4,a0
a0003708:	0117de33          	srl	t3,a5,a7
a000370c:	00a797b3          	sll	a5,a5,a0
a0003710:	01c66633          	or	a2,a2,t3
a0003714:	00f037b3          	snez	a5,a5
a0003718:	8fd1                	or	a5,a5,a2
a000371a:	01175733          	srl	a4,a4,a7
a000371e:	40f807b3          	sub	a5,a6,a5
a0003722:	40e68733          	sub	a4,a3,a4
a0003726:	00f836b3          	sltu	a3,a6,a5
a000372a:	40d706b3          	sub	a3,a4,a3
a000372e:	883e                	mv	a6,a5
a0003730:	862e                	mv	a2,a1
a0003732:	849a                	mv	s1,t1
a0003734:	bde9                	j	a000360e <__subdf3+0x4a4>
a0003736:	fe088613          	addi	a2,a7,-32
a000373a:	02000e13          	li	t3,32
a000373e:	00c75633          	srl	a2,a4,a2
a0003742:	4501                	li	a0,0
a0003744:	01c88863          	beq	a7,t3,a0003754 <__subdf3+0x5ea>
a0003748:	04000513          	li	a0,64
a000374c:	41150533          	sub	a0,a0,a7
a0003750:	00a71533          	sll	a0,a4,a0
a0003754:	8fc9                	or	a5,a5,a0
a0003756:	00f037b3          	snez	a5,a5
a000375a:	8fd1                	or	a5,a5,a2
a000375c:	4701                	li	a4,0
a000375e:	b7c1                	j	a000371e <__subdf3+0x5b4>
a0003760:	8fd9                	or	a5,a5,a4
a0003762:	00f037b3          	snez	a5,a5
a0003766:	bfdd                	j	a000375c <__subdf3+0x5f2>
a0003768:	00140613          	addi	a2,s0,1 # 400001 <remain_wifi_ram+0x3e0001>
a000376c:	7fe67613          	andi	a2,a2,2046
a0003770:	ea7d                	bnez	a2,a0003866 <__subdf3+0x6fc>
a0003772:	0106e633          	or	a2,a3,a6
a0003776:	00f76533          	or	a0,a4,a5
a000377a:	e055                	bnez	s0,a000381e <__subdf3+0x6b4>
a000377c:	e12d                	bnez	a0,a00037de <__subdf3+0x674>
a000377e:	1c061063          	bnez	a2,a000393e <__subdf3+0x7d4>
a0003782:	ffe98493          	addi	s1,s3,-2
a0003786:	0014b493          	seqz	s1,s1
a000378a:	4701                	li	a4,0
a000378c:	4781                	li	a5,0
a000378e:	00e7e6b3          	or	a3,a5,a4
a0003792:	22068f63          	beqz	a3,a00039d0 <__subdf3+0x866>
a0003796:	01f7d693          	srli	a3,a5,0x1f
a000379a:	00171593          	slli	a1,a4,0x1
a000379e:	95b6                	add	a1,a1,a3
a00037a0:	00179693          	slli	a3,a5,0x1
a00037a4:	0076f613          	andi	a2,a3,7
a00037a8:	4401                	li	s0,0
a00037aa:	c605                	beqz	a2,a00037d2 <__subdf3+0x668>
a00037ac:	4609                	li	a2,2
a00037ae:	1ac98863          	beq	s3,a2,a000395e <__subdf3+0x7f4>
a00037b2:	460d                	li	a2,3
a00037b4:	18c98b63          	beq	s3,a2,a000394a <__subdf3+0x7e0>
a00037b8:	4405                	li	s0,1
a00037ba:	00099c63          	bnez	s3,a00037d2 <__subdf3+0x668>
a00037be:	00f6f613          	andi	a2,a3,15
a00037c2:	4511                	li	a0,4
a00037c4:	00a60763          	beq	a2,a0,a00037d2 <__subdf3+0x668>
a00037c8:	ffc6b693          	sltiu	a3,a3,-4
a00037cc:	0016c693          	xori	a3,a3,1
a00037d0:	95b6                	add	a1,a1,a3
a00037d2:	81e1                	srli	a1,a1,0x18
a00037d4:	0015c593          	xori	a1,a1,1
a00037d8:	8985                	andi	a1,a1,1
a00037da:	4601                	li	a2,0
a00037dc:	b991                	j	a0003430 <__subdf3+0x2c6>
a00037de:	da45                	beqz	a2,a000378e <__subdf3+0x624>
a00037e0:	410785b3          	sub	a1,a5,a6
a00037e4:	00b7b533          	sltu	a0,a5,a1
a00037e8:	40d70633          	sub	a2,a4,a3
a00037ec:	8e09                	sub	a2,a2,a0
a00037ee:	00800537          	lui	a0,0x800
a00037f2:	8d71                	and	a0,a0,a2
a00037f4:	c919                	beqz	a0,a000380a <__subdf3+0x6a0>
a00037f6:	40f807b3          	sub	a5,a6,a5
a00037fa:	40e68733          	sub	a4,a3,a4
a00037fe:	00f83833          	sltu	a6,a6,a5
a0003802:	41070733          	sub	a4,a4,a6
a0003806:	849a                	mv	s1,t1
a0003808:	b759                	j	a000378e <__subdf3+0x624>
a000380a:	00c5e7b3          	or	a5,a1,a2
a000380e:	12079b63          	bnez	a5,a0003944 <__subdf3+0x7da>
a0003812:	ffe98493          	addi	s1,s3,-2
a0003816:	0014b493          	seqz	s1,s1
a000381a:	4701                	li	a4,0
a000381c:	bf8d                	j	a000378e <__subdf3+0x624>
a000381e:	7ff00893          	li	a7,2047
a0003822:	03141363          	bne	s0,a7,a0003848 <__subdf3+0x6de>
a0003826:	1e050463          	beqz	a0,a0003a0e <__subdf3+0x8a4>
a000382a:	00400437          	lui	s0,0x400
a000382e:	8c79                	and	s0,s0,a4
a0003830:	00143413          	seqz	s0,s0
a0003834:	0412                	slli	s0,s0,0x4
a0003836:	03159563          	bne	a1,a7,a0003860 <__subdf3+0x6f6>
a000383a:	ca11                	beqz	a2,a000384e <__subdf3+0x6e4>
a000383c:	004005b7          	lui	a1,0x400
a0003840:	8df5                	and	a1,a1,a3
a0003842:	e591                	bnez	a1,a000384e <__subdf3+0x6e4>
a0003844:	4441                	li	s0,16
a0003846:	a021                	j	a000384e <__subdf3+0x6e4>
a0003848:	4401                	li	s0,0
a000384a:	ff1588e3          	beq	a1,a7,a000383a <__subdf3+0x6d0>
a000384e:	e909                	bnez	a0,a0003860 <__subdf3+0x6f6>
a0003850:	16060863          	beqz	a2,a00039c0 <__subdf3+0x856>
a0003854:	8736                	mv	a4,a3
a0003856:	87c2                	mv	a5,a6
a0003858:	849a                	mv	s1,t1
a000385a:	b11d                	j	a0003480 <__subdf3+0x316>
a000385c:	4401                	li	s0,0
a000385e:	bff1                	j	a000383a <__subdf3+0x6d0>
a0003860:	c20600e3          	beqz	a2,a0003480 <__subdf3+0x316>
a0003864:	b13d                	j	a0003492 <__subdf3+0x328>
a0003866:	41078a33          	sub	s4,a5,a6
a000386a:	0147b633          	sltu	a2,a5,s4
a000386e:	40d70933          	sub	s2,a4,a3
a0003872:	40c90933          	sub	s2,s2,a2
a0003876:	00800637          	lui	a2,0x800
a000387a:	00c97633          	and	a2,s2,a2
a000387e:	c625                	beqz	a2,a00038e6 <__subdf3+0x77c>
a0003880:	40f80a33          	sub	s4,a6,a5
a0003884:	8e99                	sub	a3,a3,a4
a0003886:	01483833          	sltu	a6,a6,s4
a000388a:	41068933          	sub	s2,a3,a6
a000388e:	849a                	mv	s1,t1
a0003890:	04090f63          	beqz	s2,a00038ee <__subdf3+0x784>
a0003894:	854a                	mv	a0,s2
a0003896:	2b8d                	jal	a0003e08 <__clzsi2>
a0003898:	ff850613          	addi	a2,a0,-8 # 7ffff8 <remain_wifi_ram+0x7dfff8>
a000389c:	47fd                	li	a5,31
a000389e:	04c7cd63          	blt	a5,a2,a00038f8 <__subdf3+0x78e>
a00038a2:	02000693          	li	a3,32
a00038a6:	8e91                	sub	a3,a3,a2
a00038a8:	00c91733          	sll	a4,s2,a2
a00038ac:	00da56b3          	srl	a3,s4,a3
a00038b0:	8ed9                	or	a3,a3,a4
a00038b2:	00ca1833          	sll	a6,s4,a2
a00038b6:	06864a63          	blt	a2,s0,a000392a <__subdf3+0x7c0>
a00038ba:	8e01                	sub	a2,a2,s0
a00038bc:	00160713          	addi	a4,a2,1 # 800001 <remain_wifi_ram+0x7e0001>
a00038c0:	47fd                	li	a5,31
a00038c2:	04e7c163          	blt	a5,a4,a0003904 <__subdf3+0x79a>
a00038c6:	02000613          	li	a2,32
a00038ca:	8e19                	sub	a2,a2,a4
a00038cc:	00c697b3          	sll	a5,a3,a2
a00038d0:	00e85533          	srl	a0,a6,a4
a00038d4:	00c81633          	sll	a2,a6,a2
a00038d8:	8fc9                	or	a5,a5,a0
a00038da:	00c03633          	snez	a2,a2
a00038de:	8fd1                	or	a5,a5,a2
a00038e0:	00e6d733          	srl	a4,a3,a4
a00038e4:	b56d                	j	a000378e <__subdf3+0x624>
a00038e6:	012a67b3          	or	a5,s4,s2
a00038ea:	f3dd                	bnez	a5,a0003890 <__subdf3+0x726>
a00038ec:	b71d                	j	a0003812 <__subdf3+0x6a8>
a00038ee:	8552                	mv	a0,s4
a00038f0:	2b21                	jal	a0003e08 <__clzsi2>
a00038f2:	02050513          	addi	a0,a0,32
a00038f6:	b74d                	j	a0003898 <__subdf3+0x72e>
a00038f8:	fd850693          	addi	a3,a0,-40
a00038fc:	00da16b3          	sll	a3,s4,a3
a0003900:	4801                	li	a6,0
a0003902:	bf55                	j	a00038b6 <__subdf3+0x74c>
a0003904:	1605                	addi	a2,a2,-31
a0003906:	02000593          	li	a1,32
a000390a:	00c6d633          	srl	a2,a3,a2
a000390e:	4781                	li	a5,0
a0003910:	00b70763          	beq	a4,a1,a000391e <__subdf3+0x7b4>
a0003914:	04000793          	li	a5,64
a0003918:	8f99                	sub	a5,a5,a4
a000391a:	00f697b3          	sll	a5,a3,a5
a000391e:	00f867b3          	or	a5,a6,a5
a0003922:	00f037b3          	snez	a5,a5
a0003926:	8fd1                	or	a5,a5,a2
a0003928:	bdcd                	j	a000381a <__subdf3+0x6b0>
a000392a:	ff8007b7          	lui	a5,0xff800
a000392e:	17fd                	addi	a5,a5,-1
a0003930:	40c40633          	sub	a2,s0,a2
a0003934:	8efd                	and	a3,a3,a5
a0003936:	bae1                	j	a000330e <__subdf3+0x1a4>
a0003938:	8736                	mv	a4,a3
a000393a:	87c2                	mv	a5,a6
a000393c:	bd89                	j	a000378e <__subdf3+0x624>
a000393e:	8736                	mv	a4,a3
a0003940:	87c2                	mv	a5,a6
a0003942:	b5d1                	j	a0003806 <__subdf3+0x69c>
a0003944:	8732                	mv	a4,a2
a0003946:	87ae                	mv	a5,a1
a0003948:	b599                	j	a000378e <__subdf3+0x624>
a000394a:	8426                	mv	s0,s1
a000394c:	e80493e3          	bnez	s1,a00037d2 <__subdf3+0x668>
a0003950:	ff86b693          	sltiu	a3,a3,-8
a0003954:	0016c693          	xori	a3,a3,1
a0003958:	95b6                	add	a1,a1,a3
a000395a:	4405                	li	s0,1
a000395c:	bd9d                	j	a00037d2 <__subdf3+0x668>
a000395e:	4405                	li	s0,1
a0003960:	e60489e3          	beqz	s1,a00037d2 <__subdf3+0x668>
a0003964:	ff86b693          	sltiu	a3,a3,-8
a0003968:	0016c693          	xori	a3,a3,1
a000396c:	95b6                	add	a1,a1,a3
a000396e:	8426                	mv	s0,s1
a0003970:	b58d                	j	a00037d2 <__subdf3+0x668>
a0003972:	4701                	li	a4,0
a0003974:	7ff00613          	li	a2,2047
a0003978:	b84d                	j	a000322a <__subdf3+0xc0>
a000397a:	87c2                	mv	a5,a6
a000397c:	7ff00613          	li	a2,2047
a0003980:	b665                	j	a0003528 <__subdf3+0x3be>
a0003982:	577d                	li	a4,-1
a0003984:	57fd                	li	a5,-1
a0003986:	7fe00613          	li	a2,2046
a000398a:	4581                	li	a1,0
a000398c:	b6d9                	j	a0003552 <__subdf3+0x3e8>
a000398e:	4701                	li	a4,0
a0003990:	4781                	li	a5,0
a0003992:	b631                	j	a000349e <__subdf3+0x334>
a0003994:	4701                	li	a4,0
a0003996:	4781                	li	a5,0
a0003998:	bff1                	j	a0003974 <__subdf3+0x80a>
a000399a:	87c2                	mv	a5,a6
a000399c:	4581                	li	a1,0
a000399e:	bc49                	j	a0003430 <__subdf3+0x2c6>
a00039a0:	4701                	li	a4,0
a00039a2:	849a                	mv	s1,t1
a00039a4:	bced                	j	a000349e <__subdf3+0x334>
a00039a6:	87c2                	mv	a5,a6
a00039a8:	849a                	mv	s1,t1
a00039aa:	bfcd                	j	a000399c <__subdf3+0x832>
a00039ac:	4701                	li	a4,0
a00039ae:	7ff00613          	li	a2,2047
a00039b2:	849a                	mv	s1,t1
a00039b4:	b89d                	j	a000322a <__subdf3+0xc0>
a00039b6:	87c2                	mv	a5,a6
a00039b8:	7ff00613          	li	a2,2047
a00039bc:	849a                	mv	s1,t1
a00039be:	b6ad                	j	a0003528 <__subdf3+0x3be>
a00039c0:	4781                	li	a5,0
a00039c2:	4481                	li	s1,0
a00039c4:	00400737          	lui	a4,0x400
a00039c8:	7ff00613          	li	a2,2047
a00039cc:	4441                	li	s0,16
a00039ce:	bcc1                	j	a000349e <__subdf3+0x334>
a00039d0:	4701                	li	a4,0
a00039d2:	4781                	li	a5,0
a00039d4:	4601                	li	a2,0
a00039d6:	b891                	j	a000322a <__subdf3+0xc0>
a00039d8:	e489                	bnez	s1,a00039e2 <__subdf3+0x878>
a00039da:	00878693          	addi	a3,a5,8 # ff800008 <__psram_limit+0x57400008>
a00039de:	be61                	j	a0003576 <__subdf3+0x40c>
a00039e0:	fced                	bnez	s1,a00039da <__subdf3+0x870>
a00039e2:	a4059fe3          	bnez	a1,a0003440 <__subdf3+0x2d6>
a00039e6:	bc65                	j	a000349e <__subdf3+0x334>
a00039e8:	4781                	li	a5,0
a00039ea:	00098e63          	beqz	s3,a0003a06 <__subdf3+0x89c>
a00039ee:	470d                	li	a4,3
a00039f0:	00e99763          	bne	s3,a4,a00039fe <__subdf3+0x894>
a00039f4:	c889                	beqz	s1,a0003a06 <__subdf3+0x89c>
a00039f6:	57fd                	li	a5,-1
a00039f8:	7fe00613          	li	a2,2046
a00039fc:	a029                	j	a0003a06 <__subdf3+0x89c>
a00039fe:	4709                	li	a4,2
a0003a00:	fee99be3          	bne	s3,a4,a00039f6 <__subdf3+0x88c>
a0003a04:	d8ed                	beqz	s1,a00039f6 <__subdf3+0x88c>
a0003a06:	00546413          	ori	s0,s0,5
a0003a0a:	873e                	mv	a4,a5
a0003a0c:	b475                	j	a00034b8 <__subdf3+0x34e>
a0003a0e:	e48587e3          	beq	a1,s0,a000385c <__subdf3+0x6f2>
a0003a12:	4401                	li	s0,0
a0003a14:	bd35                	j	a0003850 <__subdf3+0x6e6>
a0003a16:	a68589e3          	beq	a1,s0,a0003488 <__subdf3+0x31e>
a0003a1a:	4401                	li	s0,0
a0003a1c:	b485                	j	a000347c <__subdf3+0x312>

a0003a1e <__fixdfsi>:
a0003a1e:	882a                	mv	a6,a0
a0003a20:	002027f3          	frrm	a5
a0003a24:	001007b7          	lui	a5,0x100
a0003a28:	0145d693          	srli	a3,a1,0x14
a0003a2c:	fff78613          	addi	a2,a5,-1 # fffff <remain_wifi_ram+0xdffff>
a0003a30:	7ff6f693          	andi	a3,a3,2047
a0003a34:	3fe00713          	li	a4,1022
a0003a38:	8e6d                	and	a2,a2,a1
a0003a3a:	81fd                	srli	a1,a1,0x1f
a0003a3c:	00d74663          	blt	a4,a3,a0003a48 <__fixdfsi+0x2a>
a0003a40:	ead1                	bnez	a3,a0003ad4 <__fixdfsi+0xb6>
a0003a42:	8d51                	or	a0,a0,a2
a0003a44:	e941                	bnez	a0,a0003ad4 <__fixdfsi+0xb6>
a0003a46:	8082                	ret
a0003a48:	41d00713          	li	a4,1053
a0003a4c:	02d75863          	bge	a4,a3,a0003a7c <__fixdfsi+0x5e>
a0003a50:	80000737          	lui	a4,0x80000
a0003a54:	fff74713          	not	a4,a4
a0003a58:	00e58533          	add	a0,a1,a4
a0003a5c:	cdbd                	beqz	a1,a0003ada <__fixdfsi+0xbc>
a0003a5e:	41e00793          	li	a5,1054
a0003a62:	4741                	li	a4,16
a0003a64:	04f69263          	bne	a3,a5,a0003aa8 <__fixdfsi+0x8a>
a0003a68:	00b61793          	slli	a5,a2,0xb
a0003a6c:	01585613          	srli	a2,a6,0x15
a0003a70:	8fd1                	or	a5,a5,a2
a0003a72:	eb9d                	bnez	a5,a0003aa8 <__fixdfsi+0x8a>
a0003a74:	00b81713          	slli	a4,a6,0xb
a0003a78:	e33d                	bnez	a4,a0003ade <__fixdfsi+0xc0>
a0003a7a:	8082                	ret
a0003a7c:	43300513          	li	a0,1075
a0003a80:	8d15                	sub	a0,a0,a3
a0003a82:	477d                	li	a4,31
a0003a84:	8fd1                	or	a5,a5,a2
a0003a86:	02a74463          	blt	a4,a0,a0003aae <__fixdfsi+0x90>
a0003a8a:	bed68613          	addi	a2,a3,-1043 # 7feffbed <__HeapLimit+0x1cecfbed>
a0003a8e:	00c816b3          	sll	a3,a6,a2
a0003a92:	00c797b3          	sll	a5,a5,a2
a0003a96:	00a85533          	srl	a0,a6,a0
a0003a9a:	00d03733          	snez	a4,a3
a0003a9e:	8d5d                	or	a0,a0,a5
a0003aa0:	c199                	beqz	a1,a0003aa6 <__fixdfsi+0x88>
a0003aa2:	40a00533          	neg	a0,a0
a0003aa6:	c319                	beqz	a4,a0003aac <__fixdfsi+0x8e>
a0003aa8:	00172073          	csrs	fflags,a4
a0003aac:	8082                	ret
a0003aae:	02000613          	li	a2,32
a0003ab2:	4701                	li	a4,0
a0003ab4:	00c50663          	beq	a0,a2,a0003ac0 <__fixdfsi+0xa2>
a0003ab8:	c0d68713          	addi	a4,a3,-1011
a0003abc:	00e79733          	sll	a4,a5,a4
a0003ac0:	41300513          	li	a0,1043
a0003ac4:	01076733          	or	a4,a4,a6
a0003ac8:	8d15                	sub	a0,a0,a3
a0003aca:	00e03733          	snez	a4,a4
a0003ace:	00a7d533          	srl	a0,a5,a0
a0003ad2:	b7f9                	j	a0003aa0 <__fixdfsi+0x82>
a0003ad4:	4501                	li	a0,0
a0003ad6:	4705                	li	a4,1
a0003ad8:	bfc1                	j	a0003aa8 <__fixdfsi+0x8a>
a0003ada:	4741                	li	a4,16
a0003adc:	b7f1                	j	a0003aa8 <__fixdfsi+0x8a>
a0003ade:	872e                	mv	a4,a1
a0003ae0:	b7e1                	j	a0003aa8 <__fixdfsi+0x8a>

a0003ae2 <__floatsidf>:
a0003ae2:	1141                	addi	sp,sp,-16
a0003ae4:	c606                	sw	ra,12(sp)
a0003ae6:	c422                	sw	s0,8(sp)
a0003ae8:	c226                	sw	s1,4(sp)
a0003aea:	cd21                	beqz	a0,a0003b42 <__floatsidf+0x60>
a0003aec:	41f55793          	srai	a5,a0,0x1f
a0003af0:	00a7c433          	xor	s0,a5,a0
a0003af4:	8c1d                	sub	s0,s0,a5
a0003af6:	01f55493          	srli	s1,a0,0x1f
a0003afa:	8522                	mv	a0,s0
a0003afc:	2631                	jal	a0003e08 <__clzsi2>
a0003afe:	41e00713          	li	a4,1054
a0003b02:	47a9                	li	a5,10
a0003b04:	8f09                	sub	a4,a4,a0
a0003b06:	02a7c863          	blt	a5,a0,a0003b36 <__floatsidf+0x54>
a0003b0a:	47ad                	li	a5,11
a0003b0c:	8f89                	sub	a5,a5,a0
a0003b0e:	0555                	addi	a0,a0,21
a0003b10:	00f457b3          	srl	a5,s0,a5
a0003b14:	00a41433          	sll	s0,s0,a0
a0003b18:	8526                	mv	a0,s1
a0003b1a:	07b2                	slli	a5,a5,0xc
a0003b1c:	0752                	slli	a4,a4,0x14
a0003b1e:	83b1                	srli	a5,a5,0xc
a0003b20:	057e                	slli	a0,a0,0x1f
a0003b22:	8fd9                	or	a5,a5,a4
a0003b24:	40b2                	lw	ra,12(sp)
a0003b26:	00a7e733          	or	a4,a5,a0
a0003b2a:	8522                	mv	a0,s0
a0003b2c:	4422                	lw	s0,8(sp)
a0003b2e:	4492                	lw	s1,4(sp)
a0003b30:	85ba                	mv	a1,a4
a0003b32:	0141                	addi	sp,sp,16
a0003b34:	8082                	ret
a0003b36:	1555                	addi	a0,a0,-11
a0003b38:	00a417b3          	sll	a5,s0,a0
a0003b3c:	8526                	mv	a0,s1
a0003b3e:	4401                	li	s0,0
a0003b40:	bfe9                	j	a0003b1a <__floatsidf+0x38>
a0003b42:	4701                	li	a4,0
a0003b44:	4781                	li	a5,0
a0003b46:	bfe5                	j	a0003b3e <__floatsidf+0x5c>

a0003b48 <__fixdfdi>:
a0003b48:	002027f3          	frrm	a5
a0003b4c:	00100737          	lui	a4,0x100
a0003b50:	0145d613          	srli	a2,a1,0x14
a0003b54:	fff70693          	addi	a3,a4,-1 # fffff <remain_wifi_ram+0xdffff>
a0003b58:	7ff67613          	andi	a2,a2,2047
a0003b5c:	3fe00793          	li	a5,1022
a0003b60:	8eed                	and	a3,a3,a1
a0003b62:	00c7ca63          	blt	a5,a2,a0003b76 <__fixdfdi+0x2e>
a0003b66:	ea79                	bnez	a2,a0003c3c <__fixdfdi+0xf4>
a0003b68:	00a6e733          	or	a4,a3,a0
a0003b6c:	4781                	li	a5,0
a0003b6e:	4581                	li	a1,0
a0003b70:	eb61                	bnez	a4,a0003c40 <__fixdfdi+0xf8>
a0003b72:	853e                	mv	a0,a5
a0003b74:	8082                	ret
a0003b76:	1141                	addi	sp,sp,-16
a0003b78:	c422                	sw	s0,8(sp)
a0003b7a:	c606                	sw	ra,12(sp)
a0003b7c:	43d00793          	li	a5,1085
a0003b80:	01f5d413          	srli	s0,a1,0x1f
a0003b84:	02c7dc63          	bge	a5,a2,a0003bbc <__fixdfdi+0x74>
a0003b88:	4785                	li	a5,1
a0003b8a:	8f81                	sub	a5,a5,s0
a0003b8c:	41f7d813          	srai	a6,a5,0x1f
a0003b90:	800005b7          	lui	a1,0x80000
a0003b94:	00f03733          	snez	a4,a5
a0003b98:	410585b3          	sub	a1,a1,a6
a0003b9c:	40f007b3          	neg	a5,a5
a0003ba0:	8d99                	sub	a1,a1,a4
a0003ba2:	c05d                	beqz	s0,a0003c48 <__fixdfdi+0x100>
a0003ba4:	43e00813          	li	a6,1086
a0003ba8:	4741                	li	a4,16
a0003baa:	07061363          	bne	a2,a6,a0003c10 <__fixdfdi+0xc8>
a0003bae:	8d55                	or	a0,a0,a3
a0003bb0:	e125                	bnez	a0,a0003c10 <__fixdfdi+0xc8>
a0003bb2:	40b2                	lw	ra,12(sp)
a0003bb4:	4422                	lw	s0,8(sp)
a0003bb6:	853e                	mv	a0,a5
a0003bb8:	0141                	addi	sp,sp,16
a0003bba:	8082                	ret
a0003bbc:	43200793          	li	a5,1074
a0003bc0:	00e6e5b3          	or	a1,a3,a4
a0003bc4:	00c7da63          	bge	a5,a2,a0003bd8 <__fixdfdi+0x90>
a0003bc8:	bcd60613          	addi	a2,a2,-1075
a0003bcc:	8defd0ef          	jal	ra,a0000caa <__ashldi3>
a0003bd0:	87aa                	mv	a5,a0
a0003bd2:	d065                	beqz	s0,a0003bb2 <__fixdfdi+0x6a>
a0003bd4:	4701                	li	a4,0
a0003bd6:	a02d                	j	a0003c00 <__fixdfdi+0xb8>
a0003bd8:	43300693          	li	a3,1075
a0003bdc:	8e91                	sub	a3,a3,a2
a0003bde:	47fd                	li	a5,31
a0003be0:	02d7cb63          	blt	a5,a3,a0003c16 <__fixdfdi+0xce>
a0003be4:	bed60613          	addi	a2,a2,-1043
a0003be8:	00c51733          	sll	a4,a0,a2
a0003bec:	00d557b3          	srl	a5,a0,a3
a0003bf0:	00c59633          	sll	a2,a1,a2
a0003bf4:	00e03733          	snez	a4,a4
a0003bf8:	8fd1                	or	a5,a5,a2
a0003bfa:	00d5d5b3          	srl	a1,a1,a3
a0003bfe:	c801                	beqz	s0,a0003c0e <__fixdfdi+0xc6>
a0003c00:	00f036b3          	snez	a3,a5
a0003c04:	40b005b3          	neg	a1,a1
a0003c08:	8d95                	sub	a1,a1,a3
a0003c0a:	40f007b3          	neg	a5,a5
a0003c0e:	d355                	beqz	a4,a0003bb2 <__fixdfdi+0x6a>
a0003c10:	00172073          	csrs	fflags,a4
a0003c14:	bf79                	j	a0003bb2 <__fixdfdi+0x6a>
a0003c16:	02000793          	li	a5,32
a0003c1a:	4701                	li	a4,0
a0003c1c:	00f68663          	beq	a3,a5,a0003c28 <__fixdfdi+0xe0>
a0003c20:	c0d60713          	addi	a4,a2,-1011
a0003c24:	00e59733          	sll	a4,a1,a4
a0003c28:	41300793          	li	a5,1043
a0003c2c:	8f49                	or	a4,a4,a0
a0003c2e:	8f91                	sub	a5,a5,a2
a0003c30:	00f5d7b3          	srl	a5,a1,a5
a0003c34:	00e03733          	snez	a4,a4
a0003c38:	4581                	li	a1,0
a0003c3a:	b7d1                	j	a0003bfe <__fixdfdi+0xb6>
a0003c3c:	4781                	li	a5,0
a0003c3e:	4581                	li	a1,0
a0003c40:	4705                	li	a4,1
a0003c42:	00172073          	csrs	fflags,a4
a0003c46:	b735                	j	a0003b72 <__fixdfdi+0x2a>
a0003c48:	4741                	li	a4,16
a0003c4a:	b7d9                	j	a0003c10 <__fixdfdi+0xc8>

a0003c4c <__floatdidf>:
a0003c4c:	7179                	addi	sp,sp,-48
a0003c4e:	d606                	sw	ra,44(sp)
a0003c50:	d422                	sw	s0,40(sp)
a0003c52:	d226                	sw	s1,36(sp)
a0003c54:	d04a                	sw	s2,32(sp)
a0003c56:	ce4e                	sw	s3,28(sp)
a0003c58:	cc52                	sw	s4,24(sp)
a0003c5a:	ca56                	sw	s5,20(sp)
a0003c5c:	c85a                	sw	s6,16(sp)
a0003c5e:	c65e                	sw	s7,12(sp)
a0003c60:	c462                	sw	s8,8(sp)
a0003c62:	00202a73          	frrm	s4
a0003c66:	00b567b3          	or	a5,a0,a1
a0003c6a:	18078963          	beqz	a5,a0003dfc <__floatdidf+0x1b0>
a0003c6e:	842a                	mv	s0,a0
a0003c70:	8bae                	mv	s7,a1
a0003c72:	89ae                	mv	s3,a1
a0003c74:	01f5d913          	srli	s2,a1,0x1f
a0003c78:	0005da63          	bgez	a1,a0003c8c <__floatdidf+0x40>
a0003c7c:	00a03733          	snez	a4,a0
a0003c80:	40b009b3          	neg	s3,a1
a0003c84:	40e989b3          	sub	s3,s3,a4
a0003c88:	40a00433          	neg	s0,a0
a0003c8c:	84ce                	mv	s1,s3
a0003c8e:	06098c63          	beqz	s3,a0003d06 <__floatdidf+0xba>
a0003c92:	854e                	mv	a0,s3
a0003c94:	2a95                	jal	a0003e08 <__clzsi2>
a0003c96:	8aaa                	mv	s5,a0
a0003c98:	43e00b13          	li	s6,1086
a0003c9c:	415b0b33          	sub	s6,s6,s5
a0003ca0:	43300793          	li	a5,1075
a0003ca4:	0767cc63          	blt	a5,s6,a0003d1c <__floatdidf+0xd0>
a0003ca8:	47ad                	li	a5,11
a0003caa:	4701                	li	a4,0
a0003cac:	0357d363          	bge	a5,s5,a0003cd2 <__floatdidf+0x86>
a0003cb0:	02a00793          	li	a5,42
a0003cb4:	0557ce63          	blt	a5,s5,a0003d10 <__floatdidf+0xc4>
a0003cb8:	02b00493          	li	s1,43
a0003cbc:	ff5a8693          	addi	a3,s5,-11
a0003cc0:	415484b3          	sub	s1,s1,s5
a0003cc4:	009454b3          	srl	s1,s0,s1
a0003cc8:	00d997b3          	sll	a5,s3,a3
a0003ccc:	8cdd                	or	s1,s1,a5
a0003cce:	00d41433          	sll	s0,s0,a3
a0003cd2:	00c49793          	slli	a5,s1,0xc
a0003cd6:	0b52                	slli	s6,s6,0x14
a0003cd8:	83b1                	srli	a5,a5,0xc
a0003cda:	00fb67b3          	or	a5,s6,a5
a0003cde:	097e                	slli	s2,s2,0x1f
a0003ce0:	0127e6b3          	or	a3,a5,s2
a0003ce4:	8522                	mv	a0,s0
a0003ce6:	85b6                	mv	a1,a3
a0003ce8:	c319                	beqz	a4,a0003cee <__floatdidf+0xa2>
a0003cea:	0010e073          	csrsi	fflags,1
a0003cee:	50b2                	lw	ra,44(sp)
a0003cf0:	5422                	lw	s0,40(sp)
a0003cf2:	5492                	lw	s1,36(sp)
a0003cf4:	5902                	lw	s2,32(sp)
a0003cf6:	49f2                	lw	s3,28(sp)
a0003cf8:	4a62                	lw	s4,24(sp)
a0003cfa:	4ad2                	lw	s5,20(sp)
a0003cfc:	4b42                	lw	s6,16(sp)
a0003cfe:	4bb2                	lw	s7,12(sp)
a0003d00:	4c22                	lw	s8,8(sp)
a0003d02:	6145                	addi	sp,sp,48
a0003d04:	8082                	ret
a0003d06:	8522                	mv	a0,s0
a0003d08:	2201                	jal	a0003e08 <__clzsi2>
a0003d0a:	02050a93          	addi	s5,a0,32
a0003d0e:	b769                	j	a0003c98 <__floatdidf+0x4c>
a0003d10:	fd5a8793          	addi	a5,s5,-43
a0003d14:	00f414b3          	sll	s1,s0,a5
a0003d18:	4401                	li	s0,0
a0003d1a:	bf65                	j	a0003cd2 <__floatdidf+0x86>
a0003d1c:	43600793          	li	a5,1078
a0003d20:	0367d863          	bge	a5,s6,a0003d50 <__floatdidf+0x104>
a0003d24:	4621                	li	a2,8
a0003d26:	41560633          	sub	a2,a2,s5
a0003d2a:	8522                	mv	a0,s0
a0003d2c:	85ce                	mv	a1,s3
a0003d2e:	f53fc0ef          	jal	ra,a0000c80 <__lshrdi3>
a0003d32:	8c2a                	mv	s8,a0
a0003d34:	84ae                	mv	s1,a1
a0003d36:	8522                	mv	a0,s0
a0003d38:	85ce                	mv	a1,s3
a0003d3a:	038a8613          	addi	a2,s5,56
a0003d3e:	f6dfc0ef          	jal	ra,a0000caa <__ashldi3>
a0003d42:	00b56433          	or	s0,a0,a1
a0003d46:	00803433          	snez	s0,s0
a0003d4a:	01846433          	or	s0,s0,s8
a0003d4e:	89a6                	mv	s3,s1
a0003d50:	47a1                	li	a5,8
a0003d52:	0357d463          	bge	a5,s5,a0003d7a <__floatdidf+0x12e>
a0003d56:	02700793          	li	a5,39
a0003d5a:	0557ce63          	blt	a5,s5,a0003db6 <__floatdidf+0x16a>
a0003d5e:	02800793          	li	a5,40
a0003d62:	ff8a8713          	addi	a4,s5,-8
a0003d66:	415787b3          	sub	a5,a5,s5
a0003d6a:	00f457b3          	srl	a5,s0,a5
a0003d6e:	00e999b3          	sll	s3,s3,a4
a0003d72:	0137e9b3          	or	s3,a5,s3
a0003d76:	00e41433          	sll	s0,s0,a4
a0003d7a:	ff8007b7          	lui	a5,0xff800
a0003d7e:	17fd                	addi	a5,a5,-1
a0003d80:	00747693          	andi	a3,s0,7
a0003d84:	00f9f7b3          	and	a5,s3,a5
a0003d88:	4701                	li	a4,0
a0003d8a:	c6a9                	beqz	a3,a0003dd4 <__floatdidf+0x188>
a0003d8c:	4709                	li	a4,2
a0003d8e:	04ea0063          	beq	s4,a4,a0003dce <__floatdidf+0x182>
a0003d92:	470d                	li	a4,3
a0003d94:	02ea0763          	beq	s4,a4,a0003dc2 <__floatdidf+0x176>
a0003d98:	4705                	li	a4,1
a0003d9a:	020a1d63          	bnez	s4,a0003dd4 <__floatdidf+0x188>
a0003d9e:	00f47693          	andi	a3,s0,15
a0003da2:	4611                	li	a2,4
a0003da4:	02c68863          	beq	a3,a2,a0003dd4 <__floatdidf+0x188>
a0003da8:	00440693          	addi	a3,s0,4 # 400004 <remain_wifi_ram+0x3e0004>
a0003dac:	0086b433          	sltu	s0,a3,s0
a0003db0:	97a2                	add	a5,a5,s0
a0003db2:	8436                	mv	s0,a3
a0003db4:	a005                	j	a0003dd4 <__floatdidf+0x188>
a0003db6:	fd8a8993          	addi	s3,s5,-40
a0003dba:	013419b3          	sll	s3,s0,s3
a0003dbe:	4401                	li	s0,0
a0003dc0:	bf6d                	j	a0003d7a <__floatdidf+0x12e>
a0003dc2:	4705                	li	a4,1
a0003dc4:	000bc863          	bltz	s7,a0003dd4 <__floatdidf+0x188>
a0003dc8:	00840693          	addi	a3,s0,8
a0003dcc:	b7c5                	j	a0003dac <__floatdidf+0x160>
a0003dce:	4705                	li	a4,1
a0003dd0:	fe0bcce3          	bltz	s7,a0003dc8 <__floatdidf+0x17c>
a0003dd4:	008006b7          	lui	a3,0x800
a0003dd8:	8efd                	and	a3,a3,a5
a0003dda:	ca89                	beqz	a3,a0003dec <__floatdidf+0x1a0>
a0003ddc:	ff8006b7          	lui	a3,0xff800
a0003de0:	16fd                	addi	a3,a3,-1
a0003de2:	43f00b13          	li	s6,1087
a0003de6:	8ff5                	and	a5,a5,a3
a0003de8:	415b0b33          	sub	s6,s6,s5
a0003dec:	00345513          	srli	a0,s0,0x3
a0003df0:	01d79413          	slli	s0,a5,0x1d
a0003df4:	8c49                	or	s0,s0,a0
a0003df6:	0037d493          	srli	s1,a5,0x3
a0003dfa:	bde1                	j	a0003cd2 <__floatdidf+0x86>
a0003dfc:	4481                	li	s1,0
a0003dfe:	4401                	li	s0,0
a0003e00:	4b01                	li	s6,0
a0003e02:	4901                	li	s2,0
a0003e04:	4701                	li	a4,0
a0003e06:	b5f1                	j	a0003cd2 <__floatdidf+0x86>

a0003e08 <__clzsi2>:
a0003e08:	67c1                	lui	a5,0x10
a0003e0a:	02f57663          	bgeu	a0,a5,a0003e36 <__clzsi2+0x2e>
a0003e0e:	0ff00793          	li	a5,255
a0003e12:	00a7b7b3          	sltu	a5,a5,a0
a0003e16:	078e                	slli	a5,a5,0x3
a0003e18:	a0009737          	lui	a4,0xa0009
a0003e1c:	02000693          	li	a3,32
a0003e20:	8e9d                	sub	a3,a3,a5
a0003e22:	00f55533          	srl	a0,a0,a5
a0003e26:	de070793          	addi	a5,a4,-544 # a0008de0 <__psram_limit+0xf7c08de0>
a0003e2a:	953e                	add	a0,a0,a5
a0003e2c:	00054503          	lbu	a0,0(a0)
a0003e30:	40a68533          	sub	a0,a3,a0
a0003e34:	8082                	ret
a0003e36:	01000737          	lui	a4,0x1000
a0003e3a:	47c1                	li	a5,16
a0003e3c:	fce56ee3          	bltu	a0,a4,a0003e18 <__clzsi2+0x10>
a0003e40:	47e1                	li	a5,24
a0003e42:	bfd9                	j	a0003e18 <__clzsi2+0x10>

a0003e44 <system_init>:
a0003e44:	a0008537          	lui	a0,0xa0008
a0003e48:	1141                	addi	sp,sp,-16
a0003e4a:	dd450513          	addi	a0,a0,-556 # a0007dd4 <__psram_limit+0xf7c07dd4>
a0003e4e:	c606                	sw	ra,12(sp)
a0003e50:	c422                	sw	s0,8(sp)
a0003e52:	c226                	sw	s1,4(sp)
a0003e54:	62fc3437          	lui	s0,0x62fc3
a0003e58:	6489                	lui	s1,0x2
a0003e5a:	579020ef          	jal	ra,a0006bd2 <qcc74x_device_get_by_name>
a0003e5e:	e6040413          	addi	s0,s0,-416 # 62fc2e60 <gpio>
a0003e62:	b0148613          	addi	a2,s1,-1279 # 1b01 <HeapMinSize+0xb01>
a0003e66:	45b5                	li	a1,13
a0003e68:	c008                	sw	a0,0(s0)
a0003e6a:	2bc020ef          	jal	ra,a0006126 <qcc74x_gpio_init>
a0003e6e:	4008                	lw	a0,0(s0)
a0003e70:	b0148613          	addi	a2,s1,-1279
a0003e74:	45b9                	li	a1,14
a0003e76:	2b0020ef          	jal	ra,a0006126 <qcc74x_gpio_init>
a0003e7a:	4008                	lw	a0,0(s0)
a0003e7c:	b0148613          	addi	a2,s1,-1279
a0003e80:	45bd                	li	a1,15
a0003e82:	2a4020ef          	jal	ra,a0006126 <qcc74x_gpio_init>
a0003e86:	4008                	lw	a0,0(s0)
a0003e88:	a4048613          	addi	a2,s1,-1472
a0003e8c:	45b1                	li	a1,12
a0003e8e:	298020ef          	jal	ra,a0006126 <qcc74x_gpio_init>
a0003e92:	4008                	lw	a0,0(s0)
a0003e94:	45b1                	li	a1,12
a0003e96:	35e020ef          	jal	ra,a00061f4 <qcc74x_gpio_set>
a0003e9a:	4008                	lw	a0,0(s0)
a0003e9c:	b0548613          	addi	a2,s1,-1275
a0003ea0:	45a9                	li	a1,10
a0003ea2:	284020ef          	jal	ra,a0006126 <qcc74x_gpio_init>
a0003ea6:	4008                	lw	a0,0(s0)
a0003ea8:	b0548613          	addi	a2,s1,-1275
a0003eac:	45ad                	li	a1,11
a0003eae:	278020ef          	jal	ra,a0006126 <qcc74x_gpio_init>
a0003eb2:	4008                	lw	a0,0(s0)
a0003eb4:	a4048613          	addi	a2,s1,-1472
a0003eb8:	458d                	li	a1,3
a0003eba:	26c020ef          	jal	ra,a0006126 <qcc74x_gpio_init>
a0003ebe:	4008                	lw	a0,0(s0)
a0003ec0:	4422                	lw	s0,8(sp)
a0003ec2:	40b2                	lw	ra,12(sp)
a0003ec4:	4492                	lw	s1,4(sp)
a0003ec6:	458d                	li	a1,3
a0003ec8:	0141                	addi	sp,sp,16
a0003eca:	32a0206f          	j	a00061f4 <qcc74x_gpio_set>

a0003ece <spi_init>:
a0003ece:	1101                	addi	sp,sp,-32
a0003ed0:	a00085b7          	lui	a1,0xa0008
a0003ed4:	4631                	li	a2,12
a0003ed6:	e5c58593          	addi	a1,a1,-420 # a0007e5c <__psram_limit+0xf7c07e5c>
a0003eda:	0048                	addi	a0,sp,4
a0003edc:	ce06                	sw	ra,28(sp)
a0003ede:	2685                	jal	a000423e <memcpy>
a0003ee0:	a0008537          	lui	a0,0xa0008
a0003ee4:	ddc50513          	addi	a0,a0,-548 # a0007ddc <__psram_limit+0xf7c07ddc>
a0003ee8:	4eb020ef          	jal	ra,a0006bd2 <qcc74x_device_get_by_name>
a0003eec:	62fc37b7          	lui	a5,0x62fc3
a0003ef0:	004c                	addi	a1,sp,4
a0003ef2:	e6a7a423          	sw	a0,-408(a5) # 62fc2e68 <spi0>
a0003ef6:	1f9020ef          	jal	ra,a00068ee <qcc74x_spi_init>
a0003efa:	40f2                	lw	ra,28(sp)
a0003efc:	6105                	addi	sp,sp,32
a0003efe:	8082                	ret

a0003f00 <dht11_read>:
a0003f00:	7179                	addi	sp,sp,-48
a0003f02:	d422                	sw	s0,40(sp)
a0003f04:	62fc3437          	lui	s0,0x62fc3
a0003f08:	d226                	sw	s1,36(sp)
a0003f0a:	e6040493          	addi	s1,s0,-416 # 62fc2e60 <gpio>
a0003f0e:	ce4e                	sw	s3,28(sp)
a0003f10:	89aa                	mv	s3,a0
a0003f12:	4088                	lw	a0,0(s1)
a0003f14:	04000613          	li	a2,64
a0003f18:	cc52                	sw	s4,24(sp)
a0003f1a:	8a2e                	mv	s4,a1
a0003f1c:	458d                	li	a1,3
a0003f1e:	d606                	sw	ra,44(sp)
a0003f20:	d04a                	sw	s2,32(sp)
a0003f22:	ca56                	sw	s5,20(sp)
a0003f24:	c85a                	sw	s6,16(sp)
a0003f26:	c402                	sw	zero,8(sp)
a0003f28:	00010623          	sb	zero,12(sp)
a0003f2c:	1fa020ef          	jal	ra,a0006126 <qcc74x_gpio_init>
a0003f30:	4088                	lw	a0,0(s1)
a0003f32:	458d                	li	a1,3
a0003f34:	1f400913          	li	s2,500
a0003f38:	2ee020ef          	jal	ra,a0006226 <qcc74x_gpio_reset>
a0003f3c:	4551                	li	a0,20
a0003f3e:	c2fbd097          	auipc	ra,0xc2fbd
a0003f42:	b80080e7          	jalr	-1152(ra) # 62fc0abe <qcc74x_mtimer_delay_ms>
a0003f46:	4088                	lw	a0,0(s1)
a0003f48:	458d                	li	a1,3
a0003f4a:	e6040413          	addi	s0,s0,-416
a0003f4e:	2a6020ef          	jal	ra,a00061f4 <qcc74x_gpio_set>
a0003f52:	02800513          	li	a0,40
a0003f56:	c2fbd097          	auipc	ra,0xc2fbd
a0003f5a:	b3e080e7          	jalr	-1218(ra) # 62fc0a94 <qcc74x_mtimer_delay_us>
a0003f5e:	4088                	lw	a0,0(s1)
a0003f60:	02000613          	li	a2,32
a0003f64:	458d                	li	a1,3
a0003f66:	1c0020ef          	jal	ra,a0006126 <qcc74x_gpio_init>
a0003f6a:	54fd                	li	s1,-1
a0003f6c:	4008                	lw	a0,0(s0)
a0003f6e:	458d                	li	a1,3
a0003f70:	2e8020ef          	jal	ra,a0006258 <qcc74x_gpio_read>
a0003f74:	cd11                	beqz	a0,a0003f90 <dht11_read+0x90>
a0003f76:	197d                	addi	s2,s2,-1
a0003f78:	00991663          	bne	s2,s1,a0003f84 <dht11_read+0x84>
a0003f7c:	1f400493          	li	s1,500
a0003f80:	597d                	li	s2,-1
a0003f82:	a81d                	j	a0003fb8 <dht11_read+0xb8>
a0003f84:	4505                	li	a0,1
a0003f86:	c2fbd097          	auipc	ra,0xc2fbd
a0003f8a:	b0e080e7          	jalr	-1266(ra) # 62fc0a94 <qcc74x_mtimer_delay_us>
a0003f8e:	bff9                	j	a0003f6c <dht11_read+0x6c>
a0003f90:	1f400493          	li	s1,500
a0003f94:	fe0916e3          	bnez	s2,a0003f80 <dht11_read+0x80>
a0003f98:	557d                	li	a0,-1
a0003f9a:	50b2                	lw	ra,44(sp)
a0003f9c:	5422                	lw	s0,40(sp)
a0003f9e:	5492                	lw	s1,36(sp)
a0003fa0:	5902                	lw	s2,32(sp)
a0003fa2:	49f2                	lw	s3,28(sp)
a0003fa4:	4a62                	lw	s4,24(sp)
a0003fa6:	4ad2                	lw	s5,20(sp)
a0003fa8:	4b42                	lw	s6,16(sp)
a0003faa:	6145                	addi	sp,sp,48
a0003fac:	8082                	ret
a0003fae:	4505                	li	a0,1
a0003fb0:	c2fbd097          	auipc	ra,0xc2fbd
a0003fb4:	ae4080e7          	jalr	-1308(ra) # 62fc0a94 <qcc74x_mtimer_delay_us>
a0003fb8:	4008                	lw	a0,0(s0)
a0003fba:	458d                	li	a1,3
a0003fbc:	29c020ef          	jal	ra,a0006258 <qcc74x_gpio_read>
a0003fc0:	e95d                	bnez	a0,a0004076 <dht11_read+0x176>
a0003fc2:	14fd                	addi	s1,s1,-1
a0003fc4:	ff2495e3          	bne	s1,s2,a0003fae <dht11_read+0xae>
a0003fc8:	1f400493          	li	s1,500
a0003fcc:	597d                	li	s2,-1
a0003fce:	4008                	lw	a0,0(s0)
a0003fd0:	458d                	li	a1,3
a0003fd2:	286020ef          	jal	ra,a0006258 <qcc74x_gpio_read>
a0003fd6:	c945                	beqz	a0,a0004086 <dht11_read+0x186>
a0003fd8:	14fd                	addi	s1,s1,-1
a0003fda:	0b249063          	bne	s1,s2,a000407a <dht11_read+0x17a>
a0003fde:	4481                	li	s1,0
a0003fe0:	1f400913          	li	s2,500
a0003fe4:	02800a93          	li	s5,40
a0003fe8:	4008                	lw	a0,0(s0)
a0003fea:	458d                	li	a1,3
a0003fec:	26c020ef          	jal	ra,a0006258 <qcc74x_gpio_read>
a0003ff0:	e509                	bnez	a0,a0003ffa <dht11_read+0xfa>
a0003ff2:	fff90b13          	addi	s6,s2,-1 # 7fffff <remain_wifi_ram+0x7dffff>
a0003ff6:	08091a63          	bnez	s2,a000408a <dht11_read+0x18a>
a0003ffa:	03200513          	li	a0,50
a0003ffe:	c2fbd097          	auipc	ra,0xc2fbd
a0004002:	a96080e7          	jalr	-1386(ra) # 62fc0a94 <qcc74x_mtimer_delay_us>
a0004006:	4008                	lw	a0,0(s0)
a0004008:	458d                	li	a1,3
a000400a:	24e020ef          	jal	ra,a0006258 <qcc74x_gpio_read>
a000400e:	c10d                	beqz	a0,a0004030 <dht11_read+0x130>
a0004010:	fff4c793          	not	a5,s1
a0004014:	0077f693          	andi	a3,a5,7
a0004018:	4785                	li	a5,1
a000401a:	4034d713          	srai	a4,s1,0x3
a000401e:	00d797b3          	sll	a5,a5,a3
a0004022:	0034                	addi	a3,sp,8
a0004024:	80e6c68b          	lrbu	a3,a3,a4,0
a0004028:	8fd5                	or	a5,a5,a3
a000402a:	0034                	addi	a3,sp,8
a000402c:	00e6d78b          	srb	a5,a3,a4,0
a0004030:	1f500913          	li	s2,501
a0004034:	4008                	lw	a0,0(s0)
a0004036:	458d                	li	a1,3
a0004038:	220020ef          	jal	ra,a0006258 <qcc74x_gpio_read>
a000403c:	c501                	beqz	a0,a0004044 <dht11_read+0x144>
a000403e:	197d                	addi	s2,s2,-1
a0004040:	04091f63          	bnez	s2,a000409e <dht11_read+0x19e>
a0004044:	0485                	addi	s1,s1,1
a0004046:	05549963          	bne	s1,s5,a0004098 <dht11_read+0x198>
a000404a:	00814683          	lbu	a3,8(sp)
a000404e:	00914783          	lbu	a5,9(sp)
a0004052:	00a14703          	lbu	a4,10(sp)
a0004056:	00b14603          	lbu	a2,11(sp)
a000405a:	97b6                	add	a5,a5,a3
a000405c:	97ba                	add	a5,a5,a4
a000405e:	97b2                	add	a5,a5,a2
a0004060:	00c14603          	lbu	a2,12(sp)
a0004064:	5579                	li	a0,-2
a0004066:	f2c79ae3          	bne	a5,a2,a0003f9a <dht11_read+0x9a>
a000406a:	00da0023          	sb	a3,0(s4)
a000406e:	00e98023          	sb	a4,0(s3)
a0004072:	4501                	li	a0,0
a0004074:	b71d                	j	a0003f9a <dht11_read+0x9a>
a0004076:	f8a9                	bnez	s1,a0003fc8 <dht11_read+0xc8>
a0004078:	b705                	j	a0003f98 <dht11_read+0x98>
a000407a:	4505                	li	a0,1
a000407c:	c2fbd097          	auipc	ra,0xc2fbd
a0004080:	a18080e7          	jalr	-1512(ra) # 62fc0a94 <qcc74x_mtimer_delay_us>
a0004084:	b7a9                	j	a0003fce <dht11_read+0xce>
a0004086:	fca1                	bnez	s1,a0003fde <dht11_read+0xde>
a0004088:	bf01                	j	a0003f98 <dht11_read+0x98>
a000408a:	4505                	li	a0,1
a000408c:	c2fbd097          	auipc	ra,0xc2fbd
a0004090:	a08080e7          	jalr	-1528(ra) # 62fc0a94 <qcc74x_mtimer_delay_us>
a0004094:	895a                	mv	s2,s6
a0004096:	bf89                	j	a0003fe8 <dht11_read+0xe8>
a0004098:	1f400913          	li	s2,500
a000409c:	b7b1                	j	a0003fe8 <dht11_read+0xe8>
a000409e:	4505                	li	a0,1
a00040a0:	c2fbd097          	auipc	ra,0xc2fbd
a00040a4:	9f4080e7          	jalr	-1548(ra) # 62fc0a94 <qcc74x_mtimer_delay_us>
a00040a8:	b771                	j	a0004034 <dht11_read+0x134>

a00040aa <main>:
a00040aa:	7159                	addi	sp,sp,-112
a00040ac:	d686                	sw	ra,108(sp)
a00040ae:	d0ca                	sw	s2,96(sp)
a00040b0:	cece                	sw	s3,92(sp)
a00040b2:	ccd2                	sw	s4,88(sp)
a00040b4:	cad6                	sw	s5,84(sp)
a00040b6:	c8da                	sw	s6,80(sp)
a00040b8:	c6de                	sw	s7,76(sp)
a00040ba:	c4e2                	sw	s8,72(sp)
a00040bc:	c2e6                	sw	s9,68(sp)
a00040be:	c0ea                	sw	s10,64(sp)
a00040c0:	d4a2                	sw	s0,104(sp)
a00040c2:	d2a6                	sw	s1,100(sp)
a00040c4:	de6e                	sw	s11,60(sp)
a00040c6:	1af030ef          	jal	ra,a0007a74 <board_init>
a00040ca:	3bad                	jal	a0003e44 <system_init>
a00040cc:	a0008537          	lui	a0,0xa0008
a00040d0:	de450513          	addi	a0,a0,-540 # a0007de4 <__psram_limit+0xf7c07de4>
a00040d4:	2ff020ef          	jal	ra,a0006bd2 <qcc74x_device_get_by_name>
a00040d8:	65e1                	lui	a1,0x18
a00040da:	6a058593          	addi	a1,a1,1696 # 186a0 <wifi_ram_max_size+0x106a0>
a00040de:	62fc3937          	lui	s2,0x62fc3
a00040e2:	e6a92223          	sw	a0,-412(s2) # 62fc2e64 <i2c0>
a00040e6:	3c8020ef          	jal	ra,a00064ae <qcc74x_i2c_init>
a00040ea:	33d5                	jal	a0003ece <spi_init>
a00040ec:	a0008537          	lui	a0,0xa0008
a00040f0:	dec50513          	addi	a0,a0,-532 # a0007dec <__psram_limit+0xf7c07dec>
a00040f4:	004009b7          	lui	s3,0x400
a00040f8:	6a41                	lui	s4,0x10
a00040fa:	000100a3          	sb	zero,1(sp)
a00040fe:	00010123          	sb	zero,2(sp)
a0004102:	000101a3          	sb	zero,3(sp)
a0004106:	e6490913          	addi	s2,s2,-412
a000410a:	20b010ef          	jal	ra,a0005b14 <printf>
a000410e:	06898993          	addi	s3,s3,104 # 400068 <remain_wifi_ram+0x3e0068>
a0004112:	00310c13          	addi	s8,sp,3
a0004116:	068a0a13          	addi	s4,s4,104 # 10068 <wifi_ram_max_size+0x8068>
a000411a:	00410c93          	addi	s9,sp,4
a000411e:	a0008d37          	lui	s10,0xa0008
a0004122:	62fc3bb7          	lui	s7,0x62fc3
a0004126:	62fc3b37          	lui	s6,0x62fc3
a000412a:	a0008ab7          	lui	s5,0xa0008
a000412e:	00092503          	lw	a0,0(s2)
a0004132:	4785                	li	a5,1
a0004134:	02f11023          	sh	a5,32(sp)
a0004138:	4609                	li	a2,2
a000413a:	478d                	li	a5,3
a000413c:	082c                	addi	a1,sp,24
a000413e:	cc4e                	sw	s3,24(sp)
a0004140:	ce62                	sw	s8,28(sp)
a0004142:	d252                	sw	s4,36(sp)
a0004144:	d466                	sw	s9,40(sp)
a0004146:	02f11623          	sh	a5,44(sp)
a000414a:	4ba020ef          	jal	ra,a0006604 <qcc74x_i2c_transfer>
a000414e:	e179                	bnez	a0,a0004214 <main+0x16a>
a0004150:	00414d83          	lbu	s11,4(sp)
a0004154:	00514483          	lbu	s1,5(sp)
a0004158:	00614403          	lbu	s0,6(sp)
a000415c:	184db70b          	extu	a4,s11,6,4
a0004160:	47a9                	li	a5,10
a0004162:	00fdfd93          	andi	s11,s11,15
a0004166:	20f71d8b          	mula	s11,a4,a5
a000416a:	0044d713          	srli	a4,s1,0x4
a000416e:	88bd                	andi	s1,s1,15
a0004170:	20f7148b          	mula	s1,a4,a5
a0004174:	1444370b          	extu	a4,s0,5,4
a0004178:	883d                	andi	s0,s0,15
a000417a:	0ffdfd93          	zext.b	s11,s11
a000417e:	20f7140b          	mula	s0,a4,a5
a0004182:	0ff4f493          	zext.b	s1,s1
a0004186:	0ff47413          	zext.b	s0,s0
a000418a:	00210593          	addi	a1,sp,2
a000418e:	00110513          	addi	a0,sp,1
a0004192:	33bd                	jal	a0003f00 <dht11_read>
a0004194:	c509                	beqz	a0,a000419e <main+0xf4>
a0004196:	e24d0513          	addi	a0,s10,-476 # a0007e24 <__psram_limit+0xf7c07e24>
a000419a:	17b010ef          	jal	ra,a0005b14 <printf>
a000419e:	faa00793          	li	a5,-86
a00041a2:	00f10423          	sb	a5,8(sp)
a00041a6:	00114783          	lbu	a5,1(sp)
a00041aa:	45b1                	li	a1,12
a00041ac:	008105a3          	sb	s0,11(sp)
a00041b0:	00f104a3          	sb	a5,9(sp)
a00041b4:	00214783          	lbu	a5,2(sp)
a00041b8:	00910623          	sb	s1,12(sp)
a00041bc:	01b106a3          	sb	s11,13(sp)
a00041c0:	00f10523          	sb	a5,10(sp)
a00041c4:	e60b8793          	addi	a5,s7,-416 # 62fc2e60 <gpio>
a00041c8:	4388                	lw	a0,0(a5)
a00041ca:	05c020ef          	jal	ra,a0006226 <qcc74x_gpio_reset>
a00041ce:	e68b2503          	lw	a0,-408(s6) # 62fc2e68 <spi0>
a00041d2:	0810                	addi	a2,sp,16
a00041d4:	4699                	li	a3,6
a00041d6:	002c                	addi	a1,sp,8
a00041d8:	c2fbc097          	auipc	ra,0xc2fbc
a00041dc:	426080e7          	jalr	1062(ra) # 62fc05fe <qcc74x_spi_poll_exchange>
a00041e0:	62fc37b7          	lui	a5,0x62fc3
a00041e4:	e6078793          	addi	a5,a5,-416 # 62fc2e60 <gpio>
a00041e8:	4388                	lw	a0,0(a5)
a00041ea:	45b1                	li	a1,12
a00041ec:	008020ef          	jal	ra,a00061f4 <qcc74x_gpio_set>
a00041f0:	00214603          	lbu	a2,2(sp)
a00041f4:	00114583          	lbu	a1,1(sp)
a00041f8:	87ee                	mv	a5,s11
a00041fa:	8726                	mv	a4,s1
a00041fc:	86a2                	mv	a3,s0
a00041fe:	e38a8513          	addi	a0,s5,-456 # a0007e38 <__psram_limit+0xf7c07e38>
a0004202:	113010ef          	jal	ra,a0005b14 <printf>
a0004206:	3e800513          	li	a0,1000
a000420a:	c2fbd097          	auipc	ra,0xc2fbd
a000420e:	8b4080e7          	jalr	-1868(ra) # 62fc0abe <qcc74x_mtimer_delay_ms>
a0004212:	bf31                	j	a000412e <main+0x84>
a0004214:	06300d93          	li	s11,99
a0004218:	06300493          	li	s1,99
a000421c:	06300413          	li	s0,99
a0004220:	b7ad                	j	a000418a <main+0xe0>

a0004222 <strcmp>:
a0004222:	4701                	li	a4,0
a0004224:	80e5468b          	lrbu	a3,a0,a4,0
a0004228:	80e5c78b          	lrbu	a5,a1,a4,0
a000422c:	40f687b3          	sub	a5,a3,a5
a0004230:	1c07a78b          	ext	a5,a5,7,0
a0004234:	e399                	bnez	a5,a000423a <strcmp+0x18>
a0004236:	0705                	addi	a4,a4,1
a0004238:	f6f5                	bnez	a3,a0004224 <strcmp+0x2>
a000423a:	853e                	mv	a0,a5
a000423c:	8082                	ret

a000423e <memcpy>:
a000423e:	471d                	li	a4,7
a0004240:	87aa                	mv	a5,a0
a0004242:	00c506b3          	add	a3,a0,a2
a0004246:	08c76463          	bltu	a4,a2,a00042ce <memcpy+0x90>
a000424a:	4791                	li	a5,4
a000424c:	06f60963          	beq	a2,a5,a00042be <memcpy+0x80>
a0004250:	00c7ed63          	bltu	a5,a2,a000426a <memcpy+0x2c>
a0004254:	4789                	li	a5,2
a0004256:	06f60663          	beq	a2,a5,a00042c2 <memcpy+0x84>
a000425a:	470d                	li	a4,3
a000425c:	87aa                	mv	a5,a0
a000425e:	04e60163          	beq	a2,a4,a00042a0 <memcpy+0x62>
a0004262:	4705                	li	a4,1
a0004264:	04e60663          	beq	a2,a4,a00042b0 <memcpy+0x72>
a0004268:	8082                	ret
a000426a:	4799                	li	a5,6
a000426c:	04f60763          	beq	a2,a5,a00042ba <memcpy+0x7c>
a0004270:	00e60763          	beq	a2,a4,a000427e <memcpy+0x40>
a0004274:	4715                	li	a4,5
a0004276:	87aa                	mv	a5,a0
a0004278:	00e60c63          	beq	a2,a4,a0004290 <memcpy+0x52>
a000427c:	8082                	ret
a000427e:	9815c70b          	lbuia	a4,(a1),1,0
a0004282:	87aa                	mv	a5,a0
a0004284:	1817d70b          	sbia	a4,(a5),1,0
a0004288:	9815c70b          	lbuia	a4,(a1),1,0
a000428c:	1817d70b          	sbia	a4,(a5),1,0
a0004290:	9815c70b          	lbuia	a4,(a1),1,0
a0004294:	1817d70b          	sbia	a4,(a5),1,0
a0004298:	9815c70b          	lbuia	a4,(a1),1,0
a000429c:	1817d70b          	sbia	a4,(a5),1,0
a00042a0:	9815c70b          	lbuia	a4,(a1),1,0
a00042a4:	1817d70b          	sbia	a4,(a5),1,0
a00042a8:	9815c70b          	lbuia	a4,(a1),1,0
a00042ac:	1817d70b          	sbia	a4,(a5),1,0
a00042b0:	0005c703          	lbu	a4,0(a1)
a00042b4:	00e78023          	sb	a4,0(a5)
a00042b8:	8082                	ret
a00042ba:	87aa                	mv	a5,a0
a00042bc:	b7f1                	j	a0004288 <memcpy+0x4a>
a00042be:	87aa                	mv	a5,a0
a00042c0:	bfe1                	j	a0004298 <memcpy+0x5a>
a00042c2:	87aa                	mv	a5,a0
a00042c4:	b7d5                	j	a00042a8 <memcpy+0x6a>
a00042c6:	9815c70b          	lbuia	a4,(a1),1,0
a00042ca:	1817d70b          	sbia	a4,(a5),1,0
a00042ce:	0037f713          	andi	a4,a5,3
a00042d2:	40f68633          	sub	a2,a3,a5
a00042d6:	fb65                	bnez	a4,a00042c6 <memcpy+0x88>
a00042d8:	0035f693          	andi	a3,a1,3
a00042dc:	4809                	li	a6,2
a00042de:	00265713          	srli	a4,a2,0x2
a00042e2:	1b068d63          	beq	a3,a6,a000449c <memcpy+0x25e>
a00042e6:	480d                	li	a6,3
a00042e8:	2b068863          	beq	a3,a6,a0004598 <memcpy+0x35a>
a00042ec:	4805                	li	a6,1
a00042ee:	05069563          	bne	a3,a6,a0004338 <memcpy+0xfa>
a00042f2:	99f1                	andi	a1,a1,-4
a00042f4:	5845c80b          	lwia	a6,(a1),4,0
a00042f8:	9bf1                	andi	a5,a5,-4
a00042fa:	00777693          	andi	a3,a4,7
a00042fe:	e2f9                	bnez	a3,a00043c4 <memcpy+0x186>
a0004300:	830d                	srli	a4,a4,0x3
a0004302:	0716                	slli	a4,a4,0x5
a0004304:	00e58e33          	add	t3,a1,a4
a0004308:	86be                	mv	a3,a5
a000430a:	0dc59963          	bne	a1,t3,a00043dc <memcpy+0x19e>
a000430e:	8a0d                	andi	a2,a2,3
a0004310:	4689                	li	a3,2
a0004312:	97ba                	add	a5,a5,a4
a0004314:	ffd58713          	addi	a4,a1,-3
a0004318:	16d60d63          	beq	a2,a3,a0004492 <memcpy+0x254>
a000431c:	468d                	li	a3,3
a000431e:	16d60463          	beq	a2,a3,a0004486 <memcpy+0x248>
a0004322:	4685                	li	a3,1
a0004324:	f8d61ae3          	bne	a2,a3,a00042b8 <memcpy+0x7a>
a0004328:	00074703          	lbu	a4,0(a4) # 1000000 <remain_wifi_ram+0xfe0000>
a000432c:	b761                	j	a00042b4 <memcpy+0x76>
a000432e:	5845c68b          	lwia	a3,(a1),4,0
a0004332:	177d                	addi	a4,a4,-1
a0004334:	5847d68b          	swia	a3,(a5),4,0
a0004338:	00777693          	andi	a3,a4,7
a000433c:	faed                	bnez	a3,a000432e <memcpy+0xf0>
a000433e:	830d                	srli	a4,a4,0x3
a0004340:	0716                	slli	a4,a4,0x5
a0004342:	00e586b3          	add	a3,a1,a4
a0004346:	883e                	mv	a6,a5
a0004348:	02d59063          	bne	a1,a3,a0004368 <memcpy+0x12a>
a000434c:	97ba                	add	a5,a5,a4
a000434e:	8a0d                	andi	a2,a2,3
a0004350:	4709                	li	a4,2
a0004352:	06e60463          	beq	a2,a4,a00043ba <memcpy+0x17c>
a0004356:	470d                	li	a4,3
a0004358:	04e60d63          	beq	a2,a4,a00043b2 <memcpy+0x174>
a000435c:	4705                	li	a4,1
a000435e:	f4e61de3          	bne	a2,a4,a00042b8 <memcpy+0x7a>
a0004362:	0006c703          	lbu	a4,0(a3) # ff800000 <__psram_limit+0x57400000>
a0004366:	b7b9                	j	a00042b4 <memcpy+0x76>
a0004368:	0005a883          	lw	a7,0(a1)
a000436c:	02080813          	addi	a6,a6,32
a0004370:	ff182023          	sw	a7,-32(a6)
a0004374:	0045a883          	lw	a7,4(a1)
a0004378:	ff182223          	sw	a7,-28(a6)
a000437c:	0085a883          	lw	a7,8(a1)
a0004380:	ff182423          	sw	a7,-24(a6)
a0004384:	00c5a883          	lw	a7,12(a1)
a0004388:	ff182623          	sw	a7,-20(a6)
a000438c:	0105a883          	lw	a7,16(a1)
a0004390:	ff182823          	sw	a7,-16(a6)
a0004394:	0145a883          	lw	a7,20(a1)
a0004398:	ff182a23          	sw	a7,-12(a6)
a000439c:	0185a883          	lw	a7,24(a1)
a00043a0:	ff182c23          	sw	a7,-8(a6)
a00043a4:	01c5a883          	lw	a7,28(a1)
a00043a8:	02058593          	addi	a1,a1,32
a00043ac:	ff182e23          	sw	a7,-4(a6)
a00043b0:	bf61                	j	a0004348 <memcpy+0x10a>
a00043b2:	9816c70b          	lbuia	a4,(a3),1,0
a00043b6:	1817d70b          	sbia	a4,(a5),1,0
a00043ba:	9816c70b          	lbuia	a4,(a3),1,0
a00043be:	1817d70b          	sbia	a4,(a5),1,0
a00043c2:	b745                	j	a0004362 <memcpy+0x124>
a00043c4:	00885893          	srli	a7,a6,0x8
a00043c8:	5845c80b          	lwia	a6,(a1),4,0
a00043cc:	177d                	addi	a4,a4,-1
a00043ce:	01881693          	slli	a3,a6,0x18
a00043d2:	0116e6b3          	or	a3,a3,a7
a00043d6:	5847d68b          	swia	a3,(a5),4,0
a00043da:	b705                	j	a00042fa <memcpy+0xbc>
a00043dc:	0005a883          	lw	a7,0(a1)
a00043e0:	00885813          	srli	a6,a6,0x8
a00043e4:	01889313          	slli	t1,a7,0x18
a00043e8:	01036833          	or	a6,t1,a6
a00043ec:	0106a023          	sw	a6,0(a3)
a00043f0:	0045a803          	lw	a6,4(a1)
a00043f4:	0088d893          	srli	a7,a7,0x8
a00043f8:	01881313          	slli	t1,a6,0x18
a00043fc:	011368b3          	or	a7,t1,a7
a0004400:	0116a223          	sw	a7,4(a3)
a0004404:	00885893          	srli	a7,a6,0x8
a0004408:	0085a803          	lw	a6,8(a1)
a000440c:	01881313          	slli	t1,a6,0x18
a0004410:	011368b3          	or	a7,t1,a7
a0004414:	0116a423          	sw	a7,8(a3)
a0004418:	00885893          	srli	a7,a6,0x8
a000441c:	00c5a803          	lw	a6,12(a1)
a0004420:	01881313          	slli	t1,a6,0x18
a0004424:	011368b3          	or	a7,t1,a7
a0004428:	0116a623          	sw	a7,12(a3)
a000442c:	00885893          	srli	a7,a6,0x8
a0004430:	0105a803          	lw	a6,16(a1)
a0004434:	01881313          	slli	t1,a6,0x18
a0004438:	011368b3          	or	a7,t1,a7
a000443c:	0116a823          	sw	a7,16(a3)
a0004440:	00885893          	srli	a7,a6,0x8
a0004444:	0145a803          	lw	a6,20(a1)
a0004448:	01881313          	slli	t1,a6,0x18
a000444c:	011368b3          	or	a7,t1,a7
a0004450:	0116aa23          	sw	a7,20(a3)
a0004454:	00885893          	srli	a7,a6,0x8
a0004458:	0185a803          	lw	a6,24(a1)
a000445c:	01881313          	slli	t1,a6,0x18
a0004460:	011368b3          	or	a7,t1,a7
a0004464:	0116ac23          	sw	a7,24(a3)
a0004468:	00885893          	srli	a7,a6,0x8
a000446c:	01c5a803          	lw	a6,28(a1)
a0004470:	02058593          	addi	a1,a1,32
a0004474:	01881313          	slli	t1,a6,0x18
a0004478:	011368b3          	or	a7,t1,a7
a000447c:	0116ae23          	sw	a7,28(a3)
a0004480:	02068693          	addi	a3,a3,32
a0004484:	b559                	j	a000430a <memcpy+0xcc>
a0004486:	ffd5c683          	lbu	a3,-3(a1)
a000448a:	ffe58713          	addi	a4,a1,-2
a000448e:	1817d68b          	sbia	a3,(a5),1,0
a0004492:	9817468b          	lbuia	a3,(a4),1,0
a0004496:	1817d68b          	sbia	a3,(a5),1,0
a000449a:	b579                	j	a0004328 <memcpy+0xea>
a000449c:	99f1                	andi	a1,a1,-4
a000449e:	5845c80b          	lwia	a6,(a1),4,0
a00044a2:	9bf1                	andi	a5,a5,-4
a00044a4:	00777693          	andi	a3,a4,7
a00044a8:	e69d                	bnez	a3,a00044d6 <memcpy+0x298>
a00044aa:	830d                	srli	a4,a4,0x3
a00044ac:	0716                	slli	a4,a4,0x5
a00044ae:	00e58e33          	add	t3,a1,a4
a00044b2:	86be                	mv	a3,a5
a00044b4:	03c59d63          	bne	a1,t3,a00044ee <memcpy+0x2b0>
a00044b8:	8a0d                	andi	a2,a2,3
a00044ba:	4689                	li	a3,2
a00044bc:	97ba                	add	a5,a5,a4
a00044be:	ffe58713          	addi	a4,a1,-2
a00044c2:	fcd608e3          	beq	a2,a3,a0004492 <memcpy+0x254>
a00044c6:	468d                	li	a3,3
a00044c8:	e4d61de3          	bne	a2,a3,a0004322 <memcpy+0xe4>
a00044cc:	ffe5c683          	lbu	a3,-2(a1)
a00044d0:	fff58713          	addi	a4,a1,-1
a00044d4:	bf6d                	j	a000448e <memcpy+0x250>
a00044d6:	01085893          	srli	a7,a6,0x10
a00044da:	5845c80b          	lwia	a6,(a1),4,0
a00044de:	177d                	addi	a4,a4,-1
a00044e0:	01081693          	slli	a3,a6,0x10
a00044e4:	0116e6b3          	or	a3,a3,a7
a00044e8:	5847d68b          	swia	a3,(a5),4,0
a00044ec:	bf65                	j	a00044a4 <memcpy+0x266>
a00044ee:	0005a883          	lw	a7,0(a1)
a00044f2:	01085813          	srli	a6,a6,0x10
a00044f6:	01089313          	slli	t1,a7,0x10
a00044fa:	01036833          	or	a6,t1,a6
a00044fe:	0106a023          	sw	a6,0(a3)
a0004502:	0045a803          	lw	a6,4(a1)
a0004506:	0108d893          	srli	a7,a7,0x10
a000450a:	01081313          	slli	t1,a6,0x10
a000450e:	011368b3          	or	a7,t1,a7
a0004512:	0116a223          	sw	a7,4(a3)
a0004516:	01085893          	srli	a7,a6,0x10
a000451a:	0085a803          	lw	a6,8(a1)
a000451e:	01081313          	slli	t1,a6,0x10
a0004522:	011368b3          	or	a7,t1,a7
a0004526:	0116a423          	sw	a7,8(a3)
a000452a:	01085893          	srli	a7,a6,0x10
a000452e:	00c5a803          	lw	a6,12(a1)
a0004532:	01081313          	slli	t1,a6,0x10
a0004536:	011368b3          	or	a7,t1,a7
a000453a:	0116a623          	sw	a7,12(a3)
a000453e:	01085893          	srli	a7,a6,0x10
a0004542:	0105a803          	lw	a6,16(a1)
a0004546:	01081313          	slli	t1,a6,0x10
a000454a:	011368b3          	or	a7,t1,a7
a000454e:	0116a823          	sw	a7,16(a3)
a0004552:	01085893          	srli	a7,a6,0x10
a0004556:	0145a803          	lw	a6,20(a1)
a000455a:	01081313          	slli	t1,a6,0x10
a000455e:	011368b3          	or	a7,t1,a7
a0004562:	0116aa23          	sw	a7,20(a3)
a0004566:	01085893          	srli	a7,a6,0x10
a000456a:	0185a803          	lw	a6,24(a1)
a000456e:	01081313          	slli	t1,a6,0x10
a0004572:	011368b3          	or	a7,t1,a7
a0004576:	0116ac23          	sw	a7,24(a3)
a000457a:	01085893          	srli	a7,a6,0x10
a000457e:	01c5a803          	lw	a6,28(a1)
a0004582:	02058593          	addi	a1,a1,32
a0004586:	01081313          	slli	t1,a6,0x10
a000458a:	011368b3          	or	a7,t1,a7
a000458e:	0116ae23          	sw	a7,28(a3)
a0004592:	02068693          	addi	a3,a3,32
a0004596:	bf39                	j	a00044b4 <memcpy+0x276>
a0004598:	99f1                	andi	a1,a1,-4
a000459a:	5845c80b          	lwia	a6,(a1),4,0
a000459e:	9bf1                	andi	a5,a5,-4
a00045a0:	00777693          	andi	a3,a4,7
a00045a4:	ea85                	bnez	a3,a00045d4 <memcpy+0x396>
a00045a6:	830d                	srli	a4,a4,0x3
a00045a8:	0716                	slli	a4,a4,0x5
a00045aa:	00e58e33          	add	t3,a1,a4
a00045ae:	86be                	mv	a3,a5
a00045b0:	03c59e63          	bne	a1,t3,a00045ec <memcpy+0x3ae>
a00045b4:	8a0d                	andi	a2,a2,3
a00045b6:	4689                	li	a3,2
a00045b8:	97ba                	add	a5,a5,a4
a00045ba:	fff58713          	addi	a4,a1,-1
a00045be:	ecd60ae3          	beq	a2,a3,a0004492 <memcpy+0x254>
a00045c2:	468d                	li	a3,3
a00045c4:	d4d61fe3          	bne	a2,a3,a0004322 <memcpy+0xe4>
a00045c8:	fff5c703          	lbu	a4,-1(a1)
a00045cc:	1817d70b          	sbia	a4,(a5),1,0
a00045d0:	872e                	mv	a4,a1
a00045d2:	b5c1                	j	a0004492 <memcpy+0x254>
a00045d4:	01885893          	srli	a7,a6,0x18
a00045d8:	5845c80b          	lwia	a6,(a1),4,0
a00045dc:	177d                	addi	a4,a4,-1
a00045de:	00881693          	slli	a3,a6,0x8
a00045e2:	0116e6b3          	or	a3,a3,a7
a00045e6:	5847d68b          	swia	a3,(a5),4,0
a00045ea:	bf5d                	j	a00045a0 <memcpy+0x362>
a00045ec:	0005a883          	lw	a7,0(a1)
a00045f0:	01885813          	srli	a6,a6,0x18
a00045f4:	00889313          	slli	t1,a7,0x8
a00045f8:	01036833          	or	a6,t1,a6
a00045fc:	0106a023          	sw	a6,0(a3)
a0004600:	0045a803          	lw	a6,4(a1)
a0004604:	0188d893          	srli	a7,a7,0x18
a0004608:	00881313          	slli	t1,a6,0x8
a000460c:	011368b3          	or	a7,t1,a7
a0004610:	0116a223          	sw	a7,4(a3)
a0004614:	01885893          	srli	a7,a6,0x18
a0004618:	0085a803          	lw	a6,8(a1)
a000461c:	00881313          	slli	t1,a6,0x8
a0004620:	011368b3          	or	a7,t1,a7
a0004624:	0116a423          	sw	a7,8(a3)
a0004628:	01885893          	srli	a7,a6,0x18
a000462c:	00c5a803          	lw	a6,12(a1)
a0004630:	00881313          	slli	t1,a6,0x8
a0004634:	011368b3          	or	a7,t1,a7
a0004638:	0116a623          	sw	a7,12(a3)
a000463c:	01885893          	srli	a7,a6,0x18
a0004640:	0105a803          	lw	a6,16(a1)
a0004644:	00881313          	slli	t1,a6,0x8
a0004648:	011368b3          	or	a7,t1,a7
a000464c:	0116a823          	sw	a7,16(a3)
a0004650:	01885893          	srli	a7,a6,0x18
a0004654:	0145a803          	lw	a6,20(a1)
a0004658:	00881313          	slli	t1,a6,0x8
a000465c:	011368b3          	or	a7,t1,a7
a0004660:	0116aa23          	sw	a7,20(a3)
a0004664:	01885893          	srli	a7,a6,0x18
a0004668:	0185a803          	lw	a6,24(a1)
a000466c:	00881313          	slli	t1,a6,0x8
a0004670:	011368b3          	or	a7,t1,a7
a0004674:	0116ac23          	sw	a7,24(a3)
a0004678:	01885893          	srli	a7,a6,0x18
a000467c:	01c5a803          	lw	a6,28(a1)
a0004680:	02058593          	addi	a1,a1,32
a0004684:	00881313          	slli	t1,a6,0x8
a0004688:	011368b3          	or	a7,t1,a7
a000468c:	0116ae23          	sw	a7,28(a3)
a0004690:	02068693          	addi	a3,a3,32
a0004694:	bf31                	j	a00045b0 <memcpy+0x372>

a0004696 <out_discard>:
a0004696:	8082                	ret

a0004698 <out_rev_>:
a0004698:	7179                	addi	sp,sp,-48
a000469a:	d422                	sw	s0,40(sp)
a000469c:	d226                	sw	s1,36(sp)
a000469e:	d04a                	sw	s2,32(sp)
a00046a0:	ce4e                	sw	s3,28(sp)
a00046a2:	cc52                	sw	s4,24(sp)
a00046a4:	ca56                	sw	s5,20(sp)
a00046a6:	c85a                	sw	s6,16(sp)
a00046a8:	c65e                	sw	s7,12(sp)
a00046aa:	c462                	sw	s8,8(sp)
a00046ac:	84be                	mv	s1,a5
a00046ae:	d606                	sw	ra,44(sp)
a00046b0:	c266                	sw	s9,4(sp)
a00046b2:	0038f793          	andi	a5,a7,3
a00046b6:	8aaa                	mv	s5,a0
a00046b8:	8b2e                	mv	s6,a1
a00046ba:	8932                	mv	s2,a2
a00046bc:	8bb6                	mv	s7,a3
a00046be:	8c3a                	mv	s8,a4
a00046c0:	89c2                	mv	s3,a6
a00046c2:	8a46                	mv	s4,a7
a00046c4:	8432                	mv	s0,a2
a00046c6:	e78d                	bnez	a5,a00046f0 <out_rev_+0x58>
a00046c8:	8426                	mv	s0,s1
a00046ca:	40960cb3          	sub	s9,a2,s1
a00046ce:	a039                	j	a00046dc <out_rev_+0x44>
a00046d0:	86de                	mv	a3,s7
a00046d2:	85da                	mv	a1,s6
a00046d4:	02000513          	li	a0,32
a00046d8:	9a82                	jalr	s5
a00046da:	0405                	addi	s0,s0,1
a00046dc:	008c8633          	add	a2,s9,s0
a00046e0:	ff3468e3          	bltu	s0,s3,a00046d0 <out_rev_+0x38>
a00046e4:	4401                	li	s0,0
a00046e6:	0099e463          	bltu	s3,s1,a00046ee <out_rev_+0x56>
a00046ea:	40998433          	sub	s0,s3,s1
a00046ee:	944a                	add	s0,s0,s2
a00046f0:	9426                	add	s0,s0,s1
a00046f2:	8522                	mv	a0,s0
a00046f4:	40940633          	sub	a2,s0,s1
a00046f8:	e485                	bnez	s1,a0004720 <out_rev_+0x88>
a00046fa:	002a7a13          	andi	s4,s4,2
a00046fe:	41240433          	sub	s0,s0,s2
a0004702:	020a1d63          	bnez	s4,a000473c <out_rev_+0xa4>
a0004706:	50b2                	lw	ra,44(sp)
a0004708:	5422                	lw	s0,40(sp)
a000470a:	5492                	lw	s1,36(sp)
a000470c:	5902                	lw	s2,32(sp)
a000470e:	49f2                	lw	s3,28(sp)
a0004710:	4a62                	lw	s4,24(sp)
a0004712:	4ad2                	lw	s5,20(sp)
a0004714:	4b42                	lw	s6,16(sp)
a0004716:	4bb2                	lw	s7,12(sp)
a0004718:	4c22                	lw	s8,8(sp)
a000471a:	4c92                	lw	s9,4(sp)
a000471c:	6145                	addi	sp,sp,48
a000471e:	8082                	ret
a0004720:	14fd                	addi	s1,s1,-1
a0004722:	809c450b          	lrbu	a0,s8,s1,0
a0004726:	86de                	mv	a3,s7
a0004728:	85da                	mv	a1,s6
a000472a:	9a82                	jalr	s5
a000472c:	b7d9                	j	a00046f2 <out_rev_+0x5a>
a000472e:	862a                	mv	a2,a0
a0004730:	86de                	mv	a3,s7
a0004732:	85da                	mv	a1,s6
a0004734:	02000513          	li	a0,32
a0004738:	9a82                	jalr	s5
a000473a:	0405                	addi	s0,s0,1
a000473c:	00890533          	add	a0,s2,s0
a0004740:	ff3467e3          	bltu	s0,s3,a000472e <out_rev_+0x96>
a0004744:	b7c9                	j	a0004706 <out_rev_+0x6e>

a0004746 <print_integer>:
a0004746:	7159                	addi	sp,sp,-112
a0004748:	d4a2                	sw	s0,104(sp)
a000474a:	d0ca                	sw	s2,96(sp)
a000474c:	cece                	sw	s3,92(sp)
a000474e:	ccd2                	sw	s4,88(sp)
a0004750:	cad6                	sw	s5,84(sp)
a0004752:	c8da                	sw	s6,80(sp)
a0004754:	c6de                	sw	s7,76(sp)
a0004756:	d686                	sw	ra,108(sp)
a0004758:	8bb6                	mv	s7,a3
a000475a:	d2a6                	sw	s1,100(sp)
a000475c:	c4e2                	sw	s8,72(sp)
a000475e:	c2e6                	sw	s9,68(sp)
a0004760:	c0ea                	sw	s10,64(sp)
a0004762:	de6e                	sw	s11,60(sp)
a0004764:	00f766b3          	or	a3,a4,a5
a0004768:	8b32                	mv	s6,a2
a000476a:	59d6                	lw	s3,116(sp)
a000476c:	5466                	lw	s0,120(sp)
a000476e:	8a2a                	mv	s4,a0
a0004770:	8aae                	mv	s5,a1
a0004772:	8942                	mv	s2,a6
a0004774:	8646                	mv	a2,a7
a0004776:	e6a9                	bnez	a3,a00047c0 <print_integer+0x7a>
a0004778:	40047793          	andi	a5,s0,1024
a000477c:	ef85                	bnez	a5,a00047b4 <print_integer+0x6e>
a000477e:	03000793          	li	a5,48
a0004782:	00f10823          	sb	a5,16(sp)
a0004786:	983d                	andi	s0,s0,-17
a0004788:	4d85                	li	s11,1
a000478a:	00247713          	andi	a4,s0,2
a000478e:	87ee                	mv	a5,s11
a0004790:	ef4d                	bnez	a4,a000484a <print_integer+0x104>
a0004792:	00147713          	andi	a4,s0,1
a0004796:	00098963          	beqz	s3,a00047a8 <print_integer+0x62>
a000479a:	cb45                	beqz	a4,a000484a <print_integer+0x104>
a000479c:	00091563          	bnez	s2,a00047a6 <print_integer+0x60>
a00047a0:	00c47793          	andi	a5,s0,12
a00047a4:	c391                	beqz	a5,a00047a8 <print_integer+0x62>
a00047a6:	19fd                	addi	s3,s3,-1
a00047a8:	87ee                	mv	a5,s11
a00047aa:	02000693          	li	a3,32
a00047ae:	03000593          	li	a1,48
a00047b2:	a079                	j	a0004840 <print_integer+0xfa>
a00047b4:	47c1                	li	a5,16
a00047b6:	4d81                	li	s11,0
a00047b8:	fcf899e3          	bne	a7,a5,a000478a <print_integer+0x44>
a00047bc:	983d                	andi	s0,s0,-17
a00047be:	b7f1                	j	a000478a <print_integer+0x44>
a00047c0:	02047693          	andi	a3,s0,32
a00047c4:	06100493          	li	s1,97
a00047c8:	c299                	beqz	a3,a00047ce <print_integer+0x88>
a00047ca:	04100493          	li	s1,65
a00047ce:	4d81                	li	s11,0
a00047d0:	4d01                	li	s10,0
a00047d2:	4ca5                	li	s9,9
a00047d4:	14d9                	addi	s1,s1,-10
a00047d6:	02000c13          	li	s8,32
a00047da:	853a                	mv	a0,a4
a00047dc:	85be                	mv	a1,a5
a00047de:	4681                	li	a3,0
a00047e0:	c632                	sw	a2,12(sp)
a00047e2:	c43a                	sw	a4,8(sp)
a00047e4:	c23e                	sw	a5,4(sp)
a00047e6:	f7bfc0ef          	jal	ra,a0001760 <__umoddi3>
a00047ea:	0ff57513          	zext.b	a0,a0
a00047ee:	4792                	lw	a5,4(sp)
a00047f0:	4722                	lw	a4,8(sp)
a00047f2:	4632                	lw	a2,12(sp)
a00047f4:	04ace063          	bltu	s9,a0,a0004834 <print_integer+0xee>
a00047f8:	03050513          	addi	a0,a0,48
a00047fc:	0d85                	addi	s11,s11,1
a00047fe:	010d8693          	addi	a3,s11,16
a0004802:	0ff57513          	zext.b	a0,a0
a0004806:	968a                	add	a3,a3,sp
a0004808:	fea68fa3          	sb	a0,-1(a3)
a000480c:	85be                	mv	a1,a5
a000480e:	853a                	mv	a0,a4
a0004810:	4681                	li	a3,0
a0004812:	c632                	sw	a2,12(sp)
a0004814:	c43a                	sw	a4,8(sp)
a0004816:	c23e                	sw	a5,4(sp)
a0004818:	be9fc0ef          	jal	ra,a0001400 <__udivdi3>
a000481c:	4792                	lw	a5,4(sp)
a000481e:	4722                	lw	a4,8(sp)
a0004820:	4632                	lw	a2,12(sp)
a0004822:	00fd1463          	bne	s10,a5,a000482a <print_integer+0xe4>
a0004826:	f6c762e3          	bltu	a4,a2,a000478a <print_integer+0x44>
a000482a:	f78d80e3          	beq	s11,s8,a000478a <print_integer+0x44>
a000482e:	872a                	mv	a4,a0
a0004830:	87ae                	mv	a5,a1
a0004832:	b765                	j	a00047da <print_integer+0x94>
a0004834:	9526                	add	a0,a0,s1
a0004836:	b7d9                	j	a00047fc <print_integer+0xb6>
a0004838:	0808                	addi	a0,sp,16
a000483a:	00f5558b          	srb	a1,a0,a5,0
a000483e:	0785                	addi	a5,a5,1
a0004840:	c709                	beqz	a4,a000484a <print_integer+0x104>
a0004842:	0137f463          	bgeu	a5,s3,a000484a <print_integer+0x104>
a0004846:	fed799e3          	bne	a5,a3,a0004838 <print_integer+0xf2>
a000484a:	02000713          	li	a4,32
a000484e:	03000693          	li	a3,48
a0004852:	a029                	j	a000485c <print_integer+0x116>
a0004854:	080c                	addi	a1,sp,16
a0004856:	00f5d68b          	srb	a3,a1,a5,0
a000485a:	0785                	addi	a5,a5,1
a000485c:	55c6                	lw	a1,112(sp)
a000485e:	00b7f463          	bgeu	a5,a1,a0004866 <print_integer+0x120>
a0004862:	fee799e3          	bne	a5,a4,a0004854 <print_integer+0x10e>
a0004866:	4721                	li	a4,8
a0004868:	00e61563          	bne	a2,a4,a0004872 <print_integer+0x12c>
a000486c:	00fdf363          	bgeu	s11,a5,a0004872 <print_integer+0x12c>
a0004870:	983d                	andi	s0,s0,-17
a0004872:	6705                	lui	a4,0x1
a0004874:	0741                	addi	a4,a4,16
a0004876:	8f61                	and	a4,a4,s0
a0004878:	cb39                	beqz	a4,a00048ce <print_integer+0x188>
a000487a:	40047713          	andi	a4,s0,1024
a000487e:	e345                	bnez	a4,a000491e <print_integer+0x1d8>
a0004880:	cfd9                	beqz	a5,a000491e <print_integer+0x1d8>
a0004882:	5746                	lw	a4,112(sp)
a0004884:	00f70463          	beq	a4,a5,a000488c <print_integer+0x146>
a0004888:	08f99b63          	bne	s3,a5,a000491e <print_integer+0x1d8>
a000488c:	08fdf963          	bgeu	s11,a5,a000491e <print_integer+0x1d8>
a0004890:	fff78713          	addi	a4,a5,-1
a0004894:	c741                	beqz	a4,a000491c <print_integer+0x1d6>
a0004896:	46c1                	li	a3,16
a0004898:	08d61763          	bne	a2,a3,a0004926 <print_integer+0x1e0>
a000489c:	17f9                	addi	a5,a5,-2
a000489e:	00ede363          	bltu	s11,a4,a00048a4 <print_integer+0x15e>
a00048a2:	87ba                	mv	a5,a4
a00048a4:	02047713          	andi	a4,s0,32
a00048a8:	eb49                	bnez	a4,a000493a <print_integer+0x1f4>
a00048aa:	477d                	li	a4,31
a00048ac:	04f76163          	bltu	a4,a5,a00048ee <print_integer+0x1a8>
a00048b0:	07800713          	li	a4,120
a00048b4:	0814                	addi	a3,sp,16
a00048b6:	00f6d70b          	srb	a4,a3,a5,0
a00048ba:	0785                	addi	a5,a5,1
a00048bc:	477d                	li	a4,31
a00048be:	02f76863          	bltu	a4,a5,a00048ee <print_integer+0x1a8>
a00048c2:	03000713          	li	a4,48
a00048c6:	0814                	addi	a3,sp,16
a00048c8:	00f6d70b          	srb	a4,a3,a5,0
a00048cc:	0785                	addi	a5,a5,1
a00048ce:	477d                	li	a4,31
a00048d0:	00f76f63          	bltu	a4,a5,a00048ee <print_integer+0x1a8>
a00048d4:	02d00713          	li	a4,45
a00048d8:	00091763          	bnez	s2,a00048e6 <print_integer+0x1a0>
a00048dc:	00447713          	andi	a4,s0,4
a00048e0:	c33d                	beqz	a4,a0004946 <print_integer+0x200>
a00048e2:	02b00713          	li	a4,43
a00048e6:	0814                	addi	a3,sp,16
a00048e8:	00f6d70b          	srb	a4,a3,a5,0
a00048ec:	0785                	addi	a5,a5,1
a00048ee:	88a2                	mv	a7,s0
a00048f0:	884e                	mv	a6,s3
a00048f2:	0818                	addi	a4,sp,16
a00048f4:	86de                	mv	a3,s7
a00048f6:	865a                	mv	a2,s6
a00048f8:	85d6                	mv	a1,s5
a00048fa:	8552                	mv	a0,s4
a00048fc:	3b71                	jal	a0004698 <out_rev_>
a00048fe:	50b6                	lw	ra,108(sp)
a0004900:	5426                	lw	s0,104(sp)
a0004902:	5496                	lw	s1,100(sp)
a0004904:	5906                	lw	s2,96(sp)
a0004906:	49f6                	lw	s3,92(sp)
a0004908:	4a66                	lw	s4,88(sp)
a000490a:	4ad6                	lw	s5,84(sp)
a000490c:	4b46                	lw	s6,80(sp)
a000490e:	4bb6                	lw	s7,76(sp)
a0004910:	4c26                	lw	s8,72(sp)
a0004912:	4c96                	lw	s9,68(sp)
a0004914:	4d06                	lw	s10,64(sp)
a0004916:	5df2                	lw	s11,60(sp)
a0004918:	6165                	addi	sp,sp,112
a000491a:	8082                	ret
a000491c:	4781                	li	a5,0
a000491e:	4741                	li	a4,16
a0004920:	00e61463          	bne	a2,a4,a0004928 <print_integer+0x1e2>
a0004924:	b741                	j	a00048a4 <print_integer+0x15e>
a0004926:	87ba                	mv	a5,a4
a0004928:	4709                	li	a4,2
a000492a:	f8e619e3          	bne	a2,a4,a00048bc <print_integer+0x176>
a000492e:	477d                	li	a4,31
a0004930:	faf76fe3          	bltu	a4,a5,a00048ee <print_integer+0x1a8>
a0004934:	06200713          	li	a4,98
a0004938:	bfb5                	j	a00048b4 <print_integer+0x16e>
a000493a:	477d                	li	a4,31
a000493c:	faf769e3          	bltu	a4,a5,a00048ee <print_integer+0x1a8>
a0004940:	05800713          	li	a4,88
a0004944:	bf85                	j	a00048b4 <print_integer+0x16e>
a0004946:	00847713          	andi	a4,s0,8
a000494a:	d355                	beqz	a4,a00048ee <print_integer+0x1a8>
a000494c:	02000713          	li	a4,32
a0004950:	bf59                	j	a00048e6 <print_integer+0x1a0>

a0004952 <get_components>:
a0004952:	715d                	addi	sp,sp,-80
a0004954:	01f65793          	srli	a5,a2,0x1f
a0004958:	dc52                	sw	s4,56(sp)
a000495a:	da56                	sw	s5,52(sp)
a000495c:	d462                	sw	s8,40(sp)
a000495e:	d266                	sw	s9,36(sp)
a0004960:	c686                	sw	ra,76(sp)
a0004962:	c4a2                	sw	s0,72(sp)
a0004964:	c2a6                	sw	s1,68(sp)
a0004966:	c0ca                	sw	s2,64(sp)
a0004968:	de4e                	sw	s3,60(sp)
a000496a:	d85a                	sw	s6,48(sp)
a000496c:	d65e                	sw	s7,44(sp)
a000496e:	d06a                	sw	s10,32(sp)
a0004970:	ce6e                	sw	s11,28(sp)
a0004972:	c03e                	sw	a5,0(sp)
a0004974:	8aaa                	mv	s5,a0
a0004976:	8c2e                	mv	s8,a1
a0004978:	8a32                	mv	s4,a2
a000497a:	8cb6                	mv	s9,a3
a000497c:	c789                	beqz	a5,a0004986 <get_components+0x34>
a000497e:	800007b7          	lui	a5,0x80000
a0004982:	00c7ca33          	xor	s4,a5,a2
a0004986:	8562                	mv	a0,s8
a0004988:	85d2                	mv	a1,s4
a000498a:	9beff0ef          	jal	ra,a0003b48 <__fixdfdi>
a000498e:	a00087b7          	lui	a5,0xa0008
a0004992:	f1878793          	addi	a5,a5,-232 # a0007f18 <__psram_limit+0xf7c07f18>
a0004996:	0797978b          	addsl	a5,a5,s9,3
a000499a:	0007ab03          	lw	s6,0(a5)
a000499e:	0047ab83          	lw	s7,4(a5)
a00049a2:	892a                	mv	s2,a0
a00049a4:	89ae                	mv	s3,a1
a00049a6:	aa6ff0ef          	jal	ra,a0003c4c <__floatdidf>
a00049aa:	862a                	mv	a2,a0
a00049ac:	86ae                	mv	a3,a1
a00049ae:	8562                	mv	a0,s8
a00049b0:	85d2                	mv	a1,s4
a00049b2:	fb8fe0ef          	jal	ra,a000316a <__subdf3>
a00049b6:	865a                	mv	a2,s6
a00049b8:	86de                	mv	a3,s7
a00049ba:	a16fe0ef          	jal	ra,a0002bd0 <__muldf3>
a00049be:	8d2a                	mv	s10,a0
a00049c0:	8dae                	mv	s11,a1
a00049c2:	986ff0ef          	jal	ra,a0003b48 <__fixdfdi>
a00049c6:	842a                	mv	s0,a0
a00049c8:	84ae                	mv	s1,a1
a00049ca:	a82ff0ef          	jal	ra,a0003c4c <__floatdidf>
a00049ce:	862a                	mv	a2,a0
a00049d0:	86ae                	mv	a3,a1
a00049d2:	856a                	mv	a0,s10
a00049d4:	85ee                	mv	a1,s11
a00049d6:	f94fe0ef          	jal	ra,a000316a <__subdf3>
a00049da:	a0008837          	lui	a6,0xa0008
a00049de:	e9082d03          	lw	s10,-368(a6) # a0007e90 <__psram_limit+0xf7c07e90>
a00049e2:	e9482d83          	lw	s11,-364(a6)
a00049e6:	c42a                	sw	a0,8(sp)
a00049e8:	866a                	mv	a2,s10
a00049ea:	86ee                	mv	a3,s11
a00049ec:	c62e                	sw	a1,12(sp)
a00049ee:	886fe0ef          	jal	ra,a0002a74 <__gedf2>
a00049f2:	a0008837          	lui	a6,0xa0008
a00049f6:	c242                	sw	a6,4(sp)
a00049f8:	4722                	lw	a4,8(sp)
a00049fa:	47b2                	lw	a5,12(sp)
a00049fc:	0aa05963          	blez	a0,a0004aae <get_components+0x15c>
a0004a00:	4d05                	li	s10,1
a0004a02:	4d81                	li	s11,0
a0004a04:	c1a41477          	add64	s0,s0,s10
a0004a08:	8522                	mv	a0,s0
a0004a0a:	85a6                	mv	a1,s1
a0004a0c:	a40ff0ef          	jal	ra,a0003c4c <__floatdidf>
a0004a10:	862a                	mv	a2,a0
a0004a12:	86ae                	mv	a3,a1
a0004a14:	855a                	mv	a0,s6
a0004a16:	85de                	mv	a1,s7
a0004a18:	90afe0ef          	jal	ra,a0002b22 <__ledf2>
a0004a1c:	00a04663          	bgtz	a0,a0004a28 <get_components+0xd6>
a0004a20:	c1a91977          	add64	s2,s2,s10
a0004a24:	4401                	li	s0,0
a0004a26:	4481                	li	s1,0
a0004a28:	040c9863          	bnez	s9,a0004a78 <get_components+0x126>
a0004a2c:	854a                	mv	a0,s2
a0004a2e:	85ce                	mv	a1,s3
a0004a30:	a1cff0ef          	jal	ra,a0003c4c <__floatdidf>
a0004a34:	862a                	mv	a2,a0
a0004a36:	86ae                	mv	a3,a1
a0004a38:	8562                	mv	a0,s8
a0004a3a:	85d2                	mv	a1,s4
a0004a3c:	f2efe0ef          	jal	ra,a000316a <__subdf3>
a0004a40:	4792                	lw	a5,4(sp)
a0004a42:	8c2a                	mv	s8,a0
a0004a44:	8cae                	mv	s9,a1
a0004a46:	e907ab03          	lw	s6,-368(a5)
a0004a4a:	e947ab83          	lw	s7,-364(a5)
a0004a4e:	865a                	mv	a2,s6
a0004a50:	86de                	mv	a3,s7
a0004a52:	8d0fe0ef          	jal	ra,a0002b22 <__ledf2>
a0004a56:	00055a63          	bgez	a0,a0004a6a <get_components+0x118>
a0004a5a:	865a                	mv	a2,s6
a0004a5c:	86de                	mv	a3,s7
a0004a5e:	8562                	mv	a0,s8
a0004a60:	85e6                	mv	a1,s9
a0004a62:	812fe0ef          	jal	ra,a0002a74 <__gedf2>
a0004a66:	00a05963          	blez	a0,a0004a78 <get_components+0x126>
a0004a6a:	00197793          	andi	a5,s2,1
a0004a6e:	c789                	beqz	a5,a0004a78 <get_components+0x126>
a0004a70:	4705                	li	a4,1
a0004a72:	4781                	li	a5,0
a0004a74:	c0e91977          	add64	s2,s2,a4
a0004a78:	4782                	lw	a5,0(sp)
a0004a7a:	008aa423          	sw	s0,8(s5)
a0004a7e:	40b6                	lw	ra,76(sp)
a0004a80:	4426                	lw	s0,72(sp)
a0004a82:	012aa023          	sw	s2,0(s5)
a0004a86:	013aa223          	sw	s3,4(s5)
a0004a8a:	009aa623          	sw	s1,12(s5)
a0004a8e:	00fa8823          	sb	a5,16(s5)
a0004a92:	4496                	lw	s1,68(sp)
a0004a94:	4906                	lw	s2,64(sp)
a0004a96:	59f2                	lw	s3,60(sp)
a0004a98:	5a62                	lw	s4,56(sp)
a0004a9a:	5b42                	lw	s6,48(sp)
a0004a9c:	5bb2                	lw	s7,44(sp)
a0004a9e:	5c22                	lw	s8,40(sp)
a0004aa0:	5c92                	lw	s9,36(sp)
a0004aa2:	5d02                	lw	s10,32(sp)
a0004aa4:	4df2                	lw	s11,28(sp)
a0004aa6:	8556                	mv	a0,s5
a0004aa8:	5ad2                	lw	s5,52(sp)
a0004aaa:	6161                	addi	sp,sp,80
a0004aac:	8082                	ret
a0004aae:	866a                	mv	a2,s10
a0004ab0:	86ee                	mv	a3,s11
a0004ab2:	853a                	mv	a0,a4
a0004ab4:	85be                	mv	a1,a5
a0004ab6:	f1bfd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004aba:	f53d                	bnez	a0,a0004a28 <get_components+0xd6>
a0004abc:	009467b3          	or	a5,s0,s1
a0004ac0:	c781                	beqz	a5,a0004ac8 <get_components+0x176>
a0004ac2:	00147793          	andi	a5,s0,1
a0004ac6:	d3ad                	beqz	a5,a0004a28 <get_components+0xd6>
a0004ac8:	4705                	li	a4,1
a0004aca:	4781                	li	a5,0
a0004acc:	c0e41477          	add64	s0,s0,a4
a0004ad0:	bfa1                	j	a0004a28 <get_components+0xd6>

a0004ad2 <out_console>:
a0004ad2:	62fc37b7          	lui	a5,0x62fc3
a0004ad6:	85aa                	mv	a1,a0
a0004ad8:	e6c7a503          	lw	a0,-404(a5) # 62fc2e6c <console>
a0004adc:	c2fbc317          	auipc	t1,0xc2fbc
a0004ae0:	c2c30067          	jr	-980(t1) # 62fc0708 <qcc74x_uart_putchar>

a0004ae4 <print_broken_up_decimal.isra.0>:
a0004ae4:	715d                	addi	sp,sp,-80
a0004ae6:	d266                	sw	s9,36(sp)
a0004ae8:	4cd6                	lw	s9,84(sp)
a0004aea:	c4a2                	sw	s0,72(sp)
a0004aec:	c0ca                	sw	s2,64(sp)
a0004aee:	dc52                	sw	s4,56(sp)
a0004af0:	da56                	sw	s5,52(sp)
a0004af2:	d85a                	sw	s6,48(sp)
a0004af4:	d65e                	sw	s7,44(sp)
a0004af6:	d462                	sw	s8,40(sp)
a0004af8:	d06a                	sw	s10,32(sp)
a0004afa:	c686                	sw	ra,76(sp)
a0004afc:	c2a6                	sw	s1,68(sp)
a0004afe:	de4e                	sw	s3,60(sp)
a0004b00:	ce6e                	sw	s11,28(sp)
a0004b02:	c23e                	sw	a5,4(sp)
a0004b04:	c442                	sw	a6,8(sp)
a0004b06:	c646                	sw	a7,12(sp)
a0004b08:	4d46                	lw	s10,80(sp)
a0004b0a:	4be6                	lw	s7,88(sp)
a0004b0c:	4c76                	lw	s8,92(sp)
a0004b0e:	5906                	lw	s2,96(sp)
a0004b10:	5416                	lw	s0,100(sp)
a0004b12:	8a2a                	mv	s4,a0
a0004b14:	8aae                	mv	s5,a1
a0004b16:	8b3a                	mv	s6,a4
a0004b18:	0a0c8563          	beqz	s9,a0004bc2 <print_broken_up_decimal.isra.0+0xde>
a0004b1c:	6705                	lui	a4,0x1
a0004b1e:	81070713          	addi	a4,a4,-2032 # 810 <__RFTLV_SIZE_HOLE+0x10>
a0004b22:	00ec7733          	and	a4,s8,a4
a0004b26:	80070713          	addi	a4,a4,-2048
a0004b2a:	89b2                	mv	s3,a2
a0004b2c:	84b6                	mv	s1,a3
a0004b2e:	14071a63          	bnez	a4,a0004c82 <print_broken_up_decimal.isra.0+0x19e>
a0004b32:	00d04463          	bgtz	a3,a0004b3a <print_broken_up_decimal.isra.0+0x56>
a0004b36:	e2d5                	bnez	a3,a0004bda <print_broken_up_decimal.isra.0+0xf6>
a0004b38:	c24d                	beqz	a2,a0004bda <print_broken_up_decimal.isra.0+0xf6>
a0004b3a:	4629                	li	a2,10
a0004b3c:	4681                	li	a3,0
a0004b3e:	854e                	mv	a0,s3
a0004b40:	85a6                	mv	a1,s1
a0004b42:	d3afc0ef          	jal	ra,a000107c <__moddi3>
a0004b46:	8d4d                	or	a0,a0,a1
a0004b48:	12051a63          	bnez	a0,a0004c7c <print_broken_up_decimal.isra.0+0x198>
a0004b4c:	854e                	mv	a0,s3
a0004b4e:	85a6                	mv	a1,s1
a0004b50:	4629                	li	a2,10
a0004b52:	4681                	li	a3,0
a0004b54:	980fc0ef          	jal	ra,a0000cd4 <__divdi3>
a0004b58:	1cfd                	addi	s9,s9,-1
a0004b5a:	89aa                	mv	s3,a0
a0004b5c:	84ae                	mv	s1,a1
a0004b5e:	bff1                	j	a0004b3a <print_broken_up_decimal.isra.0+0x56>
a0004b60:	4629                	li	a2,10
a0004b62:	4681                	li	a3,0
a0004b64:	854e                	mv	a0,s3
a0004b66:	85a6                	mv	a1,s1
a0004b68:	d14fc0ef          	jal	ra,a000107c <__moddi3>
a0004b6c:	03050513          	addi	a0,a0,48
a0004b70:	0405                	addi	s0,s0,1
a0004b72:	008dd50b          	srb	a0,s11,s0,0
a0004b76:	85a6                	mv	a1,s1
a0004b78:	854e                	mv	a0,s3
a0004b7a:	4629                	li	a2,10
a0004b7c:	4681                	li	a3,0
a0004b7e:	956fc0ef          	jal	ra,a0000cd4 <__divdi3>
a0004b82:	84ae                	mv	s1,a1
a0004b84:	8dc9                	or	a1,a1,a0
a0004b86:	1cfd                	addi	s9,s9,-1
a0004b88:	89aa                	mv	s3,a0
a0004b8a:	02000713          	li	a4,32
a0004b8e:	0e059e63          	bnez	a1,a0004c8a <print_broken_up_decimal.isra.0+0x1a6>
a0004b92:	008c87b3          	add	a5,s9,s0
a0004b96:	02000613          	li	a2,32
a0004b9a:	03000593          	li	a1,48
a0004b9e:	0ec40863          	beq	s0,a2,a0004c8e <print_broken_up_decimal.isra.0+0x1aa>
a0004ba2:	00140713          	addi	a4,s0,1
a0004ba6:	008906b3          	add	a3,s2,s0
a0004baa:	00879863          	bne	a5,s0,a0004bba <print_broken_up_decimal.isra.0+0xd6>
a0004bae:	02e00793          	li	a5,46
a0004bb2:	00f68023          	sb	a5,0(a3)
a0004bb6:	843a                	mv	s0,a4
a0004bb8:	a00d                	j	a0004bda <print_broken_up_decimal.isra.0+0xf6>
a0004bba:	0089558b          	srb	a1,s2,s0,0
a0004bbe:	843a                	mv	s0,a4
a0004bc0:	bff9                	j	a0004b9e <print_broken_up_decimal.isra.0+0xba>
a0004bc2:	010c7793          	andi	a5,s8,16
a0004bc6:	cb91                	beqz	a5,a0004bda <print_broken_up_decimal.isra.0+0xf6>
a0004bc8:	02000793          	li	a5,32
a0004bcc:	0cf40163          	beq	s0,a5,a0004c8e <print_broken_up_decimal.isra.0+0x1aa>
a0004bd0:	02e00793          	li	a5,46
a0004bd4:	0089578b          	srb	a5,s2,s0,0
a0004bd8:	0405                	addi	s0,s0,1
a0004bda:	02000993          	li	s3,32
a0004bde:	fff90493          	addi	s1,s2,-1
a0004be2:	a035                	j	a0004c0e <print_broken_up_decimal.isra.0+0x12a>
a0004be4:	4629                	li	a2,10
a0004be6:	4681                	li	a3,0
a0004be8:	8552                	mv	a0,s4
a0004bea:	85d6                	mv	a1,s5
a0004bec:	c90fc0ef          	jal	ra,a000107c <__moddi3>
a0004bf0:	03050513          	addi	a0,a0,48
a0004bf4:	0405                	addi	s0,s0,1
a0004bf6:	0084d50b          	srb	a0,s1,s0,0
a0004bfa:	85d6                	mv	a1,s5
a0004bfc:	8552                	mv	a0,s4
a0004bfe:	4629                	li	a2,10
a0004c00:	4681                	li	a3,0
a0004c02:	8d2fc0ef          	jal	ra,a0000cd4 <__divdi3>
a0004c06:	8aae                	mv	s5,a1
a0004c08:	8dc9                	or	a1,a1,a0
a0004c0a:	8a2a                	mv	s4,a0
a0004c0c:	c1d9                	beqz	a1,a0004c92 <print_broken_up_decimal.isra.0+0x1ae>
a0004c0e:	fd341be3          	bne	s0,s3,a0004be4 <print_broken_up_decimal.isra.0+0x100>
a0004c12:	a8b5                	j	a0004c8e <print_broken_up_decimal.isra.0+0x1aa>
a0004c14:	0089570b          	srb	a4,s2,s0,0
a0004c18:	0405                	addi	s0,s0,1
a0004c1a:	03747b63          	bgeu	s0,s7,a0004c50 <print_broken_up_decimal.isra.0+0x16c>
a0004c1e:	fef41be3          	bne	s0,a5,a0004c14 <print_broken_up_decimal.isra.0+0x130>
a0004c22:	87a2                	mv	a5,s0
a0004c24:	4426                	lw	s0,72(sp)
a0004c26:	4632                	lw	a2,12(sp)
a0004c28:	45a2                	lw	a1,8(sp)
a0004c2a:	4512                	lw	a0,4(sp)
a0004c2c:	40b6                	lw	ra,76(sp)
a0004c2e:	4496                	lw	s1,68(sp)
a0004c30:	59f2                	lw	s3,60(sp)
a0004c32:	5a62                	lw	s4,56(sp)
a0004c34:	5ad2                	lw	s5,52(sp)
a0004c36:	5b42                	lw	s6,48(sp)
a0004c38:	5c92                	lw	s9,36(sp)
a0004c3a:	4df2                	lw	s11,28(sp)
a0004c3c:	88e2                	mv	a7,s8
a0004c3e:	885e                	mv	a6,s7
a0004c40:	5c22                	lw	s8,40(sp)
a0004c42:	5bb2                	lw	s7,44(sp)
a0004c44:	874a                	mv	a4,s2
a0004c46:	86ea                	mv	a3,s10
a0004c48:	4906                	lw	s2,64(sp)
a0004c4a:	5d02                	lw	s10,32(sp)
a0004c4c:	6161                	addi	sp,sp,80
a0004c4e:	b4a9                	j	a0004698 <out_rev_>
a0004c50:	02000793          	li	a5,32
a0004c54:	fcf407e3          	beq	s0,a5,a0004c22 <print_broken_up_decimal.isra.0+0x13e>
a0004c58:	000b0863          	beqz	s6,a0004c68 <print_broken_up_decimal.isra.0+0x184>
a0004c5c:	02d00793          	li	a5,45
a0004c60:	0089578b          	srb	a5,s2,s0,0
a0004c64:	0405                	addi	s0,s0,1
a0004c66:	bf75                	j	a0004c22 <print_broken_up_decimal.isra.0+0x13e>
a0004c68:	004c7713          	andi	a4,s8,4
a0004c6c:	c701                	beqz	a4,a0004c74 <print_broken_up_decimal.isra.0+0x190>
a0004c6e:	02b00793          	li	a5,43
a0004c72:	b7fd                	j	a0004c60 <print_broken_up_decimal.isra.0+0x17c>
a0004c74:	008c7713          	andi	a4,s8,8
a0004c78:	d74d                	beqz	a4,a0004c22 <print_broken_up_decimal.isra.0+0x13e>
a0004c7a:	b7dd                	j	a0004c60 <print_broken_up_decimal.isra.0+0x17c>
a0004c7c:	0099e733          	or	a4,s3,s1
a0004c80:	df29                	beqz	a4,a0004bda <print_broken_up_decimal.isra.0+0xf6>
a0004c82:	02000713          	li	a4,32
a0004c86:	fff90d93          	addi	s11,s2,-1
a0004c8a:	ece41be3          	bne	s0,a4,a0004b60 <print_broken_up_decimal.isra.0+0x7c>
a0004c8e:	02000413          	li	s0,32
a0004c92:	003c7793          	andi	a5,s8,3
a0004c96:	4705                	li	a4,1
a0004c98:	fae79ce3          	bne	a5,a4,a0004c50 <print_broken_up_decimal.isra.0+0x16c>
a0004c9c:	fa0b8ae3          	beqz	s7,a0004c50 <print_broken_up_decimal.isra.0+0x16c>
a0004ca0:	000b1563          	bnez	s6,a0004caa <print_broken_up_decimal.isra.0+0x1c6>
a0004ca4:	00cc7793          	andi	a5,s8,12
a0004ca8:	c391                	beqz	a5,a0004cac <print_broken_up_decimal.isra.0+0x1c8>
a0004caa:	1bfd                	addi	s7,s7,-1
a0004cac:	02000793          	li	a5,32
a0004cb0:	03000713          	li	a4,48
a0004cb4:	b79d                	j	a0004c1a <print_broken_up_decimal.isra.0+0x136>

a0004cb6 <update_normalization>:
a0004cb6:	0085c783          	lbu	a5,8(a1)
a0004cba:	1141                	addi	sp,sp,-16
a0004cbc:	c422                	sw	s0,8(sp)
a0004cbe:	c606                	sw	ra,12(sp)
a0004cc0:	842a                	mv	s0,a0
a0004cc2:	0005a303          	lw	t1,0(a1)
a0004cc6:	0045a803          	lw	a6,4(a1)
a0004cca:	88b2                	mv	a7,a2
a0004ccc:	8536                	mv	a0,a3
a0004cce:	c799                	beqz	a5,a0004cdc <update_normalization+0x26>
a0004cd0:	851a                	mv	a0,t1
a0004cd2:	85c2                	mv	a1,a6
a0004cd4:	efdfd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004cd8:	4785                	li	a5,1
a0004cda:	a815                	j	a0004d0e <update_normalization+0x58>
a0004cdc:	7948378b          	extu	a5,a6,30,20
a0004ce0:	c0178793          	addi	a5,a5,-1023
a0004ce4:	41f7d713          	srai	a4,a5,0x1f
a0004ce8:	8fb9                	xor	a5,a5,a4
a0004cea:	40e78733          	sub	a4,a5,a4
a0004cee:	7946b78b          	extu	a5,a3,30,20
a0004cf2:	c0178793          	addi	a5,a5,-1023
a0004cf6:	41f7d693          	srai	a3,a5,0x1f
a0004cfa:	8fb5                	xor	a5,a5,a3
a0004cfc:	8f95                	sub	a5,a5,a3
a0004cfe:	02e7d163          	bge	a5,a4,a0004d20 <update_normalization+0x6a>
a0004d02:	86aa                	mv	a3,a0
a0004d04:	85c2                	mv	a1,a6
a0004d06:	851a                	mv	a0,t1
a0004d08:	e40fd0ef          	jal	ra,a0002348 <__divdf3>
a0004d0c:	4781                	li	a5,0
a0004d0e:	c008                	sw	a0,0(s0)
a0004d10:	40b2                	lw	ra,12(sp)
a0004d12:	c04c                	sw	a1,4(s0)
a0004d14:	00f40423          	sb	a5,8(s0)
a0004d18:	8522                	mv	a0,s0
a0004d1a:	4422                	lw	s0,8(sp)
a0004d1c:	0141                	addi	sp,sp,16
a0004d1e:	8082                	ret
a0004d20:	87aa                	mv	a5,a0
a0004d22:	861a                	mv	a2,t1
a0004d24:	86c2                	mv	a3,a6
a0004d26:	8546                	mv	a0,a7
a0004d28:	85be                	mv	a1,a5
a0004d2a:	e1efd0ef          	jal	ra,a0002348 <__divdf3>
a0004d2e:	b76d                	j	a0004cd8 <update_normalization+0x22>

a0004d30 <print_exponential_number>:
a0004d30:	7155                	addi	sp,sp,-208
a0004d32:	d95a                	sw	s6,176(sp)
a0004d34:	8b3e                	mv	s6,a5
a0004d36:	83fd                	srli	a5,a5,0x1f
a0004d38:	c3a6                	sw	s1,196(sp)
a0004d3a:	c1ca                	sw	s2,192(sp)
a0004d3c:	d75e                	sw	s7,172(sp)
a0004d3e:	d16a                	sw	s10,160(sp)
a0004d40:	cf6e                	sw	s11,156(sp)
a0004d42:	c786                	sw	ra,204(sp)
a0004d44:	c5a2                	sw	s0,200(sp)
a0004d46:	df4e                	sw	s3,188(sp)
a0004d48:	dd52                	sw	s4,184(sp)
a0004d4a:	db56                	sw	s5,180(sp)
a0004d4c:	d562                	sw	s8,168(sp)
a0004d4e:	d366                	sw	s9,164(sp)
a0004d50:	d62e                	sw	a1,44(sp)
a0004d52:	da32                	sw	a2,52(sp)
a0004d54:	d836                	sw	a3,48(sp)
a0004d56:	dc46                	sw	a7,56(sp)
a0004d58:	de3e                	sw	a5,60(sp)
a0004d5a:	4dce                	lw	s11,208(sp)
a0004d5c:	8d2a                	mv	s10,a0
a0004d5e:	8bba                	mv	s7,a4
a0004d60:	84c2                	mv	s1,a6
a0004d62:	4901                	li	s2,0
a0004d64:	c789                	beqz	a5,a0004d6e <print_exponential_number+0x3e>
a0004d66:	800007b7          	lui	a5,0x80000
a0004d6a:	0167cb33          	xor	s6,a5,s6
a0004d6e:	4601                	li	a2,0
a0004d70:	4681                	li	a3,0
a0004d72:	855e                	mv	a0,s7
a0004d74:	85da                	mv	a1,s6
a0004d76:	c5bfd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004d7a:	4401                	li	s0,0
a0004d7c:	20050363          	beqz	a0,a0004f82 <print_exponential_number+0x252>
a0004d80:	794b350b          	extu	a0,s6,30,20
a0004d84:	c0150513          	addi	a0,a0,-1023
a0004d88:	d5bfe0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004d8c:	a00087b7          	lui	a5,0xa0008
a0004d90:	e987a603          	lw	a2,-360(a5) # a0007e98 <__psram_limit+0xf7c07e98>
a0004d94:	e9c7a683          	lw	a3,-356(a5)
a0004d98:	a0008c37          	lui	s8,0xa0008
a0004d9c:	e35fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004da0:	a00087b7          	lui	a5,0xa0008
a0004da4:	ea07a603          	lw	a2,-352(a5) # a0007ea0 <__psram_limit+0xf7c07ea0>
a0004da8:	ea47a683          	lw	a3,-348(a5)
a0004dac:	cf3fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004db0:	001007b7          	lui	a5,0x100
a0004db4:	a0008737          	lui	a4,0xa0008
a0004db8:	17fd                	addi	a5,a5,-1
a0004dba:	ea872603          	lw	a2,-344(a4) # a0007ea8 <__psram_limit+0xf7c07ea8>
a0004dbe:	eac72683          	lw	a3,-340(a4)
a0004dc2:	00fb77b3          	and	a5,s6,a5
a0004dc6:	3ff00737          	lui	a4,0x3ff00
a0004dca:	8f5d                	or	a4,a4,a5
a0004dcc:	892a                	mv	s2,a0
a0004dce:	89ae                	mv	s3,a1
a0004dd0:	855e                	mv	a0,s7
a0004dd2:	85ba                	mv	a1,a4
a0004dd4:	b96fe0ef          	jal	ra,a000316a <__subdf3>
a0004dd8:	a00087b7          	lui	a5,0xa0008
a0004ddc:	eb07a603          	lw	a2,-336(a5) # a0007eb0 <__psram_limit+0xf7c07eb0>
a0004de0:	eb47a683          	lw	a3,-332(a5)
a0004de4:	dedfd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004de8:	862a                	mv	a2,a0
a0004dea:	86ae                	mv	a3,a1
a0004dec:	854a                	mv	a0,s2
a0004dee:	85ce                	mv	a1,s3
a0004df0:	caffc0ef          	jal	ra,a0001a9e <__adddf3>
a0004df4:	c2bfe0ef          	jal	ra,a0003a1e <__fixdfsi>
a0004df8:	842a                	mv	s0,a0
a0004dfa:	ce9fe0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004dfe:	a00087b7          	lui	a5,0xa0008
a0004e02:	eb87a603          	lw	a2,-328(a5) # a0007eb8 <__psram_limit+0xf7c07eb8>
a0004e06:	ebc7a683          	lw	a3,-324(a5)
a0004e0a:	892a                	mv	s2,a0
a0004e0c:	89ae                	mv	s3,a1
a0004e0e:	dc3fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004e12:	a00087b7          	lui	a5,0xa0008
a0004e16:	e907a603          	lw	a2,-368(a5) # a0007e90 <__psram_limit+0xf7c07e90>
a0004e1a:	e947a683          	lw	a3,-364(a5)
a0004e1e:	c81fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004e22:	bfdfe0ef          	jal	ra,a0003a1e <__fixdfsi>
a0004e26:	a00087b7          	lui	a5,0xa0008
a0004e2a:	ec07a603          	lw	a2,-320(a5) # a0007ec0 <__psram_limit+0xf7c07ec0>
a0004e2e:	ec47a683          	lw	a3,-316(a5)
a0004e32:	8caa                	mv	s9,a0
a0004e34:	85ce                	mv	a1,s3
a0004e36:	854a                	mv	a0,s2
a0004e38:	d99fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004e3c:	892a                	mv	s2,a0
a0004e3e:	8566                	mv	a0,s9
a0004e40:	89ae                	mv	s3,a1
a0004e42:	ca1fe0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004e46:	a00087b7          	lui	a5,0xa0008
a0004e4a:	ec87a603          	lw	a2,-312(a5) # a0007ec8 <__psram_limit+0xf7c07ec8>
a0004e4e:	ecc7a683          	lw	a3,-308(a5)
a0004e52:	d7ffd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004e56:	862a                	mv	a2,a0
a0004e58:	86ae                	mv	a3,a1
a0004e5a:	854a                	mv	a0,s2
a0004e5c:	85ce                	mv	a1,s3
a0004e5e:	b0cfe0ef          	jal	ra,a000316a <__subdf3>
a0004e62:	862a                	mv	a2,a0
a0004e64:	86ae                	mv	a3,a1
a0004e66:	8a2a                	mv	s4,a0
a0004e68:	8aae                	mv	s5,a1
a0004e6a:	d67fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004e6e:	892a                	mv	s2,a0
a0004e70:	89ae                	mv	s3,a1
a0004e72:	8652                	mv	a2,s4
a0004e74:	86d6                	mv	a3,s5
a0004e76:	8552                	mv	a0,s4
a0004e78:	85d6                	mv	a1,s5
a0004e7a:	c25fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004e7e:	a00086b7          	lui	a3,0xa0008
a0004e82:	ed06a603          	lw	a2,-304(a3) # a0007ed0 <__psram_limit+0xf7c07ed0>
a0004e86:	ed46a683          	lw	a3,-300(a3)
a0004e8a:	c0aa                	sw	a0,64(sp)
a0004e8c:	c2ae                	sw	a1,68(sp)
a0004e8e:	854a                	mv	a0,s2
a0004e90:	85ce                	mv	a1,s3
a0004e92:	cb6fd0ef          	jal	ra,a0002348 <__divdf3>
a0004e96:	ed8c2603          	lw	a2,-296(s8) # a0007ed8 <__psram_limit+0xf7c07ed8>
a0004e9a:	edcc2683          	lw	a3,-292(s8)
a0004e9e:	c01fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004ea2:	862a                	mv	a2,a0
a0004ea4:	86ae                	mv	a3,a1
a0004ea6:	854a                	mv	a0,s2
a0004ea8:	85ce                	mv	a1,s3
a0004eaa:	c9efd0ef          	jal	ra,a0002348 <__divdf3>
a0004eae:	a00086b7          	lui	a3,0xa0008
a0004eb2:	ee06a603          	lw	a2,-288(a3) # a0007ee0 <__psram_limit+0xf7c07ee0>
a0004eb6:	ee46a683          	lw	a3,-284(a3)
a0004eba:	be5fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004ebe:	862a                	mv	a2,a0
a0004ec0:	86ae                	mv	a3,a1
a0004ec2:	854a                	mv	a0,s2
a0004ec4:	85ce                	mv	a1,s3
a0004ec6:	c82fd0ef          	jal	ra,a0002348 <__divdf3>
a0004eca:	89ae                	mv	s3,a1
a0004ecc:	a00085b7          	lui	a1,0xa0008
a0004ed0:	892a                	mv	s2,a0
a0004ed2:	ee85a503          	lw	a0,-280(a1) # a0007ee8 <__psram_limit+0xf7c07ee8>
a0004ed6:	eec5a583          	lw	a1,-276(a1)
a0004eda:	8652                	mv	a2,s4
a0004edc:	86d6                	mv	a3,s5
a0004ede:	a8cfe0ef          	jal	ra,a000316a <__subdf3>
a0004ee2:	862a                	mv	a2,a0
a0004ee4:	86ae                	mv	a3,a1
a0004ee6:	854a                	mv	a0,s2
a0004ee8:	85ce                	mv	a1,s3
a0004eea:	bb5fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004eee:	4706                	lw	a4,64(sp)
a0004ef0:	4796                	lw	a5,68(sp)
a0004ef2:	862a                	mv	a2,a0
a0004ef4:	86ae                	mv	a3,a1
a0004ef6:	853a                	mv	a0,a4
a0004ef8:	85be                	mv	a1,a5
a0004efa:	c4efd0ef          	jal	ra,a0002348 <__divdf3>
a0004efe:	a00087b7          	lui	a5,0xa0008
a0004f02:	ef07a603          	lw	a2,-272(a5) # a0007ef0 <__psram_limit+0xf7c07ef0>
a0004f06:	ef47a683          	lw	a3,-268(a5)
a0004f0a:	b95fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004f0e:	3ff00613          	li	a2,1023
a0004f12:	4681                	li	a3,0
a0004f14:	8766                	mv	a4,s9
a0004f16:	41fcd793          	srai	a5,s9,0x1f
a0004f1a:	c0c71777          	add64	a4,a4,a2
a0004f1e:	4801                	li	a6,0
a0004f20:	01471893          	slli	a7,a4,0x14
a0004f24:	8642                	mv	a2,a6
a0004f26:	86c6                	mv	a3,a7
a0004f28:	ca9fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004f2c:	865e                	mv	a2,s7
a0004f2e:	86da                	mv	a3,s6
a0004f30:	8a2a                	mv	s4,a0
a0004f32:	8aae                	mv	s5,a1
a0004f34:	b41fd0ef          	jal	ra,a0002a74 <__gedf2>
a0004f38:	00a05d63          	blez	a0,a0004f52 <print_exponential_number+0x222>
a0004f3c:	ed8c2603          	lw	a2,-296(s8)
a0004f40:	edcc2683          	lw	a3,-292(s8)
a0004f44:	8552                	mv	a0,s4
a0004f46:	85d6                	mv	a1,s5
a0004f48:	c00fd0ef          	jal	ra,a0002348 <__divdf3>
a0004f4c:	147d                	addi	s0,s0,-1
a0004f4e:	8a2a                	mv	s4,a0
a0004f50:	8aae                	mv	s5,a1
a0004f52:	01140793          	addi	a5,s0,17
a0004f56:	02200713          	li	a4,34
a0004f5a:	0237b913          	sltiu	s2,a5,35
a0004f5e:	02f76263          	bltu	a4,a5,a0004f82 <print_exponential_number+0x252>
a0004f62:	41f45713          	srai	a4,s0,0x1f
a0004f66:	008747b3          	xor	a5,a4,s0
a0004f6a:	40e78733          	sub	a4,a5,a4
a0004f6e:	a00087b7          	lui	a5,0xa0008
a0004f72:	f1878793          	addi	a5,a5,-232 # a0007f18 <__psram_limit+0xf7c07f18>
a0004f76:	06e7978b          	addsl	a5,a5,a4,3
a0004f7a:	0007aa03          	lw	s4,0(a5)
a0004f7e:	0047aa83          	lw	s5,4(a5)
a0004f82:	2cbdb78b          	extu	a5,s11,11,11
a0004f86:	30078563          	beqz	a5,a0005290 <print_exponential_number+0x560>
a0004f8a:	5771                	li	a4,-4
a0004f8c:	fff48793          	addi	a5,s1,-1
a0004f90:	4c01                	li	s8,0
a0004f92:	00e44963          	blt	s0,a4,a0004fa4 <print_exponential_number+0x274>
a0004f96:	e091                	bnez	s1,a0004f9a <print_exponential_number+0x26a>
a0004f98:	4485                	li	s1,1
a0004f9a:	4c01                	li	s8,0
a0004f9c:	00945463          	bge	s0,s1,a0004fa4 <print_exponential_number+0x274>
a0004fa0:	8f81                	sub	a5,a5,s0
a0004fa2:	4c05                	li	s8,1
a0004fa4:	84be                	mv	s1,a5
a0004fa6:	0007d363          	bgez	a5,a0004fac <print_exponential_number+0x27c>
a0004faa:	4481                	li	s1,0
a0004fac:	400ded93          	ori	s11,s11,1024
a0004fb0:	00045963          	bgez	s0,a0004fc2 <print_exponential_number+0x292>
a0004fb4:	4c85                	li	s9,1
a0004fb6:	00091363          	bnez	s2,a0004fbc <print_exponential_number+0x28c>
a0004fba:	4c81                	li	s9,0
a0004fbc:	000c1763          	bnez	s8,a0004fca <print_exponential_number+0x29a>
a0004fc0:	a08d                	j	a0005022 <print_exponential_number+0x2f2>
a0004fc2:	000c1463          	bnez	s8,a0004fca <print_exponential_number+0x29a>
a0004fc6:	ec29                	bnez	s0,a0005020 <print_exponential_number+0x2f0>
a0004fc8:	4c01                	li	s8,0
a0004fca:	57f2                	lw	a5,60(sp)
a0004fcc:	c789                	beqz	a5,a0004fd6 <print_exponential_number+0x2a6>
a0004fce:	800007b7          	lui	a5,0x80000
a0004fd2:	0167cb33          	xor	s6,a5,s6
a0004fd6:	86a6                	mv	a3,s1
a0004fd8:	85de                	mv	a1,s7
a0004fda:	865a                	mv	a2,s6
a0004fdc:	18a8                	addi	a0,sp,120
a0004fde:	975ff0ef          	jal	ra,a0004952 <get_components>
a0004fe2:	08814783          	lbu	a5,136(sp)
a0004fe6:	4a0a                	lw	s4,128(sp)
a0004fe8:	4a9a                	lw	s5,132(sp)
a0004fea:	de3e                	sw	a5,60(sp)
a0004fec:	5966                	lw	s2,120(sp)
a0004fee:	59f6                	lw	s3,124(sp)
a0004ff0:	180c1463          	bnez	s8,a0005178 <print_exponential_number+0x448>
a0004ff4:	01304763          	bgtz	s3,a0005002 <print_exponential_number+0x2d2>
a0004ff8:	00099a63          	bnez	s3,a000500c <print_exponential_number+0x2dc>
a0004ffc:	47a5                	li	a5,9
a0004ffe:	0127f763          	bgeu	a5,s2,a000500c <print_exponential_number+0x2dc>
a0005002:	0405                	addi	s0,s0,1
a0005004:	4a01                	li	s4,0
a0005006:	4a81                	li	s5,0
a0005008:	4905                	li	s2,1
a000500a:	4981                	li	s3,0
a000500c:	06340793          	addi	a5,s0,99
a0005010:	0c600713          	li	a4,198
a0005014:	4c01                	li	s8,0
a0005016:	4b95                	li	s7,5
a0005018:	18f76e63          	bltu	a4,a5,a00051b4 <print_exponential_number+0x484>
a000501c:	4b91                	li	s7,4
a000501e:	aa59                	j	a00051b4 <print_exponential_number+0x484>
a0005020:	4c81                	li	s9,0
a0005022:	d4d2                	sw	s4,104(sp)
a0005024:	d6d6                	sw	s5,108(sp)
a0005026:	07910823          	sb	s9,112(sp)
a000502a:	8652                	mv	a2,s4
a000502c:	86d6                	mv	a3,s5
a000502e:	855e                	mv	a0,s7
a0005030:	85da                	mv	a1,s6
a0005032:	0a0c8a63          	beqz	s9,a00050e6 <print_exponential_number+0x3b6>
a0005036:	b9bfd0ef          	jal	ra,a0002bd0 <__muldf3>
a000503a:	b0ffe0ef          	jal	ra,a0003b48 <__fixdfdi>
a000503e:	892a                	mv	s2,a0
a0005040:	89ae                	mv	s3,a1
a0005042:	c0bfe0ef          	jal	ra,a0003c4c <__floatdidf>
a0005046:	862a                	mv	a2,a0
a0005048:	86ae                	mv	a3,a1
a000504a:	0a0c8163          	beqz	s9,a00050ec <print_exponential_number+0x3bc>
a000504e:	8652                	mv	a2,s4
a0005050:	86d6                	mv	a3,s5
a0005052:	af6fd0ef          	jal	ra,a0002348 <__divdf3>
a0005056:	86ae                	mv	a3,a1
a0005058:	862a                	mv	a2,a0
a000505a:	85da                	mv	a1,s6
a000505c:	855e                	mv	a0,s7
a000505e:	90cfe0ef          	jal	ra,a000316a <__subdf3>
a0005062:	a00087b7          	lui	a5,0xa0008
a0005066:	f1878793          	addi	a5,a5,-232 # a0007f18 <__psram_limit+0xf7c07f18>
a000506a:	0697978b          	addsl	a5,a5,s1,3
a000506e:	0007ac03          	lw	s8,0(a5)
a0005072:	0047ac83          	lw	s9,4(a5)
a0005076:	8a2a                	mv	s4,a0
a0005078:	8aae                	mv	s5,a1
a000507a:	4641                	li	a2,16
a000507c:	10ac                	addi	a1,sp,104
a000507e:	0888                	addi	a0,sp,80
a0005080:	9beff0ef          	jal	ra,a000423e <memcpy>
a0005084:	8662                	mv	a2,s8
a0005086:	86e6                	mv	a3,s9
a0005088:	088c                	addi	a1,sp,80
a000508a:	18a8                	addi	a0,sp,120
a000508c:	312d                	jal	a0004cb6 <update_normalization>
a000508e:	08014783          	lbu	a5,128(sp)
a0005092:	5666                	lw	a2,120(sp)
a0005094:	56f6                	lw	a3,124(sp)
a0005096:	8552                	mv	a0,s4
a0005098:	85d6                	mv	a1,s5
a000509a:	cfb1                	beqz	a5,a00050f6 <print_exponential_number+0x3c6>
a000509c:	b35fd0ef          	jal	ra,a0002bd0 <__muldf3>
a00050a0:	8a2a                	mv	s4,a0
a00050a2:	8aae                	mv	s5,a1
a00050a4:	a0008b37          	lui	s6,0xa0008
a00050a8:	e8b1                	bnez	s1,a00050fc <print_exponential_number+0x3cc>
a00050aa:	e94b2b83          	lw	s7,-364(s6) # a0007e94 <__psram_limit+0xf7c07e94>
a00050ae:	e90b2b03          	lw	s6,-368(s6)
a00050b2:	4c81                	li	s9,0
a00050b4:	86de                	mv	a3,s7
a00050b6:	865a                	mv	a2,s6
a00050b8:	9bdfd0ef          	jal	ra,a0002a74 <__gedf2>
a00050bc:	41f55693          	srai	a3,a0,0x1f
a00050c0:	fff6c613          	not	a2,a3
a00050c4:	01f65c13          	srli	s8,a2,0x1f
a00050c8:	86de                	mv	a3,s7
a00050ca:	865a                	mv	a2,s6
a00050cc:	8552                	mv	a0,s4
a00050ce:	85d6                	mv	a1,s5
a00050d0:	c1891977          	add64	s2,s2,s8
a00050d4:	8fdfd0ef          	jal	ra,a00029d0 <__eqdf2>
a00050d8:	e501                	bnez	a0,a00050e0 <print_exponential_number+0x3b0>
a00050da:	ffe97713          	andi	a4,s2,-2
a00050de:	893a                	mv	s2,a4
a00050e0:	4a01                	li	s4,0
a00050e2:	4a81                	li	s5,0
a00050e4:	bf01                	j	a0004ff4 <print_exponential_number+0x2c4>
a00050e6:	a62fd0ef          	jal	ra,a0002348 <__divdf3>
a00050ea:	bf81                	j	a000503a <print_exponential_number+0x30a>
a00050ec:	8552                	mv	a0,s4
a00050ee:	85d6                	mv	a1,s5
a00050f0:	ae1fd0ef          	jal	ra,a0002bd0 <__muldf3>
a00050f4:	b78d                	j	a0005056 <print_exponential_number+0x326>
a00050f6:	a52fd0ef          	jal	ra,a0002348 <__divdf3>
a00050fa:	b75d                	j	a00050a0 <print_exponential_number+0x370>
a00050fc:	a4dfe0ef          	jal	ra,a0003b48 <__fixdfdi>
a0005100:	c4aa                	sw	a0,72(sp)
a0005102:	c6ae                	sw	a1,76(sp)
a0005104:	b49fe0ef          	jal	ra,a0003c4c <__floatdidf>
a0005108:	862a                	mv	a2,a0
a000510a:	86ae                	mv	a3,a1
a000510c:	8552                	mv	a0,s4
a000510e:	85d6                	mv	a1,s5
a0005110:	85afe0ef          	jal	ra,a000316a <__subdf3>
a0005114:	e94b2b83          	lw	s7,-364(s6)
a0005118:	e90b2b03          	lw	s6,-368(s6)
a000511c:	c2ae                	sw	a1,68(sp)
a000511e:	86de                	mv	a3,s7
a0005120:	865a                	mv	a2,s6
a0005122:	c0aa                	sw	a0,64(sp)
a0005124:	951fd0ef          	jal	ra,a0002a74 <__gedf2>
a0005128:	4706                	lw	a4,64(sp)
a000512a:	4796                	lw	a5,68(sp)
a000512c:	41f55693          	srai	a3,a0,0x1f
a0005130:	4826                	lw	a6,72(sp)
a0005132:	48b6                	lw	a7,76(sp)
a0005134:	fff6c613          	not	a2,a3
a0005138:	01f65a13          	srli	s4,a2,0x1f
a000513c:	4a81                	li	s5,0
a000513e:	865a                	mv	a2,s6
a0005140:	86de                	mv	a3,s7
a0005142:	853a                	mv	a0,a4
a0005144:	85be                	mv	a1,a5
a0005146:	c10a1a77          	add64	s4,s4,a6
a000514a:	887fd0ef          	jal	ra,a00029d0 <__eqdf2>
a000514e:	e501                	bnez	a0,a0005156 <print_exponential_number+0x426>
a0005150:	ffea7713          	andi	a4,s4,-2
a0005154:	8a3a                	mv	s4,a4
a0005156:	8552                	mv	a0,s4
a0005158:	85d6                	mv	a1,s5
a000515a:	af3fe0ef          	jal	ra,a0003c4c <__floatdidf>
a000515e:	862a                	mv	a2,a0
a0005160:	86ae                	mv	a3,a1
a0005162:	8562                	mv	a0,s8
a0005164:	85e6                	mv	a1,s9
a0005166:	9bdfd0ef          	jal	ra,a0002b22 <__ledf2>
a000516a:	e8a045e3          	bgtz	a0,a0004ff4 <print_exponential_number+0x2c4>
a000516e:	4705                	li	a4,1
a0005170:	4781                	li	a5,0
a0005172:	c0e91977          	add64	s2,s2,a4
a0005176:	b7ad                	j	a00050e0 <print_exponential_number+0x3b0>
a0005178:	6b85                	lui	s7,0x1
a000517a:	800b8b93          	addi	s7,s7,-2048 # 800 <__RFTLV_SIZE_HOLE>
a000517e:	017dfbb3          	and	s7,s11,s7
a0005182:	020b8963          	beqz	s7,a00051b4 <print_exponential_number+0x484>
a0005186:	57fd                	li	a5,-1
a0005188:	4b81                	li	s7,0
a000518a:	02f44563          	blt	s0,a5,a00051b4 <print_exponential_number+0x484>
a000518e:	854a                	mv	a0,s2
a0005190:	85ce                	mv	a1,s3
a0005192:	abbfe0ef          	jal	ra,a0003c4c <__floatdidf>
a0005196:	a00087b7          	lui	a5,0xa0008
a000519a:	00140b13          	addi	s6,s0,1
a000519e:	f1878793          	addi	a5,a5,-232 # a0007f18 <__psram_limit+0xf7c07f18>
a00051a2:	0767978b          	addsl	a5,a5,s6,3
a00051a6:	4390                	lw	a2,0(a5)
a00051a8:	43d4                	lw	a3,4(a5)
a00051aa:	827fd0ef          	jal	ra,a00029d0 <__eqdf2>
a00051ae:	e119                	bnez	a0,a00051b4 <print_exponential_number+0x484>
a00051b0:	14fd                	addi	s1,s1,-1
a00051b2:	845a                	mv	s0,s6
a00051b4:	002dfb13          	andi	s6,s11,2
a00051b8:	000b0563          	beqz	s6,a00051c2 <print_exponential_number+0x492>
a00051bc:	4781                	li	a5,0
a00051be:	000b9863          	bnez	s7,a00051ce <print_exponential_number+0x49e>
a00051c2:	5762                	lw	a4,56(sp)
a00051c4:	4781                	li	a5,0
a00051c6:	00ebf463          	bgeu	s7,a4,a00051ce <print_exponential_number+0x49e>
a00051ca:	417707b3          	sub	a5,a4,s7
a00051ce:	476e                	lw	a4,216(sp)
a00051d0:	c43e                	sw	a5,8(sp)
a00051d2:	57c2                	lw	a5,48(sp)
a00051d4:	ca3a                	sw	a4,20(sp)
a00051d6:	475e                	lw	a4,212(sp)
a00051d8:	58d2                	lw	a7,52(sp)
a00051da:	5832                	lw	a6,44(sp)
a00051dc:	c83a                	sw	a4,16(sp)
a00051de:	5772                	lw	a4,60(sp)
a00051e0:	c03e                	sw	a5,0(sp)
a00051e2:	8652                	mv	a2,s4
a00051e4:	c66e                	sw	s11,12(sp)
a00051e6:	c226                	sw	s1,4(sp)
a00051e8:	87ea                	mv	a5,s10
a00051ea:	86d6                	mv	a3,s5
a00051ec:	854a                	mv	a0,s2
a00051ee:	85ce                	mv	a1,s3
a00051f0:	8f5ff0ef          	jal	ra,a0004ae4 <print_broken_up_decimal.isra.0>
a00051f4:	862a                	mv	a2,a0
a00051f6:	040c1f63          	bnez	s8,a0005254 <print_exponential_number+0x524>
a00051fa:	020dfd93          	andi	s11,s11,32
a00051fe:	04500513          	li	a0,69
a0005202:	000d9463          	bnez	s11,a000520a <print_exponential_number+0x4da>
a0005206:	06500513          	li	a0,101
a000520a:	55b2                	lw	a1,44(sp)
a000520c:	56c2                	lw	a3,48(sp)
a000520e:	00160493          	addi	s1,a2,1
a0005212:	9d02                	jalr	s10
a0005214:	41f45593          	srai	a1,s0,0x1f
a0005218:	04805e63          	blez	s0,a0005274 <print_exponential_number+0x544>
a000521c:	8722                	mv	a4,s0
a000521e:	87ae                	mv	a5,a1
a0005220:	4695                	li	a3,5
a0005222:	c436                	sw	a3,8(sp)
a0005224:	55b2                	lw	a1,44(sp)
a0005226:	56c2                	lw	a3,48(sp)
a0005228:	1bfd                	addi	s7,s7,-1
a000522a:	8626                	mv	a2,s1
a000522c:	c25e                	sw	s7,4(sp)
a000522e:	c002                	sw	zero,0(sp)
a0005230:	48a9                	li	a7,10
a0005232:	01f45813          	srli	a6,s0,0x1f
a0005236:	856a                	mv	a0,s10
a0005238:	d0eff0ef          	jal	ra,a0004746 <print_integer>
a000523c:	862a                	mv	a2,a0
a000523e:	000b0b63          	beqz	s6,a0005254 <print_exponential_number+0x524>
a0005242:	57d2                	lw	a5,52(sp)
a0005244:	40f50433          	sub	s0,a0,a5
a0005248:	57d2                	lw	a5,52(sp)
a000524a:	00878633          	add	a2,a5,s0
a000524e:	57e2                	lw	a5,56(sp)
a0005250:	02f46963          	bltu	s0,a5,a0005282 <print_exponential_number+0x552>
a0005254:	40be                	lw	ra,204(sp)
a0005256:	442e                	lw	s0,200(sp)
a0005258:	449e                	lw	s1,196(sp)
a000525a:	490e                	lw	s2,192(sp)
a000525c:	59fa                	lw	s3,188(sp)
a000525e:	5a6a                	lw	s4,184(sp)
a0005260:	5ada                	lw	s5,180(sp)
a0005262:	5b4a                	lw	s6,176(sp)
a0005264:	5bba                	lw	s7,172(sp)
a0005266:	5c2a                	lw	s8,168(sp)
a0005268:	5c9a                	lw	s9,164(sp)
a000526a:	5d0a                	lw	s10,160(sp)
a000526c:	4dfa                	lw	s11,156(sp)
a000526e:	8532                	mv	a0,a2
a0005270:	6169                	addi	sp,sp,208
a0005272:	8082                	ret
a0005274:	8622                	mv	a2,s0
a0005276:	86ae                	mv	a3,a1
a0005278:	4701                	li	a4,0
a000527a:	4781                	li	a5,0
a000527c:	c2c71777          	sub64	a4,a4,a2
a0005280:	b745                	j	a0005220 <print_exponential_number+0x4f0>
a0005282:	56c2                	lw	a3,48(sp)
a0005284:	55b2                	lw	a1,44(sp)
a0005286:	02000513          	li	a0,32
a000528a:	0405                	addi	s0,s0,1
a000528c:	9d02                	jalr	s10
a000528e:	bf6d                	j	a0005248 <print_exponential_number+0x518>
a0005290:	d2045be3          	bgez	s0,a0004fc6 <print_exponential_number+0x296>
a0005294:	4c85                	li	s9,1
a0005296:	4c01                	li	s8,0
a0005298:	d80915e3          	bnez	s2,a0005022 <print_exponential_number+0x2f2>
a000529c:	bb39                	j	a0004fba <print_exponential_number+0x28a>

a000529e <print_floating_point>:
a000529e:	7135                	addi	sp,sp,-160
a00052a0:	c552                	sw	s4,136(sp)
a00052a2:	c356                	sw	s5,132(sp)
a00052a4:	c15a                	sw	s6,128(sp)
a00052a6:	dede                	sw	s7,124(sp)
a00052a8:	8a2a                	mv	s4,a0
a00052aa:	8aae                	mv	s5,a1
a00052ac:	8b32                	mv	s6,a2
a00052ae:	8bb6                	mv	s7,a3
a00052b0:	863a                	mv	a2,a4
a00052b2:	86be                	mv	a3,a5
a00052b4:	853a                	mv	a0,a4
a00052b6:	85be                	mv	a1,a5
a00052b8:	cd22                	sw	s0,152(sp)
a00052ba:	cb26                	sw	s1,148(sp)
a00052bc:	c94a                	sw	s2,144(sp)
a00052be:	c74e                	sw	s3,140(sp)
a00052c0:	dce2                	sw	s8,120(sp)
a00052c2:	d6ee                	sw	s11,108(sp)
a00052c4:	cf06                	sw	ra,156(sp)
a00052c6:	dae6                	sw	s9,116(sp)
a00052c8:	d8ea                	sw	s10,112(sp)
a00052ca:	598a                	lw	s3,160(sp)
a00052cc:	0a414d83          	lbu	s11,164(sp)
a00052d0:	843a                	mv	s0,a4
a00052d2:	84be                	mv	s1,a5
a00052d4:	8942                	mv	s2,a6
a00052d6:	8c46                	mv	s8,a7
a00052d8:	ef8fd0ef          	jal	ra,a00029d0 <__eqdf2>
a00052dc:	cd05                	beqz	a0,a0005314 <print_floating_point+0x76>
a00052de:	a0008737          	lui	a4,0xa0008
a00052e2:	88ce                	mv	a7,s3
a00052e4:	8862                	mv	a6,s8
a00052e6:	478d                	li	a5,3
a00052e8:	e7470713          	addi	a4,a4,-396 # a0007e74 <__psram_limit+0xf7c07e74>
a00052ec:	446a                	lw	s0,152(sp)
a00052ee:	40fa                	lw	ra,156(sp)
a00052f0:	44da                	lw	s1,148(sp)
a00052f2:	494a                	lw	s2,144(sp)
a00052f4:	49ba                	lw	s3,140(sp)
a00052f6:	5c66                	lw	s8,120(sp)
a00052f8:	5cd6                	lw	s9,116(sp)
a00052fa:	5d46                	lw	s10,112(sp)
a00052fc:	5db6                	lw	s11,108(sp)
a00052fe:	86de                	mv	a3,s7
a0005300:	865a                	mv	a2,s6
a0005302:	5bf6                	lw	s7,124(sp)
a0005304:	4b0a                	lw	s6,128(sp)
a0005306:	85d6                	mv	a1,s5
a0005308:	8552                	mv	a0,s4
a000530a:	4a9a                	lw	s5,132(sp)
a000530c:	4a2a                	lw	s4,136(sp)
a000530e:	610d                	addi	sp,sp,160
a0005310:	b88ff06f          	j	a0004698 <out_rev_>
a0005314:	a00087b7          	lui	a5,0xa0008
a0005318:	ef87a603          	lw	a2,-264(a5) # a0007ef8 <__psram_limit+0xf7c07ef8>
a000531c:	efc7a683          	lw	a3,-260(a5)
a0005320:	8522                	mv	a0,s0
a0005322:	85a6                	mv	a1,s1
a0005324:	ffefd0ef          	jal	ra,a0002b22 <__ledf2>
a0005328:	00055a63          	bgez	a0,a000533c <print_floating_point+0x9e>
a000532c:	a0008737          	lui	a4,0xa0008
a0005330:	88ce                	mv	a7,s3
a0005332:	8862                	mv	a6,s8
a0005334:	4791                	li	a5,4
a0005336:	e7870713          	addi	a4,a4,-392 # a0007e78 <__psram_limit+0xf7c07e78>
a000533a:	bf4d                	j	a00052ec <print_floating_point+0x4e>
a000533c:	a00087b7          	lui	a5,0xa0008
a0005340:	f007a603          	lw	a2,-256(a5) # a0007f00 <__psram_limit+0xf7c07f00>
a0005344:	f047a683          	lw	a3,-252(a5)
a0005348:	8522                	mv	a0,s0
a000534a:	85a6                	mv	a1,s1
a000534c:	f28fd0ef          	jal	ra,a0002a74 <__gedf2>
a0005350:	02a05363          	blez	a0,a0005376 <print_floating_point+0xd8>
a0005354:	0049f793          	andi	a5,s3,4
a0005358:	cb89                	beqz	a5,a000536a <print_floating_point+0xcc>
a000535a:	a0008737          	lui	a4,0xa0008
a000535e:	e6c70713          	addi	a4,a4,-404 # a0007e6c <__psram_limit+0xf7c07e6c>
a0005362:	4791                	li	a5,4
a0005364:	88ce                	mv	a7,s3
a0005366:	8862                	mv	a6,s8
a0005368:	b751                	j	a00052ec <print_floating_point+0x4e>
a000536a:	a0008737          	lui	a4,0xa0008
a000536e:	e6870713          	addi	a4,a4,-408 # a0007e68 <__psram_limit+0xf7c07e68>
a0005372:	478d                	li	a5,3
a0005374:	bfc5                	j	a0005364 <print_floating_point+0xc6>
a0005376:	04010d13          	addi	s10,sp,64
a000537a:	060d9663          	bnez	s11,a00053e6 <print_floating_point+0x148>
a000537e:	a00087b7          	lui	a5,0xa0008
a0005382:	f087a603          	lw	a2,-248(a5) # a0007f08 <__psram_limit+0xf7c07f08>
a0005386:	f0c7a683          	lw	a3,-244(a5)
a000538a:	8522                	mv	a0,s0
a000538c:	85a6                	mv	a1,s1
a000538e:	ee6fd0ef          	jal	ra,a0002a74 <__gedf2>
a0005392:	00a04e63          	bgtz	a0,a00053ae <print_floating_point+0x110>
a0005396:	a00087b7          	lui	a5,0xa0008
a000539a:	f107a603          	lw	a2,-240(a5) # a0007f10 <__psram_limit+0xf7c07f10>
a000539e:	f147a683          	lw	a3,-236(a5)
a00053a2:	8522                	mv	a0,s0
a00053a4:	85a6                	mv	a1,s1
a00053a6:	f7cfd0ef          	jal	ra,a0002b22 <__ledf2>
a00053aa:	02055e63          	bgez	a0,a00053e6 <print_floating_point+0x148>
a00053ae:	c402                	sw	zero,8(sp)
a00053b0:	c26a                	sw	s10,4(sp)
a00053b2:	c04e                	sw	s3,0(sp)
a00053b4:	88e2                	mv	a7,s8
a00053b6:	884a                	mv	a6,s2
a00053b8:	8722                	mv	a4,s0
a00053ba:	87a6                	mv	a5,s1
a00053bc:	86de                	mv	a3,s7
a00053be:	865a                	mv	a2,s6
a00053c0:	85d6                	mv	a1,s5
a00053c2:	8552                	mv	a0,s4
a00053c4:	96dff0ef          	jal	ra,a0004d30 <print_exponential_number>
a00053c8:	40fa                	lw	ra,156(sp)
a00053ca:	446a                	lw	s0,152(sp)
a00053cc:	44da                	lw	s1,148(sp)
a00053ce:	494a                	lw	s2,144(sp)
a00053d0:	49ba                	lw	s3,140(sp)
a00053d2:	4a2a                	lw	s4,136(sp)
a00053d4:	4a9a                	lw	s5,132(sp)
a00053d6:	4b0a                	lw	s6,128(sp)
a00053d8:	5bf6                	lw	s7,124(sp)
a00053da:	5c66                	lw	s8,120(sp)
a00053dc:	5cd6                	lw	s9,116(sp)
a00053de:	5d46                	lw	s10,112(sp)
a00053e0:	5db6                	lw	s11,108(sp)
a00053e2:	610d                	addi	sp,sp,160
a00053e4:	8082                	ret
a00053e6:	4009f793          	andi	a5,s3,1024
a00053ea:	c39d                	beqz	a5,a0005410 <print_floating_point+0x172>
a00053ec:	4c81                	li	s9,0
a00053ee:	47c5                	li	a5,17
a00053f0:	03000713          	li	a4,48
a00053f4:	02000693          	li	a3,32
a00053f8:	0127f863          	bgeu	a5,s2,a0005408 <print_floating_point+0x16a>
a00053fc:	019d570b          	srb	a4,s10,s9,0
a0005400:	0c85                	addi	s9,s9,1
a0005402:	197d                	addi	s2,s2,-1
a0005404:	fedc9ae3          	bne	s9,a3,a00053f8 <print_floating_point+0x15a>
a0005408:	000d8663          	beqz	s11,a0005414 <print_floating_point+0x176>
a000540c:	c466                	sw	s9,8(sp)
a000540e:	b74d                	j	a00053b0 <print_floating_point+0x112>
a0005410:	4919                	li	s2,6
a0005412:	bfe9                	j	a00053ec <print_floating_point+0x14e>
a0005414:	86ca                	mv	a3,s2
a0005416:	85a2                	mv	a1,s0
a0005418:	8626                	mv	a2,s1
a000541a:	1028                	addi	a0,sp,40
a000541c:	d36ff0ef          	jal	ra,a0004952 <get_components>
a0005420:	03814703          	lbu	a4,56(sp)
a0005424:	5642                	lw	a2,48(sp)
a0005426:	56d2                	lw	a3,52(sp)
a0005428:	5522                	lw	a0,40(sp)
a000542a:	55b2                	lw	a1,44(sp)
a000542c:	ca66                	sw	s9,20(sp)
a000542e:	c86a                	sw	s10,16(sp)
a0005430:	c64e                	sw	s3,12(sp)
a0005432:	c462                	sw	s8,8(sp)
a0005434:	c24a                	sw	s2,4(sp)
a0005436:	c05e                	sw	s7,0(sp)
a0005438:	88da                	mv	a7,s6
a000543a:	8856                	mv	a6,s5
a000543c:	87d2                	mv	a5,s4
a000543e:	ea6ff0ef          	jal	ra,a0004ae4 <print_broken_up_decimal.isra.0>
a0005442:	b759                	j	a00053c8 <print_floating_point+0x12a>

a0005444 <__vsnprintf>:
a0005444:	7175                	addi	sp,sp,-144
a0005446:	c326                	sw	s1,132(sp)
a0005448:	d6de                	sw	s7,108(sp)
a000544a:	d4e2                	sw	s8,104(sp)
a000544c:	d2e6                	sw	s9,100(sp)
a000544e:	d0ea                	sw	s10,96(sp)
a0005450:	c706                	sw	ra,140(sp)
a0005452:	c522                	sw	s0,136(sp)
a0005454:	c14a                	sw	s2,128(sp)
a0005456:	dece                	sw	s3,124(sp)
a0005458:	dcd2                	sw	s4,120(sp)
a000545a:	dad6                	sw	s5,116(sp)
a000545c:	d8da                	sw	s6,112(sp)
a000545e:	ceee                	sw	s11,92(sp)
a0005460:	8c2a                	mv	s8,a0
a0005462:	8bae                	mv	s7,a1
a0005464:	8d32                	mv	s10,a2
a0005466:	8cb6                	mv	s9,a3
a0005468:	84ba                	mv	s1,a4
a000546a:	e999                	bnez	a1,a0005480 <__vsnprintf+0x3c>
a000546c:	a00057b7          	lui	a5,0xa0005
a0005470:	ad278793          	addi	a5,a5,-1326 # a0004ad2 <__psram_limit+0xf7c04ad2>
a0005474:	00f50663          	beq	a0,a5,a0005480 <__vsnprintf+0x3c>
a0005478:	a0004c37          	lui	s8,0xa0004
a000547c:	696c0c13          	addi	s8,s8,1686 # a0004696 <__psram_limit+0xf7c04696>
a0005480:	67c1                	lui	a5,0x10
a0005482:	17fd                	addi	a5,a5,-1
a0005484:	dc3e                	sw	a5,56(sp)
a0005486:	67a5                	lui	a5,0x9
a0005488:	04178793          	addi	a5,a5,65 # 9041 <wifi_ram_max_size+0x1041>
a000548c:	4301                	li	t1,0
a000548e:	de3e                	sw	a5,60(sp)
a0005490:	ae29                	j	a00057aa <__vsnprintf+0x366>
a0005492:	02500793          	li	a5,37
a0005496:	0c85                	addi	s9,s9,1
a0005498:	00f50863          	beq	a0,a5,a00054a8 <__vsnprintf+0x64>
a000549c:	00130413          	addi	s0,t1,1
a00054a0:	86ea                	mv	a3,s10
a00054a2:	861a                	mv	a2,t1
a00054a4:	85de                	mv	a1,s7
a00054a6:	a3d5                	j	a0005a8a <__vsnprintf+0x646>
a00054a8:	4401                	li	s0,0
a00054aa:	02b00793          	li	a5,43
a00054ae:	02d00613          	li	a2,45
a00054b2:	03000513          	li	a0,48
a00054b6:	02000813          	li	a6,32
a00054ba:	02300893          	li	a7,35
a00054be:	a801                	j	a00054ce <__vsnprintf+0x8a>
a00054c0:	02c70d63          	beq	a4,a2,a00054fa <__vsnprintf+0xb6>
a00054c4:	02a71063          	bne	a4,a0,a00054e4 <__vsnprintf+0xa0>
a00054c8:	00146413          	ori	s0,s0,1
a00054cc:	8cb6                	mv	s9,a3
a00054ce:	86e6                	mv	a3,s9
a00054d0:	9816c70b          	lbuia	a4,(a3),1,0
a00054d4:	02f70663          	beq	a4,a5,a0005500 <__vsnprintf+0xbc>
a00054d8:	fee7e4e3          	bltu	a5,a4,a00054c0 <__vsnprintf+0x7c>
a00054dc:	03070563          	beq	a4,a6,a0005506 <__vsnprintf+0xc2>
a00054e0:	03170663          	beq	a4,a7,a000550c <__vsnprintf+0xc8>
a00054e4:	fd070793          	addi	a5,a4,-48
a00054e8:	0ff7f793          	zext.b	a5,a5
a00054ec:	4625                	li	a2,9
a00054ee:	06f66763          	bltu	a2,a5,a000555c <__vsnprintf+0x118>
a00054f2:	4b01                	li	s6,0
a00054f4:	4525                	li	a0,9
a00054f6:	4829                	li	a6,10
a00054f8:	a015                	j	a000551c <__vsnprintf+0xd8>
a00054fa:	00246413          	ori	s0,s0,2
a00054fe:	b7f9                	j	a00054cc <__vsnprintf+0x88>
a0005500:	00446413          	ori	s0,s0,4
a0005504:	b7e1                	j	a00054cc <__vsnprintf+0x88>
a0005506:	00846413          	ori	s0,s0,8
a000550a:	b7c9                	j	a00054cc <__vsnprintf+0x88>
a000550c:	01046413          	ori	s0,s0,16
a0005510:	bf75                	j	a00054cc <__vsnprintf+0x88>
a0005512:	210b170b          	mula	a4,s6,a6
a0005516:	8cb2                	mv	s9,a2
a0005518:	fd070b13          	addi	s6,a4,-48
a000551c:	8666                	mv	a2,s9
a000551e:	9816470b          	lbuia	a4,(a2),1,0
a0005522:	fd070693          	addi	a3,a4,-48
a0005526:	0ff6f693          	zext.b	a3,a3
a000552a:	fed574e3          	bgeu	a0,a3,a0005512 <__vsnprintf+0xce>
a000552e:	000cc683          	lbu	a3,0(s9)
a0005532:	02e00713          	li	a4,46
a0005536:	10e69563          	bne	a3,a4,a0005640 <__vsnprintf+0x1fc>
a000553a:	001cc603          	lbu	a2,1(s9)
a000553e:	4525                	li	a0,9
a0005540:	001c8713          	addi	a4,s9,1
a0005544:	fd060693          	addi	a3,a2,-48
a0005548:	0ff6f693          	zext.b	a3,a3
a000554c:	40046413          	ori	s0,s0,1024
a0005550:	0cd56b63          	bltu	a0,a3,a0005626 <__vsnprintf+0x1e2>
a0005554:	4801                	li	a6,0
a0005556:	48a5                	li	a7,9
a0005558:	4e29                	li	t3,10
a000555a:	a02d                	j	a0005584 <__vsnprintf+0x140>
a000555c:	02a00613          	li	a2,42
a0005560:	4b01                	li	s6,0
a0005562:	fcc716e3          	bne	a4,a2,a000552e <__vsnprintf+0xea>
a0005566:	5844cb0b          	lwia	s6,(s1),4,0
a000556a:	000b5663          	bgez	s6,a0005576 <__vsnprintf+0x132>
a000556e:	00246413          	ori	s0,s0,2
a0005572:	41600b33          	neg	s6,s6
a0005576:	8cb6                	mv	s9,a3
a0005578:	bf5d                	j	a000552e <__vsnprintf+0xea>
a000557a:	21c8168b          	mula	a3,a6,t3
a000557e:	872a                	mv	a4,a0
a0005580:	fd068813          	addi	a6,a3,-48
a0005584:	853a                	mv	a0,a4
a0005586:	9815468b          	lbuia	a3,(a0),1,0
a000558a:	fd068613          	addi	a2,a3,-48
a000558e:	0ff67613          	zext.b	a2,a2
a0005592:	fec8f4e3          	bgeu	a7,a2,a000557a <__vsnprintf+0x136>
a0005596:	8cba                	mv	s9,a4
a0005598:	981cc68b          	lbuia	a3,(s9),1,0
a000559c:	06c00613          	li	a2,108
a00055a0:	0ac68e63          	beq	a3,a2,a000565c <__vsnprintf+0x218>
a00055a4:	0ad66163          	bltu	a2,a3,a0005646 <__vsnprintf+0x202>
a00055a8:	06800613          	li	a2,104
a00055ac:	0cc68163          	beq	a3,a2,a000566e <__vsnprintf+0x22a>
a00055b0:	06a00613          	li	a2,106
a00055b4:	0cc68763          	beq	a3,a2,a0005682 <__vsnprintf+0x23e>
a00055b8:	8cba                	mv	s9,a4
a00055ba:	981cc50b          	lbuia	a0,(s9),1,0
a00055be:	06500713          	li	a4,101
a00055c2:	02e50263          	beq	a0,a4,a00055e6 <__vsnprintf+0x1a2>
a00055c6:	12a76663          	bltu	a4,a0,a00056f2 <__vsnprintf+0x2ae>
a00055ca:	04600713          	li	a4,70
a00055ce:	2ee50963          	beq	a0,a4,a00058c0 <__vsnprintf+0x47c>
a00055d2:	0ea76c63          	bltu	a4,a0,a00056ca <__vsnprintf+0x286>
a00055d6:	02500713          	li	a4,37
a00055da:	4ae50163          	beq	a0,a4,a0005a7c <__vsnprintf+0x638>
a00055de:	04500713          	li	a4,69
a00055e2:	eae51de3          	bne	a0,a4,a000549c <__vsnprintf+0x58>
a00055e6:	0df57713          	andi	a4,a0,223
a00055ea:	04700693          	li	a3,71
a00055ee:	00d71863          	bne	a4,a3,a00055fe <__vsnprintf+0x1ba>
a00055f2:	6785                	lui	a5,0x1
a00055f4:	80078793          	addi	a5,a5,-2048 # 800 <__RFTLV_SIZE_HOLE>
a00055f8:	8c5d                	or	s0,s0,a5
a00055fa:	0fd57513          	andi	a0,a0,253
a00055fe:	04500713          	li	a4,69
a0005602:	00e51463          	bne	a0,a4,a000560a <__vsnprintf+0x1c6>
a0005606:	02046413          	ori	s0,s0,32
a000560a:	049d                	addi	s1,s1,7
a000560c:	ff84f713          	andi	a4,s1,-8
a0005610:	4310                	lw	a2,0(a4)
a0005612:	4354                	lw	a3,4(a4)
a0005614:	00870493          	addi	s1,a4,8
a0005618:	4705                	li	a4,1
a000561a:	c23a                	sw	a4,4(sp)
a000561c:	c022                	sw	s0,0(sp)
a000561e:	88da                	mv	a7,s6
a0005620:	8732                	mv	a4,a2
a0005622:	87b6                	mv	a5,a3
a0005624:	ac55                	j	a00058d8 <__vsnprintf+0x494>
a0005626:	02a00693          	li	a3,42
a000562a:	4801                	li	a6,0
a000562c:	f6d615e3          	bne	a2,a3,a0005596 <__vsnprintf+0x152>
a0005630:	5844c80b          	lwia	a6,(s1),4,0
a0005634:	00085363          	bgez	a6,a000563a <__vsnprintf+0x1f6>
a0005638:	4801                	li	a6,0
a000563a:	002c8713          	addi	a4,s9,2
a000563e:	bfa1                	j	a0005596 <__vsnprintf+0x152>
a0005640:	8766                	mv	a4,s9
a0005642:	4801                	li	a6,0
a0005644:	bf89                	j	a0005596 <__vsnprintf+0x152>
a0005646:	07400613          	li	a2,116
a000564a:	00c68663          	beq	a3,a2,a0005656 <__vsnprintf+0x212>
a000564e:	07a00613          	li	a2,122
a0005652:	f6c693e3          	bne	a3,a2,a00055b8 <__vsnprintf+0x174>
a0005656:	10046413          	ori	s0,s0,256
a000565a:	b785                	j	a00055ba <__vsnprintf+0x176>
a000565c:	00174603          	lbu	a2,1(a4)
a0005660:	fed61be3          	bne	a2,a3,a0005656 <__vsnprintf+0x212>
a0005664:	30046413          	ori	s0,s0,768
a0005668:	00270c93          	addi	s9,a4,2
a000566c:	b7b9                	j	a00055ba <__vsnprintf+0x176>
a000566e:	00174603          	lbu	a2,1(a4)
a0005672:	00d60563          	beq	a2,a3,a000567c <__vsnprintf+0x238>
a0005676:	08046413          	ori	s0,s0,128
a000567a:	b781                	j	a00055ba <__vsnprintf+0x176>
a000567c:	0c046413          	ori	s0,s0,192
a0005680:	b7e5                	j	a0005668 <__vsnprintf+0x224>
a0005682:	20046413          	ori	s0,s0,512
a0005686:	bf15                	j	a00055ba <__vsnprintf+0x176>
a0005688:	57f2                	lw	a5,60(sp)
a000568a:	4685                	li	a3,1
a000568c:	f9750713          	addi	a4,a0,-105
a0005690:	00e69733          	sll	a4,a3,a4
a0005694:	00f776b3          	and	a3,a4,a5
a0005698:	eea5                	bnez	a3,a0005710 <__vsnprintf+0x2cc>
a000569a:	40077693          	andi	a3,a4,1024
a000569e:	2c069063          	bnez	a3,a000595e <__vsnprintf+0x51a>
a00056a2:	08077713          	andi	a4,a4,128
a00056a6:	de070be3          	beqz	a4,a000549c <__vsnprintf+0x58>
a00056aa:	5844c70b          	lwia	a4,(s1),4,0
a00056ae:	6785                	lui	a5,0x1
a00056b0:	00178893          	addi	a7,a5,1 # 1001 <HeapMinSize+0x1>
a00056b4:	011468b3          	or	a7,s0,a7
a00056b8:	3a071463          	bnez	a4,a0005a60 <__vsnprintf+0x61c>
a00056bc:	a0008737          	lui	a4,0xa0008
a00056c0:	4829                	li	a6,10
a00056c2:	4795                	li	a5,5
a00056c4:	e8870713          	addi	a4,a4,-376 # a0007e88 <__psram_limit+0xf7c07e88>
a00056c8:	a475                	j	a0005974 <__vsnprintf+0x530>
a00056ca:	06300713          	li	a4,99
a00056ce:	20e50d63          	beq	a0,a4,a00058e8 <__vsnprintf+0x4a4>
a00056d2:	06400713          	li	a4,100
a00056d6:	02e50d63          	beq	a0,a4,a0005710 <__vsnprintf+0x2cc>
a00056da:	05800713          	li	a4,88
a00056de:	3ae50963          	beq	a0,a4,a0005a90 <__vsnprintf+0x64c>
a00056e2:	06200713          	li	a4,98
a00056e6:	4889                	li	a7,2
a00056e8:	04e50b63          	beq	a0,a4,a000573e <__vsnprintf+0x2fa>
a00056ec:	04700713          	li	a4,71
a00056f0:	bdcd                	j	a00055e2 <__vsnprintf+0x19e>
a00056f2:	07800713          	li	a4,120
a00056f6:	daa763e3          	bltu	a4,a0,a000549c <__vsnprintf+0x58>
a00056fa:	06800713          	li	a4,104
a00056fe:	f8a765e3          	bltu	a4,a0,a0005688 <__vsnprintf+0x244>
a0005702:	06600713          	li	a4,102
a0005706:	1ae50f63          	beq	a0,a4,a00058c4 <__vsnprintf+0x480>
a000570a:	06700713          	li	a4,103
a000570e:	bdd1                	j	a00055e2 <__vsnprintf+0x19e>
a0005710:	07800713          	li	a4,120
a0005714:	48c1                	li	a7,16
a0005716:	02e50863          	beq	a0,a4,a0005746 <__vsnprintf+0x302>
a000571a:	05800713          	li	a4,88
a000571e:	36e50963          	beq	a0,a4,a0005a90 <__vsnprintf+0x64c>
a0005722:	06f00713          	li	a4,111
a0005726:	36e50963          	beq	a0,a4,a0005a98 <__vsnprintf+0x654>
a000572a:	06200713          	li	a4,98
a000572e:	36e50763          	beq	a0,a4,a0005a9c <__vsnprintf+0x658>
a0005732:	06900713          	li	a4,105
a0005736:	983d                	andi	s0,s0,-17
a0005738:	48a9                	li	a7,10
a000573a:	00e50763          	beq	a0,a4,a0005748 <__vsnprintf+0x304>
a000573e:	06400713          	li	a4,100
a0005742:	00e50363          	beq	a0,a4,a0005748 <__vsnprintf+0x304>
a0005746:	984d                	andi	s0,s0,-13
a0005748:	40047713          	andi	a4,s0,1024
a000574c:	c311                	beqz	a4,a0005750 <__vsnprintf+0x30c>
a000574e:	9879                	andi	s0,s0,-2
a0005750:	06900693          	li	a3,105
a0005754:	20047713          	andi	a4,s0,512
a0005758:	00d50663          	beq	a0,a3,a0005764 <__vsnprintf+0x320>
a000575c:	06400693          	li	a3,100
a0005760:	10d51b63          	bne	a0,a3,a0005876 <__vsnprintf+0x432>
a0005764:	cb41                	beqz	a4,a00057f4 <__vsnprintf+0x3b0>
a0005766:	049d                	addi	s1,s1,7
a0005768:	98e1                	andi	s1,s1,-8
a000576a:	40d8                	lw	a4,4(s1)
a000576c:	8da6                	mv	s11,s1
a000576e:	588dc68b          	lwia	a3,(s11),8,0
a0005772:	41f75793          	srai	a5,a4,0x1f
a0005776:	ca3e                	sw	a5,20(sp)
a0005778:	c83e                	sw	a5,16(sp)
a000577a:	8fb5                	xor	a5,a5,a3
a000577c:	d03e                	sw	a5,32(sp)
a000577e:	47d2                	lw	a5,20(sp)
a0005780:	4642                	lw	a2,16(sp)
a0005782:	46d2                	lw	a3,20(sp)
a0005784:	8fb9                	xor	a5,a5,a4
a0005786:	d23e                	sw	a5,36(sp)
a0005788:	5792                	lw	a5,36(sp)
a000578a:	c042                	sw	a6,0(sp)
a000578c:	01f75813          	srli	a6,a4,0x1f
a0005790:	5702                	lw	a4,32(sp)
a0005792:	c422                	sw	s0,8(sp)
a0005794:	c25a                	sw	s6,4(sp)
a0005796:	c2c71777          	sub64	a4,a4,a2
a000579a:	861a                	mv	a2,t1
a000579c:	86ea                	mv	a3,s10
a000579e:	85de                	mv	a1,s7
a00057a0:	8562                	mv	a0,s8
a00057a2:	fa5fe0ef          	jal	ra,a0004746 <print_integer>
a00057a6:	832a                	mv	t1,a0
a00057a8:	84ee                	mv	s1,s11
a00057aa:	000cc503          	lbu	a0,0(s9)
a00057ae:	ce0512e3          	bnez	a0,a0005492 <__vsnprintf+0x4e>
a00057b2:	a00057b7          	lui	a5,0xa0005
a00057b6:	ad278793          	addi	a5,a5,-1326 # a0004ad2 <__psram_limit+0xf7c04ad2>
a00057ba:	00fc0d63          	beq	s8,a5,a00057d4 <__vsnprintf+0x390>
a00057be:	861a                	mv	a2,t1
a00057c0:	01a36463          	bltu	t1,s10,a00057c8 <__vsnprintf+0x384>
a00057c4:	fffd0613          	addi	a2,s10,-1
a00057c8:	c81a                	sw	t1,16(sp)
a00057ca:	86ea                	mv	a3,s10
a00057cc:	85de                	mv	a1,s7
a00057ce:	4501                	li	a0,0
a00057d0:	9c02                	jalr	s8
a00057d2:	4342                	lw	t1,16(sp)
a00057d4:	40ba                	lw	ra,140(sp)
a00057d6:	442a                	lw	s0,136(sp)
a00057d8:	449a                	lw	s1,132(sp)
a00057da:	490a                	lw	s2,128(sp)
a00057dc:	59f6                	lw	s3,124(sp)
a00057de:	5a66                	lw	s4,120(sp)
a00057e0:	5ad6                	lw	s5,116(sp)
a00057e2:	5b46                	lw	s6,112(sp)
a00057e4:	5bb6                	lw	s7,108(sp)
a00057e6:	5c26                	lw	s8,104(sp)
a00057e8:	5c96                	lw	s9,100(sp)
a00057ea:	5d06                	lw	s10,96(sp)
a00057ec:	4df6                	lw	s11,92(sp)
a00057ee:	851a                	mv	a0,t1
a00057f0:	6149                	addi	sp,sp,144
a00057f2:	8082                	ret
a00057f4:	10047713          	andi	a4,s0,256
a00057f8:	00448d93          	addi	s11,s1,4
a00057fc:	cb15                	beqz	a4,a0005830 <__vsnprintf+0x3ec>
a00057fe:	4098                	lw	a4,0(s1)
a0005800:	41f75693          	srai	a3,a4,0x1f
a0005804:	00e05c63          	blez	a4,a000581c <__vsnprintf+0x3d8>
a0005808:	cc3a                	sw	a4,24(sp)
a000580a:	ce36                	sw	a3,28(sp)
a000580c:	c042                	sw	a6,0(sp)
a000580e:	47f2                	lw	a5,28(sp)
a0005810:	01f75813          	srli	a6,a4,0x1f
a0005814:	c422                	sw	s0,8(sp)
a0005816:	4762                	lw	a4,24(sp)
a0005818:	c25a                	sw	s6,4(sp)
a000581a:	b741                	j	a000579a <__vsnprintf+0x356>
a000581c:	d43a                	sw	a4,40(sp)
a000581e:	d636                	sw	a3,44(sp)
a0005820:	5622                	lw	a2,40(sp)
a0005822:	56b2                	lw	a3,44(sp)
a0005824:	4901                	li	s2,0
a0005826:	4981                	li	s3,0
a0005828:	c2c91677          	sub64	a2,s2,a2
a000582c:	cc32                	sw	a2,24(sp)
a000582e:	bff1                	j	a000580a <__vsnprintf+0x3c6>
a0005830:	04047693          	andi	a3,s0,64
a0005834:	4098                	lw	a4,0(s1)
a0005836:	c28d                	beqz	a3,a0005858 <__vsnprintf+0x414>
a0005838:	1c07270b          	ext	a4,a4,7,0
a000583c:	41f75693          	srai	a3,a4,0x1f
a0005840:	02e05263          	blez	a4,a0005864 <__vsnprintf+0x420>
a0005844:	8a3a                	mv	s4,a4
a0005846:	8ab6                	mv	s5,a3
a0005848:	c042                	sw	a6,0(sp)
a000584a:	c422                	sw	s0,8(sp)
a000584c:	01f75813          	srli	a6,a4,0x1f
a0005850:	c25a                	sw	s6,4(sp)
a0005852:	8752                	mv	a4,s4
a0005854:	87d6                	mv	a5,s5
a0005856:	b791                	j	a000579a <__vsnprintf+0x356>
a0005858:	08047693          	andi	a3,s0,128
a000585c:	d2e5                	beqz	a3,a000583c <__vsnprintf+0x3f8>
a000585e:	3c07270b          	ext	a4,a4,15,0
a0005862:	bfe9                	j	a000583c <__vsnprintf+0x3f8>
a0005864:	d83a                	sw	a4,48(sp)
a0005866:	da36                	sw	a3,52(sp)
a0005868:	5642                	lw	a2,48(sp)
a000586a:	56d2                	lw	a3,52(sp)
a000586c:	4a01                	li	s4,0
a000586e:	4a81                	li	s5,0
a0005870:	c2ca1a77          	sub64	s4,s4,a2
a0005874:	bfd1                	j	a0005848 <__vsnprintf+0x404>
a0005876:	cf01                	beqz	a4,a000588e <__vsnprintf+0x44a>
a0005878:	049d                	addi	s1,s1,7
a000587a:	98e1                	andi	s1,s1,-8
a000587c:	4098                	lw	a4,0(s1)
a000587e:	40dc                	lw	a5,4(s1)
a0005880:	00848d93          	addi	s11,s1,8
a0005884:	c042                	sw	a6,0(sp)
a0005886:	c422                	sw	s0,8(sp)
a0005888:	c25a                	sw	s6,4(sp)
a000588a:	4801                	li	a6,0
a000588c:	b739                	j	a000579a <__vsnprintf+0x356>
a000588e:	10047713          	andi	a4,s0,256
a0005892:	00448d93          	addi	s11,s1,4
a0005896:	cb01                	beqz	a4,a00058a6 <__vsnprintf+0x462>
a0005898:	4098                	lw	a4,0(s1)
a000589a:	c042                	sw	a6,0(sp)
a000589c:	c422                	sw	s0,8(sp)
a000589e:	c25a                	sw	s6,4(sp)
a00058a0:	4801                	li	a6,0
a00058a2:	4781                	li	a5,0
a00058a4:	bddd                	j	a000579a <__vsnprintf+0x356>
a00058a6:	04047693          	andi	a3,s0,64
a00058aa:	4098                	lw	a4,0(s1)
a00058ac:	c681                	beqz	a3,a00058b4 <__vsnprintf+0x470>
a00058ae:	0ff77713          	zext.b	a4,a4
a00058b2:	b7e5                	j	a000589a <__vsnprintf+0x456>
a00058b4:	08047693          	andi	a3,s0,128
a00058b8:	d2ed                	beqz	a3,a000589a <__vsnprintf+0x456>
a00058ba:	57e2                	lw	a5,56(sp)
a00058bc:	8f7d                	and	a4,a4,a5
a00058be:	bff1                	j	a000589a <__vsnprintf+0x456>
a00058c0:	02046413          	ori	s0,s0,32
a00058c4:	049d                	addi	s1,s1,7
a00058c6:	ff84f713          	andi	a4,s1,-8
a00058ca:	435c                	lw	a5,4(a4)
a00058cc:	00870493          	addi	s1,a4,8
a00058d0:	88da                	mv	a7,s6
a00058d2:	4318                	lw	a4,0(a4)
a00058d4:	c202                	sw	zero,4(sp)
a00058d6:	c022                	sw	s0,0(sp)
a00058d8:	86ea                	mv	a3,s10
a00058da:	861a                	mv	a2,t1
a00058dc:	85de                	mv	a1,s7
a00058de:	8562                	mv	a0,s8
a00058e0:	9bfff0ef          	jal	ra,a000529e <print_floating_point>
a00058e4:	832a                	mv	t1,a0
a00058e6:	b5d1                	j	a00057aa <__vsnprintf+0x366>
a00058e8:	8809                	andi	s0,s0,2
a00058ea:	4d85                	li	s11,1
a00058ec:	e815                	bnez	s0,a0005920 <__vsnprintf+0x4dc>
a00058ee:	4d81                	li	s11,0
a00058f0:	a801                	j	a0005900 <__vsnprintf+0x4bc>
a00058f2:	c09a                	sw	t1,64(sp)
a00058f4:	86ea                	mv	a3,s10
a00058f6:	85de                	mv	a1,s7
a00058f8:	02000513          	li	a0,32
a00058fc:	9c02                	jalr	s8
a00058fe:	4306                	lw	t1,64(sp)
a0005900:	006d8633          	add	a2,s11,t1
a0005904:	0d85                	addi	s11,s11,1
a0005906:	ff6de6e3          	bltu	s11,s6,a00058f2 <__vsnprintf+0x4ae>
a000590a:	4701                	li	a4,0
a000590c:	000b0463          	beqz	s6,a0005914 <__vsnprintf+0x4d0>
a0005910:	fffb0713          	addi	a4,s6,-1
a0005914:	933a                	add	t1,t1,a4
a0005916:	4d89                	li	s11,2
a0005918:	000b0463          	beqz	s6,a0005920 <__vsnprintf+0x4dc>
a000591c:	001b0d93          	addi	s11,s6,1
a0005920:	9844c50b          	lbuia	a0,(s1),4,0
a0005924:	86ea                	mv	a3,s10
a0005926:	861a                	mv	a2,t1
a0005928:	85de                	mv	a1,s7
a000592a:	00130913          	addi	s2,t1,1
a000592e:	9c02                	jalr	s8
a0005930:	c40d                	beqz	s0,a000595a <__vsnprintf+0x516>
a0005932:	846e                	mv	s0,s11
a0005934:	864a                	mv	a2,s2
a0005936:	a811                	j	a000594a <__vsnprintf+0x506>
a0005938:	86ea                	mv	a3,s10
a000593a:	85de                	mv	a1,s7
a000593c:	02000513          	li	a0,32
a0005940:	00160993          	addi	s3,a2,1
a0005944:	9c02                	jalr	s8
a0005946:	0405                	addi	s0,s0,1
a0005948:	864e                	mv	a2,s3
a000594a:	ff6467e3          	bltu	s0,s6,a0005938 <__vsnprintf+0x4f4>
a000594e:	4681                	li	a3,0
a0005950:	01bb6463          	bltu	s6,s11,a0005958 <__vsnprintf+0x514>
a0005954:	41bb06b3          	sub	a3,s6,s11
a0005958:	9936                	add	s2,s2,a3
a000595a:	834a                	mv	t1,s2
a000595c:	b5b9                	j	a00057aa <__vsnprintf+0x366>
a000595e:	5844c98b          	lwia	s3,(s1),4,0
a0005962:	02099063          	bnez	s3,a0005982 <__vsnprintf+0x53e>
a0005966:	a0008737          	lui	a4,0xa0008
a000596a:	88a2                	mv	a7,s0
a000596c:	885a                	mv	a6,s6
a000596e:	4799                	li	a5,6
a0005970:	e8070713          	addi	a4,a4,-384 # a0007e80 <__psram_limit+0xf7c07e80>
a0005974:	86ea                	mv	a3,s10
a0005976:	861a                	mv	a2,t1
a0005978:	85de                	mv	a1,s7
a000597a:	8562                	mv	a0,s8
a000597c:	d1dfe0ef          	jal	ra,a0004698 <out_rev_>
a0005980:	b795                	j	a00058e4 <__vsnprintf+0x4a0>
a0005982:	8742                	mv	a4,a6
a0005984:	00081363          	bnez	a6,a000598a <__vsnprintf+0x546>
a0005988:	577d                	li	a4,-1
a000598a:	00e986b3          	add	a3,s3,a4
a000598e:	874e                	mv	a4,s3
a0005990:	00074603          	lbu	a2,0(a4)
a0005994:	c219                	beqz	a2,a000599a <__vsnprintf+0x556>
a0005996:	02e69263          	bne	a3,a4,a00059ba <__vsnprintf+0x576>
a000599a:	40047d93          	andi	s11,s0,1024
a000599e:	41370933          	sub	s2,a4,s3
a00059a2:	000d8663          	beqz	s11,a00059ae <__vsnprintf+0x56a>
a00059a6:	012836b3          	sltu	a3,a6,s2
a00059aa:	42d8190b          	mvnez	s2,a6,a3
a00059ae:	8809                	andi	s0,s0,2
a00059b0:	e429                	bnez	s0,a00059fa <__vsnprintf+0x5b6>
a00059b2:	861a                	mv	a2,t1
a00059b4:	40690eb3          	sub	t4,s2,t1
a00059b8:	a01d                	j	a00059de <__vsnprintf+0x59a>
a00059ba:	0705                	addi	a4,a4,1
a00059bc:	bfd1                	j	a0005990 <__vsnprintf+0x54c>
a00059be:	00160e13          	addi	t3,a2,1
a00059c2:	c6f6                	sw	t4,76(sp)
a00059c4:	c49a                	sw	t1,72(sp)
a00059c6:	c2c2                	sw	a6,68(sp)
a00059c8:	c0f2                	sw	t3,64(sp)
a00059ca:	86ea                	mv	a3,s10
a00059cc:	85de                	mv	a1,s7
a00059ce:	02000513          	li	a0,32
a00059d2:	9c02                	jalr	s8
a00059d4:	4e06                	lw	t3,64(sp)
a00059d6:	4816                	lw	a6,68(sp)
a00059d8:	4326                	lw	t1,72(sp)
a00059da:	4eb6                	lw	t4,76(sp)
a00059dc:	8672                	mv	a2,t3
a00059de:	01d606b3          	add	a3,a2,t4
a00059e2:	fd66eee3          	bltu	a3,s6,a00059be <__vsnprintf+0x57a>
a00059e6:	4681                	li	a3,0
a00059e8:	012b6463          	bltu	s6,s2,a00059f0 <__vsnprintf+0x5ac>
a00059ec:	412b06b3          	sub	a3,s6,s2
a00059f0:	00190713          	addi	a4,s2,1
a00059f4:	9336                	add	t1,t1,a3
a00059f6:	00e68933          	add	s2,a3,a4
a00059fa:	406989b3          	sub	s3,s3,t1
a00059fe:	a829                	j	a0005a18 <__vsnprintf+0x5d4>
a0005a00:	8836                	mv	a6,a3
a0005a02:	00130893          	addi	a7,t1,1
a0005a06:	c2c2                	sw	a6,68(sp)
a0005a08:	c0c6                	sw	a7,64(sp)
a0005a0a:	861a                	mv	a2,t1
a0005a0c:	86ea                	mv	a3,s10
a0005a0e:	85de                	mv	a1,s7
a0005a10:	9c02                	jalr	s8
a0005a12:	4886                	lw	a7,64(sp)
a0005a14:	4816                	lw	a6,68(sp)
a0005a16:	8346                	mv	t1,a7
a0005a18:	8069c50b          	lrbu	a0,s3,t1,0
a0005a1c:	c519                	beqz	a0,a0005a2a <__vsnprintf+0x5e6>
a0005a1e:	fe0d82e3          	beqz	s11,a0005a02 <__vsnprintf+0x5be>
a0005a22:	fff80693          	addi	a3,a6,-1 # a0007fff <__psram_limit+0xf7c07fff>
a0005a26:	fc081de3          	bnez	a6,a0005a00 <__vsnprintf+0x5bc>
a0005a2a:	d80400e3          	beqz	s0,a00057aa <__vsnprintf+0x366>
a0005a2e:	861a                	mv	a2,t1
a0005a30:	40690433          	sub	s0,s2,t1
a0005a34:	a819                	j	a0005a4a <__vsnprintf+0x606>
a0005a36:	c09a                	sw	t1,64(sp)
a0005a38:	86ea                	mv	a3,s10
a0005a3a:	85de                	mv	a1,s7
a0005a3c:	02000513          	li	a0,32
a0005a40:	00160d93          	addi	s11,a2,1
a0005a44:	9c02                	jalr	s8
a0005a46:	4306                	lw	t1,64(sp)
a0005a48:	866e                	mv	a2,s11
a0005a4a:	008606b3          	add	a3,a2,s0
a0005a4e:	ff66e4e3          	bltu	a3,s6,a0005a36 <__vsnprintf+0x5f2>
a0005a52:	4681                	li	a3,0
a0005a54:	012b6463          	bltu	s6,s2,a0005a5c <__vsnprintf+0x618>
a0005a58:	412b06b3          	sub	a3,s6,s2
a0005a5c:	9336                	add	t1,t1,a3
a0005a5e:	b3b1                	j	a00057aa <__vsnprintf+0x366>
a0005a60:	47a9                	li	a5,10
a0005a62:	c446                	sw	a7,8(sp)
a0005a64:	c23e                	sw	a5,4(sp)
a0005a66:	c042                	sw	a6,0(sp)
a0005a68:	48c1                	li	a7,16
a0005a6a:	4801                	li	a6,0
a0005a6c:	4781                	li	a5,0
a0005a6e:	86ea                	mv	a3,s10
a0005a70:	861a                	mv	a2,t1
a0005a72:	85de                	mv	a1,s7
a0005a74:	8562                	mv	a0,s8
a0005a76:	cd1fe0ef          	jal	ra,a0004746 <print_integer>
a0005a7a:	b5ad                	j	a00058e4 <__vsnprintf+0x4a0>
a0005a7c:	00130413          	addi	s0,t1,1
a0005a80:	86ea                	mv	a3,s10
a0005a82:	861a                	mv	a2,t1
a0005a84:	85de                	mv	a1,s7
a0005a86:	02500513          	li	a0,37
a0005a8a:	9c02                	jalr	s8
a0005a8c:	8322                	mv	t1,s0
a0005a8e:	bb31                	j	a00057aa <__vsnprintf+0x366>
a0005a90:	02046413          	ori	s0,s0,32
a0005a94:	48c1                	li	a7,16
a0005a96:	b945                	j	a0005746 <__vsnprintf+0x302>
a0005a98:	48a1                	li	a7,8
a0005a9a:	b155                	j	a000573e <__vsnprintf+0x2fa>
a0005a9c:	4889                	li	a7,2
a0005a9e:	b145                	j	a000573e <__vsnprintf+0x2fa>

a0005aa0 <console_vsnprintf>:
a0005aa0:	86aa                	mv	a3,a0
a0005aa2:	a0005537          	lui	a0,0xa0005
a0005aa6:	872e                	mv	a4,a1
a0005aa8:	4601                	li	a2,0
a0005aaa:	4581                	li	a1,0
a0005aac:	ad250513          	addi	a0,a0,-1326 # a0004ad2 <__psram_limit+0xf7c04ad2>
a0005ab0:	995ff06f          	j	a0005444 <__vsnprintf>

a0005ab4 <putchar>:
a0005ab4:	1141                	addi	sp,sp,-16
a0005ab6:	62fc37b7          	lui	a5,0x62fc3
a0005aba:	c422                	sw	s0,8(sp)
a0005abc:	842a                	mv	s0,a0
a0005abe:	e6c7a503          	lw	a0,-404(a5) # 62fc2e6c <console>
a0005ac2:	c606                	sw	ra,12(sp)
a0005ac4:	cd01                	beqz	a0,a0005adc <putchar+0x28>
a0005ac6:	0ff47593          	zext.b	a1,s0
a0005aca:	c2fbb097          	auipc	ra,0xc2fbb
a0005ace:	c3e080e7          	jalr	-962(ra) # 62fc0708 <qcc74x_uart_putchar>
a0005ad2:	40b2                	lw	ra,12(sp)
a0005ad4:	8522                	mv	a0,s0
a0005ad6:	4422                	lw	s0,8(sp)
a0005ad8:	0141                	addi	sp,sp,16
a0005ada:	8082                	ret
a0005adc:	547d                	li	s0,-1
a0005ade:	bfd5                	j	a0005ad2 <putchar+0x1e>

a0005ae0 <puts>:
a0005ae0:	1101                	addi	sp,sp,-32
a0005ae2:	ce06                	sw	ra,28(sp)
a0005ae4:	cc22                	sw	s0,24(sp)
a0005ae6:	e519                	bnez	a0,a0005af4 <puts+0x14>
a0005ae8:	4401                	li	s0,0
a0005aea:	40f2                	lw	ra,28(sp)
a0005aec:	8522                	mv	a0,s0
a0005aee:	4462                	lw	s0,24(sp)
a0005af0:	6105                	addi	sp,sp,32
a0005af2:	8082                	ret
a0005af4:	c62a                	sw	a0,12(sp)
a0005af6:	2be020ef          	jal	ra,a0007db4 <strlen>
a0005afa:	62fc37b7          	lui	a5,0x62fc3
a0005afe:	842a                	mv	s0,a0
a0005b00:	e6c7a503          	lw	a0,-404(a5) # 62fc2e6c <console>
a0005b04:	d175                	beqz	a0,a0005ae8 <puts+0x8>
a0005b06:	45b2                	lw	a1,12(sp)
a0005b08:	8622                	mv	a2,s0
a0005b0a:	c2fbb097          	auipc	ra,0xc2fbb
a0005b0e:	c50080e7          	jalr	-944(ra) # 62fc075a <qcc74x_uart_put>
a0005b12:	bfe1                	j	a0005aea <puts+0xa>

a0005b14 <printf>:
a0005b14:	7139                	addi	sp,sp,-64
a0005b16:	da3e                	sw	a5,52(sp)
a0005b18:	62fc37b7          	lui	a5,0x62fc3
a0005b1c:	e6c7a783          	lw	a5,-404(a5) # 62fc2e6c <console>
a0005b20:	ce06                	sw	ra,28(sp)
a0005b22:	d22e                	sw	a1,36(sp)
a0005b24:	d432                	sw	a2,40(sp)
a0005b26:	d636                	sw	a3,44(sp)
a0005b28:	d83a                	sw	a4,48(sp)
a0005b2a:	dc42                	sw	a6,56(sp)
a0005b2c:	de46                	sw	a7,60(sp)
a0005b2e:	c799                	beqz	a5,a0005b3c <printf+0x28>
a0005b30:	104c                	addi	a1,sp,36
a0005b32:	c62e                	sw	a1,12(sp)
a0005b34:	37b5                	jal	a0005aa0 <console_vsnprintf>
a0005b36:	40f2                	lw	ra,28(sp)
a0005b38:	6121                	addi	sp,sp,64
a0005b3a:	8082                	ret
a0005b3c:	4501                	li	a0,0
a0005b3e:	bfe5                	j	a0005b36 <printf+0x22>

a0005b40 <qcc74x_uart_set_console>:
a0005b40:	62fc37b7          	lui	a5,0x62fc3
a0005b44:	e6a7a623          	sw	a0,-404(a5) # 62fc2e6c <console>
a0005b48:	8082                	ret

a0005b4a <kmem_init>:
a0005b4a:	862e                	mv	a2,a1
a0005b4c:	85aa                	mv	a1,a0
a0005b4e:	62fc3537          	lui	a0,0x62fc3
a0005b52:	e7050513          	addi	a0,a0,-400 # 62fc2e70 <g_kmemheap>
a0005b56:	aa41                	j	a0005ce6 <qcc74x_mem_init>

a0005b58 <block_next>:
a0005b58:	415c                	lw	a5,4(a0)
a0005b5a:	9bf1                	andi	a5,a5,-4
a0005b5c:	953e                	add	a0,a0,a5
a0005b5e:	0511                	addi	a0,a0,4
a0005b60:	8082                	ret

a0005b62 <block_link_next>:
a0005b62:	1141                	addi	sp,sp,-16
a0005b64:	c422                	sw	s0,8(sp)
a0005b66:	c606                	sw	ra,12(sp)
a0005b68:	842a                	mv	s0,a0
a0005b6a:	37fd                	jal	a0005b58 <block_next>
a0005b6c:	40b2                	lw	ra,12(sp)
a0005b6e:	c100                	sw	s0,0(a0)
a0005b70:	4422                	lw	s0,8(sp)
a0005b72:	0141                	addi	sp,sp,16
a0005b74:	8082                	ret

a0005b76 <mapping_insert>:
a0005b76:	07f00793          	li	a5,127
a0005b7a:	00a7e763          	bltu	a5,a0,a0005b88 <mapping_insert+0x12>
a0005b7e:	8509                	srai	a0,a0,0x2
a0005b80:	4781                	li	a5,0
a0005b82:	c19c                	sw	a5,0(a1)
a0005b84:	c208                	sw	a0,0(a2)
a0005b86:	8082                	ret
a0005b88:	af9506f7          	clz32	a3,a0
a0005b8c:	4769                	li	a4,26
a0005b8e:	8f15                	sub	a4,a4,a3
a0005b90:	00e55533          	srl	a0,a0,a4
a0005b94:	47e5                	li	a5,25
a0005b96:	02054513          	xori	a0,a0,32
a0005b9a:	8f95                	sub	a5,a5,a3
a0005b9c:	b7dd                	j	a0005b82 <mapping_insert+0xc>

a0005b9e <block_insert>:
a0005b9e:	1101                	addi	sp,sp,-32
a0005ba0:	cc22                	sw	s0,24(sp)
a0005ba2:	842a                	mv	s0,a0
a0005ba4:	41c8                	lw	a0,4(a1)
a0005ba6:	ca26                	sw	s1,20(sp)
a0005ba8:	0070                	addi	a2,sp,12
a0005baa:	84ae                	mv	s1,a1
a0005bac:	9971                	andi	a0,a0,-4
a0005bae:	002c                	addi	a1,sp,8
a0005bb0:	ce06                	sw	ra,28(sp)
a0005bb2:	37d1                	jal	a0005b76 <mapping_insert>
a0005bb4:	4722                	lw	a4,8(sp)
a0005bb6:	4632                	lw	a2,12(sp)
a0005bb8:	40f2                	lw	ra,28(sp)
a0005bba:	00571793          	slli	a5,a4,0x5
a0005bbe:	97b2                	add	a5,a5,a2
a0005bc0:	04f4178b          	addsl	a5,s0,a5,2
a0005bc4:	5bf4                	lw	a3,116(a5)
a0005bc6:	c4c0                	sw	s0,12(s1)
a0005bc8:	c494                	sw	a3,8(s1)
a0005bca:	c6c4                	sw	s1,12(a3)
a0005bcc:	dbe4                	sw	s1,116(a5)
a0005bce:	4814                	lw	a3,16(s0)
a0005bd0:	4785                	li	a5,1
a0005bd2:	00e795b3          	sll	a1,a5,a4
a0005bd6:	8ecd                	or	a3,a3,a1
a0005bd8:	c814                	sw	a3,16(s0)
a0005bda:	04e4140b          	addsl	s0,s0,a4,2
a0005bde:	4858                	lw	a4,20(s0)
a0005be0:	00c797b3          	sll	a5,a5,a2
a0005be4:	44d2                	lw	s1,20(sp)
a0005be6:	8fd9                	or	a5,a5,a4
a0005be8:	c85c                	sw	a5,20(s0)
a0005bea:	4462                	lw	s0,24(sp)
a0005bec:	6105                	addi	sp,sp,32
a0005bee:	8082                	ret

a0005bf0 <tlsf_size>:
a0005bf0:	6505                	lui	a0,0x1
a0005bf2:	c7450513          	addi	a0,a0,-908 # c74 <VerOffset+0x74>
a0005bf6:	8082                	ret

a0005bf8 <tlsf_add_pool>:
a0005bf8:	1141                	addi	sp,sp,-16
a0005bfa:	c606                	sw	ra,12(sp)
a0005bfc:	c422                	sw	s0,8(sp)
a0005bfe:	c226                	sw	s1,4(sp)
a0005c00:	0035f713          	andi	a4,a1,3
a0005c04:	cf11                	beqz	a4,a0005c20 <tlsf_add_pool+0x28>
a0005c06:	a0008537          	lui	a0,0xa0008
a0005c0a:	4591                	li	a1,4
a0005c0c:	fa850513          	addi	a0,a0,-88 # a0007fa8 <__psram_limit+0xf7c07fa8>
a0005c10:	3711                	jal	a0005b14 <printf>
a0005c12:	4401                	li	s0,0
a0005c14:	40b2                	lw	ra,12(sp)
a0005c16:	8522                	mv	a0,s0
a0005c18:	4422                	lw	s0,8(sp)
a0005c1a:	4492                	lw	s1,4(sp)
a0005c1c:	0141                	addi	sp,sp,16
a0005c1e:	8082                	ret
a0005c20:	ff860793          	addi	a5,a2,-8
a0005c24:	9bf1                	andi	a5,a5,-4
a0005c26:	40000637          	lui	a2,0x40000
a0005c2a:	ff478713          	addi	a4,a5,-12
a0005c2e:	ff460693          	addi	a3,a2,-12 # 3ffffff4 <__wifi_bss_end+0x1cfcfff4>
a0005c32:	00e6fa63          	bgeu	a3,a4,a0005c46 <tlsf_add_pool+0x4e>
a0005c36:	a0008537          	lui	a0,0xa0008
a0005c3a:	0621                	addi	a2,a2,8
a0005c3c:	45d1                	li	a1,20
a0005c3e:	fdc50513          	addi	a0,a0,-36 # a0007fdc <__psram_limit+0xf7c07fdc>
a0005c42:	3dc9                	jal	a0005b14 <printf>
a0005c44:	b7f9                	j	a0005c12 <tlsf_add_pool+0x1a>
a0005c46:	84ae                	mv	s1,a1
a0005c48:	59c4c70b          	lwia	a4,(s1),-4,0
a0005c4c:	0017e793          	ori	a5,a5,1
a0005c50:	842e                	mv	s0,a1
a0005c52:	c0dc                	sw	a5,4(s1)
a0005c54:	85a6                	mv	a1,s1
a0005c56:	37a1                	jal	a0005b9e <block_insert>
a0005c58:	8526                	mv	a0,s1
a0005c5a:	3721                	jal	a0005b62 <block_link_next>
a0005c5c:	4789                	li	a5,2
a0005c5e:	c15c                	sw	a5,4(a0)
a0005c60:	bf55                	j	a0005c14 <tlsf_add_pool+0x1c>

a0005c62 <tlsf_create>:
a0005c62:	00357793          	andi	a5,a0,3
a0005c66:	cf89                	beqz	a5,a0005c80 <tlsf_create+0x1e>
a0005c68:	a0008537          	lui	a0,0xa0008
a0005c6c:	1141                	addi	sp,sp,-16
a0005c6e:	4591                	li	a1,4
a0005c70:	01c50513          	addi	a0,a0,28 # a000801c <__psram_limit+0xf7c0801c>
a0005c74:	c606                	sw	ra,12(sp)
a0005c76:	3d79                	jal	a0005b14 <printf>
a0005c78:	40b2                	lw	ra,12(sp)
a0005c7a:	4501                	li	a0,0
a0005c7c:	0141                	addi	sp,sp,16
a0005c7e:	8082                	ret
a0005c80:	c508                	sw	a0,8(a0)
a0005c82:	c548                	sw	a0,12(a0)
a0005c84:	00052823          	sw	zero,16(a0)
a0005c88:	07450693          	addi	a3,a0,116
a0005c8c:	4781                	li	a5,0
a0005c8e:	01450593          	addi	a1,a0,20
a0005c92:	02000813          	li	a6,32
a0005c96:	4661                	li	a2,24
a0005c98:	44f5d00b          	srw	zero,a1,a5,2
a0005c9c:	4701                	li	a4,0
a0005c9e:	44e6d50b          	srw	a0,a3,a4,2
a0005ca2:	0705                	addi	a4,a4,1
a0005ca4:	ff071de3          	bne	a4,a6,a0005c9e <tlsf_create+0x3c>
a0005ca8:	0785                	addi	a5,a5,1
a0005caa:	08068693          	addi	a3,a3,128
a0005cae:	fec795e3          	bne	a5,a2,a0005c98 <tlsf_create+0x36>
a0005cb2:	8082                	ret

a0005cb4 <tlsf_create_with_pool>:
a0005cb4:	1101                	addi	sp,sp,-32
a0005cb6:	ce06                	sw	ra,28(sp)
a0005cb8:	cc22                	sw	s0,24(sp)
a0005cba:	ca26                	sw	s1,20(sp)
a0005cbc:	c62e                	sw	a1,12(sp)
a0005cbe:	84aa                	mv	s1,a0
a0005cc0:	374d                	jal	a0005c62 <tlsf_create>
a0005cc2:	45b2                	lw	a1,12(sp)
a0005cc4:	77fd                	lui	a5,0xfffff
a0005cc6:	38c78793          	addi	a5,a5,908 # fffff38c <__psram_limit+0x57bff38c>
a0005cca:	00f58633          	add	a2,a1,a5
a0005cce:	6585                	lui	a1,0x1
a0005cd0:	c7458593          	addi	a1,a1,-908 # c74 <VerOffset+0x74>
a0005cd4:	95a6                	add	a1,a1,s1
a0005cd6:	842a                	mv	s0,a0
a0005cd8:	3705                	jal	a0005bf8 <tlsf_add_pool>
a0005cda:	40f2                	lw	ra,28(sp)
a0005cdc:	8522                	mv	a0,s0
a0005cde:	4462                	lw	s0,24(sp)
a0005ce0:	44d2                	lw	s1,20(sp)
a0005ce2:	6105                	addi	sp,sp,32
a0005ce4:	8082                	ret

a0005ce6 <qcc74x_mem_init>:
a0005ce6:	1101                	addi	sp,sp,-32
a0005ce8:	ce06                	sw	ra,28(sp)
a0005cea:	cc22                	sw	s0,24(sp)
a0005cec:	ca26                	sw	s1,20(sp)
a0005cee:	842a                	mv	s0,a0
a0005cf0:	84ae                	mv	s1,a1
a0005cf2:	c632                	sw	a2,12(sp)
a0005cf4:	3df5                	jal	a0005bf0 <tlsf_size>
a0005cf6:	9526                	add	a0,a0,s1
a0005cf8:	c048                	sw	a0,4(s0)
a0005cfa:	3ddd                	jal	a0005bf0 <tlsf_size>
a0005cfc:	4632                	lw	a2,12(sp)
a0005cfe:	40a60533          	sub	a0,a2,a0
a0005d02:	c408                	sw	a0,8(s0)
a0005d04:	85b2                	mv	a1,a2
a0005d06:	8526                	mv	a0,s1
a0005d08:	3775                	jal	a0005cb4 <tlsf_create_with_pool>
a0005d0a:	441c                	lw	a5,8(s0)
a0005d0c:	40f2                	lw	ra,28(sp)
a0005d0e:	c008                	sw	a0,0(s0)
a0005d10:	c45c                	sw	a5,12(s0)
a0005d12:	c81c                	sw	a5,16(s0)
a0005d14:	4462                	lw	s0,24(sp)
a0005d16:	44d2                	lw	s1,20(sp)
a0005d18:	6105                	addi	sp,sp,32
a0005d1a:	8082                	ret

a0005d1c <log_start>:
a0005d1c:	8082                	ret

a0005d1e <coredump_run>:
a0005d1e:	711d                	addi	sp,sp,-96
a0005d20:	cca2                	sw	s0,88(sp)
a0005d22:	62fc3537          	lui	a0,0x62fc3
a0005d26:	a0009437          	lui	s0,0xa0009
a0005d2a:	f1840593          	addi	a1,s0,-232 # a0008f18 <__psram_limit+0xf7c08f18>
a0005d2e:	4651                	li	a2,20
a0005d30:	e8450513          	addi	a0,a0,-380 # 62fc2e84 <core_build_id>
a0005d34:	ce86                	sw	ra,92(sp)
a0005d36:	c4d2                	sw	s4,72(sp)
a0005d38:	c2d6                	sw	s5,68(sp)
a0005d3a:	c0da                	sw	s6,64(sp)
a0005d3c:	caa6                	sw	s1,84(sp)
a0005d3e:	c8ca                	sw	s2,80(sp)
a0005d40:	c6ce                	sw	s3,76(sp)
a0005d42:	cfcfe0ef          	jal	ra,a000423e <memcpy>
a0005d46:	a0008537          	lui	a0,0xa0008
a0005d4a:	05050513          	addi	a0,a0,80 # a0008050 <__psram_limit+0xf7c08050>
a0005d4e:	33d9                	jal	a0005b14 <printf>
a0005d50:	f1840613          	addi	a2,s0,-232
a0005d54:	01364783          	lbu	a5,19(a2)
a0005d58:	a0008537          	lui	a0,0xa0008
a0005d5c:	09850513          	addi	a0,a0,152 # a0008098 <__psram_limit+0xf7c08098>
a0005d60:	d83e                	sw	a5,48(sp)
a0005d62:	01264783          	lbu	a5,18(a2)
a0005d66:	5a75                	li	s4,-3
a0005d68:	40000a93          	li	s5,1024
a0005d6c:	d63e                	sw	a5,44(sp)
a0005d6e:	01164783          	lbu	a5,17(a2)
a0005d72:	a0008b37          	lui	s6,0xa0008
a0005d76:	d43e                	sw	a5,40(sp)
a0005d78:	01064783          	lbu	a5,16(a2)
a0005d7c:	d23e                	sw	a5,36(sp)
a0005d7e:	00f64783          	lbu	a5,15(a2)
a0005d82:	d03e                	sw	a5,32(sp)
a0005d84:	00e64783          	lbu	a5,14(a2)
a0005d88:	ce3e                	sw	a5,28(sp)
a0005d8a:	00d64783          	lbu	a5,13(a2)
a0005d8e:	cc3e                	sw	a5,24(sp)
a0005d90:	00c64783          	lbu	a5,12(a2)
a0005d94:	ca3e                	sw	a5,20(sp)
a0005d96:	00b64783          	lbu	a5,11(a2)
a0005d9a:	c83e                	sw	a5,16(sp)
a0005d9c:	00a64783          	lbu	a5,10(a2)
a0005da0:	c63e                	sw	a5,12(sp)
a0005da2:	00964783          	lbu	a5,9(a2)
a0005da6:	c43e                	sw	a5,8(sp)
a0005da8:	00864783          	lbu	a5,8(a2)
a0005dac:	c23e                	sw	a5,4(sp)
a0005dae:	00764783          	lbu	a5,7(a2)
a0005db2:	c03e                	sw	a5,0(sp)
a0005db4:	00664883          	lbu	a7,6(a2)
a0005db8:	00564803          	lbu	a6,5(a2)
a0005dbc:	00464783          	lbu	a5,4(a2)
a0005dc0:	00364703          	lbu	a4,3(a2)
a0005dc4:	00264683          	lbu	a3,2(a2)
a0005dc8:	00164603          	lbu	a2,1(a2)
a0005dcc:	f1844583          	lbu	a1,-232(s0)
a0005dd0:	a0009437          	lui	s0,0xa0009
a0005dd4:	ee040413          	addi	s0,s0,-288 # a0008ee0 <__psram_limit+0xf7c08ee0>
a0005dd8:	3b35                	jal	a0005b14 <printf>
a0005dda:	00042983          	lw	s3,0(s0)
a0005dde:	fff98793          	addi	a5,s3,-1
a0005de2:	00fa7b63          	bgeu	s4,a5,a0005df8 <coredump_run+0xda>
a0005de6:	a0008537          	lui	a0,0xa0008
a0005dea:	10450513          	addi	a0,a0,260 # a0008104 <__psram_limit+0xf7c08104>
a0005dee:	331d                	jal	a0005b14 <printf>
a0005df0:	317010ef          	jal	ra,a0007906 <qcc74x_sys_reset_por>
a0005df4:	0001                	nop
a0005df6:	bffd                	j	a0005df4 <coredump_run+0xd6>
a0005df8:	00442903          	lw	s2,4(s0)
a0005dfc:	00091463          	bnez	s2,a0005e04 <coredump_run+0xe6>
a0005e00:	0421                	addi	s0,s0,8
a0005e02:	bfe1                	j	a0005dda <coredump_run+0xbc>
a0005e04:	4481                	li	s1,0
a0005e06:	40990633          	sub	a2,s2,s1
a0005e0a:	009985b3          	add	a1,s3,s1
a0005e0e:	00caf463          	bgeu	s5,a2,a0005e16 <coredump_run+0xf8>
a0005e12:	40000613          	li	a2,1024
a0005e16:	0f8b0693          	addi	a3,s6,248 # a00080f8 <__psram_limit+0xf7c080f8>
a0005e1a:	852e                	mv	a0,a1
a0005e1c:	40048493          	addi	s1,s1,1024
a0005e20:	2851                	jal	a0005eb4 <coredump_print>
a0005e22:	ff24e2e3          	bltu	s1,s2,a0005e06 <coredump_run+0xe8>
a0005e26:	bfe9                	j	a0005e00 <coredump_run+0xe2>

a0005e28 <cd_base64_write_block>:
a0005e28:	1141                	addi	sp,sp,-16
a0005e2a:	c606                	sw	ra,12(sp)
a0005e2c:	c422                	sw	s0,8(sp)
a0005e2e:	c226                	sw	s1,4(sp)
a0005e30:	842a                	mv	s0,a0
a0005e32:	00054503          	lbu	a0,0(a0)
a0005e36:	84ae                	mv	s1,a1
a0005e38:	39b5                	jal	a0005ab4 <putchar>
a0005e3a:	00144503          	lbu	a0,1(s0)
a0005e3e:	399d                	jal	a0005ab4 <putchar>
a0005e40:	00244503          	lbu	a0,2(s0)
a0005e44:	3985                	jal	a0005ab4 <putchar>
a0005e46:	00344503          	lbu	a0,3(s0)
a0005e4a:	31ad                	jal	a0005ab4 <putchar>
a0005e4c:	409c                	lw	a5,0(s1)
a0005e4e:	4765                	li	a4,25
a0005e50:	0785                	addi	a5,a5,1
a0005e52:	c09c                	sw	a5,0(s1)
a0005e54:	00f75963          	bge	a4,a5,a0005e66 <cd_base64_write_block+0x3e>
a0005e58:	a0009537          	lui	a0,0xa0009
a0005e5c:	cc850513          	addi	a0,a0,-824 # a0008cc8 <__psram_limit+0xf7c08cc8>
a0005e60:	3141                	jal	a0005ae0 <puts>
a0005e62:	0004a023          	sw	zero,0(s1)
a0005e66:	40b2                	lw	ra,12(sp)
a0005e68:	4422                	lw	s0,8(sp)
a0005e6a:	4492                	lw	s1,4(sp)
a0005e6c:	0141                	addi	sp,sp,16
a0005e6e:	8082                	ret

a0005e70 <read_word_cb>:
a0005e70:	4598                	lw	a4,8(a1)
a0005e72:	45dc                	lw	a5,12(a1)
a0005e74:	02f77e63          	bgeu	a4,a5,a0005eb0 <read_word_cb+0x40>
a0005e78:	41d4                	lw	a3,4(a1)
a0005e7a:	1141                	addi	sp,sp,-16
a0005e7c:	c606                	sw	ra,12(sp)
a0005e7e:	ffc77793          	andi	a5,a4,-4
a0005e82:	00f68563          	beq	a3,a5,a0005e8c <read_word_cb+0x1c>
a0005e86:	c1dc                	sw	a5,4(a1)
a0005e88:	439c                	lw	a5,0(a5)
a0005e8a:	c99c                	sw	a5,16(a1)
a0005e8c:	8b0d                	andi	a4,a4,3
a0005e8e:	972e                	add	a4,a4,a1
a0005e90:	01074703          	lbu	a4,16(a4)
a0005e94:	87ae                	mv	a5,a1
a0005e96:	00e50023          	sb	a4,0(a0)
a0005e9a:	4598                	lw	a4,8(a1)
a0005e9c:	0705                	addi	a4,a4,1
a0005e9e:	c598                	sw	a4,8(a1)
a0005ea0:	00054583          	lbu	a1,0(a0)
a0005ea4:	4bc8                	lw	a0,20(a5)
a0005ea6:	241d                	jal	a00060cc <utils_crc32_stream_feed>
a0005ea8:	40b2                	lw	ra,12(sp)
a0005eaa:	4501                	li	a0,0
a0005eac:	0141                	addi	sp,sp,16
a0005eae:	8082                	ret
a0005eb0:	4505                	li	a0,1
a0005eb2:	8082                	ret

a0005eb4 <coredump_print>:
a0005eb4:	715d                	addi	sp,sp,-80
a0005eb6:	c2a6                	sw	s1,68(sp)
a0005eb8:	62fc34b7          	lui	s1,0x62fc3
a0005ebc:	e9848493          	addi	s1,s1,-360 # 62fc2e98 <init.0>
a0005ec0:	409c                	lw	a5,0(s1)
a0005ec2:	c4a2                	sw	s0,72(sp)
a0005ec4:	c0ca                	sw	s2,64(sp)
a0005ec6:	de4e                	sw	s3,60(sp)
a0005ec8:	dc52                	sw	s4,56(sp)
a0005eca:	c686                	sw	ra,76(sp)
a0005ecc:	da56                	sw	s5,52(sp)
a0005ece:	892a                	mv	s2,a0
a0005ed0:	89ae                	mv	s3,a1
a0005ed2:	8432                	mv	s0,a2
a0005ed4:	8a36                	mv	s4,a3
a0005ed6:	eb81                	bnez	a5,a0005ee6 <coredump_print+0x32>
a0005ed8:	a0008537          	lui	a0,0xa0008
a0005edc:	12c50513          	addi	a0,a0,300 # a000812c <__psram_limit+0xf7c0812c>
a0005ee0:	3101                	jal	a0005ae0 <puts>
a0005ee2:	4785                	li	a5,1
a0005ee4:	c09c                	sw	a5,0(s1)
a0005ee6:	a0008537          	lui	a0,0xa0008
a0005eea:	8209190b          	rev	s2,s2
a0005eee:	15850513          	addi	a0,a0,344 # a0008158 <__psram_limit+0xf7c08158>
a0005ef2:	c802                	sw	zero,16(sp)
a0005ef4:	ca02                	sw	zero,20(sp)
a0005ef6:	36ed                	jal	a0005ae0 <puts>
a0005ef8:	c64a                	sw	s2,12(sp)
a0005efa:	00c10913          	addi	s2,sp,12
a0005efe:	4611                	li	a2,4
a0005f00:	85ca                	mv	a1,s2
a0005f02:	0808                	addi	a0,sp,16
a0005f04:	22f5                	jal	a00060f0 <utils_bin2hex>
a0005f06:	4481                	li	s1,0
a0005f08:	4aa1                	li	s5,8
a0005f0a:	081c                	addi	a5,sp,16
a0005f0c:	8097c50b          	lrbu	a0,a5,s1,0
a0005f10:	0485                	addi	s1,s1,1
a0005f12:	364d                	jal	a0005ab4 <putchar>
a0005f14:	ff549be3          	bne	s1,s5,a0005f0a <coredump_print+0x56>
a0005f18:	04000513          	li	a0,64
a0005f1c:	3e61                	jal	a0005ab4 <putchar>
a0005f1e:	8204178b          	rev	a5,s0
a0005f22:	4611                	li	a2,4
a0005f24:	85ca                	mv	a1,s2
a0005f26:	0808                	addi	a0,sp,16
a0005f28:	c63e                	sw	a5,12(sp)
a0005f2a:	4481                	li	s1,0
a0005f2c:	22d1                	jal	a00060f0 <utils_bin2hex>
a0005f2e:	4aa1                	li	s5,8
a0005f30:	081c                	addi	a5,sp,16
a0005f32:	8097c50b          	lrbu	a0,a5,s1,0
a0005f36:	0485                	addi	s1,s1,1
a0005f38:	3eb5                	jal	a0005ab4 <putchar>
a0005f3a:	ff549be3          	bne	s1,s5,a0005f30 <coredump_print+0x7c>
a0005f3e:	000a0763          	beqz	s4,a0005f4c <coredump_print+0x98>
a0005f42:	04000513          	li	a0,64
a0005f46:	36bd                	jal	a0005ab4 <putchar>
a0005f48:	8552                	mv	a0,s4
a0005f4a:	3e59                	jal	a0005ae0 <puts>
a0005f4c:	a00084b7          	lui	s1,0xa0008
a0005f50:	17048513          	addi	a0,s1,368 # a0008170 <__psram_limit+0xf7c08170>
a0005f54:	3671                	jal	a0005ae0 <puts>
a0005f56:	0048                	addi	a0,sp,4
a0005f58:	22bd                	jal	a00060c6 <utils_crc32_stream_init>
a0005f5a:	ffc9f793          	andi	a5,s3,-4
a0005f5e:	ce3e                	sw	a5,28(sp)
a0005f60:	943e                	add	s0,s0,a5
a0005f62:	439c                	lw	a5,0(a5)
a0005f64:	d04e                	sw	s3,32(sp)
a0005f66:	d222                	sw	s0,36(sp)
a0005f68:	a00069b7          	lui	s3,0xa0006
a0005f6c:	a0006437          	lui	s0,0xa0006
a0005f70:	0830                	addi	a2,sp,24
a0005f72:	e2898593          	addi	a1,s3,-472 # a0005e28 <__psram_limit+0xf7c05e28>
a0005f76:	d43e                	sw	a5,40(sp)
a0005f78:	e7040513          	addi	a0,s0,-400 # a0005e70 <__psram_limit+0xf7c05e70>
a0005f7c:	005c                	addi	a5,sp,4
a0005f7e:	d63e                	sw	a5,44(sp)
a0005f80:	cc02                	sw	zero,24(sp)
a0005f82:	20a1                	jal	a0005fca <utils_base64_encode_stream>
a0005f84:	a0008537          	lui	a0,0xa0008
a0005f88:	17c50513          	addi	a0,a0,380 # a000817c <__psram_limit+0xf7c0817c>
a0005f8c:	3e91                	jal	a0005ae0 <puts>
a0005f8e:	0048                	addi	a0,sp,4
a0005f90:	2aa1                	jal	a00060e8 <utils_crc32_stream_results>
a0005f92:	003c                	addi	a5,sp,8
a0005f94:	c42a                	sw	a0,8(sp)
a0005f96:	ce3e                	sw	a5,28(sp)
a0005f98:	d03e                	sw	a5,32(sp)
a0005f9a:	d42a                	sw	a0,40(sp)
a0005f9c:	005c                	addi	a5,sp,4
a0005f9e:	0830                	addi	a2,sp,24
a0005fa0:	e2898593          	addi	a1,s3,-472
a0005fa4:	e7040513          	addi	a0,s0,-400
a0005fa8:	d24a                	sw	s2,36(sp)
a0005faa:	d63e                	sw	a5,44(sp)
a0005fac:	cc02                	sw	zero,24(sp)
a0005fae:	2831                	jal	a0005fca <utils_base64_encode_stream>
a0005fb0:	17048513          	addi	a0,s1,368
a0005fb4:	b2dff0ef          	jal	ra,a0005ae0 <puts>
a0005fb8:	40b6                	lw	ra,76(sp)
a0005fba:	4426                	lw	s0,72(sp)
a0005fbc:	4496                	lw	s1,68(sp)
a0005fbe:	4906                	lw	s2,64(sp)
a0005fc0:	59f2                	lw	s3,60(sp)
a0005fc2:	5a62                	lw	s4,56(sp)
a0005fc4:	5ad2                	lw	s5,52(sp)
a0005fc6:	6161                	addi	sp,sp,80
a0005fc8:	8082                	ret

a0005fca <utils_base64_encode_stream>:
a0005fca:	7139                	addi	sp,sp,-64
a0005fcc:	d84a                	sw	s2,48(sp)
a0005fce:	a0008937          	lui	s2,0xa0008
a0005fd2:	da26                	sw	s1,52(sp)
a0005fd4:	d64e                	sw	s3,44(sp)
a0005fd6:	d452                	sw	s4,40(sp)
a0005fd8:	d256                	sw	s5,36(sp)
a0005fda:	d05a                	sw	s6,32(sp)
a0005fdc:	ce5e                	sw	s7,28(sp)
a0005fde:	de06                	sw	ra,60(sp)
a0005fe0:	dc22                	sw	s0,56(sp)
a0005fe2:	cc62                	sw	s8,24(sp)
a0005fe4:	8a2a                	mv	s4,a0
a0005fe6:	8aae                	mv	s5,a1
a0005fe8:	89b2                	mv	s3,a2
a0005fea:	54fd                	li	s1,-1
a0005fec:	5b7d                	li	s6,-1
a0005fee:	18c90913          	addi	s2,s2,396 # a000818c <__psram_limit+0xf7c0818c>
a0005ff2:	00c10b93          	addi	s7,sp,12
a0005ff6:	85ce                	mv	a1,s3
a0005ff8:	00b10513          	addi	a0,sp,11
a0005ffc:	9a02                	jalr	s4
a0005ffe:	c15d                	beqz	a0,a00060a4 <utils_base64_encode_stream+0xda>
a0006000:	0004d363          	bgez	s1,a0006006 <utils_base64_encode_stream+0x3c>
a0006004:	4481                	li	s1,0
a0006006:	4401                	li	s0,0
a0006008:	85ce                	mv	a1,s3
a000600a:	00b10513          	addi	a0,sp,11
a000600e:	9a02                	jalr	s4
a0006010:	cd49                	beqz	a0,a00060aa <utils_base64_encode_stream+0xe0>
a0006012:	4c01                	li	s8,0
a0006014:	01649363          	bne	s1,s6,a000601a <utils_base64_encode_stream+0x50>
a0006018:	4485                	li	s1,1
a000601a:	85ce                	mv	a1,s3
a000601c:	00b10513          	addi	a0,sp,11
a0006020:	9a02                	jalr	s4
a0006022:	c559                	beqz	a0,a00060b0 <utils_base64_encode_stream+0xe6>
a0006024:	4701                	li	a4,0
a0006026:	01649363          	bne	s1,s6,a000602c <utils_base64_encode_stream+0x62>
a000602a:	4489                	li	s1,2
a000602c:	01041793          	slli	a5,s0,0x10
a0006030:	0c22                	slli	s8,s8,0x8
a0006032:	97e2                	add	a5,a5,s8
a0006034:	97ba                	add	a5,a5,a4
a0006036:	c111                	beqz	a0,a000603a <utils_base64_encode_stream+0x70>
a0006038:	c8b1                	beqz	s1,a000608c <utils_base64_encode_stream+0xc2>
a000603a:	0127d713          	srli	a4,a5,0x12
a000603e:	80e9470b          	lrbu	a4,s2,a4,0
a0006042:	00e10623          	sb	a4,12(sp)
a0006046:	44c7b70b          	extu	a4,a5,17,12
a000604a:	80e9470b          	lrbu	a4,s2,a4,0
a000604e:	00e106a3          	sb	a4,13(sp)
a0006052:	2c67b70b          	extu	a4,a5,11,6
a0006056:	03f7f793          	andi	a5,a5,63
a000605a:	80e9470b          	lrbu	a4,s2,a4,0
a000605e:	80f9478b          	lrbu	a5,s2,a5,0
a0006062:	00e10723          	sb	a4,14(sp)
a0006066:	00f107a3          	sb	a5,15(sp)
a000606a:	c531                	beqz	a0,a00060b6 <utils_base64_encode_stream+0xec>
a000606c:	a00087b7          	lui	a5,0xa0008
a0006070:	1cc78793          	addi	a5,a5,460 # a00081cc <__psram_limit+0xf7c081cc>
a0006074:	4497c70b          	lrw	a4,a5,s1,2
a0006078:	03d00613          	li	a2,61
a000607c:	87de                	mv	a5,s7
a000607e:	40fb86b3          	sub	a3,s7,a5
a0006082:	02e6ce63          	blt	a3,a4,a00060be <utils_base64_encode_stream+0xf4>
a0006086:	85ce                	mv	a1,s3
a0006088:	855e                	mv	a0,s7
a000608a:	9a82                	jalr	s5
a000608c:	50f2                	lw	ra,60(sp)
a000608e:	5462                	lw	s0,56(sp)
a0006090:	54d2                	lw	s1,52(sp)
a0006092:	5942                	lw	s2,48(sp)
a0006094:	59b2                	lw	s3,44(sp)
a0006096:	5a22                	lw	s4,40(sp)
a0006098:	5a92                	lw	s5,36(sp)
a000609a:	5b02                	lw	s6,32(sp)
a000609c:	4bf2                	lw	s7,28(sp)
a000609e:	4c62                	lw	s8,24(sp)
a00060a0:	6121                	addi	sp,sp,64
a00060a2:	8082                	ret
a00060a4:	00b14403          	lbu	s0,11(sp)
a00060a8:	b785                	j	a0006008 <utils_base64_encode_stream+0x3e>
a00060aa:	00b14c03          	lbu	s8,11(sp)
a00060ae:	b7b5                	j	a000601a <utils_base64_encode_stream+0x50>
a00060b0:	00b14703          	lbu	a4,11(sp)
a00060b4:	bfa5                	j	a000602c <utils_base64_encode_stream+0x62>
a00060b6:	85ce                	mv	a1,s3
a00060b8:	855e                	mv	a0,s7
a00060ba:	9a82                	jalr	s5
a00060bc:	bf2d                	j	a0005ff6 <utils_base64_encode_stream+0x2c>
a00060be:	00c781a3          	sb	a2,3(a5)
a00060c2:	17fd                	addi	a5,a5,-1
a00060c4:	bf6d                	j	a000607e <utils_base64_encode_stream+0xb4>

a00060c6 <utils_crc32_stream_init>:
a00060c6:	57fd                	li	a5,-1
a00060c8:	c11c                	sw	a5,0(a0)
a00060ca:	8082                	ret

a00060cc <utils_crc32_stream_feed>:
a00060cc:	411c                	lw	a5,0(a0)
a00060ce:	a0008737          	lui	a4,0xa0008
a00060d2:	1d870713          	addi	a4,a4,472 # a00081d8 <__psram_limit+0xf7c081d8>
a00060d6:	8dbd                	xor	a1,a1,a5
a00060d8:	0ff5f593          	zext.b	a1,a1
a00060dc:	44b7470b          	lrw	a4,a4,a1,2
a00060e0:	83a1                	srli	a5,a5,0x8
a00060e2:	8fb9                	xor	a5,a5,a4
a00060e4:	c11c                	sw	a5,0(a0)
a00060e6:	8082                	ret

a00060e8 <utils_crc32_stream_results>:
a00060e8:	4108                	lw	a0,0(a0)
a00060ea:	fff54513          	not	a0,a0
a00060ee:	8082                	ret

a00060f0 <utils_bin2hex>:
a00060f0:	a0008737          	lui	a4,0xa0008
a00060f4:	4781                	li	a5,0
a00060f6:	5d870713          	addi	a4,a4,1496 # a00085d8 <__psram_limit+0xf7c085d8>
a00060fa:	00150813          	addi	a6,a0,1
a00060fe:	00f61563          	bne	a2,a5,a0006108 <utils_bin2hex+0x18>
a0006102:	02c5150b          	addsl	a0,a0,a2,1
a0006106:	8082                	ret
a0006108:	80f5c68b          	lrbu	a3,a1,a5,0
a000610c:	0046d893          	srli	a7,a3,0x4
a0006110:	8117488b          	lrbu	a7,a4,a7,0
a0006114:	8abd                	andi	a3,a3,15
a0006116:	80d7468b          	lrbu	a3,a4,a3,0
a000611a:	02f5588b          	srb	a7,a0,a5,1
a000611e:	02f8568b          	srb	a3,a6,a5,1
a0006122:	0785                	addi	a5,a5,1
a0006124:	bfe9                	j	a00060fe <utils_bin2hex+0xe>

a0006126 <qcc74x_gpio_init>:
a0006126:	1101                	addi	sp,sp,-32
a0006128:	c84a                	sw	s2,16(sp)
a000612a:	00452903          	lw	s2,4(a0)
a000612e:	852e                	mv	a0,a1
a0006130:	cc22                	sw	s0,24(sp)
a0006132:	ca26                	sw	s1,20(sp)
a0006134:	3c06340b          	extu	s0,a2,15,0
a0006138:	34c6348b          	extu	s1,a2,13,12
a000613c:	c632                	sw	a2,12(sp)
a000613e:	c42e                	sw	a1,8(sp)
a0006140:	ce06                	sw	ra,28(sp)
a0006142:	728010ef          	jal	ra,a000786a <qcc74x_gpio_pad_check>
a0006146:	45a2                	lw	a1,8(sp)
a0006148:	47c1                	li	a5,16
a000614a:	4632                	lw	a2,12(sp)
a000614c:	06f59463          	bne	a1,a5,a00061b4 <qcc74x_gpio_init+0x8e>
a0006150:	2000f6b7          	lui	a3,0x2000f
a0006154:	5e9c                	lw	a5,56(a3)
a0006156:	fff00737          	lui	a4,0xfff00
a000615a:	177d                	addi	a4,a4,-1
a000615c:	8ff9                	and	a5,a5,a4
a000615e:	de9c                	sw	a5,56(a3)
a0006160:	08047793          	andi	a5,s0,128
a0006164:	04b9158b          	addsl	a1,s2,a1,2
a0006168:	efa5                	bnez	a5,a00061e0 <qcc74x_gpio_init+0xba>
a000616a:	10047793          	andi	a5,s0,256
a000616e:	cfa1                	beqz	a5,a00061c6 <qcc74x_gpio_init+0xa0>
a0006170:	004007b7          	lui	a5,0x400
a0006174:	01f67713          	andi	a4,a2,31
a0006178:	0785                	addi	a5,a5,1
a000617a:	20067693          	andi	a3,a2,512
a000617e:	c6ad                	beqz	a3,a00061e8 <qcc74x_gpio_init+0xc2>
a0006180:	0107e793          	ori	a5,a5,16
a0006184:	2cb6360b          	extu	a2,a2,11,11
a0006188:	c219                	beqz	a2,a000618e <qcc74x_gpio_init+0x68>
a000618a:	0027e793          	ori	a5,a5,2
a000618e:	048a                	slli	s1,s1,0x2
a0006190:	8cdd                	or	s1,s1,a5
a0006192:	00871793          	slli	a5,a4,0x8
a0006196:	8fc5                	or	a5,a5,s1
a0006198:	40000737          	lui	a4,0x40000
a000619c:	40f2                	lw	ra,28(sp)
a000619e:	4462                	lw	s0,24(sp)
a00061a0:	8fd9                	or	a5,a5,a4
a00061a2:	6705                	lui	a4,0x1
a00061a4:	8c470713          	addi	a4,a4,-1852 # 8c4 <__RFTLV_SIZE_HOLE+0xc4>
a00061a8:	40e5d78b          	srw	a5,a1,a4,0
a00061ac:	44d2                	lw	s1,20(sp)
a00061ae:	4942                	lw	s2,16(sp)
a00061b0:	6105                	addi	sp,sp,32
a00061b2:	8082                	ret
a00061b4:	47c5                	li	a5,17
a00061b6:	faf595e3          	bne	a1,a5,a0006160 <qcc74x_gpio_init+0x3a>
a00061ba:	2000f6b7          	lui	a3,0x2000f
a00061be:	5e9c                	lw	a5,56(a3)
a00061c0:	ffe00737          	lui	a4,0xffe00
a00061c4:	bf59                	j	a000615a <qcc74x_gpio_init+0x34>
a00061c6:	02047713          	andi	a4,s0,32
a00061ca:	004007b7          	lui	a5,0x400
a00061ce:	c311                	beqz	a4,a00061d2 <qcc74x_gpio_init+0xac>
a00061d0:	0785                	addi	a5,a5,1
a00061d2:	04047413          	andi	s0,s0,64
a00061d6:	472d                	li	a4,11
a00061d8:	d04d                	beqz	s0,a000617a <qcc74x_gpio_init+0x54>
a00061da:	0407e793          	ori	a5,a5,64
a00061de:	bf71                	j	a000617a <qcc74x_gpio_init+0x54>
a00061e0:	4729                	li	a4,10
a00061e2:	004007b7          	lui	a5,0x400
a00061e6:	bf51                	j	a000617a <qcc74x_gpio_init+0x54>
a00061e8:	40067693          	andi	a3,a2,1024
a00061ec:	dec1                	beqz	a3,a0006184 <qcc74x_gpio_init+0x5e>
a00061ee:	0207e793          	ori	a5,a5,32
a00061f2:	bf49                	j	a0006184 <qcc74x_gpio_init+0x5e>

a00061f4 <qcc74x_gpio_set>:
a00061f4:	1101                	addi	sp,sp,-32
a00061f6:	cc22                	sw	s0,24(sp)
a00061f8:	842a                	mv	s0,a0
a00061fa:	852e                	mv	a0,a1
a00061fc:	ce06                	sw	ra,28(sp)
a00061fe:	c62e                	sw	a1,12(sp)
a0006200:	66a010ef          	jal	ra,a000786a <qcc74x_gpio_pad_check>
a0006204:	405c                	lw	a5,4(s0)
a0006206:	45b2                	lw	a1,12(sp)
a0006208:	6705                	lui	a4,0x1
a000620a:	aec70713          	addi	a4,a4,-1300 # aec <__RFTLV_SIZE_HOLE+0x2ec>
a000620e:	40f2                	lw	ra,28(sp)
a0006210:	4462                	lw	s0,24(sp)
a0006212:	97ba                	add	a5,a5,a4
a0006214:	4705                	li	a4,1
a0006216:	0055d693          	srli	a3,a1,0x5
a000621a:	00b71733          	sll	a4,a4,a1
a000621e:	44d7d70b          	srw	a4,a5,a3,2
a0006222:	6105                	addi	sp,sp,32
a0006224:	8082                	ret

a0006226 <qcc74x_gpio_reset>:
a0006226:	1101                	addi	sp,sp,-32
a0006228:	cc22                	sw	s0,24(sp)
a000622a:	842a                	mv	s0,a0
a000622c:	852e                	mv	a0,a1
a000622e:	ce06                	sw	ra,28(sp)
a0006230:	c62e                	sw	a1,12(sp)
a0006232:	638010ef          	jal	ra,a000786a <qcc74x_gpio_pad_check>
a0006236:	405c                	lw	a5,4(s0)
a0006238:	45b2                	lw	a1,12(sp)
a000623a:	6705                	lui	a4,0x1
a000623c:	af470713          	addi	a4,a4,-1292 # af4 <__RFTLV_SIZE_HOLE+0x2f4>
a0006240:	40f2                	lw	ra,28(sp)
a0006242:	4462                	lw	s0,24(sp)
a0006244:	97ba                	add	a5,a5,a4
a0006246:	4705                	li	a4,1
a0006248:	0055d693          	srli	a3,a1,0x5
a000624c:	00b71733          	sll	a4,a4,a1
a0006250:	44d7d70b          	srw	a4,a5,a3,2
a0006254:	6105                	addi	sp,sp,32
a0006256:	8082                	ret

a0006258 <qcc74x_gpio_read>:
a0006258:	1101                	addi	sp,sp,-32
a000625a:	cc22                	sw	s0,24(sp)
a000625c:	842a                	mv	s0,a0
a000625e:	852e                	mv	a0,a1
a0006260:	ce06                	sw	ra,28(sp)
a0006262:	c62e                	sw	a1,12(sp)
a0006264:	606010ef          	jal	ra,a000786a <qcc74x_gpio_pad_check>
a0006268:	405c                	lw	a5,4(s0)
a000626a:	45b2                	lw	a1,12(sp)
a000626c:	6705                	lui	a4,0x1
a000626e:	8c470713          	addi	a4,a4,-1852 # 8c4 <__RFTLV_SIZE_HOLE+0xc4>
a0006272:	97ba                	add	a5,a5,a4
a0006274:	44b7c50b          	lrw	a0,a5,a1,2
a0006278:	40f2                	lw	ra,28(sp)
a000627a:	4462                	lw	s0,24(sp)
a000627c:	71c5350b          	extu	a0,a0,28,28
a0006280:	6105                	addi	sp,sp,32
a0006282:	8082                	ret

a0006284 <qcc74x_gpio_uart_init>:
a0006284:	1101                	addi	sp,sp,-32
a0006286:	cc22                	sw	s0,24(sp)
a0006288:	ca26                	sw	s1,20(sp)
a000628a:	4140                	lw	s0,4(a0)
a000628c:	84aa                	mv	s1,a0
a000628e:	852e                	mv	a0,a1
a0006290:	c632                	sw	a2,12(sp)
a0006292:	c42e                	sw	a1,8(sp)
a0006294:	ce06                	sw	ra,28(sp)
a0006296:	5d4010ef          	jal	ra,a000786a <qcc74x_gpio_pad_check>
a000629a:	45a2                	lw	a1,8(sp)
a000629c:	46b1                	li	a3,12
a000629e:	479d                	li	a5,7
a00062a0:	02d5f6b3          	remu	a3,a1,a3
a00062a4:	4632                	lw	a2,12(sp)
a00062a6:	0ad7e063          	bltu	a5,a3,a0006346 <qcc74x_gpio_uart_init+0xc2>
a00062aa:	00269713          	slli	a4,a3,0x2
a00062ae:	15442803          	lw	a6,340(s0)
a00062b2:	47bd                	li	a5,15
a00062b4:	00e797b3          	sll	a5,a5,a4
a00062b8:	fff7c793          	not	a5,a5
a00062bc:	0107f833          	and	a6,a5,a6
a00062c0:	00e617b3          	sll	a5,a2,a4
a00062c4:	0107e7b3          	or	a5,a5,a6
a00062c8:	4701                	li	a4,0
a00062ca:	48bd                	li	a7,15
a00062cc:	4321                	li	t1,8
a00062ce:	00271513          	slli	a0,a4,0x2
a00062d2:	00a89833          	sll	a6,a7,a0
a00062d6:	00f87e33          	and	t3,a6,a5
a00062da:	00a61533          	sll	a0,a2,a0
a00062de:	00ae1d63          	bne	t3,a0,a00062f8 <qcc74x_gpio_uart_init+0x74>
a00062e2:	0ff77513          	zext.b	a0,a4
a00062e6:	00d50963          	beq	a0,a3,a00062f8 <qcc74x_gpio_uart_init+0x74>
a00062ea:	01160763          	beq	a2,a7,a00062f8 <qcc74x_gpio_uart_init+0x74>
a00062ee:	fff84513          	not	a0,a6
a00062f2:	8fe9                	and	a5,a5,a0
a00062f4:	00f867b3          	or	a5,a6,a5
a00062f8:	0705                	addi	a4,a4,1
a00062fa:	fc671ae3          	bne	a4,t1,a00062ce <qcc74x_gpio_uart_init+0x4a>
a00062fe:	15842703          	lw	a4,344(s0)
a0006302:	4681                	li	a3,0
a0006304:	483d                	li	a6,15
a0006306:	48c1                	li	a7,16
a0006308:	00d81533          	sll	a0,a6,a3
a000630c:	00e57e33          	and	t3,a0,a4
a0006310:	00d61333          	sll	t1,a2,a3
a0006314:	006e1963          	bne	t3,t1,a0006326 <qcc74x_gpio_uart_init+0xa2>
a0006318:	01060763          	beq	a2,a6,a0006326 <qcc74x_gpio_uart_init+0xa2>
a000631c:	fff54313          	not	t1,a0
a0006320:	00e37733          	and	a4,t1,a4
a0006324:	8f49                	or	a4,a4,a0
a0006326:	0691                	addi	a3,a3,4
a0006328:	ff1690e3          	bne	a3,a7,a0006308 <qcc74x_gpio_uart_init+0x84>
a000632c:	14f42a23          	sw	a5,340(s0)
a0006330:	14e42c23          	sw	a4,344(s0)
a0006334:	4462                	lw	s0,24(sp)
a0006336:	40f2                	lw	ra,28(sp)
a0006338:	8526                	mv	a0,s1
a000633a:	44d2                	lw	s1,20(sp)
a000633c:	6609                	lui	a2,0x2
a000633e:	b0760613          	addi	a2,a2,-1273 # 1b07 <HeapMinSize+0xb07>
a0006342:	6105                	addi	sp,sp,32
a0006344:	b3cd                	j	a0006126 <qcc74x_gpio_init>
a0006346:	ff868713          	addi	a4,a3,-8 # 2000eff8 <remain_wifi_ram+0x1ffeeff8>
a000634a:	070a                	slli	a4,a4,0x2
a000634c:	0ff77713          	zext.b	a4,a4
a0006350:	15842803          	lw	a6,344(s0)
a0006354:	47bd                	li	a5,15
a0006356:	00e797b3          	sll	a5,a5,a4
a000635a:	fff7c793          	not	a5,a5
a000635e:	0107f833          	and	a6,a5,a6
a0006362:	00e617b3          	sll	a5,a2,a4
a0006366:	0107e7b3          	or	a5,a5,a6
a000636a:	4701                	li	a4,0
a000636c:	48bd                	li	a7,15
a000636e:	4311                	li	t1,4
a0006370:	00271513          	slli	a0,a4,0x2
a0006374:	00a89833          	sll	a6,a7,a0
a0006378:	00f87e33          	and	t3,a6,a5
a000637c:	00a61533          	sll	a0,a2,a0
a0006380:	00ae1f63          	bne	t3,a0,a000639e <qcc74x_gpio_uart_init+0x11a>
a0006384:	00870513          	addi	a0,a4,8
a0006388:	0ff57513          	zext.b	a0,a0
a000638c:	00d50963          	beq	a0,a3,a000639e <qcc74x_gpio_uart_init+0x11a>
a0006390:	01160763          	beq	a2,a7,a000639e <qcc74x_gpio_uart_init+0x11a>
a0006394:	fff84513          	not	a0,a6
a0006398:	8fe9                	and	a5,a5,a0
a000639a:	00f867b3          	or	a5,a6,a5
a000639e:	0705                	addi	a4,a4,1
a00063a0:	fc6718e3          	bne	a4,t1,a0006370 <qcc74x_gpio_uart_init+0xec>
a00063a4:	15442703          	lw	a4,340(s0)
a00063a8:	4681                	li	a3,0
a00063aa:	483d                	li	a6,15
a00063ac:	02000893          	li	a7,32
a00063b0:	00d81533          	sll	a0,a6,a3
a00063b4:	00e57e33          	and	t3,a0,a4
a00063b8:	00d61333          	sll	t1,a2,a3
a00063bc:	006e1963          	bne	t3,t1,a00063ce <qcc74x_gpio_uart_init+0x14a>
a00063c0:	01060763          	beq	a2,a6,a00063ce <qcc74x_gpio_uart_init+0x14a>
a00063c4:	fff54313          	not	t1,a0
a00063c8:	00e37733          	and	a4,t1,a4
a00063cc:	8f49                	or	a4,a4,a0
a00063ce:	0691                	addi	a3,a3,4
a00063d0:	ff1690e3          	bne	a3,a7,a00063b0 <qcc74x_gpio_uart_init+0x12c>
a00063d4:	14f42c23          	sw	a5,344(s0)
a00063d8:	14e42a23          	sw	a4,340(s0)
a00063dc:	bfa1                	j	a0006334 <qcc74x_gpio_uart_init+0xb0>

a00063de <qcc74x_i2c_disable.isra.0>:
a00063de:	411c                	lw	a5,0(a0)
a00063e0:	08050713          	addi	a4,a0,128
a00063e4:	9bf9                	andi	a5,a5,-2
a00063e6:	c11c                	sw	a5,0(a0)
a00063e8:	431c                	lw	a5,0(a4)
a00063ea:	00c7e793          	ori	a5,a5,12
a00063ee:	c31c                	sw	a5,0(a4)
a00063f0:	415c                	lw	a5,4(a0)
a00063f2:	00190737          	lui	a4,0x190
a00063f6:	8fd9                	or	a5,a5,a4
a00063f8:	c15c                	sw	a5,4(a0)
a00063fa:	8082                	ret

a00063fc <qcc74x_i2c_enable.isra.0>:
a00063fc:	411c                	lw	a5,0(a0)
a00063fe:	0017e793          	ori	a5,a5,1
a0006402:	c11c                	sw	a5,0(a0)
a0006404:	8082                	ret

a0006406 <qcc74x_i2c_addr_config.isra.0>:
a0006406:	00052803          	lw	a6,0(a0)
a000640a:	fef87793          	andi	a5,a6,-17
a000640e:	ca91                	beqz	a3,a0006422 <qcc74x_i2c_addr_config.isra.0+0x1c>
a0006410:	fff68793          	addi	a5,a3,-1
a0006414:	0796                	slli	a5,a5,0x5
a0006416:	f9f87813          	andi	a6,a6,-97
a000641a:	0107e7b3          	or	a5,a5,a6
a000641e:	0107e793          	ori	a5,a5,16
a0006422:	8eaa                	mv	t4,a0
a0006424:	588ed78b          	swia	a5,(t4),8,0
a0006428:	4781                	li	a5,0
a000642a:	00d7fc63          	bgeu	a5,a3,a0006442 <qcc74x_i2c_addr_config.isra.0+0x3c>
a000642e:	00178813          	addi	a6,a5,1 # 400001 <remain_wifi_ram+0x3e0001>
a0006432:	80f6488b          	lrbu	a7,a2,a5,0
a0006436:	00fe8333          	add	t1,t4,a5
a000643a:	02d84363          	blt	a6,a3,a0006460 <qcc74x_i2c_addr_config.isra.0+0x5a>
a000643e:	01132023          	sw	a7,0(t1)
a0006442:	411c                	lw	a5,0(a0)
a0006444:	fffc06b7          	lui	a3,0xfffc0
a0006448:	0ff68693          	addi	a3,a3,255 # fffc00ff <__psram_limit+0x57bc00ff>
a000644c:	8ff5                	and	a5,a5,a3
a000644e:	05a2                	slli	a1,a1,0x8
a0006450:	8ddd                	or	a1,a1,a5
a0006452:	f7f5f793          	andi	a5,a1,-129
a0006456:	c319                	beqz	a4,a000645c <qcc74x_i2c_addr_config.isra.0+0x56>
a0006458:	0805e793          	ori	a5,a1,128
a000645c:	c11c                	sw	a5,0(a0)
a000645e:	8082                	ret
a0006460:	00f60f33          	add	t5,a2,a5
a0006464:	001f4803          	lbu	a6,1(t5)
a0006468:	00881e13          	slli	t3,a6,0x8
a000646c:	00278813          	addi	a6,a5,2
a0006470:	00d84763          	blt	a6,a3,a000647e <qcc74x_i2c_addr_config.isra.0+0x78>
a0006474:	01c8e833          	or	a6,a7,t3
a0006478:	01032023          	sw	a6,0(t1)
a000647c:	b7d9                	j	a0006442 <qcc74x_i2c_addr_config.isra.0+0x3c>
a000647e:	002f4803          	lbu	a6,2(t5)
a0006482:	0842                	slli	a6,a6,0x10
a0006484:	01c86833          	or	a6,a6,t3
a0006488:	01186833          	or	a6,a6,a7
a000648c:	00378893          	addi	a7,a5,3
a0006490:	fed8d4e3          	bge	a7,a3,a0006478 <qcc74x_i2c_addr_config.isra.0+0x72>
a0006494:	003f4883          	lbu	a7,3(t5)
a0006498:	0791                	addi	a5,a5,4
a000649a:	08e2                	slli	a7,a7,0x18
a000649c:	0108e833          	or	a6,a7,a6
a00064a0:	01032023          	sw	a6,0(t1)
a00064a4:	f8d7dfe3          	bge	a5,a3,a0006442 <qcc74x_i2c_addr_config.isra.0+0x3c>
a00064a8:	0ff7f793          	zext.b	a5,a5
a00064ac:	bfbd                	j	a000642a <qcc74x_i2c_addr_config.isra.0+0x24>

a00064ae <qcc74x_i2c_init>:
a00064ae:	1141                	addi	sp,sp,-16
a00064b0:	c422                	sw	s0,8(sp)
a00064b2:	4140                	lw	s0,4(a0)
a00064b4:	c04a                	sw	s2,0(sp)
a00064b6:	892a                	mv	s2,a0
a00064b8:	8522                	mv	a0,s0
a00064ba:	c606                	sw	ra,12(sp)
a00064bc:	c226                	sw	s1,4(sp)
a00064be:	84ae                	mv	s1,a1
a00064c0:	3f39                	jal	a00063de <qcc74x_i2c_disable.isra.0>
a00064c2:	405c                	lw	a5,4(s0)
a00064c4:	6711                	lui	a4,0x4
a00064c6:	f0070713          	addi	a4,a4,-256 # 3f00 <HeapMinSize+0x2f00>
a00064ca:	8fd9                	or	a5,a5,a4
a00064cc:	c05c                	sw	a5,4(s0)
a00064ce:	00994583          	lbu	a1,9(s2)
a00064d2:	451d                	li	a0,7
a00064d4:	00492403          	lw	s0,4(s2)
a00064d8:	3a8010ef          	jal	ra,a0007880 <qcc74x_clk_get_peripheral_clock>
a00064dc:	0014d793          	srli	a5,s1,0x1
a00064e0:	953e                	add	a0,a0,a5
a00064e2:	02955533          	divu	a0,a0,s1
a00064e6:	6761                	lui	a4,0x18
a00064e8:	6a070713          	addi	a4,a4,1696 # 186a0 <wifi_ram_max_size+0x106a0>
a00064ec:	00250793          	addi	a5,a0,2
a00064f0:	0e976963          	bltu	a4,s1,a00065e2 <qcc74x_i2c_init+0x134>
a00064f4:	4711                	li	a4,4
a00064f6:	02e7c7b3          	div	a5,a5,a4
a00064fa:	4709                	li	a4,2
a00064fc:	02e54733          	div	a4,a0,a4
a0006500:	8d1d                	sub	a0,a0,a5
a0006502:	85be                	mv	a1,a5
a0006504:	40f70633          	sub	a2,a4,a5
a0006508:	8d19                	sub	a0,a0,a4
a000650a:	4014                	lw	a3,0(s0)
a000650c:	4831                	li	a6,12
a000650e:	4701                	li	a4,0
a0006510:	00c6f893          	andi	a7,a3,12
a0006514:	01089563          	bne	a7,a6,a000651e <qcc74x_i2c_init+0x70>
a0006518:	01c6d713          	srli	a4,a3,0x1c
a000651c:	0705                	addi	a4,a4,1
a000651e:	8aa1                	andi	a3,a3,8
a0006520:	c291                	beqz	a3,a0006524 <qcc74x_i2c_init+0x76>
a0006522:	070d                	addi	a4,a4,3
a0006524:	86ae                	mv	a3,a1
a0006526:	00b04363          	bgtz	a1,a000652c <qcc74x_i2c_init+0x7e>
a000652a:	4685                	li	a3,1
a000652c:	00f74463          	blt	a4,a5,a0006534 <qcc74x_i2c_init+0x86>
a0006530:	00170793          	addi	a5,a4,1
a0006534:	00c04363          	bgtz	a2,a000653a <qcc74x_i2c_init+0x8c>
a0006538:	4605                	li	a2,1
a000653a:	10000813          	li	a6,256
a000653e:	00d85463          	bge	a6,a3,a0006546 <qcc74x_i2c_init+0x98>
a0006542:	10000693          	li	a3,256
a0006546:	10000813          	li	a6,256
a000654a:	00f85463          	bge	a6,a5,a0006552 <qcc74x_i2c_init+0xa4>
a000654e:	10000793          	li	a5,256
a0006552:	10000813          	li	a6,256
a0006556:	00c85463          	bge	a6,a2,a000655e <qcc74x_i2c_init+0xb0>
a000655a:	10000613          	li	a2,256
a000655e:	0ff00893          	li	a7,255
a0006562:	10000813          	li	a6,256
a0006566:	00b8c663          	blt	a7,a1,a0006572 <qcc74x_i2c_init+0xc4>
a000656a:	882a                	mv	a6,a0
a000656c:	00a04363          	bgtz	a0,a0006572 <qcc74x_i2c_init+0xc4>
a0006570:	4805                	li	a6,1
a0006572:	fff60593          	addi	a1,a2,-1
a0006576:	fff68513          	addi	a0,a3,-1
a000657a:	05c2                	slli	a1,a1,0x10
a000657c:	40e78733          	sub	a4,a5,a4
a0006580:	4889                	li	a7,2
a0006582:	8dc9                	or	a1,a1,a0
a0006584:	01175363          	bge	a4,a7,a000658a <qcc74x_i2c_init+0xdc>
a0006588:	4709                	li	a4,2
a000658a:	177d                	addi	a4,a4,-1
a000658c:	0722                	slli	a4,a4,0x8
a000658e:	8f4d                	or	a4,a4,a1
a0006590:	fff80593          	addi	a1,a6,-1
a0006594:	05e2                	slli	a1,a1,0x18
a0006596:	8f4d                	or	a4,a4,a1
a0006598:	cc18                	sw	a4,24(s0)
a000659a:	97b2                	add	a5,a5,a2
a000659c:	10000713          	li	a4,256
a00065a0:	00f75463          	bge	a4,a5,a00065a8 <qcc74x_i2c_init+0xfa>
a00065a4:	10000793          	li	a5,256
a00065a8:	17fd                	addi	a5,a5,-1
a00065aa:	01079713          	slli	a4,a5,0x10
a00065ae:	8f49                	or	a4,a4,a0
a00065b0:	96c2                	add	a3,a3,a6
a00065b2:	10000613          	li	a2,256
a00065b6:	8f4d                	or	a4,a4,a1
a00065b8:	00d65463          	bge	a2,a3,a00065c0 <qcc74x_i2c_init+0x112>
a00065bc:	10000693          	li	a3,256
a00065c0:	16fd                	addi	a3,a3,-1
a00065c2:	06a2                	slli	a3,a3,0x8
a00065c4:	8ed9                	or	a3,a3,a4
a00065c6:	01051713          	slli	a4,a0,0x10
a00065ca:	8f49                	or	a4,a4,a0
a00065cc:	07a2                	slli	a5,a5,0x8
a00065ce:	8fd9                	or	a5,a5,a4
a00065d0:	c814                	sw	a3,16(s0)
a00065d2:	8fcd                	or	a5,a5,a1
a00065d4:	40b2                	lw	ra,12(sp)
a00065d6:	c85c                	sw	a5,20(s0)
a00065d8:	4422                	lw	s0,8(sp)
a00065da:	4492                	lw	s1,4(sp)
a00065dc:	4902                	lw	s2,0(sp)
a00065de:	0141                	addi	sp,sp,16
a00065e0:	8082                	ret
a00065e2:	468d                	li	a3,3
a00065e4:	02d7c5b3          	div	a1,a5,a3
a00065e8:	4719                	li	a4,6
a00065ea:	00350793          	addi	a5,a0,3
a00065ee:	02e7c7b3          	div	a5,a5,a4
a00065f2:	00150713          	addi	a4,a0,1
a00065f6:	8d0d                	sub	a0,a0,a1
a00065f8:	02d74733          	div	a4,a4,a3
a00065fc:	40f70633          	sub	a2,a4,a5
a0006600:	8d19                	sub	a0,a0,a4
a0006602:	b721                	j	a000650a <qcc74x_i2c_init+0x5c>

a0006604 <qcc74x_i2c_transfer>:
a0006604:	4789                	li	a5,2
a0006606:	02c7d463          	bge	a5,a2,a000662e <qcc74x_i2c_transfer+0x2a>
a000660a:	5529                	li	a0,-22
a000660c:	8082                	ret
a000660e:	5529                	li	a0,-22
a0006610:	40b6                	lw	ra,76(sp)
a0006612:	4426                	lw	s0,72(sp)
a0006614:	4496                	lw	s1,68(sp)
a0006616:	4906                	lw	s2,64(sp)
a0006618:	59f2                	lw	s3,60(sp)
a000661a:	5a62                	lw	s4,56(sp)
a000661c:	5ad2                	lw	s5,52(sp)
a000661e:	5b42                	lw	s6,48(sp)
a0006620:	5bb2                	lw	s7,44(sp)
a0006622:	5c22                	lw	s8,40(sp)
a0006624:	5c92                	lw	s9,36(sp)
a0006626:	5d02                	lw	s10,32(sp)
a0006628:	4df2                	lw	s11,28(sp)
a000662a:	6161                	addi	sp,sp,80
a000662c:	8082                	ret
a000662e:	715d                	addi	sp,sp,-80
a0006630:	c2a6                	sw	s1,68(sp)
a0006632:	84aa                	mv	s1,a0
a0006634:	4148                	lw	a0,4(a0)
a0006636:	d65e                	sw	s7,44(sp)
a0006638:	f0100bb7          	lui	s7,0xf0100
a000663c:	c0ca                	sw	s2,64(sp)
a000663e:	de4e                	sw	s3,60(sp)
a0006640:	dc52                	sw	s4,56(sp)
a0006642:	d462                	sw	s8,40(sp)
a0006644:	d266                	sw	s9,36(sp)
a0006646:	c686                	sw	ra,76(sp)
a0006648:	c4a2                	sw	s0,72(sp)
a000664a:	da56                	sw	s5,52(sp)
a000664c:	d85a                	sw	s6,48(sp)
a000664e:	d06a                	sw	s10,32(sp)
a0006650:	ce6e                	sw	s11,28(sp)
a0006652:	c232                	sw	a2,4(sp)
a0006654:	8a2e                	mv	s4,a1
a0006656:	4901                	li	s2,0
a0006658:	3359                	jal	a00063de <qcc74x_i2c_disable.isra.0>
a000665a:	4c31                	li	s8,12
a000665c:	1bfd                	addi	s7,s7,-1
a000665e:	4c91                	li	s9,4
a0006660:	06400993          	li	s3,100
a0006664:	4792                	lw	a5,4(sp)
a0006666:	00f94463          	blt	s2,a5,a000666e <qcc74x_i2c_transfer+0x6a>
a000666a:	4501                	li	a0,0
a000666c:	b755                	j	a0006610 <qcc74x_i2c_transfer+0xc>
a000666e:	03890633          	mul	a2,s2,s8
a0006672:	40c8                	lw	a0,4(s1)
a0006674:	00ca06b3          	add	a3,s4,a2
a0006678:	0026d783          	lhu	a5,2(a3)
a000667c:	a0ca458b          	lrhu	a1,s4,a2,0
a0006680:	42d0                	lw	a2,4(a3)
a0006682:	0417b70b          	extu	a4,a5,1,1
a0006686:	0407f793          	andi	a5,a5,64
a000668a:	c7d9                	beqz	a5,a0006718 <qcc74x_i2c_transfer+0x114>
a000668c:	0086c683          	lbu	a3,8(a3)
a0006690:	0905                	addi	s2,s2,1
a0006692:	3c09390b          	extu	s2,s2,15,0
a0006696:	3b85                	jal	a0006406 <qcc74x_i2c_addr_config.isra.0>
a0006698:	8752                	mv	a4,s4
a000669a:	2189170b          	mula	a4,s2,s8
a000669e:	10000793          	li	a5,256
a00066a2:	00875403          	lhu	s0,8(a4)
a00066a6:	f687e4e3          	bltu	a5,s0,a000660e <qcc74x_i2c_transfer+0xa>
a00066aa:	40d0                	lw	a2,4(s1)
a00066ac:	0ff005b7          	lui	a1,0xff00
a00066b0:	421c                	lw	a5,0(a2)
a00066b2:	0177f6b3          	and	a3,a5,s7
a00066b6:	fff40793          	addi	a5,s0,-1
a00066ba:	07d2                	slli	a5,a5,0x14
a00066bc:	8fed                	and	a5,a5,a1
a00066be:	8fd5                	or	a5,a5,a3
a00066c0:	c21c                	sw	a5,0(a2)
a00066c2:	00275783          	lhu	a5,2(a4)
a00066c6:	0017f693          	andi	a3,a5,1
a00066ca:	0047f613          	andi	a2,a5,4
a00066ce:	40dc                	lw	a5,4(s1)
a00066d0:	10068663          	beqz	a3,a00067dc <qcc74x_i2c_transfer+0x1d8>
a00066d4:	4394                	lw	a3,0(a5)
a00066d6:	0026e693          	ori	a3,a3,2
a00066da:	c394                	sw	a3,0(a5)
a00066dc:	20061563          	bnez	a2,a00068e6 <qcc74x_i2c_transfer+0x2e2>
a00066e0:	0044ad03          	lw	s10,4(s1)
a00066e4:	00472b03          	lw	s6,4(a4)
a00066e8:	4d8d                	li	s11,3
a00066ea:	856a                	mv	a0,s10
a00066ec:	3b01                	jal	a00063fc <qcc74x_i2c_enable.isra.0>
a00066ee:	028de863          	bltu	s11,s0,a000671e <qcc74x_i2c_transfer+0x11a>
a00066f2:	e059                	bnez	s0,a0006778 <qcc74x_i2c_transfer+0x174>
a00066f4:	c2fba097          	auipc	ra,0xc2fba
a00066f8:	386080e7          	jalr	902(ra) # 62fc0a7a <qcc74x_mtimer_get_time_ms>
a00066fc:	8d2a                	mv	s10,a0
a00066fe:	8dae                	mv	s11,a1
a0006700:	40c8                	lw	a0,4(s1)
a0006702:	455c                	lw	a5,12(a0)
a0006704:	8b85                	andi	a5,a5,1
a0006706:	e3e9                	bnez	a5,a00067c8 <qcc74x_i2c_transfer+0x1c4>
a0006708:	415c                	lw	a5,4(a0)
a000670a:	8b85                	andi	a5,a5,1
a000670c:	cfd5                	beqz	a5,a00067c8 <qcc74x_i2c_transfer+0x1c4>
a000670e:	39c1                	jal	a00063de <qcc74x_i2c_disable.isra.0>
a0006710:	0905                	addi	s2,s2,1
a0006712:	3c09390b          	extu	s2,s2,15,0
a0006716:	b7b9                	j	a0006664 <qcc74x_i2c_transfer+0x60>
a0006718:	4681                	li	a3,0
a000671a:	31f5                	jal	a0006406 <qcc74x_i2c_addr_config.isra.0>
a000671c:	bfb5                	j	a0006698 <qcc74x_i2c_transfer+0x94>
a000671e:	c2fba097          	auipc	ra,0xc2fba
a0006722:	35c080e7          	jalr	860(ra) # 62fc0a7a <qcc74x_mtimer_get_time_ms>
a0006726:	872a                	mv	a4,a0
a0006728:	87ae                	mv	a5,a1
a000672a:	084d2683          	lw	a3,132(s10)
a000672e:	3006f693          	andi	a3,a3,768
a0006732:	c29d                	beqz	a3,a0006758 <qcc74x_i2c_transfer+0x154>
a0006734:	08cd2783          	lw	a5,140(s10)
a0006738:	0b11                	addi	s6,s6,4
a000673a:	1471                	addi	s0,s0,-4
a000673c:	0087d713          	srli	a4,a5,0x8
a0006740:	fefb0e23          	sb	a5,-4(s6)
a0006744:	feeb0ea3          	sb	a4,-3(s6)
a0006748:	0107d713          	srli	a4,a5,0x10
a000674c:	83e1                	srli	a5,a5,0x18
a000674e:	feeb0f23          	sb	a4,-2(s6)
a0006752:	fefb0fa3          	sb	a5,-1(s6)
a0006756:	bf61                	j	a00066ee <qcc74x_i2c_transfer+0xea>
a0006758:	c43a                	sw	a4,8(sp)
a000675a:	c63e                	sw	a5,12(sp)
a000675c:	c2fba097          	auipc	ra,0xc2fba
a0006760:	31e080e7          	jalr	798(ra) # 62fc0a7a <qcc74x_mtimer_get_time_ms>
a0006764:	4722                	lw	a4,8(sp)
a0006766:	47b2                	lw	a5,12(sp)
a0006768:	c2e51577          	sub64	a0,a0,a4
a000676c:	e199                	bnez	a1,a0006772 <qcc74x_i2c_transfer+0x16e>
a000676e:	faa9fee3          	bgeu	s3,a0,a000672a <qcc74x_i2c_transfer+0x126>
a0006772:	f8c00513          	li	a0,-116
a0006776:	bd69                	j	a0006610 <qcc74x_i2c_transfer+0xc>
a0006778:	c2fba097          	auipc	ra,0xc2fba
a000677c:	302080e7          	jalr	770(ra) # 62fc0a7a <qcc74x_mtimer_get_time_ms>
a0006780:	872a                	mv	a4,a0
a0006782:	87ae                	mv	a5,a1
a0006784:	084d2683          	lw	a3,132(s10)
a0006788:	3006f693          	andi	a3,a3,768
a000678c:	c285                	beqz	a3,a00067ac <qcc74x_i2c_transfer+0x1a8>
a000678e:	08cd2683          	lw	a3,140(s10)
a0006792:	4781                	li	a5,0
a0006794:	f687f0e3          	bgeu	a5,s0,a00066f4 <qcc74x_i2c_transfer+0xf0>
a0006798:	00379713          	slli	a4,a5,0x3
a000679c:	00e6d733          	srl	a4,a3,a4
a00067a0:	00fb570b          	srb	a4,s6,a5,0
a00067a4:	0785                	addi	a5,a5,1
a00067a6:	0ff7f793          	zext.b	a5,a5
a00067aa:	b7ed                	j	a0006794 <qcc74x_i2c_transfer+0x190>
a00067ac:	c43a                	sw	a4,8(sp)
a00067ae:	c63e                	sw	a5,12(sp)
a00067b0:	c2fba097          	auipc	ra,0xc2fba
a00067b4:	2ca080e7          	jalr	714(ra) # 62fc0a7a <qcc74x_mtimer_get_time_ms>
a00067b8:	4722                	lw	a4,8(sp)
a00067ba:	47b2                	lw	a5,12(sp)
a00067bc:	c2e51577          	sub64	a0,a0,a4
a00067c0:	f9cd                	bnez	a1,a0006772 <qcc74x_i2c_transfer+0x16e>
a00067c2:	fca9f1e3          	bgeu	s3,a0,a0006784 <qcc74x_i2c_transfer+0x180>
a00067c6:	b775                	j	a0006772 <qcc74x_i2c_transfer+0x16e>
a00067c8:	c2fba097          	auipc	ra,0xc2fba
a00067cc:	2b2080e7          	jalr	690(ra) # 62fc0a7a <qcc74x_mtimer_get_time_ms>
a00067d0:	c3a51577          	sub64	a0,a0,s10
a00067d4:	fdd9                	bnez	a1,a0006772 <qcc74x_i2c_transfer+0x16e>
a00067d6:	f2a9f5e3          	bgeu	s3,a0,a0006700 <qcc74x_i2c_transfer+0xfc>
a00067da:	bf61                	j	a0006772 <qcc74x_i2c_transfer+0x16e>
a00067dc:	4394                	lw	a3,0(a5)
a00067de:	9af5                	andi	a3,a3,-3
a00067e0:	c394                	sw	a3,0(a5)
a00067e2:	10061263          	bnez	a2,a00068e6 <qcc74x_i2c_transfer+0x2e2>
a00067e6:	00472d03          	lw	s10,4(a4)
a00067ea:	0044ab03          	lw	s6,4(s1)
a00067ee:	4d8d                	li	s11,3
a00067f0:	028dee63          	bltu	s11,s0,a000682c <qcc74x_i2c_transfer+0x228>
a00067f4:	e879                	bnez	s0,a00068ca <qcc74x_i2c_transfer+0x2c6>
a00067f6:	c2fba097          	auipc	ra,0xc2fba
a00067fa:	284080e7          	jalr	644(ra) # 62fc0a7a <qcc74x_mtimer_get_time_ms>
a00067fe:	8d2a                	mv	s10,a0
a0006800:	8dae                	mv	s11,a1
a0006802:	40c8                	lw	a0,4(s1)
a0006804:	455c                	lw	a5,12(a0)
a0006806:	8b85                	andi	a5,a5,1
a0006808:	eb81                	bnez	a5,a0006818 <qcc74x_i2c_transfer+0x214>
a000680a:	415c                	lw	a5,4(a0)
a000680c:	8b85                	andi	a5,a5,1
a000680e:	c789                	beqz	a5,a0006818 <qcc74x_i2c_transfer+0x214>
a0006810:	415c                	lw	a5,4(a0)
a0006812:	8ba1                	andi	a5,a5,8
a0006814:	ee078de3          	beqz	a5,a000670e <qcc74x_i2c_transfer+0x10a>
a0006818:	c2fba097          	auipc	ra,0xc2fba
a000681c:	262080e7          	jalr	610(ra) # 62fc0a7a <qcc74x_mtimer_get_time_ms>
a0006820:	c3a51577          	sub64	a0,a0,s10
a0006824:	f5b9                	bnez	a1,a0006772 <qcc74x_i2c_transfer+0x16e>
a0006826:	fca9fee3          	bgeu	s3,a0,a0006802 <qcc74x_i2c_transfer+0x1fe>
a000682a:	b7a1                	j	a0006772 <qcc74x_i2c_transfer+0x16e>
a000682c:	4781                	li	a5,0
a000682e:	4a81                	li	s5,0
a0006830:	80fd470b          	lrbu	a4,s10,a5,0
a0006834:	00379613          	slli	a2,a5,0x3
a0006838:	0785                	addi	a5,a5,1
a000683a:	00c71733          	sll	a4,a4,a2
a000683e:	9aba                	add	s5,s5,a4
a0006840:	ff9798e3          	bne	a5,s9,a0006830 <qcc74x_i2c_transfer+0x22c>
a0006844:	c2fba097          	auipc	ra,0xc2fba
a0006848:	236080e7          	jalr	566(ra) # 62fc0a7a <qcc74x_mtimer_get_time_ms>
a000684c:	872a                	mv	a4,a0
a000684e:	87ae                	mv	a5,a1
a0006850:	084b2603          	lw	a2,132(s6)
a0006854:	8a0d                	andi	a2,a2,3
a0006856:	ce01                	beqz	a2,a000686e <qcc74x_i2c_transfer+0x26a>
a0006858:	095b2423          	sw	s5,136(s6)
a000685c:	40c8                	lw	a0,4(s1)
a000685e:	411c                	lw	a5,0(a0)
a0006860:	8b85                	andi	a5,a5,1
a0006862:	e399                	bnez	a5,a0006868 <qcc74x_i2c_transfer+0x264>
a0006864:	b99ff0ef          	jal	ra,a00063fc <qcc74x_i2c_enable.isra.0>
a0006868:	0d11                	addi	s10,s10,4
a000686a:	1471                	addi	s0,s0,-4
a000686c:	b751                	j	a00067f0 <qcc74x_i2c_transfer+0x1ec>
a000686e:	c43a                	sw	a4,8(sp)
a0006870:	c63e                	sw	a5,12(sp)
a0006872:	c2fba097          	auipc	ra,0xc2fba
a0006876:	208080e7          	jalr	520(ra) # 62fc0a7a <qcc74x_mtimer_get_time_ms>
a000687a:	4722                	lw	a4,8(sp)
a000687c:	47b2                	lw	a5,12(sp)
a000687e:	c2e51577          	sub64	a0,a0,a4
a0006882:	ee0598e3          	bnez	a1,a0006772 <qcc74x_i2c_transfer+0x16e>
a0006886:	fca9f5e3          	bgeu	s3,a0,a0006850 <qcc74x_i2c_transfer+0x24c>
a000688a:	b5e5                	j	a0006772 <qcc74x_i2c_transfer+0x16e>
a000688c:	80fd468b          	lrbu	a3,s10,a5,0
a0006890:	00379613          	slli	a2,a5,0x3
a0006894:	0785                	addi	a5,a5,1
a0006896:	00c696b3          	sll	a3,a3,a2
a000689a:	9ab6                	add	s5,s5,a3
a000689c:	0ff7f793          	zext.b	a5,a5
a00068a0:	fe87e6e3          	bltu	a5,s0,a000688c <qcc74x_i2c_transfer+0x288>
a00068a4:	c2fba097          	auipc	ra,0xc2fba
a00068a8:	1d6080e7          	jalr	470(ra) # 62fc0a7a <qcc74x_mtimer_get_time_ms>
a00068ac:	8d2a                	mv	s10,a0
a00068ae:	8dae                	mv	s11,a1
a00068b0:	084b2783          	lw	a5,132(s6)
a00068b4:	8b8d                	andi	a5,a5,3
a00068b6:	cf89                	beqz	a5,a00068d0 <qcc74x_i2c_transfer+0x2cc>
a00068b8:	095b2423          	sw	s5,136(s6)
a00068bc:	40c8                	lw	a0,4(s1)
a00068be:	411c                	lw	a5,0(a0)
a00068c0:	8b85                	andi	a5,a5,1
a00068c2:	fb95                	bnez	a5,a00067f6 <qcc74x_i2c_transfer+0x1f2>
a00068c4:	b39ff0ef          	jal	ra,a00063fc <qcc74x_i2c_enable.isra.0>
a00068c8:	b73d                	j	a00067f6 <qcc74x_i2c_transfer+0x1f2>
a00068ca:	4781                	li	a5,0
a00068cc:	4a81                	li	s5,0
a00068ce:	bfc9                	j	a00068a0 <qcc74x_i2c_transfer+0x29c>
a00068d0:	c2fba097          	auipc	ra,0xc2fba
a00068d4:	1aa080e7          	jalr	426(ra) # 62fc0a7a <qcc74x_mtimer_get_time_ms>
a00068d8:	c3a51577          	sub64	a0,a0,s10
a00068dc:	e8059be3          	bnez	a1,a0006772 <qcc74x_i2c_transfer+0x16e>
a00068e0:	fca9f8e3          	bgeu	s3,a0,a00068b0 <qcc74x_i2c_transfer+0x2ac>
a00068e4:	b579                	j	a0006772 <qcc74x_i2c_transfer+0x16e>
a00068e6:	40c8                	lw	a0,4(s1)
a00068e8:	b15ff0ef          	jal	ra,a00063fc <qcc74x_i2c_enable.isra.0>
a00068ec:	b515                	j	a0006710 <qcc74x_i2c_transfer+0x10c>

a00068ee <qcc74x_spi_init>:
a00068ee:	1141                	addi	sp,sp,-16
a00068f0:	c422                	sw	s0,8(sp)
a00068f2:	c606                	sw	ra,12(sp)
a00068f4:	c226                	sw	s1,4(sp)
a00068f6:	200007b7          	lui	a5,0x20000
a00068fa:	0045c703          	lbu	a4,4(a1) # ff00004 <remain_wifi_ram+0xfee0004>
a00068fe:	5107a783          	lw	a5,1296(a5) # 20000510 <remain_wifi_ram+0x1ffe0510>
a0006902:	842e                	mv	s0,a1
a0006904:	ef59                	bnez	a4,a00069a2 <qcc74x_spi_init+0xb4>
a0006906:	6705                	lui	a4,0x1
a0006908:	8fd9                	or	a5,a5,a4
a000690a:	20000737          	lui	a4,0x20000
a000690e:	50f72823          	sw	a5,1296(a4) # 20000510 <remain_wifi_ram+0x1ffe0510>
a0006912:	00954583          	lbu	a1,9(a0)
a0006916:	4144                	lw	s1,4(a0)
a0006918:	4519                	li	a0,6
a000691a:	767000ef          	jal	ra,a0007880 <qcc74x_clk_get_peripheral_clock>
a000691e:	00155713          	srli	a4,a0,0x1
a0006922:	46a9                	li	a3,10
a0006924:	02d70733          	mul	a4,a4,a3
a0006928:	401c                	lw	a5,0(s0)
a000692a:	4625                	li	a2,9
a000692c:	02f75733          	divu	a4,a4,a5
a0006930:	4781                	li	a5,0
a0006932:	0715                	addi	a4,a4,5
a0006934:	00e67563          	bgeu	a2,a4,a000693e <qcc74x_spi_init+0x50>
a0006938:	02d757b3          	divu	a5,a4,a3
a000693c:	17fd                	addi	a5,a5,-1
a000693e:	0ff00713          	li	a4,255
a0006942:	00f77463          	bgeu	a4,a5,a000694a <qcc74x_spi_init+0x5c>
a0006946:	0ff00793          	li	a5,255
a000694a:	01879693          	slli	a3,a5,0x18
a000694e:	01079713          	slli	a4,a5,0x10
a0006952:	8f55                	or	a4,a4,a3
a0006954:	8f5d                	or	a4,a4,a5
a0006956:	00879693          	slli	a3,a5,0x8
a000695a:	8f55                	or	a4,a4,a3
a000695c:	c898                	sw	a4,16(s1)
a000695e:	48d8                	lw	a4,20(s1)
a0006960:	f0077713          	andi	a4,a4,-256
a0006964:	8fd9                	or	a5,a5,a4
a0006966:	c8dc                	sw	a5,20(s1)
a0006968:	00844783          	lbu	a5,8(s0)
a000696c:	4098                	lw	a4,0(s1)
a000696e:	ef95                	bnez	a5,a00069aa <qcc74x_spi_init+0xbc>
a0006970:	77c1                	lui	a5,0xffff0
a0006972:	47f78793          	addi	a5,a5,1151 # ffff047f <__psram_limit+0x57bf047f>
a0006976:	8f7d                	and	a4,a4,a5
a0006978:	00744603          	lbu	a2,7(s0)
a000697c:	4685                	li	a3,1
a000697e:	fbf77793          	andi	a5,a4,-65
a0006982:	00d61463          	bne	a2,a3,a000698a <qcc74x_spi_init+0x9c>
a0006986:	04076793          	ori	a5,a4,64
a000698a:	00544703          	lbu	a4,5(s0)
a000698e:	4689                	li	a3,2
a0006990:	08d70963          	beq	a4,a3,a0006a22 <qcc74x_spi_init+0x134>
a0006994:	02e6e263          	bltu	a3,a4,a00069b8 <qcc74x_spi_init+0xca>
a0006998:	e351                	bnez	a4,a0006a1c <qcc74x_spi_init+0x12e>
a000699a:	9bbd                	andi	a5,a5,-17
a000699c:	0207e793          	ori	a5,a5,32
a00069a0:	a839                	j	a00069be <qcc74x_spi_init+0xd0>
a00069a2:	777d                	lui	a4,0xfffff
a00069a4:	177d                	addi	a4,a4,-1
a00069a6:	8ff9                	and	a5,a5,a4
a00069a8:	b78d                	j	a000690a <qcc74x_spi_init+0x1c>
a00069aa:	77c1                	lui	a5,0xffff0
a00069ac:	4ff78793          	addi	a5,a5,1279 # ffff04ff <__psram_limit+0x57bf04ff>
a00069b0:	8f7d                	and	a4,a4,a5
a00069b2:	08076713          	ori	a4,a4,128
a00069b6:	b7c9                	j	a0006978 <qcc74x_spi_init+0x8a>
a00069b8:	468d                	li	a3,3
a00069ba:	06d70763          	beq	a4,a3,a0006a28 <qcc74x_spi_init+0x13a>
a00069be:	00644703          	lbu	a4,6(s0)
a00069c2:	9bc1                	andi	a5,a5,-16
a00069c4:	08048693          	addi	a3,s1,128
a00069c8:	177d                	addi	a4,a4,-1
a00069ca:	070a                	slli	a4,a4,0x2
a00069cc:	8fd9                	or	a5,a5,a4
a00069ce:	c09c                	sw	a5,0(s1)
a00069d0:	429c                	lw	a5,0(a3)
a00069d2:	e0e10637          	lui	a2,0xe0e10
a00069d6:	167d                	addi	a2,a2,-1
a00069d8:	9bf1                	andi	a5,a5,-4
a00069da:	00c7e793          	ori	a5,a5,12
a00069de:	c29c                	sw	a5,0(a3)
a00069e0:	42dc                	lw	a5,4(a3)
a00069e2:	001f0737          	lui	a4,0x1f0
a00069e6:	1f0005b7          	lui	a1,0x1f000
a00069ea:	8e7d                	and	a2,a2,a5
a00069ec:	00944783          	lbu	a5,9(s0)
a00069f0:	07c2                	slli	a5,a5,0x10
a00069f2:	8ff9                	and	a5,a5,a4
a00069f4:	00a44703          	lbu	a4,10(s0)
a00069f8:	0762                	slli	a4,a4,0x18
a00069fa:	8f6d                	and	a4,a4,a1
a00069fc:	8fd9                	or	a5,a5,a4
a00069fe:	8fd1                	or	a5,a5,a2
a0006a00:	c2dc                	sw	a5,4(a3)
a0006a02:	00444703          	lbu	a4,4(s0)
a0006a06:	409c                	lw	a5,0(s1)
a0006a08:	e70d                	bnez	a4,a0006a32 <qcc74x_spi_init+0x144>
a0006a0a:	9bf5                	andi	a5,a5,-3
a0006a0c:	0017e793          	ori	a5,a5,1
a0006a10:	40b2                	lw	ra,12(sp)
a0006a12:	4422                	lw	s0,8(sp)
a0006a14:	c09c                	sw	a5,0(s1)
a0006a16:	4492                	lw	s1,4(sp)
a0006a18:	0141                	addi	sp,sp,16
a0006a1a:	8082                	ret
a0006a1c:	fcf7f793          	andi	a5,a5,-49
a0006a20:	bf79                	j	a00069be <qcc74x_spi_init+0xd0>
a0006a22:	0307e793          	ori	a5,a5,48
a0006a26:	bf61                	j	a00069be <qcc74x_spi_init+0xd0>
a0006a28:	fdf7f793          	andi	a5,a5,-33
a0006a2c:	0107e793          	ori	a5,a5,16
a0006a30:	b779                	j	a00069be <qcc74x_spi_init+0xd0>
a0006a32:	9bf9                	andi	a5,a5,-2
a0006a34:	0027e793          	ori	a5,a5,2
a0006a38:	bfe1                	j	a0006a10 <qcc74x_spi_init+0x122>

a0006a3a <qcc74x_uart_init>:
a0006a3a:	1141                	addi	sp,sp,-16
a0006a3c:	c422                	sw	s0,8(sp)
a0006a3e:	c226                	sw	s1,4(sp)
a0006a40:	c606                	sw	ra,12(sp)
a0006a42:	84ae                	mv	s1,a1
a0006a44:	00954583          	lbu	a1,9(a0)
a0006a48:	4140                	lw	s0,4(a0)
a0006a4a:	4515                	li	a0,5
a0006a4c:	635000ef          	jal	ra,a0007880 <qcc74x_clk_get_peripheral_clock>
a0006a50:	4729                	li	a4,10
a0006a52:	02e507b3          	mul	a5,a0,a4
a0006a56:	4088                	lw	a0,0(s1)
a0006a58:	4014                	lw	a3,0(s0)
a0006a5a:	4605                	li	a2,1
a0006a5c:	9af9                	andi	a3,a3,-2
a0006a5e:	02a7d7b3          	divu	a5,a5,a0
a0006a62:	0795                	addi	a5,a5,5
a0006a64:	02e7d7b3          	divu	a5,a5,a4
a0006a68:	4058                	lw	a4,4(s0)
a0006a6a:	c014                	sw	a3,0(s0)
a0006a6c:	9b79                	andi	a4,a4,-2
a0006a6e:	c058                	sw	a4,4(s0)
a0006a70:	17fd                	addi	a5,a5,-1
a0006a72:	0ef797f7          	pkbb16	a5,a5,a5
a0006a76:	c41c                	sw	a5,8(s0)
a0006a78:	0074c683          	lbu	a3,7(s1)
a0006a7c:	401c                	lw	a5,0(s0)
a0006a7e:	4058                	lw	a4,4(s0)
a0006a80:	0ac68c63          	beq	a3,a2,a0006b38 <qcc74x_uart_init+0xfe>
a0006a84:	4609                	li	a2,2
a0006a86:	0ac68e63          	beq	a3,a2,a0006b42 <qcc74x_uart_init+0x108>
a0006a8a:	e299                	bnez	a3,a0006a90 <qcc74x_uart_init+0x56>
a0006a8c:	9bbd                	andi	a5,a5,-17
a0006a8e:	9b3d                	andi	a4,a4,-17
a0006a90:	0054c683          	lbu	a3,5(s1)
a0006a94:	8ff7f793          	andi	a5,a5,-1793
a0006a98:	8ff77713          	andi	a4,a4,-1793
a0006a9c:	0691                	addi	a3,a3,4
a0006a9e:	06a2                	slli	a3,a3,0x8
a0006aa0:	8fd5                	or	a5,a5,a3
a0006aa2:	8f55                	or	a4,a4,a3
a0006aa4:	76f9                	lui	a3,0xffffe
a0006aa6:	7ff68693          	addi	a3,a3,2047 # ffffe7ff <__psram_limit+0x57bfe7ff>
a0006aaa:	8ff5                	and	a5,a5,a3
a0006aac:	0064c683          	lbu	a3,6(s1)
a0006ab0:	06ae                	slli	a3,a3,0xb
a0006ab2:	8fd5                	or	a5,a5,a3
a0006ab4:	0094c683          	lbu	a3,9(s1)
a0006ab8:	ffd7f613          	andi	a2,a5,-3
a0006abc:	8a89                	andi	a3,a3,2
a0006abe:	c299                	beqz	a3,a0006ac4 <qcc74x_uart_init+0x8a>
a0006ac0:	0027e613          	ori	a2,a5,2
a0006ac4:	76fd                	lui	a3,0xfffff
a0006ac6:	7ff68693          	addi	a3,a3,2047 # fffff7ff <__psram_limit+0x57bff7ff>
a0006aca:	c010                	sw	a2,0(s0)
a0006acc:	8f75                	and	a4,a4,a3
a0006ace:	c058                	sw	a4,4(s0)
a0006ad0:	4c5c                	lw	a5,28(s0)
a0006ad2:	08040693          	addi	a3,s0,128
a0006ad6:	e0e10637          	lui	a2,0xe0e10
a0006ada:	9bed                	andi	a5,a5,-5
a0006adc:	cc5c                	sw	a5,28(s0)
a0006ade:	445c                	lw	a5,12(s0)
a0006ae0:	167d                	addi	a2,a2,-1
a0006ae2:	001f0737          	lui	a4,0x1f0
a0006ae6:	9bf9                	andi	a5,a5,-2
a0006ae8:	c45c                	sw	a5,12(s0)
a0006aea:	401c                	lw	a5,0(s0)
a0006aec:	1f0005b7          	lui	a1,0x1f000
a0006af0:	40b2                	lw	ra,12(sp)
a0006af2:	0047e793          	ori	a5,a5,4
a0006af6:	c01c                	sw	a5,0(s0)
a0006af8:	42dc                	lw	a5,4(a3)
a0006afa:	8e7d                	and	a2,a2,a5
a0006afc:	00a4c783          	lbu	a5,10(s1)
a0006b00:	07c2                	slli	a5,a5,0x10
a0006b02:	8ff9                	and	a5,a5,a4
a0006b04:	00b4c703          	lbu	a4,11(s1)
a0006b08:	4492                	lw	s1,4(sp)
a0006b0a:	0762                	slli	a4,a4,0x18
a0006b0c:	8f6d                	and	a4,a4,a1
a0006b0e:	8fd9                	or	a5,a5,a4
a0006b10:	8fd1                	or	a5,a5,a2
a0006b12:	c2dc                	sw	a5,4(a3)
a0006b14:	429c                	lw	a5,0(a3)
a0006b16:	9bf1                	andi	a5,a5,-4
a0006b18:	00c7e793          	ori	a5,a5,12
a0006b1c:	c29c                	sw	a5,0(a3)
a0006b1e:	57fd                	li	a5,-1
a0006b20:	d05c                	sw	a5,36(s0)
a0006b22:	4018                	lw	a4,0(s0)
a0006b24:	405c                	lw	a5,4(s0)
a0006b26:	00176713          	ori	a4,a4,1
a0006b2a:	c018                	sw	a4,0(s0)
a0006b2c:	0017e793          	ori	a5,a5,1
a0006b30:	c05c                	sw	a5,4(s0)
a0006b32:	4422                	lw	s0,8(sp)
a0006b34:	0141                	addi	sp,sp,16
a0006b36:	8082                	ret
a0006b38:	0307e793          	ori	a5,a5,48
a0006b3c:	03076713          	ori	a4,a4,48
a0006b40:	bf81                	j	a0006a90 <qcc74x_uart_init+0x56>
a0006b42:	fdf7f793          	andi	a5,a5,-33
a0006b46:	fdf77713          	andi	a4,a4,-33
a0006b4a:	0107e793          	ori	a5,a5,16
a0006b4e:	01076713          	ori	a4,a4,16
a0006b52:	bf3d                	j	a0006a90 <qcc74x_uart_init+0x56>

a0006b54 <flash_get_clock_delay.constprop.0.isra.0>:
a0006b54:	2000b7b7          	lui	a5,0x2000b
a0006b58:	4394                	lw	a3,0(a5)
a0006b5a:	4781                	li	a5,0
a0006b5c:	2cb6b70b          	extu	a4,a3,11,11
a0006b60:	c701                	beqz	a4,a0006b68 <flash_get_clock_delay.constprop.0.isra.0+0x14>
a0006b62:	2886b78b          	extu	a5,a3,10,8
a0006b66:	0785                	addi	a5,a5,1
a0006b68:	2000b737          	lui	a4,0x2000b
a0006b6c:	5b58                	lw	a4,52(a4)
a0006b6e:	85c18613          	addi	a2,gp,-1956 # 62fc1b74 <g_flash_cfg>
a0006b72:	00c75593          	srli	a1,a4,0xc
a0006b76:	0305f593          	andi	a1,a1,48
a0006b7a:	8fcd                	or	a5,a5,a1
a0006b7c:	00f60123          	sb	a5,2(a2) # e0e10002 <__psram_limit+0x38a10002>
a0006b80:	0016d793          	srli	a5,a3,0x1
a0006b84:	8b89                	andi	a5,a5,2
a0006b86:	1046b68b          	extu	a3,a3,4,4
a0006b8a:	8fd5                	or	a5,a5,a3
a0006b8c:	00675693          	srli	a3,a4,0x6
a0006b90:	0716                	slli	a4,a4,0x5
a0006b92:	8ab1                	andi	a3,a3,12
a0006b94:	06077713          	andi	a4,a4,96
a0006b98:	8f55                	or	a4,a4,a3
a0006b9a:	8fd9                	or	a5,a5,a4
a0006b9c:	00f601a3          	sb	a5,3(a2)
a0006ba0:	8082                	ret

a0006ba2 <irq_unexpected_isr>:
a0006ba2:	85aa                	mv	a1,a0
a0006ba4:	a0008537          	lui	a0,0xa0008
a0006ba8:	5ec50513          	addi	a0,a0,1516 # a00085ec <__psram_limit+0xf7c085ec>
a0006bac:	f69fe06f          	j	a0005b14 <printf>

a0006bb0 <qcc74x_irq_initialize>:
a0006bb0:	62fc37b7          	lui	a5,0x62fc3
a0006bb4:	2d078793          	addi	a5,a5,720 # 62fc32d0 <g_irqvector>
a0006bb8:	a0007737          	lui	a4,0xa0007
a0006bbc:	28078693          	addi	a3,a5,640
a0006bc0:	ba270713          	addi	a4,a4,-1118 # a0006ba2 <__psram_limit+0xf7c06ba2>
a0006bc4:	c398                	sw	a4,0(a5)
a0006bc6:	0007a223          	sw	zero,4(a5)
a0006bca:	07a1                	addi	a5,a5,8
a0006bcc:	fed79ce3          	bne	a5,a3,a0006bc4 <qcc74x_irq_initialize+0x14>
a0006bd0:	8082                	ret

a0006bd2 <qcc74x_device_get_by_name>:
a0006bd2:	1101                	addi	sp,sp,-32
a0006bd4:	cc22                	sw	s0,24(sp)
a0006bd6:	ca26                	sw	s1,20(sp)
a0006bd8:	c64e                	sw	s3,12(sp)
a0006bda:	c452                	sw	s4,8(sp)
a0006bdc:	ce06                	sw	ra,28(sp)
a0006bde:	c84a                	sw	s2,16(sp)
a0006be0:	8a2a                	mv	s4,a0
a0006be2:	4481                	li	s1,0
a0006be4:	8b018413          	addi	s0,gp,-1872 # 62fc1bc8 <qcc743_device_table>
a0006be8:	02900993          	li	s3,41
a0006bec:	00449913          	slli	s2,s1,0x4
a0006bf0:	4124450b          	lrw	a0,s0,s2,0
a0006bf4:	85d2                	mv	a1,s4
a0006bf6:	e2cfd0ef          	jal	ra,a0004222 <strcmp>
a0006bfa:	e919                	bnez	a0,a0006c10 <qcc74x_device_get_by_name+0x3e>
a0006bfc:	01240533          	add	a0,s0,s2
a0006c00:	40f2                	lw	ra,28(sp)
a0006c02:	4462                	lw	s0,24(sp)
a0006c04:	44d2                	lw	s1,20(sp)
a0006c06:	4942                	lw	s2,16(sp)
a0006c08:	49b2                	lw	s3,12(sp)
a0006c0a:	4a22                	lw	s4,8(sp)
a0006c0c:	6105                	addi	sp,sp,32
a0006c0e:	8082                	ret
a0006c10:	0485                	addi	s1,s1,1
a0006c12:	fd349de3          	bne	s1,s3,a0006bec <qcc74x_device_get_by_name+0x1a>
a0006c16:	4501                	li	a0,0
a0006c18:	b7e5                	j	a0006c00 <qcc74x_device_get_by_name+0x2e>
	...

a0006c40 <default_interrupt_handler>:
a0006c40:	715d                	addi	sp,sp,-80
a0006c42:	c216                	sw	t0,4(sp)
a0006c44:	c41a                	sw	t1,8(sp)
a0006c46:	341022f3          	csrr	t0,mepc
a0006c4a:	34202373          	csrr	t1,mcause
a0006c4e:	c09a                	sw	t1,64(sp)
a0006c50:	c296                	sw	t0,68(sp)
a0006c52:	340022f3          	csrr	t0,mscratch
a0006c56:	c496                	sw	t0,72(sp)
a0006c58:	c006                	sw	ra,0(sp)
a0006c5a:	c61e                	sw	t2,12(sp)
a0006c5c:	c82a                	sw	a0,16(sp)
a0006c5e:	ca2e                	sw	a1,20(sp)
a0006c60:	cc32                	sw	a2,24(sp)
a0006c62:	ce36                	sw	a3,28(sp)
a0006c64:	d03a                	sw	a4,32(sp)
a0006c66:	d23e                	sw	a5,36(sp)
a0006c68:	d442                	sw	a6,40(sp)
a0006c6a:	d646                	sw	a7,44(sp)
a0006c6c:	d872                	sw	t3,48(sp)
a0006c6e:	da76                	sw	t4,52(sp)
a0006c70:	dc7a                	sw	t5,56(sp)
a0006c72:	de7e                	sw	t6,60(sp)
a0006c74:	30046073          	csrsi	mstatus,8
a0006c78:	711d                	addi	sp,sp,-96
a0006c7a:	30002373          	csrr	t1,mstatus
a0006c7e:	ca9a                	sw	t1,84(sp)
a0006c80:	00d35393          	srli	t2,t1,0xd
a0006c84:	0033f393          	andi	t2,t2,3
a0006c88:	428d                	li	t0,3
a0006c8a:	02539663          	bne	t2,t0,a0006cb6 <.F_RegNotSave1>
a0006c8e:	e002                	fsw	ft0,0(sp)
a0006c90:	e206                	fsw	ft1,4(sp)
a0006c92:	e40a                	fsw	ft2,8(sp)
a0006c94:	e60e                	fsw	ft3,12(sp)
a0006c96:	e812                	fsw	ft4,16(sp)
a0006c98:	ea16                	fsw	ft5,20(sp)
a0006c9a:	ec1a                	fsw	ft6,24(sp)
a0006c9c:	ee1e                	fsw	ft7,28(sp)
a0006c9e:	f02a                	fsw	fa0,32(sp)
a0006ca0:	f22e                	fsw	fa1,36(sp)
a0006ca2:	f432                	fsw	fa2,40(sp)
a0006ca4:	f636                	fsw	fa3,44(sp)
a0006ca6:	f83a                	fsw	fa4,48(sp)
a0006ca8:	fa3e                	fsw	fa5,52(sp)
a0006caa:	fc42                	fsw	fa6,56(sp)
a0006cac:	fe46                	fsw	fa7,60(sp)
a0006cae:	e0f2                	fsw	ft8,64(sp)
a0006cb0:	e2f6                	fsw	ft9,68(sp)
a0006cb2:	e4fa                	fsw	ft10,72(sp)
a0006cb4:	e6fe                	fsw	ft11,76(sp)

a0006cb6 <.F_RegNotSave1>:
a0006cb6:	34202573          	csrr	a0,mcause
a0006cba:	3ff57313          	andi	t1,a0,1023
a0006cbe:	00000397          	auipc	t2,0x0
a0006cc2:	5a238393          	addi	t2,t2,1442 # a0007260 <interrupt_entry>
a0006cc6:	9382                	jalr	t2
a0006cc8:	4356                	lw	t1,84(sp)
a0006cca:	00d35393          	srli	t2,t1,0xd
a0006cce:	0033f393          	andi	t2,t2,3
a0006cd2:	428d                	li	t0,3
a0006cd4:	02539663          	bne	t2,t0,a0006d00 <.F_RegNotLoad>
a0006cd8:	6002                	flw	ft0,0(sp)
a0006cda:	6092                	flw	ft1,4(sp)
a0006cdc:	6122                	flw	ft2,8(sp)
a0006cde:	61b2                	flw	ft3,12(sp)
a0006ce0:	6242                	flw	ft4,16(sp)
a0006ce2:	62d2                	flw	ft5,20(sp)
a0006ce4:	6362                	flw	ft6,24(sp)
a0006ce6:	63f2                	flw	ft7,28(sp)
a0006ce8:	7502                	flw	fa0,32(sp)
a0006cea:	7592                	flw	fa1,36(sp)
a0006cec:	7622                	flw	fa2,40(sp)
a0006cee:	76b2                	flw	fa3,44(sp)
a0006cf0:	7742                	flw	fa4,48(sp)
a0006cf2:	77d2                	flw	fa5,52(sp)
a0006cf4:	7862                	flw	fa6,56(sp)
a0006cf6:	78f2                	flw	fa7,60(sp)
a0006cf8:	6e06                	flw	ft8,64(sp)
a0006cfa:	6e96                	flw	ft9,68(sp)
a0006cfc:	6f26                	flw	ft10,72(sp)
a0006cfe:	6fb6                	flw	ft11,76(sp)

a0006d00 <.F_RegNotLoad>:
a0006d00:	6125                	addi	sp,sp,96
a0006d02:	30047073          	csrci	mstatus,8
a0006d06:	4296                	lw	t0,68(sp)
a0006d08:	34129073          	csrw	mepc,t0
a0006d0c:	4286                	lw	t0,64(sp)
a0006d0e:	34229073          	csrw	mcause,t0
a0006d12:	42a6                	lw	t0,72(sp)
a0006d14:	34029073          	csrw	mscratch,t0
a0006d18:	4082                	lw	ra,0(sp)
a0006d1a:	4292                	lw	t0,4(sp)
a0006d1c:	4322                	lw	t1,8(sp)
a0006d1e:	43b2                	lw	t2,12(sp)
a0006d20:	4542                	lw	a0,16(sp)
a0006d22:	45d2                	lw	a1,20(sp)
a0006d24:	4662                	lw	a2,24(sp)
a0006d26:	46f2                	lw	a3,28(sp)
a0006d28:	5702                	lw	a4,32(sp)
a0006d2a:	5792                	lw	a5,36(sp)
a0006d2c:	5822                	lw	a6,40(sp)
a0006d2e:	58b2                	lw	a7,44(sp)
a0006d30:	5e42                	lw	t3,48(sp)
a0006d32:	5ed2                	lw	t4,52(sp)
a0006d34:	5f62                	lw	t5,56(sp)
a0006d36:	5ff2                	lw	t6,60(sp)
a0006d38:	6161                	addi	sp,sp,80
a0006d3a:	8082                	ret
	...

a0006d80 <trap>:
a0006d80:	fe512e23          	sw	t0,-4(sp)
a0006d84:	342022f3          	csrr	t0,mcause
a0006d88:	0e02ca63          	bltz	t0,a0006e7c <trap+0xfc>
a0006d8c:	c2fbc297          	auipc	t0,0xc2fbc
a0006d90:	54428293          	addi	t0,t0,1348 # 62fc32d0 <g_irqvector>
a0006d94:	ef828293          	addi	t0,t0,-264
a0006d98:	0012a223          	sw	ra,4(t0)
a0006d9c:	0022a423          	sw	sp,8(t0)
a0006da0:	0032a623          	sw	gp,12(t0)
a0006da4:	0042a823          	sw	tp,16(t0)
a0006da8:	0062ac23          	sw	t1,24(t0)
a0006dac:	0072ae23          	sw	t2,28(t0)
a0006db0:	0282a023          	sw	s0,32(t0)
a0006db4:	0292a223          	sw	s1,36(t0)
a0006db8:	02a2a423          	sw	a0,40(t0)
a0006dbc:	02b2a623          	sw	a1,44(t0)
a0006dc0:	02c2a823          	sw	a2,48(t0)
a0006dc4:	02d2aa23          	sw	a3,52(t0)
a0006dc8:	02e2ac23          	sw	a4,56(t0)
a0006dcc:	02f2ae23          	sw	a5,60(t0)
a0006dd0:	0502a023          	sw	a6,64(t0)
a0006dd4:	0512a223          	sw	a7,68(t0)
a0006dd8:	0522a423          	sw	s2,72(t0)
a0006ddc:	0532a623          	sw	s3,76(t0)
a0006de0:	0542a823          	sw	s4,80(t0)
a0006de4:	0552aa23          	sw	s5,84(t0)
a0006de8:	0562ac23          	sw	s6,88(t0)
a0006dec:	0572ae23          	sw	s7,92(t0)
a0006df0:	0782a023          	sw	s8,96(t0)
a0006df4:	0792a223          	sw	s9,100(t0)
a0006df8:	07a2a423          	sw	s10,104(t0)
a0006dfc:	07b2a623          	sw	s11,108(t0)
a0006e00:	07c2a823          	sw	t3,112(t0)
a0006e04:	07d2aa23          	sw	t4,116(t0)
a0006e08:	07e2ac23          	sw	t5,120(t0)
a0006e0c:	07f2ae23          	sw	t6,124(t0)
a0006e10:	34102573          	csrr	a0,mepc
a0006e14:	00a2a023          	sw	a0,0(t0)
a0006e18:	30002573          	csrr	a0,mstatus
a0006e1c:	08a2a023          	sw	a0,128(t0)
a0006e20:	8516                	mv	a0,t0
a0006e22:	ffc12283          	lw	t0,-4(sp)
a0006e26:	812a                	mv	sp,a0
a0006e28:	ca16                	sw	t0,20(sp)
a0006e2a:	396000ef          	jal	ra,a00071c0 <exception_entry>
a0006e2e:	428a                	lw	t0,128(sp)
a0006e30:	30029073          	csrw	mstatus,t0
a0006e34:	4282                	lw	t0,0(sp)
a0006e36:	34129073          	csrw	mepc,t0
a0006e3a:	5ff6                	lw	t6,124(sp)
a0006e3c:	5f66                	lw	t5,120(sp)
a0006e3e:	5ed6                	lw	t4,116(sp)
a0006e40:	5e46                	lw	t3,112(sp)
a0006e42:	5db6                	lw	s11,108(sp)
a0006e44:	5d26                	lw	s10,104(sp)
a0006e46:	5c96                	lw	s9,100(sp)
a0006e48:	5c06                	lw	s8,96(sp)
a0006e4a:	4bf6                	lw	s7,92(sp)
a0006e4c:	4b66                	lw	s6,88(sp)
a0006e4e:	4ad6                	lw	s5,84(sp)
a0006e50:	4a46                	lw	s4,80(sp)
a0006e52:	49b6                	lw	s3,76(sp)
a0006e54:	4926                	lw	s2,72(sp)
a0006e56:	4896                	lw	a7,68(sp)
a0006e58:	4806                	lw	a6,64(sp)
a0006e5a:	57f2                	lw	a5,60(sp)
a0006e5c:	5762                	lw	a4,56(sp)
a0006e5e:	56d2                	lw	a3,52(sp)
a0006e60:	5642                	lw	a2,48(sp)
a0006e62:	55b2                	lw	a1,44(sp)
a0006e64:	5522                	lw	a0,40(sp)
a0006e66:	5492                	lw	s1,36(sp)
a0006e68:	5402                	lw	s0,32(sp)
a0006e6a:	43f2                	lw	t2,28(sp)
a0006e6c:	4362                	lw	t1,24(sp)
a0006e6e:	42d2                	lw	t0,20(sp)
a0006e70:	4242                	lw	tp,16(sp)
a0006e72:	41b2                	lw	gp,12(sp)
a0006e74:	4092                	lw	ra,4(sp)
a0006e76:	4122                	lw	sp,8(sp)
a0006e78:	30200073          	mret
a0006e7c:	ffc12283          	lw	t0,-4(sp)
a0006e80:	1141                	addi	sp,sp,-16
a0006e82:	c006                	sw	ra,0(sp)
a0006e84:	3b75                	jal	a0006c40 <default_interrupt_handler>
a0006e86:	4082                	lw	ra,0(sp)
a0006e88:	0141                	addi	sp,sp,16
a0006e8a:	30200073          	mret
	...

a0006ebc <start_load>:
a0006ebc:	62fc07b7          	lui	a5,0x62fc0
a0006ec0:	a0009737          	lui	a4,0xa0009
a0006ec4:	62fc26b7          	lui	a3,0x62fc2
a0006ec8:	40078793          	addi	a5,a5,1024 # 62fc0400 <arch_memcpy>
a0006ecc:	f0870713          	addi	a4,a4,-248 # a0008f08 <__psram_limit+0xf7c08f08>
a0006ed0:	b1868693          	addi	a3,a3,-1256 # 62fc1b18 <flash1_size>
a0006ed4:	08d7ed63          	bltu	a5,a3,a0006f6e <start_load+0xb2>
a0006ed8:	62fc27b7          	lui	a5,0x62fc2
a0006edc:	a000a737          	lui	a4,0xa000a
a0006ee0:	62fc26b7          	lui	a3,0x62fc2
a0006ee4:	b1878793          	addi	a5,a5,-1256 # 62fc1b18 <flash1_size>
a0006ee8:	62070713          	addi	a4,a4,1568 # a000a620 <__psram_limit+0xf7c0a620>
a0006eec:	b1868693          	addi	a3,a3,-1256 # 62fc1b18 <flash1_size>
a0006ef0:	08d7e463          	bltu	a5,a3,a0006f78 <start_load+0xbc>
a0006ef4:	62fc27b7          	lui	a5,0x62fc2
a0006ef8:	a000a737          	lui	a4,0xa000a
a0006efc:	b1878793          	addi	a5,a5,-1256 # 62fc1b18 <flash1_size>
a0006f00:	62070713          	addi	a4,a4,1568 # a000a620 <__psram_limit+0xf7c0a620>
a0006f04:	b4018693          	addi	a3,gp,-1216 # 62fc1e58 <__StackLimit>
a0006f08:	06d7ed63          	bltu	a5,a3,a0006f82 <start_load+0xc6>
a0006f0c:	a80007b7          	lui	a5,0xa8000
a0006f10:	a000b737          	lui	a4,0xa000b
a0006f14:	a80006b7          	lui	a3,0xa8000
a0006f18:	00078793          	mv	a5,a5
a0006f1c:	96070713          	addi	a4,a4,-1696 # a000a960 <__psram_limit+0xf7c0a960>
a0006f20:	00068693          	mv	a3,a3
a0006f24:	06d7e463          	bltu	a5,a3,a0006f8c <start_load+0xd0>
a0006f28:	22fc07b7          	lui	a5,0x22fc0
a0006f2c:	a0009737          	lui	a4,0xa0009
a0006f30:	22fc06b7          	lui	a3,0x22fc0
a0006f34:	40078793          	addi	a5,a5,1024 # 22fc0400 <__nocache_noinit_ram_data_end__>
a0006f38:	f0870713          	addi	a4,a4,-248 # a0008f08 <__psram_limit+0xf7c08f08>
a0006f3c:	40068693          	addi	a3,a3,1024 # 22fc0400 <__nocache_noinit_ram_data_end__>
a0006f40:	04d7eb63          	bltu	a5,a3,a0006f96 <start_load+0xda>
a0006f44:	62fc37b7          	lui	a5,0x62fc3
a0006f48:	62fc3737          	lui	a4,0x62fc3
a0006f4c:	e6078793          	addi	a5,a5,-416 # 62fc2e60 <gpio>
a0006f50:	55470713          	addi	a4,a4,1364 # 62fc3554 <__HeapBase>
a0006f54:	04e7e663          	bltu	a5,a4,a0006fa0 <start_load+0xe4>
a0006f58:	230307b7          	lui	a5,0x23030
a0006f5c:	23030737          	lui	a4,0x23030
a0006f60:	00078793          	mv	a5,a5
a0006f64:	00070713          	mv	a4,a4
a0006f68:	02e7ef63          	bltu	a5,a4,a0006fa6 <start_load+0xea>
a0006f6c:	8082                	ret
a0006f6e:	5847460b          	lwia	a2,(a4),4,0
a0006f72:	5847d60b          	swia	a2,(a5),4,0
a0006f76:	bfb9                	j	a0006ed4 <start_load+0x18>
a0006f78:	5847460b          	lwia	a2,(a4),4,0
a0006f7c:	5847d60b          	swia	a2,(a5),4,0
a0006f80:	bf85                	j	a0006ef0 <start_load+0x34>
a0006f82:	5847460b          	lwia	a2,(a4),4,0
a0006f86:	5847d60b          	swia	a2,(a5),4,0
a0006f8a:	bfbd                	j	a0006f08 <start_load+0x4c>
a0006f8c:	5847460b          	lwia	a2,(a4),4,0
a0006f90:	5847d60b          	swia	a2,(a5),4,0
a0006f94:	bf41                	j	a0006f24 <start_load+0x68>
a0006f96:	5847460b          	lwia	a2,(a4),4,0
a0006f9a:	5847d60b          	swia	a2,(a5),4,0
a0006f9e:	b74d                	j	a0006f40 <start_load+0x84>
a0006fa0:	5847d00b          	swia	zero,(a5),4,0
a0006fa4:	bf45                	j	a0006f54 <start_load+0x98>
a0006fa6:	5847d00b          	swia	zero,(a5),4,0
a0006faa:	bf7d                	j	a0006f68 <start_load+0xac>

a0006fac <System_BOD_Init>:
a0006fac:	1101                	addi	sp,sp,-32
a0006fae:	010707b7          	lui	a5,0x1070
a0006fb2:	0785                	addi	a5,a5,1
a0006fb4:	0068                	addi	a0,sp,12
a0006fb6:	ce06                	sw	ra,28(sp)
a0006fb8:	c63e                	sw	a5,12(sp)
a0006fba:	299d                	jal	a0007430 <HBN_Set_BOD_Cfg>
a0006fbc:	40f2                	lw	ra,28(sp)
a0006fbe:	6105                	addi	sp,sp,32
a0006fc0:	8082                	ret

a0006fc2 <SystemInit>:
a0006fc2:	2000e7b7          	lui	a5,0x2000e
a0006fc6:	02000713          	li	a4,32
a0006fca:	50e7a023          	sw	a4,1280(a5) # 2000e500 <remain_wifi_ram+0x1ffee500>
a0006fce:	5007a223          	sw	zero,1284(a5)
a0006fd2:	200017b7          	lui	a5,0x20001
a0006fd6:	9687a703          	lw	a4,-1688(a5) # 20000968 <remain_wifi_ram+0x1ffe0968>
a0006fda:	1141                	addi	sp,sp,-16
a0006fdc:	8b05                	andi	a4,a4,1
a0006fde:	cf39                	beqz	a4,a000703c <SystemInit+0x7a>
a0006fe0:	96c7a703          	lw	a4,-1684(a5)
a0006fe4:	8b05                	andi	a4,a4,1
a0006fe6:	cb39                	beqz	a4,a000703c <SystemInit+0x7a>
a0006fe8:	9707a703          	lw	a4,-1680(a5)
a0006fec:	8b05                	andi	a4,a4,1
a0006fee:	c739                	beqz	a4,a000703c <SystemInit+0x7a>
a0006ff0:	9747a703          	lw	a4,-1676(a5)
a0006ff4:	8b05                	andi	a4,a4,1
a0006ff6:	c339                	beqz	a4,a000703c <SystemInit+0x7a>
a0006ff8:	9787a703          	lw	a4,-1672(a5)
a0006ffc:	8b05                	andi	a4,a4,1
a0006ffe:	cf1d                	beqz	a4,a000703c <SystemInit+0x7a>
a0007000:	97c7a703          	lw	a4,-1668(a5)
a0007004:	8b05                	andi	a4,a4,1
a0007006:	cb1d                	beqz	a4,a000703c <SystemInit+0x7a>
a0007008:	9807a703          	lw	a4,-1664(a5)
a000700c:	8b05                	andi	a4,a4,1
a000700e:	c71d                	beqz	a4,a000703c <SystemInit+0x7a>
a0007010:	9847a703          	lw	a4,-1660(a5)
a0007014:	8b05                	andi	a4,a4,1
a0007016:	c31d                	beqz	a4,a000703c <SystemInit+0x7a>
a0007018:	9887a703          	lw	a4,-1656(a5)
a000701c:	8b05                	andi	a4,a4,1
a000701e:	cf19                	beqz	a4,a000703c <SystemInit+0x7a>
a0007020:	98c7a783          	lw	a5,-1652(a5)
a0007024:	8b85                	andi	a5,a5,1
a0007026:	cb99                	beqz	a5,a000703c <SystemInit+0x7a>
a0007028:	20001737          	lui	a4,0x20001
a000702c:	99072783          	lw	a5,-1648(a4) # 20000990 <remain_wifi_ram+0x1ffe0990>
a0007030:	8b85                	andi	a5,a5,1
a0007032:	c789                	beqz	a5,a000703c <SystemInit+0x7a>
a0007034:	99472783          	lw	a5,-1644(a4)
a0007038:	8b85                	andi	a5,a5,1
a000703a:	ef99                	bnez	a5,a0007058 <SystemInit+0x96>
a000703c:	200057b7          	lui	a5,0x20005
a0007040:	38078793          	addi	a5,a5,896 # 20005380 <remain_wifi_ram+0x1ffe5380>
a0007044:	5398                	lw	a4,32(a5)
a0007046:	66c1                	lui	a3,0x10
a0007048:	9b71                	andi	a4,a4,-4
a000704a:	d398                	sw	a4,32(a5)
a000704c:	fff68713          	addi	a4,a3,-1 # ffff <wifi_ram_max_size+0x7fff>
a0007050:	d798                	sw	a4,40(a5)
a0007052:	5398                	lw	a4,32(a5)
a0007054:	8f55                	or	a4,a4,a3
a0007056:	d398                	sw	a4,32(a5)
a0007058:	200057b7          	lui	a5,0x20005
a000705c:	43b8                	lw	a4,64(a5)
a000705e:	000206b7          	lui	a3,0x20
a0007062:	f0f77713          	andi	a4,a4,-241
a0007066:	c3b8                	sw	a4,64(a5)
a0007068:	577d                	li	a4,-1
a000706a:	c7f8                	sw	a4,76(a5)
a000706c:	43b8                	lw	a4,64(a5)
a000706e:	8f55                	or	a4,a4,a3
a0007070:	c3b8                	sw	a4,64(a5)
a0007072:	2000b737          	lui	a4,0x2000b
a0007076:	5b3c                	lw	a5,112(a4)
a0007078:	600006b7          	lui	a3,0x60000
a000707c:	8fd5                	or	a5,a5,a3
a000707e:	db3c                	sw	a5,112(a4)
a0007080:	300027f3          	csrr	a5,mstatus
a0007084:	6709                	lui	a4,0x2
a0007086:	8fd9                	or	a5,a5,a4
a0007088:	30079073          	csrw	mstatus,a5
a000708c:	7c0027f3          	csrr	a5,mxstatus
a0007090:	00408737          	lui	a4,0x408
a0007094:	8fd9                	or	a5,a5,a4
a0007096:	7c079073          	csrw	mxstatus,a5
a000709a:	e0800737          	lui	a4,0xe0800
a000709e:	435c                	lw	a5,4(a4)
a00070a0:	00074683          	lbu	a3,0(a4) # e0800000 <__psram_limit+0x38400000>
a00070a4:	e0800537          	lui	a0,0xe0800
a00070a8:	83d1                	srli	a5,a5,0x14
a00070aa:	8bf9                	andi	a5,a5,30
a00070ac:	ac0786f7          	insb	a3,a5,0
a00070b0:	00d70023          	sb	a3,0(a4)
a00070b4:	6785                	lui	a5,0x1
a00070b6:	4701                	li	a4,0
a00070b8:	05000593          	li	a1,80
a00070bc:	04e5160b          	addsl	a2,a0,a4,2
a00070c0:	00f606b3          	add	a3,a2,a5
a00070c4:	000680a3          	sb	zero,1(a3) # 60000001 <__RFTLV_HEAD1_H+0x19adb3bf>
a00070c8:	00f6500b          	srb	zero,a2,a5,0
a00070cc:	00068123          	sb	zero,2(a3)
a00070d0:	0705                	addi	a4,a4,1
a00070d2:	feb715e3          	bne	a4,a1,a00070bc <SystemInit+0xfa>
a00070d6:	e0801737          	lui	a4,0xe0801
a00070da:	4689                	li	a3,2
a00070dc:	00d70723          	sb	a3,14(a4) # e080100e <__psram_limit+0x3840100e>
a00070e0:	04d70723          	sb	a3,78(a4)
a00070e4:	0ff0000f          	fence
a00070e8:	0000100f          	fence.i
a00070ec:	0020000b          	dcache.iall
a00070f0:	7c102773          	csrr	a4,mhcr
a00070f4:	03e78793          	addi	a5,a5,62 # 103e <HeapMinSize+0x3e>
a00070f8:	8fd9                	or	a5,a5,a4
a00070fa:	7c179073          	csrw	mhcr,a5
a00070fe:	0ff0000f          	fence
a0007102:	0000100f          	fence.i
a0007106:	0ff0000f          	fence
a000710a:	0000100f          	fence.i
a000710e:	0100000b          	icache.iall
a0007112:	7c1027f3          	csrr	a5,mhcr
a0007116:	0017e793          	ori	a5,a5,1
a000711a:	7c179073          	csrw	mhcr,a5
a000711e:	0ff0000f          	fence
a0007122:	0000100f          	fence.i
a0007126:	7e1027f3          	csrr	a5,mexstatus
a000712a:	fffd0737          	lui	a4,0xfffd0
a000712e:	177d                	addi	a4,a4,-1
a0007130:	8ff9                	and	a5,a5,a4
a0007132:	7e179073          	csrw	mexstatus,a5
a0007136:	200007b7          	lui	a5,0x20000
a000713a:	577d                	li	a4,-1
a000713c:	66c1                	lui	a3,0x10
a000713e:	14e7aa23          	sw	a4,340(a5) # 20000154 <remain_wifi_ram+0x1ffe0154>
a0007142:	fff68713          	addi	a4,a3,-1 # ffff <wifi_ram_max_size+0x7fff>
a0007146:	14e7ac23          	sw	a4,344(a5)
a000714a:	00000713          	li	a4,0
a000714e:	c63a                	sw	a4,12(sp)
a0007150:	60c7a783          	lw	a5,1548(a5)
a0007154:	4732                	lw	a4,12(sp)
a0007156:	eb09                	bnez	a4,a0007168 <SystemInit+0x1a6>
a0007158:	ff07f713          	andi	a4,a5,-16
a000715c:	200007b7          	lui	a5,0x20000
a0007160:	60e7a623          	sw	a4,1548(a5) # 2000060c <remain_wifi_ram+0x1ffe060c>
a0007164:	0141                	addi	sp,sp,16
a0007166:	8082                	ret
a0007168:	4632                	lw	a2,12(sp)
a000716a:	6721                	lui	a4,0x8
a000716c:	00e61663          	bne	a2,a4,a0007178 <SystemInit+0x1b6>
a0007170:	9bc1                	andi	a5,a5,-16
a0007172:	0037e713          	ori	a4,a5,3
a0007176:	b7dd                	j	a000715c <SystemInit+0x19a>
a0007178:	4632                	lw	a2,12(sp)
a000717a:	ff07f713          	andi	a4,a5,-16
a000717e:	fcd61fe3          	bne	a2,a3,a000715c <SystemInit+0x19a>
a0007182:	00f7e713          	ori	a4,a5,15
a0007186:	bfd9                	j	a000715c <SystemInit+0x19a>

a0007188 <System_Post_Init>:
a0007188:	1141                	addi	sp,sp,-16
a000718a:	c606                	sw	ra,12(sp)
a000718c:	3505                	jal	a0006fac <System_BOD_Init>
a000718e:	0ff0000f          	fence
a0007192:	0010000b          	dcache.call
a0007196:	0ff0000f          	fence
a000719a:	0ff0000f          	fence
a000719e:	0000100f          	fence.i
a00071a2:	0100000b          	icache.iall
a00071a6:	0ff0000f          	fence
a00071aa:	0000100f          	fence.i
a00071ae:	c2fba097          	auipc	ra,0xc2fba
a00071b2:	950080e7          	jalr	-1712(ra) # 62fc0afe <system_setup_xtal_config.isra.0>
a00071b6:	30046073          	csrsi	mstatus,8
a00071ba:	40b2                	lw	ra,12(sp)
a00071bc:	0141                	addi	sp,sp,16
a00071be:	8082                	ret

a00071c0 <exception_entry>:
a00071c0:	a0009537          	lui	a0,0xa0009
a00071c4:	715d                	addi	sp,sp,-80
a00071c6:	8b450513          	addi	a0,a0,-1868 # a00088b4 <__psram_limit+0xf7c088b4>
a00071ca:	c686                	sw	ra,76(sp)
a00071cc:	c4a2                	sw	s0,72(sp)
a00071ce:	c2a6                	sw	s1,68(sp)
a00071d0:	c0ca                	sw	s2,64(sp)
a00071d2:	943fe0ef          	jal	ra,a0005b14 <printf>
a00071d6:	34202473          	csrr	s0,mcause
a00071da:	a0009537          	lui	a0,0xa0009
a00071de:	85a2                	mv	a1,s0
a00071e0:	8c850513          	addi	a0,a0,-1848 # a00088c8 <__psram_limit+0xf7c088c8>
a00071e4:	931fe0ef          	jal	ra,a0005b14 <printf>
a00071e8:	341024f3          	csrr	s1,mepc
a00071ec:	a0009537          	lui	a0,0xa0009
a00071f0:	85a6                	mv	a1,s1
a00071f2:	8d850513          	addi	a0,a0,-1832 # a00088d8 <__psram_limit+0xf7c088d8>
a00071f6:	91ffe0ef          	jal	ra,a0005b14 <printf>
a00071fa:	343025f3          	csrr	a1,mtval
a00071fe:	a0009537          	lui	a0,0xa0009
a0007202:	8e450513          	addi	a0,a0,-1820 # a00088e4 <__psram_limit+0xf7c088e4>
a0007206:	90ffe0ef          	jal	ra,a0005b14 <printf>
a000720a:	a00095b7          	lui	a1,0xa0009
a000720e:	04000613          	li	a2,64
a0007212:	8fc58593          	addi	a1,a1,-1796 # a00088fc <__psram_limit+0xf7c088fc>
a0007216:	850a                	mv	a0,sp
a0007218:	826fd0ef          	jal	ra,a000423e <memcpy>
a000721c:	3ff47913          	andi	s2,s0,1023
a0007220:	883d                	andi	s0,s0,15
a0007222:	4481458b          	lrw	a1,sp,s0,2
a0007226:	a0009537          	lui	a0,0xa0009
a000722a:	8f450513          	addi	a0,a0,-1804 # a00088f4 <__psram_limit+0xf7c088f4>
a000722e:	8e7fe0ef          	jal	ra,a0005b14 <printf>
a0007232:	47a1                	li	a5,8
a0007234:	00f90d63          	beq	s2,a5,a000724e <exception_entry+0x8e>
a0007238:	47ad                	li	a5,11
a000723a:	00f90a63          	beq	s2,a5,a000724e <exception_entry+0x8e>
a000723e:	62fc3437          	lui	s0,0x62fc3
a0007242:	e6040413          	addi	s0,s0,-416 # 62fc2e60 <gpio>
a0007246:	8122                	mv	sp,s0
a0007248:	ad7fe0ef          	jal	ra,a0005d1e <coredump_run>
a000724c:	bfed                	j	a0007246 <exception_entry+0x86>
a000724e:	0491                	addi	s1,s1,4
a0007250:	34149073          	csrw	mepc,s1
a0007254:	40b6                	lw	ra,76(sp)
a0007256:	4426                	lw	s0,72(sp)
a0007258:	4496                	lw	s1,68(sp)
a000725a:	4906                	lw	s2,64(sp)
a000725c:	6161                	addi	sp,sp,80
a000725e:	8082                	ret

a0007260 <interrupt_entry>:
a0007260:	1141                	addi	sp,sp,-16
a0007262:	c602                	sw	zero,12(sp)
a0007264:	342027f3          	csrr	a5,mcause
a0007268:	c63e                	sw	a5,12(sp)
a000726a:	4532                	lw	a0,12(sp)
a000726c:	04f00793          	li	a5,79
a0007270:	3ff57513          	andi	a0,a0,1023
a0007274:	00a7ee63          	bltu	a5,a0,a0007290 <interrupt_entry+0x30>
a0007278:	62fc37b7          	lui	a5,0x62fc3
a000727c:	2d078793          	addi	a5,a5,720 # 62fc32d0 <g_irqvector>
a0007280:	46a7c70b          	lrw	a4,a5,a0,3
a0007284:	c711                	beqz	a4,a0007290 <interrupt_entry+0x30>
a0007286:	06a7978b          	addsl	a5,a5,a0,3
a000728a:	43cc                	lw	a1,4(a5)
a000728c:	0141                	addi	sp,sp,16
a000728e:	8702                	jr	a4
a0007290:	0141                	addi	sp,sp,16
a0007292:	8082                	ret

a0007294 <GLB_Set_ADC_CLK>:
a0007294:	200007b7          	lui	a5,0x20000
a0007298:	10078793          	addi	a5,a5,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a000729c:	4b98                	lw	a4,16(a5)
a000729e:	059e                	slli	a1,a1,0x7
a00072a0:	eff77713          	andi	a4,a4,-257
a00072a4:	cb98                	sw	a4,16(a5)
a00072a6:	4b98                	lw	a4,16(a5)
a00072a8:	fc077713          	andi	a4,a4,-64
a00072ac:	8e59                	or	a2,a2,a4
a00072ae:	f7f67613          	andi	a2,a2,-129
a00072b2:	8dd1                	or	a1,a1,a2
a00072b4:	cb8c                	sw	a1,16(a5)
a00072b6:	4b98                	lw	a4,16(a5)
a00072b8:	eff77793          	andi	a5,a4,-257
a00072bc:	c119                	beqz	a0,a00072c2 <GLB_Set_ADC_CLK+0x2e>
a00072be:	10076793          	ori	a5,a4,256
a00072c2:	20000737          	lui	a4,0x20000
a00072c6:	10f72823          	sw	a5,272(a4) # 20000110 <remain_wifi_ram+0x1ffe0110>
a00072ca:	4501                	li	a0,0
a00072cc:	8082                	ret

a00072ce <GLB_Set_IR_CLK>:
a00072ce:	20000737          	lui	a4,0x20000
a00072d2:	10070713          	addi	a4,a4,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a00072d6:	4334                	lw	a3,64(a4)
a00072d8:	ff8007b7          	lui	a5,0xff800
a00072dc:	17fd                	addi	a5,a5,-1
a00072de:	8efd                	and	a3,a3,a5
a00072e0:	c334                	sw	a3,64(a4)
a00072e2:	4334                	lw	a3,64(a4)
a00072e4:	ffc105b7          	lui	a1,0xffc10
a00072e8:	15fd                	addi	a1,a1,-1
a00072ea:	8eed                	and	a3,a3,a1
a00072ec:	0642                	slli	a2,a2,0x10
a00072ee:	8e55                	or	a2,a2,a3
a00072f0:	c330                	sw	a2,64(a4)
a00072f2:	4338                	lw	a4,64(a4)
a00072f4:	8ff9                	and	a5,a5,a4
a00072f6:	c501                	beqz	a0,a00072fe <GLB_Set_IR_CLK+0x30>
a00072f8:	008007b7          	lui	a5,0x800
a00072fc:	8fd9                	or	a5,a5,a4
a00072fe:	20000737          	lui	a4,0x20000
a0007302:	14f72023          	sw	a5,320(a4) # 20000140 <remain_wifi_ram+0x1ffe0140>
a0007306:	4501                	li	a0,0
a0007308:	8082                	ret

a000730a <GLB_Set_I2C_CLK>:
a000730a:	20000737          	lui	a4,0x20000
a000730e:	18070713          	addi	a4,a4,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007312:	4314                	lw	a3,0(a4)
a0007314:	ff0007b7          	lui	a5,0xff000
a0007318:	17fd                	addi	a5,a5,-1
a000731a:	8efd                	and	a3,a3,a5
a000731c:	c314                	sw	a3,0(a4)
a000731e:	4314                	lw	a3,0(a4)
a0007320:	fe000837          	lui	a6,0xfe000
a0007324:	187d                	addi	a6,a6,-1
a0007326:	0106f6b3          	and	a3,a3,a6
a000732a:	05e6                	slli	a1,a1,0x19
a000732c:	8dd5                	or	a1,a1,a3
a000732e:	ff0106b7          	lui	a3,0xff010
a0007332:	16fd                	addi	a3,a3,-1
a0007334:	8df5                	and	a1,a1,a3
a0007336:	0642                	slli	a2,a2,0x10
a0007338:	8dd1                	or	a1,a1,a2
a000733a:	c30c                	sw	a1,0(a4)
a000733c:	4318                	lw	a4,0(a4)
a000733e:	8ff9                	and	a5,a5,a4
a0007340:	c501                	beqz	a0,a0007348 <GLB_Set_I2C_CLK+0x3e>
a0007342:	010007b7          	lui	a5,0x1000
a0007346:	8fd9                	or	a5,a5,a4
a0007348:	20000737          	lui	a4,0x20000
a000734c:	18f72023          	sw	a5,384(a4) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007350:	4501                	li	a0,0
a0007352:	8082                	ret

a0007354 <GLB_Set_SPI_CLK>:
a0007354:	200007b7          	lui	a5,0x20000
a0007358:	18078793          	addi	a5,a5,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a000735c:	5b94                	lw	a3,48(a5)
a000735e:	05a6                	slli	a1,a1,0x9
a0007360:	eff6f693          	andi	a3,a3,-257
a0007364:	db94                	sw	a3,48(a5)
a0007366:	5b98                	lw	a4,48(a5)
a0007368:	de077713          	andi	a4,a4,-544
a000736c:	8f51                	or	a4,a4,a2
a000736e:	8dd9                	or	a1,a1,a4
a0007370:	db8c                	sw	a1,48(a5)
a0007372:	5b98                	lw	a4,48(a5)
a0007374:	eff77793          	andi	a5,a4,-257
a0007378:	c119                	beqz	a0,a000737e <GLB_Set_SPI_CLK+0x2a>
a000737a:	10076793          	ori	a5,a4,256
a000737e:	20000737          	lui	a4,0x20000
a0007382:	1af72823          	sw	a5,432(a4) # 200001b0 <remain_wifi_ram+0x1ffe01b0>
a0007386:	4501                	li	a0,0
a0007388:	8082                	ret

a000738a <GLB_Set_DBI_CLK>:
a000738a:	200007b7          	lui	a5,0x20000
a000738e:	18078793          	addi	a5,a5,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007392:	5bb4                	lw	a3,112(a5)
a0007394:	05a6                	slli	a1,a1,0x9
a0007396:	eff6f693          	andi	a3,a3,-257
a000739a:	dbb4                	sw	a3,112(a5)
a000739c:	5bb8                	lw	a4,112(a5)
a000739e:	de077713          	andi	a4,a4,-544
a00073a2:	8f51                	or	a4,a4,a2
a00073a4:	8dd9                	or	a1,a1,a4
a00073a6:	dbac                	sw	a1,112(a5)
a00073a8:	5bb8                	lw	a4,112(a5)
a00073aa:	eff77793          	andi	a5,a4,-257
a00073ae:	c119                	beqz	a0,a00073b4 <GLB_Set_DBI_CLK+0x2a>
a00073b0:	10076793          	ori	a5,a4,256
a00073b4:	20000737          	lui	a4,0x20000
a00073b8:	1ef72823          	sw	a5,496(a4) # 200001f0 <remain_wifi_ram+0x1ffe01f0>
a00073bc:	4501                	li	a0,0
a00073be:	8082                	ret

a00073c0 <GLB_Set_CAM_CLK>:
a00073c0:	20000737          	lui	a4,0x20000
a00073c4:	40070713          	addi	a4,a4,1024 # 20000400 <remain_wifi_ram+0x1ffe0400>
a00073c8:	5314                	lw	a3,32(a4)
a00073ca:	f80007b7          	lui	a5,0xf8000
a00073ce:	17fd                	addi	a5,a5,-1
a00073d0:	8efd                	and	a3,a3,a5
a00073d2:	d314                	sw	a3,32(a4)
a00073d4:	5314                	lw	a3,32(a4)
a00073d6:	d0000837          	lui	a6,0xd0000
a00073da:	187d                	addi	a6,a6,-1
a00073dc:	0106f6b3          	and	a3,a3,a6
a00073e0:	05f2                	slli	a1,a1,0x1c
a00073e2:	8dd5                	or	a1,a1,a3
a00073e4:	400006b7          	lui	a3,0x40000
a00073e8:	16fd                	addi	a3,a3,-1
a00073ea:	8df5                	and	a1,a1,a3
a00073ec:	067a                	slli	a2,a2,0x1e
a00073ee:	8dd1                	or	a1,a1,a2
a00073f0:	d30c                	sw	a1,32(a4)
a00073f2:	5318                	lw	a4,32(a4)
a00073f4:	8ff9                	and	a5,a5,a4
a00073f6:	c501                	beqz	a0,a00073fe <GLB_Set_CAM_CLK+0x3e>
a00073f8:	080007b7          	lui	a5,0x8000
a00073fc:	8fd9                	or	a5,a5,a4
a00073fe:	20000737          	lui	a4,0x20000
a0007402:	42f72023          	sw	a5,1056(a4) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0007406:	4501                	li	a0,0
a0007408:	8082                	ret

a000740a <HBN_Enable_BOD_IRQ>:
a000740a:	2000f737          	lui	a4,0x2000f
a000740e:	4b5c                	lw	a5,20(a4)
a0007410:	000406b7          	lui	a3,0x40
a0007414:	4501                	li	a0,0
a0007416:	8fd5                	or	a5,a5,a3
a0007418:	cb5c                	sw	a5,20(a4)
a000741a:	8082                	ret

a000741c <HBN_Disable_BOD_IRQ>:
a000741c:	2000f6b7          	lui	a3,0x2000f
a0007420:	4adc                	lw	a5,20(a3)
a0007422:	fffc0737          	lui	a4,0xfffc0
a0007426:	177d                	addi	a4,a4,-1
a0007428:	8ff9                	and	a5,a5,a4
a000742a:	cadc                	sw	a5,20(a3)
a000742c:	4501                	li	a0,0
a000742e:	8082                	ret

a0007430 <HBN_Set_BOD_Cfg>:
a0007430:	1141                	addi	sp,sp,-16
a0007432:	c422                	sw	s0,8(sp)
a0007434:	c606                	sw	ra,12(sp)
a0007436:	00154783          	lbu	a5,1(a0)
a000743a:	842a                	mv	s0,a0
a000743c:	c3a9                	beqz	a5,a000747e <HBN_Set_BOD_Cfg+0x4e>
a000743e:	37f1                	jal	a000740a <HBN_Enable_BOD_IRQ>
a0007440:	2000f7b7          	lui	a5,0x2000f
a0007444:	57dc                	lw	a5,44(a5)
a0007446:	00344683          	lbu	a3,3(s0)
a000744a:	ff17f713          	andi	a4,a5,-15
a000744e:	00244783          	lbu	a5,2(s0)
a0007452:	0786                	slli	a5,a5,0x1
a0007454:	8fd9                	or	a5,a5,a4
a0007456:	ffe7f713          	andi	a4,a5,-2
a000745a:	c299                	beqz	a3,a0007460 <HBN_Set_BOD_Cfg+0x30>
a000745c:	0017e713          	ori	a4,a5,1
a0007460:	00044683          	lbu	a3,0(s0)
a0007464:	fef77793          	andi	a5,a4,-17
a0007468:	c299                	beqz	a3,a000746e <HBN_Set_BOD_Cfg+0x3e>
a000746a:	01076793          	ori	a5,a4,16
a000746e:	40b2                	lw	ra,12(sp)
a0007470:	4422                	lw	s0,8(sp)
a0007472:	2000f737          	lui	a4,0x2000f
a0007476:	d75c                	sw	a5,44(a4)
a0007478:	4501                	li	a0,0
a000747a:	0141                	addi	sp,sp,16
a000747c:	8082                	ret
a000747e:	3f79                	jal	a000741c <HBN_Disable_BOD_IRQ>
a0007480:	b7c1                	j	a0007440 <HBN_Set_BOD_Cfg+0x10>

a0007482 <Clock_DBI_Clk_Mux_Output>:
a0007482:	e919                	bnez	a0,a0007498 <Clock_DBI_Clk_Mux_Output+0x16>
a0007484:	200007b7          	lui	a5,0x20000
a0007488:	2547a503          	lw	a0,596(a5) # 20000254 <remain_wifi_ram+0x1ffe0254>
a000748c:	2ca5350b          	extu	a0,a0,11,10
a0007490:	c2fba317          	auipc	t1,0xc2fba
a0007494:	47430067          	jr	1140(t1) # 62fc1904 <Clock_160M_Clk_Mux_Output>
a0007498:	4515                	li	a0,5
a000749a:	c2fba317          	auipc	t1,0xc2fba
a000749e:	56c30067          	jr	1388(t1) # 62fc1a06 <Clock_System_Clock_Get>

a00074a2 <Clock_Get_PSRAMB_Clk>:
a00074a2:	1141                	addi	sp,sp,-16
a00074a4:	200007b7          	lui	a5,0x20000
a00074a8:	c422                	sw	s0,8(sp)
a00074aa:	6207a403          	lw	s0,1568(a5) # 20000620 <remain_wifi_ram+0x1ffe0620>
a00074ae:	6207a783          	lw	a5,1568(a5)
a00074b2:	c606                	sw	ra,12(sp)
a00074b4:	8079                	srli	s0,s0,0x1e
a00074b6:	71c7b78b          	extu	a5,a5,28,28
a00074ba:	1312d537          	lui	a0,0x1312d
a00074be:	c791                	beqz	a5,a00074ca <Clock_Get_PSRAMB_Clk+0x28>
a00074c0:	4501                	li	a0,0
a00074c2:	c2fba097          	auipc	ra,0xc2fba
a00074c6:	2da080e7          	jalr	730(ra) # 62fc179c <Clock_Get_AUPLL_Output>
a00074ca:	0405                	addi	s0,s0,1
a00074cc:	02855533          	divu	a0,a0,s0
a00074d0:	40b2                	lw	ra,12(sp)
a00074d2:	4422                	lw	s0,8(sp)
a00074d4:	0141                	addi	sp,sp,16
a00074d6:	8082                	ret

a00074d8 <Clock_Get_ISP_Clk>:
a00074d8:	200007b7          	lui	a5,0x20000
a00074dc:	2547a783          	lw	a5,596(a5) # 20000254 <remain_wifi_ram+0x1ffe0254>
a00074e0:	8b8d                	andi	a5,a5,3
a00074e2:	cb91                	beqz	a5,a00074f6 <Clock_Get_ISP_Clk+0x1e>
a00074e4:	4705                	li	a4,1
a00074e6:	4515                	li	a0,5
a00074e8:	00e78363          	beq	a5,a4,a00074ee <Clock_Get_ISP_Clk+0x16>
a00074ec:	4519                	li	a0,6
a00074ee:	c2fba317          	auipc	t1,0xc2fba
a00074f2:	2ae30067          	jr	686(t1) # 62fc179c <Clock_Get_AUPLL_Output>
a00074f6:	04c4b537          	lui	a0,0x4c4b
a00074fa:	40050513          	addi	a0,a0,1024 # 4c4b400 <remain_wifi_ram+0x4c2b400>
a00074fe:	8082                	ret

a0007500 <Clock_Audio_ADC_Clock_Get>:
a0007500:	1141                	addi	sp,sp,-16
a0007502:	c606                	sw	ra,12(sp)
a0007504:	c2fba097          	auipc	ra,0xc2fba
a0007508:	3de080e7          	jalr	990(ra) # 62fc18e2 <Clock_Get_Audio_PLL_Output>
a000750c:	200007b7          	lui	a5,0x20000
a0007510:	3447a783          	lw	a5,836(a5) # 20000344 <remain_wifi_ram+0x1ffe0344>
a0007514:	40b2                	lw	ra,12(sp)
a0007516:	5d07b78b          	extu	a5,a5,23,16
a000751a:	0785                	addi	a5,a5,1
a000751c:	02f55533          	divu	a0,a0,a5
a0007520:	0141                	addi	sp,sp,16
a0007522:	8082                	ret

a0007524 <Clock_Peripheral_Clock_Get>:
a0007524:	1141                	addi	sp,sp,-16
a0007526:	c606                	sw	ra,12(sp)
a0007528:	c422                	sw	s0,8(sp)
a000752a:	4731                	li	a4,12
a000752c:	22e50d63          	beq	a0,a4,a0007766 <Clock_Peripheral_Clock_Get+0x242>
a0007530:	87aa                	mv	a5,a0
a0007532:	04a76c63          	bltu	a4,a0,a000758a <Clock_Peripheral_Clock_Get+0x66>
a0007536:	471d                	li	a4,7
a0007538:	18e50863          	beq	a0,a4,a00076c8 <Clock_Peripheral_Clock_Get+0x1a4>
a000753c:	02a76a63          	bltu	a4,a0,a0007570 <Clock_Peripheral_Clock_Get+0x4c>
a0007540:	4715                	li	a4,5
a0007542:	14e50163          	beq	a0,a4,a0007684 <Clock_Peripheral_Clock_Get+0x160>
a0007546:	00a76a63          	bltu	a4,a0,a000755a <Clock_Peripheral_Clock_Get+0x36>
a000754a:	4709                	li	a4,2
a000754c:	0ca77b63          	bgeu	a4,a0,a0007622 <Clock_Peripheral_Clock_Get+0xfe>
a0007550:	470d                	li	a4,3
a0007552:	10e50e63          	beq	a0,a4,a000766e <Clock_Peripheral_Clock_Get+0x14a>
a0007556:	4501                	li	a0,0
a0007558:	a02d                	j	a0007582 <Clock_Peripheral_Clock_Get+0x5e>
a000755a:	4719                	li	a4,6
a000755c:	fee51de3          	bne	a0,a4,a0007556 <Clock_Peripheral_Clock_Get+0x32>
a0007560:	4422                	lw	s0,8(sp)
a0007562:	40b2                	lw	ra,12(sp)
a0007564:	450d                	li	a0,3
a0007566:	0141                	addi	sp,sp,16
a0007568:	c2fba317          	auipc	t1,0xc2fba
a000756c:	49e30067          	jr	1182(t1) # 62fc1a06 <Clock_System_Clock_Get>
a0007570:	4729                	li	a4,10
a0007572:	14e50763          	beq	a0,a4,a00076c0 <Clock_Peripheral_Clock_Get+0x19c>
a0007576:	46ad                	li	a3,11
a0007578:	14d50c63          	beq	a0,a3,a00076d0 <Clock_Peripheral_Clock_Get+0x1ac>
a000757c:	4501                	li	a0,0
a000757e:	10e79d63          	bne	a5,a4,a0007698 <Clock_Peripheral_Clock_Get+0x174>
a0007582:	40b2                	lw	ra,12(sp)
a0007584:	4422                	lw	s0,8(sp)
a0007586:	0141                	addi	sp,sp,16
a0007588:	8082                	ret
a000758a:	4745                	li	a4,17
a000758c:	26e50763          	beq	a0,a4,a00077fa <Clock_Peripheral_Clock_Get+0x2d6>
a0007590:	04a76b63          	bltu	a4,a0,a00075e6 <Clock_Peripheral_Clock_Get+0xc2>
a0007594:	473d                	li	a4,15
a0007596:	1ee50f63          	beq	a0,a4,a0007794 <Clock_Peripheral_Clock_Get+0x270>
a000759a:	00a76c63          	bltu	a4,a0,a00075b2 <Clock_Peripheral_Clock_Get+0x8e>
a000759e:	4735                	li	a4,13
a00075a0:	1ce50e63          	beq	a0,a4,a000777c <Clock_Peripheral_Clock_Get+0x258>
a00075a4:	4739                	li	a4,14
a00075a6:	fae518e3          	bne	a0,a4,a0007556 <Clock_Peripheral_Clock_Get+0x32>
a00075aa:	4422                	lw	s0,8(sp)
a00075ac:	40b2                	lw	ra,12(sp)
a00075ae:	0141                	addi	sp,sp,16
a00075b0:	bf81                	j	a0007500 <Clock_Audio_ADC_Clock_Get>
a00075b2:	4741                	li	a4,16
a00075b4:	fae511e3          	bne	a0,a4,a0007556 <Clock_Peripheral_Clock_Get+0x32>
a00075b8:	200007b7          	lui	a5,0x20000
a00075bc:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
a00075c0:	75c7b78b          	extu	a5,a5,29,28
a00075c4:	22078663          	beqz	a5,a00077f0 <Clock_Peripheral_Clock_Get+0x2cc>
a00075c8:	4705                	li	a4,1
a00075ca:	20e79e63          	bne	a5,a4,a00077e6 <Clock_Peripheral_Clock_Get+0x2c2>
a00075ce:	4515                	li	a0,5
a00075d0:	c2fba097          	auipc	ra,0xc2fba
a00075d4:	436080e7          	jalr	1078(ra) # 62fc1a06 <Clock_System_Clock_Get>
a00075d8:	200007b7          	lui	a5,0x20000
a00075dc:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
a00075e0:	5907b78b          	extu	a5,a5,22,16
a00075e4:	a8a5                	j	a000765c <Clock_Peripheral_Clock_Get+0x138>
a00075e6:	474d                	li	a4,19
a00075e8:	24e50e63          	beq	a0,a4,a0007844 <Clock_Peripheral_Clock_Get+0x320>
a00075ec:	4751                	li	a4,20
a00075ee:	6521                	lui	a0,0x8
a00075f0:	f8e789e3          	beq	a5,a4,a0007582 <Clock_Peripheral_Clock_Get+0x5e>
a00075f4:	4749                	li	a4,18
a00075f6:	f6e790e3          	bne	a5,a4,a0007556 <Clock_Peripheral_Clock_Get+0x32>
a00075fa:	200007b7          	lui	a5,0x20000
a00075fe:	4307a783          	lw	a5,1072(a5) # 20000430 <remain_wifi_ram+0x1ffe0430>
a0007602:	30c7b78b          	extu	a5,a5,12,12
a0007606:	22078a63          	beqz	a5,a000783a <Clock_Peripheral_Clock_Get+0x316>
a000760a:	4515                	li	a0,5
a000760c:	c2fba097          	auipc	ra,0xc2fba
a0007610:	190080e7          	jalr	400(ra) # 62fc179c <Clock_Get_AUPLL_Output>
a0007614:	200007b7          	lui	a5,0x20000
a0007618:	4307a783          	lw	a5,1072(a5) # 20000430 <remain_wifi_ram+0x1ffe0430>
a000761c:	2c97b78b          	extu	a5,a5,11,9
a0007620:	a835                	j	a000765c <Clock_Peripheral_Clock_Get+0x138>
a0007622:	200006b7          	lui	a3,0x20000
a0007626:	1506a703          	lw	a4,336(a3) # 20000150 <remain_wifi_ram+0x1ffe0150>
a000762a:	450d                	li	a0,3
a000762c:	01575793          	srli	a5,a4,0x15
a0007630:	8b89                	andi	a5,a5,2
a0007632:	1c77370b          	extu	a4,a4,7,7
a0007636:	8fd9                	or	a5,a5,a4
a0007638:	c795                	beqz	a5,a0007664 <Clock_Peripheral_Clock_Get+0x140>
a000763a:	4705                	li	a4,1
a000763c:	4515                	li	a0,5
a000763e:	02e79363          	bne	a5,a4,a0007664 <Clock_Peripheral_Clock_Get+0x140>
a0007642:	2546a503          	lw	a0,596(a3)
a0007646:	2ca5350b          	extu	a0,a0,11,10
a000764a:	c2fba097          	auipc	ra,0xc2fba
a000764e:	2ba080e7          	jalr	698(ra) # 62fc1904 <Clock_160M_Clk_Mux_Output>
a0007652:	200007b7          	lui	a5,0x20000
a0007656:	1507a783          	lw	a5,336(a5) # 20000150 <remain_wifi_ram+0x1ffe0150>
a000765a:	8b9d                	andi	a5,a5,7
a000765c:	0785                	addi	a5,a5,1
a000765e:	02f55533          	divu	a0,a0,a5
a0007662:	b705                	j	a0007582 <Clock_Peripheral_Clock_Get+0x5e>
a0007664:	c2fba097          	auipc	ra,0xc2fba
a0007668:	3a2080e7          	jalr	930(ra) # 62fc1a06 <Clock_System_Clock_Get>
a000766c:	b7dd                	j	a0007652 <Clock_Peripheral_Clock_Get+0x12e>
a000766e:	20000437          	lui	s0,0x20000
a0007672:	1b042503          	lw	a0,432(s0) # 200001b0 <remain_wifi_ram+0x1ffe01b0>
a0007676:	2495350b          	extu	a0,a0,9,9
a000767a:	3521                	jal	a0007482 <Clock_DBI_Clk_Mux_Output>
a000767c:	1b042783          	lw	a5,432(s0)
a0007680:	8bfd                	andi	a5,a5,31
a0007682:	bfe9                	j	a000765c <Clock_Peripheral_Clock_Get+0x138>
a0007684:	20000437          	lui	s0,0x20000
a0007688:	1f042503          	lw	a0,496(s0) # 200001f0 <remain_wifi_ram+0x1ffe01f0>
a000768c:	2495350b          	extu	a0,a0,9,9
a0007690:	3bcd                	jal	a0007482 <Clock_DBI_Clk_Mux_Output>
a0007692:	1f042783          	lw	a5,496(s0)
a0007696:	b7ed                	j	a0007680 <Clock_Peripheral_Clock_Get+0x15c>
a0007698:	200007b7          	lui	a5,0x20000
a000769c:	1807a783          	lw	a5,384(a5) # 20000180 <remain_wifi_ram+0x1ffe0180>
a00076a0:	450d                	li	a0,3
a00076a2:	6597b78b          	extu	a5,a5,25,25
a00076a6:	c391                	beqz	a5,a00076aa <Clock_Peripheral_Clock_Get+0x186>
a00076a8:	4515                	li	a0,5
a00076aa:	c2fba097          	auipc	ra,0xc2fba
a00076ae:	35c080e7          	jalr	860(ra) # 62fc1a06 <Clock_System_Clock_Get>
a00076b2:	200007b7          	lui	a5,0x20000
a00076b6:	1807a783          	lw	a5,384(a5) # 20000180 <remain_wifi_ram+0x1ffe0180>
a00076ba:	5d07b78b          	extu	a5,a5,23,16
a00076be:	bf79                	j	a000765c <Clock_Peripheral_Clock_Get+0x138>
a00076c0:	4422                	lw	s0,8(sp)
a00076c2:	40b2                	lw	ra,12(sp)
a00076c4:	0141                	addi	sp,sp,16
a00076c6:	bbf1                	j	a00074a2 <Clock_Get_PSRAMB_Clk>
a00076c8:	4422                	lw	s0,8(sp)
a00076ca:	40b2                	lw	ra,12(sp)
a00076cc:	0141                	addi	sp,sp,16
a00076ce:	b529                	j	a00074d8 <Clock_Get_ISP_Clk>
a00076d0:	20000737          	lui	a4,0x20000
a00076d4:	17072783          	lw	a5,368(a4) # 20000170 <remain_wifi_ram+0x1ffe0170>
a00076d8:	34c7b78b          	extu	a5,a5,13,12
a00076dc:	ef8d                	bnez	a5,a0007716 <Clock_Peripheral_Clock_Get+0x1f2>
a00076de:	17072783          	lw	a5,368(a4)
a00076e2:	3ce7b78b          	extu	a5,a5,15,14
a00076e6:	c3ad                	beqz	a5,a0007748 <Clock_Peripheral_Clock_Get+0x224>
a00076e8:	4705                	li	a4,1
a00076ea:	00e79d63          	bne	a5,a4,a0007704 <Clock_Peripheral_Clock_Get+0x1e0>
a00076ee:	c2fba097          	auipc	ra,0xc2fba
a00076f2:	244080e7          	jalr	580(ra) # 62fc1932 <Clock_Xtal_Output>
a00076f6:	200007b7          	lui	a5,0x20000
a00076fa:	1707a783          	lw	a5,368(a5) # 20000170 <remain_wifi_ram+0x1ffe0170>
a00076fe:	2887b78b          	extu	a5,a5,10,8
a0007702:	bfa9                	j	a000765c <Clock_Peripheral_Clock_Get+0x138>
a0007704:	4709                	li	a4,2
a0007706:	04e78163          	beq	a5,a4,a0007748 <Clock_Peripheral_Clock_Get+0x224>
a000770a:	4515                	li	a0,5
a000770c:	c2fba097          	auipc	ra,0xc2fba
a0007710:	090080e7          	jalr	144(ra) # 62fc179c <Clock_Get_AUPLL_Output>
a0007714:	b7cd                	j	a00076f6 <Clock_Peripheral_Clock_Get+0x1d2>
a0007716:	4685                	li	a3,1
a0007718:	00d79f63          	bne	a5,a3,a0007736 <Clock_Peripheral_Clock_Get+0x212>
a000771c:	25472703          	lw	a4,596(a4)
a0007720:	2487370b          	extu	a4,a4,9,8
a0007724:	c71d                	beqz	a4,a0007752 <Clock_Peripheral_Clock_Get+0x22e>
a0007726:	fef702e3          	beq	a4,a5,a000770a <Clock_Peripheral_Clock_Get+0x1e6>
a000772a:	4789                	li	a5,2
a000772c:	4501                	li	a0,0
a000772e:	fcf714e3          	bne	a4,a5,a00076f6 <Clock_Peripheral_Clock_Get+0x1d2>
a0007732:	4519                	li	a0,6
a0007734:	bfe1                	j	a000770c <Clock_Peripheral_Clock_Get+0x1e8>
a0007736:	4709                	li	a4,2
a0007738:	02e79263          	bne	a5,a4,a000775c <Clock_Peripheral_Clock_Get+0x238>
a000773c:	450d                	li	a0,3
a000773e:	c2fba097          	auipc	ra,0xc2fba
a0007742:	2c8080e7          	jalr	712(ra) # 62fc1a06 <Clock_System_Clock_Get>
a0007746:	bf45                	j	a00076f6 <Clock_Peripheral_Clock_Get+0x1d2>
a0007748:	07271537          	lui	a0,0x7271
a000774c:	e0050513          	addi	a0,a0,-512 # 7270e00 <remain_wifi_ram+0x7250e00>
a0007750:	b75d                	j	a00076f6 <Clock_Peripheral_Clock_Get+0x1d2>
a0007752:	04c4b537          	lui	a0,0x4c4b
a0007756:	40050513          	addi	a0,a0,1024 # 4c4b400 <remain_wifi_ram+0x4c2b400>
a000775a:	bf71                	j	a00076f6 <Clock_Peripheral_Clock_Get+0x1d2>
a000775c:	05b8e537          	lui	a0,0x5b8e
a0007760:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0007764:	bf49                	j	a00076f6 <Clock_Peripheral_Clock_Get+0x1d2>
a0007766:	c2fba097          	auipc	ra,0xc2fba
a000776a:	17c080e7          	jalr	380(ra) # 62fc18e2 <Clock_Get_Audio_PLL_Output>
a000776e:	200007b7          	lui	a5,0x20000
a0007772:	1907a783          	lw	a5,400(a5) # 20000190 <remain_wifi_ram+0x1ffe0190>
a0007776:	03f7f793          	andi	a5,a5,63
a000777a:	b5cd                	j	a000765c <Clock_Peripheral_Clock_Get+0x138>
a000777c:	4515                	li	a0,5
a000777e:	c2fba097          	auipc	ra,0xc2fba
a0007782:	288080e7          	jalr	648(ra) # 62fc1a06 <Clock_System_Clock_Get>
a0007786:	200007b7          	lui	a5,0x20000
a000778a:	1407a783          	lw	a5,320(a5) # 20000140 <remain_wifi_ram+0x1ffe0140>
a000778e:	5507b78b          	extu	a5,a5,21,16
a0007792:	b5e9                	j	a000765c <Clock_Peripheral_Clock_Get+0x138>
a0007794:	2000f737          	lui	a4,0x2000f
a0007798:	531c                	lw	a5,32(a4)
a000779a:	2087b78b          	extu	a5,a5,8,8
a000779e:	cb99                	beqz	a5,a00077b4 <Clock_Peripheral_Clock_Get+0x290>
a00077a0:	5b08                	lw	a0,48(a4)
a00077a2:	4422                	lw	s0,8(sp)
a00077a4:	40b2                	lw	ra,12(sp)
a00077a6:	1035350b          	extu	a0,a0,4,3
a00077aa:	0141                	addi	sp,sp,16
a00077ac:	c2fba317          	auipc	t1,0xc2fba
a00077b0:	1be30067          	jr	446(t1) # 62fc196a <Clock_F32k_Mux_Output>
a00077b4:	200007b7          	lui	a5,0x20000
a00077b8:	1107a403          	lw	s0,272(a5) # 20000110 <remain_wifi_ram+0x1ffe0110>
a00077bc:	1107a783          	lw	a5,272(a5)
a00077c0:	03f47413          	andi	s0,s0,63
a00077c4:	1c77b78b          	extu	a5,a5,7,7
a00077c8:	eb89                	bnez	a5,a00077da <Clock_Peripheral_Clock_Get+0x2b6>
a00077ca:	c2fba097          	auipc	ra,0xc2fba
a00077ce:	118080e7          	jalr	280(ra) # 62fc18e2 <Clock_Get_Audio_PLL_Output>
a00077d2:	0405                	addi	s0,s0,1
a00077d4:	02855533          	divu	a0,a0,s0
a00077d8:	b36d                	j	a0007582 <Clock_Peripheral_Clock_Get+0x5e>
a00077da:	4515                	li	a0,5
a00077dc:	c2fba097          	auipc	ra,0xc2fba
a00077e0:	22a080e7          	jalr	554(ra) # 62fc1a06 <Clock_System_Clock_Get>
a00077e4:	b7fd                	j	a00077d2 <Clock_Peripheral_Clock_Get+0x2ae>
a00077e6:	c2fba097          	auipc	ra,0xc2fba
a00077ea:	0fc080e7          	jalr	252(ra) # 62fc18e2 <Clock_Get_Audio_PLL_Output>
a00077ee:	b3ed                	j	a00075d8 <Clock_Peripheral_Clock_Get+0xb4>
a00077f0:	01e85537          	lui	a0,0x1e85
a00077f4:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
a00077f8:	b3c5                	j	a00075d8 <Clock_Peripheral_Clock_Get+0xb4>
a00077fa:	200007b7          	lui	a5,0x20000
a00077fe:	4207a783          	lw	a5,1056(a5) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0007802:	75c7b78b          	extu	a5,a5,29,28
a0007806:	ef81                	bnez	a5,a000781e <Clock_Peripheral_Clock_Get+0x2fa>
a0007808:	4515                	li	a0,5
a000780a:	c2fba097          	auipc	ra,0xc2fba
a000780e:	1fc080e7          	jalr	508(ra) # 62fc1a06 <Clock_System_Clock_Get>
a0007812:	200007b7          	lui	a5,0x20000
a0007816:	4207a783          	lw	a5,1056(a5) # 20000420 <remain_wifi_ram+0x1ffe0420>
a000781a:	83f9                	srli	a5,a5,0x1e
a000781c:	b581                	j	a000765c <Clock_Peripheral_Clock_Get+0x138>
a000781e:	4705                	li	a4,1
a0007820:	00e78863          	beq	a5,a4,a0007830 <Clock_Peripheral_Clock_Get+0x30c>
a0007824:	4515                	li	a0,5
a0007826:	c2fba097          	auipc	ra,0xc2fba
a000782a:	f76080e7          	jalr	-138(ra) # 62fc179c <Clock_Get_AUPLL_Output>
a000782e:	b7d5                	j	a0007812 <Clock_Peripheral_Clock_Get+0x2ee>
a0007830:	05b8e537          	lui	a0,0x5b8e
a0007834:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0007838:	bfe9                	j	a0007812 <Clock_Peripheral_Clock_Get+0x2ee>
a000783a:	05b8e537          	lui	a0,0x5b8e
a000783e:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0007842:	bbc9                	j	a0007614 <Clock_Peripheral_Clock_Get+0xf0>
a0007844:	20000737          	lui	a4,0x20000
a0007848:	54872783          	lw	a5,1352(a4) # 20000548 <remain_wifi_ram+0x1ffe0548>
a000784c:	6187b78b          	extu	a5,a5,24,24
a0007850:	d00788e3          	beqz	a5,a0007560 <Clock_Peripheral_Clock_Get+0x3c>
a0007854:	25472503          	lw	a0,596(a4)
a0007858:	4422                	lw	s0,8(sp)
a000785a:	40b2                	lw	ra,12(sp)
a000785c:	2ca5350b          	extu	a0,a0,11,10
a0007860:	0141                	addi	sp,sp,16
a0007862:	c2fba317          	auipc	t1,0xc2fba
a0007866:	0a230067          	jr	162(t1) # 62fc1904 <Clock_160M_Clk_Mux_Output>

a000786a <qcc74x_gpio_pad_check>:
a000786a:	1141                	addi	sp,sp,-16
a000786c:	c606                	sw	ra,12(sp)
a000786e:	c2fb9097          	auipc	ra,0xc2fb9
a0007872:	6a2080e7          	jalr	1698(ra) # 62fc0f10 <GLB_GPIO_Pad_LeadOut_Sts>
a0007876:	e111                	bnez	a0,a000787a <qcc74x_gpio_pad_check+0x10>
a0007878:	a001                	j	a0007878 <qcc74x_gpio_pad_check+0xe>
a000787a:	40b2                	lw	ra,12(sp)
a000787c:	0141                	addi	sp,sp,16
a000787e:	8082                	ret

a0007880 <qcc74x_clk_get_peripheral_clock>:
a0007880:	e119                	bnez	a0,a0007886 <qcc74x_clk_get_peripheral_clock+0x6>
a0007882:	4539                	li	a0,14
a0007884:	b145                	j	a0007524 <Clock_Peripheral_Clock_Get>
a0007886:	4785                	li	a5,1
a0007888:	00f51463          	bne	a0,a5,a0007890 <qcc74x_clk_get_peripheral_clock+0x10>
a000788c:	4541                	li	a0,16
a000788e:	bfdd                	j	a0007884 <qcc74x_clk_get_peripheral_clock+0x4>
a0007890:	4795                	li	a5,5
a0007892:	00f51463          	bne	a0,a5,a000789a <qcc74x_clk_get_peripheral_clock+0x1a>
a0007896:	4501                	li	a0,0
a0007898:	b7f5                	j	a0007884 <qcc74x_clk_get_peripheral_clock+0x4>
a000789a:	4799                	li	a5,6
a000789c:	00f51463          	bne	a0,a5,a00078a4 <qcc74x_clk_get_peripheral_clock+0x24>
a00078a0:	450d                	li	a0,3
a00078a2:	b7cd                	j	a0007884 <qcc74x_clk_get_peripheral_clock+0x4>
a00078a4:	479d                	li	a5,7
a00078a6:	00f51463          	bne	a0,a5,a00078ae <qcc74x_clk_get_peripheral_clock+0x2e>
a00078aa:	4521                	li	a0,8
a00078ac:	bfe1                	j	a0007884 <qcc74x_clk_get_peripheral_clock+0x4>
a00078ae:	47bd                	li	a5,15
a00078b0:	00f51463          	bne	a0,a5,a00078b8 <qcc74x_clk_get_peripheral_clock+0x38>
a00078b4:	452d                	li	a0,11
a00078b6:	b7f9                	j	a0007884 <qcc74x_clk_get_peripheral_clock+0x4>
a00078b8:	47a9                	li	a5,10
a00078ba:	00f51463          	bne	a0,a5,a00078c2 <qcc74x_clk_get_peripheral_clock+0x42>
a00078be:	4535                	li	a0,13
a00078c0:	b7d1                	j	a0007884 <qcc74x_clk_get_peripheral_clock+0x4>
a00078c2:	02000793          	li	a5,32
a00078c6:	00f51463          	bne	a0,a5,a00078ce <qcc74x_clk_get_peripheral_clock+0x4e>
a00078ca:	454d                	li	a0,19
a00078cc:	bf65                	j	a0007884 <qcc74x_clk_get_peripheral_clock+0x4>
a00078ce:	47c5                	li	a5,17
a00078d0:	00f51463          	bne	a0,a5,a00078d8 <qcc74x_clk_get_peripheral_clock+0x58>
a00078d4:	4549                	li	a0,18
a00078d6:	b77d                	j	a0007884 <qcc74x_clk_get_peripheral_clock+0x4>
a00078d8:	47b9                	li	a5,14
a00078da:	00f51463          	bne	a0,a5,a00078e2 <qcc74x_clk_get_peripheral_clock+0x62>
a00078de:	4545                	li	a0,17
a00078e0:	b755                	j	a0007884 <qcc74x_clk_get_peripheral_clock+0x4>
a00078e2:	02400793          	li	a5,36
a00078e6:	00f51463          	bne	a0,a5,a00078ee <qcc74x_clk_get_peripheral_clock+0x6e>
a00078ea:	4515                	li	a0,5
a00078ec:	bf61                	j	a0007884 <qcc74x_clk_get_peripheral_clock+0x4>
a00078ee:	47a5                	li	a5,9
a00078f0:	00f51463          	bne	a0,a5,a00078f8 <qcc74x_clk_get_peripheral_clock+0x78>
a00078f4:	4531                	li	a0,12
a00078f6:	b779                	j	a0007884 <qcc74x_clk_get_peripheral_clock+0x4>
a00078f8:	47d1                	li	a5,20
a00078fa:	00f51463          	bne	a0,a5,a0007902 <qcc74x_clk_get_peripheral_clock+0x82>
a00078fe:	4551                	li	a0,20
a0007900:	b751                	j	a0007884 <qcc74x_clk_get_peripheral_clock+0x4>
a0007902:	4501                	li	a0,0
a0007904:	8082                	ret

a0007906 <qcc74x_sys_reset_por>:
a0007906:	1141                	addi	sp,sp,-16
a0007908:	c606                	sw	ra,12(sp)
a000790a:	200107b7          	lui	a5,0x20010
a000790e:	4711                	li	a4,4
a0007910:	5ae7a423          	sw	a4,1448(a5) # 200105a8 <remain_wifi_ram+0x1fff05a8>
a0007914:	bf1ba737          	lui	a4,0xbf1ba
a0007918:	55e70713          	addi	a4,a4,1374 # bf1ba55e <__psram_limit+0x16dba55e>
a000791c:	5ae7a623          	sw	a4,1452(a5)
a0007920:	30047073          	csrci	mstatus,8
a0007924:	4511                	li	a0,4
a0007926:	c2fb9097          	auipc	ra,0xc2fb9
a000792a:	21e080e7          	jalr	542(ra) # 62fc0b44 <GLB_AHB_MCU_Software_Reset>
a000792e:	4521                	li	a0,8
a0007930:	c2fb9097          	auipc	ra,0xc2fb9
a0007934:	214080e7          	jalr	532(ra) # 62fc0b44 <GLB_AHB_MCU_Software_Reset>
a0007938:	4525                	li	a0,9
a000793a:	c2fb9097          	auipc	ra,0xc2fb9
a000793e:	20a080e7          	jalr	522(ra) # 62fc0b44 <GLB_AHB_MCU_Software_Reset>
a0007942:	4529                	li	a0,10
a0007944:	c2fb9097          	auipc	ra,0xc2fb9
a0007948:	200080e7          	jalr	512(ra) # 62fc0b44 <GLB_AHB_MCU_Software_Reset>
a000794c:	452d                	li	a0,11
a000794e:	c2fb9097          	auipc	ra,0xc2fb9
a0007952:	1f6080e7          	jalr	502(ra) # 62fc0b44 <GLB_AHB_MCU_Software_Reset>
a0007956:	4529                	li	a0,10
a0007958:	c2fb9097          	auipc	ra,0xc2fb9
a000795c:	748080e7          	jalr	1864(ra) # 62fc10a0 <arch_delay_ms>
a0007960:	c2fb9097          	auipc	ra,0xc2fb9
a0007964:	1f8080e7          	jalr	504(ra) # 62fc0b58 <GLB_SW_POR_Reset>
a0007968:	a001                	j	a0007968 <qcc74x_sys_reset_por+0x62>

a000796a <qcc74x_show_log>:
a000796a:	1141                	addi	sp,sp,-16
a000796c:	c422                	sw	s0,8(sp)
a000796e:	a0009437          	lui	s0,0xa0009
a0007972:	cc840513          	addi	a0,s0,-824 # a0008cc8 <__psram_limit+0xf7c08cc8>
a0007976:	c606                	sw	ra,12(sp)
a0007978:	99cfe0ef          	jal	ra,a0005b14 <printf>
a000797c:	cc840513          	addi	a0,s0,-824
a0007980:	994fe0ef          	jal	ra,a0005b14 <printf>
a0007984:	4422                	lw	s0,8(sp)
a0007986:	40b2                	lw	ra,12(sp)
a0007988:	a0009637          	lui	a2,0xa0009
a000798c:	a00095b7          	lui	a1,0xa0009
a0007990:	a0009537          	lui	a0,0xa0009
a0007994:	b7060613          	addi	a2,a2,-1168 # a0008b70 <__psram_limit+0xf7c08b70>
a0007998:	b7c58593          	addi	a1,a1,-1156 # a0008b7c <__psram_limit+0xf7c08b7c>
a000799c:	b8850513          	addi	a0,a0,-1144 # a0008b88 <__psram_limit+0xf7c08b88>
a00079a0:	0141                	addi	sp,sp,16
a00079a2:	972fe06f          	j	a0005b14 <printf>

a00079a6 <qcc74x_sys_version>:
a00079a6:	411c                	lw	a5,0(a0)
a00079a8:	872a                	mv	a4,a0
a00079aa:	e791                	bnez	a5,a00079b6 <qcc74x_sys_version+0x10>
a00079ac:	a00087b7          	lui	a5,0xa0008
a00079b0:	dc878793          	addi	a5,a5,-568 # a0007dc8 <__psram_limit+0xf7c07dc8>
a00079b4:	c11c                	sw	a5,0(a0)
a00079b6:	431c                	lw	a5,0(a4)
a00079b8:	a00086b7          	lui	a3,0xa0008
a00079bc:	dd468693          	addi	a3,a3,-556 # a0007dd4 <__psram_limit+0xf7c07dd4>
a00079c0:	4501                	li	a0,0
a00079c2:	00d78563          	beq	a5,a3,a00079cc <qcc74x_sys_version+0x26>
a00079c6:	5847c50b          	lwia	a0,(a5),4,0
a00079ca:	c31c                	sw	a5,0(a4)
a00079cc:	8082                	ret

a00079ce <qcc74x_show_component_version>:
a00079ce:	a0009537          	lui	a0,0xa0009
a00079d2:	1101                	addi	sp,sp,-32
a00079d4:	b9850513          	addi	a0,a0,-1128 # a0008b98 <__psram_limit+0xf7c08b98>
a00079d8:	ca26                	sw	s1,20(sp)
a00079da:	c84a                	sw	s2,16(sp)
a00079dc:	ce06                	sw	ra,28(sp)
a00079de:	cc22                	sw	s0,24(sp)
a00079e0:	c602                	sw	zero,12(sp)
a00079e2:	a00094b7          	lui	s1,0xa0009
a00079e6:	8fafe0ef          	jal	ra,a0005ae0 <puts>
a00079ea:	a0009937          	lui	s2,0xa0009
a00079ee:	0068                	addi	a0,sp,12
a00079f0:	3f5d                	jal	a00079a6 <qcc74x_sys_version>
a00079f2:	842a                	mv	s0,a0
a00079f4:	e519                	bnez	a0,a0007a02 <qcc74x_show_component_version+0x34>
a00079f6:	40f2                	lw	ra,28(sp)
a00079f8:	4462                	lw	s0,24(sp)
a00079fa:	44d2                	lw	s1,20(sp)
a00079fc:	4942                	lw	s2,16(sp)
a00079fe:	6105                	addi	sp,sp,32
a0007a00:	8082                	ret
a0007a02:	bb848513          	addi	a0,s1,-1096 # a0008bb8 <__psram_limit+0xf7c08bb8>
a0007a06:	8dafe0ef          	jal	ra,a0005ae0 <puts>
a0007a0a:	8522                	mv	a0,s0
a0007a0c:	8d4fe0ef          	jal	ra,a0005ae0 <puts>
a0007a10:	cc890513          	addi	a0,s2,-824 # a0008cc8 <__psram_limit+0xf7c08cc8>
a0007a14:	8ccfe0ef          	jal	ra,a0005ae0 <puts>
a0007a18:	bfd9                	j	a00079ee <qcc74x_show_component_version+0x20>

a0007a1a <qcc74x_show_chipinfo>:
a0007a1a:	7139                	addi	sp,sp,-64
a0007a1c:	0068                	addi	a0,sp,12
a0007a1e:	de06                	sw	ra,60(sp)
a0007a20:	c2fb9097          	auipc	ra,0xc2fb9
a0007a24:	6fe080e7          	jalr	1790(ra) # 62fc111e <qcc74x_efuse_get_device_info>
a0007a28:	a0009537          	lui	a0,0xa0009
a0007a2c:	bc450513          	addi	a0,a0,-1084 # a0008bc4 <__psram_limit+0xf7c08bc4>
a0007a30:	8e4fe0ef          	jal	ra,a0005b14 <printf>
a0007a34:	45d2                	lw	a1,20(sp)
a0007a36:	a0009537          	lui	a0,0xa0009
a0007a3a:	be450513          	addi	a0,a0,-1052 # a0008be4 <__psram_limit+0xf7c08be4>
a0007a3e:	8d6fe0ef          	jal	ra,a0005b14 <printf>
a0007a42:	45e2                	lw	a1,24(sp)
a0007a44:	a0009537          	lui	a0,0xa0009
a0007a48:	bfc50513          	addi	a0,a0,-1028 # a0008bfc <__psram_limit+0xf7c08bfc>
a0007a4c:	8c8fe0ef          	jal	ra,a0005b14 <printf>
a0007a50:	45f2                	lw	a1,28(sp)
a0007a52:	a0009537          	lui	a0,0xa0009
a0007a56:	c1450513          	addi	a0,a0,-1004 # a0008c14 <__psram_limit+0xf7c08c14>
a0007a5a:	8bafe0ef          	jal	ra,a0005b14 <printf>
a0007a5e:	00f14583          	lbu	a1,15(sp)
a0007a62:	a0009537          	lui	a0,0xa0009
a0007a66:	c2c50513          	addi	a0,a0,-980 # a0008c2c <__psram_limit+0xf7c08c2c>
a0007a6a:	8aafe0ef          	jal	ra,a0005b14 <printf>
a0007a6e:	50f2                	lw	ra,60(sp)
a0007a70:	6121                	addi	sp,sp,64
a0007a72:	8082                	ret

a0007a74 <board_init>:
a0007a74:	7119                	addi	sp,sp,-128
a0007a76:	de86                	sw	ra,124(sp)
a0007a78:	dca2                	sw	s0,120(sp)
a0007a7a:	daa6                	sw	s1,116(sp)
a0007a7c:	d8ca                	sw	s2,112(sp)
a0007a7e:	d6ce                	sw	s3,108(sp)
a0007a80:	ca02                	sw	zero,20(sp)
a0007a82:	c2fb9097          	auipc	ra,0xc2fb9
a0007a86:	f58080e7          	jalr	-168(ra) # 62fc09da <qcc74x_irq_save>
a0007a8a:	84aa                	mv	s1,a0
a0007a8c:	c2fb9097          	auipc	ra,0xc2fb9
a0007a90:	e40080e7          	jalr	-448(ra) # 62fc08cc <qcc74x_flash_init>
a0007a94:	892a                	mv	s2,a0
a0007a96:	c2fba097          	auipc	ra,0xc2fba
a0007a9a:	048080e7          	jalr	72(ra) # 62fc1ade <system_clock_init>
a0007a9e:	200007b7          	lui	a5,0x20000
a0007aa2:	58078793          	addi	a5,a5,1408 # 20000580 <remain_wifi_ram+0x1ffe0580>
a0007aa6:	43d8                	lw	a4,4(a5)
a0007aa8:	6685                	lui	a3,0x1
a0007aaa:	6441                	lui	s0,0x10
a0007aac:	cc3a                	sw	a4,24(sp)
a0007aae:	4762                	lw	a4,24(sp)
a0007ab0:	00200637          	lui	a2,0x200
a0007ab4:	4589                	li	a1,2
a0007ab6:	00476713          	ori	a4,a4,4
a0007aba:	cc3a                	sw	a4,24(sp)
a0007abc:	4762                	lw	a4,24(sp)
a0007abe:	4505                	li	a0,1
a0007ac0:	c3d8                	sw	a4,4(a5)
a0007ac2:	43d8                	lw	a4,4(a5)
a0007ac4:	ce3a                	sw	a4,28(sp)
a0007ac6:	4772                	lw	a4,28(sp)
a0007ac8:	00876713          	ori	a4,a4,8
a0007acc:	ce3a                	sw	a4,28(sp)
a0007ace:	4772                	lw	a4,28(sp)
a0007ad0:	01076713          	ori	a4,a4,16
a0007ad4:	ce3a                	sw	a4,28(sp)
a0007ad6:	4772                	lw	a4,28(sp)
a0007ad8:	c3d8                	sw	a4,4(a5)
a0007ada:	43d8                	lw	a4,4(a5)
a0007adc:	d03a                	sw	a4,32(sp)
a0007ade:	5702                	lw	a4,32(sp)
a0007ae0:	8f55                	or	a4,a4,a3
a0007ae2:	d03a                	sw	a4,32(sp)
a0007ae4:	5702                	lw	a4,32(sp)
a0007ae6:	000206b7          	lui	a3,0x20
a0007aea:	c3d8                	sw	a4,4(a5)
a0007aec:	43d8                	lw	a4,4(a5)
a0007aee:	d23a                	sw	a4,36(sp)
a0007af0:	5712                	lw	a4,36(sp)
a0007af2:	8f41                	or	a4,a4,s0
a0007af4:	d23a                	sw	a4,36(sp)
a0007af6:	5712                	lw	a4,36(sp)
a0007af8:	30040413          	addi	s0,s0,768 # 10300 <wifi_ram_max_size+0x8300>
a0007afc:	c3d8                	sw	a4,4(a5)
a0007afe:	43d8                	lw	a4,4(a5)
a0007b00:	d43a                	sw	a4,40(sp)
a0007b02:	5722                	lw	a4,40(sp)
a0007b04:	8f55                	or	a4,a4,a3
a0007b06:	d43a                	sw	a4,40(sp)
a0007b08:	5722                	lw	a4,40(sp)
a0007b0a:	000406b7          	lui	a3,0x40
a0007b0e:	c3d8                	sw	a4,4(a5)
a0007b10:	43d8                	lw	a4,4(a5)
a0007b12:	d63a                	sw	a4,44(sp)
a0007b14:	5732                	lw	a4,44(sp)
a0007b16:	8f55                	or	a4,a4,a3
a0007b18:	d63a                	sw	a4,44(sp)
a0007b1a:	5732                	lw	a4,44(sp)
a0007b1c:	000806b7          	lui	a3,0x80
a0007b20:	c3d8                	sw	a4,4(a5)
a0007b22:	43d8                	lw	a4,4(a5)
a0007b24:	d83a                	sw	a4,48(sp)
a0007b26:	5742                	lw	a4,48(sp)
a0007b28:	8f55                	or	a4,a4,a3
a0007b2a:	d83a                	sw	a4,48(sp)
a0007b2c:	5742                	lw	a4,48(sp)
a0007b2e:	001006b7          	lui	a3,0x100
a0007b32:	c3d8                	sw	a4,4(a5)
a0007b34:	43d8                	lw	a4,4(a5)
a0007b36:	da3a                	sw	a4,52(sp)
a0007b38:	5752                	lw	a4,52(sp)
a0007b3a:	8f55                	or	a4,a4,a3
a0007b3c:	da3a                	sw	a4,52(sp)
a0007b3e:	5752                	lw	a4,52(sp)
a0007b40:	c3d8                	sw	a4,4(a5)
a0007b42:	43d8                	lw	a4,4(a5)
a0007b44:	dc3a                	sw	a4,56(sp)
a0007b46:	56e2                	lw	a3,56(sp)
a0007b48:	8ed1                	or	a3,a3,a2
a0007b4a:	dc36                	sw	a3,56(sp)
a0007b4c:	5762                	lw	a4,56(sp)
a0007b4e:	c3d8                	sw	a4,4(a5)
a0007b50:	43d8                	lw	a4,4(a5)
a0007b52:	de3a                	sw	a4,60(sp)
a0007b54:	56f2                	lw	a3,60(sp)
a0007b56:	00400737          	lui	a4,0x400
a0007b5a:	8ed9                	or	a3,a3,a4
a0007b5c:	de36                	sw	a3,60(sp)
a0007b5e:	5772                	lw	a4,60(sp)
a0007b60:	c3d8                	sw	a4,4(a5)
a0007b62:	43d8                	lw	a4,4(a5)
a0007b64:	c0ba                	sw	a4,64(sp)
a0007b66:	4686                	lw	a3,64(sp)
a0007b68:	08000737          	lui	a4,0x8000
a0007b6c:	8ed9                	or	a3,a3,a4
a0007b6e:	c0b6                	sw	a3,64(sp)
a0007b70:	4706                	lw	a4,64(sp)
a0007b72:	c3d8                	sw	a4,4(a5)
a0007b74:	43d8                	lw	a4,4(a5)
a0007b76:	c2ba                	sw	a4,68(sp)
a0007b78:	4696                	lw	a3,68(sp)
a0007b7a:	6709                	lui	a4,0x2
a0007b7c:	8ed9                	or	a3,a3,a4
a0007b7e:	c2b6                	sw	a3,68(sp)
a0007b80:	4716                	lw	a4,68(sp)
a0007b82:	c3d8                	sw	a4,4(a5)
a0007b84:	43d8                	lw	a4,4(a5)
a0007b86:	c4ba                	sw	a4,72(sp)
a0007b88:	46a6                	lw	a3,72(sp)
a0007b8a:	04000737          	lui	a4,0x4000
a0007b8e:	8ed9                	or	a3,a3,a4
a0007b90:	c4b6                	sw	a3,72(sp)
a0007b92:	4726                	lw	a4,72(sp)
a0007b94:	008006b7          	lui	a3,0x800
a0007b98:	c3d8                	sw	a4,4(a5)
a0007b9a:	4798                	lw	a4,8(a5)
a0007b9c:	c6ba                	sw	a4,76(sp)
a0007b9e:	4736                	lw	a4,76(sp)
a0007ba0:	8f51                	or	a4,a4,a2
a0007ba2:	c6ba                	sw	a4,76(sp)
a0007ba4:	4736                	lw	a4,76(sp)
a0007ba6:	4601                	li	a2,0
a0007ba8:	c798                	sw	a4,8(a5)
a0007baa:	43d8                	lw	a4,4(a5)
a0007bac:	c8ba                	sw	a4,80(sp)
a0007bae:	4746                	lw	a4,80(sp)
a0007bb0:	8f55                	or	a4,a4,a3
a0007bb2:	c8ba                	sw	a4,80(sp)
a0007bb4:	4746                	lw	a4,80(sp)
a0007bb6:	c3d8                	sw	a4,4(a5)
a0007bb8:	c2fb9097          	auipc	ra,0xc2fb9
a0007bbc:	fdc080e7          	jalr	-36(ra) # 62fc0b94 <GLB_Set_UART_CLK>
a0007bc0:	4601                	li	a2,0
a0007bc2:	4581                	li	a1,0
a0007bc4:	4505                	li	a0,1
a0007bc6:	f8eff0ef          	jal	ra,a0007354 <GLB_Set_SPI_CLK>
a0007bca:	4601                	li	a2,0
a0007bcc:	4581                	li	a1,0
a0007bce:	4505                	li	a0,1
a0007bd0:	fbaff0ef          	jal	ra,a000738a <GLB_Set_DBI_CLK>
a0007bd4:	4601                	li	a2,0
a0007bd6:	4585                	li	a1,1
a0007bd8:	4505                	li	a0,1
a0007bda:	f30ff0ef          	jal	ra,a000730a <GLB_Set_I2C_CLK>
a0007bde:	4605                	li	a2,1
a0007be0:	4585                	li	a1,1
a0007be2:	4505                	li	a0,1
a0007be4:	eb0ff0ef          	jal	ra,a0007294 <GLB_Set_ADC_CLK>
a0007be8:	4505                	li	a0,1
a0007bea:	c2fb9097          	auipc	ra,0xc2fb9
a0007bee:	f82080e7          	jalr	-126(ra) # 62fc0b6c <GLB_Set_DIG_CLK_Sel>
a0007bf2:	04e00613          	li	a2,78
a0007bf6:	4585                	li	a1,1
a0007bf8:	4505                	li	a0,1
a0007bfa:	c2fb9097          	auipc	ra,0xc2fb9
a0007bfe:	f68080e7          	jalr	-152(ra) # 62fc0b62 <GLB_Set_DIG_512K_CLK>
a0007c02:	4501                	li	a0,0
a0007c04:	c2fb9097          	auipc	ra,0xc2fb9
a0007c08:	f86080e7          	jalr	-122(ra) # 62fc0b8a <GLB_Set_PWM1_IO_Sel>
a0007c0c:	464d                	li	a2,19
a0007c0e:	4581                	li	a1,0
a0007c10:	4505                	li	a0,1
a0007c12:	ebcff0ef          	jal	ra,a00072ce <GLB_Set_IR_CLK>
a0007c16:	460d                	li	a2,3
a0007c18:	4585                	li	a1,1
a0007c1a:	4505                	li	a0,1
a0007c1c:	fa4ff0ef          	jal	ra,a00073c0 <GLB_Set_CAM_CLK>
a0007c20:	4505                	li	a0,1
a0007c22:	c2fb9097          	auipc	ra,0xc2fb9
a0007c26:	f5e080e7          	jalr	-162(ra) # 62fc0b80 <GLB_Set_PKA_CLK_Sel>
a0007c2a:	4505                	li	a0,1
a0007c2c:	c2fb9097          	auipc	ra,0xc2fb9
a0007c30:	f72080e7          	jalr	-142(ra) # 62fc0b9e <GLB_Set_USB_CLK_From_WIFIPLL>
a0007c34:	4501                	li	a0,0
a0007c36:	c2fb9097          	auipc	ra,0xc2fb9
a0007c3a:	f72080e7          	jalr	-142(ra) # 62fc0ba8 <GLB_Swap_MCU_SPI_0_MOSI_With_MISO>
a0007c3e:	f73fe0ef          	jal	ra,a0006bb0 <qcc74x_irq_initialize>
a0007c42:	a0008537          	lui	a0,0xa0008
a0007c46:	dd450513          	addi	a0,a0,-556 # a0007dd4 <__psram_limit+0xf7c07dd4>
a0007c4a:	f89fe0ef          	jal	ra,a0006bd2 <qcc74x_device_get_by_name>
a0007c4e:	4609                	li	a2,2
a0007c50:	45d5                	li	a1,21
a0007c52:	c62a                	sw	a0,12(sp)
a0007c54:	e30fe0ef          	jal	ra,a0006284 <qcc74x_gpio_uart_init>
a0007c58:	4532                	lw	a0,12(sp)
a0007c5a:	460d                	li	a2,3
a0007c5c:	45d9                	li	a1,22
a0007c5e:	e26fe0ef          	jal	ra,a0006284 <qcc74x_gpio_uart_init>
a0007c62:	001e87b7          	lui	a5,0x1e8
a0007c66:	48078793          	addi	a5,a5,1152 # 1e8480 <remain_wifi_ram+0x1c8480>
a0007c6a:	a0008537          	lui	a0,0xa0008
a0007c6e:	cabe                	sw	a5,84(sp)
a0007c70:	61450513          	addi	a0,a0,1556 # a0008614 <__psram_limit+0xf7c08614>
a0007c74:	070707b7          	lui	a5,0x7070
a0007c78:	cebe                	sw	a5,92(sp)
a0007c7a:	cca2                	sw	s0,88(sp)
a0007c7c:	f57fe0ef          	jal	ra,a0006bd2 <qcc74x_device_get_by_name>
a0007c80:	62fc3437          	lui	s0,0x62fc3
a0007c84:	55040413          	addi	s0,s0,1360 # 62fc3550 <uart0>
a0007c88:	08cc                	addi	a1,sp,84
a0007c8a:	c008                	sw	a0,0(s0)
a0007c8c:	daffe0ef          	jal	ra,a0006a3a <qcc74x_uart_init>
a0007c90:	4008                	lw	a0,0(s0)
a0007c92:	63030437          	lui	s0,0x63030
a0007c96:	00040413          	mv	s0,s0
a0007c9a:	ea7fd0ef          	jal	ra,a0005b40 <qcc74x_uart_set_console>
a0007c9e:	62fc3537          	lui	a0,0x62fc3
a0007ca2:	55450593          	addi	a1,a0,1364 # 62fc3554 <__HeapBase>
a0007ca6:	8c0d                	sub	s0,s0,a1
a0007ca8:	85a2                	mv	a1,s0
a0007caa:	55450513          	addi	a0,a0,1364
a0007cae:	e9dfd0ef          	jal	ra,a0005b4a <kmem_init>
a0007cb2:	3965                	jal	a000796a <qcc74x_show_log>
a0007cb4:	3b29                	jal	a00079ce <qcc74x_show_component_version>
a0007cb6:	a80007b7          	lui	a5,0xa8000
a0007cba:	a8000737          	lui	a4,0xa8000
a0007cbe:	00078793          	mv	a5,a5
a0007cc2:	00070713          	mv	a4,a4
a0007cc6:	8f99                	sub	a5,a5,a4
a0007cc8:	00f04d63          	bgtz	a5,a0007ce2 <board_init+0x26e>
a0007ccc:	a80007b7          	lui	a5,0xa8000
a0007cd0:	a8000737          	lui	a4,0xa8000
a0007cd4:	00078793          	mv	a5,a5
a0007cd8:	00070713          	mv	a4,a4
a0007cdc:	8f99                	sub	a5,a5,a4
a0007cde:	00f05963          	blez	a5,a0007cf0 <board_init+0x27c>
a0007ce2:	a0009537          	lui	a0,0xa0009
a0007ce6:	c5850513          	addi	a0,a0,-936 # a0008c58 <__psram_limit+0xf7c08c58>
a0007cea:	df7fd0ef          	jal	ra,a0005ae0 <puts>
a0007cee:	a001                	j	a0007cee <board_init+0x27a>
a0007cf0:	8029                	srli	s0,s0,0xa
a0007cf2:	a00099b7          	lui	s3,0xa0009
a0007cf6:	85a2                	mv	a1,s0
a0007cf8:	c9098513          	addi	a0,s3,-880 # a0008c90 <__psram_limit+0xf7c08c90>
a0007cfc:	e19fd0ef          	jal	ra,a0005b14 <printf>
a0007d00:	3b29                	jal	a0007a1a <qcc74x_show_chipinfo>
a0007d02:	00090863          	beqz	s2,a0007d12 <board_init+0x29e>
a0007d06:	a0009537          	lui	a0,0xa0009
a0007d0a:	ccc50513          	addi	a0,a0,-820 # a0008ccc <__psram_limit+0xf7c08ccc>
a0007d0e:	e07fd0ef          	jal	ra,a0005b14 <printf>
a0007d12:	85a2                	mv	a1,s0
a0007d14:	c9098513          	addi	a0,s3,-880
a0007d18:	dfdfd0ef          	jal	ra,a0005b14 <printf>
a0007d1c:	20000437          	lui	s0,0x20000
a0007d20:	10040793          	addi	a5,s0,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a0007d24:	4bec                	lw	a1,84(a5)
a0007d26:	4fb0                	lw	a2,88(a5)
a0007d28:	a0009537          	lui	a0,0xa0009
a0007d2c:	ce450513          	addi	a0,a0,-796 # a0008ce4 <__psram_limit+0xf7c08ce4>
a0007d30:	de5fd0ef          	jal	ra,a0005b14 <printf>
a0007d34:	58040413          	addi	s0,s0,1408
a0007d38:	404c                	lw	a1,4(s0)
a0007d3a:	4410                	lw	a2,8(s0)
a0007d3c:	a0009537          	lui	a0,0xa0009
a0007d40:	d0450513          	addi	a0,a0,-764 # a0008d04 <__psram_limit+0xf7c08d04>
a0007d44:	dd1fd0ef          	jal	ra,a0005b14 <printf>
a0007d48:	0848                	addi	a0,sp,20
a0007d4a:	c2fb9097          	auipc	ra,0xc2fb9
a0007d4e:	200080e7          	jalr	512(ra) # 62fc0f4a <HBN_Get_Xtal_Value>
a0007d52:	200107b7          	lui	a5,0x20010
a0007d56:	8847a783          	lw	a5,-1916(a5) # 2000f884 <remain_wifi_ram+0x1ffef884>
a0007d5a:	45d2                	lw	a1,20(sp)
a0007d5c:	0c37b78b          	extu	a5,a5,3,3
a0007d60:	e7a9                	bnez	a5,a0007daa <board_init+0x336>
a0007d62:	a0009637          	lui	a2,0xa0009
a0007d66:	c5060613          	addi	a2,a2,-944 # a0008c50 <__psram_limit+0xf7c08c50>
a0007d6a:	a0009537          	lui	a0,0xa0009
a0007d6e:	d2450513          	addi	a0,a0,-732 # a0008d24 <__psram_limit+0xf7c08d24>
a0007d72:	da3fd0ef          	jal	ra,a0005b14 <printf>
a0007d76:	fa7fd0ef          	jal	ra,a0005d1c <log_start>
a0007d7a:	8526                	mv	a0,s1
a0007d7c:	c2fb9097          	auipc	ra,0xc2fb9
a0007d80:	c66080e7          	jalr	-922(ra) # 62fc09e2 <qcc74x_irq_restore>
a0007d84:	a0009537          	lui	a0,0xa0009
a0007d88:	d3450513          	addi	a0,a0,-716 # a0008d34 <__psram_limit+0xf7c08d34>
a0007d8c:	d89fd0ef          	jal	ra,a0005b14 <printf>
a0007d90:	a0009537          	lui	a0,0xa0009
a0007d94:	d4850513          	addi	a0,a0,-696 # a0008d48 <__psram_limit+0xf7c08d48>
a0007d98:	d7dfd0ef          	jal	ra,a0005b14 <printf>
a0007d9c:	50f6                	lw	ra,124(sp)
a0007d9e:	5466                	lw	s0,120(sp)
a0007da0:	54d6                	lw	s1,116(sp)
a0007da2:	5946                	lw	s2,112(sp)
a0007da4:	59b6                	lw	s3,108(sp)
a0007da6:	6109                	addi	sp,sp,128
a0007da8:	8082                	ret
a0007daa:	a0009637          	lui	a2,0xa0009
a0007dae:	c4460613          	addi	a2,a2,-956 # a0008c44 <__psram_limit+0xf7c08c44>
a0007db2:	bf65                	j	a0007d6a <board_init+0x2f6>

a0007db4 <strlen>:
a0007db4:	87aa                	mv	a5,a0
a0007db6:	0007c703          	lbu	a4,0(a5)
a0007dba:	0785                	addi	a5,a5,1
a0007dbc:	ff6d                	bnez	a4,a0007db6 <strlen+0x2>
a0007dbe:	40a78533          	sub	a0,a5,a0
a0007dc2:	157d                	addi	a0,a0,-1
a0007dc4:	8082                	ret
	...

a0007dc8 <version_sdk>:
a0007dc8:	8b50 a000                                   P...

a0007dcc <sw_image>:
a0007dcc:	8b10 a000                                   ....

a0007dd0 <compile_time>:
a0007dd0:	8b2c a000                                   ,...

a0007dd4 <__usbh_class_info_end__>:
a0007dd4:	6f697067          	0x6f697067
a0007dd8:	0000                	unimp
a0007dda:	0000                	unimp
a0007ddc:	30697073          	csrci	mcounteren,18
a0007de0:	0000                	unimp
a0007de2:	0000                	unimp
a0007de4:	3269                	jal	a000776e <Clock_Peripheral_Clock_Get+0x24a>
a0007de6:	00003063          	0x3063
a0007dea:	0000                	unimp
a0007dec:	414d                	li	sp,19
a0007dee:	52455453          	0x52455453
a0007df2:	203a                	fld	ft0,392(sp)
a0007df4:	4844                	lw	s1,20(s0)
a0007df6:	3154                	fld	fa3,160(a0)
a0007df8:	2031                	jal	a0007e04 <__usbh_class_info_end__+0x30>
a0007dfa:	50206e6f          	jal	t3,a000e2fc <__etext_final+0x399c>
a0007dfe:	6e69                	lui	t3,0x1a
a0007e00:	3320                	fld	fs0,96(a4)
a0007e02:	7c20                	flw	fs0,120(s0)
a0007e04:	5220                	lw	s0,96(a2)
a0007e06:	4354                	lw	a3,4(a4)
a0007e08:	6f20                	flw	fs0,88(a4)
a0007e0a:	206e                	fld	ft0,216(sp)
a0007e0c:	3031                	jal	a0007618 <Clock_Peripheral_Clock_Get+0xf4>
a0007e0e:	2031312f          	0x2031312f
a0007e12:	207c                	fld	fa5,192(s0)
a0007e14:	20495053          	0x20495053
a0007e18:	31206e6f          	jal	t3,a000e12a <__etext_final+0x37ca>
a0007e1c:	2d32                	fld	fs10,264(sp)
a0007e1e:	3531                	jal	a0007c2a <board_init+0x1b6>
a0007e20:	0a0d                	addi	s4,s4,3
a0007e22:	0000                	unimp
a0007e24:	4844                	lw	s1,20(s0)
a0007e26:	2054                	fld	fa3,128(s0)
a0007e28:	6552                	flw	fa0,20(sp)
a0007e2a:	6461                	lui	s0,0x18
a0007e2c:	4620                	lw	s0,72(a2)
a0007e2e:	6961                	lui	s2,0x18
a0007e30:	656c                	flw	fa1,76(a0)
a0007e32:	0d64                	addi	s1,sp,668
a0007e34:	000a                	c.slli	zero,0x2
a0007e36:	0000                	unimp
a0007e38:	746e6553          	0x746e6553
a0007e3c:	203a                	fld	ft0,392(sp)
a0007e3e:	3a54                	fld	fa3,176(a2)
a0007e40:	6425                	lui	s0,0x9
a0007e42:	4820                	lw	s0,80(s0)
a0007e44:	253a                	fld	fa0,392(sp)
a0007e46:	2064                	fld	fs1,192(s0)
a0007e48:	2040                	fld	fs0,128(s0)
a0007e4a:	3025                	jal	a0007672 <Clock_Peripheral_Clock_Get+0x14e>
a0007e4c:	6432                	flw	fs0,12(sp)
a0007e4e:	253a                	fld	fa0,392(sp)
a0007e50:	3230                	fld	fa2,96(a2)
a0007e52:	3a64                	fld	fs1,240(a2)
a0007e54:	3025                	jal	a000767c <Clock_Peripheral_Clock_Get+0x158>
a0007e56:	6432                	flw	fs0,12(sp)
a0007e58:	0a0d                	addi	s4,s4,3
a0007e5a:	0000                	unimp
a0007e5c:	a120                	fsd	fs0,64(a0)
a0007e5e:	03000007          	vle8ff.v	v0,(zero)
a0007e62:	0001                	nop
a0007e64:	0000                	unimp
a0007e66:	0000                	unimp
a0007e68:	6e66                	flw	ft8,88(sp)
a0007e6a:	0069                	c.nop	26
a0007e6c:	6e66                	flw	ft8,88(sp)
a0007e6e:	2b69                	jal	a0008408 <crc32Tab+0x230>
a0007e70:	0000                	unimp
a0007e72:	0000                	unimp
a0007e74:	616e                	flw	ft2,216(sp)
a0007e76:	006e                	c.slli	zero,0x1b
a0007e78:	6e66                	flw	ft8,88(sp)
a0007e7a:	2d69                	jal	a0008514 <crc32Tab+0x33c>
a0007e7c:	0000                	unimp
a0007e7e:	0000                	unimp
a0007e80:	6c29                	lui	s8,0xa
a0007e82:	756c                	flw	fa1,108(a0)
a0007e84:	286e                	fld	fa6,216(sp)
a0007e86:	0000                	unimp
a0007e88:	6c29                	lui	s8,0xa
a0007e8a:	6e69                	lui	t3,0x1a
a0007e8c:	0028                	addi	a0,sp,8
	...
a0007e96:	3fe0                	fld	fs0,248(a5)
a0007e98:	509f79fb          	0x509f79fb
a0007e9c:	3fd34413          	xori	s0,t1,1021
a0007ea0:	8b60c8b3          	0x8b60c8b3
a0007ea4:	8a28                	sb	a0,2(a2)
a0007ea6:	3fc6                	fld	ft11,112(sp)
a0007ea8:	0000                	unimp
a0007eaa:	0000                	unimp
a0007eac:	0000                	unimp
a0007eae:	3ff8                	fld	fa4,248(a5)
a0007eb0:	4361                	li	t1,24
a0007eb2:	87a7636f          	jal	t1,9ff7df2c <__HeapLimit+0x3cf4df2c>
a0007eb6:	3fd2                	fld	ft11,304(sp)
a0007eb8:	a371                	j	a0008444 <crc32Tab+0x26c>
a0007eba:	0979                	addi	s2,s2,30
a0007ebc:	400a934f          	fnmadd.s	ft6,fs5,ft0,fs0,rtz
a0007ec0:	5516                	lw	a0,100(sp)
a0007ec2:	bbb5                	j	a0007c3e <board_init+0x1ca>
a0007ec4:	6bb1                	lui	s7,0xc
a0007ec6:	4002                	0x4002
a0007ec8:	fefa39ef          	jal	s3,9ffabeb6 <__HeapLimit+0x3cf7beb6>
a0007ecc:	2e42                	fld	ft8,16(sp)
a0007ece:	3fe6                	fld	ft11,120(sp)
a0007ed0:	0000                	unimp
a0007ed2:	0000                	unimp
a0007ed4:	0000                	unimp
a0007ed6:	402c                	lw	a1,64(s0)
a0007ed8:	0000                	unimp
a0007eda:	0000                	unimp
a0007edc:	0000                	unimp
a0007ede:	4024                	lw	s1,64(s0)
a0007ee0:	0000                	unimp
a0007ee2:	0000                	unimp
a0007ee4:	0000                	unimp
a0007ee6:	4018                	lw	a4,0(s0)
a0007ee8:	0000                	unimp
a0007eea:	0000                	unimp
a0007eec:	0000                	unimp
a0007eee:	4000                	lw	s0,0(s0)
a0007ef0:	0000                	unimp
a0007ef2:	0000                	unimp
a0007ef4:	0000                	unimp
a0007ef6:	3ff0                	fld	fa2,248(a5)
a0007ef8:	ffffffff          	0xffffffff
a0007efc:	ffefffff          	0xffefffff
a0007f00:	ffffffff          	0xffffffff
a0007f04:	7fefffff          	0x7fefffff
a0007f08:	0000                	unimp
a0007f0a:	0000                	unimp
a0007f0c:	cd65                	beqz	a0,a0008004 <powers_of_10+0xec>
a0007f0e:	41cd                	li	gp,19
a0007f10:	0000                	unimp
a0007f12:	0000                	unimp
a0007f14:	cd65                	beqz	a0,a000800c <powers_of_10+0xf4>
a0007f16:	c1cd                	beqz	a1,a0007fb8 <powers_of_10+0xa0>

a0007f18 <powers_of_10>:
a0007f18:	0000 0000 0000 3ff0 0000 0000 0000 4024     .......?......$@
a0007f28:	0000 0000 0000 4059 0000 0000 4000 408f     ......Y@.....@.@
a0007f38:	0000 0000 8800 40c3 0000 0000 6a00 40f8     .......@.....j.@
a0007f48:	0000 0000 8480 412e 0000 0000 12d0 4163     .......A......cA
a0007f58:	0000 0000 d784 4197 0000 0000 cd65 41cd     .......A....e..A
a0007f68:	0000 2000 a05f 4202 0000 e800 4876 4237     ... _..B....vH7B
a0007f78:	0000 a200 1a94 426d 0000 e540 309c 42a2     ......mB..@..0.B
a0007f88:	0000 1e90 bcc4 42d6 0000 2634 6bf5 430c     .......B..4&.k.C
a0007f98:	8000 37e0 c379 4341 a000 85d8 3457 4376     ...7y.AC....W4vC
a0007fa8:	6c74 6673 615f 6464 705f 6f6f 3a6c 4d20     tlsf_add_pool: M
a0007fb8:	6d65 726f 2079 756d 7473 6220 2065 6c61     emory must be al
a0007fc8:	6769 656e 2064 7962 2520 2075 7962 6574     igned by %u byte
a0007fd8:	2e73 000a 6c74 6673 615f 6464 705f 6f6f     s...tlsf_add_poo
a0007fe8:	3a6c 4d20 6d65 726f 2079 6973 657a 6d20     l: Memory size m
a0007ff8:	7375 2074 6562 6220 7465 6577 6e65 2520     ust be between %
a0008008:	2075 6e61 2064 7525 6220 7479 7365 0a2e     u and %u bytes..
a0008018:	0000 0000 6c74 6673 635f 6572 7461 3a65     ....tlsf_create:
a0008028:	4d20 6d65 726f 2079 756d 7473 6220 2065      Memory must be 
a0008038:	6c61 6769 656e 2064 6f74 2520 2075 7962     aligned to %u by
a0008048:	6574 2e73 000a 0000 0a0d 6863 6365 206b     tes.......check 
a0008058:	7562 6c69 5f64 6469 7720 7469 2068 7260     build_id with `r
a0008068:	7369 7663 3436 752d 6b6e 6f6e 6e77 652d     iscv64-unknown-e
a0008078:	666c 722d 6165 6564 666c 2d20 206e 2e2a     lf-readelf -n *.
a0008088:	6c65 6066 6f20 7475 7570 2074 0a0d 0000     elf` output ....
a0008098:	7562 6c69 5f64 6469 203a 3025 7832 3025     build_id: %02x%0
a00080a8:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a00080b8:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a00080c8:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a00080d8:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a00080e8:	7832 3025 7832 3025 7832 0a0d 0000 0000     2x%02x%02x......
a00080f8:	7270 6465 6665 6e69 6465 0000 0a0d 2b2d     predefined....-+
a0008108:	2b2d 2b2d 202d 4351 3743 7834 4320 524f     -+-+- QCC74x COR
a0008118:	4445 4d55 2050 4e45 2044 2d2b 2d2b 2d2b     EDUMP END +-+-+-
a0008128:	0d2b 000a 0a0d 2b2d 2b2d 2b2d 202d 4351     +.....-+-+-+- QC
a0008138:	3743 7834 4320 524f 4445 4d55 2050 3076     C74x COREDUMP v0
a0008148:	302e 312e 2b20 2b2d 2b2d 2b2d 0a0d 0000     .0.1 +-+-+-+....
a0008158:	0a0d 2d2d 2d2d 2d2d 4420 5441 2041 4542     ..------ DATA BE
a0008168:	4947 204e 0000 0000 2d20 2d2d 2d2d 0d2d     GIN .... ------.
a0008178:	000a 0000 0a0d 2d2d 2d2d 2d2d 4520 444e     ......------ END
a0008188:	0020 0000                                    ...

a000818c <g_encodingTable>:
a000818c:	4241 4443 4645 4847 4a49 4c4b 4e4d 504f     ABCDEFGHIJKLMNOP
a000819c:	5251 5453 5655 5857 5a59 6261 6463 6665     QRSTUVWXYZabcdef
a00081ac:	6867 6a69 6c6b 6e6d 706f 7271 7473 7675     ghijklmnopqrstuv
a00081bc:	7877 7a79 3130 3332 3534 3736 3938 2f2b     wxyz0123456789+/

a00081cc <g_modTable>:
a00081cc:	0000 0000 0002 0000 0001 0000               ............

a00081d8 <crc32Tab>:
a00081d8:	0000 0000 3096 7707 612c ee0e 51ba 9909     .....0.w,a...Q..
a00081e8:	c419 076d f48f 706a a535 e963 95a3 9e64     ..m...jp5.c...d.
a00081f8:	8832 0edb b8a4 79dc e91e e0d5 d988 97d2     2......y........
a0008208:	4c2b 09b6 7cbd 7eb1 2d07 e7b8 1d91 90bf     +L...|.~.-......
a0008218:	1064 1db7 20f2 6ab0 7148 f3b9 41de 84be     d.... .jHq...A..
a0008228:	d47d 1ada e4eb 6ddd b551 f4d4 85c7 83d3     }......mQ.......
a0008238:	9856 136c a8c0 646b f97a fd62 c9ec 8a65     V.l...kdz.b...e.
a0008248:	5c4f 1401 6cd9 6306 3d63 fa0f 0df5 8d08     O\...l.cc=......
a0008258:	20c8 3b6e 105e 4c69 41e4 d560 7172 a267     . n;^.iL.A`.rqg.
a0008268:	e4d1 3c03 d447 4b04 85fd d20d b56b a50a     ...<G..K....k...
a0008278:	a8fa 35b5 986c 42b2 c9d6 dbbb f940 acbc     ...5l..B....@...
a0008288:	6ce3 32d8 5c75 45df 0dcf dcd6 3d59 abd1     .l.2u\.E....Y=..
a0008298:	30ac 26d9 003a 51de 5180 c8d7 6116 bfd0     .0.&:..Q.Q...a..
a00082a8:	f4b5 21b4 c423 56b3 9599 cfba a50f b8bd     ...!#..V........
a00082b8:	b89e 2802 8808 5f05 d9b2 c60c e924 b10b     ...(..._....$...
a00082c8:	7c87 2f6f 4c11 5868 1dab c161 2d3d b666     .|o/.LhX..a.=-f.
a00082d8:	4190 76dc 7106 01db 20bc 98d2 102a efd5     .A.v.q... ..*...
a00082e8:	8589 71b1 b51f 06b6 e4a5 9fbf d433 e8b8     ...q........3...
a00082f8:	c9a2 7807 f934 0f00 a88e 9609 9818 e10e     ...x4...........
a0008308:	0dbb 7f6a 3d2d 086d 6c97 9164 5c01 e663     ..j.-=m..ld..\c.
a0008318:	51f4 6b6b 6162 1c6c 30d8 8565 004e f262     .Qkkbal..0e.N.b.
a0008328:	95ed 6c06 a57b 1b01 f4c1 8208 c457 f50f     ...l{.......W...
a0008338:	d9c6 65b0 e950 12b7 b8ea 8bbe 887c fcb9     ...eP.......|...
a0008348:	1ddf 62dd 2d49 15da 7cf3 8cd3 4c65 fbd4     ...bI-...|..eL..
a0008358:	6158 4db2 51ce 3ab5 0074 a3bc 30e2 d4bb     Xa.M.Q.:t....0..
a0008368:	a541 4adf 95d7 3dd8 c46d a4d1 f4fb d3d6     A..J...=m.......
a0008378:	e96a 4369 d9fc 346e 8846 ad67 b8d0 da60     j.iC..n4F.g...`.
a0008388:	2d73 4404 1de5 3303 4c5f aa0a 7cc9 dd0d     s-.D...3_L...|..
a0008398:	713c 5005 41aa 2702 1010 be0b 2086 c90c     <q.P.A.'..... ..
a00083a8:	b525 5768 85b3 206f d409 b966 e49f ce61     %.hW..o ..f...a.
a00083b8:	f90e 5ede c998 29d9 9822 b0d0 a8b4 c7d7     ...^...)".......
a00083c8:	3d17 59b3 0d81 2eb4 5c3b b7bd 6cad c0ba     .=.Y....;\...l..
a00083d8:	8320 edb8 b3b6 9abf e20c 03b6 d29a 74b1      ..............t
a00083e8:	4739 ead5 77af 9dd2 2615 04db 1683 73dc     9G...w...&.....s
a00083f8:	0b12 e363 3b84 9464 6a3e 0d6d 5aa8 7a6a     ..c..;d.>jm..Zjz
a0008408:	cf0b e40e ff9d 9309 ae27 0a00 9eb1 7d07     ........'......}
a0008418:	9344 f00f a3d2 8708 f268 1e01 c2fe 6906     D.......h......i
a0008428:	575d f762 67cb 8065 3671 196c 06e7 6e6b     ]Wb..ge.q6l...kn
a0008438:	1b76 fed4 2be0 89d3 7a5a 10da 4acc 67dd     v....+..Zz...J.g
a0008448:	df6f f9b9 eff9 8ebe be43 17b7 8ed5 60b0     o.......C......`
a0008458:	a3e8 d6d6 937e a1d1 c2c4 38d8 f252 4fdf     ....~......8R..O
a0008468:	67f1 d1bb 5767 a6bc 06dd 3fb5 364b 48b2     .g..gW.....?K6.H
a0008478:	2bda d80d 1b4c af0a 4af6 3603 7a60 4104     .+..L....J.6`z.A
a0008488:	efc3 df60 df55 a867 8eef 316e be79 4669     ..`.U.g...n1y.iF
a0008498:	b38c cb61 831a bc66 d2a0 256f e236 5268     ..a...f...o%6.hR
a00084a8:	7795 cc0c 4703 bb0b 16b9 2202 262f 5505     .w...G....."/&.U
a00084b8:	3bbe c5ba 0b28 b2bd 5a92 2bb4 6a04 5cb3     .;..(....Z.+.j.\
a00084c8:	ffa7 c2d7 cf31 b5d0 9e8b 2cd9 ae1d 5bde     ....1......,...[
a00084d8:	c2b0 9b64 f226 ec63 a39c 756a 930a 026d     ..d.&.c...ju..m.
a00084e8:	06a9 9c09 363f eb0e 6785 7207 5713 0500     ....?6...g.r.W..
a00084f8:	4a82 95bf 7a14 e2b8 2bae 7bb1 1b38 0cb6     .J...z...+.{8...
a0008508:	8e9b 92d2 be0d e5d5 efb7 7cdc df21 0bdb     ...........|!...
a0008518:	d2d4 86d3 e242 f1d4 b3f8 68dd 836e 1fda     ....B......hn...
a0008528:	16cd 81be 265b f6b9 77e1 6fb0 4777 18b7     ....[&...w.owG..
a0008538:	5ae6 8808 6a70 ff0f 3bca 6606 0b5c 1101     .Z..pj...;.f\...
a0008548:	9eff 8f65 ae69 f862 ffd3 616b cf45 166c     ..e.i.b...kaE.l.
a0008558:	e278 a00a d2ee d70d 8354 4e04 b3c2 3903     x.......T..N...9
a0008568:	2661 a767 16f7 d060 474d 4969 77db 3e6e     a&g...`.MGiI.wn>
a0008578:	6a4a aed1 5adc d9d6 0b66 40df 3bf0 37d8     Jj...Z..f..@.;.7
a0008588:	ae53 a9bc 9ec5 debb cf7f 47b2 ffe9 30b5     S..........G...0
a0008598:	f21c bdbd c28a caba 9330 53b3 a3a6 24b4     ........0..S...$
a00085a8:	3605 bad0 0693 cdd7 5729 54de 67bf 23d9     .6......)W.T.g.#
a00085b8:	7a2e b366 4ab8 c461 1b02 5d68 2b94 2a6f     .zf..Ja...h].+o*
a00085c8:	be37 b40b 8ea1 c30c df1b 5a05 ef8d 2d02     7..........Z...-

a00085d8 <hex_asc_upper>:
a00085d8:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
a00085e8:	0000 0000 7269 2071 253a 2064 6e75 6572     ....irq :%d unre
a00085f8:	6967 7473 7265 6465 0a0d 0000 6461 0063     gistered....adc.
a0008608:	6164 0063 6665 635f 7274 006c 6175 7472     dac.ef_ctrl.uart
a0008618:	0030 0000 6175 7472 0031 0000 7770 5f6d     0...uart1...pwm_
a0008628:	3276 305f 0000 0000 6d64 3061 635f 3068     v2_0....dma0_ch0
a0008638:	0000 0000 6d64 3061 635f 3168 0000 0000     ....dma0_ch1....
a0008648:	6d64 3061 635f 3268 0000 0000 6d64 3061     dma0_ch2....dma0
a0008658:	635f 3368 0000 0000 3269 3163 0000 0000     _ch3....i2c1....
a0008668:	3269 3073 0000 0000 6974 656d 3072 0000     i2s0....timer0..
a0008678:	6974 656d 3172 0000 7472 0063 6561 0073     timer1..rtc.aes.
a0008688:	6873 0061 7274 676e 0000 0000 6b70 0061     sha.trng....pka.
a0008698:	6d65 6361 0030 0000 6177 6374 6468 676f     emac0...watchdog
a00086a8:	0000 0000 6b63 0073 6a6d 6570 0067 0000     ....cks.mjpeg...
a00086b8:	7269 7872 0000 0000 6163 306d 0000 0000     irrx....cam0....
a00086c8:	6163 316d 0000 0000 7561 6461 0063 0000     cam1....auadc...
a00086d8:	7561 6164 0063 0000 6473 6f69 0032 0000     audac...sdio2...
a00086e8:	6473 0068 6264 0069 6c70 6d66 645f 616d     sdh.dbi.plfm_dma
a00086f8:	635f 3068 0000 0000 6c70 6d66 645f 616d     _ch0....plfm_dma
a0008708:	635f 3168 0000 0000 6c70 6d66 645f 616d     _ch1....plfm_dma
a0008718:	635f 3268 0000 0000 6c70 6d66 645f 616d     _ch2....plfm_dma
a0008728:	635f 3368 0000 0000 6c70 6d66 645f 616d     _ch3....plfm_dma
a0008738:	635f 3468 0000 0000 6f77 0000 7375 5f62     _ch4....wo..usb_
a0008748:	3276 0000 6e49 7473 7572 7463 6f69 206e     v2..Instruction 
a0008758:	6461 7264 7365 2073 696d 6173 696c 6e67     address misalign
a0008768:	6465 0000 6e49 7473 7572 7463 6f69 206e     ed..Instruction 
a0008778:	6361 6563 7373 6620 7561 746c 0000 0000     access fault....
a0008788:	6c49 656c 6167 206c 6e69 7473 7572 7463     Illegal instruct
a0008798:	6f69 006e 7242 6165 706b 696f 746e 0000     ion.Breakpoint..
a00087a8:	6f4c 6461 6120 6464 6572 7373 6d20 7369     Load address mis
a00087b8:	6c61 6769 656e 0064 6f4c 6461 6120 6363     aligned.Load acc
a00087c8:	7365 2073 6166 6c75 0074 0000 7453 726f     ess fault...Stor
a00087d8:	2f65 4d41 204f 6461 7264 7365 2073 696d     e/AMO address mi
a00087e8:	6173 696c 6e67 6465 0000 0000 7453 726f     saligned....Stor
a00087f8:	2f65 4d41 204f 6361 6563 7373 6620 7561     e/AMO access fau
a0008808:	746c 0000 6e45 6976 6f72 6d6e 6e65 2074     lt..Environment 
a0008818:	6163 6c6c 6620 6f72 206d 2d55 6f6d 6564     call from U-mode
a0008828:	0000 0000 6e45 6976 6f72 6d6e 6e65 2074     ....Environment 
a0008838:	6163 6c6c 6620 6f72 206d 2d53 6f6d 6564     call from S-mode
a0008848:	0000 0000 5352 4456 0000 0000 6e45 6976     ....RSVD....Envi
a0008858:	6f72 6d6e 6e65 2074 6163 6c6c 6620 6f72     ronment call fro
a0008868:	206d 2d4d 6f6d 6564 0000 0000 6e49 7473     m M-mode....Inst
a0008878:	7572 7463 6f69 206e 6170 6567 6620 7561     ruction page fau
a0008888:	746c 0000 6f4c 6461 7020 6761 2065 6166     lt..Load page fa
a0008898:	6c75 0074 7453 726f 2f65 4d41 204f 6170     ult.Store/AMO pa
a00088a8:	6567 6620 7561 746c 0000 0000 7865 6563     ge fault....exce
a00088b8:	7470 6f69 5f6e 6e65 7274 0d79 000a 0000     ption_entry.....
a00088c8:	636d 7561 6573 253d 3830 0d78 000a 0000     mcause=%08x.....
a00088d8:	656d 6370 253a 3830 0d78 000a 746d 6176     mepc:%08x...mtva
a00088e8:	3a6c 3025 7838 0a0d 0000 0000 7325 0a0d     l:%08x......%s..
a00088f8:	0000 0000 874c a000 876c a000 8788 a000     ....L...l.......
a0008908:	879c a000 87a8 a000 87c0 a000 87d4 a000     ................
a0008918:	87f4 a000 880c a000 882c a000 884c a000     ........,...L...
a0008928:	8854 a000 8874 a000 888c a000 884c a000     T...t.......L...
a0008938:	889c a000                                   ....

a000893c <CSWTCH.86>:
a000893c:	0000 0000 3600 016e 4800 01e8 f000 0249     .....6n..H....I.
a000894c:	5a00 0262 ba80 018c 4800 01e8 4651 344e     .Zb......H..QFN4
a000895c:	0030 0000 4651 344e 4d30 0000 4651 354e     0...QFN40M..QFN5
a000896c:	0036 0000 5245 4f52 0052 0000 4f4e 0000     6...ERROR...NO..
a000897c:	4d32 0042 4d34 0042 4d38 0042 4257 345f     2MB.4MB.8MB.WB_4
a000898c:	424d 0000 4257 385f 424d 0000 4257 315f     MB..WB_8MB..WB_1
a000899c:	4d36 0042 5353 0000 5425 2b54 0000 0000     6MB.SS..%TT+....
a00089ac:	5325 0053 5454 0000 4625 0046 4646 0000     %SS.TT..%FF.FF..
a00089bc:	646c 316f 0035 0000 7069 6174 0074 0000     ldo15...iptat...
a00089cc:	6369 0078 6364 6364 745f 6972 006d 0000     icx.dcdc_trim...
a00089dc:	646c 316f 5f38 6573 006c 0000 646c 316f     ldo18_sel...ldo1
a00089ec:	5f38 7274 6d69 0000 646c 336f 5f33 7274     8_trim..ldo33_tr
a00089fc:	6d69 0000 646c 316f 5f31 6974 6d72 0000     im..ldo11_tirm..
a0008a0c:	6372 3233 006d 0000 7068 705f 666f 7366     rc32m...hp_poffs
a0008a1c:	7465 0030 7068 705f 666f 7366 7465 0031     et0.hp_poffset1.
a0008a2c:	7068 705f 666f 7366 7465 0032 706c 705f     hp_poffset2.lp_p
a0008a3c:	666f 7366 7465 0030 706c 705f 666f 7366     offset0.lp_poffs
a0008a4c:	7465 0031 706c 705f 666f 7366 7465 0032     et1.lp_poffset2.
a0008a5c:	7a62 705f 666f 7366 7465 0030 7a62 705f     bz_poffset0.bz_p
a0008a6c:	666f 7366 7465 0031 7a62 705f 666f 7366     offset1.bz_poffs
a0008a7c:	7465 0032 6d74 5f70 706d 0030 6d74 5f70     et2.tmp_mp0.tmp_
a0008a8c:	706d 0031 6d74 5f70 706d 0032 7561 6461     mp1.tmp_mp2.auad
a0008a9c:	5f63 6167 6e69 0000 7561 6461 5f63 666f     c_gain..auadc_of
a0008aac:	7366 7465 0000 0000 7370 6172 5f6d 7274     fset....psram_tr
a0008abc:	6d69 0000 6372 3233 006b 0000 7478 6c61     im..rc32k...xtal
a0008acc:	0030 0000 7478 6c61 0031 0000 7478 6c61     0...xtal1...xtal
a0008adc:	0032 0000 6364 6364 645f 7369 0000 0000     2...dcdc_dis....
a0008aec:	6364 6364 765f 756f 0074 0000 646c 316f     dcdc_vout...ldo1
a0008afc:	5f38 7962 6170 7373 0000 0000 7375 3262     8_bypass....usb2
a0008b0c:	0030 0000 5753 6920 616d 6567 733a 6970     0...SW image:spi
a0008b1c:	695f 746e 715f 6363 3437 6478 006b 0000     _int_qcc74xdk...
a0008b2c:	6f63 706d 6c69 5f65 6974 656d 463a 6265     compile_time:Feb
a0008b3c:	2020 2034 3032 3632 3120 3a39 3433 343a       4 2026 19:34:4
a0008b4c:	0035 0000 6f63 706d 6e6f 6e65 5f74 6576     5...component_ve
a0008b5c:	7372 6f69 5f6e 6473 5f6b 2e32 2e30 3739     rsion_sdk_2.0.97
a0008b6c:	0000 0000 6546 2062 3420 3220 3230 0036     ....Feb  4 2026.
a0008b7c:	3931 333a 3a34 3534 0000 0000 7542 6c69     19:34:45....Buil
a0008b8c:	3a64 7325 252c 0d73 000a 0000 6556 7372     d:%s,%s.....Vers
a0008b9c:	6f69 206e 666f 7520 6573 2064 6f63 706d     ion of used comp
a0008bac:	6e6f 6e65 7374 0d3a 000a 0000 5609 7265     onents:......Ver
a0008bbc:	6973 6e6f 203a 0000 3d3d 3d3d 3d3d 3d3d     sion: ..========
a0008bcc:	6320 6968 2070 6e69 6f66 3d20 3d3d 3d3d      chip info =====
a0008bdc:	3d3d 0d3d 000a 0000 6170 6b63 6761 2065     ===.....package 
a0008bec:	2020 2020 2020 2020 2520 0d73 000a 0000              %s.....
a0008bfc:	6c66 7361 5f68 6e69 6f66 2020 2020 2020     flash_info      
a0008c0c:	2520 0d73 000a 0000 7370 6172 5f6d 6e69      %s.....psram_in
a0008c1c:	6f66 2020 2020 2020 2520 0d73 000a 0000     fo       %s.....
a0008c2c:	6576 7372 6f69 206e 2020 2020 2020 2020     version         
a0008c3c:	4120 6425 0a0d 0000 736f 6963 6c6c 7461      A%d....oscillat
a0008c4c:	726f 0000 7263 7379 6174 006c 7370 6172     or..crystal.psra
a0008c5c:	206d 6164 6174 6120 726c 6165 7964 6520     m data already e
a0008c6c:	6978 7473 2c73 7020 656c 7361 2065 6e65     xists, please en
a0008c7c:	6261 656c 4320 4e4f 4946 5f47 5350 4152     able CONFIG_PSRA
a0008c8c:	0d4d 000a 7964 616e 696d 2063 656d 6f6d     M...dynamic memo
a0008c9c:	7972 6920 696e 2074 7573 6363 7365 2c73     ry init success,
a0008cac:	6f20 7263 6d61 6820 6165 2070 6973 657a      ocram heap size
a0008cbc:	3d20 2520 2064 624b 7479 2065 0a0d 0000      = %d Kbyte ....
a0008ccc:	6c66 7361 2068 6e69 7469 6620 6961 216c     flash init fail!
a0008cdc:	2121 0a0d 0000 0000 6175 7472 2020 6973     !!......uart  si
a0008cec:	3167 253a 3830 2c78 7320 6769 3a32 3025     g1:%08x, sig2:%0
a0008cfc:	7838 0a0d 0000 0000 6c63 636f 206b 6567     8x......clock ge
a0008d0c:	316e 253a 3830 2c78 6720 6e65 3a32 3025     n1:%08x, gen2:%0
a0008d1c:	7838 0a0d 0000 0000 7478 6c61 253a 4864     8x......xtal:%dH
a0008d2c:	287a 7325 0d29 000a 6f62 7261 2064 6e69     z(%s)...board in
a0008d3c:	7469 6420 6e6f 0d65 000a 0000 3d3d 3d3d     it done.....====
a0008d4c:	3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d     ================
a0008d5c:	3d3d 3d3d 3d3d 0d3d 000a 0000 27a4 a000     =======......'..
a0008d6c:	29b6 a000 27a0 a000 29b6 a000 29a6 a000     .)...'...)...)..
a0008d7c:	29b6 a000 27a0 a000 27a8 a000 27a8 a000     .)...'...'...'..
a0008d8c:	29a6 a000 27a0 a000 2784 a000 2784 a000     .)...'...'...'..
a0008d9c:	2784 a000 27b2 a000 2f82 a000 2f82 a000     .'...'.../.../..
a0008dac:	2f9a a000 2f7c a000 2f7c a000 2d94 a000     ./..|/..|/...-..
a0008dbc:	2f9a a000 2f7c a000 2d94 a000 2f7c a000     ./..|/...-..|/..
a0008dcc:	2f9a a000 2f7a a000 2f7a a000 2f7a a000     ./..z/..z/..z/..
a0008ddc:	315c a000                                   \1..

a0008de0 <__clz_tab>:
a0008de0:	0100 0202 0303 0303 0404 0404 0404 0404     ................
a0008df0:	0505 0505 0505 0505 0505 0505 0505 0505     ................
a0008e00:	0606 0606 0606 0606 0606 0606 0606 0606     ................
a0008e10:	0606 0606 0606 0606 0606 0606 0606 0606     ................
a0008e20:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0008e30:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0008e40:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0008e50:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0008e60:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008e70:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008e80:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008e90:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008ea0:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008eb0:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008ec0:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008ed0:	0808 0808 0808 0808 0808 0808 0808 0808     ................

a0008ee0 <__init_array_end>:
a0008ee0:	0400                	addi	s0,sp,512
a0008ee2:	62fc                	flw	fa5,68(a3)
a0008ee4:	fc00                	fsw	fs0,56(s0)
a0008ee6:	0006                	c.slli	zero,0x1
a0008ee8:	0400                	addi	s0,sp,512
a0008eea:	22fc                	fld	fa5,192(a3)
a0008eec:	0000                	unimp
a0008eee:	0000                	unimp
a0008ef0:	0000                	unimp
a0008ef2:	80002303          	lw	t1,-2048(zero) # fffff800 <__psram_limit+0x57bff800>
a0008ef6:	0000                	unimp
a0008ef8:	0000                	unimp
a0008efa:	2801                	jal	a0008f0a <__nocache_ram_load_addr+0x2>
a0008efc:	0000                	unimp
a0008efe:	0000                	unimp
a0008f00:	ffffffff          	0xffffffff
a0008f04:	ffffffff          	0xffffffff

Disassembly of section .itcm_region:

62fc0400 <arch_memcpy>:
62fc0400:	4781                	li	a5,0
62fc0402:	00f61363          	bne	a2,a5,62fc0408 <arch_memcpy+0x8>
62fc0406:	8082                	ret
62fc0408:	80f5c70b          	lrbu	a4,a1,a5,0
62fc040c:	00f5570b          	srb	a4,a0,a5,0
62fc0410:	0785                	addi	a5,a5,1
62fc0412:	bfc5                	j	62fc0402 <arch_memcpy+0x2>

62fc0414 <arch_memcpy4>:
62fc0414:	4781                	li	a5,0
62fc0416:	00f61363          	bne	a2,a5,62fc041c <arch_memcpy4+0x8>
62fc041a:	8082                	ret
62fc041c:	44f5c70b          	lrw	a4,a1,a5,2
62fc0420:	44f5570b          	srw	a4,a0,a5,2
62fc0424:	0785                	addi	a5,a5,1
62fc0426:	bfc5                	j	62fc0416 <arch_memcpy4+0x2>

62fc0428 <arch_memcpy_fast>:
62fc0428:	1141                	addi	sp,sp,-16
62fc042a:	00b567b3          	or	a5,a0,a1
62fc042e:	c422                	sw	s0,8(sp)
62fc0430:	c606                	sw	ra,12(sp)
62fc0432:	c226                	sw	s1,4(sp)
62fc0434:	c04a                	sw	s2,0(sp)
62fc0436:	8b8d                	andi	a5,a5,3
62fc0438:	842a                	mv	s0,a0
62fc043a:	e795                	bnez	a5,62fc0466 <arch_memcpy_fast+0x3e>
62fc043c:	84b2                	mv	s1,a2
62fc043e:	8209                	srli	a2,a2,0x2
62fc0440:	892e                	mv	s2,a1
62fc0442:	3fc9                	jal	62fc0414 <arch_memcpy4>
62fc0444:	ffc4f793          	andi	a5,s1,-4
62fc0448:	00979963          	bne	a5,s1,62fc045a <arch_memcpy_fast+0x32>
62fc044c:	40b2                	lw	ra,12(sp)
62fc044e:	8522                	mv	a0,s0
62fc0450:	4422                	lw	s0,8(sp)
62fc0452:	4492                	lw	s1,4(sp)
62fc0454:	4902                	lw	s2,0(sp)
62fc0456:	0141                	addi	sp,sp,16
62fc0458:	8082                	ret
62fc045a:	80f9470b          	lrbu	a4,s2,a5,0
62fc045e:	00f4570b          	srb	a4,s0,a5,0
62fc0462:	0785                	addi	a5,a5,1
62fc0464:	b7d5                	j	62fc0448 <arch_memcpy_fast+0x20>
62fc0466:	3f69                	jal	62fc0400 <arch_memcpy>
62fc0468:	b7d5                	j	62fc044c <arch_memcpy_fast+0x24>

62fc046a <arch_memcmp>:
62fc046a:	4781                	li	a5,0
62fc046c:	00c79463          	bne	a5,a2,62fc0474 <arch_memcmp+0xa>
62fc0470:	4701                	li	a4,0
62fc0472:	a811                	j	62fc0486 <arch_memcmp+0x1c>
62fc0474:	80f5480b          	lrbu	a6,a0,a5,0
62fc0478:	80f5c68b          	lrbu	a3,a1,a5,0
62fc047c:	0785                	addi	a5,a5,1
62fc047e:	40d80733          	sub	a4,a6,a3
62fc0482:	fed805e3          	beq	a6,a3,62fc046c <arch_memcmp+0x2>
62fc0486:	853a                	mv	a0,a4
62fc0488:	8082                	ret

62fc048a <qcc74x_soft_crc32_ex>:
62fc048a:	edb886b7          	lui	a3,0xedb88
62fc048e:	fff54513          	not	a0,a0
62fc0492:	4701                	li	a4,0
62fc0494:	32068693          	addi	a3,a3,800 # edb88320 <__psram_limit+0x45788320>
62fc0498:	00c71563          	bne	a4,a2,62fc04a2 <qcc74x_soft_crc32_ex+0x18>
62fc049c:	fff54513          	not	a0,a0
62fc04a0:	8082                	ret
62fc04a2:	80e5c78b          	lrbu	a5,a1,a4,0
62fc04a6:	8d3d                	xor	a0,a0,a5
62fc04a8:	47a1                	li	a5,8
62fc04aa:	00157813          	andi	a6,a0,1
62fc04ae:	8105                	srli	a0,a0,0x1
62fc04b0:	00080363          	beqz	a6,62fc04b6 <qcc74x_soft_crc32_ex+0x2c>
62fc04b4:	8d35                	xor	a0,a0,a3
62fc04b6:	17fd                	addi	a5,a5,-1
62fc04b8:	0ff7f793          	zext.b	a5,a5
62fc04bc:	f7fd                	bnez	a5,62fc04aa <qcc74x_soft_crc32_ex+0x20>
62fc04be:	0705                	addi	a4,a4,1
62fc04c0:	bfe1                	j	62fc0498 <qcc74x_soft_crc32_ex+0xe>

62fc04c2 <qcc74x_soft_crc32>:
62fc04c2:	862e                	mv	a2,a1
62fc04c4:	85aa                	mv	a1,a0
62fc04c6:	4501                	li	a0,0
62fc04c8:	b7c9                	j	62fc048a <qcc74x_soft_crc32_ex>

62fc04ca <qcc74x_ef_ctrl_busy>:
62fc04ca:	200577b7          	lui	a5,0x20057
62fc04ce:	8007a503          	lw	a0,-2048(a5) # 20056800 <remain_wifi_ram+0x20036800>
62fc04d2:	0825350b          	extu	a0,a0,2,2
62fc04d6:	8082                	ret

62fc04d8 <qcc74x_ef_ctrl_switch_ahb_clk_r0>:
62fc04d8:	1141                	addi	sp,sp,-16
62fc04da:	c422                	sw	s0,8(sp)
62fc04dc:	00027437          	lui	s0,0x27
62fc04e0:	c226                	sw	s1,4(sp)
62fc04e2:	c04a                	sw	s2,0(sp)
62fc04e4:	c606                	sw	ra,12(sp)
62fc04e6:	892a                	mv	s2,a0
62fc04e8:	10040413          	addi	s0,s0,256 # 27100 <remain_wifi_ram+0x7100>
62fc04ec:	4485                	li	s1,1
62fc04ee:	854a                	mv	a0,s2
62fc04f0:	3fe9                	jal	62fc04ca <qcc74x_ef_ctrl_busy>
62fc04f2:	00951463          	bne	a0,s1,62fc04fa <qcc74x_ef_ctrl_switch_ahb_clk_r0+0x22>
62fc04f6:	147d                	addi	s0,s0,-1
62fc04f8:	f87d                	bnez	s0,62fc04ee <qcc74x_ef_ctrl_switch_ahb_clk_r0+0x16>
62fc04fa:	4422                	lw	s0,8(sp)
62fc04fc:	0024c7b7          	lui	a5,0x24c
62fc0500:	40b2                	lw	ra,12(sp)
62fc0502:	4492                	lw	s1,4(sp)
62fc0504:	4902                	lw	s2,0(sp)
62fc0506:	20057737          	lui	a4,0x20057
62fc050a:	f0078793          	addi	a5,a5,-256 # 24bf00 <remain_wifi_ram+0x22bf00>
62fc050e:	80f72023          	sw	a5,-2048(a4) # 20056800 <remain_wifi_ram+0x20036800>
62fc0512:	4511                	li	a0,4
62fc0514:	0141                	addi	sp,sp,16
62fc0516:	3410006f          	j	62fc1056 <arch_delay_us>

62fc051a <qcc74x_ef_ctrl_load_efuse_r0>:
62fc051a:	1141                	addi	sp,sp,-16
62fc051c:	c606                	sw	ra,12(sp)
62fc051e:	3f6d                	jal	62fc04d8 <qcc74x_ef_ctrl_switch_ahb_clk_r0>
62fc0520:	200567b7          	lui	a5,0x20056
62fc0524:	20078713          	addi	a4,a5,512 # 20056200 <remain_wifi_ram+0x20036200>
62fc0528:	5847d00b          	swia	zero,(a5),4,0
62fc052c:	fee79ee3          	bne	a5,a4,62fc0528 <qcc74x_ef_ctrl_load_efuse_r0+0xe>
62fc0530:	0024c7b7          	lui	a5,0x24c
62fc0534:	f0078693          	addi	a3,a5,-256 # 24bf00 <remain_wifi_ram+0x22bf00>
62fc0538:	20057737          	lui	a4,0x20057
62fc053c:	80d72023          	sw	a3,-2048(a4) # 20056800 <remain_wifi_ram+0x20036800>
62fc0540:	f1078793          	addi	a5,a5,-240
62fc0544:	80f72023          	sw	a5,-2048(a4)
62fc0548:	4529                	li	a0,10
62fc054a:	30d000ef          	jal	ra,62fc1056 <arch_delay_us>
62fc054e:	000277b7          	lui	a5,0x27
62fc0552:	10078793          	addi	a5,a5,256 # 27100 <remain_wifi_ram+0x7100>
62fc0556:	20057637          	lui	a2,0x20057
62fc055a:	4689                	li	a3,2
62fc055c:	80062703          	lw	a4,-2048(a2) # 20056800 <remain_wifi_ram+0x20036800>
62fc0560:	17fd                	addi	a5,a5,-1
62fc0562:	c781                	beqz	a5,62fc056a <qcc74x_ef_ctrl_load_efuse_r0+0x50>
62fc0564:	8b19                	andi	a4,a4,6
62fc0566:	fed71be3          	bne	a4,a3,62fc055c <qcc74x_ef_ctrl_load_efuse_r0+0x42>
62fc056a:	40b2                	lw	ra,12(sp)
62fc056c:	0024c7b7          	lui	a5,0x24c
62fc0570:	20057737          	lui	a4,0x20057
62fc0574:	f0078793          	addi	a5,a5,-256 # 24bf00 <remain_wifi_ram+0x22bf00>
62fc0578:	80f72023          	sw	a5,-2048(a4) # 20056800 <remain_wifi_ram+0x20036800>
62fc057c:	0141                	addi	sp,sp,16
62fc057e:	8082                	ret

62fc0580 <qcc74x_ef_ctrl_read_direct>:
62fc0580:	7179                	addi	sp,sp,-48
62fc0582:	d04a                	sw	s2,32(sp)
62fc0584:	d606                	sw	ra,44(sp)
62fc0586:	d422                	sw	s0,40(sp)
62fc0588:	d226                	sw	s1,36(sp)
62fc058a:	ce4e                	sw	s3,28(sp)
62fc058c:	cc52                	sw	s4,24(sp)
62fc058e:	20000793          	li	a5,512
62fc0592:	892a                	mv	s2,a0
62fc0594:	00b7ea63          	bltu	a5,a1,62fc05a8 <qcc74x_ef_ctrl_read_direct+0x28>
62fc0598:	84b6                	mv	s1,a3
62fc059a:	04d5968b          	addsl	a3,a1,a3,2
62fc059e:	842e                	mv	s0,a1
62fc05a0:	00d7e463          	bltu	a5,a3,62fc05a8 <qcc74x_ef_ctrl_read_direct+0x28>
62fc05a4:	89b2                	mv	s3,a2
62fc05a6:	ee19                	bnez	a2,62fc05c4 <qcc74x_ef_ctrl_read_direct+0x44>
62fc05a8:	c339                	beqz	a4,62fc05ee <qcc74x_ef_ctrl_read_direct+0x6e>
62fc05aa:	2905                	jal	62fc09da <qcc74x_irq_save>
62fc05ac:	842a                	mv	s0,a0
62fc05ae:	854a                	mv	a0,s2
62fc05b0:	37ad                	jal	62fc051a <qcc74x_ef_ctrl_load_efuse_r0>
62fc05b2:	8522                	mv	a0,s0
62fc05b4:	5422                	lw	s0,40(sp)
62fc05b6:	50b2                	lw	ra,44(sp)
62fc05b8:	5492                	lw	s1,36(sp)
62fc05ba:	5902                	lw	s2,32(sp)
62fc05bc:	49f2                	lw	s3,28(sp)
62fc05be:	4a62                	lw	s4,24(sp)
62fc05c0:	6145                	addi	sp,sp,48
62fc05c2:	a105                	j	62fc09e2 <qcc74x_irq_restore>
62fc05c4:	00f59363          	bne	a1,a5,62fc05ca <qcc74x_ef_ctrl_read_direct+0x4a>
62fc05c8:	4481                	li	s1,0
62fc05ca:	c63a                	sw	a4,12(sp)
62fc05cc:	2139                	jal	62fc09da <qcc74x_irq_save>
62fc05ce:	8a2a                	mv	s4,a0
62fc05d0:	c899                	beqz	s1,62fc05e6 <qcc74x_ef_ctrl_read_direct+0x66>
62fc05d2:	4732                	lw	a4,12(sp)
62fc05d4:	854a                	mv	a0,s2
62fc05d6:	cb11                	beqz	a4,62fc05ea <qcc74x_ef_ctrl_read_direct+0x6a>
62fc05d8:	3789                	jal	62fc051a <qcc74x_ef_ctrl_load_efuse_r0>
62fc05da:	200565b7          	lui	a1,0x20056
62fc05de:	8626                	mv	a2,s1
62fc05e0:	95a2                	add	a1,a1,s0
62fc05e2:	854e                	mv	a0,s3
62fc05e4:	3d05                	jal	62fc0414 <arch_memcpy4>
62fc05e6:	8552                	mv	a0,s4
62fc05e8:	b7f1                	j	62fc05b4 <qcc74x_ef_ctrl_read_direct+0x34>
62fc05ea:	35fd                	jal	62fc04d8 <qcc74x_ef_ctrl_switch_ahb_clk_r0>
62fc05ec:	b7fd                	j	62fc05da <qcc74x_ef_ctrl_read_direct+0x5a>
62fc05ee:	50b2                	lw	ra,44(sp)
62fc05f0:	5422                	lw	s0,40(sp)
62fc05f2:	5492                	lw	s1,36(sp)
62fc05f4:	5902                	lw	s2,32(sp)
62fc05f6:	49f2                	lw	s3,28(sp)
62fc05f8:	4a62                	lw	s4,24(sp)
62fc05fa:	6145                	addi	sp,sp,48
62fc05fc:	8082                	ret

62fc05fe <qcc74x_spi_poll_exchange>:
62fc05fe:	00452303          	lw	t1,4(a0)
62fc0602:	478d                	li	a5,3
62fc0604:	00032503          	lw	a0,0(t1)
62fc0608:	0c25350b          	extu	a0,a0,3,2
62fc060c:	0505                	addi	a0,a0,1
62fc060e:	00f51363          	bne	a0,a5,62fc0614 <qcc74x_spi_poll_exchange+0x16>
62fc0612:	4511                	li	a0,4
62fc0614:	08032783          	lw	a5,128(t1)
62fc0618:	02a6d6b3          	divu	a3,a3,a0
62fc061c:	08430e13          	addi	t3,t1,132
62fc0620:	00c7e793          	ori	a5,a5,12
62fc0624:	08f32023          	sw	a5,128(t1)
62fc0628:	08432783          	lw	a5,132(t1)
62fc062c:	03f7f793          	andi	a5,a5,63
62fc0630:	02a7d7b3          	divu	a5,a5,a0
62fc0634:	00f6b733          	sltu	a4,a3,a5
62fc0638:	42e6978b          	mvnez	a5,a3,a4
62fc063c:	0ff7f713          	zext.b	a4,a5
62fc0640:	40f687b3          	sub	a5,a3,a5
62fc0644:	c991                	beqz	a1,62fc0658 <qcc74x_spi_poll_exchange+0x5a>
62fc0646:	4809                	li	a6,2
62fc0648:	4891                	li	a7,4
62fc064a:	4e85                	li	t4,1
62fc064c:	ef11                	bnez	a4,62fc0668 <qcc74x_spi_poll_exchange+0x6a>
62fc064e:	4e89                	li	t4,2
62fc0650:	58fd                	li	a7,-1
62fc0652:	4f11                	li	t5,4
62fc0654:	4f85                	li	t6,1
62fc0656:	a059                	j	62fc06dc <qcc74x_spi_poll_exchange+0xde>
62fc0658:	587d                	li	a6,-1
62fc065a:	db75                	beqz	a4,62fc064e <qcc74x_spi_poll_exchange+0x50>
62fc065c:	177d                	addi	a4,a4,-1
62fc065e:	09032423          	sw	a6,136(t1)
62fc0662:	0ff77713          	zext.b	a4,a4
62fc0666:	bfd5                	j	62fc065a <qcc74x_spi_poll_exchange+0x5c>
62fc0668:	01050e63          	beq	a0,a6,62fc0684 <qcc74x_spi_poll_exchange+0x86>
62fc066c:	01150f63          	beq	a0,a7,62fc068a <qcc74x_spi_poll_exchange+0x8c>
62fc0670:	01d51663          	bne	a0,t4,62fc067c <qcc74x_spi_poll_exchange+0x7e>
62fc0674:	9815cf0b          	lbuia	t5,(a1),1,0
62fc0678:	09e32423          	sw	t5,136(t1)
62fc067c:	177d                	addi	a4,a4,-1
62fc067e:	0ff77713          	zext.b	a4,a4
62fc0682:	b7e9                	j	62fc064c <qcc74x_spi_poll_exchange+0x4e>
62fc0684:	b825cf0b          	lhuia	t5,(a1),2,0
62fc0688:	bfc5                	j	62fc0678 <qcc74x_spi_poll_exchange+0x7a>
62fc068a:	5845cf0b          	lwia	t5,(a1),4,0
62fc068e:	b7ed                	j	62fc0678 <qcc74x_spi_poll_exchange+0x7a>
62fc0690:	000e2703          	lw	a4,0(t3) # 1a000 <wifi_ram_max_size+0x12000>
62fc0694:	3487370b          	extu	a4,a4,13,8
62fc0698:	04a76263          	bltu	a4,a0,62fc06dc <qcc74x_spi_poll_exchange+0xde>
62fc069c:	02a75733          	divu	a4,a4,a0
62fc06a0:	00e6b833          	sltu	a6,a3,a4
62fc06a4:	4306970b          	mvnez	a4,a3,a6
62fc06a8:	0ff77813          	zext.b	a6,a4
62fc06ac:	8e99                	sub	a3,a3,a4
62fc06ae:	08c32703          	lw	a4,140(t1)
62fc06b2:	03d50863          	beq	a0,t4,62fc06e2 <qcc74x_spi_poll_exchange+0xe4>
62fc06b6:	03e50e63          	beq	a0,t5,62fc06f2 <qcc74x_spi_poll_exchange+0xf4>
62fc06ba:	01f51c63          	bne	a0,t6,62fc06d2 <qcc74x_spi_poll_exchange+0xd4>
62fc06be:	c219                	beqz	a2,62fc06c4 <qcc74x_spi_poll_exchange+0xc6>
62fc06c0:	1816570b          	sbia	a4,(a2),1,0
62fc06c4:	c799                	beqz	a5,62fc06d2 <qcc74x_spi_poll_exchange+0xd4>
62fc06c6:	cd95                	beqz	a1,62fc0702 <qcc74x_spi_poll_exchange+0x104>
62fc06c8:	9815c70b          	lbuia	a4,(a1),1,0
62fc06cc:	08e32423          	sw	a4,136(t1)
62fc06d0:	17fd                	addi	a5,a5,-1
62fc06d2:	187d                	addi	a6,a6,-1
62fc06d4:	0ff87813          	zext.b	a6,a6
62fc06d8:	fc081be3          	bnez	a6,62fc06ae <qcc74x_spi_poll_exchange+0xb0>
62fc06dc:	fad5                	bnez	a3,62fc0690 <qcc74x_spi_poll_exchange+0x92>
62fc06de:	4501                	li	a0,0
62fc06e0:	8082                	ret
62fc06e2:	c219                	beqz	a2,62fc06e8 <qcc74x_spi_poll_exchange+0xea>
62fc06e4:	3826570b          	shia	a4,(a2),2,0
62fc06e8:	d7ed                	beqz	a5,62fc06d2 <qcc74x_spi_poll_exchange+0xd4>
62fc06ea:	cd81                	beqz	a1,62fc0702 <qcc74x_spi_poll_exchange+0x104>
62fc06ec:	b825c70b          	lhuia	a4,(a1),2,0
62fc06f0:	bff1                	j	62fc06cc <qcc74x_spi_poll_exchange+0xce>
62fc06f2:	c219                	beqz	a2,62fc06f8 <qcc74x_spi_poll_exchange+0xfa>
62fc06f4:	5846570b          	swia	a4,(a2),4,0
62fc06f8:	dfe9                	beqz	a5,62fc06d2 <qcc74x_spi_poll_exchange+0xd4>
62fc06fa:	c581                	beqz	a1,62fc0702 <qcc74x_spi_poll_exchange+0x104>
62fc06fc:	5845c70b          	lwia	a4,(a1),4,0
62fc0700:	b7f1                	j	62fc06cc <qcc74x_spi_poll_exchange+0xce>
62fc0702:	09132423          	sw	a7,136(t1)
62fc0706:	b7e9                	j	62fc06d0 <qcc74x_spi_poll_exchange+0xd2>

62fc0708 <qcc74x_uart_putchar>:
62fc0708:	1101                	addi	sp,sp,-32
62fc070a:	cc22                	sw	s0,24(sp)
62fc070c:	ca26                	sw	s1,20(sp)
62fc070e:	c84a                	sw	s2,16(sp)
62fc0710:	c64e                	sw	s3,12(sp)
62fc0712:	c452                	sw	s4,8(sp)
62fc0714:	4144                	lw	s1,4(a0)
62fc0716:	ce06                	sw	ra,28(sp)
62fc0718:	842e                	mv	s0,a1
62fc071a:	2685                	jal	62fc0a7a <qcc74x_mtimer_get_time_ms>
62fc071c:	892a                	mv	s2,a0
62fc071e:	89ae                	mv	s3,a1
62fc0720:	06400a13          	li	s4,100
62fc0724:	0844a783          	lw	a5,132(s1)
62fc0728:	03f7f793          	andi	a5,a5,63
62fc072c:	cf91                	beqz	a5,62fc0748 <qcc74x_uart_putchar+0x40>
62fc072e:	0ff47413          	zext.b	s0,s0
62fc0732:	08848423          	sb	s0,136(s1)
62fc0736:	4501                	li	a0,0
62fc0738:	40f2                	lw	ra,28(sp)
62fc073a:	4462                	lw	s0,24(sp)
62fc073c:	44d2                	lw	s1,20(sp)
62fc073e:	4942                	lw	s2,16(sp)
62fc0740:	49b2                	lw	s3,12(sp)
62fc0742:	4a22                	lw	s4,8(sp)
62fc0744:	6105                	addi	sp,sp,32
62fc0746:	8082                	ret
62fc0748:	2e0d                	jal	62fc0a7a <qcc74x_mtimer_get_time_ms>
62fc074a:	c3251577          	sub64	a0,a0,s2
62fc074e:	e199                	bnez	a1,62fc0754 <qcc74x_uart_putchar+0x4c>
62fc0750:	fcaa7ae3          	bgeu	s4,a0,62fc0724 <qcc74x_uart_putchar+0x1c>
62fc0754:	f8c00513          	li	a0,-116
62fc0758:	b7c5                	j	62fc0738 <qcc74x_uart_putchar+0x30>

62fc075a <qcc74x_uart_put>:
62fc075a:	1141                	addi	sp,sp,-16
62fc075c:	c422                	sw	s0,8(sp)
62fc075e:	c226                	sw	s1,4(sp)
62fc0760:	c04a                	sw	s2,0(sp)
62fc0762:	c606                	sw	ra,12(sp)
62fc0764:	892a                	mv	s2,a0
62fc0766:	842e                	mv	s0,a1
62fc0768:	00c584b3          	add	s1,a1,a2
62fc076c:	00941463          	bne	s0,s1,62fc0774 <qcc74x_uart_put+0x1a>
62fc0770:	4501                	li	a0,0
62fc0772:	a039                	j	62fc0780 <qcc74x_uart_put+0x26>
62fc0774:	9814458b          	lbuia	a1,(s0),1,0
62fc0778:	854a                	mv	a0,s2
62fc077a:	3779                	jal	62fc0708 <qcc74x_uart_putchar>
62fc077c:	fe0558e3          	bgez	a0,62fc076c <qcc74x_uart_put+0x12>
62fc0780:	40b2                	lw	ra,12(sp)
62fc0782:	4422                	lw	s0,8(sp)
62fc0784:	4492                	lw	s1,4(sp)
62fc0786:	4902                	lw	s2,0(sp)
62fc0788:	0141                	addi	sp,sp,16
62fc078a:	8082                	ret

62fc078c <flash_get_size_from_jedecid>:
62fc078c:	01051793          	slli	a5,a0,0x10
62fc0790:	00ff0737          	lui	a4,0xff0
62fc0794:	8ff9                	and	a5,a5,a4
62fc0796:	6741                	lui	a4,0x10
62fc0798:	f0070713          	addi	a4,a4,-256 # ff00 <wifi_ram_max_size+0x7f00>
62fc079c:	8f69                	and	a4,a4,a0
62fc079e:	8fd9                	or	a5,a5,a4
62fc07a0:	5d05350b          	extu	a0,a0,23,16
62fc07a4:	953e                	add	a0,a0,a5
62fc07a6:	c519                	beqz	a0,62fc07b4 <flash_get_size_from_jedecid+0x28>
62fc07a8:	897d                	andi	a0,a0,31
62fc07aa:	1535                	addi	a0,a0,-19
62fc07ac:	000807b7          	lui	a5,0x80
62fc07b0:	00a79533          	sll	a0,a5,a0
62fc07b4:	8082                	ret

62fc07b6 <qcc74x_flash_set_cmds.constprop.0>:
62fc07b6:	010107b7          	lui	a5,0x1010
62fc07ba:	1101                	addi	sp,sp,-32
62fc07bc:	10178793          	addi	a5,a5,257 # 1010101 <remain_wifi_ram+0xff0101>
62fc07c0:	c43e                	sw	a5,8(sp)
62fc07c2:	47a5                	li	a5,9
62fc07c4:	00f10623          	sb	a5,12(sp)
62fc07c8:	85c1c783          	lbu	a5,-1956(gp) # 62fc1b74 <g_flash_cfg>
62fc07cc:	ce06                	sw	ra,28(sp)
62fc07ce:	4711                	li	a4,4
62fc07d0:	8bfd                	andi	a5,a5,31
62fc07d2:	00e79763          	bne	a5,a4,62fc07e0 <qcc74x_flash_set_cmds.constprop.0+0x2a>
62fc07d6:	4789                	li	a5,2
62fc07d8:	00f105a3          	sb	a5,11(sp)
62fc07dc:	00f10623          	sb	a5,12(sp)
62fc07e0:	0028                	addi	a0,sp,8
62fc07e2:	4581                	li	a1,0
62fc07e4:	2939                	jal	62fc0c02 <qcc74x_sf_ctrl_cmds_set>
62fc07e6:	40f2                	lw	ra,28(sp)
62fc07e8:	6105                	addi	sp,sp,32
62fc07ea:	8082                	ret

62fc07ec <flash_set_l1c_wrap.constprop.0>:
62fc07ec:	85c1c783          	lbu	a5,-1956(gp) # 62fc1b74 <g_flash_cfg>
62fc07f0:	4711                	li	a4,4
62fc07f2:	85c18513          	addi	a0,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc07f6:	8bfd                	andi	a5,a5,31
62fc07f8:	00e79363          	bne	a5,a4,62fc07fe <flash_set_l1c_wrap.constprop.0+0x12>
62fc07fc:	a995                	j	62fc0c70 <qcc74x_sflash_set_burst_wrap>
62fc07fe:	a991                	j	62fc0c52 <qcc74x_sflash_disable_burst_wrap>

62fc0800 <flash_set_qspi_enable.constprop.0>:
62fc0800:	85c1c783          	lbu	a5,-1956(gp) # 62fc1b74 <g_flash_cfg>
62fc0804:	8bbd                	andi	a5,a5,15
62fc0806:	17f9                	addi	a5,a5,-2
62fc0808:	0fd7f793          	andi	a5,a5,253
62fc080c:	e781                	bnez	a5,62fc0814 <flash_set_qspi_enable.constprop.0+0x14>
62fc080e:	85c18513          	addi	a0,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc0812:	a10d                	j	62fc0c34 <qcc74x_sflash_qspi_enable>
62fc0814:	8082                	ret

62fc0816 <flash2_init.isra.0>:
62fc0816:	7179                	addi	sp,sp,-48
62fc0818:	4785                	li	a5,1
62fc081a:	ca3e                	sw	a5,20(sp)
62fc081c:	cc3e                	sw	a5,24(sp)
62fc081e:	10300793          	li	a5,259
62fc0822:	00f11e23          	sh	a5,28(sp)
62fc0826:	010107b7          	lui	a5,0x1010
62fc082a:	10178793          	addi	a5,a5,257 # 1010101 <remain_wifi_ram+0xff0101>
62fc082e:	c63e                	sw	a5,12(sp)
62fc0830:	47a5                	li	a5,9
62fc0832:	00f10823          	sb	a5,16(sp)
62fc0836:	62fc37b7          	lui	a5,0x62fc3
62fc083a:	e9d7c703          	lbu	a4,-355(a5) # 62fc2e9d <device_info+0x1>
62fc083e:	d606                	sw	ra,44(sp)
62fc0840:	d422                	sw	s0,40(sp)
62fc0842:	d226                	sw	s1,36(sp)
62fc0844:	d04a                	sw	s2,32(sp)
62fc0846:	c402                	sw	zero,8(sp)
62fc0848:	478d                	li	a5,3
62fc084a:	06f71b63          	bne	a4,a5,62fc08c0 <flash2_init.isra.0+0xaa>
62fc084e:	084c                	addi	a1,sp,20
62fc0850:	03400513          	li	a0,52
62fc0854:	2e41                	jal	62fc0be4 <qcc74x_sf_cfg_sbus2_flash_init>
62fc0856:	4505                	li	a0,1
62fc0858:	2e55                	jal	62fc0c0c <qcc74x_sf_ctrl_sbus2_replace>
62fc085a:	4785                	li	a5,1
62fc085c:	4701                	li	a4,0
62fc085e:	80818693          	addi	a3,gp,-2040 # 62fc1b20 <g_flash2_cfg>
62fc0862:	4601                	li	a2,0
62fc0864:	03400593          	li	a1,52
62fc0868:	4501                	li	a0,0
62fc086a:	80818913          	addi	s2,gp,-2040 # 62fc1b20 <g_flash2_cfg>
62fc086e:	2915                	jal	62fc0ca2 <qcc74x_sf_cfg_flash_identify_ext>
62fc0870:	04055863          	bgez	a0,62fc08c0 <flash2_init.isra.0+0xaa>
62fc0874:	47c5                	li	a5,17
62fc0876:	00f91023          	sh	a5,0(s2) # 18000 <wifi_ram_max_size+0x10000>
62fc087a:	002c                	addi	a1,sp,8
62fc087c:	57fd                	li	a5,-1
62fc087e:	80818513          	addi	a0,gp,-2040 # 62fc1b20 <g_flash2_cfg>
62fc0882:	02f90f23          	sb	a5,62(s2)
62fc0886:	2ed9                	jal	62fc0c5c <qcc74x_sflash_get_jedecid>
62fc0888:	47a2                	lw	a5,8(sp)
62fc088a:	01000737          	lui	a4,0x1000
62fc088e:	177d                	addi	a4,a4,-1
62fc0890:	62fc3437          	lui	s0,0x62fc3
62fc0894:	8ff9                	and	a5,a5,a4
62fc0896:	4585                	li	a1,1
62fc0898:	0068                	addi	a0,sp,12
62fc089a:	ec440413          	addi	s0,s0,-316 # 62fc2ec4 <g_jedec_id2>
62fc089e:	c43e                	sw	a5,8(sp)
62fc08a0:	c01c                	sw	a5,0(s0)
62fc08a2:	2685                	jal	62fc0c02 <qcc74x_sf_ctrl_cmds_set>
62fc08a4:	00094583          	lbu	a1,0(s2)
62fc08a8:	4685                	li	a3,1
62fc08aa:	4601                	li	a2,0
62fc08ac:	89bd                	andi	a1,a1,15
62fc08ae:	80818513          	addi	a0,gp,-2040 # 62fc1b20 <g_flash2_cfg>
62fc08b2:	2a39                	jal	62fc09d0 <qcc74x_sflash_xip_read_enable>
62fc08b4:	e511                	bnez	a0,62fc08c0 <flash2_init.isra.0+0xaa>
62fc08b6:	2685                	jal	62fc0c16 <qcc74x_sf_ctrl_sbus2_revoke_replace>
62fc08b8:	4008                	lw	a0,0(s0)
62fc08ba:	3dc9                	jal	62fc078c <flash_get_size_from_jedecid>
62fc08bc:	80a1a223          	sw	a0,-2044(gp) # 62fc1b1c <flash2_size>
62fc08c0:	50b2                	lw	ra,44(sp)
62fc08c2:	5422                	lw	s0,40(sp)
62fc08c4:	5492                	lw	s1,36(sp)
62fc08c6:	5902                	lw	s2,32(sp)
62fc08c8:	6145                	addi	sp,sp,48
62fc08ca:	8082                	ret

62fc08cc <qcc74x_flash_init>:
62fc08cc:	62fc3537          	lui	a0,0x62fc3
62fc08d0:	7139                	addi	sp,sp,-64
62fc08d2:	e9c50513          	addi	a0,a0,-356 # 62fc2e9c <device_info>
62fc08d6:	de06                	sw	ra,60(sp)
62fc08d8:	dc22                	sw	s0,56(sp)
62fc08da:	da26                	sw	s1,52(sp)
62fc08dc:	d64e                	sw	s3,44(sp)
62fc08de:	d452                	sw	s4,40(sp)
62fc08e0:	d84a                	sw	s2,48(sp)
62fc08e2:	d256                	sw	s5,36(sp)
62fc08e4:	ca02                	sw	zero,20(sp)
62fc08e6:	039000ef          	jal	ra,62fc111e <qcc74x_efuse_get_device_info>
62fc08ea:	2be5                	jal	62fc0ee2 <GLB_Get_Flash_Id_Value>
62fc08ec:	62fc3437          	lui	s0,0x62fc3
62fc08f0:	62fc29b7          	lui	s3,0x62fc2
62fc08f4:	ca2a                	sw	a0,20(sp)
62fc08f6:	85c18a13          	addi	s4,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc08fa:	ec040413          	addi	s0,s0,-320 # 62fc2ec0 <g_jedec_id>
62fc08fe:	b1898993          	addi	s3,s3,-1256 # 62fc1b18 <__tcm_code_end__>
62fc0902:	c121                	beqz	a0,62fc0942 <qcc74x_flash_init+0x76>
62fc0904:	4681                	li	a3,0
62fc0906:	4601                	li	a2,0
62fc0908:	85c18593          	addi	a1,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc090c:	299d                	jal	62fc0d82 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>
62fc090e:	892a                	mv	s2,a0
62fc0910:	e90d                	bnez	a0,62fc0942 <qcc74x_flash_init+0x76>
62fc0912:	4552                	lw	a0,20(sp)
62fc0914:	c008                	sw	a0,0(s0)
62fc0916:	00aa06a3          	sb	a0,13(s4)
62fc091a:	c62a                	sw	a0,12(sp)
62fc091c:	3d046097          	auipc	ra,0x3d046
62fc0920:	238080e7          	jalr	568(ra) # a0006b54 <flash_get_clock_delay.constprop.0.isra.0>
62fc0924:	4532                	lw	a0,12(sp)
62fc0926:	359d                	jal	62fc078c <flash_get_size_from_jedecid>
62fc0928:	00a9a023          	sw	a0,0(s3)
62fc092c:	35ed                	jal	62fc0816 <flash2_init.isra.0>
62fc092e:	50f2                	lw	ra,60(sp)
62fc0930:	5462                	lw	s0,56(sp)
62fc0932:	54d2                	lw	s1,52(sp)
62fc0934:	59b2                	lw	s3,44(sp)
62fc0936:	5a22                	lw	s4,40(sp)
62fc0938:	5a92                	lw	s5,36(sp)
62fc093a:	854a                	mv	a0,s2
62fc093c:	5942                	lw	s2,48(sp)
62fc093e:	6121                	addi	sp,sp,64
62fc0940:	8082                	ret
62fc0942:	000109a3          	sb	zero,19(sp)
62fc0946:	cc02                	sw	zero,24(sp)
62fc0948:	ce02                	sw	zero,28(sp)
62fc094a:	2841                	jal	62fc09da <qcc74x_irq_save>
62fc094c:	8aaa                	mv	s5,a0
62fc094e:	01310513          	addi	a0,sp,19
62fc0952:	2e35                	jal	62fc0c8e <qcc74x_xip_sflash_opt_enter>
62fc0954:	4681                	li	a3,0
62fc0956:	4601                	li	a2,0
62fc0958:	086c                	addi	a1,sp,28
62fc095a:	85c18513          	addi	a0,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc095e:	29cd                	jal	62fc0e50 <qcc74x_xip_sflash_state_save>
62fc0960:	082c                	addi	a1,sp,24
62fc0962:	85c18513          	addi	a0,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc0966:	2cdd                	jal	62fc0c5c <qcc74x_sflash_get_jedecid>
62fc0968:	460d                	li	a2,3
62fc096a:	082c                	addi	a1,sp,24
62fc096c:	0848                	addi	a0,sp,20
62fc096e:	3c49                	jal	62fc0400 <arch_memcpy>
62fc0970:	4562                	lw	a0,24(sp)
62fc0972:	010007b7          	lui	a5,0x1000
62fc0976:	17fd                	addi	a5,a5,-1
62fc0978:	8d7d                	and	a0,a0,a5
62fc097a:	4681                	li	a3,0
62fc097c:	4601                	li	a2,0
62fc097e:	85c18593          	addi	a1,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc0982:	cc2a                	sw	a0,24(sp)
62fc0984:	c008                	sw	a0,0(s0)
62fc0986:	2ef5                	jal	62fc0d82 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>
62fc0988:	4762                	lw	a4,24(sp)
62fc098a:	892a                	mv	s2,a0
62fc098c:	e119                	bnez	a0,62fc0992 <qcc74x_flash_init+0xc6>
62fc098e:	00ea06a3          	sb	a4,13(s4)
62fc0992:	001667b7          	lui	a5,0x166
62fc0996:	0ef78793          	addi	a5,a5,239 # 1660ef <remain_wifi_ram+0x1460ef>
62fc099a:	00f71563          	bne	a4,a5,62fc09a4 <qcc74x_flash_init+0xd8>
62fc099e:	4791                	li	a5,4
62fc09a0:	00fa1023          	sh	a5,0(s4)
62fc09a4:	3d09                	jal	62fc07b6 <qcc74x_flash_set_cmds.constprop.0>
62fc09a6:	3da9                	jal	62fc0800 <flash_set_qspi_enable.constprop.0>
62fc09a8:	3591                	jal	62fc07ec <flash_set_l1c_wrap.constprop.0>
62fc09aa:	45f2                	lw	a1,28(sp)
62fc09ac:	4681                	li	a3,0
62fc09ae:	4601                	li	a2,0
62fc09b0:	85c18513          	addi	a0,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc09b4:	24d9                	jal	62fc0c7a <qcc74x_xip_sflash_state_restore>
62fc09b6:	01314503          	lbu	a0,19(sp)
62fc09ba:	2cf9                	jal	62fc0c98 <qcc74x_xip_sflash_opt_exit>
62fc09bc:	8556                	mv	a0,s5
62fc09be:	2015                	jal	62fc09e2 <qcc74x_irq_restore>
62fc09c0:	3d046097          	auipc	ra,0x3d046
62fc09c4:	194080e7          	jalr	404(ra) # a0006b54 <flash_get_clock_delay.constprop.0.isra.0>
62fc09c8:	4008                	lw	a0,0(s0)
62fc09ca:	29fd                	jal	62fc0ec8 <GLB_Set_Flash_Id_Value>
62fc09cc:	4008                	lw	a0,0(s0)
62fc09ce:	bfa1                	j	62fc0926 <qcc74x_flash_init+0x5a>

62fc09d0 <qcc74x_sflash_xip_read_enable>:
62fc09d0:	87b6                	mv	a5,a3
62fc09d2:	02000713          	li	a4,32
62fc09d6:	4681                	li	a3,0
62fc09d8:	ac85                	j	62fc0c48 <qcc74x_sflash_set_xip_cfg>

62fc09da <qcc74x_irq_save>:
62fc09da:	4521                	li	a0,8
62fc09dc:	30053573          	csrrc	a0,mstatus,a0
62fc09e0:	8082                	ret

62fc09e2 <qcc74x_irq_restore>:
62fc09e2:	30051073          	csrw	mstatus,a0
62fc09e6:	8082                	ret

62fc09e8 <qcc74x_mtimer_get_time_us>:
62fc09e8:	7139                	addi	sp,sp,-64
62fc09ea:	de22                	sw	s0,60(sp)
62fc09ec:	c602                	sw	zero,12(sp)
62fc09ee:	e000c7b7          	lui	a5,0xe000c
62fc09f2:	3e800413          	li	s0,1000
62fc09f6:	ff87a603          	lw	a2,-8(a5) # e000bff8 <__psram_limit+0x37c0bff8>
62fc09fa:	ffc7a683          	lw	a3,-4(a5)
62fc09fe:	4f81                	li	t6,0
62fc0a00:	4381                	li	t2,0
62fc0a02:	cc36                	sw	a3,24(sp)
62fc0a04:	ce7e                	sw	t6,28(sp)
62fc0a06:	ff87a603          	lw	a2,-8(a5)
62fc0a0a:	ffc7a683          	lw	a3,-4(a5)
62fc0a0e:	4881                	li	a7,0
62fc0a10:	c832                	sw	a2,16(sp)
62fc0a12:	ca1e                	sw	t2,20(sp)
62fc0a14:	ff87a603          	lw	a2,-8(a5)
62fc0a18:	ffc7a683          	lw	a3,-4(a5)
62fc0a1c:	4e81                	li	t4,0
62fc0a1e:	d032                	sw	a2,32(sp)
62fc0a20:	d246                	sw	a7,36(sp)
62fc0a22:	ff87a603          	lw	a2,-8(a5)
62fc0a26:	ffc7a683          	lw	a3,-4(a5)
62fc0a2a:	d436                	sw	a3,40(sp)
62fc0a2c:	d676                	sw	t4,44(sp)
62fc0a2e:	4732                	lw	a4,12(sp)
62fc0a30:	0705                	addi	a4,a4,1
62fc0a32:	c63a                	sw	a4,12(sp)
62fc0a34:	4732                	lw	a4,12(sp)
62fc0a36:	02870f63          	beq	a4,s0,62fc0a74 <qcc74x_mtimer_get_time_us+0x8c>
62fc0a3a:	4642                	lw	a2,16(sp)
62fc0a3c:	46d2                	lw	a3,20(sp)
62fc0a3e:	5502                	lw	a0,32(sp)
62fc0a40:	5592                	lw	a1,36(sp)
62fc0a42:	fad5eae3          	bltu	a1,a3,62fc09f6 <qcc74x_mtimer_get_time_us+0xe>
62fc0a46:	00b69463          	bne	a3,a1,62fc0a4e <qcc74x_mtimer_get_time_us+0x66>
62fc0a4a:	fac566e3          	bltu	a0,a2,62fc09f6 <qcc74x_mtimer_get_time_us+0xe>
62fc0a4e:	4662                	lw	a2,24(sp)
62fc0a50:	46f2                	lw	a3,28(sp)
62fc0a52:	5522                	lw	a0,40(sp)
62fc0a54:	55b2                	lw	a1,44(sp)
62fc0a56:	fac510e3          	bne	a0,a2,62fc09f6 <qcc74x_mtimer_get_time_us+0xe>
62fc0a5a:	f8d59ee3          	bne	a1,a3,62fc09f6 <qcc74x_mtimer_get_time_us+0xe>
62fc0a5e:	5622                	lw	a2,40(sp)
62fc0a60:	56b2                	lw	a3,44(sp)
62fc0a62:	5702                	lw	a4,32(sp)
62fc0a64:	5792                	lw	a5,36(sp)
62fc0a66:	4501                	li	a0,0
62fc0a68:	85b2                	mv	a1,a2
62fc0a6a:	c0e51577          	add64	a0,a0,a4
62fc0a6e:	5472                	lw	s0,60(sp)
62fc0a70:	6121                	addi	sp,sp,64
62fc0a72:	8082                	ret
62fc0a74:	4501                	li	a0,0
62fc0a76:	4581                	li	a1,0
62fc0a78:	bfdd                	j	62fc0a6e <qcc74x_mtimer_get_time_us+0x86>

62fc0a7a <qcc74x_mtimer_get_time_ms>:
62fc0a7a:	1141                	addi	sp,sp,-16
62fc0a7c:	c606                	sw	ra,12(sp)
62fc0a7e:	37ad                	jal	62fc09e8 <qcc74x_mtimer_get_time_us>
62fc0a80:	3e800613          	li	a2,1000
62fc0a84:	4681                	li	a3,0
62fc0a86:	3d041097          	auipc	ra,0x3d041
62fc0a8a:	97a080e7          	jalr	-1670(ra) # a0001400 <__udivdi3>
62fc0a8e:	40b2                	lw	ra,12(sp)
62fc0a90:	0141                	addi	sp,sp,16
62fc0a92:	8082                	ret

62fc0a94 <qcc74x_mtimer_delay_us>:
62fc0a94:	1141                	addi	sp,sp,-16
62fc0a96:	c422                	sw	s0,8(sp)
62fc0a98:	c24a                	sw	s2,4(sp)
62fc0a9a:	c04e                	sw	s3,0(sp)
62fc0a9c:	c606                	sw	ra,12(sp)
62fc0a9e:	842a                	mv	s0,a0
62fc0aa0:	37a1                	jal	62fc09e8 <qcc74x_mtimer_get_time_us>
62fc0aa2:	892a                	mv	s2,a0
62fc0aa4:	89ae                	mv	s3,a1
62fc0aa6:	3789                	jal	62fc09e8 <qcc74x_mtimer_get_time_us>
62fc0aa8:	c3251577          	sub64	a0,a0,s2
62fc0aac:	e199                	bnez	a1,62fc0ab2 <qcc74x_mtimer_delay_us+0x1e>
62fc0aae:	fe856ce3          	bltu	a0,s0,62fc0aa6 <qcc74x_mtimer_delay_us+0x12>
62fc0ab2:	40b2                	lw	ra,12(sp)
62fc0ab4:	4422                	lw	s0,8(sp)
62fc0ab6:	4912                	lw	s2,4(sp)
62fc0ab8:	4982                	lw	s3,0(sp)
62fc0aba:	0141                	addi	sp,sp,16
62fc0abc:	8082                	ret

62fc0abe <qcc74x_mtimer_delay_ms>:
62fc0abe:	1101                	addi	sp,sp,-32
62fc0ac0:	cc22                	sw	s0,24(sp)
62fc0ac2:	ca26                	sw	s1,20(sp)
62fc0ac4:	842a                	mv	s0,a0
62fc0ac6:	c84a                	sw	s2,16(sp)
62fc0ac8:	c64e                	sw	s3,12(sp)
62fc0aca:	ce06                	sw	ra,28(sp)
62fc0acc:	3f31                	jal	62fc09e8 <qcc74x_mtimer_get_time_us>
62fc0ace:	892a                	mv	s2,a0
62fc0ad0:	3e800513          	li	a0,1000
62fc0ad4:	89ae                	mv	s3,a1
62fc0ad6:	f0a41577          	mulr64	a0,s0,a0
62fc0ada:	84ae                	mv	s1,a1
62fc0adc:	842a                	mv	s0,a0
62fc0ade:	3729                	jal	62fc09e8 <qcc74x_mtimer_get_time_us>
62fc0ae0:	c3251577          	sub64	a0,a0,s2
62fc0ae4:	fe95ede3          	bltu	a1,s1,62fc0ade <qcc74x_mtimer_delay_ms+0x20>
62fc0ae8:	00b49463          	bne	s1,a1,62fc0af0 <qcc74x_mtimer_delay_ms+0x32>
62fc0aec:	fe8569e3          	bltu	a0,s0,62fc0ade <qcc74x_mtimer_delay_ms+0x20>
62fc0af0:	40f2                	lw	ra,28(sp)
62fc0af2:	4462                	lw	s0,24(sp)
62fc0af4:	44d2                	lw	s1,20(sp)
62fc0af6:	4942                	lw	s2,16(sp)
62fc0af8:	49b2                	lw	s3,12(sp)
62fc0afa:	6105                	addi	sp,sp,32
62fc0afc:	8082                	ret

62fc0afe <system_setup_xtal_config.isra.0>:
62fc0afe:	1141                	addi	sp,sp,-16
62fc0b00:	c606                	sw	ra,12(sp)
62fc0b02:	c422                	sw	s0,8(sp)
62fc0b04:	c226                	sw	s1,4(sp)
62fc0b06:	28d1                	jal	62fc0bda <HBN_Get_MCU_XCLK_Sel>
62fc0b08:	84aa                	mv	s1,a0
62fc0b0a:	20d9                	jal	62fc0bd0 <HBN_Get_MCU_Root_CLK_Sel>
62fc0b0c:	842a                	mv	s0,a0
62fc0b0e:	4501                	li	a0,0
62fc0b10:	285d                	jal	62fc0bc6 <HBN_Set_MCU_XCLK_Sel>
62fc0b12:	4501                	li	a0,0
62fc0b14:	2065                	jal	62fc0bbc <HBN_Set_MCU_Root_CLK_Sel>
62fc0b16:	200106b7          	lui	a3,0x20010
62fc0b1a:	8846a783          	lw	a5,-1916(a3) # 2000f884 <remain_wifi_ram+0x1ffef884>
62fc0b1e:	7751                	lui	a4,0xffff4
62fc0b20:	175d                	addi	a4,a4,-9
62fc0b22:	8ff9                	and	a5,a5,a4
62fc0b24:	6721                	lui	a4,0x8
62fc0b26:	8fd9                	or	a5,a5,a4
62fc0b28:	88f6a223          	sw	a5,-1916(a3)
62fc0b2c:	47c1                	li	a5,16
62fc0b2e:	0001                	nop
62fc0b30:	17fd                	addi	a5,a5,-1
62fc0b32:	fff5                	bnez	a5,62fc0b2e <system_setup_xtal_config.isra.0+0x30>
62fc0b34:	8526                	mv	a0,s1
62fc0b36:	2841                	jal	62fc0bc6 <HBN_Set_MCU_XCLK_Sel>
62fc0b38:	8522                	mv	a0,s0
62fc0b3a:	4422                	lw	s0,8(sp)
62fc0b3c:	40b2                	lw	ra,12(sp)
62fc0b3e:	4492                	lw	s1,4(sp)
62fc0b40:	0141                	addi	sp,sp,16
62fc0b42:	a8ad                	j	62fc0bbc <HBN_Set_MCU_Root_CLK_Sel>

62fc0b44 <GLB_AHB_MCU_Software_Reset>:
62fc0b44:	900167b7          	lui	a5,0x90016
62fc0b48:	9647a783          	lw	a5,-1692(a5) # 90015964 <__psram_limit+0xe7c15964>
62fc0b4c:	8782                	jr	a5

62fc0b4e <GLB_Power_On_XTAL_And_PLL_CLK>:
62fc0b4e:	900167b7          	lui	a5,0x90016
62fc0b52:	9cc7a783          	lw	a5,-1588(a5) # 900159cc <__psram_limit+0xe7c159cc>
62fc0b56:	8782                	jr	a5

62fc0b58 <GLB_SW_POR_Reset>:
62fc0b58:	900167b7          	lui	a5,0x90016
62fc0b5c:	9d87a783          	lw	a5,-1576(a5) # 900159d8 <__psram_limit+0xe7c159d8>
62fc0b60:	8782                	jr	a5

62fc0b62 <GLB_Set_DIG_512K_CLK>:
62fc0b62:	900167b7          	lui	a5,0x90016
62fc0b66:	a0c7a783          	lw	a5,-1524(a5) # 90015a0c <__psram_limit+0xe7c15a0c>
62fc0b6a:	8782                	jr	a5

62fc0b6c <GLB_Set_DIG_CLK_Sel>:
62fc0b6c:	900167b7          	lui	a5,0x90016
62fc0b70:	a107a783          	lw	a5,-1520(a5) # 90015a10 <__psram_limit+0xe7c15a10>
62fc0b74:	8782                	jr	a5

62fc0b76 <GLB_Set_MCU_System_CLK>:
62fc0b76:	900167b7          	lui	a5,0x90016
62fc0b7a:	a407a783          	lw	a5,-1472(a5) # 90015a40 <__psram_limit+0xe7c15a40>
62fc0b7e:	8782                	jr	a5

62fc0b80 <GLB_Set_PKA_CLK_Sel>:
62fc0b80:	900167b7          	lui	a5,0x90016
62fc0b84:	a4c7a783          	lw	a5,-1460(a5) # 90015a4c <__psram_limit+0xe7c15a4c>
62fc0b88:	8782                	jr	a5

62fc0b8a <GLB_Set_PWM1_IO_Sel>:
62fc0b8a:	900167b7          	lui	a5,0x90016
62fc0b8e:	a547a783          	lw	a5,-1452(a5) # 90015a54 <__psram_limit+0xe7c15a54>
62fc0b92:	8782                	jr	a5

62fc0b94 <GLB_Set_UART_CLK>:
62fc0b94:	900167b7          	lui	a5,0x90016
62fc0b98:	a847a783          	lw	a5,-1404(a5) # 90015a84 <__psram_limit+0xe7c15a84>
62fc0b9c:	8782                	jr	a5

62fc0b9e <GLB_Set_USB_CLK_From_WIFIPLL>:
62fc0b9e:	900167b7          	lui	a5,0x90016
62fc0ba2:	a887a783          	lw	a5,-1400(a5) # 90015a88 <__psram_limit+0xe7c15a88>
62fc0ba6:	8782                	jr	a5

62fc0ba8 <GLB_Swap_MCU_SPI_0_MOSI_With_MISO>:
62fc0ba8:	900167b7          	lui	a5,0x90016
62fc0bac:	a8c7a783          	lw	a5,-1396(a5) # 90015a8c <__psram_limit+0xe7c15a8c>
62fc0bb0:	8782                	jr	a5

62fc0bb2 <HBN_Get_Xtal_Type>:
62fc0bb2:	900167b7          	lui	a5,0x90016
62fc0bb6:	b8c7a783          	lw	a5,-1140(a5) # 90015b8c <__psram_limit+0xe7c15b8c>
62fc0bba:	8782                	jr	a5

62fc0bbc <HBN_Set_MCU_Root_CLK_Sel>:
62fc0bbc:	900167b7          	lui	a5,0x90016
62fc0bc0:	bf47a783          	lw	a5,-1036(a5) # 90015bf4 <__psram_limit+0xe7c15bf4>
62fc0bc4:	8782                	jr	a5

62fc0bc6 <HBN_Set_MCU_XCLK_Sel>:
62fc0bc6:	900167b7          	lui	a5,0x90016
62fc0bca:	bf87a783          	lw	a5,-1032(a5) # 90015bf8 <__psram_limit+0xe7c15bf8>
62fc0bce:	8782                	jr	a5

62fc0bd0 <HBN_Get_MCU_Root_CLK_Sel>:
62fc0bd0:	900167b7          	lui	a5,0x90016
62fc0bd4:	c307a783          	lw	a5,-976(a5) # 90015c30 <__psram_limit+0xe7c15c30>
62fc0bd8:	8782                	jr	a5

62fc0bda <HBN_Get_MCU_XCLK_Sel>:
62fc0bda:	900167b7          	lui	a5,0x90016
62fc0bde:	c347a783          	lw	a5,-972(a5) # 90015c34 <__psram_limit+0xe7c15c34>
62fc0be2:	8782                	jr	a5

62fc0be4 <qcc74x_sf_cfg_sbus2_flash_init>:
62fc0be4:	900167b7          	lui	a5,0x90016
62fc0be8:	d107a783          	lw	a5,-752(a5) # 90015d10 <__psram_limit+0xe7c15d10>
62fc0bec:	8782                	jr	a5

62fc0bee <qcc74x_sf_cfg_flash_identify>:
62fc0bee:	90016837          	lui	a6,0x90016
62fc0bf2:	d1482803          	lw	a6,-748(a6) # 90015d14 <__psram_limit+0xe7c15d14>
62fc0bf6:	8802                	jr	a6

62fc0bf8 <qcc74x_sf_ctrl_get_flash_image_offset>:
62fc0bf8:	900167b7          	lui	a5,0x90016
62fc0bfc:	d247a783          	lw	a5,-732(a5) # 90015d24 <__psram_limit+0xe7c15d24>
62fc0c00:	8782                	jr	a5

62fc0c02 <qcc74x_sf_ctrl_cmds_set>:
62fc0c02:	900167b7          	lui	a5,0x90016
62fc0c06:	d707a783          	lw	a5,-656(a5) # 90015d70 <__psram_limit+0xe7c15d70>
62fc0c0a:	8782                	jr	a5

62fc0c0c <qcc74x_sf_ctrl_sbus2_replace>:
62fc0c0c:	900167b7          	lui	a5,0x90016
62fc0c10:	d987a783          	lw	a5,-616(a5) # 90015d98 <__psram_limit+0xe7c15d98>
62fc0c14:	8782                	jr	a5

62fc0c16 <qcc74x_sf_ctrl_sbus2_revoke_replace>:
62fc0c16:	900167b7          	lui	a5,0x90016
62fc0c1a:	d9c7a783          	lw	a5,-612(a5) # 90015d9c <__psram_limit+0xe7c15d9c>
62fc0c1e:	8782                	jr	a5

62fc0c20 <qcc74x_sf_ctrl_set_flash_image_offset>:
62fc0c20:	900167b7          	lui	a5,0x90016
62fc0c24:	db47a783          	lw	a5,-588(a5) # 90015db4 <__psram_limit+0xe7c15db4>
62fc0c28:	8782                	jr	a5

62fc0c2a <qcc74x_sf_ctrl_set_owner>:
62fc0c2a:	900167b7          	lui	a5,0x90016
62fc0c2e:	dbc7a783          	lw	a5,-580(a5) # 90015dbc <__psram_limit+0xe7c15dbc>
62fc0c32:	8782                	jr	a5

62fc0c34 <qcc74x_sflash_qspi_enable>:
62fc0c34:	900167b7          	lui	a5,0x90016
62fc0c38:	de47a783          	lw	a5,-540(a5) # 90015de4 <__psram_limit+0xe7c15de4>
62fc0c3c:	8782                	jr	a5

62fc0c3e <qcc74x_sflash_set_32bits_addr_mode>:
62fc0c3e:	900167b7          	lui	a5,0x90016
62fc0c42:	e047a783          	lw	a5,-508(a5) # 90015e04 <__psram_limit+0xe7c15e04>
62fc0c46:	8782                	jr	a5

62fc0c48 <qcc74x_sflash_set_xip_cfg>:
62fc0c48:	90016837          	lui	a6,0x90016
62fc0c4c:	e0c82803          	lw	a6,-500(a6) # 90015e0c <__psram_limit+0xe7c15e0c>
62fc0c50:	8802                	jr	a6

62fc0c52 <qcc74x_sflash_disable_burst_wrap>:
62fc0c52:	900167b7          	lui	a5,0x90016
62fc0c56:	e247a783          	lw	a5,-476(a5) # 90015e24 <__psram_limit+0xe7c15e24>
62fc0c5a:	8782                	jr	a5

62fc0c5c <qcc74x_sflash_get_jedecid>:
62fc0c5c:	900167b7          	lui	a5,0x90016
62fc0c60:	e2c7a783          	lw	a5,-468(a5) # 90015e2c <__psram_limit+0xe7c15e2c>
62fc0c64:	8782                	jr	a5

62fc0c66 <qcc74x_sflash_reset_continue_read>:
62fc0c66:	900167b7          	lui	a5,0x90016
62fc0c6a:	e447a783          	lw	a5,-444(a5) # 90015e44 <__psram_limit+0xe7c15e44>
62fc0c6e:	8782                	jr	a5

62fc0c70 <qcc74x_sflash_set_burst_wrap>:
62fc0c70:	900167b7          	lui	a5,0x90016
62fc0c74:	e487a783          	lw	a5,-440(a5) # 90015e48 <__psram_limit+0xe7c15e48>
62fc0c78:	8782                	jr	a5

62fc0c7a <qcc74x_xip_sflash_state_restore>:
62fc0c7a:	900167b7          	lui	a5,0x90016
62fc0c7e:	ef87a783          	lw	a5,-264(a5) # 90015ef8 <__psram_limit+0xe7c15ef8>
62fc0c82:	1141                	addi	sp,sp,-16
62fc0c84:	c606                	sw	ra,12(sp)
62fc0c86:	9782                	jalr	a5
62fc0c88:	40b2                	lw	ra,12(sp)
62fc0c8a:	0141                	addi	sp,sp,16
62fc0c8c:	8082                	ret

62fc0c8e <qcc74x_xip_sflash_opt_enter>:
62fc0c8e:	900167b7          	lui	a5,0x90016
62fc0c92:	f047a783          	lw	a5,-252(a5) # 90015f04 <__psram_limit+0xe7c15f04>
62fc0c96:	8782                	jr	a5

62fc0c98 <qcc74x_xip_sflash_opt_exit>:
62fc0c98:	900167b7          	lui	a5,0x90016
62fc0c9c:	f087a783          	lw	a5,-248(a5) # 90015f08 <__psram_limit+0xe7c15f08>
62fc0ca0:	8782                	jr	a5

62fc0ca2 <qcc74x_sf_cfg_flash_identify_ext>:
62fc0ca2:	1101                	addi	sp,sp,-32
62fc0ca4:	cc22                	sw	s0,24(sp)
62fc0ca6:	ca26                	sw	s1,20(sp)
62fc0ca8:	c84a                	sw	s2,16(sp)
62fc0caa:	c63e                	sw	a5,12(sp)
62fc0cac:	ce06                	sw	ra,28(sp)
62fc0cae:	892a                	mv	s2,a0
62fc0cb0:	84b6                	mv	s1,a3
62fc0cb2:	3f35                	jal	62fc0bee <qcc74x_sf_cfg_flash_identify>
62fc0cb4:	47b2                	lw	a5,12(sp)
62fc0cb6:	842a                	mv	s0,a0
62fc0cb8:	00090b63          	beqz	s2,62fc0cce <qcc74x_sf_cfg_flash_identify_ext+0x2c>
62fc0cbc:	0004c583          	lbu	a1,0(s1)
62fc0cc0:	02000713          	li	a4,32
62fc0cc4:	4681                	li	a3,0
62fc0cc6:	4605                	li	a2,1
62fc0cc8:	89bd                	andi	a1,a1,15
62fc0cca:	8526                	mv	a0,s1
62fc0ccc:	3fb5                	jal	62fc0c48 <qcc74x_sflash_set_xip_cfg>
62fc0cce:	02044e63          	bltz	s0,62fc0d0a <qcc74x_sf_cfg_flash_identify_ext+0x68>
62fc0cd2:	010007b7          	lui	a5,0x1000
62fc0cd6:	17fd                	addi	a5,a5,-1
62fc0cd8:	8c7d                	and	s0,s0,a5
62fc0cda:	62fc17b7          	lui	a5,0x62fc1
62fc0cde:	4701                	li	a4,0
62fc0ce0:	59878793          	addi	a5,a5,1432 # 62fc1598 <flash_infos>
62fc0ce4:	45b1                	li	a1,12
62fc0ce6:	02b00613          	li	a2,43
62fc0cea:	02b706b3          	mul	a3,a4,a1
62fc0cee:	40f6c50b          	lrw	a0,a3,a5,0
62fc0cf2:	02851363          	bne	a0,s0,62fc0d18 <qcc74x_sf_cfg_flash_identify_ext+0x76>
62fc0cf6:	97b6                	add	a5,a5,a3
62fc0cf8:	478c                	lw	a1,8(a5)
62fc0cfa:	05400613          	li	a2,84
62fc0cfe:	8526                	mv	a0,s1
62fc0d00:	f28ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0d04:	800007b7          	lui	a5,0x80000
62fc0d08:	8c5d                	or	s0,s0,a5
62fc0d0a:	40f2                	lw	ra,28(sp)
62fc0d0c:	8522                	mv	a0,s0
62fc0d0e:	4462                	lw	s0,24(sp)
62fc0d10:	44d2                	lw	s1,20(sp)
62fc0d12:	4942                	lw	s2,16(sp)
62fc0d14:	6105                	addi	sp,sp,32
62fc0d16:	8082                	ret
62fc0d18:	0705                	addi	a4,a4,1
62fc0d1a:	fcc718e3          	bne	a4,a2,62fc0cea <qcc74x_sf_cfg_flash_identify_ext+0x48>
62fc0d1e:	b7f5                	j	62fc0d0a <qcc74x_sf_cfg_flash_identify_ext+0x68>

62fc0d20 <qcc74x_xip_sflash_read_via_cache_need_lock>:
62fc0d20:	1101                	addi	sp,sp,-32
62fc0d22:	cc22                	sw	s0,24(sp)
62fc0d24:	04000437          	lui	s0,0x4000
62fc0d28:	147d                	addi	s0,s0,-1
62fc0d2a:	c452                	sw	s4,8(sp)
62fc0d2c:	8c69                	and	s0,s0,a0
62fc0d2e:	8a2e                	mv	s4,a1
62fc0d30:	8536                	mv	a0,a3
62fc0d32:	85ba                	mv	a1,a4
62fc0d34:	ce06                	sw	ra,28(sp)
62fc0d36:	ca26                	sw	s1,20(sp)
62fc0d38:	c84a                	sw	s2,16(sp)
62fc0d3a:	c64e                	sw	s3,12(sp)
62fc0d3c:	c256                	sw	s5,4(sp)
62fc0d3e:	84b6                	mv	s1,a3
62fc0d40:	893a                	mv	s2,a4
62fc0d42:	8ab2                	mv	s5,a2
62fc0d44:	3d55                	jal	62fc0bf8 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0d46:	864a                	mv	a2,s2
62fc0d48:	89aa                	mv	s3,a0
62fc0d4a:	85a6                	mv	a1,s1
62fc0d4c:	4501                	li	a0,0
62fc0d4e:	3dc9                	jal	62fc0c20 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0d50:	85ca                	mv	a1,s2
62fc0d52:	8526                	mv	a0,s1
62fc0d54:	3555                	jal	62fc0bf8 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0d56:	a00005b7          	lui	a1,0xa0000
62fc0d5a:	8dc1                	or	a1,a1,s0
62fc0d5c:	8656                	mv	a2,s5
62fc0d5e:	8d89                	sub	a1,a1,a0
62fc0d60:	8552                	mv	a0,s4
62fc0d62:	ec6ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0d66:	854e                	mv	a0,s3
62fc0d68:	864a                	mv	a2,s2
62fc0d6a:	85a6                	mv	a1,s1
62fc0d6c:	3d55                	jal	62fc0c20 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0d6e:	40f2                	lw	ra,28(sp)
62fc0d70:	4462                	lw	s0,24(sp)
62fc0d72:	44d2                	lw	s1,20(sp)
62fc0d74:	4942                	lw	s2,16(sp)
62fc0d76:	49b2                	lw	s3,12(sp)
62fc0d78:	4a22                	lw	s4,8(sp)
62fc0d7a:	4a92                	lw	s5,4(sp)
62fc0d7c:	4501                	li	a0,0
62fc0d7e:	6105                	addi	sp,sp,32
62fc0d80:	8082                	ret

62fc0d82 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>:
62fc0d82:	474647b7          	lui	a5,0x47464
62fc0d86:	7175                	addi	sp,sp,-144
62fc0d88:	34678793          	addi	a5,a5,838 # 47464346 <__RFTLV_HEAD1_H+0xf3f704>
62fc0d8c:	dece                	sw	s3,124(sp)
62fc0d8e:	c706                	sw	ra,140(sp)
62fc0d90:	c522                	sw	s0,136(sp)
62fc0d92:	c326                	sw	s1,132(sp)
62fc0d94:	c14a                	sw	s2,128(sp)
62fc0d96:	c63e                	sw	a5,12(sp)
62fc0d98:	00010823          	sb	zero,16(sp)
62fc0d9c:	89ae                	mv	s3,a1
62fc0d9e:	e52d                	bnez	a0,62fc0e08 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x86>
62fc0da0:	85b6                	mv	a1,a3
62fc0da2:	8532                	mv	a0,a2
62fc0da4:	8432                	mv	s0,a2
62fc0da6:	84b6                	mv	s1,a3
62fc0da8:	3d81                	jal	62fc0bf8 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0daa:	85a2                	mv	a1,s0
62fc0dac:	892a                	mv	s2,a0
62fc0dae:	8626                	mv	a2,s1
62fc0db0:	4501                	li	a0,0
62fc0db2:	35bd                	jal	62fc0c20 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0db4:	a0000537          	lui	a0,0xa0000
62fc0db8:	86a2                	mv	a3,s0
62fc0dba:	8726                	mv	a4,s1
62fc0dbc:	05c00613          	li	a2,92
62fc0dc0:	084c                	addi	a1,sp,20
62fc0dc2:	0521                	addi	a0,a0,8
62fc0dc4:	3fb1                	jal	62fc0d20 <qcc74x_xip_sflash_read_via_cache_need_lock>
62fc0dc6:	85a2                	mv	a1,s0
62fc0dc8:	8626                	mv	a2,s1
62fc0dca:	854a                	mv	a0,s2
62fc0dcc:	3d91                	jal	62fc0c20 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0dce:	4611                	li	a2,4
62fc0dd0:	006c                	addi	a1,sp,12
62fc0dd2:	0848                	addi	a0,sp,20
62fc0dd4:	e96ff0ef          	jal	ra,62fc046a <arch_memcmp>
62fc0dd8:	842a                	mv	s0,a0
62fc0dda:	e92d                	bnez	a0,62fc0e4c <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xca>
62fc0ddc:	05400593          	li	a1,84
62fc0de0:	0828                	addi	a0,sp,24
62fc0de2:	ee0ff0ef          	jal	ra,62fc04c2 <qcc74x_soft_crc32>
62fc0de6:	57b6                	lw	a5,108(sp)
62fc0de8:	06a79263          	bne	a5,a0,62fc0e4c <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xca>
62fc0dec:	05400613          	li	a2,84
62fc0df0:	082c                	addi	a1,sp,24
62fc0df2:	854e                	mv	a0,s3
62fc0df4:	e34ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0df8:	40ba                	lw	ra,140(sp)
62fc0dfa:	8522                	mv	a0,s0
62fc0dfc:	442a                	lw	s0,136(sp)
62fc0dfe:	449a                	lw	s1,132(sp)
62fc0e00:	490a                	lw	s2,128(sp)
62fc0e02:	59f6                	lw	s3,124(sp)
62fc0e04:	6149                	addi	sp,sp,144
62fc0e06:	8082                	ret
62fc0e08:	900167b7          	lui	a5,0x90016
62fc0e0c:	d007a783          	lw	a5,-768(a5) # 90015d00 <__psram_limit+0xe7c15d00>
62fc0e10:	892a                	mv	s2,a0
62fc0e12:	9782                	jalr	a5
62fc0e14:	842a                	mv	s0,a0
62fc0e16:	d16d                	beqz	a0,62fc0df8 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>
62fc0e18:	62fc17b7          	lui	a5,0x62fc1
62fc0e1c:	4701                	li	a4,0
62fc0e1e:	59878793          	addi	a5,a5,1432 # 62fc1598 <flash_infos>
62fc0e22:	45b1                	li	a1,12
62fc0e24:	02b00613          	li	a2,43
62fc0e28:	02b706b3          	mul	a3,a4,a1
62fc0e2c:	40f6c50b          	lrw	a0,a3,a5,0
62fc0e30:	01251b63          	bne	a0,s2,62fc0e46 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xc4>
62fc0e34:	97b6                	add	a5,a5,a3
62fc0e36:	478c                	lw	a1,8(a5)
62fc0e38:	05400613          	li	a2,84
62fc0e3c:	854e                	mv	a0,s3
62fc0e3e:	deaff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0e42:	4401                	li	s0,0
62fc0e44:	bf55                	j	62fc0df8 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>
62fc0e46:	0705                	addi	a4,a4,1
62fc0e48:	fec710e3          	bne	a4,a2,62fc0e28 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xa6>
62fc0e4c:	547d                	li	s0,-1
62fc0e4e:	b76d                	j	62fc0df8 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>

62fc0e50 <qcc74x_xip_sflash_state_save>:
62fc0e50:	7179                	addi	sp,sp,-48
62fc0e52:	04000793          	li	a5,64
62fc0e56:	d422                	sw	s0,40(sp)
62fc0e58:	d226                	sw	s1,36(sp)
62fc0e5a:	d04a                	sw	s2,32(sp)
62fc0e5c:	ce4e                	sw	s3,28(sp)
62fc0e5e:	d606                	sw	ra,44(sp)
62fc0e60:	842a                	mv	s0,a0
62fc0e62:	89ae                	mv	s3,a1
62fc0e64:	8932                	mv	s2,a2
62fc0e66:	84b6                	mv	s1,a3
62fc0e68:	c63e                	sw	a5,12(sp)
62fc0e6a:	47b2                	lw	a5,12(sp)
62fc0e6c:	fff78713          	addi	a4,a5,-1
62fc0e70:	c63a                	sw	a4,12(sp)
62fc0e72:	ffe5                	bnez	a5,62fc0e6a <qcc74x_xip_sflash_state_save+0x1a>
62fc0e74:	4785                	li	a5,1
62fc0e76:	00f49463          	bne	s1,a5,62fc0e7e <qcc74x_xip_sflash_state_save+0x2e>
62fc0e7a:	4505                	li	a0,1
62fc0e7c:	3b41                	jal	62fc0c0c <qcc74x_sf_ctrl_sbus2_replace>
62fc0e7e:	4501                	li	a0,0
62fc0e80:	336d                	jal	62fc0c2a <qcc74x_sf_ctrl_set_owner>
62fc0e82:	8522                	mv	a0,s0
62fc0e84:	33cd                	jal	62fc0c66 <qcc74x_sflash_reset_continue_read>
62fc0e86:	8522                	mv	a0,s0
62fc0e88:	33e9                	jal	62fc0c52 <qcc74x_sflash_disable_burst_wrap>
62fc0e8a:	4585                	li	a1,1
62fc0e8c:	8522                	mv	a0,s0
62fc0e8e:	3b45                	jal	62fc0c3e <qcc74x_sflash_set_32bits_addr_mode>
62fc0e90:	00044783          	lbu	a5,0(s0) # 4000000 <remain_wifi_ram+0x3fe0000>
62fc0e94:	8bbd                	andi	a5,a5,15
62fc0e96:	17f9                	addi	a5,a5,-2
62fc0e98:	0fd7f793          	andi	a5,a5,253
62fc0e9c:	e399                	bnez	a5,62fc0ea2 <qcc74x_xip_sflash_state_save+0x52>
62fc0e9e:	8522                	mv	a0,s0
62fc0ea0:	3b51                	jal	62fc0c34 <qcc74x_sflash_qspi_enable>
62fc0ea2:	8522                	mv	a0,s0
62fc0ea4:	337d                	jal	62fc0c52 <qcc74x_sflash_disable_burst_wrap>
62fc0ea6:	85a6                	mv	a1,s1
62fc0ea8:	854a                	mv	a0,s2
62fc0eaa:	33b9                	jal	62fc0bf8 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0eac:	00a9a023          	sw	a0,0(s3)
62fc0eb0:	8626                	mv	a2,s1
62fc0eb2:	85ca                	mv	a1,s2
62fc0eb4:	4501                	li	a0,0
62fc0eb6:	33ad                	jal	62fc0c20 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0eb8:	50b2                	lw	ra,44(sp)
62fc0eba:	5422                	lw	s0,40(sp)
62fc0ebc:	5492                	lw	s1,36(sp)
62fc0ebe:	5902                	lw	s2,32(sp)
62fc0ec0:	49f2                	lw	s3,28(sp)
62fc0ec2:	4501                	li	a0,0
62fc0ec4:	6145                	addi	sp,sp,48
62fc0ec6:	8082                	ret

62fc0ec8 <GLB_Set_Flash_Id_Value>:
62fc0ec8:	010007b7          	lui	a5,0x1000
62fc0ecc:	17fd                	addi	a5,a5,-1
62fc0ece:	8d7d                	and	a0,a0,a5
62fc0ed0:	5a0007b7          	lui	a5,0x5a000
62fc0ed4:	8d5d                	or	a0,a0,a5
62fc0ed6:	200007b7          	lui	a5,0x20000
62fc0eda:	5ca7a223          	sw	a0,1476(a5) # 200005c4 <remain_wifi_ram+0x1ffe05c4>
62fc0ede:	4501                	li	a0,0
62fc0ee0:	8082                	ret

62fc0ee2 <GLB_Get_Flash_Id_Value>:
62fc0ee2:	200007b7          	lui	a5,0x20000
62fc0ee6:	5c47a703          	lw	a4,1476(a5) # 200005c4 <remain_wifi_ram+0x1ffe05c4>
62fc0eea:	7f0007b7          	lui	a5,0x7f000
62fc0eee:	5a0006b7          	lui	a3,0x5a000
62fc0ef2:	8ff9                	and	a5,a5,a4
62fc0ef4:	4501                	li	a0,0
62fc0ef6:	00d79663          	bne	a5,a3,62fc0f02 <GLB_Get_Flash_Id_Value+0x20>
62fc0efa:	01000537          	lui	a0,0x1000
62fc0efe:	157d                	addi	a0,a0,-1
62fc0f00:	8d79                	and	a0,a0,a4
62fc0f02:	8082                	ret

62fc0f04 <GLB_Get_Package_Type>:
62fc0f04:	200567b7          	lui	a5,0x20056
62fc0f08:	4f88                	lw	a0,24(a5)
62fc0f0a:	5d65350b          	extu	a0,a0,23,22
62fc0f0e:	8082                	ret

62fc0f10 <GLB_GPIO_Pad_LeadOut_Sts>:
62fc0f10:	1141                	addi	sp,sp,-16
62fc0f12:	c422                	sw	s0,8(sp)
62fc0f14:	c606                	sw	ra,12(sp)
62fc0f16:	842a                	mv	s0,a0
62fc0f18:	37f5                	jal	62fc0f04 <GLB_Get_Package_Type>
62fc0f1a:	4789                	li	a5,2
62fc0f1c:	02f50563          	beq	a0,a5,62fc0f46 <GLB_GPIO_Pad_LeadOut_Sts+0x36>
62fc0f20:	47f9                	li	a5,30
62fc0f22:	4505                	li	a0,1
62fc0f24:	0087eb63          	bltu	a5,s0,62fc0f3a <GLB_GPIO_Pad_LeadOut_Sts+0x2a>
62fc0f28:	78740537          	lui	a0,0x78740
62fc0f2c:	c0f50513          	addi	a0,a0,-1009 # 7873fc0f <__HeapLimit+0x1570fc0f>
62fc0f30:	00855533          	srl	a0,a0,s0
62fc0f34:	fff54513          	not	a0,a0
62fc0f38:	8905                	andi	a0,a0,1
62fc0f3a:	00154513          	xori	a0,a0,1
62fc0f3e:	40b2                	lw	ra,12(sp)
62fc0f40:	4422                	lw	s0,8(sp)
62fc0f42:	0141                	addi	sp,sp,16
62fc0f44:	8082                	ret
62fc0f46:	4505                	li	a0,1
62fc0f48:	bfdd                	j	62fc0f3e <GLB_GPIO_Pad_LeadOut_Sts+0x2e>

62fc0f4a <HBN_Get_Xtal_Value>:
62fc0f4a:	cd2d                	beqz	a0,62fc0fc4 <HBN_Get_Xtal_Value+0x7a>
62fc0f4c:	2000f7b7          	lui	a5,0x2000f
62fc0f50:	10c7a783          	lw	a5,268(a5) # 2000f10c <remain_wifi_ram+0x1ffef10c>
62fc0f54:	4721                	li	a4,8
62fc0f56:	1c47b68b          	extu	a3,a5,7,4
62fc0f5a:	06e69363          	bne	a3,a4,62fc0fc0 <HBN_Get_Xtal_Value+0x76>
62fc0f5e:	8bbd                	andi	a5,a5,15
62fc0f60:	4711                	li	a4,4
62fc0f62:	04e78563          	beq	a5,a4,62fc0fac <HBN_Get_Xtal_Value+0x62>
62fc0f66:	00f76f63          	bltu	a4,a5,62fc0f84 <HBN_Get_Xtal_Value+0x3a>
62fc0f6a:	4709                	li	a4,2
62fc0f6c:	02e78263          	beq	a5,a4,62fc0f90 <HBN_Get_Xtal_Value+0x46>
62fc0f70:	470d                	li	a4,3
62fc0f72:	02e78a63          	beq	a5,a4,62fc0fa6 <HBN_Get_Xtal_Value+0x5c>
62fc0f76:	4705                	li	a4,1
62fc0f78:	02e78163          	beq	a5,a4,62fc0f9a <HBN_Get_Xtal_Value+0x50>
62fc0f7c:	00052023          	sw	zero,0(a0)
62fc0f80:	4501                	li	a0,0
62fc0f82:	8082                	ret
62fc0f84:	4715                	li	a4,5
62fc0f86:	02e78863          	beq	a5,a4,62fc0fb6 <HBN_Get_Xtal_Value+0x6c>
62fc0f8a:	4719                	li	a4,6
62fc0f8c:	fee798e3          	bne	a5,a4,62fc0f7c <HBN_Get_Xtal_Value+0x32>
62fc0f90:	01e857b7          	lui	a5,0x1e85
62fc0f94:	80078793          	addi	a5,a5,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc0f98:	a029                	j	62fc0fa2 <HBN_Get_Xtal_Value+0x58>
62fc0f9a:	016e37b7          	lui	a5,0x16e3
62fc0f9e:	60078793          	addi	a5,a5,1536 # 16e3600 <remain_wifi_ram+0x16c3600>
62fc0fa2:	c11c                	sw	a5,0(a0)
62fc0fa4:	bff1                	j	62fc0f80 <HBN_Get_Xtal_Value+0x36>
62fc0fa6:	0249f7b7          	lui	a5,0x249f
62fc0faa:	bfe5                	j	62fc0fa2 <HBN_Get_Xtal_Value+0x58>
62fc0fac:	026267b7          	lui	a5,0x2626
62fc0fb0:	a0078793          	addi	a5,a5,-1536 # 2625a00 <remain_wifi_ram+0x2605a00>
62fc0fb4:	b7fd                	j	62fc0fa2 <HBN_Get_Xtal_Value+0x58>
62fc0fb6:	018cc7b7          	lui	a5,0x18cc
62fc0fba:	a8078793          	addi	a5,a5,-1408 # 18cba80 <remain_wifi_ram+0x18aba80>
62fc0fbe:	b7d5                	j	62fc0fa2 <HBN_Get_Xtal_Value+0x58>
62fc0fc0:	00052023          	sw	zero,0(a0)
62fc0fc4:	4505                	li	a0,1
62fc0fc6:	8082                	ret
	...

62fc0fd0 <ASM_Delay_Us>:
62fc0fd0:	1141                	addi	sp,sp,-16
62fc0fd2:	c232                	sw	a2,4(sp)
62fc0fd4:	c402                	sw	zero,8(sp)
62fc0fd6:	000f46b7          	lui	a3,0xf4
62fc0fda:	c602                	sw	zero,12(sp)
62fc0fdc:	23f68693          	addi	a3,a3,575 # f423f <remain_wifi_ram+0xd423f>
62fc0fe0:	04a6f963          	bgeu	a3,a0,62fc1032 <ASM_Delay_Us+0x62>
62fc0fe4:	66e1                	lui	a3,0x18
62fc0fe6:	6a068693          	addi	a3,a3,1696 # 186a0 <wifi_ram_max_size+0x106a0>
62fc0fea:	02d55533          	divu	a0,a0,a3
62fc0fee:	4729                	li	a4,10
62fc0ff0:	c42a                	sw	a0,8(sp)
62fc0ff2:	47a2                	lw	a5,8(sp)
62fc0ff4:	02b787b3          	mul	a5,a5,a1
62fc0ff8:	c63e                	sw	a5,12(sp)
62fc0ffa:	47b2                	lw	a5,12(sp)
62fc0ffc:	02e7d7b3          	divu	a5,a5,a4
62fc1000:	c63e                	sw	a5,12(sp)
62fc1002:	47b2                	lw	a5,12(sp)
62fc1004:	4712                	lw	a4,4(sp)
62fc1006:	02e7d7b3          	divu	a5,a5,a4
62fc100a:	c63e                	sw	a5,12(sp)
62fc100c:	47b2                	lw	a5,12(sp)
62fc100e:	c385                	beqz	a5,62fc102e <ASM_Delay_Us+0x5e>
62fc1010:	46b2                	lw	a3,12(sp)
62fc1012:	8736                	mv	a4,a3
62fc1014:	4781                	li	a5,0
62fc1016:	0001                	nop
62fc1018:	0001                	nop
62fc101a:	0001                	nop
62fc101c:	00000013          	nop
62fc1020:	00e78663          	beq	a5,a4,62fc102c <ASM_Delay_Us+0x5c>
62fc1024:	0785                	addi	a5,a5,1
62fc1026:	bfed                	j	62fc1020 <ASM_Delay_Us+0x50>
62fc1028:	0001                	nop
62fc102a:	0001                	nop
62fc102c:	0001                	nop
62fc102e:	0141                	addi	sp,sp,16
62fc1030:	8082                	ret
62fc1032:	3e800693          	li	a3,1000
62fc1036:	02d55533          	divu	a0,a0,a3
62fc103a:	c42a                	sw	a0,8(sp)
62fc103c:	4722                	lw	a4,8(sp)
62fc103e:	02b70733          	mul	a4,a4,a1
62fc1042:	c63a                	sw	a4,12(sp)
62fc1044:	47b2                	lw	a5,12(sp)
62fc1046:	02d7d7b3          	divu	a5,a5,a3
62fc104a:	bf5d                	j	62fc1000 <ASM_Delay_Us+0x30>
	...

62fc1056 <arch_delay_us>:
62fc1056:	1101                	addi	sp,sp,-32
62fc1058:	ce06                	sw	ra,28(sp)
62fc105a:	85aa                	mv	a1,a0
62fc105c:	7c1027f3          	csrr	a5,mhcr
62fc1060:	7c102673          	csrr	a2,mhcr
62fc1064:	0017f713          	andi	a4,a5,1
62fc1068:	8205                	srli	a2,a2,0x1
62fc106a:	c705                	beqz	a4,62fc1092 <arch_delay_us+0x3c>
62fc106c:	8a05                	andi	a2,a2,1
62fc106e:	4791                	li	a5,4
62fc1070:	40c78633          	sub	a2,a5,a2
62fc1074:	4505                	li	a0,1
62fc1076:	c62e                	sw	a1,12(sp)
62fc1078:	c432                	sw	a2,8(sp)
62fc107a:	18d000ef          	jal	ra,62fc1a06 <Clock_System_Clock_Get>
62fc107e:	4622                	lw	a2,8(sp)
62fc1080:	45b2                	lw	a1,12(sp)
62fc1082:	e509                	bnez	a0,62fc108c <arch_delay_us+0x36>
62fc1084:	01e85537          	lui	a0,0x1e85
62fc1088:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc108c:	40f2                	lw	ra,28(sp)
62fc108e:	6105                	addi	sp,sp,32
62fc1090:	b781                	j	62fc0fd0 <ASM_Delay_Us>
62fc1092:	8e5d                	or	a2,a2,a5
62fc1094:	00167793          	andi	a5,a2,1
62fc1098:	460d                	li	a2,3
62fc109a:	ffe9                	bnez	a5,62fc1074 <arch_delay_us+0x1e>
62fc109c:	4661                	li	a2,24
62fc109e:	bfd9                	j	62fc1074 <arch_delay_us+0x1e>

62fc10a0 <arch_delay_ms>:
62fc10a0:	1141                	addi	sp,sp,-16
62fc10a2:	c422                	sw	s0,8(sp)
62fc10a4:	c606                	sw	ra,12(sp)
62fc10a6:	c226                	sw	s1,4(sp)
62fc10a8:	c04a                	sw	s2,0(sp)
62fc10aa:	3ff00793          	li	a5,1023
62fc10ae:	842a                	mv	s0,a0
62fc10b0:	00a7fb63          	bgeu	a5,a0,62fc10c6 <arch_delay_ms+0x26>
62fc10b4:	00a55913          	srli	s2,a0,0xa
62fc10b8:	4481                	li	s1,0
62fc10ba:	000fa537          	lui	a0,0xfa
62fc10be:	0485                	addi	s1,s1,1
62fc10c0:	3f59                	jal	62fc1056 <arch_delay_us>
62fc10c2:	fe991ce3          	bne	s2,s1,62fc10ba <arch_delay_ms+0x1a>
62fc10c6:	3ff47413          	andi	s0,s0,1023
62fc10ca:	c819                	beqz	s0,62fc10e0 <arch_delay_ms+0x40>
62fc10cc:	3e800513          	li	a0,1000
62fc10d0:	02a40533          	mul	a0,s0,a0
62fc10d4:	4422                	lw	s0,8(sp)
62fc10d6:	40b2                	lw	ra,12(sp)
62fc10d8:	4492                	lw	s1,4(sp)
62fc10da:	4902                	lw	s2,0(sp)
62fc10dc:	0141                	addi	sp,sp,16
62fc10de:	bfa5                	j	62fc1056 <arch_delay_us>
62fc10e0:	40b2                	lw	ra,12(sp)
62fc10e2:	4422                	lw	s0,8(sp)
62fc10e4:	4492                	lw	s1,4(sp)
62fc10e6:	4902                	lw	s2,0(sp)
62fc10e8:	0141                	addi	sp,sp,16
62fc10ea:	8082                	ret

62fc10ec <qcc74x_efuse_print_number>:
62fc10ec:	47a5                	li	a5,9
62fc10ee:	02b7f263          	bgeu	a5,a1,62fc1112 <qcc74x_efuse_print_number+0x26>
62fc10f2:	4729                	li	a4,10
62fc10f4:	02e5d7b3          	divu	a5,a1,a4
62fc10f8:	02e5f5b3          	remu	a1,a1,a4
62fc10fc:	03078793          	addi	a5,a5,48
62fc1100:	00f50023          	sb	a5,0(a0) # fa000 <remain_wifi_ram+0xda000>
62fc1104:	4789                	li	a5,2
62fc1106:	03058593          	addi	a1,a1,48 # a0000030 <__psram_limit+0xf7c00030>
62fc110a:	00b500a3          	sb	a1,1(a0)
62fc110e:	953e                	add	a0,a0,a5
62fc1110:	8082                	ret
62fc1112:	03058593          	addi	a1,a1,48
62fc1116:	00b50023          	sb	a1,0(a0)
62fc111a:	4785                	li	a5,1
62fc111c:	bfcd                	j	62fc110e <qcc74x_efuse_print_number+0x22>

62fc111e <qcc74x_efuse_get_device_info>:
62fc111e:	1101                	addi	sp,sp,-32
62fc1120:	cc22                	sw	s0,24(sp)
62fc1122:	4705                	li	a4,1
62fc1124:	842a                	mv	s0,a0
62fc1126:	4685                	li	a3,1
62fc1128:	0070                	addi	a2,sp,12
62fc112a:	45e1                	li	a1,24
62fc112c:	4501                	li	a0,0
62fc112e:	ce06                	sw	ra,28(sp)
62fc1130:	ca26                	sw	s1,20(sp)
62fc1132:	c4eff0ef          	jal	ra,62fc0580 <qcc74x_ef_ctrl_read_direct>
62fc1136:	4732                	lw	a4,12(sp)
62fc1138:	5d67360b          	extu	a2,a4,23,22
62fc113c:	71a7378b          	extu	a5,a4,28,26
62fc1140:	6587368b          	extu	a3,a4,25,24
62fc1144:	8375                	srli	a4,a4,0x1d
62fc1146:	00e401a3          	sb	a4,3(s0)
62fc114a:	00c40023          	sb	a2,0(s0)
62fc114e:	00f400a3          	sb	a5,1(s0)
62fc1152:	00d40123          	sb	a3,2(s0)
62fc1156:	4705                	li	a4,1
62fc1158:	02e60963          	beq	a2,a4,62fc118a <qcc74x_efuse_get_device_info+0x6c>
62fc115c:	4709                	li	a4,2
62fc115e:	02e60b63          	beq	a2,a4,62fc1194 <qcc74x_efuse_get_device_info+0x76>
62fc1162:	ee15                	bnez	a2,62fc119e <qcc74x_efuse_get_device_info+0x80>
62fc1164:	a0009737          	lui	a4,0xa0009
62fc1168:	95870713          	addi	a4,a4,-1704 # a0008958 <__psram_limit+0xf7c08958>
62fc116c:	c418                	sw	a4,8(s0)
62fc116e:	4709                	li	a4,2
62fc1170:	0ee78363          	beq	a5,a4,62fc1256 <qcc74x_efuse_get_device_info+0x138>
62fc1174:	02f76a63          	bltu	a4,a5,62fc11a8 <qcc74x_efuse_get_device_info+0x8a>
62fc1178:	c3b9                	beqz	a5,62fc11be <qcc74x_efuse_get_device_info+0xa0>
62fc117a:	4705                	li	a4,1
62fc117c:	0ce78863          	beq	a5,a4,62fc124c <qcc74x_efuse_get_device_info+0x12e>
62fc1180:	a00097b7          	lui	a5,0xa0009
62fc1184:	97078793          	addi	a5,a5,-1680 # a0008970 <__psram_limit+0xf7c08970>
62fc1188:	a83d                	j	62fc11c6 <qcc74x_efuse_get_device_info+0xa8>
62fc118a:	a0009737          	lui	a4,0xa0009
62fc118e:	96070713          	addi	a4,a4,-1696 # a0008960 <__psram_limit+0xf7c08960>
62fc1192:	bfe9                	j	62fc116c <qcc74x_efuse_get_device_info+0x4e>
62fc1194:	a0009737          	lui	a4,0xa0009
62fc1198:	96870713          	addi	a4,a4,-1688 # a0008968 <__psram_limit+0xf7c08968>
62fc119c:	bfc1                	j	62fc116c <qcc74x_efuse_get_device_info+0x4e>
62fc119e:	a0009737          	lui	a4,0xa0009
62fc11a2:	97070713          	addi	a4,a4,-1680 # a0008970 <__psram_limit+0xf7c08970>
62fc11a6:	b7d9                	j	62fc116c <qcc74x_efuse_get_device_info+0x4e>
62fc11a8:	470d                	li	a4,3
62fc11aa:	0ae78b63          	beq	a5,a4,62fc1260 <qcc74x_efuse_get_device_info+0x142>
62fc11ae:	4711                	li	a4,4
62fc11b0:	fce798e3          	bne	a5,a4,62fc1180 <qcc74x_efuse_get_device_info+0x62>
62fc11b4:	a00097b7          	lui	a5,0xa0009
62fc11b8:	98478793          	addi	a5,a5,-1660 # a0008984 <__psram_limit+0xf7c08984>
62fc11bc:	a029                	j	62fc11c6 <qcc74x_efuse_get_device_info+0xa8>
62fc11be:	a00097b7          	lui	a5,0xa0009
62fc11c2:	97878793          	addi	a5,a5,-1672 # a0008978 <__psram_limit+0xf7c08978>
62fc11c6:	c45c                	sw	a5,12(s0)
62fc11c8:	4789                	li	a5,2
62fc11ca:	0af68563          	beq	a3,a5,62fc1274 <qcc74x_efuse_get_device_info+0x156>
62fc11ce:	478d                	li	a5,3
62fc11d0:	0af68763          	beq	a3,a5,62fc127e <qcc74x_efuse_get_device_info+0x160>
62fc11d4:	4785                	li	a5,1
62fc11d6:	08f68a63          	beq	a3,a5,62fc126a <qcc74x_efuse_get_device_info+0x14c>
62fc11da:	a00097b7          	lui	a5,0xa0009
62fc11de:	97878793          	addi	a5,a5,-1672 # a0008978 <__psram_limit+0xf7c08978>
62fc11e2:	200004b7          	lui	s1,0x20000
62fc11e6:	68048493          	addi	s1,s1,1664 # 20000680 <remain_wifi_ram+0x1ffe0680>
62fc11ea:	c81c                	sw	a5,16(s0)
62fc11ec:	40100793          	li	a5,1025
62fc11f0:	d8bc                	sw	a5,112(s1)
62fc11f2:	06e00513          	li	a0,110
62fc11f6:	3585                	jal	62fc1056 <arch_delay_us>
62fc11f8:	40300793          	li	a5,1027
62fc11fc:	d8bc                	sw	a5,112(s1)
62fc11fe:	06e00513          	li	a0,110
62fc1202:	3d91                	jal	62fc1056 <arch_delay_us>
62fc1204:	41300793          	li	a5,1043
62fc1208:	d8bc                	sw	a5,112(s1)
62fc120a:	06e00513          	li	a0,110
62fc120e:	35a1                	jal	62fc1056 <arch_delay_us>
62fc1210:	43300793          	li	a5,1075
62fc1214:	d8bc                	sw	a5,112(s1)
62fc1216:	44c00513          	li	a0,1100
62fc121a:	3d35                	jal	62fc1056 <arch_delay_us>
62fc121c:	58b8                	lw	a4,112(s1)
62fc121e:	1e000693          	li	a3,480
62fc1222:	01440513          	addi	a0,s0,20
62fc1226:	6cc7378b          	extu	a5,a4,27,12
62fc122a:	c63e                	sw	a5,12(sp)
62fc122c:	00f41223          	sh	a5,4(s0)
62fc1230:	04f6ec63          	bltu	a3,a5,62fc1288 <qcc74x_efuse_get_device_info+0x16a>
62fc1234:	a00095b7          	lui	a1,0xa0009
62fc1238:	460d                	li	a2,3
62fc123a:	9a058593          	addi	a1,a1,-1632 # a00089a0 <__psram_limit+0xf7c089a0>
62fc123e:	9c2ff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc1242:	40f2                	lw	ra,28(sp)
62fc1244:	4462                	lw	s0,24(sp)
62fc1246:	44d2                	lw	s1,20(sp)
62fc1248:	6105                	addi	sp,sp,32
62fc124a:	8082                	ret
62fc124c:	a00097b7          	lui	a5,0xa0009
62fc1250:	97c78793          	addi	a5,a5,-1668 # a000897c <__psram_limit+0xf7c0897c>
62fc1254:	bf8d                	j	62fc11c6 <qcc74x_efuse_get_device_info+0xa8>
62fc1256:	a00097b7          	lui	a5,0xa0009
62fc125a:	98078793          	addi	a5,a5,-1664 # a0008980 <__psram_limit+0xf7c08980>
62fc125e:	b7a5                	j	62fc11c6 <qcc74x_efuse_get_device_info+0xa8>
62fc1260:	a00097b7          	lui	a5,0xa0009
62fc1264:	99c78793          	addi	a5,a5,-1636 # a000899c <__psram_limit+0xf7c0899c>
62fc1268:	bfb9                	j	62fc11c6 <qcc74x_efuse_get_device_info+0xa8>
62fc126a:	a00097b7          	lui	a5,0xa0009
62fc126e:	98878793          	addi	a5,a5,-1656 # a0008988 <__psram_limit+0xf7c08988>
62fc1272:	bf85                	j	62fc11e2 <qcc74x_efuse_get_device_info+0xc4>
62fc1274:	a00097b7          	lui	a5,0xa0009
62fc1278:	99078793          	addi	a5,a5,-1648 # a0008990 <__psram_limit+0xf7c08990>
62fc127c:	b79d                	j	62fc11e2 <qcc74x_efuse_get_device_info+0xc4>
62fc127e:	a00097b7          	lui	a5,0xa0009
62fc1282:	99878793          	addi	a5,a5,-1640 # a0008998 <__psram_limit+0xf7c08998>
62fc1286:	bfb1                	j	62fc11e2 <qcc74x_efuse_get_device_info+0xc4>
62fc1288:	21b00693          	li	a3,539
62fc128c:	04f6e663          	bltu	a3,a5,62fc12d8 <qcc74x_efuse_get_device_info+0x1ba>
62fc1290:	e2078413          	addi	s0,a5,-480
62fc1294:	06400793          	li	a5,100
62fc1298:	02f40433          	mul	s0,s0,a5
62fc129c:	03c00593          	li	a1,60
62fc12a0:	0479                	addi	s0,s0,30
62fc12a2:	02b44433          	div	s0,s0,a1
62fc12a6:	0ff47593          	zext.b	a1,s0
62fc12aa:	3589                	jal	62fc10ec <qcc74x_efuse_print_number>
62fc12ac:	a00095b7          	lui	a1,0xa0009
62fc12b0:	4615                	li	a2,5
62fc12b2:	9a458593          	addi	a1,a1,-1628 # a00089a4 <__psram_limit+0xf7c089a4>
62fc12b6:	84aa                	mv	s1,a0
62fc12b8:	948ff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc12bc:	06400593          	li	a1,100
62fc12c0:	8d81                	sub	a1,a1,s0
62fc12c2:	0ff5f593          	zext.b	a1,a1
62fc12c6:	00448513          	addi	a0,s1,4
62fc12ca:	350d                	jal	62fc10ec <qcc74x_efuse_print_number>
62fc12cc:	a00095b7          	lui	a1,0xa0009
62fc12d0:	4611                	li	a2,4
62fc12d2:	9ac58593          	addi	a1,a1,-1620 # a00089ac <__psram_limit+0xf7c089ac>
62fc12d6:	b7a5                	j	62fc123e <qcc74x_efuse_get_device_info+0x120>
62fc12d8:	21c00693          	li	a3,540
62fc12dc:	00d79863          	bne	a5,a3,62fc12ec <qcc74x_efuse_get_device_info+0x1ce>
62fc12e0:	a00095b7          	lui	a1,0xa0009
62fc12e4:	460d                	li	a2,3
62fc12e6:	9b058593          	addi	a1,a1,-1616 # a00089b0 <__psram_limit+0xf7c089b0>
62fc12ea:	bf91                	j	62fc123e <qcc74x_efuse_get_device_info+0x120>
62fc12ec:	26100693          	li	a3,609
62fc12f0:	04f6e763          	bltu	a3,a5,62fc133e <qcc74x_efuse_get_device_info+0x220>
62fc12f4:	de478413          	addi	s0,a5,-540
62fc12f8:	06400793          	li	a5,100
62fc12fc:	02f40433          	mul	s0,s0,a5
62fc1300:	04600793          	li	a5,70
62fc1304:	06400593          	li	a1,100
62fc1308:	02340413          	addi	s0,s0,35
62fc130c:	02f44433          	div	s0,s0,a5
62fc1310:	8d81                	sub	a1,a1,s0
62fc1312:	0ff5f593          	zext.b	a1,a1
62fc1316:	3bd9                	jal	62fc10ec <qcc74x_efuse_print_number>
62fc1318:	a00095b7          	lui	a1,0xa0009
62fc131c:	4615                	li	a2,5
62fc131e:	9a458593          	addi	a1,a1,-1628 # a00089a4 <__psram_limit+0xf7c089a4>
62fc1322:	84aa                	mv	s1,a0
62fc1324:	8dcff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc1328:	0ff47593          	zext.b	a1,s0
62fc132c:	00448513          	addi	a0,s1,4
62fc1330:	3b75                	jal	62fc10ec <qcc74x_efuse_print_number>
62fc1332:	a00095b7          	lui	a1,0xa0009
62fc1336:	4611                	li	a2,4
62fc1338:	9b458593          	addi	a1,a1,-1612 # a00089b4 <__psram_limit+0xf7c089b4>
62fc133c:	b709                	j	62fc123e <qcc74x_efuse_get_device_info+0x120>
62fc133e:	a00095b7          	lui	a1,0xa0009
62fc1342:	460d                	li	a2,3
62fc1344:	9b858593          	addi	a1,a1,-1608 # a00089b8 <__psram_limit+0xf7c089b8>
62fc1348:	bddd                	j	62fc123e <qcc74x_efuse_get_device_info+0x120>
	...

62fc134c <flash_cfg_GD_LQ64E>:
62fc134c:	0104 3d01 9966 03ff 009f e9b7 c804 0100     ...=f...........
62fc135c:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc136c:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc137c:	0102 01ab 3505 0000 0101 0000 ff38 ffa0     .....5......8...
62fc138c:	0377 4002 0377 f002 0bb8 0fa0 0fa0 0005     w..@w...........
62fc139c:	fde8 0003                                   ....

62fc13a0 <flash_cfg_GD_Q64E>:
62fc13a0:	0104 3f01 9966 03ff 009f e9b7 c804 0100     ...?f...........
62fc13b0:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc13c0:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc13d0:	0101 01ab 3505 0000 3101 0000 ff38 ff20     .....5...1..8. .
62fc13e0:	0377 4002 0377 f002 012c 04b0 04b0 0005     w..@w...,.......
62fc13f0:	80e8 0014                                   ....

62fc13f4 <flash_cfg_Winb_16JV>:
62fc13f4:	0104 3d01 9966 03ff 009f e9b7 ef04 0100     ...=f...........
62fc1404:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc1414:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc1424:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc1434:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc1444:	80e8 0014                                   ....

62fc1448 <flash_cfg_Winb_64JV>:
62fc1448:	0004 3f01 9966 03ff 009f e9b7 ef04 0100     ...?f...........
62fc1458:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc1468:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc1478:	0101 01ab 3505 0000 3101 0000 ff38 ffff     .....5...1..8...
62fc1488:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc1498:	80e8 0003                                   ....

62fc149c <flash_cfg_Winb_256FV>:
62fc149c:	0124 3f01 9966 03ff 009f e9b7 ef04 0100     $..?f...........
62fc14ac:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc14bc:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc14cc:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc14dc:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc14ec:	80e8 0003                                   ....

62fc14f0 <flash_cfg_Mxic_25U256>:
62fc14f0:	0124 3f01 9966 03ff 009f e9b7 c204 0100     $..?f...........
62fc1500:	20c7 d852 0206 0238 010b 010b 013b 00bb     . R...8.....;...
62fc1510:	016b 02eb 02eb 5002 0000 0100 0006 0100     k......P........
62fc1520:	0102 01ab 1505 0000 0101 0000 ff38 ffa5     ............8...
62fc1530:	00c0 0200 00c0 1000 0190 03e8 07d0 0005     ................
62fc1540:	80e8 0014                                   ....

62fc1544 <flash_cfg_Puya_Q32H>:
62fc1544:	0104 3f01 9966 03ff 009f e9b7 8504 0100     ...?f...........
62fc1554:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc1564:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc1574:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc1584:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc1594:	80e8 0008                                   ....

62fc1598 <flash_infos>:
62fc1598:	40ef 0017 0000 0000 1448 62fc 40ef 0019     .@......H..b.@..
62fc15a8:	0000 0000 149c 62fc 60ef 0017 0000 0000     .......b.`......
62fc15b8:	1448 62fc 70ef 0015 0000 0000 13f4 62fc     H..b.p.........b
62fc15c8:	40c8 0017 0000 0000 13a0 62fc 60c8 0017     .@.........b.`..
62fc15d8:	0000 0000 134c 62fc 60c8 0018 0000 0000     ....L..b.`......
62fc15e8:	134c 62fc 65c8 0018 0000 0000 13a0 62fc     L..b.e.........b
62fc15f8:	345e 0015 0000 0000 13a0 62fc 405e 0015     ^4.........b^@..
62fc1608:	0000 0000 13a0 62fc 405e 0016 0000 0000     .......b^@......
62fc1618:	13a0 62fc 405e 0017 0000 0000 13a0 62fc     ...b^@.........b
62fc1628:	405e 0018 0000 0000 13a0 62fc 605e 0015     ^@.........b^`..
62fc1638:	0000 0000 13a0 62fc 25c2 0039 0000 0000     .......b.%9.....
62fc1648:	14f0 62fc 4020 0014 0000 0000 13f4 62fc     ...b @.........b
62fc1658:	4020 0015 0000 0000 13f4 62fc 4020 0016      @.........b @..
62fc1668:	0000 0000 13f4 62fc 4020 0017 0000 0000     .......b @......
62fc1678:	13f4 62fc 4020 0018 0000 0000 13f4 62fc     ...b @.........b
62fc1688:	5020 0016 0000 0000 13f4 62fc 4220 0017      P.........b B..
62fc1698:	0000 0000 13f4 62fc 400b 0017 0000 0000     .......b.@......
62fc16a8:	134c 62fc 400b 0018 0000 0000 134c 62fc     L..b.@......L..b
62fc16b8:	6085 0017 0000 0000 1544 62fc 6085 0018     .`......D..b.`..
62fc16c8:	0000 0000 1544 62fc 2085 0014 0000 0000     ....D..b. ......
62fc16d8:	134c 62fc 2085 0015 0000 0000 134c 62fc     L..b. ......L..b
62fc16e8:	2085 0016 0000 0000 134c 62fc 2085 0017     . ......L..b. ..
62fc16f8:	0000 0000 134c 62fc 2085 0018 0000 0000     ....L..b. ......
62fc1708:	134c 62fc 2085 0019 0000 0000 134c 62fc     L..b. ......L..b
62fc1718:	40a1 0015 0000 0000 13f4 62fc 40a1 0016     .@.........b.@..
62fc1728:	0000 0000 134c 62fc 40a1 0017 0000 0000     ....L..b.@......
62fc1738:	13f4 62fc 40a1 0018 0000 0000 13f4 62fc     ...b.@.........b
62fc1748:	28a1 0018 0000 0000 13f4 62fc 60c4 0016     .(.........b.`..
62fc1758:	0000 0000 13f4 62fc 60c4 0015 0000 0000     .......b.`......
62fc1768:	13f4 62fc 60c4 0017 0000 0000 13f4 62fc     ...b.`.........b
62fc1778:	6125 0016 0000 0000 134c 62fc 65c8 0017     %a......L..b.e..
62fc1788:	0000 0000 13a0 62fc 60c4 0014 0000 0000     .......b.`......
62fc1798:	13f4 62fc                                   ...b

62fc179c <Clock_Get_AUPLL_Output>:
62fc179c:	1101                	addi	sp,sp,-32
62fc179e:	ca26                	sw	s1,20(sp)
62fc17a0:	000107a3          	sb	zero,15(sp)
62fc17a4:	84aa                	mv	s1,a0
62fc17a6:	200087b7          	lui	a5,0x20008
62fc17aa:	00f10513          	addi	a0,sp,15
62fc17ae:	cc22                	sw	s0,24(sp)
62fc17b0:	ce06                	sw	ra,28(sp)
62fc17b2:	7687a403          	lw	s0,1896(a5) # 20008768 <remain_wifi_ram+0x1ffe8768>
62fc17b6:	bfcff0ef          	jal	ra,62fc0bb2 <HBN_Get_Xtal_Type>
62fc17ba:	e121                	bnez	a0,62fc17fa <Clock_Get_AUPLL_Output+0x5e>
62fc17bc:	00f14703          	lbu	a4,15(sp)
62fc17c0:	000807b7          	lui	a5,0x80
62fc17c4:	17fd                	addi	a5,a5,-1
62fc17c6:	4691                	li	a3,4
62fc17c8:	8fe1                	and	a5,a5,s0
62fc17ca:	0cd70463          	beq	a4,a3,62fc1892 <Clock_Get_AUPLL_Output+0xf6>
62fc17ce:	02e6e063          	bltu	a3,a4,62fc17ee <Clock_Get_AUPLL_Output+0x52>
62fc17d2:	4689                	li	a3,2
62fc17d4:	0cd70763          	beq	a4,a3,62fc18a2 <Clock_Get_AUPLL_Output+0x106>
62fc17d8:	468d                	li	a3,3
62fc17da:	0ad70363          	beq	a4,a3,62fc1880 <Clock_Get_AUPLL_Output+0xe4>
62fc17de:	4685                	li	a3,1
62fc17e0:	00d70f63          	beq	a4,a3,62fc17fe <Clock_Get_AUPLL_Output+0x62>
62fc17e4:	40f2                	lw	ra,28(sp)
62fc17e6:	4462                	lw	s0,24(sp)
62fc17e8:	44d2                	lw	s1,20(sp)
62fc17ea:	6105                	addi	sp,sp,32
62fc17ec:	8082                	ret
62fc17ee:	4695                	li	a3,5
62fc17f0:	0ad70563          	beq	a4,a3,62fc189a <Clock_Get_AUPLL_Output+0xfe>
62fc17f4:	4699                	li	a3,6
62fc17f6:	0ad70663          	beq	a4,a3,62fc18a2 <Clock_Get_AUPLL_Output+0x106>
62fc17fa:	4501                	li	a0,0
62fc17fc:	b7e5                	j	62fc17e4 <Clock_Get_AUPLL_Output+0x48>
62fc17fe:	6719                	lui	a4,0x6
62fc1800:	dc070713          	addi	a4,a4,-576 # 5dc0 <HeapMinSize+0x4dc0>
62fc1804:	02e787b3          	mul	a5,a5,a4
62fc1808:	1f400713          	li	a4,500
62fc180c:	83ad                	srli	a5,a5,0xb
62fc180e:	02e787b3          	mul	a5,a5,a4
62fc1812:	e2bbf737          	lui	a4,0xe2bbf
62fc1816:	f4070713          	addi	a4,a4,-192 # e2bbef40 <__psram_limit+0x3a7bef40>
62fc181a:	000f46b7          	lui	a3,0xf4
62fc181e:	24068693          	addi	a3,a3,576 # f4240 <remain_wifi_ram+0xd4240>
62fc1822:	973e                	add	a4,a4,a5
62fc1824:	08e6f363          	bgeu	a3,a4,62fc18aa <Clock_Get_AUPLL_Output+0x10e>
62fc1828:	e51e5737          	lui	a4,0xe51e5
62fc182c:	94070713          	addi	a4,a4,-1728 # e51e4940 <__psram_limit+0x3cde4940>
62fc1830:	973e                	add	a4,a4,a5
62fc1832:	06e6ff63          	bgeu	a3,a4,62fc18b0 <Clock_Get_AUPLL_Output+0x114>
62fc1836:	e837c737          	lui	a4,0xe837c
62fc183a:	e4070713          	addi	a4,a4,-448 # e837be40 <__psram_limit+0x3ff7be40>
62fc183e:	001e86b7          	lui	a3,0x1e8
62fc1842:	973e                	add	a4,a4,a5
62fc1844:	48068693          	addi	a3,a3,1152 # 1e8480 <remain_wifi_ram+0x1c8480>
62fc1848:	06e6f963          	bgeu	a3,a4,62fc18ba <Clock_Get_AUPLL_Output+0x11e>
62fc184c:	e92be737          	lui	a4,0xe92be
62fc1850:	24070713          	addi	a4,a4,576 # e92be240 <__psram_limit+0x40ebe240>
62fc1854:	97ba                	add	a5,a5,a4
62fc1856:	4501                	li	a0,0
62fc1858:	f8f6e6e3          	bltu	a3,a5,62fc17e4 <Clock_Get_AUPLL_Output+0x48>
62fc185c:	16e36537          	lui	a0,0x16e36
62fc1860:	4791                	li	a5,4
62fc1862:	06f48c63          	beq	s1,a5,62fc18da <Clock_Get_AUPLL_Output+0x13e>
62fc1866:	0497ef63          	bltu	a5,s1,62fc18c4 <Clock_Get_AUPLL_Output+0x128>
62fc186a:	4789                	li	a5,2
62fc186c:	06f48263          	beq	s1,a5,62fc18d0 <Clock_Get_AUPLL_Output+0x134>
62fc1870:	478d                	li	a5,3
62fc1872:	04f48c63          	beq	s1,a5,62fc18ca <Clock_Get_AUPLL_Output+0x12e>
62fc1876:	4785                	li	a5,1
62fc1878:	f6f496e3          	bne	s1,a5,62fc17e4 <Clock_Get_AUPLL_Output+0x48>
62fc187c:	8105                	srli	a0,a0,0x1
62fc187e:	b79d                	j	62fc17e4 <Clock_Get_AUPLL_Output+0x48>
62fc1880:	6725                	lui	a4,0x9
62fc1882:	60070713          	addi	a4,a4,1536 # 9600 <wifi_ram_max_size+0x1600>
62fc1886:	02e787b3          	mul	a5,a5,a4
62fc188a:	0fa00713          	li	a4,250
62fc188e:	83ad                	srli	a5,a5,0xb
62fc1890:	bfbd                	j	62fc180e <Clock_Get_AUPLL_Output+0x72>
62fc1892:	6729                	lui	a4,0xa
62fc1894:	c4070713          	addi	a4,a4,-960 # 9c40 <wifi_ram_max_size+0x1c40>
62fc1898:	b7fd                	j	62fc1886 <Clock_Get_AUPLL_Output+0xea>
62fc189a:	6719                	lui	a4,0x6
62fc189c:	59070713          	addi	a4,a4,1424 # 6590 <HeapMinSize+0x5590>
62fc18a0:	b795                	j	62fc1804 <Clock_Get_AUPLL_Output+0x68>
62fc18a2:	6721                	lui	a4,0x8
62fc18a4:	d0070713          	addi	a4,a4,-768 # 7d00 <HeapMinSize+0x6d00>
62fc18a8:	bff9                	j	62fc1886 <Clock_Get_AUPLL_Output+0xea>
62fc18aa:	1d4c0537          	lui	a0,0x1d4c0
62fc18ae:	bf4d                	j	62fc1860 <Clock_Get_AUPLL_Output+0xc4>
62fc18b0:	1aea9537          	lui	a0,0x1aea9
62fc18b4:	06050513          	addi	a0,a0,96 # 1aea9060 <remain_wifi_ram+0x1ae89060>
62fc18b8:	b765                	j	62fc1860 <Clock_Get_AUPLL_Output+0xc4>
62fc18ba:	17d78537          	lui	a0,0x17d78
62fc18be:	40050513          	addi	a0,a0,1024 # 17d78400 <remain_wifi_ram+0x17d58400>
62fc18c2:	bf79                	j	62fc1860 <Clock_Get_AUPLL_Output+0xc4>
62fc18c4:	4795                	li	a5,5
62fc18c6:	00f49c63          	bne	s1,a5,62fc18de <Clock_Get_AUPLL_Output+0x142>
62fc18ca:	02955533          	divu	a0,a0,s1
62fc18ce:	bf19                	j	62fc17e4 <Clock_Get_AUPLL_Output+0x48>
62fc18d0:	0506                	slli	a0,a0,0x1
62fc18d2:	4795                	li	a5,5
62fc18d4:	02f55533          	divu	a0,a0,a5
62fc18d8:	b731                	j	62fc17e4 <Clock_Get_AUPLL_Output+0x48>
62fc18da:	8109                	srli	a0,a0,0x2
62fc18dc:	b721                	j	62fc17e4 <Clock_Get_AUPLL_Output+0x48>
62fc18de:	4799                	li	a5,6
62fc18e0:	bfd5                	j	62fc18d4 <Clock_Get_AUPLL_Output+0x138>

62fc18e2 <Clock_Get_Audio_PLL_Output>:
62fc18e2:	1141                	addi	sp,sp,-16
62fc18e4:	200087b7          	lui	a5,0x20008
62fc18e8:	c422                	sw	s0,8(sp)
62fc18ea:	7547a403          	lw	s0,1876(a5) # 20008754 <remain_wifi_ram+0x1ffe8754>
62fc18ee:	4501                	li	a0,0
62fc18f0:	c606                	sw	ra,12(sp)
62fc18f2:	07f47413          	andi	s0,s0,127
62fc18f6:	355d                	jal	62fc179c <Clock_Get_AUPLL_Output>
62fc18f8:	02855533          	divu	a0,a0,s0
62fc18fc:	40b2                	lw	ra,12(sp)
62fc18fe:	4422                	lw	s0,8(sp)
62fc1900:	0141                	addi	sp,sp,16
62fc1902:	8082                	ret

62fc1904 <Clock_160M_Clk_Mux_Output>:
62fc1904:	c10d                	beqz	a0,62fc1926 <Clock_160M_Clk_Mux_Output+0x22>
62fc1906:	4785                	li	a5,1
62fc1908:	00f51463          	bne	a0,a5,62fc1910 <Clock_160M_Clk_Mux_Output+0xc>
62fc190c:	450d                	li	a0,3
62fc190e:	b579                	j	62fc179c <Clock_Get_AUPLL_Output>
62fc1910:	4789                	li	a5,2
62fc1912:	00f51463          	bne	a0,a5,62fc191a <Clock_160M_Clk_Mux_Output+0x16>
62fc1916:	4505                	li	a0,1
62fc1918:	bfdd                	j	62fc190e <Clock_160M_Clk_Mux_Output+0xa>
62fc191a:	470d                	li	a4,3
62fc191c:	4781                	li	a5,0
62fc191e:	00e51863          	bne	a0,a4,62fc192e <Clock_160M_Clk_Mux_Output+0x2a>
62fc1922:	4509                	li	a0,2
62fc1924:	b7ed                	j	62fc190e <Clock_160M_Clk_Mux_Output+0xa>
62fc1926:	098977b7          	lui	a5,0x9897
62fc192a:	80078793          	addi	a5,a5,-2048 # 9896800 <remain_wifi_ram+0x9876800>
62fc192e:	853e                	mv	a0,a5
62fc1930:	8082                	ret

62fc1932 <Clock_Xtal_Output>:
62fc1932:	1101                	addi	sp,sp,-32
62fc1934:	00f10513          	addi	a0,sp,15
62fc1938:	ce06                	sw	ra,28(sp)
62fc193a:	000107a3          	sb	zero,15(sp)
62fc193e:	a74ff0ef          	jal	ra,62fc0bb2 <HBN_Get_Xtal_Type>
62fc1942:	ed19                	bnez	a0,62fc1960 <Clock_Xtal_Output+0x2e>
62fc1944:	00f14703          	lbu	a4,15(sp)
62fc1948:	4799                	li	a5,6
62fc194a:	00e7e863          	bltu	a5,a4,62fc195a <Clock_Xtal_Output+0x28>
62fc194e:	a00097b7          	lui	a5,0xa0009
62fc1952:	93c78793          	addi	a5,a5,-1732 # a000893c <__psram_limit+0xf7c0893c>
62fc1956:	44e7c50b          	lrw	a0,a5,a4,2
62fc195a:	40f2                	lw	ra,28(sp)
62fc195c:	6105                	addi	sp,sp,32
62fc195e:	8082                	ret
62fc1960:	02626537          	lui	a0,0x2626
62fc1964:	a0050513          	addi	a0,a0,-1536 # 2625a00 <remain_wifi_ram+0x2605a00>
62fc1968:	bfcd                	j	62fc195a <Clock_Xtal_Output+0x28>

62fc196a <Clock_F32k_Mux_Output>:
62fc196a:	200007b7          	lui	a5,0x20000
62fc196e:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
62fc1972:	4709                	li	a4,2
62fc1974:	02a77e63          	bgeu	a4,a0,62fc19b0 <Clock_F32k_Mux_Output+0x46>
62fc1978:	6505                	lui	a0,0x1
62fc197a:	8d7d                	and	a0,a0,a5
62fc197c:	cd05                	beqz	a0,62fc19b4 <Clock_F32k_Mux_Output+0x4a>
62fc197e:	1141                	addi	sp,sp,-16
62fc1980:	c422                	sw	s0,8(sp)
62fc1982:	c606                	sw	ra,12(sp)
62fc1984:	7ff7f413          	andi	s0,a5,2047
62fc1988:	75c7b78b          	extu	a5,a5,29,28
62fc198c:	eb99                	bnez	a5,62fc19a2 <Clock_F32k_Mux_Output+0x38>
62fc198e:	01e85537          	lui	a0,0x1e85
62fc1992:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc1996:	02855533          	divu	a0,a0,s0
62fc199a:	40b2                	lw	ra,12(sp)
62fc199c:	4422                	lw	s0,8(sp)
62fc199e:	0141                	addi	sp,sp,16
62fc19a0:	8082                	ret
62fc19a2:	4705                	li	a4,1
62fc19a4:	00e79463          	bne	a5,a4,62fc19ac <Clock_F32k_Mux_Output+0x42>
62fc19a8:	3769                	jal	62fc1932 <Clock_Xtal_Output>
62fc19aa:	b7f5                	j	62fc1996 <Clock_F32k_Mux_Output+0x2c>
62fc19ac:	3f1d                	jal	62fc18e2 <Clock_Get_Audio_PLL_Output>
62fc19ae:	b7e5                	j	62fc1996 <Clock_F32k_Mux_Output+0x2c>
62fc19b0:	6521                	lui	a0,0x8
62fc19b2:	8082                	ret
62fc19b4:	8082                	ret

62fc19b6 <Clock_MCU_Root_Clk_Mux_Output>:
62fc19b6:	e519                	bnez	a0,62fc19c4 <Clock_MCU_Root_Clk_Mux_Output+0xe>
62fc19b8:	2000f7b7          	lui	a5,0x2000f
62fc19bc:	5b9c                	lw	a5,48(a5)
62fc19be:	8b85                	andi	a5,a5,1
62fc19c0:	cb8d                	beqz	a5,62fc19f2 <Clock_MCU_Root_Clk_Mux_Output+0x3c>
62fc19c2:	bf85                	j	62fc1932 <Clock_Xtal_Output>
62fc19c4:	4685                	li	a3,1
62fc19c6:	4781                	li	a5,0
62fc19c8:	02d51363          	bne	a0,a3,62fc19ee <Clock_MCU_Root_Clk_Mux_Output+0x38>
62fc19cc:	2000e7b7          	lui	a5,0x2000e
62fc19d0:	1147a783          	lw	a5,276(a5) # 2000e114 <remain_wifi_ram+0x1ffee114>
62fc19d4:	1447b78b          	extu	a5,a5,5,4
62fc19d8:	e391                	bnez	a5,62fc19dc <Clock_MCU_Root_Clk_Mux_Output+0x26>
62fc19da:	b3c9                	j	62fc179c <Clock_Get_AUPLL_Output>
62fc19dc:	00a79463          	bne	a5,a0,62fc19e4 <Clock_MCU_Root_Clk_Mux_Output+0x2e>
62fc19e0:	4501                	li	a0,0
62fc19e2:	bfe5                	j	62fc19da <Clock_MCU_Root_Clk_Mux_Output+0x24>
62fc19e4:	4709                	li	a4,2
62fc19e6:	00e78b63          	beq	a5,a4,62fc19fc <Clock_MCU_Root_Clk_Mux_Output+0x46>
62fc19ea:	1312d7b7          	lui	a5,0x1312d
62fc19ee:	853e                	mv	a0,a5
62fc19f0:	8082                	ret
62fc19f2:	01e857b7          	lui	a5,0x1e85
62fc19f6:	80078793          	addi	a5,a5,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc19fa:	bfd5                	j	62fc19ee <Clock_MCU_Root_Clk_Mux_Output+0x38>
62fc19fc:	0e4e27b7          	lui	a5,0xe4e2
62fc1a00:	c0078793          	addi	a5,a5,-1024 # e4e1c00 <remain_wifi_ram+0xe4c1c00>
62fc1a04:	b7ed                	j	62fc19ee <Clock_MCU_Root_Clk_Mux_Output+0x38>

62fc1a06 <Clock_System_Clock_Get>:
62fc1a06:	4791                	li	a5,4
62fc1a08:	06f50a63          	beq	a0,a5,62fc1a7c <Clock_System_Clock_Get+0x76>
62fc1a0c:	00a7ef63          	bltu	a5,a0,62fc1a2a <Clock_System_Clock_Get+0x24>
62fc1a10:	1141                	addi	sp,sp,-16
62fc1a12:	c606                	sw	ra,12(sp)
62fc1a14:	4785                	li	a5,1
62fc1a16:	02f50a63          	beq	a0,a5,62fc1a4a <Clock_System_Clock_Get+0x44>
62fc1a1a:	478d                	li	a5,3
62fc1a1c:	04f50763          	beq	a0,a5,62fc1a6a <Clock_System_Clock_Get+0x64>
62fc1a20:	cd09                	beqz	a0,62fc1a3a <Clock_System_Clock_Get+0x34>
62fc1a22:	4501                	li	a0,0
62fc1a24:	40b2                	lw	ra,12(sp)
62fc1a26:	0141                	addi	sp,sp,16
62fc1a28:	8082                	ret
62fc1a2a:	4795                	li	a5,5
62fc1a2c:	04f50e63          	beq	a0,a5,62fc1a88 <Clock_System_Clock_Get+0x82>
62fc1a30:	4799                	li	a5,6
62fc1a32:	06f50063          	beq	a0,a5,62fc1a92 <Clock_System_Clock_Get+0x8c>
62fc1a36:	4501                	li	a0,0
62fc1a38:	8082                	ret
62fc1a3a:	2000f7b7          	lui	a5,0x2000f
62fc1a3e:	5b88                	lw	a0,48(a5)
62fc1a40:	40b2                	lw	ra,12(sp)
62fc1a42:	0415350b          	extu	a0,a0,1,1
62fc1a46:	0141                	addi	sp,sp,16
62fc1a48:	b7bd                	j	62fc19b6 <Clock_MCU_Root_Clk_Mux_Output>
62fc1a4a:	2000f7b7          	lui	a5,0x2000f
62fc1a4e:	5b88                	lw	a0,48(a5)
62fc1a50:	0415350b          	extu	a0,a0,1,1
62fc1a54:	378d                	jal	62fc19b6 <Clock_MCU_Root_Clk_Mux_Output>
62fc1a56:	200007b7          	lui	a5,0x20000
62fc1a5a:	0907a783          	lw	a5,144(a5) # 20000090 <remain_wifi_ram+0x1ffe0090>
62fc1a5e:	3c87b78b          	extu	a5,a5,15,8
62fc1a62:	0785                	addi	a5,a5,1
62fc1a64:	02f55533          	divu	a0,a0,a5
62fc1a68:	bf75                	j	62fc1a24 <Clock_System_Clock_Get+0x1e>
62fc1a6a:	4505                	li	a0,1
62fc1a6c:	3f69                	jal	62fc1a06 <Clock_System_Clock_Get>
62fc1a6e:	200007b7          	lui	a5,0x20000
62fc1a72:	0907a783          	lw	a5,144(a5) # 20000090 <remain_wifi_ram+0x1ffe0090>
62fc1a76:	5d07b78b          	extu	a5,a5,23,16
62fc1a7a:	b7e5                	j	62fc1a62 <Clock_System_Clock_Get+0x5c>
62fc1a7c:	2000f7b7          	lui	a5,0x2000f
62fc1a80:	5b88                	lw	a0,48(a5)
62fc1a82:	1035350b          	extu	a0,a0,4,3
62fc1a86:	b5d5                	j	62fc196a <Clock_F32k_Mux_Output>
62fc1a88:	2000f7b7          	lui	a5,0x2000f
62fc1a8c:	5b9c                	lw	a5,48(a5)
62fc1a8e:	8b85                	andi	a5,a5,1
62fc1a90:	c391                	beqz	a5,62fc1a94 <Clock_System_Clock_Get+0x8e>
62fc1a92:	b545                	j	62fc1932 <Clock_Xtal_Output>
62fc1a94:	01e85537          	lui	a0,0x1e85
62fc1a98:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc1a9c:	8082                	ret

62fc1a9e <CPU_Set_MTimer_CLK>:
62fc1a9e:	200097b7          	lui	a5,0x20009
62fc1aa2:	4bd8                	lw	a4,20(a5)
62fc1aa4:	e00006b7          	lui	a3,0xe0000
62fc1aa8:	16fd                	addi	a3,a3,-1
62fc1aaa:	8f75                	and	a4,a4,a3
62fc1aac:	05f6                	slli	a1,a1,0x1d
62fc1aae:	8dd9                	or	a1,a1,a4
62fc1ab0:	cbcc                	sw	a1,20(a5)
62fc1ab2:	4bd4                	lw	a3,20(a5)
62fc1ab4:	800005b7          	lui	a1,0x80000
62fc1ab8:	fff5c713          	not	a4,a1
62fc1abc:	8ef9                	and	a3,a3,a4
62fc1abe:	cbd4                	sw	a3,20(a5)
62fc1ac0:	4bd4                	lw	a3,20(a5)
62fc1ac2:	c006f693          	andi	a3,a3,-1024
62fc1ac6:	8e55                	or	a2,a2,a3
62fc1ac8:	cbd0                	sw	a2,20(a5)
62fc1aca:	4bdc                	lw	a5,20(a5)
62fc1acc:	8f7d                	and	a4,a4,a5
62fc1ace:	c119                	beqz	a0,62fc1ad4 <CPU_Set_MTimer_CLK+0x36>
62fc1ad0:	00b7e733          	or	a4,a5,a1
62fc1ad4:	200097b7          	lui	a5,0x20009
62fc1ad8:	cbd8                	sw	a4,20(a5)
62fc1ada:	4501                	li	a0,0
62fc1adc:	8082                	ret

62fc1ade <system_clock_init>:
62fc1ade:	1141                	addi	sp,sp,-16
62fc1ae0:	458d                	li	a1,3
62fc1ae2:	4511                	li	a0,4
62fc1ae4:	c606                	sw	ra,12(sp)
62fc1ae6:	868ff0ef          	jal	ra,62fc0b4e <GLB_Power_On_XTAL_And_PLL_CLK>
62fc1aea:	4515                	li	a0,5
62fc1aec:	88aff0ef          	jal	ra,62fc0b76 <GLB_Set_MCU_System_CLK>
62fc1af0:	4505                	li	a0,1
62fc1af2:	8d4ff0ef          	jal	ra,62fc0bc6 <HBN_Set_MCU_XCLK_Sel>
62fc1af6:	4515                	li	a0,5
62fc1af8:	3739                	jal	62fc1a06 <Clock_System_Clock_Get>
62fc1afa:	000f4637          	lui	a2,0xf4
62fc1afe:	24060613          	addi	a2,a2,576 # f4240 <remain_wifi_ram+0xd4240>
62fc1b02:	02c55633          	divu	a2,a0,a2
62fc1b06:	40b2                	lw	ra,12(sp)
62fc1b08:	4581                	li	a1,0
62fc1b0a:	4505                	li	a0,1
62fc1b0c:	0141                	addi	sp,sp,16
62fc1b0e:	167d                	addi	a2,a2,-1
62fc1b10:	3c06360b          	extu	a2,a2,15,0
62fc1b14:	b769                	j	62fc1a9e <CPU_Set_MTimer_CLK>
	...

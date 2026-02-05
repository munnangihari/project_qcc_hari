
/home/hari/QCCSDK-QCC74x/examples/peripherals/gpio/gpio_input_output/build/build_out/gpio_input_output_qcc743.elf:     file format elf32-littleriscv


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
a0000022:	00006517          	auipc	a0,0x6
a0000026:	39e50513          	addi	a0,a0,926 # a00063c0 <trap>
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
a0000054:	5ae060ef          	jal	ra,a0006602 <SystemInit>
a0000058:	4a4060ef          	jal	ra,a00064fc <start_load>
a000005c:	76c060ef          	jal	ra,a00067c8 <System_Post_Init>
a0000060:	5e5030ef          	jal	ra,a0003e44 <main>

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
a0000d12:	b2470713          	addi	a4,a4,-1244 # a0008b24 <__psram_limit+0xf7c08b24>
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
a0000f4e:	b2470713          	addi	a4,a4,-1244 # a0008b24 <__psram_limit+0xf7c08b24>
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
a00010ba:	b2468693          	addi	a3,a3,-1244 # a0008b24 <__psram_limit+0xf7c08b24>
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
a00012ac:	b2470713          	addi	a4,a4,-1244 # a0008b24 <__psram_limit+0xf7c08b24>
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
a0001412:	b2468693          	addi	a3,a3,-1244 # a0008b24 <__psram_limit+0xf7c08b24>
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
a0001632:	b2470713          	addi	a4,a4,-1244 # a0008b24 <__psram_limit+0xf7c08b24>
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
a0001770:	b2470713          	addi	a4,a4,-1244 # a0008b24 <__psram_limit+0xf7c08b24>
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
a0001948:	b2470713          	addi	a4,a4,-1244 # a0008b24 <__psram_limit+0xf7c08b24>
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
a000246c:	aac50513          	addi	a0,a0,-1364 # a0008aac <__psram_limit+0xf7c08aac>
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
a0002cf2:	ae860613          	addi	a2,a2,-1304 # a0008ae8 <__psram_limit+0xf7c08ae8>
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
a0003e26:	b2470793          	addi	a5,a4,-1244 # a0008b24 <__psram_limit+0xf7c08b24>
a0003e2a:	953e                	add	a0,a0,a5
a0003e2c:	00054503          	lbu	a0,0(a0)
a0003e30:	40a68533          	sub	a0,a3,a0
a0003e34:	8082                	ret
a0003e36:	01000737          	lui	a4,0x1000
a0003e3a:	47c1                	li	a5,16
a0003e3c:	fce56ee3          	bltu	a0,a4,a0003e18 <__clzsi2+0x10>
a0003e40:	47e1                	li	a5,24
a0003e42:	bfd9                	j	a0003e18 <__clzsi2+0x10>

a0003e44 <main>:
a0003e44:	1141                	addi	sp,sp,-16
a0003e46:	c606                	sw	ra,12(sp)
a0003e48:	c422                	sw	s0,8(sp)
a0003e4a:	c226                	sw	s1,4(sp)
a0003e4c:	c04a                	sw	s2,0(sp)
a0003e4e:	73e030ef          	jal	ra,a000758c <board_init>
a0003e52:	a0008537          	lui	a0,0xa0008
a0003e56:	62fc3437          	lui	s0,0x62fc3
a0003e5a:	8dc50513          	addi	a0,a0,-1828 # a00078dc <__psram_limit+0xf7c078dc>
a0003e5e:	3ae020ef          	jal	ra,a000620c <qcc74x_device_get_by_name>
a0003e62:	e6040493          	addi	s1,s0,-416 # 62fc2e60 <gpio>
a0003e66:	c088                	sw	a0,0(s1)
a0003e68:	a0008537          	lui	a0,0xa0008
a0003e6c:	8e450513          	addi	a0,a0,-1820 # a00078e4 <__psram_limit+0xf7c078e4>
a0003e70:	12f010ef          	jal	ra,a000579e <printf>
a0003e74:	4088                	lw	a0,0(s1)
a0003e76:	6905                	lui	s2,0x1
a0003e78:	a4090613          	addi	a2,s2,-1472 # a40 <__RFTLV_SIZE_HOLE+0x240>
a0003e7c:	4581                	li	a1,0
a0003e7e:	73f010ef          	jal	ra,a0005dbc <qcc74x_gpio_init>
a0003e82:	4088                	lw	a0,0(s1)
a0003e84:	a2090613          	addi	a2,s2,-1504
a0003e88:	4585                	li	a1,1
a0003e8a:	733010ef          	jal	ra,a0005dbc <qcc74x_gpio_init>
a0003e8e:	e6040413          	addi	s0,s0,-416
a0003e92:	4008                	lw	a0,0(s0)
a0003e94:	4585                	li	a1,1
a0003e96:	058020ef          	jal	ra,a0005eee <qcc74x_gpio_read>
a0003e9a:	87aa                	mv	a5,a0
a0003e9c:	4581                	li	a1,0
a0003e9e:	4008                	lw	a0,0(s0)
a0003ea0:	e781                	bnez	a5,a0003ea8 <main+0x64>
a0003ea2:	7e9010ef          	jal	ra,a0005e8a <qcc74x_gpio_set>
a0003ea6:	b7f5                	j	a0003e92 <main+0x4e>
a0003ea8:	014020ef          	jal	ra,a0005ebc <qcc74x_gpio_reset>
a0003eac:	b7dd                	j	a0003e92 <main+0x4e>

a0003eae <strcmp>:
a0003eae:	4701                	li	a4,0
a0003eb0:	80e5468b          	lrbu	a3,a0,a4,0
a0003eb4:	80e5c78b          	lrbu	a5,a1,a4,0
a0003eb8:	40f687b3          	sub	a5,a3,a5
a0003ebc:	1c07a78b          	ext	a5,a5,7,0
a0003ec0:	e399                	bnez	a5,a0003ec6 <strcmp+0x18>
a0003ec2:	0705                	addi	a4,a4,1
a0003ec4:	f6f5                	bnez	a3,a0003eb0 <strcmp+0x2>
a0003ec6:	853e                	mv	a0,a5
a0003ec8:	8082                	ret

a0003eca <memcpy>:
a0003eca:	471d                	li	a4,7
a0003ecc:	87aa                	mv	a5,a0
a0003ece:	00c506b3          	add	a3,a0,a2
a0003ed2:	08c76463          	bltu	a4,a2,a0003f5a <memcpy+0x90>
a0003ed6:	4791                	li	a5,4
a0003ed8:	06f60963          	beq	a2,a5,a0003f4a <memcpy+0x80>
a0003edc:	00c7ed63          	bltu	a5,a2,a0003ef6 <memcpy+0x2c>
a0003ee0:	4789                	li	a5,2
a0003ee2:	06f60663          	beq	a2,a5,a0003f4e <memcpy+0x84>
a0003ee6:	470d                	li	a4,3
a0003ee8:	87aa                	mv	a5,a0
a0003eea:	04e60163          	beq	a2,a4,a0003f2c <memcpy+0x62>
a0003eee:	4705                	li	a4,1
a0003ef0:	04e60663          	beq	a2,a4,a0003f3c <memcpy+0x72>
a0003ef4:	8082                	ret
a0003ef6:	4799                	li	a5,6
a0003ef8:	04f60763          	beq	a2,a5,a0003f46 <memcpy+0x7c>
a0003efc:	00e60763          	beq	a2,a4,a0003f0a <memcpy+0x40>
a0003f00:	4715                	li	a4,5
a0003f02:	87aa                	mv	a5,a0
a0003f04:	00e60c63          	beq	a2,a4,a0003f1c <memcpy+0x52>
a0003f08:	8082                	ret
a0003f0a:	9815c70b          	lbuia	a4,(a1),1,0
a0003f0e:	87aa                	mv	a5,a0
a0003f10:	1817d70b          	sbia	a4,(a5),1,0
a0003f14:	9815c70b          	lbuia	a4,(a1),1,0
a0003f18:	1817d70b          	sbia	a4,(a5),1,0
a0003f1c:	9815c70b          	lbuia	a4,(a1),1,0
a0003f20:	1817d70b          	sbia	a4,(a5),1,0
a0003f24:	9815c70b          	lbuia	a4,(a1),1,0
a0003f28:	1817d70b          	sbia	a4,(a5),1,0
a0003f2c:	9815c70b          	lbuia	a4,(a1),1,0
a0003f30:	1817d70b          	sbia	a4,(a5),1,0
a0003f34:	9815c70b          	lbuia	a4,(a1),1,0
a0003f38:	1817d70b          	sbia	a4,(a5),1,0
a0003f3c:	0005c703          	lbu	a4,0(a1) # 80000000 <__psram_limit+0xd7c00000>
a0003f40:	00e78023          	sb	a4,0(a5) # 10000 <wifi_ram_max_size+0x8000>
a0003f44:	8082                	ret
a0003f46:	87aa                	mv	a5,a0
a0003f48:	b7f1                	j	a0003f14 <memcpy+0x4a>
a0003f4a:	87aa                	mv	a5,a0
a0003f4c:	bfe1                	j	a0003f24 <memcpy+0x5a>
a0003f4e:	87aa                	mv	a5,a0
a0003f50:	b7d5                	j	a0003f34 <memcpy+0x6a>
a0003f52:	9815c70b          	lbuia	a4,(a1),1,0
a0003f56:	1817d70b          	sbia	a4,(a5),1,0
a0003f5a:	0037f713          	andi	a4,a5,3
a0003f5e:	40f68633          	sub	a2,a3,a5
a0003f62:	fb65                	bnez	a4,a0003f52 <memcpy+0x88>
a0003f64:	0035f693          	andi	a3,a1,3
a0003f68:	4809                	li	a6,2
a0003f6a:	00265713          	srli	a4,a2,0x2
a0003f6e:	1b068d63          	beq	a3,a6,a0004128 <memcpy+0x25e>
a0003f72:	480d                	li	a6,3
a0003f74:	2b068863          	beq	a3,a6,a0004224 <memcpy+0x35a>
a0003f78:	4805                	li	a6,1
a0003f7a:	05069563          	bne	a3,a6,a0003fc4 <memcpy+0xfa>
a0003f7e:	99f1                	andi	a1,a1,-4
a0003f80:	5845c80b          	lwia	a6,(a1),4,0
a0003f84:	9bf1                	andi	a5,a5,-4
a0003f86:	00777693          	andi	a3,a4,7
a0003f8a:	e2f9                	bnez	a3,a0004050 <memcpy+0x186>
a0003f8c:	830d                	srli	a4,a4,0x3
a0003f8e:	0716                	slli	a4,a4,0x5
a0003f90:	00e58e33          	add	t3,a1,a4
a0003f94:	86be                	mv	a3,a5
a0003f96:	0dc59963          	bne	a1,t3,a0004068 <memcpy+0x19e>
a0003f9a:	8a0d                	andi	a2,a2,3
a0003f9c:	4689                	li	a3,2
a0003f9e:	97ba                	add	a5,a5,a4
a0003fa0:	ffd58713          	addi	a4,a1,-3
a0003fa4:	16d60d63          	beq	a2,a3,a000411e <memcpy+0x254>
a0003fa8:	468d                	li	a3,3
a0003faa:	16d60463          	beq	a2,a3,a0004112 <memcpy+0x248>
a0003fae:	4685                	li	a3,1
a0003fb0:	f8d61ae3          	bne	a2,a3,a0003f44 <memcpy+0x7a>
a0003fb4:	00074703          	lbu	a4,0(a4) # 1000000 <remain_wifi_ram+0xfe0000>
a0003fb8:	b761                	j	a0003f40 <memcpy+0x76>
a0003fba:	5845c68b          	lwia	a3,(a1),4,0
a0003fbe:	177d                	addi	a4,a4,-1
a0003fc0:	5847d68b          	swia	a3,(a5),4,0
a0003fc4:	00777693          	andi	a3,a4,7
a0003fc8:	faed                	bnez	a3,a0003fba <memcpy+0xf0>
a0003fca:	830d                	srli	a4,a4,0x3
a0003fcc:	0716                	slli	a4,a4,0x5
a0003fce:	00e586b3          	add	a3,a1,a4
a0003fd2:	883e                	mv	a6,a5
a0003fd4:	02d59063          	bne	a1,a3,a0003ff4 <memcpy+0x12a>
a0003fd8:	97ba                	add	a5,a5,a4
a0003fda:	8a0d                	andi	a2,a2,3
a0003fdc:	4709                	li	a4,2
a0003fde:	06e60463          	beq	a2,a4,a0004046 <memcpy+0x17c>
a0003fe2:	470d                	li	a4,3
a0003fe4:	04e60d63          	beq	a2,a4,a000403e <memcpy+0x174>
a0003fe8:	4705                	li	a4,1
a0003fea:	f4e61de3          	bne	a2,a4,a0003f44 <memcpy+0x7a>
a0003fee:	0006c703          	lbu	a4,0(a3) # ff800000 <__psram_limit+0x57400000>
a0003ff2:	b7b9                	j	a0003f40 <memcpy+0x76>
a0003ff4:	0005a883          	lw	a7,0(a1)
a0003ff8:	02080813          	addi	a6,a6,32
a0003ffc:	ff182023          	sw	a7,-32(a6)
a0004000:	0045a883          	lw	a7,4(a1)
a0004004:	ff182223          	sw	a7,-28(a6)
a0004008:	0085a883          	lw	a7,8(a1)
a000400c:	ff182423          	sw	a7,-24(a6)
a0004010:	00c5a883          	lw	a7,12(a1)
a0004014:	ff182623          	sw	a7,-20(a6)
a0004018:	0105a883          	lw	a7,16(a1)
a000401c:	ff182823          	sw	a7,-16(a6)
a0004020:	0145a883          	lw	a7,20(a1)
a0004024:	ff182a23          	sw	a7,-12(a6)
a0004028:	0185a883          	lw	a7,24(a1)
a000402c:	ff182c23          	sw	a7,-8(a6)
a0004030:	01c5a883          	lw	a7,28(a1)
a0004034:	02058593          	addi	a1,a1,32
a0004038:	ff182e23          	sw	a7,-4(a6)
a000403c:	bf61                	j	a0003fd4 <memcpy+0x10a>
a000403e:	9816c70b          	lbuia	a4,(a3),1,0
a0004042:	1817d70b          	sbia	a4,(a5),1,0
a0004046:	9816c70b          	lbuia	a4,(a3),1,0
a000404a:	1817d70b          	sbia	a4,(a5),1,0
a000404e:	b745                	j	a0003fee <memcpy+0x124>
a0004050:	00885893          	srli	a7,a6,0x8
a0004054:	5845c80b          	lwia	a6,(a1),4,0
a0004058:	177d                	addi	a4,a4,-1
a000405a:	01881693          	slli	a3,a6,0x18
a000405e:	0116e6b3          	or	a3,a3,a7
a0004062:	5847d68b          	swia	a3,(a5),4,0
a0004066:	b705                	j	a0003f86 <memcpy+0xbc>
a0004068:	0005a883          	lw	a7,0(a1)
a000406c:	00885813          	srli	a6,a6,0x8
a0004070:	01889313          	slli	t1,a7,0x18
a0004074:	01036833          	or	a6,t1,a6
a0004078:	0106a023          	sw	a6,0(a3)
a000407c:	0045a803          	lw	a6,4(a1)
a0004080:	0088d893          	srli	a7,a7,0x8
a0004084:	01881313          	slli	t1,a6,0x18
a0004088:	011368b3          	or	a7,t1,a7
a000408c:	0116a223          	sw	a7,4(a3)
a0004090:	00885893          	srli	a7,a6,0x8
a0004094:	0085a803          	lw	a6,8(a1)
a0004098:	01881313          	slli	t1,a6,0x18
a000409c:	011368b3          	or	a7,t1,a7
a00040a0:	0116a423          	sw	a7,8(a3)
a00040a4:	00885893          	srli	a7,a6,0x8
a00040a8:	00c5a803          	lw	a6,12(a1)
a00040ac:	01881313          	slli	t1,a6,0x18
a00040b0:	011368b3          	or	a7,t1,a7
a00040b4:	0116a623          	sw	a7,12(a3)
a00040b8:	00885893          	srli	a7,a6,0x8
a00040bc:	0105a803          	lw	a6,16(a1)
a00040c0:	01881313          	slli	t1,a6,0x18
a00040c4:	011368b3          	or	a7,t1,a7
a00040c8:	0116a823          	sw	a7,16(a3)
a00040cc:	00885893          	srli	a7,a6,0x8
a00040d0:	0145a803          	lw	a6,20(a1)
a00040d4:	01881313          	slli	t1,a6,0x18
a00040d8:	011368b3          	or	a7,t1,a7
a00040dc:	0116aa23          	sw	a7,20(a3)
a00040e0:	00885893          	srli	a7,a6,0x8
a00040e4:	0185a803          	lw	a6,24(a1)
a00040e8:	01881313          	slli	t1,a6,0x18
a00040ec:	011368b3          	or	a7,t1,a7
a00040f0:	0116ac23          	sw	a7,24(a3)
a00040f4:	00885893          	srli	a7,a6,0x8
a00040f8:	01c5a803          	lw	a6,28(a1)
a00040fc:	02058593          	addi	a1,a1,32
a0004100:	01881313          	slli	t1,a6,0x18
a0004104:	011368b3          	or	a7,t1,a7
a0004108:	0116ae23          	sw	a7,28(a3)
a000410c:	02068693          	addi	a3,a3,32
a0004110:	b559                	j	a0003f96 <memcpy+0xcc>
a0004112:	ffd5c683          	lbu	a3,-3(a1)
a0004116:	ffe58713          	addi	a4,a1,-2
a000411a:	1817d68b          	sbia	a3,(a5),1,0
a000411e:	9817468b          	lbuia	a3,(a4),1,0
a0004122:	1817d68b          	sbia	a3,(a5),1,0
a0004126:	b579                	j	a0003fb4 <memcpy+0xea>
a0004128:	99f1                	andi	a1,a1,-4
a000412a:	5845c80b          	lwia	a6,(a1),4,0
a000412e:	9bf1                	andi	a5,a5,-4
a0004130:	00777693          	andi	a3,a4,7
a0004134:	e69d                	bnez	a3,a0004162 <memcpy+0x298>
a0004136:	830d                	srli	a4,a4,0x3
a0004138:	0716                	slli	a4,a4,0x5
a000413a:	00e58e33          	add	t3,a1,a4
a000413e:	86be                	mv	a3,a5
a0004140:	03c59d63          	bne	a1,t3,a000417a <memcpy+0x2b0>
a0004144:	8a0d                	andi	a2,a2,3
a0004146:	4689                	li	a3,2
a0004148:	97ba                	add	a5,a5,a4
a000414a:	ffe58713          	addi	a4,a1,-2
a000414e:	fcd608e3          	beq	a2,a3,a000411e <memcpy+0x254>
a0004152:	468d                	li	a3,3
a0004154:	e4d61de3          	bne	a2,a3,a0003fae <memcpy+0xe4>
a0004158:	ffe5c683          	lbu	a3,-2(a1)
a000415c:	fff58713          	addi	a4,a1,-1
a0004160:	bf6d                	j	a000411a <memcpy+0x250>
a0004162:	01085893          	srli	a7,a6,0x10
a0004166:	5845c80b          	lwia	a6,(a1),4,0
a000416a:	177d                	addi	a4,a4,-1
a000416c:	01081693          	slli	a3,a6,0x10
a0004170:	0116e6b3          	or	a3,a3,a7
a0004174:	5847d68b          	swia	a3,(a5),4,0
a0004178:	bf65                	j	a0004130 <memcpy+0x266>
a000417a:	0005a883          	lw	a7,0(a1)
a000417e:	01085813          	srli	a6,a6,0x10
a0004182:	01089313          	slli	t1,a7,0x10
a0004186:	01036833          	or	a6,t1,a6
a000418a:	0106a023          	sw	a6,0(a3)
a000418e:	0045a803          	lw	a6,4(a1)
a0004192:	0108d893          	srli	a7,a7,0x10
a0004196:	01081313          	slli	t1,a6,0x10
a000419a:	011368b3          	or	a7,t1,a7
a000419e:	0116a223          	sw	a7,4(a3)
a00041a2:	01085893          	srli	a7,a6,0x10
a00041a6:	0085a803          	lw	a6,8(a1)
a00041aa:	01081313          	slli	t1,a6,0x10
a00041ae:	011368b3          	or	a7,t1,a7
a00041b2:	0116a423          	sw	a7,8(a3)
a00041b6:	01085893          	srli	a7,a6,0x10
a00041ba:	00c5a803          	lw	a6,12(a1)
a00041be:	01081313          	slli	t1,a6,0x10
a00041c2:	011368b3          	or	a7,t1,a7
a00041c6:	0116a623          	sw	a7,12(a3)
a00041ca:	01085893          	srli	a7,a6,0x10
a00041ce:	0105a803          	lw	a6,16(a1)
a00041d2:	01081313          	slli	t1,a6,0x10
a00041d6:	011368b3          	or	a7,t1,a7
a00041da:	0116a823          	sw	a7,16(a3)
a00041de:	01085893          	srli	a7,a6,0x10
a00041e2:	0145a803          	lw	a6,20(a1)
a00041e6:	01081313          	slli	t1,a6,0x10
a00041ea:	011368b3          	or	a7,t1,a7
a00041ee:	0116aa23          	sw	a7,20(a3)
a00041f2:	01085893          	srli	a7,a6,0x10
a00041f6:	0185a803          	lw	a6,24(a1)
a00041fa:	01081313          	slli	t1,a6,0x10
a00041fe:	011368b3          	or	a7,t1,a7
a0004202:	0116ac23          	sw	a7,24(a3)
a0004206:	01085893          	srli	a7,a6,0x10
a000420a:	01c5a803          	lw	a6,28(a1)
a000420e:	02058593          	addi	a1,a1,32
a0004212:	01081313          	slli	t1,a6,0x10
a0004216:	011368b3          	or	a7,t1,a7
a000421a:	0116ae23          	sw	a7,28(a3)
a000421e:	02068693          	addi	a3,a3,32
a0004222:	bf39                	j	a0004140 <memcpy+0x276>
a0004224:	99f1                	andi	a1,a1,-4
a0004226:	5845c80b          	lwia	a6,(a1),4,0
a000422a:	9bf1                	andi	a5,a5,-4
a000422c:	00777693          	andi	a3,a4,7
a0004230:	ea85                	bnez	a3,a0004260 <memcpy+0x396>
a0004232:	830d                	srli	a4,a4,0x3
a0004234:	0716                	slli	a4,a4,0x5
a0004236:	00e58e33          	add	t3,a1,a4
a000423a:	86be                	mv	a3,a5
a000423c:	03c59e63          	bne	a1,t3,a0004278 <memcpy+0x3ae>
a0004240:	8a0d                	andi	a2,a2,3
a0004242:	4689                	li	a3,2
a0004244:	97ba                	add	a5,a5,a4
a0004246:	fff58713          	addi	a4,a1,-1
a000424a:	ecd60ae3          	beq	a2,a3,a000411e <memcpy+0x254>
a000424e:	468d                	li	a3,3
a0004250:	d4d61fe3          	bne	a2,a3,a0003fae <memcpy+0xe4>
a0004254:	fff5c703          	lbu	a4,-1(a1)
a0004258:	1817d70b          	sbia	a4,(a5),1,0
a000425c:	872e                	mv	a4,a1
a000425e:	b5c1                	j	a000411e <memcpy+0x254>
a0004260:	01885893          	srli	a7,a6,0x18
a0004264:	5845c80b          	lwia	a6,(a1),4,0
a0004268:	177d                	addi	a4,a4,-1
a000426a:	00881693          	slli	a3,a6,0x8
a000426e:	0116e6b3          	or	a3,a3,a7
a0004272:	5847d68b          	swia	a3,(a5),4,0
a0004276:	bf5d                	j	a000422c <memcpy+0x362>
a0004278:	0005a883          	lw	a7,0(a1)
a000427c:	01885813          	srli	a6,a6,0x18
a0004280:	00889313          	slli	t1,a7,0x8
a0004284:	01036833          	or	a6,t1,a6
a0004288:	0106a023          	sw	a6,0(a3)
a000428c:	0045a803          	lw	a6,4(a1)
a0004290:	0188d893          	srli	a7,a7,0x18
a0004294:	00881313          	slli	t1,a6,0x8
a0004298:	011368b3          	or	a7,t1,a7
a000429c:	0116a223          	sw	a7,4(a3)
a00042a0:	01885893          	srli	a7,a6,0x18
a00042a4:	0085a803          	lw	a6,8(a1)
a00042a8:	00881313          	slli	t1,a6,0x8
a00042ac:	011368b3          	or	a7,t1,a7
a00042b0:	0116a423          	sw	a7,8(a3)
a00042b4:	01885893          	srli	a7,a6,0x18
a00042b8:	00c5a803          	lw	a6,12(a1)
a00042bc:	00881313          	slli	t1,a6,0x8
a00042c0:	011368b3          	or	a7,t1,a7
a00042c4:	0116a623          	sw	a7,12(a3)
a00042c8:	01885893          	srli	a7,a6,0x18
a00042cc:	0105a803          	lw	a6,16(a1)
a00042d0:	00881313          	slli	t1,a6,0x8
a00042d4:	011368b3          	or	a7,t1,a7
a00042d8:	0116a823          	sw	a7,16(a3)
a00042dc:	01885893          	srli	a7,a6,0x18
a00042e0:	0145a803          	lw	a6,20(a1)
a00042e4:	00881313          	slli	t1,a6,0x8
a00042e8:	011368b3          	or	a7,t1,a7
a00042ec:	0116aa23          	sw	a7,20(a3)
a00042f0:	01885893          	srli	a7,a6,0x18
a00042f4:	0185a803          	lw	a6,24(a1)
a00042f8:	00881313          	slli	t1,a6,0x8
a00042fc:	011368b3          	or	a7,t1,a7
a0004300:	0116ac23          	sw	a7,24(a3)
a0004304:	01885893          	srli	a7,a6,0x18
a0004308:	01c5a803          	lw	a6,28(a1)
a000430c:	02058593          	addi	a1,a1,32
a0004310:	00881313          	slli	t1,a6,0x8
a0004314:	011368b3          	or	a7,t1,a7
a0004318:	0116ae23          	sw	a7,28(a3)
a000431c:	02068693          	addi	a3,a3,32
a0004320:	bf31                	j	a000423c <memcpy+0x372>

a0004322 <out_discard>:
a0004322:	8082                	ret

a0004324 <out_rev_>:
a0004324:	7179                	addi	sp,sp,-48
a0004326:	d422                	sw	s0,40(sp)
a0004328:	d226                	sw	s1,36(sp)
a000432a:	d04a                	sw	s2,32(sp)
a000432c:	ce4e                	sw	s3,28(sp)
a000432e:	cc52                	sw	s4,24(sp)
a0004330:	ca56                	sw	s5,20(sp)
a0004332:	c85a                	sw	s6,16(sp)
a0004334:	c65e                	sw	s7,12(sp)
a0004336:	c462                	sw	s8,8(sp)
a0004338:	84be                	mv	s1,a5
a000433a:	d606                	sw	ra,44(sp)
a000433c:	c266                	sw	s9,4(sp)
a000433e:	0038f793          	andi	a5,a7,3
a0004342:	8aaa                	mv	s5,a0
a0004344:	8b2e                	mv	s6,a1
a0004346:	8932                	mv	s2,a2
a0004348:	8bb6                	mv	s7,a3
a000434a:	8c3a                	mv	s8,a4
a000434c:	89c2                	mv	s3,a6
a000434e:	8a46                	mv	s4,a7
a0004350:	8432                	mv	s0,a2
a0004352:	e78d                	bnez	a5,a000437c <out_rev_+0x58>
a0004354:	8426                	mv	s0,s1
a0004356:	40960cb3          	sub	s9,a2,s1
a000435a:	a039                	j	a0004368 <out_rev_+0x44>
a000435c:	86de                	mv	a3,s7
a000435e:	85da                	mv	a1,s6
a0004360:	02000513          	li	a0,32
a0004364:	9a82                	jalr	s5
a0004366:	0405                	addi	s0,s0,1
a0004368:	008c8633          	add	a2,s9,s0
a000436c:	ff3468e3          	bltu	s0,s3,a000435c <out_rev_+0x38>
a0004370:	4401                	li	s0,0
a0004372:	0099e463          	bltu	s3,s1,a000437a <out_rev_+0x56>
a0004376:	40998433          	sub	s0,s3,s1
a000437a:	944a                	add	s0,s0,s2
a000437c:	9426                	add	s0,s0,s1
a000437e:	8522                	mv	a0,s0
a0004380:	40940633          	sub	a2,s0,s1
a0004384:	e485                	bnez	s1,a00043ac <out_rev_+0x88>
a0004386:	002a7a13          	andi	s4,s4,2
a000438a:	41240433          	sub	s0,s0,s2
a000438e:	020a1d63          	bnez	s4,a00043c8 <out_rev_+0xa4>
a0004392:	50b2                	lw	ra,44(sp)
a0004394:	5422                	lw	s0,40(sp)
a0004396:	5492                	lw	s1,36(sp)
a0004398:	5902                	lw	s2,32(sp)
a000439a:	49f2                	lw	s3,28(sp)
a000439c:	4a62                	lw	s4,24(sp)
a000439e:	4ad2                	lw	s5,20(sp)
a00043a0:	4b42                	lw	s6,16(sp)
a00043a2:	4bb2                	lw	s7,12(sp)
a00043a4:	4c22                	lw	s8,8(sp)
a00043a6:	4c92                	lw	s9,4(sp)
a00043a8:	6145                	addi	sp,sp,48
a00043aa:	8082                	ret
a00043ac:	14fd                	addi	s1,s1,-1
a00043ae:	809c450b          	lrbu	a0,s8,s1,0
a00043b2:	86de                	mv	a3,s7
a00043b4:	85da                	mv	a1,s6
a00043b6:	9a82                	jalr	s5
a00043b8:	b7d9                	j	a000437e <out_rev_+0x5a>
a00043ba:	862a                	mv	a2,a0
a00043bc:	86de                	mv	a3,s7
a00043be:	85da                	mv	a1,s6
a00043c0:	02000513          	li	a0,32
a00043c4:	9a82                	jalr	s5
a00043c6:	0405                	addi	s0,s0,1
a00043c8:	00890533          	add	a0,s2,s0
a00043cc:	ff3467e3          	bltu	s0,s3,a00043ba <out_rev_+0x96>
a00043d0:	b7c9                	j	a0004392 <out_rev_+0x6e>

a00043d2 <print_integer>:
a00043d2:	7159                	addi	sp,sp,-112
a00043d4:	d4a2                	sw	s0,104(sp)
a00043d6:	d0ca                	sw	s2,96(sp)
a00043d8:	cece                	sw	s3,92(sp)
a00043da:	ccd2                	sw	s4,88(sp)
a00043dc:	cad6                	sw	s5,84(sp)
a00043de:	c8da                	sw	s6,80(sp)
a00043e0:	c6de                	sw	s7,76(sp)
a00043e2:	d686                	sw	ra,108(sp)
a00043e4:	8bb6                	mv	s7,a3
a00043e6:	d2a6                	sw	s1,100(sp)
a00043e8:	c4e2                	sw	s8,72(sp)
a00043ea:	c2e6                	sw	s9,68(sp)
a00043ec:	c0ea                	sw	s10,64(sp)
a00043ee:	de6e                	sw	s11,60(sp)
a00043f0:	00f766b3          	or	a3,a4,a5
a00043f4:	8b32                	mv	s6,a2
a00043f6:	59d6                	lw	s3,116(sp)
a00043f8:	5466                	lw	s0,120(sp)
a00043fa:	8a2a                	mv	s4,a0
a00043fc:	8aae                	mv	s5,a1
a00043fe:	8942                	mv	s2,a6
a0004400:	8646                	mv	a2,a7
a0004402:	e6a9                	bnez	a3,a000444c <print_integer+0x7a>
a0004404:	40047793          	andi	a5,s0,1024
a0004408:	ef85                	bnez	a5,a0004440 <print_integer+0x6e>
a000440a:	03000793          	li	a5,48
a000440e:	00f10823          	sb	a5,16(sp)
a0004412:	983d                	andi	s0,s0,-17
a0004414:	4d85                	li	s11,1
a0004416:	00247713          	andi	a4,s0,2
a000441a:	87ee                	mv	a5,s11
a000441c:	ef4d                	bnez	a4,a00044d6 <print_integer+0x104>
a000441e:	00147713          	andi	a4,s0,1
a0004422:	00098963          	beqz	s3,a0004434 <print_integer+0x62>
a0004426:	cb45                	beqz	a4,a00044d6 <print_integer+0x104>
a0004428:	00091563          	bnez	s2,a0004432 <print_integer+0x60>
a000442c:	00c47793          	andi	a5,s0,12
a0004430:	c391                	beqz	a5,a0004434 <print_integer+0x62>
a0004432:	19fd                	addi	s3,s3,-1
a0004434:	87ee                	mv	a5,s11
a0004436:	02000693          	li	a3,32
a000443a:	03000593          	li	a1,48
a000443e:	a079                	j	a00044cc <print_integer+0xfa>
a0004440:	47c1                	li	a5,16
a0004442:	4d81                	li	s11,0
a0004444:	fcf899e3          	bne	a7,a5,a0004416 <print_integer+0x44>
a0004448:	983d                	andi	s0,s0,-17
a000444a:	b7f1                	j	a0004416 <print_integer+0x44>
a000444c:	02047693          	andi	a3,s0,32
a0004450:	06100493          	li	s1,97
a0004454:	c299                	beqz	a3,a000445a <print_integer+0x88>
a0004456:	04100493          	li	s1,65
a000445a:	4d81                	li	s11,0
a000445c:	4d01                	li	s10,0
a000445e:	4ca5                	li	s9,9
a0004460:	14d9                	addi	s1,s1,-10
a0004462:	02000c13          	li	s8,32
a0004466:	853a                	mv	a0,a4
a0004468:	85be                	mv	a1,a5
a000446a:	4681                	li	a3,0
a000446c:	c632                	sw	a2,12(sp)
a000446e:	c43a                	sw	a4,8(sp)
a0004470:	c23e                	sw	a5,4(sp)
a0004472:	aeefd0ef          	jal	ra,a0001760 <__umoddi3>
a0004476:	0ff57513          	zext.b	a0,a0
a000447a:	4792                	lw	a5,4(sp)
a000447c:	4722                	lw	a4,8(sp)
a000447e:	4632                	lw	a2,12(sp)
a0004480:	04ace063          	bltu	s9,a0,a00044c0 <print_integer+0xee>
a0004484:	03050513          	addi	a0,a0,48
a0004488:	0d85                	addi	s11,s11,1
a000448a:	010d8693          	addi	a3,s11,16
a000448e:	0ff57513          	zext.b	a0,a0
a0004492:	968a                	add	a3,a3,sp
a0004494:	fea68fa3          	sb	a0,-1(a3)
a0004498:	85be                	mv	a1,a5
a000449a:	853a                	mv	a0,a4
a000449c:	4681                	li	a3,0
a000449e:	c632                	sw	a2,12(sp)
a00044a0:	c43a                	sw	a4,8(sp)
a00044a2:	c23e                	sw	a5,4(sp)
a00044a4:	f5dfc0ef          	jal	ra,a0001400 <__udivdi3>
a00044a8:	4792                	lw	a5,4(sp)
a00044aa:	4722                	lw	a4,8(sp)
a00044ac:	4632                	lw	a2,12(sp)
a00044ae:	00fd1463          	bne	s10,a5,a00044b6 <print_integer+0xe4>
a00044b2:	f6c762e3          	bltu	a4,a2,a0004416 <print_integer+0x44>
a00044b6:	f78d80e3          	beq	s11,s8,a0004416 <print_integer+0x44>
a00044ba:	872a                	mv	a4,a0
a00044bc:	87ae                	mv	a5,a1
a00044be:	b765                	j	a0004466 <print_integer+0x94>
a00044c0:	9526                	add	a0,a0,s1
a00044c2:	b7d9                	j	a0004488 <print_integer+0xb6>
a00044c4:	0808                	addi	a0,sp,16
a00044c6:	00f5558b          	srb	a1,a0,a5,0
a00044ca:	0785                	addi	a5,a5,1
a00044cc:	c709                	beqz	a4,a00044d6 <print_integer+0x104>
a00044ce:	0137f463          	bgeu	a5,s3,a00044d6 <print_integer+0x104>
a00044d2:	fed799e3          	bne	a5,a3,a00044c4 <print_integer+0xf2>
a00044d6:	02000713          	li	a4,32
a00044da:	03000693          	li	a3,48
a00044de:	a029                	j	a00044e8 <print_integer+0x116>
a00044e0:	080c                	addi	a1,sp,16
a00044e2:	00f5d68b          	srb	a3,a1,a5,0
a00044e6:	0785                	addi	a5,a5,1
a00044e8:	55c6                	lw	a1,112(sp)
a00044ea:	00b7f463          	bgeu	a5,a1,a00044f2 <print_integer+0x120>
a00044ee:	fee799e3          	bne	a5,a4,a00044e0 <print_integer+0x10e>
a00044f2:	4721                	li	a4,8
a00044f4:	00e61563          	bne	a2,a4,a00044fe <print_integer+0x12c>
a00044f8:	00fdf363          	bgeu	s11,a5,a00044fe <print_integer+0x12c>
a00044fc:	983d                	andi	s0,s0,-17
a00044fe:	6705                	lui	a4,0x1
a0004500:	0741                	addi	a4,a4,16
a0004502:	8f61                	and	a4,a4,s0
a0004504:	cb39                	beqz	a4,a000455a <print_integer+0x188>
a0004506:	40047713          	andi	a4,s0,1024
a000450a:	e345                	bnez	a4,a00045aa <print_integer+0x1d8>
a000450c:	cfd9                	beqz	a5,a00045aa <print_integer+0x1d8>
a000450e:	5746                	lw	a4,112(sp)
a0004510:	00f70463          	beq	a4,a5,a0004518 <print_integer+0x146>
a0004514:	08f99b63          	bne	s3,a5,a00045aa <print_integer+0x1d8>
a0004518:	08fdf963          	bgeu	s11,a5,a00045aa <print_integer+0x1d8>
a000451c:	fff78713          	addi	a4,a5,-1
a0004520:	c741                	beqz	a4,a00045a8 <print_integer+0x1d6>
a0004522:	46c1                	li	a3,16
a0004524:	08d61763          	bne	a2,a3,a00045b2 <print_integer+0x1e0>
a0004528:	17f9                	addi	a5,a5,-2
a000452a:	00ede363          	bltu	s11,a4,a0004530 <print_integer+0x15e>
a000452e:	87ba                	mv	a5,a4
a0004530:	02047713          	andi	a4,s0,32
a0004534:	eb49                	bnez	a4,a00045c6 <print_integer+0x1f4>
a0004536:	477d                	li	a4,31
a0004538:	04f76163          	bltu	a4,a5,a000457a <print_integer+0x1a8>
a000453c:	07800713          	li	a4,120
a0004540:	0814                	addi	a3,sp,16
a0004542:	00f6d70b          	srb	a4,a3,a5,0
a0004546:	0785                	addi	a5,a5,1
a0004548:	477d                	li	a4,31
a000454a:	02f76863          	bltu	a4,a5,a000457a <print_integer+0x1a8>
a000454e:	03000713          	li	a4,48
a0004552:	0814                	addi	a3,sp,16
a0004554:	00f6d70b          	srb	a4,a3,a5,0
a0004558:	0785                	addi	a5,a5,1
a000455a:	477d                	li	a4,31
a000455c:	00f76f63          	bltu	a4,a5,a000457a <print_integer+0x1a8>
a0004560:	02d00713          	li	a4,45
a0004564:	00091763          	bnez	s2,a0004572 <print_integer+0x1a0>
a0004568:	00447713          	andi	a4,s0,4
a000456c:	c33d                	beqz	a4,a00045d2 <print_integer+0x200>
a000456e:	02b00713          	li	a4,43
a0004572:	0814                	addi	a3,sp,16
a0004574:	00f6d70b          	srb	a4,a3,a5,0
a0004578:	0785                	addi	a5,a5,1
a000457a:	88a2                	mv	a7,s0
a000457c:	884e                	mv	a6,s3
a000457e:	0818                	addi	a4,sp,16
a0004580:	86de                	mv	a3,s7
a0004582:	865a                	mv	a2,s6
a0004584:	85d6                	mv	a1,s5
a0004586:	8552                	mv	a0,s4
a0004588:	3b71                	jal	a0004324 <out_rev_>
a000458a:	50b6                	lw	ra,108(sp)
a000458c:	5426                	lw	s0,104(sp)
a000458e:	5496                	lw	s1,100(sp)
a0004590:	5906                	lw	s2,96(sp)
a0004592:	49f6                	lw	s3,92(sp)
a0004594:	4a66                	lw	s4,88(sp)
a0004596:	4ad6                	lw	s5,84(sp)
a0004598:	4b46                	lw	s6,80(sp)
a000459a:	4bb6                	lw	s7,76(sp)
a000459c:	4c26                	lw	s8,72(sp)
a000459e:	4c96                	lw	s9,68(sp)
a00045a0:	4d06                	lw	s10,64(sp)
a00045a2:	5df2                	lw	s11,60(sp)
a00045a4:	6165                	addi	sp,sp,112
a00045a6:	8082                	ret
a00045a8:	4781                	li	a5,0
a00045aa:	4741                	li	a4,16
a00045ac:	00e61463          	bne	a2,a4,a00045b4 <print_integer+0x1e2>
a00045b0:	b741                	j	a0004530 <print_integer+0x15e>
a00045b2:	87ba                	mv	a5,a4
a00045b4:	4709                	li	a4,2
a00045b6:	f8e619e3          	bne	a2,a4,a0004548 <print_integer+0x176>
a00045ba:	477d                	li	a4,31
a00045bc:	faf76fe3          	bltu	a4,a5,a000457a <print_integer+0x1a8>
a00045c0:	06200713          	li	a4,98
a00045c4:	bfb5                	j	a0004540 <print_integer+0x16e>
a00045c6:	477d                	li	a4,31
a00045c8:	faf769e3          	bltu	a4,a5,a000457a <print_integer+0x1a8>
a00045cc:	05800713          	li	a4,88
a00045d0:	bf85                	j	a0004540 <print_integer+0x16e>
a00045d2:	00847713          	andi	a4,s0,8
a00045d6:	d355                	beqz	a4,a000457a <print_integer+0x1a8>
a00045d8:	02000713          	li	a4,32
a00045dc:	bf59                	j	a0004572 <print_integer+0x1a0>

a00045de <get_components>:
a00045de:	715d                	addi	sp,sp,-80
a00045e0:	01f65793          	srli	a5,a2,0x1f
a00045e4:	dc52                	sw	s4,56(sp)
a00045e6:	da56                	sw	s5,52(sp)
a00045e8:	d462                	sw	s8,40(sp)
a00045ea:	d266                	sw	s9,36(sp)
a00045ec:	c686                	sw	ra,76(sp)
a00045ee:	c4a2                	sw	s0,72(sp)
a00045f0:	c2a6                	sw	s1,68(sp)
a00045f2:	c0ca                	sw	s2,64(sp)
a00045f4:	de4e                	sw	s3,60(sp)
a00045f6:	d85a                	sw	s6,48(sp)
a00045f8:	d65e                	sw	s7,44(sp)
a00045fa:	d06a                	sw	s10,32(sp)
a00045fc:	ce6e                	sw	s11,28(sp)
a00045fe:	c03e                	sw	a5,0(sp)
a0004600:	8aaa                	mv	s5,a0
a0004602:	8c2e                	mv	s8,a1
a0004604:	8a32                	mv	s4,a2
a0004606:	8cb6                	mv	s9,a3
a0004608:	c789                	beqz	a5,a0004612 <get_components+0x34>
a000460a:	800007b7          	lui	a5,0x80000
a000460e:	00c7ca33          	xor	s4,a5,a2
a0004612:	8562                	mv	a0,s8
a0004614:	85d2                	mv	a1,s4
a0004616:	d32ff0ef          	jal	ra,a0003b48 <__fixdfdi>
a000461a:	a00087b7          	lui	a5,0xa0008
a000461e:	9a878793          	addi	a5,a5,-1624 # a00079a8 <__psram_limit+0xf7c079a8>
a0004622:	0797978b          	addsl	a5,a5,s9,3
a0004626:	0007ab03          	lw	s6,0(a5)
a000462a:	0047ab83          	lw	s7,4(a5)
a000462e:	892a                	mv	s2,a0
a0004630:	89ae                	mv	s3,a1
a0004632:	e1aff0ef          	jal	ra,a0003c4c <__floatdidf>
a0004636:	862a                	mv	a2,a0
a0004638:	86ae                	mv	a3,a1
a000463a:	8562                	mv	a0,s8
a000463c:	85d2                	mv	a1,s4
a000463e:	b2dfe0ef          	jal	ra,a000316a <__subdf3>
a0004642:	865a                	mv	a2,s6
a0004644:	86de                	mv	a3,s7
a0004646:	d8afe0ef          	jal	ra,a0002bd0 <__muldf3>
a000464a:	8d2a                	mv	s10,a0
a000464c:	8dae                	mv	s11,a1
a000464e:	cfaff0ef          	jal	ra,a0003b48 <__fixdfdi>
a0004652:	842a                	mv	s0,a0
a0004654:	84ae                	mv	s1,a1
a0004656:	df6ff0ef          	jal	ra,a0003c4c <__floatdidf>
a000465a:	862a                	mv	a2,a0
a000465c:	86ae                	mv	a3,a1
a000465e:	856a                	mv	a0,s10
a0004660:	85ee                	mv	a1,s11
a0004662:	b09fe0ef          	jal	ra,a000316a <__subdf3>
a0004666:	a0008837          	lui	a6,0xa0008
a000466a:	92082d03          	lw	s10,-1760(a6) # a0007920 <__psram_limit+0xf7c07920>
a000466e:	92482d83          	lw	s11,-1756(a6)
a0004672:	c42a                	sw	a0,8(sp)
a0004674:	866a                	mv	a2,s10
a0004676:	86ee                	mv	a3,s11
a0004678:	c62e                	sw	a1,12(sp)
a000467a:	bfafe0ef          	jal	ra,a0002a74 <__gedf2>
a000467e:	a0008837          	lui	a6,0xa0008
a0004682:	c242                	sw	a6,4(sp)
a0004684:	4722                	lw	a4,8(sp)
a0004686:	47b2                	lw	a5,12(sp)
a0004688:	0aa05963          	blez	a0,a000473a <get_components+0x15c>
a000468c:	4d05                	li	s10,1
a000468e:	4d81                	li	s11,0
a0004690:	c1a41477          	add64	s0,s0,s10
a0004694:	8522                	mv	a0,s0
a0004696:	85a6                	mv	a1,s1
a0004698:	db4ff0ef          	jal	ra,a0003c4c <__floatdidf>
a000469c:	862a                	mv	a2,a0
a000469e:	86ae                	mv	a3,a1
a00046a0:	855a                	mv	a0,s6
a00046a2:	85de                	mv	a1,s7
a00046a4:	c7efe0ef          	jal	ra,a0002b22 <__ledf2>
a00046a8:	00a04663          	bgtz	a0,a00046b4 <get_components+0xd6>
a00046ac:	c1a91977          	add64	s2,s2,s10
a00046b0:	4401                	li	s0,0
a00046b2:	4481                	li	s1,0
a00046b4:	040c9863          	bnez	s9,a0004704 <get_components+0x126>
a00046b8:	854a                	mv	a0,s2
a00046ba:	85ce                	mv	a1,s3
a00046bc:	d90ff0ef          	jal	ra,a0003c4c <__floatdidf>
a00046c0:	862a                	mv	a2,a0
a00046c2:	86ae                	mv	a3,a1
a00046c4:	8562                	mv	a0,s8
a00046c6:	85d2                	mv	a1,s4
a00046c8:	aa3fe0ef          	jal	ra,a000316a <__subdf3>
a00046cc:	4792                	lw	a5,4(sp)
a00046ce:	8c2a                	mv	s8,a0
a00046d0:	8cae                	mv	s9,a1
a00046d2:	9207ab03          	lw	s6,-1760(a5)
a00046d6:	9247ab83          	lw	s7,-1756(a5)
a00046da:	865a                	mv	a2,s6
a00046dc:	86de                	mv	a3,s7
a00046de:	c44fe0ef          	jal	ra,a0002b22 <__ledf2>
a00046e2:	00055a63          	bgez	a0,a00046f6 <get_components+0x118>
a00046e6:	865a                	mv	a2,s6
a00046e8:	86de                	mv	a3,s7
a00046ea:	8562                	mv	a0,s8
a00046ec:	85e6                	mv	a1,s9
a00046ee:	b86fe0ef          	jal	ra,a0002a74 <__gedf2>
a00046f2:	00a05963          	blez	a0,a0004704 <get_components+0x126>
a00046f6:	00197793          	andi	a5,s2,1
a00046fa:	c789                	beqz	a5,a0004704 <get_components+0x126>
a00046fc:	4705                	li	a4,1
a00046fe:	4781                	li	a5,0
a0004700:	c0e91977          	add64	s2,s2,a4
a0004704:	4782                	lw	a5,0(sp)
a0004706:	008aa423          	sw	s0,8(s5)
a000470a:	40b6                	lw	ra,76(sp)
a000470c:	4426                	lw	s0,72(sp)
a000470e:	012aa023          	sw	s2,0(s5)
a0004712:	013aa223          	sw	s3,4(s5)
a0004716:	009aa623          	sw	s1,12(s5)
a000471a:	00fa8823          	sb	a5,16(s5)
a000471e:	4496                	lw	s1,68(sp)
a0004720:	4906                	lw	s2,64(sp)
a0004722:	59f2                	lw	s3,60(sp)
a0004724:	5a62                	lw	s4,56(sp)
a0004726:	5b42                	lw	s6,48(sp)
a0004728:	5bb2                	lw	s7,44(sp)
a000472a:	5c22                	lw	s8,40(sp)
a000472c:	5c92                	lw	s9,36(sp)
a000472e:	5d02                	lw	s10,32(sp)
a0004730:	4df2                	lw	s11,28(sp)
a0004732:	8556                	mv	a0,s5
a0004734:	5ad2                	lw	s5,52(sp)
a0004736:	6161                	addi	sp,sp,80
a0004738:	8082                	ret
a000473a:	866a                	mv	a2,s10
a000473c:	86ee                	mv	a3,s11
a000473e:	853a                	mv	a0,a4
a0004740:	85be                	mv	a1,a5
a0004742:	a8efe0ef          	jal	ra,a00029d0 <__eqdf2>
a0004746:	f53d                	bnez	a0,a00046b4 <get_components+0xd6>
a0004748:	009467b3          	or	a5,s0,s1
a000474c:	c781                	beqz	a5,a0004754 <get_components+0x176>
a000474e:	00147793          	andi	a5,s0,1
a0004752:	d3ad                	beqz	a5,a00046b4 <get_components+0xd6>
a0004754:	4705                	li	a4,1
a0004756:	4781                	li	a5,0
a0004758:	c0e41477          	add64	s0,s0,a4
a000475c:	bfa1                	j	a00046b4 <get_components+0xd6>

a000475e <out_console>:
a000475e:	62fc37b7          	lui	a5,0x62fc3
a0004762:	85aa                	mv	a1,a0
a0004764:	e647a503          	lw	a0,-412(a5) # 62fc2e64 <console>
a0004768:	c2fbc317          	auipc	t1,0xc2fbc
a000476c:	00430067          	jr	4(t1) # 62fc076c <qcc74x_uart_putchar>

a0004770 <print_broken_up_decimal.isra.0>:
a0004770:	715d                	addi	sp,sp,-80
a0004772:	d266                	sw	s9,36(sp)
a0004774:	4cd6                	lw	s9,84(sp)
a0004776:	c4a2                	sw	s0,72(sp)
a0004778:	c0ca                	sw	s2,64(sp)
a000477a:	dc52                	sw	s4,56(sp)
a000477c:	da56                	sw	s5,52(sp)
a000477e:	d85a                	sw	s6,48(sp)
a0004780:	d65e                	sw	s7,44(sp)
a0004782:	d462                	sw	s8,40(sp)
a0004784:	d06a                	sw	s10,32(sp)
a0004786:	c686                	sw	ra,76(sp)
a0004788:	c2a6                	sw	s1,68(sp)
a000478a:	de4e                	sw	s3,60(sp)
a000478c:	ce6e                	sw	s11,28(sp)
a000478e:	c23e                	sw	a5,4(sp)
a0004790:	c442                	sw	a6,8(sp)
a0004792:	c646                	sw	a7,12(sp)
a0004794:	4d46                	lw	s10,80(sp)
a0004796:	4be6                	lw	s7,88(sp)
a0004798:	4c76                	lw	s8,92(sp)
a000479a:	5906                	lw	s2,96(sp)
a000479c:	5416                	lw	s0,100(sp)
a000479e:	8a2a                	mv	s4,a0
a00047a0:	8aae                	mv	s5,a1
a00047a2:	8b3a                	mv	s6,a4
a00047a4:	0a0c8563          	beqz	s9,a000484e <print_broken_up_decimal.isra.0+0xde>
a00047a8:	6705                	lui	a4,0x1
a00047aa:	81070713          	addi	a4,a4,-2032 # 810 <__RFTLV_SIZE_HOLE+0x10>
a00047ae:	00ec7733          	and	a4,s8,a4
a00047b2:	80070713          	addi	a4,a4,-2048
a00047b6:	89b2                	mv	s3,a2
a00047b8:	84b6                	mv	s1,a3
a00047ba:	14071a63          	bnez	a4,a000490e <print_broken_up_decimal.isra.0+0x19e>
a00047be:	00d04463          	bgtz	a3,a00047c6 <print_broken_up_decimal.isra.0+0x56>
a00047c2:	e2d5                	bnez	a3,a0004866 <print_broken_up_decimal.isra.0+0xf6>
a00047c4:	c24d                	beqz	a2,a0004866 <print_broken_up_decimal.isra.0+0xf6>
a00047c6:	4629                	li	a2,10
a00047c8:	4681                	li	a3,0
a00047ca:	854e                	mv	a0,s3
a00047cc:	85a6                	mv	a1,s1
a00047ce:	8affc0ef          	jal	ra,a000107c <__moddi3>
a00047d2:	8d4d                	or	a0,a0,a1
a00047d4:	12051a63          	bnez	a0,a0004908 <print_broken_up_decimal.isra.0+0x198>
a00047d8:	854e                	mv	a0,s3
a00047da:	85a6                	mv	a1,s1
a00047dc:	4629                	li	a2,10
a00047de:	4681                	li	a3,0
a00047e0:	cf4fc0ef          	jal	ra,a0000cd4 <__divdi3>
a00047e4:	1cfd                	addi	s9,s9,-1
a00047e6:	89aa                	mv	s3,a0
a00047e8:	84ae                	mv	s1,a1
a00047ea:	bff1                	j	a00047c6 <print_broken_up_decimal.isra.0+0x56>
a00047ec:	4629                	li	a2,10
a00047ee:	4681                	li	a3,0
a00047f0:	854e                	mv	a0,s3
a00047f2:	85a6                	mv	a1,s1
a00047f4:	889fc0ef          	jal	ra,a000107c <__moddi3>
a00047f8:	03050513          	addi	a0,a0,48
a00047fc:	0405                	addi	s0,s0,1
a00047fe:	008dd50b          	srb	a0,s11,s0,0
a0004802:	85a6                	mv	a1,s1
a0004804:	854e                	mv	a0,s3
a0004806:	4629                	li	a2,10
a0004808:	4681                	li	a3,0
a000480a:	ccafc0ef          	jal	ra,a0000cd4 <__divdi3>
a000480e:	84ae                	mv	s1,a1
a0004810:	8dc9                	or	a1,a1,a0
a0004812:	1cfd                	addi	s9,s9,-1
a0004814:	89aa                	mv	s3,a0
a0004816:	02000713          	li	a4,32
a000481a:	0e059e63          	bnez	a1,a0004916 <print_broken_up_decimal.isra.0+0x1a6>
a000481e:	008c87b3          	add	a5,s9,s0
a0004822:	02000613          	li	a2,32
a0004826:	03000593          	li	a1,48
a000482a:	0ec40863          	beq	s0,a2,a000491a <print_broken_up_decimal.isra.0+0x1aa>
a000482e:	00140713          	addi	a4,s0,1
a0004832:	008906b3          	add	a3,s2,s0
a0004836:	00879863          	bne	a5,s0,a0004846 <print_broken_up_decimal.isra.0+0xd6>
a000483a:	02e00793          	li	a5,46
a000483e:	00f68023          	sb	a5,0(a3)
a0004842:	843a                	mv	s0,a4
a0004844:	a00d                	j	a0004866 <print_broken_up_decimal.isra.0+0xf6>
a0004846:	0089558b          	srb	a1,s2,s0,0
a000484a:	843a                	mv	s0,a4
a000484c:	bff9                	j	a000482a <print_broken_up_decimal.isra.0+0xba>
a000484e:	010c7793          	andi	a5,s8,16
a0004852:	cb91                	beqz	a5,a0004866 <print_broken_up_decimal.isra.0+0xf6>
a0004854:	02000793          	li	a5,32
a0004858:	0cf40163          	beq	s0,a5,a000491a <print_broken_up_decimal.isra.0+0x1aa>
a000485c:	02e00793          	li	a5,46
a0004860:	0089578b          	srb	a5,s2,s0,0
a0004864:	0405                	addi	s0,s0,1
a0004866:	02000993          	li	s3,32
a000486a:	fff90493          	addi	s1,s2,-1
a000486e:	a035                	j	a000489a <print_broken_up_decimal.isra.0+0x12a>
a0004870:	4629                	li	a2,10
a0004872:	4681                	li	a3,0
a0004874:	8552                	mv	a0,s4
a0004876:	85d6                	mv	a1,s5
a0004878:	805fc0ef          	jal	ra,a000107c <__moddi3>
a000487c:	03050513          	addi	a0,a0,48
a0004880:	0405                	addi	s0,s0,1
a0004882:	0084d50b          	srb	a0,s1,s0,0
a0004886:	85d6                	mv	a1,s5
a0004888:	8552                	mv	a0,s4
a000488a:	4629                	li	a2,10
a000488c:	4681                	li	a3,0
a000488e:	c46fc0ef          	jal	ra,a0000cd4 <__divdi3>
a0004892:	8aae                	mv	s5,a1
a0004894:	8dc9                	or	a1,a1,a0
a0004896:	8a2a                	mv	s4,a0
a0004898:	c1d9                	beqz	a1,a000491e <print_broken_up_decimal.isra.0+0x1ae>
a000489a:	fd341be3          	bne	s0,s3,a0004870 <print_broken_up_decimal.isra.0+0x100>
a000489e:	a8b5                	j	a000491a <print_broken_up_decimal.isra.0+0x1aa>
a00048a0:	0089570b          	srb	a4,s2,s0,0
a00048a4:	0405                	addi	s0,s0,1
a00048a6:	03747b63          	bgeu	s0,s7,a00048dc <print_broken_up_decimal.isra.0+0x16c>
a00048aa:	fef41be3          	bne	s0,a5,a00048a0 <print_broken_up_decimal.isra.0+0x130>
a00048ae:	87a2                	mv	a5,s0
a00048b0:	4426                	lw	s0,72(sp)
a00048b2:	4632                	lw	a2,12(sp)
a00048b4:	45a2                	lw	a1,8(sp)
a00048b6:	4512                	lw	a0,4(sp)
a00048b8:	40b6                	lw	ra,76(sp)
a00048ba:	4496                	lw	s1,68(sp)
a00048bc:	59f2                	lw	s3,60(sp)
a00048be:	5a62                	lw	s4,56(sp)
a00048c0:	5ad2                	lw	s5,52(sp)
a00048c2:	5b42                	lw	s6,48(sp)
a00048c4:	5c92                	lw	s9,36(sp)
a00048c6:	4df2                	lw	s11,28(sp)
a00048c8:	88e2                	mv	a7,s8
a00048ca:	885e                	mv	a6,s7
a00048cc:	5c22                	lw	s8,40(sp)
a00048ce:	5bb2                	lw	s7,44(sp)
a00048d0:	874a                	mv	a4,s2
a00048d2:	86ea                	mv	a3,s10
a00048d4:	4906                	lw	s2,64(sp)
a00048d6:	5d02                	lw	s10,32(sp)
a00048d8:	6161                	addi	sp,sp,80
a00048da:	b4a9                	j	a0004324 <out_rev_>
a00048dc:	02000793          	li	a5,32
a00048e0:	fcf407e3          	beq	s0,a5,a00048ae <print_broken_up_decimal.isra.0+0x13e>
a00048e4:	000b0863          	beqz	s6,a00048f4 <print_broken_up_decimal.isra.0+0x184>
a00048e8:	02d00793          	li	a5,45
a00048ec:	0089578b          	srb	a5,s2,s0,0
a00048f0:	0405                	addi	s0,s0,1
a00048f2:	bf75                	j	a00048ae <print_broken_up_decimal.isra.0+0x13e>
a00048f4:	004c7713          	andi	a4,s8,4
a00048f8:	c701                	beqz	a4,a0004900 <print_broken_up_decimal.isra.0+0x190>
a00048fa:	02b00793          	li	a5,43
a00048fe:	b7fd                	j	a00048ec <print_broken_up_decimal.isra.0+0x17c>
a0004900:	008c7713          	andi	a4,s8,8
a0004904:	d74d                	beqz	a4,a00048ae <print_broken_up_decimal.isra.0+0x13e>
a0004906:	b7dd                	j	a00048ec <print_broken_up_decimal.isra.0+0x17c>
a0004908:	0099e733          	or	a4,s3,s1
a000490c:	df29                	beqz	a4,a0004866 <print_broken_up_decimal.isra.0+0xf6>
a000490e:	02000713          	li	a4,32
a0004912:	fff90d93          	addi	s11,s2,-1
a0004916:	ece41be3          	bne	s0,a4,a00047ec <print_broken_up_decimal.isra.0+0x7c>
a000491a:	02000413          	li	s0,32
a000491e:	003c7793          	andi	a5,s8,3
a0004922:	4705                	li	a4,1
a0004924:	fae79ce3          	bne	a5,a4,a00048dc <print_broken_up_decimal.isra.0+0x16c>
a0004928:	fa0b8ae3          	beqz	s7,a00048dc <print_broken_up_decimal.isra.0+0x16c>
a000492c:	000b1563          	bnez	s6,a0004936 <print_broken_up_decimal.isra.0+0x1c6>
a0004930:	00cc7793          	andi	a5,s8,12
a0004934:	c391                	beqz	a5,a0004938 <print_broken_up_decimal.isra.0+0x1c8>
a0004936:	1bfd                	addi	s7,s7,-1
a0004938:	02000793          	li	a5,32
a000493c:	03000713          	li	a4,48
a0004940:	b79d                	j	a00048a6 <print_broken_up_decimal.isra.0+0x136>

a0004942 <update_normalization>:
a0004942:	0085c783          	lbu	a5,8(a1)
a0004946:	1141                	addi	sp,sp,-16
a0004948:	c422                	sw	s0,8(sp)
a000494a:	c606                	sw	ra,12(sp)
a000494c:	842a                	mv	s0,a0
a000494e:	0005a303          	lw	t1,0(a1)
a0004952:	0045a803          	lw	a6,4(a1)
a0004956:	88b2                	mv	a7,a2
a0004958:	8536                	mv	a0,a3
a000495a:	c799                	beqz	a5,a0004968 <update_normalization+0x26>
a000495c:	851a                	mv	a0,t1
a000495e:	85c2                	mv	a1,a6
a0004960:	a70fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004964:	4785                	li	a5,1
a0004966:	a815                	j	a000499a <update_normalization+0x58>
a0004968:	7948378b          	extu	a5,a6,30,20
a000496c:	c0178793          	addi	a5,a5,-1023
a0004970:	41f7d713          	srai	a4,a5,0x1f
a0004974:	8fb9                	xor	a5,a5,a4
a0004976:	40e78733          	sub	a4,a5,a4
a000497a:	7946b78b          	extu	a5,a3,30,20
a000497e:	c0178793          	addi	a5,a5,-1023
a0004982:	41f7d693          	srai	a3,a5,0x1f
a0004986:	8fb5                	xor	a5,a5,a3
a0004988:	8f95                	sub	a5,a5,a3
a000498a:	02e7d163          	bge	a5,a4,a00049ac <update_normalization+0x6a>
a000498e:	86aa                	mv	a3,a0
a0004990:	85c2                	mv	a1,a6
a0004992:	851a                	mv	a0,t1
a0004994:	9b5fd0ef          	jal	ra,a0002348 <__divdf3>
a0004998:	4781                	li	a5,0
a000499a:	c008                	sw	a0,0(s0)
a000499c:	40b2                	lw	ra,12(sp)
a000499e:	c04c                	sw	a1,4(s0)
a00049a0:	00f40423          	sb	a5,8(s0)
a00049a4:	8522                	mv	a0,s0
a00049a6:	4422                	lw	s0,8(sp)
a00049a8:	0141                	addi	sp,sp,16
a00049aa:	8082                	ret
a00049ac:	87aa                	mv	a5,a0
a00049ae:	861a                	mv	a2,t1
a00049b0:	86c2                	mv	a3,a6
a00049b2:	8546                	mv	a0,a7
a00049b4:	85be                	mv	a1,a5
a00049b6:	993fd0ef          	jal	ra,a0002348 <__divdf3>
a00049ba:	b76d                	j	a0004964 <update_normalization+0x22>

a00049bc <print_exponential_number>:
a00049bc:	7155                	addi	sp,sp,-208
a00049be:	d95a                	sw	s6,176(sp)
a00049c0:	8b3e                	mv	s6,a5
a00049c2:	83fd                	srli	a5,a5,0x1f
a00049c4:	c3a6                	sw	s1,196(sp)
a00049c6:	c1ca                	sw	s2,192(sp)
a00049c8:	d75e                	sw	s7,172(sp)
a00049ca:	d16a                	sw	s10,160(sp)
a00049cc:	cf6e                	sw	s11,156(sp)
a00049ce:	c786                	sw	ra,204(sp)
a00049d0:	c5a2                	sw	s0,200(sp)
a00049d2:	df4e                	sw	s3,188(sp)
a00049d4:	dd52                	sw	s4,184(sp)
a00049d6:	db56                	sw	s5,180(sp)
a00049d8:	d562                	sw	s8,168(sp)
a00049da:	d366                	sw	s9,164(sp)
a00049dc:	d62e                	sw	a1,44(sp)
a00049de:	da32                	sw	a2,52(sp)
a00049e0:	d836                	sw	a3,48(sp)
a00049e2:	dc46                	sw	a7,56(sp)
a00049e4:	de3e                	sw	a5,60(sp)
a00049e6:	4dce                	lw	s11,208(sp)
a00049e8:	8d2a                	mv	s10,a0
a00049ea:	8bba                	mv	s7,a4
a00049ec:	84c2                	mv	s1,a6
a00049ee:	4901                	li	s2,0
a00049f0:	c789                	beqz	a5,a00049fa <print_exponential_number+0x3e>
a00049f2:	800007b7          	lui	a5,0x80000
a00049f6:	0167cb33          	xor	s6,a5,s6
a00049fa:	4601                	li	a2,0
a00049fc:	4681                	li	a3,0
a00049fe:	855e                	mv	a0,s7
a0004a00:	85da                	mv	a1,s6
a0004a02:	fcffd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004a06:	4401                	li	s0,0
a0004a08:	20050363          	beqz	a0,a0004c0e <print_exponential_number+0x252>
a0004a0c:	794b350b          	extu	a0,s6,30,20
a0004a10:	c0150513          	addi	a0,a0,-1023
a0004a14:	8ceff0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004a18:	a00087b7          	lui	a5,0xa0008
a0004a1c:	9287a603          	lw	a2,-1752(a5) # a0007928 <__psram_limit+0xf7c07928>
a0004a20:	92c7a683          	lw	a3,-1748(a5)
a0004a24:	a0008c37          	lui	s8,0xa0008
a0004a28:	9a8fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004a2c:	a00087b7          	lui	a5,0xa0008
a0004a30:	9307a603          	lw	a2,-1744(a5) # a0007930 <__psram_limit+0xf7c07930>
a0004a34:	9347a683          	lw	a3,-1740(a5)
a0004a38:	866fd0ef          	jal	ra,a0001a9e <__adddf3>
a0004a3c:	001007b7          	lui	a5,0x100
a0004a40:	a0008737          	lui	a4,0xa0008
a0004a44:	17fd                	addi	a5,a5,-1
a0004a46:	93872603          	lw	a2,-1736(a4) # a0007938 <__psram_limit+0xf7c07938>
a0004a4a:	93c72683          	lw	a3,-1732(a4)
a0004a4e:	00fb77b3          	and	a5,s6,a5
a0004a52:	3ff00737          	lui	a4,0x3ff00
a0004a56:	8f5d                	or	a4,a4,a5
a0004a58:	892a                	mv	s2,a0
a0004a5a:	89ae                	mv	s3,a1
a0004a5c:	855e                	mv	a0,s7
a0004a5e:	85ba                	mv	a1,a4
a0004a60:	f0afe0ef          	jal	ra,a000316a <__subdf3>
a0004a64:	a00087b7          	lui	a5,0xa0008
a0004a68:	9407a603          	lw	a2,-1728(a5) # a0007940 <__psram_limit+0xf7c07940>
a0004a6c:	9447a683          	lw	a3,-1724(a5)
a0004a70:	960fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004a74:	862a                	mv	a2,a0
a0004a76:	86ae                	mv	a3,a1
a0004a78:	854a                	mv	a0,s2
a0004a7a:	85ce                	mv	a1,s3
a0004a7c:	822fd0ef          	jal	ra,a0001a9e <__adddf3>
a0004a80:	f9ffe0ef          	jal	ra,a0003a1e <__fixdfsi>
a0004a84:	842a                	mv	s0,a0
a0004a86:	85cff0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004a8a:	a00087b7          	lui	a5,0xa0008
a0004a8e:	9487a603          	lw	a2,-1720(a5) # a0007948 <__psram_limit+0xf7c07948>
a0004a92:	94c7a683          	lw	a3,-1716(a5)
a0004a96:	892a                	mv	s2,a0
a0004a98:	89ae                	mv	s3,a1
a0004a9a:	936fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004a9e:	a00087b7          	lui	a5,0xa0008
a0004aa2:	9207a603          	lw	a2,-1760(a5) # a0007920 <__psram_limit+0xf7c07920>
a0004aa6:	9247a683          	lw	a3,-1756(a5)
a0004aaa:	ff5fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004aae:	f71fe0ef          	jal	ra,a0003a1e <__fixdfsi>
a0004ab2:	a00087b7          	lui	a5,0xa0008
a0004ab6:	9507a603          	lw	a2,-1712(a5) # a0007950 <__psram_limit+0xf7c07950>
a0004aba:	9547a683          	lw	a3,-1708(a5)
a0004abe:	8caa                	mv	s9,a0
a0004ac0:	85ce                	mv	a1,s3
a0004ac2:	854a                	mv	a0,s2
a0004ac4:	90cfe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004ac8:	892a                	mv	s2,a0
a0004aca:	8566                	mv	a0,s9
a0004acc:	89ae                	mv	s3,a1
a0004ace:	814ff0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004ad2:	a00087b7          	lui	a5,0xa0008
a0004ad6:	9587a603          	lw	a2,-1704(a5) # a0007958 <__psram_limit+0xf7c07958>
a0004ada:	95c7a683          	lw	a3,-1700(a5)
a0004ade:	8f2fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004ae2:	862a                	mv	a2,a0
a0004ae4:	86ae                	mv	a3,a1
a0004ae6:	854a                	mv	a0,s2
a0004ae8:	85ce                	mv	a1,s3
a0004aea:	e80fe0ef          	jal	ra,a000316a <__subdf3>
a0004aee:	862a                	mv	a2,a0
a0004af0:	86ae                	mv	a3,a1
a0004af2:	8a2a                	mv	s4,a0
a0004af4:	8aae                	mv	s5,a1
a0004af6:	8dafe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004afa:	892a                	mv	s2,a0
a0004afc:	89ae                	mv	s3,a1
a0004afe:	8652                	mv	a2,s4
a0004b00:	86d6                	mv	a3,s5
a0004b02:	8552                	mv	a0,s4
a0004b04:	85d6                	mv	a1,s5
a0004b06:	f99fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b0a:	a00086b7          	lui	a3,0xa0008
a0004b0e:	9606a603          	lw	a2,-1696(a3) # a0007960 <__psram_limit+0xf7c07960>
a0004b12:	9646a683          	lw	a3,-1692(a3)
a0004b16:	c0aa                	sw	a0,64(sp)
a0004b18:	c2ae                	sw	a1,68(sp)
a0004b1a:	854a                	mv	a0,s2
a0004b1c:	85ce                	mv	a1,s3
a0004b1e:	82bfd0ef          	jal	ra,a0002348 <__divdf3>
a0004b22:	968c2603          	lw	a2,-1688(s8) # a0007968 <__psram_limit+0xf7c07968>
a0004b26:	96cc2683          	lw	a3,-1684(s8)
a0004b2a:	f75fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b2e:	862a                	mv	a2,a0
a0004b30:	86ae                	mv	a3,a1
a0004b32:	854a                	mv	a0,s2
a0004b34:	85ce                	mv	a1,s3
a0004b36:	813fd0ef          	jal	ra,a0002348 <__divdf3>
a0004b3a:	a00086b7          	lui	a3,0xa0008
a0004b3e:	9706a603          	lw	a2,-1680(a3) # a0007970 <__psram_limit+0xf7c07970>
a0004b42:	9746a683          	lw	a3,-1676(a3)
a0004b46:	f59fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b4a:	862a                	mv	a2,a0
a0004b4c:	86ae                	mv	a3,a1
a0004b4e:	854a                	mv	a0,s2
a0004b50:	85ce                	mv	a1,s3
a0004b52:	ff6fd0ef          	jal	ra,a0002348 <__divdf3>
a0004b56:	89ae                	mv	s3,a1
a0004b58:	a00085b7          	lui	a1,0xa0008
a0004b5c:	892a                	mv	s2,a0
a0004b5e:	9785a503          	lw	a0,-1672(a1) # a0007978 <__psram_limit+0xf7c07978>
a0004b62:	97c5a583          	lw	a1,-1668(a1)
a0004b66:	8652                	mv	a2,s4
a0004b68:	86d6                	mv	a3,s5
a0004b6a:	e00fe0ef          	jal	ra,a000316a <__subdf3>
a0004b6e:	862a                	mv	a2,a0
a0004b70:	86ae                	mv	a3,a1
a0004b72:	854a                	mv	a0,s2
a0004b74:	85ce                	mv	a1,s3
a0004b76:	f29fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b7a:	4706                	lw	a4,64(sp)
a0004b7c:	4796                	lw	a5,68(sp)
a0004b7e:	862a                	mv	a2,a0
a0004b80:	86ae                	mv	a3,a1
a0004b82:	853a                	mv	a0,a4
a0004b84:	85be                	mv	a1,a5
a0004b86:	fc2fd0ef          	jal	ra,a0002348 <__divdf3>
a0004b8a:	a00087b7          	lui	a5,0xa0008
a0004b8e:	9807a603          	lw	a2,-1664(a5) # a0007980 <__psram_limit+0xf7c07980>
a0004b92:	9847a683          	lw	a3,-1660(a5)
a0004b96:	f09fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b9a:	3ff00613          	li	a2,1023
a0004b9e:	4681                	li	a3,0
a0004ba0:	8766                	mv	a4,s9
a0004ba2:	41fcd793          	srai	a5,s9,0x1f
a0004ba6:	c0c71777          	add64	a4,a4,a2
a0004baa:	4801                	li	a6,0
a0004bac:	01471893          	slli	a7,a4,0x14
a0004bb0:	8642                	mv	a2,a6
a0004bb2:	86c6                	mv	a3,a7
a0004bb4:	81cfe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004bb8:	865e                	mv	a2,s7
a0004bba:	86da                	mv	a3,s6
a0004bbc:	8a2a                	mv	s4,a0
a0004bbe:	8aae                	mv	s5,a1
a0004bc0:	eb5fd0ef          	jal	ra,a0002a74 <__gedf2>
a0004bc4:	00a05d63          	blez	a0,a0004bde <print_exponential_number+0x222>
a0004bc8:	968c2603          	lw	a2,-1688(s8)
a0004bcc:	96cc2683          	lw	a3,-1684(s8)
a0004bd0:	8552                	mv	a0,s4
a0004bd2:	85d6                	mv	a1,s5
a0004bd4:	f74fd0ef          	jal	ra,a0002348 <__divdf3>
a0004bd8:	147d                	addi	s0,s0,-1
a0004bda:	8a2a                	mv	s4,a0
a0004bdc:	8aae                	mv	s5,a1
a0004bde:	01140793          	addi	a5,s0,17
a0004be2:	02200713          	li	a4,34
a0004be6:	0237b913          	sltiu	s2,a5,35
a0004bea:	02f76263          	bltu	a4,a5,a0004c0e <print_exponential_number+0x252>
a0004bee:	41f45713          	srai	a4,s0,0x1f
a0004bf2:	008747b3          	xor	a5,a4,s0
a0004bf6:	40e78733          	sub	a4,a5,a4
a0004bfa:	a00087b7          	lui	a5,0xa0008
a0004bfe:	9a878793          	addi	a5,a5,-1624 # a00079a8 <__psram_limit+0xf7c079a8>
a0004c02:	06e7978b          	addsl	a5,a5,a4,3
a0004c06:	0007aa03          	lw	s4,0(a5)
a0004c0a:	0047aa83          	lw	s5,4(a5)
a0004c0e:	2cbdb78b          	extu	a5,s11,11,11
a0004c12:	30078463          	beqz	a5,a0004f1a <print_exponential_number+0x55e>
a0004c16:	5771                	li	a4,-4
a0004c18:	fff48793          	addi	a5,s1,-1
a0004c1c:	4c01                	li	s8,0
a0004c1e:	00e44963          	blt	s0,a4,a0004c30 <print_exponential_number+0x274>
a0004c22:	e091                	bnez	s1,a0004c26 <print_exponential_number+0x26a>
a0004c24:	4485                	li	s1,1
a0004c26:	4c01                	li	s8,0
a0004c28:	00945463          	bge	s0,s1,a0004c30 <print_exponential_number+0x274>
a0004c2c:	8f81                	sub	a5,a5,s0
a0004c2e:	4c05                	li	s8,1
a0004c30:	84be                	mv	s1,a5
a0004c32:	0007d363          	bgez	a5,a0004c38 <print_exponential_number+0x27c>
a0004c36:	4481                	li	s1,0
a0004c38:	400ded93          	ori	s11,s11,1024
a0004c3c:	00045963          	bgez	s0,a0004c4e <print_exponential_number+0x292>
a0004c40:	4c85                	li	s9,1
a0004c42:	00091363          	bnez	s2,a0004c48 <print_exponential_number+0x28c>
a0004c46:	4c81                	li	s9,0
a0004c48:	000c1763          	bnez	s8,a0004c56 <print_exponential_number+0x29a>
a0004c4c:	a085                	j	a0004cac <print_exponential_number+0x2f0>
a0004c4e:	000c1463          	bnez	s8,a0004c56 <print_exponential_number+0x29a>
a0004c52:	ec21                	bnez	s0,a0004caa <print_exponential_number+0x2ee>
a0004c54:	4c01                	li	s8,0
a0004c56:	57f2                	lw	a5,60(sp)
a0004c58:	c789                	beqz	a5,a0004c62 <print_exponential_number+0x2a6>
a0004c5a:	800007b7          	lui	a5,0x80000
a0004c5e:	0167cb33          	xor	s6,a5,s6
a0004c62:	86a6                	mv	a3,s1
a0004c64:	85de                	mv	a1,s7
a0004c66:	865a                	mv	a2,s6
a0004c68:	18a8                	addi	a0,sp,120
a0004c6a:	3a95                	jal	a00045de <get_components>
a0004c6c:	08814783          	lbu	a5,136(sp)
a0004c70:	4a0a                	lw	s4,128(sp)
a0004c72:	4a9a                	lw	s5,132(sp)
a0004c74:	de3e                	sw	a5,60(sp)
a0004c76:	5966                	lw	s2,120(sp)
a0004c78:	59f6                	lw	s3,124(sp)
a0004c7a:	180c1463          	bnez	s8,a0004e02 <print_exponential_number+0x446>
a0004c7e:	01304763          	bgtz	s3,a0004c8c <print_exponential_number+0x2d0>
a0004c82:	00099a63          	bnez	s3,a0004c96 <print_exponential_number+0x2da>
a0004c86:	47a5                	li	a5,9
a0004c88:	0127f763          	bgeu	a5,s2,a0004c96 <print_exponential_number+0x2da>
a0004c8c:	0405                	addi	s0,s0,1
a0004c8e:	4a01                	li	s4,0
a0004c90:	4a81                	li	s5,0
a0004c92:	4905                	li	s2,1
a0004c94:	4981                	li	s3,0
a0004c96:	06340793          	addi	a5,s0,99
a0004c9a:	0c600713          	li	a4,198
a0004c9e:	4c01                	li	s8,0
a0004ca0:	4b95                	li	s7,5
a0004ca2:	18f76e63          	bltu	a4,a5,a0004e3e <print_exponential_number+0x482>
a0004ca6:	4b91                	li	s7,4
a0004ca8:	aa59                	j	a0004e3e <print_exponential_number+0x482>
a0004caa:	4c81                	li	s9,0
a0004cac:	d4d2                	sw	s4,104(sp)
a0004cae:	d6d6                	sw	s5,108(sp)
a0004cb0:	07910823          	sb	s9,112(sp)
a0004cb4:	8652                	mv	a2,s4
a0004cb6:	86d6                	mv	a3,s5
a0004cb8:	855e                	mv	a0,s7
a0004cba:	85da                	mv	a1,s6
a0004cbc:	0a0c8a63          	beqz	s9,a0004d70 <print_exponential_number+0x3b4>
a0004cc0:	f11fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004cc4:	e85fe0ef          	jal	ra,a0003b48 <__fixdfdi>
a0004cc8:	892a                	mv	s2,a0
a0004cca:	89ae                	mv	s3,a1
a0004ccc:	f81fe0ef          	jal	ra,a0003c4c <__floatdidf>
a0004cd0:	862a                	mv	a2,a0
a0004cd2:	86ae                	mv	a3,a1
a0004cd4:	0a0c8163          	beqz	s9,a0004d76 <print_exponential_number+0x3ba>
a0004cd8:	8652                	mv	a2,s4
a0004cda:	86d6                	mv	a3,s5
a0004cdc:	e6cfd0ef          	jal	ra,a0002348 <__divdf3>
a0004ce0:	86ae                	mv	a3,a1
a0004ce2:	862a                	mv	a2,a0
a0004ce4:	85da                	mv	a1,s6
a0004ce6:	855e                	mv	a0,s7
a0004ce8:	c82fe0ef          	jal	ra,a000316a <__subdf3>
a0004cec:	a00087b7          	lui	a5,0xa0008
a0004cf0:	9a878793          	addi	a5,a5,-1624 # a00079a8 <__psram_limit+0xf7c079a8>
a0004cf4:	0697978b          	addsl	a5,a5,s1,3
a0004cf8:	0007ac03          	lw	s8,0(a5)
a0004cfc:	0047ac83          	lw	s9,4(a5)
a0004d00:	8a2a                	mv	s4,a0
a0004d02:	8aae                	mv	s5,a1
a0004d04:	4641                	li	a2,16
a0004d06:	10ac                	addi	a1,sp,104
a0004d08:	0888                	addi	a0,sp,80
a0004d0a:	9c0ff0ef          	jal	ra,a0003eca <memcpy>
a0004d0e:	8662                	mv	a2,s8
a0004d10:	86e6                	mv	a3,s9
a0004d12:	088c                	addi	a1,sp,80
a0004d14:	18a8                	addi	a0,sp,120
a0004d16:	3135                	jal	a0004942 <update_normalization>
a0004d18:	08014783          	lbu	a5,128(sp)
a0004d1c:	5666                	lw	a2,120(sp)
a0004d1e:	56f6                	lw	a3,124(sp)
a0004d20:	8552                	mv	a0,s4
a0004d22:	85d6                	mv	a1,s5
a0004d24:	cfb1                	beqz	a5,a0004d80 <print_exponential_number+0x3c4>
a0004d26:	eabfd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004d2a:	8a2a                	mv	s4,a0
a0004d2c:	8aae                	mv	s5,a1
a0004d2e:	a0008b37          	lui	s6,0xa0008
a0004d32:	e8b1                	bnez	s1,a0004d86 <print_exponential_number+0x3ca>
a0004d34:	924b2b83          	lw	s7,-1756(s6) # a0007924 <__psram_limit+0xf7c07924>
a0004d38:	920b2b03          	lw	s6,-1760(s6)
a0004d3c:	4c81                	li	s9,0
a0004d3e:	86de                	mv	a3,s7
a0004d40:	865a                	mv	a2,s6
a0004d42:	d33fd0ef          	jal	ra,a0002a74 <__gedf2>
a0004d46:	41f55693          	srai	a3,a0,0x1f
a0004d4a:	fff6c613          	not	a2,a3
a0004d4e:	01f65c13          	srli	s8,a2,0x1f
a0004d52:	86de                	mv	a3,s7
a0004d54:	865a                	mv	a2,s6
a0004d56:	8552                	mv	a0,s4
a0004d58:	85d6                	mv	a1,s5
a0004d5a:	c1891977          	add64	s2,s2,s8
a0004d5e:	c73fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004d62:	e501                	bnez	a0,a0004d6a <print_exponential_number+0x3ae>
a0004d64:	ffe97713          	andi	a4,s2,-2
a0004d68:	893a                	mv	s2,a4
a0004d6a:	4a01                	li	s4,0
a0004d6c:	4a81                	li	s5,0
a0004d6e:	bf01                	j	a0004c7e <print_exponential_number+0x2c2>
a0004d70:	dd8fd0ef          	jal	ra,a0002348 <__divdf3>
a0004d74:	bf81                	j	a0004cc4 <print_exponential_number+0x308>
a0004d76:	8552                	mv	a0,s4
a0004d78:	85d6                	mv	a1,s5
a0004d7a:	e57fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004d7e:	b78d                	j	a0004ce0 <print_exponential_number+0x324>
a0004d80:	dc8fd0ef          	jal	ra,a0002348 <__divdf3>
a0004d84:	b75d                	j	a0004d2a <print_exponential_number+0x36e>
a0004d86:	dc3fe0ef          	jal	ra,a0003b48 <__fixdfdi>
a0004d8a:	c4aa                	sw	a0,72(sp)
a0004d8c:	c6ae                	sw	a1,76(sp)
a0004d8e:	ebffe0ef          	jal	ra,a0003c4c <__floatdidf>
a0004d92:	862a                	mv	a2,a0
a0004d94:	86ae                	mv	a3,a1
a0004d96:	8552                	mv	a0,s4
a0004d98:	85d6                	mv	a1,s5
a0004d9a:	bd0fe0ef          	jal	ra,a000316a <__subdf3>
a0004d9e:	924b2b83          	lw	s7,-1756(s6)
a0004da2:	920b2b03          	lw	s6,-1760(s6)
a0004da6:	c2ae                	sw	a1,68(sp)
a0004da8:	86de                	mv	a3,s7
a0004daa:	865a                	mv	a2,s6
a0004dac:	c0aa                	sw	a0,64(sp)
a0004dae:	cc7fd0ef          	jal	ra,a0002a74 <__gedf2>
a0004db2:	4706                	lw	a4,64(sp)
a0004db4:	4796                	lw	a5,68(sp)
a0004db6:	41f55693          	srai	a3,a0,0x1f
a0004dba:	4826                	lw	a6,72(sp)
a0004dbc:	48b6                	lw	a7,76(sp)
a0004dbe:	fff6c613          	not	a2,a3
a0004dc2:	01f65a13          	srli	s4,a2,0x1f
a0004dc6:	4a81                	li	s5,0
a0004dc8:	865a                	mv	a2,s6
a0004dca:	86de                	mv	a3,s7
a0004dcc:	853a                	mv	a0,a4
a0004dce:	85be                	mv	a1,a5
a0004dd0:	c10a1a77          	add64	s4,s4,a6
a0004dd4:	bfdfd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004dd8:	e501                	bnez	a0,a0004de0 <print_exponential_number+0x424>
a0004dda:	ffea7713          	andi	a4,s4,-2
a0004dde:	8a3a                	mv	s4,a4
a0004de0:	8552                	mv	a0,s4
a0004de2:	85d6                	mv	a1,s5
a0004de4:	e69fe0ef          	jal	ra,a0003c4c <__floatdidf>
a0004de8:	862a                	mv	a2,a0
a0004dea:	86ae                	mv	a3,a1
a0004dec:	8562                	mv	a0,s8
a0004dee:	85e6                	mv	a1,s9
a0004df0:	d33fd0ef          	jal	ra,a0002b22 <__ledf2>
a0004df4:	e8a045e3          	bgtz	a0,a0004c7e <print_exponential_number+0x2c2>
a0004df8:	4705                	li	a4,1
a0004dfa:	4781                	li	a5,0
a0004dfc:	c0e91977          	add64	s2,s2,a4
a0004e00:	b7ad                	j	a0004d6a <print_exponential_number+0x3ae>
a0004e02:	6b85                	lui	s7,0x1
a0004e04:	800b8b93          	addi	s7,s7,-2048 # 800 <__RFTLV_SIZE_HOLE>
a0004e08:	017dfbb3          	and	s7,s11,s7
a0004e0c:	020b8963          	beqz	s7,a0004e3e <print_exponential_number+0x482>
a0004e10:	57fd                	li	a5,-1
a0004e12:	4b81                	li	s7,0
a0004e14:	02f44563          	blt	s0,a5,a0004e3e <print_exponential_number+0x482>
a0004e18:	854a                	mv	a0,s2
a0004e1a:	85ce                	mv	a1,s3
a0004e1c:	e31fe0ef          	jal	ra,a0003c4c <__floatdidf>
a0004e20:	a00087b7          	lui	a5,0xa0008
a0004e24:	00140b13          	addi	s6,s0,1
a0004e28:	9a878793          	addi	a5,a5,-1624 # a00079a8 <__psram_limit+0xf7c079a8>
a0004e2c:	0767978b          	addsl	a5,a5,s6,3
a0004e30:	4390                	lw	a2,0(a5)
a0004e32:	43d4                	lw	a3,4(a5)
a0004e34:	b9dfd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004e38:	e119                	bnez	a0,a0004e3e <print_exponential_number+0x482>
a0004e3a:	14fd                	addi	s1,s1,-1
a0004e3c:	845a                	mv	s0,s6
a0004e3e:	002dfb13          	andi	s6,s11,2
a0004e42:	000b0563          	beqz	s6,a0004e4c <print_exponential_number+0x490>
a0004e46:	4781                	li	a5,0
a0004e48:	000b9863          	bnez	s7,a0004e58 <print_exponential_number+0x49c>
a0004e4c:	5762                	lw	a4,56(sp)
a0004e4e:	4781                	li	a5,0
a0004e50:	00ebf463          	bgeu	s7,a4,a0004e58 <print_exponential_number+0x49c>
a0004e54:	417707b3          	sub	a5,a4,s7
a0004e58:	476e                	lw	a4,216(sp)
a0004e5a:	c43e                	sw	a5,8(sp)
a0004e5c:	57c2                	lw	a5,48(sp)
a0004e5e:	ca3a                	sw	a4,20(sp)
a0004e60:	475e                	lw	a4,212(sp)
a0004e62:	58d2                	lw	a7,52(sp)
a0004e64:	5832                	lw	a6,44(sp)
a0004e66:	c83a                	sw	a4,16(sp)
a0004e68:	5772                	lw	a4,60(sp)
a0004e6a:	c03e                	sw	a5,0(sp)
a0004e6c:	8652                	mv	a2,s4
a0004e6e:	c66e                	sw	s11,12(sp)
a0004e70:	c226                	sw	s1,4(sp)
a0004e72:	87ea                	mv	a5,s10
a0004e74:	86d6                	mv	a3,s5
a0004e76:	854a                	mv	a0,s2
a0004e78:	85ce                	mv	a1,s3
a0004e7a:	8f7ff0ef          	jal	ra,a0004770 <print_broken_up_decimal.isra.0>
a0004e7e:	862a                	mv	a2,a0
a0004e80:	040c1f63          	bnez	s8,a0004ede <print_exponential_number+0x522>
a0004e84:	020dfd93          	andi	s11,s11,32
a0004e88:	04500513          	li	a0,69
a0004e8c:	000d9463          	bnez	s11,a0004e94 <print_exponential_number+0x4d8>
a0004e90:	06500513          	li	a0,101
a0004e94:	55b2                	lw	a1,44(sp)
a0004e96:	56c2                	lw	a3,48(sp)
a0004e98:	00160493          	addi	s1,a2,1
a0004e9c:	9d02                	jalr	s10
a0004e9e:	41f45593          	srai	a1,s0,0x1f
a0004ea2:	04805e63          	blez	s0,a0004efe <print_exponential_number+0x542>
a0004ea6:	8722                	mv	a4,s0
a0004ea8:	87ae                	mv	a5,a1
a0004eaa:	4695                	li	a3,5
a0004eac:	c436                	sw	a3,8(sp)
a0004eae:	55b2                	lw	a1,44(sp)
a0004eb0:	56c2                	lw	a3,48(sp)
a0004eb2:	1bfd                	addi	s7,s7,-1
a0004eb4:	8626                	mv	a2,s1
a0004eb6:	c25e                	sw	s7,4(sp)
a0004eb8:	c002                	sw	zero,0(sp)
a0004eba:	48a9                	li	a7,10
a0004ebc:	01f45813          	srli	a6,s0,0x1f
a0004ec0:	856a                	mv	a0,s10
a0004ec2:	d10ff0ef          	jal	ra,a00043d2 <print_integer>
a0004ec6:	862a                	mv	a2,a0
a0004ec8:	000b0b63          	beqz	s6,a0004ede <print_exponential_number+0x522>
a0004ecc:	57d2                	lw	a5,52(sp)
a0004ece:	40f50433          	sub	s0,a0,a5
a0004ed2:	57d2                	lw	a5,52(sp)
a0004ed4:	00878633          	add	a2,a5,s0
a0004ed8:	57e2                	lw	a5,56(sp)
a0004eda:	02f46963          	bltu	s0,a5,a0004f0c <print_exponential_number+0x550>
a0004ede:	40be                	lw	ra,204(sp)
a0004ee0:	442e                	lw	s0,200(sp)
a0004ee2:	449e                	lw	s1,196(sp)
a0004ee4:	490e                	lw	s2,192(sp)
a0004ee6:	59fa                	lw	s3,188(sp)
a0004ee8:	5a6a                	lw	s4,184(sp)
a0004eea:	5ada                	lw	s5,180(sp)
a0004eec:	5b4a                	lw	s6,176(sp)
a0004eee:	5bba                	lw	s7,172(sp)
a0004ef0:	5c2a                	lw	s8,168(sp)
a0004ef2:	5c9a                	lw	s9,164(sp)
a0004ef4:	5d0a                	lw	s10,160(sp)
a0004ef6:	4dfa                	lw	s11,156(sp)
a0004ef8:	8532                	mv	a0,a2
a0004efa:	6169                	addi	sp,sp,208
a0004efc:	8082                	ret
a0004efe:	8622                	mv	a2,s0
a0004f00:	86ae                	mv	a3,a1
a0004f02:	4701                	li	a4,0
a0004f04:	4781                	li	a5,0
a0004f06:	c2c71777          	sub64	a4,a4,a2
a0004f0a:	b745                	j	a0004eaa <print_exponential_number+0x4ee>
a0004f0c:	56c2                	lw	a3,48(sp)
a0004f0e:	55b2                	lw	a1,44(sp)
a0004f10:	02000513          	li	a0,32
a0004f14:	0405                	addi	s0,s0,1
a0004f16:	9d02                	jalr	s10
a0004f18:	bf6d                	j	a0004ed2 <print_exponential_number+0x516>
a0004f1a:	d2045ce3          	bgez	s0,a0004c52 <print_exponential_number+0x296>
a0004f1e:	4c85                	li	s9,1
a0004f20:	4c01                	li	s8,0
a0004f22:	d80915e3          	bnez	s2,a0004cac <print_exponential_number+0x2f0>
a0004f26:	b305                	j	a0004c46 <print_exponential_number+0x28a>

a0004f28 <print_floating_point>:
a0004f28:	7135                	addi	sp,sp,-160
a0004f2a:	c552                	sw	s4,136(sp)
a0004f2c:	c356                	sw	s5,132(sp)
a0004f2e:	c15a                	sw	s6,128(sp)
a0004f30:	dede                	sw	s7,124(sp)
a0004f32:	8a2a                	mv	s4,a0
a0004f34:	8aae                	mv	s5,a1
a0004f36:	8b32                	mv	s6,a2
a0004f38:	8bb6                	mv	s7,a3
a0004f3a:	863a                	mv	a2,a4
a0004f3c:	86be                	mv	a3,a5
a0004f3e:	853a                	mv	a0,a4
a0004f40:	85be                	mv	a1,a5
a0004f42:	cd22                	sw	s0,152(sp)
a0004f44:	cb26                	sw	s1,148(sp)
a0004f46:	c94a                	sw	s2,144(sp)
a0004f48:	c74e                	sw	s3,140(sp)
a0004f4a:	dce2                	sw	s8,120(sp)
a0004f4c:	d6ee                	sw	s11,108(sp)
a0004f4e:	cf06                	sw	ra,156(sp)
a0004f50:	dae6                	sw	s9,116(sp)
a0004f52:	d8ea                	sw	s10,112(sp)
a0004f54:	598a                	lw	s3,160(sp)
a0004f56:	0a414d83          	lbu	s11,164(sp)
a0004f5a:	843a                	mv	s0,a4
a0004f5c:	84be                	mv	s1,a5
a0004f5e:	8942                	mv	s2,a6
a0004f60:	8c46                	mv	s8,a7
a0004f62:	a6ffd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004f66:	cd05                	beqz	a0,a0004f9e <print_floating_point+0x76>
a0004f68:	a0008737          	lui	a4,0xa0008
a0004f6c:	88ce                	mv	a7,s3
a0004f6e:	8862                	mv	a6,s8
a0004f70:	478d                	li	a5,3
a0004f72:	90070713          	addi	a4,a4,-1792 # a0007900 <__psram_limit+0xf7c07900>
a0004f76:	446a                	lw	s0,152(sp)
a0004f78:	40fa                	lw	ra,156(sp)
a0004f7a:	44da                	lw	s1,148(sp)
a0004f7c:	494a                	lw	s2,144(sp)
a0004f7e:	49ba                	lw	s3,140(sp)
a0004f80:	5c66                	lw	s8,120(sp)
a0004f82:	5cd6                	lw	s9,116(sp)
a0004f84:	5d46                	lw	s10,112(sp)
a0004f86:	5db6                	lw	s11,108(sp)
a0004f88:	86de                	mv	a3,s7
a0004f8a:	865a                	mv	a2,s6
a0004f8c:	5bf6                	lw	s7,124(sp)
a0004f8e:	4b0a                	lw	s6,128(sp)
a0004f90:	85d6                	mv	a1,s5
a0004f92:	8552                	mv	a0,s4
a0004f94:	4a9a                	lw	s5,132(sp)
a0004f96:	4a2a                	lw	s4,136(sp)
a0004f98:	610d                	addi	sp,sp,160
a0004f9a:	b8aff06f          	j	a0004324 <out_rev_>
a0004f9e:	a00087b7          	lui	a5,0xa0008
a0004fa2:	9887a603          	lw	a2,-1656(a5) # a0007988 <__psram_limit+0xf7c07988>
a0004fa6:	98c7a683          	lw	a3,-1652(a5)
a0004faa:	8522                	mv	a0,s0
a0004fac:	85a6                	mv	a1,s1
a0004fae:	b75fd0ef          	jal	ra,a0002b22 <__ledf2>
a0004fb2:	00055a63          	bgez	a0,a0004fc6 <print_floating_point+0x9e>
a0004fb6:	a0008737          	lui	a4,0xa0008
a0004fba:	88ce                	mv	a7,s3
a0004fbc:	8862                	mv	a6,s8
a0004fbe:	4791                	li	a5,4
a0004fc0:	90470713          	addi	a4,a4,-1788 # a0007904 <__psram_limit+0xf7c07904>
a0004fc4:	bf4d                	j	a0004f76 <print_floating_point+0x4e>
a0004fc6:	a00087b7          	lui	a5,0xa0008
a0004fca:	9907a603          	lw	a2,-1648(a5) # a0007990 <__psram_limit+0xf7c07990>
a0004fce:	9947a683          	lw	a3,-1644(a5)
a0004fd2:	8522                	mv	a0,s0
a0004fd4:	85a6                	mv	a1,s1
a0004fd6:	a9ffd0ef          	jal	ra,a0002a74 <__gedf2>
a0004fda:	02a05363          	blez	a0,a0005000 <print_floating_point+0xd8>
a0004fde:	0049f793          	andi	a5,s3,4
a0004fe2:	cb89                	beqz	a5,a0004ff4 <print_floating_point+0xcc>
a0004fe4:	a0008737          	lui	a4,0xa0008
a0004fe8:	8f870713          	addi	a4,a4,-1800 # a00078f8 <__psram_limit+0xf7c078f8>
a0004fec:	4791                	li	a5,4
a0004fee:	88ce                	mv	a7,s3
a0004ff0:	8862                	mv	a6,s8
a0004ff2:	b751                	j	a0004f76 <print_floating_point+0x4e>
a0004ff4:	a0008737          	lui	a4,0xa0008
a0004ff8:	8f470713          	addi	a4,a4,-1804 # a00078f4 <__psram_limit+0xf7c078f4>
a0004ffc:	478d                	li	a5,3
a0004ffe:	bfc5                	j	a0004fee <print_floating_point+0xc6>
a0005000:	04010d13          	addi	s10,sp,64
a0005004:	060d9663          	bnez	s11,a0005070 <print_floating_point+0x148>
a0005008:	a00087b7          	lui	a5,0xa0008
a000500c:	9987a603          	lw	a2,-1640(a5) # a0007998 <__psram_limit+0xf7c07998>
a0005010:	99c7a683          	lw	a3,-1636(a5)
a0005014:	8522                	mv	a0,s0
a0005016:	85a6                	mv	a1,s1
a0005018:	a5dfd0ef          	jal	ra,a0002a74 <__gedf2>
a000501c:	00a04e63          	bgtz	a0,a0005038 <print_floating_point+0x110>
a0005020:	a00087b7          	lui	a5,0xa0008
a0005024:	9a07a603          	lw	a2,-1632(a5) # a00079a0 <__psram_limit+0xf7c079a0>
a0005028:	9a47a683          	lw	a3,-1628(a5)
a000502c:	8522                	mv	a0,s0
a000502e:	85a6                	mv	a1,s1
a0005030:	af3fd0ef          	jal	ra,a0002b22 <__ledf2>
a0005034:	02055e63          	bgez	a0,a0005070 <print_floating_point+0x148>
a0005038:	c402                	sw	zero,8(sp)
a000503a:	c26a                	sw	s10,4(sp)
a000503c:	c04e                	sw	s3,0(sp)
a000503e:	88e2                	mv	a7,s8
a0005040:	884a                	mv	a6,s2
a0005042:	8722                	mv	a4,s0
a0005044:	87a6                	mv	a5,s1
a0005046:	86de                	mv	a3,s7
a0005048:	865a                	mv	a2,s6
a000504a:	85d6                	mv	a1,s5
a000504c:	8552                	mv	a0,s4
a000504e:	96fff0ef          	jal	ra,a00049bc <print_exponential_number>
a0005052:	40fa                	lw	ra,156(sp)
a0005054:	446a                	lw	s0,152(sp)
a0005056:	44da                	lw	s1,148(sp)
a0005058:	494a                	lw	s2,144(sp)
a000505a:	49ba                	lw	s3,140(sp)
a000505c:	4a2a                	lw	s4,136(sp)
a000505e:	4a9a                	lw	s5,132(sp)
a0005060:	4b0a                	lw	s6,128(sp)
a0005062:	5bf6                	lw	s7,124(sp)
a0005064:	5c66                	lw	s8,120(sp)
a0005066:	5cd6                	lw	s9,116(sp)
a0005068:	5d46                	lw	s10,112(sp)
a000506a:	5db6                	lw	s11,108(sp)
a000506c:	610d                	addi	sp,sp,160
a000506e:	8082                	ret
a0005070:	4009f793          	andi	a5,s3,1024
a0005074:	c39d                	beqz	a5,a000509a <print_floating_point+0x172>
a0005076:	4c81                	li	s9,0
a0005078:	47c5                	li	a5,17
a000507a:	03000713          	li	a4,48
a000507e:	02000693          	li	a3,32
a0005082:	0127f863          	bgeu	a5,s2,a0005092 <print_floating_point+0x16a>
a0005086:	019d570b          	srb	a4,s10,s9,0
a000508a:	0c85                	addi	s9,s9,1
a000508c:	197d                	addi	s2,s2,-1
a000508e:	fedc9ae3          	bne	s9,a3,a0005082 <print_floating_point+0x15a>
a0005092:	000d8663          	beqz	s11,a000509e <print_floating_point+0x176>
a0005096:	c466                	sw	s9,8(sp)
a0005098:	b74d                	j	a000503a <print_floating_point+0x112>
a000509a:	4919                	li	s2,6
a000509c:	bfe9                	j	a0005076 <print_floating_point+0x14e>
a000509e:	86ca                	mv	a3,s2
a00050a0:	85a2                	mv	a1,s0
a00050a2:	8626                	mv	a2,s1
a00050a4:	1028                	addi	a0,sp,40
a00050a6:	d38ff0ef          	jal	ra,a00045de <get_components>
a00050aa:	03814703          	lbu	a4,56(sp)
a00050ae:	5642                	lw	a2,48(sp)
a00050b0:	56d2                	lw	a3,52(sp)
a00050b2:	5522                	lw	a0,40(sp)
a00050b4:	55b2                	lw	a1,44(sp)
a00050b6:	ca66                	sw	s9,20(sp)
a00050b8:	c86a                	sw	s10,16(sp)
a00050ba:	c64e                	sw	s3,12(sp)
a00050bc:	c462                	sw	s8,8(sp)
a00050be:	c24a                	sw	s2,4(sp)
a00050c0:	c05e                	sw	s7,0(sp)
a00050c2:	88da                	mv	a7,s6
a00050c4:	8856                	mv	a6,s5
a00050c6:	87d2                	mv	a5,s4
a00050c8:	ea8ff0ef          	jal	ra,a0004770 <print_broken_up_decimal.isra.0>
a00050cc:	b759                	j	a0005052 <print_floating_point+0x12a>

a00050ce <__vsnprintf>:
a00050ce:	7175                	addi	sp,sp,-144
a00050d0:	c326                	sw	s1,132(sp)
a00050d2:	d6de                	sw	s7,108(sp)
a00050d4:	d4e2                	sw	s8,104(sp)
a00050d6:	d2e6                	sw	s9,100(sp)
a00050d8:	d0ea                	sw	s10,96(sp)
a00050da:	c706                	sw	ra,140(sp)
a00050dc:	c522                	sw	s0,136(sp)
a00050de:	c14a                	sw	s2,128(sp)
a00050e0:	dece                	sw	s3,124(sp)
a00050e2:	dcd2                	sw	s4,120(sp)
a00050e4:	dad6                	sw	s5,116(sp)
a00050e6:	d8da                	sw	s6,112(sp)
a00050e8:	ceee                	sw	s11,92(sp)
a00050ea:	8c2a                	mv	s8,a0
a00050ec:	8bae                	mv	s7,a1
a00050ee:	8d32                	mv	s10,a2
a00050f0:	8cb6                	mv	s9,a3
a00050f2:	84ba                	mv	s1,a4
a00050f4:	e999                	bnez	a1,a000510a <__vsnprintf+0x3c>
a00050f6:	a00047b7          	lui	a5,0xa0004
a00050fa:	75e78793          	addi	a5,a5,1886 # a000475e <__psram_limit+0xf7c0475e>
a00050fe:	00f50663          	beq	a0,a5,a000510a <__vsnprintf+0x3c>
a0005102:	a0004c37          	lui	s8,0xa0004
a0005106:	322c0c13          	addi	s8,s8,802 # a0004322 <__psram_limit+0xf7c04322>
a000510a:	67c1                	lui	a5,0x10
a000510c:	17fd                	addi	a5,a5,-1
a000510e:	dc3e                	sw	a5,56(sp)
a0005110:	67a5                	lui	a5,0x9
a0005112:	04178793          	addi	a5,a5,65 # 9041 <wifi_ram_max_size+0x1041>
a0005116:	4301                	li	t1,0
a0005118:	de3e                	sw	a5,60(sp)
a000511a:	ae29                	j	a0005434 <__vsnprintf+0x366>
a000511c:	02500793          	li	a5,37
a0005120:	0c85                	addi	s9,s9,1
a0005122:	00f50863          	beq	a0,a5,a0005132 <__vsnprintf+0x64>
a0005126:	00130413          	addi	s0,t1,1
a000512a:	86ea                	mv	a3,s10
a000512c:	861a                	mv	a2,t1
a000512e:	85de                	mv	a1,s7
a0005130:	a3d5                	j	a0005714 <__vsnprintf+0x646>
a0005132:	4401                	li	s0,0
a0005134:	02b00793          	li	a5,43
a0005138:	02d00613          	li	a2,45
a000513c:	03000513          	li	a0,48
a0005140:	02000813          	li	a6,32
a0005144:	02300893          	li	a7,35
a0005148:	a801                	j	a0005158 <__vsnprintf+0x8a>
a000514a:	02c70d63          	beq	a4,a2,a0005184 <__vsnprintf+0xb6>
a000514e:	02a71063          	bne	a4,a0,a000516e <__vsnprintf+0xa0>
a0005152:	00146413          	ori	s0,s0,1
a0005156:	8cb6                	mv	s9,a3
a0005158:	86e6                	mv	a3,s9
a000515a:	9816c70b          	lbuia	a4,(a3),1,0
a000515e:	02f70663          	beq	a4,a5,a000518a <__vsnprintf+0xbc>
a0005162:	fee7e4e3          	bltu	a5,a4,a000514a <__vsnprintf+0x7c>
a0005166:	03070563          	beq	a4,a6,a0005190 <__vsnprintf+0xc2>
a000516a:	03170663          	beq	a4,a7,a0005196 <__vsnprintf+0xc8>
a000516e:	fd070793          	addi	a5,a4,-48
a0005172:	0ff7f793          	zext.b	a5,a5
a0005176:	4625                	li	a2,9
a0005178:	06f66763          	bltu	a2,a5,a00051e6 <__vsnprintf+0x118>
a000517c:	4b01                	li	s6,0
a000517e:	4525                	li	a0,9
a0005180:	4829                	li	a6,10
a0005182:	a015                	j	a00051a6 <__vsnprintf+0xd8>
a0005184:	00246413          	ori	s0,s0,2
a0005188:	b7f9                	j	a0005156 <__vsnprintf+0x88>
a000518a:	00446413          	ori	s0,s0,4
a000518e:	b7e1                	j	a0005156 <__vsnprintf+0x88>
a0005190:	00846413          	ori	s0,s0,8
a0005194:	b7c9                	j	a0005156 <__vsnprintf+0x88>
a0005196:	01046413          	ori	s0,s0,16
a000519a:	bf75                	j	a0005156 <__vsnprintf+0x88>
a000519c:	210b170b          	mula	a4,s6,a6
a00051a0:	8cb2                	mv	s9,a2
a00051a2:	fd070b13          	addi	s6,a4,-48
a00051a6:	8666                	mv	a2,s9
a00051a8:	9816470b          	lbuia	a4,(a2),1,0
a00051ac:	fd070693          	addi	a3,a4,-48
a00051b0:	0ff6f693          	zext.b	a3,a3
a00051b4:	fed574e3          	bgeu	a0,a3,a000519c <__vsnprintf+0xce>
a00051b8:	000cc683          	lbu	a3,0(s9)
a00051bc:	02e00713          	li	a4,46
a00051c0:	10e69563          	bne	a3,a4,a00052ca <__vsnprintf+0x1fc>
a00051c4:	001cc603          	lbu	a2,1(s9)
a00051c8:	4525                	li	a0,9
a00051ca:	001c8713          	addi	a4,s9,1
a00051ce:	fd060693          	addi	a3,a2,-48
a00051d2:	0ff6f693          	zext.b	a3,a3
a00051d6:	40046413          	ori	s0,s0,1024
a00051da:	0cd56b63          	bltu	a0,a3,a00052b0 <__vsnprintf+0x1e2>
a00051de:	4801                	li	a6,0
a00051e0:	48a5                	li	a7,9
a00051e2:	4e29                	li	t3,10
a00051e4:	a02d                	j	a000520e <__vsnprintf+0x140>
a00051e6:	02a00613          	li	a2,42
a00051ea:	4b01                	li	s6,0
a00051ec:	fcc716e3          	bne	a4,a2,a00051b8 <__vsnprintf+0xea>
a00051f0:	5844cb0b          	lwia	s6,(s1),4,0
a00051f4:	000b5663          	bgez	s6,a0005200 <__vsnprintf+0x132>
a00051f8:	00246413          	ori	s0,s0,2
a00051fc:	41600b33          	neg	s6,s6
a0005200:	8cb6                	mv	s9,a3
a0005202:	bf5d                	j	a00051b8 <__vsnprintf+0xea>
a0005204:	21c8168b          	mula	a3,a6,t3
a0005208:	872a                	mv	a4,a0
a000520a:	fd068813          	addi	a6,a3,-48
a000520e:	853a                	mv	a0,a4
a0005210:	9815468b          	lbuia	a3,(a0),1,0
a0005214:	fd068613          	addi	a2,a3,-48
a0005218:	0ff67613          	zext.b	a2,a2
a000521c:	fec8f4e3          	bgeu	a7,a2,a0005204 <__vsnprintf+0x136>
a0005220:	8cba                	mv	s9,a4
a0005222:	981cc68b          	lbuia	a3,(s9),1,0
a0005226:	06c00613          	li	a2,108
a000522a:	0ac68e63          	beq	a3,a2,a00052e6 <__vsnprintf+0x218>
a000522e:	0ad66163          	bltu	a2,a3,a00052d0 <__vsnprintf+0x202>
a0005232:	06800613          	li	a2,104
a0005236:	0cc68163          	beq	a3,a2,a00052f8 <__vsnprintf+0x22a>
a000523a:	06a00613          	li	a2,106
a000523e:	0cc68763          	beq	a3,a2,a000530c <__vsnprintf+0x23e>
a0005242:	8cba                	mv	s9,a4
a0005244:	981cc50b          	lbuia	a0,(s9),1,0
a0005248:	06500713          	li	a4,101
a000524c:	02e50263          	beq	a0,a4,a0005270 <__vsnprintf+0x1a2>
a0005250:	12a76663          	bltu	a4,a0,a000537c <__vsnprintf+0x2ae>
a0005254:	04600713          	li	a4,70
a0005258:	2ee50963          	beq	a0,a4,a000554a <__vsnprintf+0x47c>
a000525c:	0ea76c63          	bltu	a4,a0,a0005354 <__vsnprintf+0x286>
a0005260:	02500713          	li	a4,37
a0005264:	4ae50163          	beq	a0,a4,a0005706 <__vsnprintf+0x638>
a0005268:	04500713          	li	a4,69
a000526c:	eae51de3          	bne	a0,a4,a0005126 <__vsnprintf+0x58>
a0005270:	0df57713          	andi	a4,a0,223
a0005274:	04700693          	li	a3,71
a0005278:	00d71863          	bne	a4,a3,a0005288 <__vsnprintf+0x1ba>
a000527c:	6785                	lui	a5,0x1
a000527e:	80078793          	addi	a5,a5,-2048 # 800 <__RFTLV_SIZE_HOLE>
a0005282:	8c5d                	or	s0,s0,a5
a0005284:	0fd57513          	andi	a0,a0,253
a0005288:	04500713          	li	a4,69
a000528c:	00e51463          	bne	a0,a4,a0005294 <__vsnprintf+0x1c6>
a0005290:	02046413          	ori	s0,s0,32
a0005294:	049d                	addi	s1,s1,7
a0005296:	ff84f713          	andi	a4,s1,-8
a000529a:	4310                	lw	a2,0(a4)
a000529c:	4354                	lw	a3,4(a4)
a000529e:	00870493          	addi	s1,a4,8
a00052a2:	4705                	li	a4,1
a00052a4:	c23a                	sw	a4,4(sp)
a00052a6:	c022                	sw	s0,0(sp)
a00052a8:	88da                	mv	a7,s6
a00052aa:	8732                	mv	a4,a2
a00052ac:	87b6                	mv	a5,a3
a00052ae:	ac55                	j	a0005562 <__vsnprintf+0x494>
a00052b0:	02a00693          	li	a3,42
a00052b4:	4801                	li	a6,0
a00052b6:	f6d615e3          	bne	a2,a3,a0005220 <__vsnprintf+0x152>
a00052ba:	5844c80b          	lwia	a6,(s1),4,0
a00052be:	00085363          	bgez	a6,a00052c4 <__vsnprintf+0x1f6>
a00052c2:	4801                	li	a6,0
a00052c4:	002c8713          	addi	a4,s9,2
a00052c8:	bfa1                	j	a0005220 <__vsnprintf+0x152>
a00052ca:	8766                	mv	a4,s9
a00052cc:	4801                	li	a6,0
a00052ce:	bf89                	j	a0005220 <__vsnprintf+0x152>
a00052d0:	07400613          	li	a2,116
a00052d4:	00c68663          	beq	a3,a2,a00052e0 <__vsnprintf+0x212>
a00052d8:	07a00613          	li	a2,122
a00052dc:	f6c693e3          	bne	a3,a2,a0005242 <__vsnprintf+0x174>
a00052e0:	10046413          	ori	s0,s0,256
a00052e4:	b785                	j	a0005244 <__vsnprintf+0x176>
a00052e6:	00174603          	lbu	a2,1(a4)
a00052ea:	fed61be3          	bne	a2,a3,a00052e0 <__vsnprintf+0x212>
a00052ee:	30046413          	ori	s0,s0,768
a00052f2:	00270c93          	addi	s9,a4,2
a00052f6:	b7b9                	j	a0005244 <__vsnprintf+0x176>
a00052f8:	00174603          	lbu	a2,1(a4)
a00052fc:	00d60563          	beq	a2,a3,a0005306 <__vsnprintf+0x238>
a0005300:	08046413          	ori	s0,s0,128
a0005304:	b781                	j	a0005244 <__vsnprintf+0x176>
a0005306:	0c046413          	ori	s0,s0,192
a000530a:	b7e5                	j	a00052f2 <__vsnprintf+0x224>
a000530c:	20046413          	ori	s0,s0,512
a0005310:	bf15                	j	a0005244 <__vsnprintf+0x176>
a0005312:	57f2                	lw	a5,60(sp)
a0005314:	4685                	li	a3,1
a0005316:	f9750713          	addi	a4,a0,-105
a000531a:	00e69733          	sll	a4,a3,a4
a000531e:	00f776b3          	and	a3,a4,a5
a0005322:	eea5                	bnez	a3,a000539a <__vsnprintf+0x2cc>
a0005324:	40077693          	andi	a3,a4,1024
a0005328:	2c069063          	bnez	a3,a00055e8 <__vsnprintf+0x51a>
a000532c:	08077713          	andi	a4,a4,128
a0005330:	de070be3          	beqz	a4,a0005126 <__vsnprintf+0x58>
a0005334:	5844c70b          	lwia	a4,(s1),4,0
a0005338:	6785                	lui	a5,0x1
a000533a:	00178893          	addi	a7,a5,1 # 1001 <HeapMinSize+0x1>
a000533e:	011468b3          	or	a7,s0,a7
a0005342:	3a071463          	bnez	a4,a00056ea <__vsnprintf+0x61c>
a0005346:	a0008737          	lui	a4,0xa0008
a000534a:	4829                	li	a6,10
a000534c:	4795                	li	a5,5
a000534e:	91470713          	addi	a4,a4,-1772 # a0007914 <__psram_limit+0xf7c07914>
a0005352:	a475                	j	a00055fe <__vsnprintf+0x530>
a0005354:	06300713          	li	a4,99
a0005358:	20e50d63          	beq	a0,a4,a0005572 <__vsnprintf+0x4a4>
a000535c:	06400713          	li	a4,100
a0005360:	02e50d63          	beq	a0,a4,a000539a <__vsnprintf+0x2cc>
a0005364:	05800713          	li	a4,88
a0005368:	3ae50963          	beq	a0,a4,a000571a <__vsnprintf+0x64c>
a000536c:	06200713          	li	a4,98
a0005370:	4889                	li	a7,2
a0005372:	04e50b63          	beq	a0,a4,a00053c8 <__vsnprintf+0x2fa>
a0005376:	04700713          	li	a4,71
a000537a:	bdcd                	j	a000526c <__vsnprintf+0x19e>
a000537c:	07800713          	li	a4,120
a0005380:	daa763e3          	bltu	a4,a0,a0005126 <__vsnprintf+0x58>
a0005384:	06800713          	li	a4,104
a0005388:	f8a765e3          	bltu	a4,a0,a0005312 <__vsnprintf+0x244>
a000538c:	06600713          	li	a4,102
a0005390:	1ae50f63          	beq	a0,a4,a000554e <__vsnprintf+0x480>
a0005394:	06700713          	li	a4,103
a0005398:	bdd1                	j	a000526c <__vsnprintf+0x19e>
a000539a:	07800713          	li	a4,120
a000539e:	48c1                	li	a7,16
a00053a0:	02e50863          	beq	a0,a4,a00053d0 <__vsnprintf+0x302>
a00053a4:	05800713          	li	a4,88
a00053a8:	36e50963          	beq	a0,a4,a000571a <__vsnprintf+0x64c>
a00053ac:	06f00713          	li	a4,111
a00053b0:	36e50963          	beq	a0,a4,a0005722 <__vsnprintf+0x654>
a00053b4:	06200713          	li	a4,98
a00053b8:	36e50763          	beq	a0,a4,a0005726 <__vsnprintf+0x658>
a00053bc:	06900713          	li	a4,105
a00053c0:	983d                	andi	s0,s0,-17
a00053c2:	48a9                	li	a7,10
a00053c4:	00e50763          	beq	a0,a4,a00053d2 <__vsnprintf+0x304>
a00053c8:	06400713          	li	a4,100
a00053cc:	00e50363          	beq	a0,a4,a00053d2 <__vsnprintf+0x304>
a00053d0:	984d                	andi	s0,s0,-13
a00053d2:	40047713          	andi	a4,s0,1024
a00053d6:	c311                	beqz	a4,a00053da <__vsnprintf+0x30c>
a00053d8:	9879                	andi	s0,s0,-2
a00053da:	06900693          	li	a3,105
a00053de:	20047713          	andi	a4,s0,512
a00053e2:	00d50663          	beq	a0,a3,a00053ee <__vsnprintf+0x320>
a00053e6:	06400693          	li	a3,100
a00053ea:	10d51b63          	bne	a0,a3,a0005500 <__vsnprintf+0x432>
a00053ee:	cb41                	beqz	a4,a000547e <__vsnprintf+0x3b0>
a00053f0:	049d                	addi	s1,s1,7
a00053f2:	98e1                	andi	s1,s1,-8
a00053f4:	40d8                	lw	a4,4(s1)
a00053f6:	8da6                	mv	s11,s1
a00053f8:	588dc68b          	lwia	a3,(s11),8,0
a00053fc:	41f75793          	srai	a5,a4,0x1f
a0005400:	ca3e                	sw	a5,20(sp)
a0005402:	c83e                	sw	a5,16(sp)
a0005404:	8fb5                	xor	a5,a5,a3
a0005406:	d03e                	sw	a5,32(sp)
a0005408:	47d2                	lw	a5,20(sp)
a000540a:	4642                	lw	a2,16(sp)
a000540c:	46d2                	lw	a3,20(sp)
a000540e:	8fb9                	xor	a5,a5,a4
a0005410:	d23e                	sw	a5,36(sp)
a0005412:	5792                	lw	a5,36(sp)
a0005414:	c042                	sw	a6,0(sp)
a0005416:	01f75813          	srli	a6,a4,0x1f
a000541a:	5702                	lw	a4,32(sp)
a000541c:	c422                	sw	s0,8(sp)
a000541e:	c25a                	sw	s6,4(sp)
a0005420:	c2c71777          	sub64	a4,a4,a2
a0005424:	861a                	mv	a2,t1
a0005426:	86ea                	mv	a3,s10
a0005428:	85de                	mv	a1,s7
a000542a:	8562                	mv	a0,s8
a000542c:	fa7fe0ef          	jal	ra,a00043d2 <print_integer>
a0005430:	832a                	mv	t1,a0
a0005432:	84ee                	mv	s1,s11
a0005434:	000cc503          	lbu	a0,0(s9)
a0005438:	ce0512e3          	bnez	a0,a000511c <__vsnprintf+0x4e>
a000543c:	a00047b7          	lui	a5,0xa0004
a0005440:	75e78793          	addi	a5,a5,1886 # a000475e <__psram_limit+0xf7c0475e>
a0005444:	00fc0d63          	beq	s8,a5,a000545e <__vsnprintf+0x390>
a0005448:	861a                	mv	a2,t1
a000544a:	01a36463          	bltu	t1,s10,a0005452 <__vsnprintf+0x384>
a000544e:	fffd0613          	addi	a2,s10,-1
a0005452:	c81a                	sw	t1,16(sp)
a0005454:	86ea                	mv	a3,s10
a0005456:	85de                	mv	a1,s7
a0005458:	4501                	li	a0,0
a000545a:	9c02                	jalr	s8
a000545c:	4342                	lw	t1,16(sp)
a000545e:	40ba                	lw	ra,140(sp)
a0005460:	442a                	lw	s0,136(sp)
a0005462:	449a                	lw	s1,132(sp)
a0005464:	490a                	lw	s2,128(sp)
a0005466:	59f6                	lw	s3,124(sp)
a0005468:	5a66                	lw	s4,120(sp)
a000546a:	5ad6                	lw	s5,116(sp)
a000546c:	5b46                	lw	s6,112(sp)
a000546e:	5bb6                	lw	s7,108(sp)
a0005470:	5c26                	lw	s8,104(sp)
a0005472:	5c96                	lw	s9,100(sp)
a0005474:	5d06                	lw	s10,96(sp)
a0005476:	4df6                	lw	s11,92(sp)
a0005478:	851a                	mv	a0,t1
a000547a:	6149                	addi	sp,sp,144
a000547c:	8082                	ret
a000547e:	10047713          	andi	a4,s0,256
a0005482:	00448d93          	addi	s11,s1,4
a0005486:	cb15                	beqz	a4,a00054ba <__vsnprintf+0x3ec>
a0005488:	4098                	lw	a4,0(s1)
a000548a:	41f75693          	srai	a3,a4,0x1f
a000548e:	00e05c63          	blez	a4,a00054a6 <__vsnprintf+0x3d8>
a0005492:	cc3a                	sw	a4,24(sp)
a0005494:	ce36                	sw	a3,28(sp)
a0005496:	c042                	sw	a6,0(sp)
a0005498:	47f2                	lw	a5,28(sp)
a000549a:	01f75813          	srli	a6,a4,0x1f
a000549e:	c422                	sw	s0,8(sp)
a00054a0:	4762                	lw	a4,24(sp)
a00054a2:	c25a                	sw	s6,4(sp)
a00054a4:	b741                	j	a0005424 <__vsnprintf+0x356>
a00054a6:	d43a                	sw	a4,40(sp)
a00054a8:	d636                	sw	a3,44(sp)
a00054aa:	5622                	lw	a2,40(sp)
a00054ac:	56b2                	lw	a3,44(sp)
a00054ae:	4901                	li	s2,0
a00054b0:	4981                	li	s3,0
a00054b2:	c2c91677          	sub64	a2,s2,a2
a00054b6:	cc32                	sw	a2,24(sp)
a00054b8:	bff1                	j	a0005494 <__vsnprintf+0x3c6>
a00054ba:	04047693          	andi	a3,s0,64
a00054be:	4098                	lw	a4,0(s1)
a00054c0:	c28d                	beqz	a3,a00054e2 <__vsnprintf+0x414>
a00054c2:	1c07270b          	ext	a4,a4,7,0
a00054c6:	41f75693          	srai	a3,a4,0x1f
a00054ca:	02e05263          	blez	a4,a00054ee <__vsnprintf+0x420>
a00054ce:	8a3a                	mv	s4,a4
a00054d0:	8ab6                	mv	s5,a3
a00054d2:	c042                	sw	a6,0(sp)
a00054d4:	c422                	sw	s0,8(sp)
a00054d6:	01f75813          	srli	a6,a4,0x1f
a00054da:	c25a                	sw	s6,4(sp)
a00054dc:	8752                	mv	a4,s4
a00054de:	87d6                	mv	a5,s5
a00054e0:	b791                	j	a0005424 <__vsnprintf+0x356>
a00054e2:	08047693          	andi	a3,s0,128
a00054e6:	d2e5                	beqz	a3,a00054c6 <__vsnprintf+0x3f8>
a00054e8:	3c07270b          	ext	a4,a4,15,0
a00054ec:	bfe9                	j	a00054c6 <__vsnprintf+0x3f8>
a00054ee:	d83a                	sw	a4,48(sp)
a00054f0:	da36                	sw	a3,52(sp)
a00054f2:	5642                	lw	a2,48(sp)
a00054f4:	56d2                	lw	a3,52(sp)
a00054f6:	4a01                	li	s4,0
a00054f8:	4a81                	li	s5,0
a00054fa:	c2ca1a77          	sub64	s4,s4,a2
a00054fe:	bfd1                	j	a00054d2 <__vsnprintf+0x404>
a0005500:	cf01                	beqz	a4,a0005518 <__vsnprintf+0x44a>
a0005502:	049d                	addi	s1,s1,7
a0005504:	98e1                	andi	s1,s1,-8
a0005506:	4098                	lw	a4,0(s1)
a0005508:	40dc                	lw	a5,4(s1)
a000550a:	00848d93          	addi	s11,s1,8
a000550e:	c042                	sw	a6,0(sp)
a0005510:	c422                	sw	s0,8(sp)
a0005512:	c25a                	sw	s6,4(sp)
a0005514:	4801                	li	a6,0
a0005516:	b739                	j	a0005424 <__vsnprintf+0x356>
a0005518:	10047713          	andi	a4,s0,256
a000551c:	00448d93          	addi	s11,s1,4
a0005520:	cb01                	beqz	a4,a0005530 <__vsnprintf+0x462>
a0005522:	4098                	lw	a4,0(s1)
a0005524:	c042                	sw	a6,0(sp)
a0005526:	c422                	sw	s0,8(sp)
a0005528:	c25a                	sw	s6,4(sp)
a000552a:	4801                	li	a6,0
a000552c:	4781                	li	a5,0
a000552e:	bddd                	j	a0005424 <__vsnprintf+0x356>
a0005530:	04047693          	andi	a3,s0,64
a0005534:	4098                	lw	a4,0(s1)
a0005536:	c681                	beqz	a3,a000553e <__vsnprintf+0x470>
a0005538:	0ff77713          	zext.b	a4,a4
a000553c:	b7e5                	j	a0005524 <__vsnprintf+0x456>
a000553e:	08047693          	andi	a3,s0,128
a0005542:	d2ed                	beqz	a3,a0005524 <__vsnprintf+0x456>
a0005544:	57e2                	lw	a5,56(sp)
a0005546:	8f7d                	and	a4,a4,a5
a0005548:	bff1                	j	a0005524 <__vsnprintf+0x456>
a000554a:	02046413          	ori	s0,s0,32
a000554e:	049d                	addi	s1,s1,7
a0005550:	ff84f713          	andi	a4,s1,-8
a0005554:	435c                	lw	a5,4(a4)
a0005556:	00870493          	addi	s1,a4,8
a000555a:	88da                	mv	a7,s6
a000555c:	4318                	lw	a4,0(a4)
a000555e:	c202                	sw	zero,4(sp)
a0005560:	c022                	sw	s0,0(sp)
a0005562:	86ea                	mv	a3,s10
a0005564:	861a                	mv	a2,t1
a0005566:	85de                	mv	a1,s7
a0005568:	8562                	mv	a0,s8
a000556a:	9bfff0ef          	jal	ra,a0004f28 <print_floating_point>
a000556e:	832a                	mv	t1,a0
a0005570:	b5d1                	j	a0005434 <__vsnprintf+0x366>
a0005572:	8809                	andi	s0,s0,2
a0005574:	4d85                	li	s11,1
a0005576:	e815                	bnez	s0,a00055aa <__vsnprintf+0x4dc>
a0005578:	4d81                	li	s11,0
a000557a:	a801                	j	a000558a <__vsnprintf+0x4bc>
a000557c:	c09a                	sw	t1,64(sp)
a000557e:	86ea                	mv	a3,s10
a0005580:	85de                	mv	a1,s7
a0005582:	02000513          	li	a0,32
a0005586:	9c02                	jalr	s8
a0005588:	4306                	lw	t1,64(sp)
a000558a:	006d8633          	add	a2,s11,t1
a000558e:	0d85                	addi	s11,s11,1
a0005590:	ff6de6e3          	bltu	s11,s6,a000557c <__vsnprintf+0x4ae>
a0005594:	4701                	li	a4,0
a0005596:	000b0463          	beqz	s6,a000559e <__vsnprintf+0x4d0>
a000559a:	fffb0713          	addi	a4,s6,-1
a000559e:	933a                	add	t1,t1,a4
a00055a0:	4d89                	li	s11,2
a00055a2:	000b0463          	beqz	s6,a00055aa <__vsnprintf+0x4dc>
a00055a6:	001b0d93          	addi	s11,s6,1
a00055aa:	9844c50b          	lbuia	a0,(s1),4,0
a00055ae:	86ea                	mv	a3,s10
a00055b0:	861a                	mv	a2,t1
a00055b2:	85de                	mv	a1,s7
a00055b4:	00130913          	addi	s2,t1,1
a00055b8:	9c02                	jalr	s8
a00055ba:	c40d                	beqz	s0,a00055e4 <__vsnprintf+0x516>
a00055bc:	846e                	mv	s0,s11
a00055be:	864a                	mv	a2,s2
a00055c0:	a811                	j	a00055d4 <__vsnprintf+0x506>
a00055c2:	86ea                	mv	a3,s10
a00055c4:	85de                	mv	a1,s7
a00055c6:	02000513          	li	a0,32
a00055ca:	00160993          	addi	s3,a2,1
a00055ce:	9c02                	jalr	s8
a00055d0:	0405                	addi	s0,s0,1
a00055d2:	864e                	mv	a2,s3
a00055d4:	ff6467e3          	bltu	s0,s6,a00055c2 <__vsnprintf+0x4f4>
a00055d8:	4681                	li	a3,0
a00055da:	01bb6463          	bltu	s6,s11,a00055e2 <__vsnprintf+0x514>
a00055de:	41bb06b3          	sub	a3,s6,s11
a00055e2:	9936                	add	s2,s2,a3
a00055e4:	834a                	mv	t1,s2
a00055e6:	b5b9                	j	a0005434 <__vsnprintf+0x366>
a00055e8:	5844c98b          	lwia	s3,(s1),4,0
a00055ec:	02099063          	bnez	s3,a000560c <__vsnprintf+0x53e>
a00055f0:	a0008737          	lui	a4,0xa0008
a00055f4:	88a2                	mv	a7,s0
a00055f6:	885a                	mv	a6,s6
a00055f8:	4799                	li	a5,6
a00055fa:	90c70713          	addi	a4,a4,-1780 # a000790c <__psram_limit+0xf7c0790c>
a00055fe:	86ea                	mv	a3,s10
a0005600:	861a                	mv	a2,t1
a0005602:	85de                	mv	a1,s7
a0005604:	8562                	mv	a0,s8
a0005606:	d1ffe0ef          	jal	ra,a0004324 <out_rev_>
a000560a:	b795                	j	a000556e <__vsnprintf+0x4a0>
a000560c:	8742                	mv	a4,a6
a000560e:	00081363          	bnez	a6,a0005614 <__vsnprintf+0x546>
a0005612:	577d                	li	a4,-1
a0005614:	00e986b3          	add	a3,s3,a4
a0005618:	874e                	mv	a4,s3
a000561a:	00074603          	lbu	a2,0(a4)
a000561e:	c219                	beqz	a2,a0005624 <__vsnprintf+0x556>
a0005620:	02e69263          	bne	a3,a4,a0005644 <__vsnprintf+0x576>
a0005624:	40047d93          	andi	s11,s0,1024
a0005628:	41370933          	sub	s2,a4,s3
a000562c:	000d8663          	beqz	s11,a0005638 <__vsnprintf+0x56a>
a0005630:	012836b3          	sltu	a3,a6,s2
a0005634:	42d8190b          	mvnez	s2,a6,a3
a0005638:	8809                	andi	s0,s0,2
a000563a:	e429                	bnez	s0,a0005684 <__vsnprintf+0x5b6>
a000563c:	861a                	mv	a2,t1
a000563e:	40690eb3          	sub	t4,s2,t1
a0005642:	a01d                	j	a0005668 <__vsnprintf+0x59a>
a0005644:	0705                	addi	a4,a4,1
a0005646:	bfd1                	j	a000561a <__vsnprintf+0x54c>
a0005648:	00160e13          	addi	t3,a2,1
a000564c:	c6f6                	sw	t4,76(sp)
a000564e:	c49a                	sw	t1,72(sp)
a0005650:	c2c2                	sw	a6,68(sp)
a0005652:	c0f2                	sw	t3,64(sp)
a0005654:	86ea                	mv	a3,s10
a0005656:	85de                	mv	a1,s7
a0005658:	02000513          	li	a0,32
a000565c:	9c02                	jalr	s8
a000565e:	4e06                	lw	t3,64(sp)
a0005660:	4816                	lw	a6,68(sp)
a0005662:	4326                	lw	t1,72(sp)
a0005664:	4eb6                	lw	t4,76(sp)
a0005666:	8672                	mv	a2,t3
a0005668:	01d606b3          	add	a3,a2,t4
a000566c:	fd66eee3          	bltu	a3,s6,a0005648 <__vsnprintf+0x57a>
a0005670:	4681                	li	a3,0
a0005672:	012b6463          	bltu	s6,s2,a000567a <__vsnprintf+0x5ac>
a0005676:	412b06b3          	sub	a3,s6,s2
a000567a:	00190713          	addi	a4,s2,1
a000567e:	9336                	add	t1,t1,a3
a0005680:	00e68933          	add	s2,a3,a4
a0005684:	406989b3          	sub	s3,s3,t1
a0005688:	a829                	j	a00056a2 <__vsnprintf+0x5d4>
a000568a:	8836                	mv	a6,a3
a000568c:	00130893          	addi	a7,t1,1
a0005690:	c2c2                	sw	a6,68(sp)
a0005692:	c0c6                	sw	a7,64(sp)
a0005694:	861a                	mv	a2,t1
a0005696:	86ea                	mv	a3,s10
a0005698:	85de                	mv	a1,s7
a000569a:	9c02                	jalr	s8
a000569c:	4886                	lw	a7,64(sp)
a000569e:	4816                	lw	a6,68(sp)
a00056a0:	8346                	mv	t1,a7
a00056a2:	8069c50b          	lrbu	a0,s3,t1,0
a00056a6:	c519                	beqz	a0,a00056b4 <__vsnprintf+0x5e6>
a00056a8:	fe0d82e3          	beqz	s11,a000568c <__vsnprintf+0x5be>
a00056ac:	fff80693          	addi	a3,a6,-1 # a0007fff <__psram_limit+0xf7c07fff>
a00056b0:	fc081de3          	bnez	a6,a000568a <__vsnprintf+0x5bc>
a00056b4:	d80400e3          	beqz	s0,a0005434 <__vsnprintf+0x366>
a00056b8:	861a                	mv	a2,t1
a00056ba:	40690433          	sub	s0,s2,t1
a00056be:	a819                	j	a00056d4 <__vsnprintf+0x606>
a00056c0:	c09a                	sw	t1,64(sp)
a00056c2:	86ea                	mv	a3,s10
a00056c4:	85de                	mv	a1,s7
a00056c6:	02000513          	li	a0,32
a00056ca:	00160d93          	addi	s11,a2,1
a00056ce:	9c02                	jalr	s8
a00056d0:	4306                	lw	t1,64(sp)
a00056d2:	866e                	mv	a2,s11
a00056d4:	008606b3          	add	a3,a2,s0
a00056d8:	ff66e4e3          	bltu	a3,s6,a00056c0 <__vsnprintf+0x5f2>
a00056dc:	4681                	li	a3,0
a00056de:	012b6463          	bltu	s6,s2,a00056e6 <__vsnprintf+0x618>
a00056e2:	412b06b3          	sub	a3,s6,s2
a00056e6:	9336                	add	t1,t1,a3
a00056e8:	b3b1                	j	a0005434 <__vsnprintf+0x366>
a00056ea:	47a9                	li	a5,10
a00056ec:	c446                	sw	a7,8(sp)
a00056ee:	c23e                	sw	a5,4(sp)
a00056f0:	c042                	sw	a6,0(sp)
a00056f2:	48c1                	li	a7,16
a00056f4:	4801                	li	a6,0
a00056f6:	4781                	li	a5,0
a00056f8:	86ea                	mv	a3,s10
a00056fa:	861a                	mv	a2,t1
a00056fc:	85de                	mv	a1,s7
a00056fe:	8562                	mv	a0,s8
a0005700:	cd3fe0ef          	jal	ra,a00043d2 <print_integer>
a0005704:	b5ad                	j	a000556e <__vsnprintf+0x4a0>
a0005706:	00130413          	addi	s0,t1,1
a000570a:	86ea                	mv	a3,s10
a000570c:	861a                	mv	a2,t1
a000570e:	85de                	mv	a1,s7
a0005710:	02500513          	li	a0,37
a0005714:	9c02                	jalr	s8
a0005716:	8322                	mv	t1,s0
a0005718:	bb31                	j	a0005434 <__vsnprintf+0x366>
a000571a:	02046413          	ori	s0,s0,32
a000571e:	48c1                	li	a7,16
a0005720:	b945                	j	a00053d0 <__vsnprintf+0x302>
a0005722:	48a1                	li	a7,8
a0005724:	b155                	j	a00053c8 <__vsnprintf+0x2fa>
a0005726:	4889                	li	a7,2
a0005728:	b145                	j	a00053c8 <__vsnprintf+0x2fa>

a000572a <console_vsnprintf>:
a000572a:	86aa                	mv	a3,a0
a000572c:	a0004537          	lui	a0,0xa0004
a0005730:	872e                	mv	a4,a1
a0005732:	4601                	li	a2,0
a0005734:	4581                	li	a1,0
a0005736:	75e50513          	addi	a0,a0,1886 # a000475e <__psram_limit+0xf7c0475e>
a000573a:	995ff06f          	j	a00050ce <__vsnprintf>

a000573e <putchar>:
a000573e:	1141                	addi	sp,sp,-16
a0005740:	62fc37b7          	lui	a5,0x62fc3
a0005744:	c422                	sw	s0,8(sp)
a0005746:	842a                	mv	s0,a0
a0005748:	e647a503          	lw	a0,-412(a5) # 62fc2e64 <console>
a000574c:	c606                	sw	ra,12(sp)
a000574e:	cd01                	beqz	a0,a0005766 <putchar+0x28>
a0005750:	0ff47593          	zext.b	a1,s0
a0005754:	c2fbb097          	auipc	ra,0xc2fbb
a0005758:	018080e7          	jalr	24(ra) # 62fc076c <qcc74x_uart_putchar>
a000575c:	40b2                	lw	ra,12(sp)
a000575e:	8522                	mv	a0,s0
a0005760:	4422                	lw	s0,8(sp)
a0005762:	0141                	addi	sp,sp,16
a0005764:	8082                	ret
a0005766:	547d                	li	s0,-1
a0005768:	bfd5                	j	a000575c <putchar+0x1e>

a000576a <puts>:
a000576a:	1101                	addi	sp,sp,-32
a000576c:	ce06                	sw	ra,28(sp)
a000576e:	cc22                	sw	s0,24(sp)
a0005770:	e519                	bnez	a0,a000577e <puts+0x14>
a0005772:	4401                	li	s0,0
a0005774:	40f2                	lw	ra,28(sp)
a0005776:	8522                	mv	a0,s0
a0005778:	4462                	lw	s0,24(sp)
a000577a:	6105                	addi	sp,sp,32
a000577c:	8082                	ret
a000577e:	c62a                	sw	a0,12(sp)
a0005780:	13c020ef          	jal	ra,a00078bc <strlen>
a0005784:	62fc37b7          	lui	a5,0x62fc3
a0005788:	842a                	mv	s0,a0
a000578a:	e647a503          	lw	a0,-412(a5) # 62fc2e64 <console>
a000578e:	d175                	beqz	a0,a0005772 <puts+0x8>
a0005790:	45b2                	lw	a1,12(sp)
a0005792:	8622                	mv	a2,s0
a0005794:	c2fbb097          	auipc	ra,0xc2fbb
a0005798:	02a080e7          	jalr	42(ra) # 62fc07be <qcc74x_uart_put>
a000579c:	bfe1                	j	a0005774 <puts+0xa>

a000579e <printf>:
a000579e:	7139                	addi	sp,sp,-64
a00057a0:	da3e                	sw	a5,52(sp)
a00057a2:	62fc37b7          	lui	a5,0x62fc3
a00057a6:	e647a783          	lw	a5,-412(a5) # 62fc2e64 <console>
a00057aa:	ce06                	sw	ra,28(sp)
a00057ac:	d22e                	sw	a1,36(sp)
a00057ae:	d432                	sw	a2,40(sp)
a00057b0:	d636                	sw	a3,44(sp)
a00057b2:	d83a                	sw	a4,48(sp)
a00057b4:	dc42                	sw	a6,56(sp)
a00057b6:	de46                	sw	a7,60(sp)
a00057b8:	c799                	beqz	a5,a00057c6 <printf+0x28>
a00057ba:	104c                	addi	a1,sp,36
a00057bc:	c62e                	sw	a1,12(sp)
a00057be:	37b5                	jal	a000572a <console_vsnprintf>
a00057c0:	40f2                	lw	ra,28(sp)
a00057c2:	6121                	addi	sp,sp,64
a00057c4:	8082                	ret
a00057c6:	4501                	li	a0,0
a00057c8:	bfe5                	j	a00057c0 <printf+0x22>

a00057ca <qcc74x_uart_set_console>:
a00057ca:	62fc37b7          	lui	a5,0x62fc3
a00057ce:	e6a7a223          	sw	a0,-412(a5) # 62fc2e64 <console>
a00057d2:	8082                	ret

a00057d4 <kmem_init>:
a00057d4:	862e                	mv	a2,a1
a00057d6:	85aa                	mv	a1,a0
a00057d8:	62fc3537          	lui	a0,0x62fc3
a00057dc:	e6850513          	addi	a0,a0,-408 # 62fc2e68 <g_kmemheap>
a00057e0:	aa79                	j	a000597e <qcc74x_mem_init>

a00057e2 <pmem_init>:
a00057e2:	862e                	mv	a2,a1
a00057e4:	85aa                	mv	a1,a0
a00057e6:	62fc3537          	lui	a0,0x62fc3
a00057ea:	e7c50513          	addi	a0,a0,-388 # 62fc2e7c <g_pmemheap>
a00057ee:	aa41                	j	a000597e <qcc74x_mem_init>

a00057f0 <block_next>:
a00057f0:	415c                	lw	a5,4(a0)
a00057f2:	9bf1                	andi	a5,a5,-4
a00057f4:	953e                	add	a0,a0,a5
a00057f6:	0511                	addi	a0,a0,4
a00057f8:	8082                	ret

a00057fa <block_link_next>:
a00057fa:	1141                	addi	sp,sp,-16
a00057fc:	c422                	sw	s0,8(sp)
a00057fe:	c606                	sw	ra,12(sp)
a0005800:	842a                	mv	s0,a0
a0005802:	37fd                	jal	a00057f0 <block_next>
a0005804:	40b2                	lw	ra,12(sp)
a0005806:	c100                	sw	s0,0(a0)
a0005808:	4422                	lw	s0,8(sp)
a000580a:	0141                	addi	sp,sp,16
a000580c:	8082                	ret

a000580e <mapping_insert>:
a000580e:	07f00793          	li	a5,127
a0005812:	00a7e763          	bltu	a5,a0,a0005820 <mapping_insert+0x12>
a0005816:	8509                	srai	a0,a0,0x2
a0005818:	4781                	li	a5,0
a000581a:	c19c                	sw	a5,0(a1)
a000581c:	c208                	sw	a0,0(a2)
a000581e:	8082                	ret
a0005820:	af9506f7          	clz32	a3,a0
a0005824:	4769                	li	a4,26
a0005826:	8f15                	sub	a4,a4,a3
a0005828:	00e55533          	srl	a0,a0,a4
a000582c:	47e5                	li	a5,25
a000582e:	02054513          	xori	a0,a0,32
a0005832:	8f95                	sub	a5,a5,a3
a0005834:	b7dd                	j	a000581a <mapping_insert+0xc>

a0005836 <block_insert>:
a0005836:	1101                	addi	sp,sp,-32
a0005838:	cc22                	sw	s0,24(sp)
a000583a:	842a                	mv	s0,a0
a000583c:	41c8                	lw	a0,4(a1)
a000583e:	ca26                	sw	s1,20(sp)
a0005840:	0070                	addi	a2,sp,12
a0005842:	84ae                	mv	s1,a1
a0005844:	9971                	andi	a0,a0,-4
a0005846:	002c                	addi	a1,sp,8
a0005848:	ce06                	sw	ra,28(sp)
a000584a:	37d1                	jal	a000580e <mapping_insert>
a000584c:	4722                	lw	a4,8(sp)
a000584e:	4632                	lw	a2,12(sp)
a0005850:	40f2                	lw	ra,28(sp)
a0005852:	00571793          	slli	a5,a4,0x5
a0005856:	97b2                	add	a5,a5,a2
a0005858:	04f4178b          	addsl	a5,s0,a5,2
a000585c:	5bf4                	lw	a3,116(a5)
a000585e:	c4c0                	sw	s0,12(s1)
a0005860:	c494                	sw	a3,8(s1)
a0005862:	c6c4                	sw	s1,12(a3)
a0005864:	dbe4                	sw	s1,116(a5)
a0005866:	4814                	lw	a3,16(s0)
a0005868:	4785                	li	a5,1
a000586a:	00e795b3          	sll	a1,a5,a4
a000586e:	8ecd                	or	a3,a3,a1
a0005870:	c814                	sw	a3,16(s0)
a0005872:	04e4140b          	addsl	s0,s0,a4,2
a0005876:	4858                	lw	a4,20(s0)
a0005878:	00c797b3          	sll	a5,a5,a2
a000587c:	44d2                	lw	s1,20(sp)
a000587e:	8fd9                	or	a5,a5,a4
a0005880:	c85c                	sw	a5,20(s0)
a0005882:	4462                	lw	s0,24(sp)
a0005884:	6105                	addi	sp,sp,32
a0005886:	8082                	ret

a0005888 <tlsf_size>:
a0005888:	6505                	lui	a0,0x1
a000588a:	c7450513          	addi	a0,a0,-908 # c74 <VerOffset+0x74>
a000588e:	8082                	ret

a0005890 <tlsf_add_pool>:
a0005890:	1141                	addi	sp,sp,-16
a0005892:	c606                	sw	ra,12(sp)
a0005894:	c422                	sw	s0,8(sp)
a0005896:	c226                	sw	s1,4(sp)
a0005898:	0035f713          	andi	a4,a1,3
a000589c:	cf11                	beqz	a4,a00058b8 <tlsf_add_pool+0x28>
a000589e:	a0008537          	lui	a0,0xa0008
a00058a2:	4591                	li	a1,4
a00058a4:	a3850513          	addi	a0,a0,-1480 # a0007a38 <__psram_limit+0xf7c07a38>
a00058a8:	3ddd                	jal	a000579e <printf>
a00058aa:	4401                	li	s0,0
a00058ac:	40b2                	lw	ra,12(sp)
a00058ae:	8522                	mv	a0,s0
a00058b0:	4422                	lw	s0,8(sp)
a00058b2:	4492                	lw	s1,4(sp)
a00058b4:	0141                	addi	sp,sp,16
a00058b6:	8082                	ret
a00058b8:	ff860793          	addi	a5,a2,-8
a00058bc:	9bf1                	andi	a5,a5,-4
a00058be:	40000637          	lui	a2,0x40000
a00058c2:	ff478713          	addi	a4,a5,-12
a00058c6:	ff460693          	addi	a3,a2,-12 # 3ffffff4 <__wifi_bss_end+0x1cfcfff4>
a00058ca:	00e6fa63          	bgeu	a3,a4,a00058de <tlsf_add_pool+0x4e>
a00058ce:	a0008537          	lui	a0,0xa0008
a00058d2:	0621                	addi	a2,a2,8
a00058d4:	45d1                	li	a1,20
a00058d6:	a6c50513          	addi	a0,a0,-1428 # a0007a6c <__psram_limit+0xf7c07a6c>
a00058da:	35d1                	jal	a000579e <printf>
a00058dc:	b7f9                	j	a00058aa <tlsf_add_pool+0x1a>
a00058de:	84ae                	mv	s1,a1
a00058e0:	59c4c70b          	lwia	a4,(s1),-4,0
a00058e4:	0017e793          	ori	a5,a5,1
a00058e8:	842e                	mv	s0,a1
a00058ea:	c0dc                	sw	a5,4(s1)
a00058ec:	85a6                	mv	a1,s1
a00058ee:	37a1                	jal	a0005836 <block_insert>
a00058f0:	8526                	mv	a0,s1
a00058f2:	3721                	jal	a00057fa <block_link_next>
a00058f4:	4789                	li	a5,2
a00058f6:	c15c                	sw	a5,4(a0)
a00058f8:	bf55                	j	a00058ac <tlsf_add_pool+0x1c>

a00058fa <tlsf_create>:
a00058fa:	00357793          	andi	a5,a0,3
a00058fe:	cf89                	beqz	a5,a0005918 <tlsf_create+0x1e>
a0005900:	a0008537          	lui	a0,0xa0008
a0005904:	1141                	addi	sp,sp,-16
a0005906:	4591                	li	a1,4
a0005908:	aac50513          	addi	a0,a0,-1364 # a0007aac <__psram_limit+0xf7c07aac>
a000590c:	c606                	sw	ra,12(sp)
a000590e:	3d41                	jal	a000579e <printf>
a0005910:	40b2                	lw	ra,12(sp)
a0005912:	4501                	li	a0,0
a0005914:	0141                	addi	sp,sp,16
a0005916:	8082                	ret
a0005918:	c508                	sw	a0,8(a0)
a000591a:	c548                	sw	a0,12(a0)
a000591c:	00052823          	sw	zero,16(a0)
a0005920:	07450693          	addi	a3,a0,116
a0005924:	4781                	li	a5,0
a0005926:	01450593          	addi	a1,a0,20
a000592a:	02000813          	li	a6,32
a000592e:	4661                	li	a2,24
a0005930:	44f5d00b          	srw	zero,a1,a5,2
a0005934:	4701                	li	a4,0
a0005936:	44e6d50b          	srw	a0,a3,a4,2
a000593a:	0705                	addi	a4,a4,1
a000593c:	ff071de3          	bne	a4,a6,a0005936 <tlsf_create+0x3c>
a0005940:	0785                	addi	a5,a5,1
a0005942:	08068693          	addi	a3,a3,128
a0005946:	fec795e3          	bne	a5,a2,a0005930 <tlsf_create+0x36>
a000594a:	8082                	ret

a000594c <tlsf_create_with_pool>:
a000594c:	1101                	addi	sp,sp,-32
a000594e:	ce06                	sw	ra,28(sp)
a0005950:	cc22                	sw	s0,24(sp)
a0005952:	ca26                	sw	s1,20(sp)
a0005954:	c62e                	sw	a1,12(sp)
a0005956:	84aa                	mv	s1,a0
a0005958:	374d                	jal	a00058fa <tlsf_create>
a000595a:	45b2                	lw	a1,12(sp)
a000595c:	77fd                	lui	a5,0xfffff
a000595e:	38c78793          	addi	a5,a5,908 # fffff38c <__psram_limit+0x57bff38c>
a0005962:	00f58633          	add	a2,a1,a5
a0005966:	6585                	lui	a1,0x1
a0005968:	c7458593          	addi	a1,a1,-908 # c74 <VerOffset+0x74>
a000596c:	95a6                	add	a1,a1,s1
a000596e:	842a                	mv	s0,a0
a0005970:	3705                	jal	a0005890 <tlsf_add_pool>
a0005972:	40f2                	lw	ra,28(sp)
a0005974:	8522                	mv	a0,s0
a0005976:	4462                	lw	s0,24(sp)
a0005978:	44d2                	lw	s1,20(sp)
a000597a:	6105                	addi	sp,sp,32
a000597c:	8082                	ret

a000597e <qcc74x_mem_init>:
a000597e:	1101                	addi	sp,sp,-32
a0005980:	ce06                	sw	ra,28(sp)
a0005982:	cc22                	sw	s0,24(sp)
a0005984:	ca26                	sw	s1,20(sp)
a0005986:	842a                	mv	s0,a0
a0005988:	84ae                	mv	s1,a1
a000598a:	c632                	sw	a2,12(sp)
a000598c:	3df5                	jal	a0005888 <tlsf_size>
a000598e:	9526                	add	a0,a0,s1
a0005990:	c048                	sw	a0,4(s0)
a0005992:	3ddd                	jal	a0005888 <tlsf_size>
a0005994:	4632                	lw	a2,12(sp)
a0005996:	40a60533          	sub	a0,a2,a0
a000599a:	c408                	sw	a0,8(s0)
a000599c:	85b2                	mv	a1,a2
a000599e:	8526                	mv	a0,s1
a00059a0:	3775                	jal	a000594c <tlsf_create_with_pool>
a00059a2:	441c                	lw	a5,8(s0)
a00059a4:	40f2                	lw	ra,28(sp)
a00059a6:	c008                	sw	a0,0(s0)
a00059a8:	c45c                	sw	a5,12(s0)
a00059aa:	c81c                	sw	a5,16(s0)
a00059ac:	4462                	lw	s0,24(sp)
a00059ae:	44d2                	lw	s1,20(sp)
a00059b0:	6105                	addi	sp,sp,32
a00059b2:	8082                	ret

a00059b4 <log_start>:
a00059b4:	8082                	ret

a00059b6 <coredump_run>:
a00059b6:	711d                	addi	sp,sp,-96
a00059b8:	cca2                	sw	s0,88(sp)
a00059ba:	62fc3537          	lui	a0,0x62fc3
a00059be:	a0009437          	lui	s0,0xa0009
a00059c2:	c5c40593          	addi	a1,s0,-932 # a0008c5c <__psram_limit+0xf7c08c5c>
a00059c6:	4651                	li	a2,20
a00059c8:	e9050513          	addi	a0,a0,-368 # 62fc2e90 <core_build_id>
a00059cc:	ce86                	sw	ra,92(sp)
a00059ce:	c4d2                	sw	s4,72(sp)
a00059d0:	c2d6                	sw	s5,68(sp)
a00059d2:	c0da                	sw	s6,64(sp)
a00059d4:	caa6                	sw	s1,84(sp)
a00059d6:	c8ca                	sw	s2,80(sp)
a00059d8:	c6ce                	sw	s3,76(sp)
a00059da:	cf0fe0ef          	jal	ra,a0003eca <memcpy>
a00059de:	a0008537          	lui	a0,0xa0008
a00059e2:	ae050513          	addi	a0,a0,-1312 # a0007ae0 <__psram_limit+0xf7c07ae0>
a00059e6:	3b65                	jal	a000579e <printf>
a00059e8:	c5c40613          	addi	a2,s0,-932
a00059ec:	01364783          	lbu	a5,19(a2)
a00059f0:	a0008537          	lui	a0,0xa0008
a00059f4:	b2850513          	addi	a0,a0,-1240 # a0007b28 <__psram_limit+0xf7c07b28>
a00059f8:	d83e                	sw	a5,48(sp)
a00059fa:	01264783          	lbu	a5,18(a2)
a00059fe:	5a75                	li	s4,-3
a0005a00:	40000a93          	li	s5,1024
a0005a04:	d63e                	sw	a5,44(sp)
a0005a06:	01164783          	lbu	a5,17(a2)
a0005a0a:	a0008b37          	lui	s6,0xa0008
a0005a0e:	d43e                	sw	a5,40(sp)
a0005a10:	01064783          	lbu	a5,16(a2)
a0005a14:	d23e                	sw	a5,36(sp)
a0005a16:	00f64783          	lbu	a5,15(a2)
a0005a1a:	d03e                	sw	a5,32(sp)
a0005a1c:	00e64783          	lbu	a5,14(a2)
a0005a20:	ce3e                	sw	a5,28(sp)
a0005a22:	00d64783          	lbu	a5,13(a2)
a0005a26:	cc3e                	sw	a5,24(sp)
a0005a28:	00c64783          	lbu	a5,12(a2)
a0005a2c:	ca3e                	sw	a5,20(sp)
a0005a2e:	00b64783          	lbu	a5,11(a2)
a0005a32:	c83e                	sw	a5,16(sp)
a0005a34:	00a64783          	lbu	a5,10(a2)
a0005a38:	c63e                	sw	a5,12(sp)
a0005a3a:	00964783          	lbu	a5,9(a2)
a0005a3e:	c43e                	sw	a5,8(sp)
a0005a40:	00864783          	lbu	a5,8(a2)
a0005a44:	c23e                	sw	a5,4(sp)
a0005a46:	00764783          	lbu	a5,7(a2)
a0005a4a:	c03e                	sw	a5,0(sp)
a0005a4c:	00664883          	lbu	a7,6(a2)
a0005a50:	00564803          	lbu	a6,5(a2)
a0005a54:	00464783          	lbu	a5,4(a2)
a0005a58:	00364703          	lbu	a4,3(a2)
a0005a5c:	00264683          	lbu	a3,2(a2)
a0005a60:	00164603          	lbu	a2,1(a2)
a0005a64:	c5c44583          	lbu	a1,-932(s0)
a0005a68:	a0009437          	lui	s0,0xa0009
a0005a6c:	c2440413          	addi	s0,s0,-988 # a0008c24 <__psram_limit+0xf7c08c24>
a0005a70:	333d                	jal	a000579e <printf>
a0005a72:	00042983          	lw	s3,0(s0)
a0005a76:	fff98793          	addi	a5,s3,-1
a0005a7a:	00fa7b63          	bgeu	s4,a5,a0005a90 <coredump_run+0xda>
a0005a7e:	a0008537          	lui	a0,0xa0008
a0005a82:	b9450513          	addi	a0,a0,-1132 # a0007b94 <__psram_limit+0xf7c07b94>
a0005a86:	3b21                	jal	a000579e <printf>
a0005a88:	7c2010ef          	jal	ra,a000724a <qcc74x_sys_reset_por>
a0005a8c:	0001                	nop
a0005a8e:	bffd                	j	a0005a8c <coredump_run+0xd6>
a0005a90:	00442903          	lw	s2,4(s0)
a0005a94:	00091463          	bnez	s2,a0005a9c <coredump_run+0xe6>
a0005a98:	0421                	addi	s0,s0,8
a0005a9a:	bfe1                	j	a0005a72 <coredump_run+0xbc>
a0005a9c:	4481                	li	s1,0
a0005a9e:	40990633          	sub	a2,s2,s1
a0005aa2:	009985b3          	add	a1,s3,s1
a0005aa6:	00caf463          	bgeu	s5,a2,a0005aae <coredump_run+0xf8>
a0005aaa:	40000613          	li	a2,1024
a0005aae:	b88b0693          	addi	a3,s6,-1144 # a0007b88 <__psram_limit+0xf7c07b88>
a0005ab2:	852e                	mv	a0,a1
a0005ab4:	40048493          	addi	s1,s1,1024
a0005ab8:	2851                	jal	a0005b4c <coredump_print>
a0005aba:	ff24e2e3          	bltu	s1,s2,a0005a9e <coredump_run+0xe8>
a0005abe:	bfe9                	j	a0005a98 <coredump_run+0xe2>

a0005ac0 <cd_base64_write_block>:
a0005ac0:	1141                	addi	sp,sp,-16
a0005ac2:	c606                	sw	ra,12(sp)
a0005ac4:	c422                	sw	s0,8(sp)
a0005ac6:	c226                	sw	s1,4(sp)
a0005ac8:	842a                	mv	s0,a0
a0005aca:	00054503          	lbu	a0,0(a0)
a0005ace:	84ae                	mv	s1,a1
a0005ad0:	31bd                	jal	a000573e <putchar>
a0005ad2:	00144503          	lbu	a0,1(s0)
a0005ad6:	31a5                	jal	a000573e <putchar>
a0005ad8:	00244503          	lbu	a0,2(s0)
a0005adc:	318d                	jal	a000573e <putchar>
a0005ade:	00344503          	lbu	a0,3(s0)
a0005ae2:	39b1                	jal	a000573e <putchar>
a0005ae4:	409c                	lw	a5,0(s1)
a0005ae6:	4765                	li	a4,25
a0005ae8:	0785                	addi	a5,a5,1
a0005aea:	c09c                	sw	a5,0(s1)
a0005aec:	00f75963          	bge	a4,a5,a0005afe <cd_base64_write_block+0x3e>
a0005af0:	a0009537          	lui	a0,0xa0009
a0005af4:	a2450513          	addi	a0,a0,-1500 # a0008a24 <__psram_limit+0xf7c08a24>
a0005af8:	398d                	jal	a000576a <puts>
a0005afa:	0004a023          	sw	zero,0(s1)
a0005afe:	40b2                	lw	ra,12(sp)
a0005b00:	4422                	lw	s0,8(sp)
a0005b02:	4492                	lw	s1,4(sp)
a0005b04:	0141                	addi	sp,sp,16
a0005b06:	8082                	ret

a0005b08 <read_word_cb>:
a0005b08:	4598                	lw	a4,8(a1)
a0005b0a:	45dc                	lw	a5,12(a1)
a0005b0c:	02f77e63          	bgeu	a4,a5,a0005b48 <read_word_cb+0x40>
a0005b10:	41d4                	lw	a3,4(a1)
a0005b12:	1141                	addi	sp,sp,-16
a0005b14:	c606                	sw	ra,12(sp)
a0005b16:	ffc77793          	andi	a5,a4,-4
a0005b1a:	00f68563          	beq	a3,a5,a0005b24 <read_word_cb+0x1c>
a0005b1e:	c1dc                	sw	a5,4(a1)
a0005b20:	439c                	lw	a5,0(a5)
a0005b22:	c99c                	sw	a5,16(a1)
a0005b24:	8b0d                	andi	a4,a4,3
a0005b26:	972e                	add	a4,a4,a1
a0005b28:	01074703          	lbu	a4,16(a4)
a0005b2c:	87ae                	mv	a5,a1
a0005b2e:	00e50023          	sb	a4,0(a0)
a0005b32:	4598                	lw	a4,8(a1)
a0005b34:	0705                	addi	a4,a4,1
a0005b36:	c598                	sw	a4,8(a1)
a0005b38:	00054583          	lbu	a1,0(a0)
a0005b3c:	4bc8                	lw	a0,20(a5)
a0005b3e:	2415                	jal	a0005d62 <utils_crc32_stream_feed>
a0005b40:	40b2                	lw	ra,12(sp)
a0005b42:	4501                	li	a0,0
a0005b44:	0141                	addi	sp,sp,16
a0005b46:	8082                	ret
a0005b48:	4505                	li	a0,1
a0005b4a:	8082                	ret

a0005b4c <coredump_print>:
a0005b4c:	715d                	addi	sp,sp,-80
a0005b4e:	c2a6                	sw	s1,68(sp)
a0005b50:	62fc34b7          	lui	s1,0x62fc3
a0005b54:	ea448493          	addi	s1,s1,-348 # 62fc2ea4 <init.0>
a0005b58:	409c                	lw	a5,0(s1)
a0005b5a:	c4a2                	sw	s0,72(sp)
a0005b5c:	c0ca                	sw	s2,64(sp)
a0005b5e:	de4e                	sw	s3,60(sp)
a0005b60:	dc52                	sw	s4,56(sp)
a0005b62:	c686                	sw	ra,76(sp)
a0005b64:	da56                	sw	s5,52(sp)
a0005b66:	892a                	mv	s2,a0
a0005b68:	89ae                	mv	s3,a1
a0005b6a:	8432                	mv	s0,a2
a0005b6c:	8a36                	mv	s4,a3
a0005b6e:	eb81                	bnez	a5,a0005b7e <coredump_print+0x32>
a0005b70:	a0008537          	lui	a0,0xa0008
a0005b74:	bbc50513          	addi	a0,a0,-1092 # a0007bbc <__psram_limit+0xf7c07bbc>
a0005b78:	3ecd                	jal	a000576a <puts>
a0005b7a:	4785                	li	a5,1
a0005b7c:	c09c                	sw	a5,0(s1)
a0005b7e:	a0008537          	lui	a0,0xa0008
a0005b82:	8209190b          	rev	s2,s2
a0005b86:	be850513          	addi	a0,a0,-1048 # a0007be8 <__psram_limit+0xf7c07be8>
a0005b8a:	c802                	sw	zero,16(sp)
a0005b8c:	ca02                	sw	zero,20(sp)
a0005b8e:	3ef1                	jal	a000576a <puts>
a0005b90:	c64a                	sw	s2,12(sp)
a0005b92:	00c10913          	addi	s2,sp,12
a0005b96:	4611                	li	a2,4
a0005b98:	85ca                	mv	a1,s2
a0005b9a:	0808                	addi	a0,sp,16
a0005b9c:	22ed                	jal	a0005d86 <utils_bin2hex>
a0005b9e:	4481                	li	s1,0
a0005ba0:	4aa1                	li	s5,8
a0005ba2:	081c                	addi	a5,sp,16
a0005ba4:	8097c50b          	lrbu	a0,a5,s1,0
a0005ba8:	0485                	addi	s1,s1,1
a0005baa:	3e51                	jal	a000573e <putchar>
a0005bac:	ff549be3          	bne	s1,s5,a0005ba2 <coredump_print+0x56>
a0005bb0:	04000513          	li	a0,64
a0005bb4:	3669                	jal	a000573e <putchar>
a0005bb6:	8204178b          	rev	a5,s0
a0005bba:	4611                	li	a2,4
a0005bbc:	85ca                	mv	a1,s2
a0005bbe:	0808                	addi	a0,sp,16
a0005bc0:	c63e                	sw	a5,12(sp)
a0005bc2:	4481                	li	s1,0
a0005bc4:	22c9                	jal	a0005d86 <utils_bin2hex>
a0005bc6:	4aa1                	li	s5,8
a0005bc8:	081c                	addi	a5,sp,16
a0005bca:	8097c50b          	lrbu	a0,a5,s1,0
a0005bce:	0485                	addi	s1,s1,1
a0005bd0:	36bd                	jal	a000573e <putchar>
a0005bd2:	ff549be3          	bne	s1,s5,a0005bc8 <coredump_print+0x7c>
a0005bd6:	000a0763          	beqz	s4,a0005be4 <coredump_print+0x98>
a0005bda:	04000513          	li	a0,64
a0005bde:	3685                	jal	a000573e <putchar>
a0005be0:	8552                	mv	a0,s4
a0005be2:	3661                	jal	a000576a <puts>
a0005be4:	a00084b7          	lui	s1,0xa0008
a0005be8:	c0048513          	addi	a0,s1,-1024 # a0007c00 <__psram_limit+0xf7c07c00>
a0005bec:	3ebd                	jal	a000576a <puts>
a0005bee:	0048                	addi	a0,sp,4
a0005bf0:	22b5                	jal	a0005d5c <utils_crc32_stream_init>
a0005bf2:	ffc9f793          	andi	a5,s3,-4
a0005bf6:	ce3e                	sw	a5,28(sp)
a0005bf8:	943e                	add	s0,s0,a5
a0005bfa:	439c                	lw	a5,0(a5)
a0005bfc:	d04e                	sw	s3,32(sp)
a0005bfe:	d222                	sw	s0,36(sp)
a0005c00:	a00069b7          	lui	s3,0xa0006
a0005c04:	a0006437          	lui	s0,0xa0006
a0005c08:	0830                	addi	a2,sp,24
a0005c0a:	ac098593          	addi	a1,s3,-1344 # a0005ac0 <__psram_limit+0xf7c05ac0>
a0005c0e:	d43e                	sw	a5,40(sp)
a0005c10:	b0840513          	addi	a0,s0,-1272 # a0005b08 <__psram_limit+0xf7c05b08>
a0005c14:	005c                	addi	a5,sp,4
a0005c16:	d63e                	sw	a5,44(sp)
a0005c18:	cc02                	sw	zero,24(sp)
a0005c1a:	2099                	jal	a0005c60 <utils_base64_encode_stream>
a0005c1c:	a0008537          	lui	a0,0xa0008
a0005c20:	c0c50513          	addi	a0,a0,-1012 # a0007c0c <__psram_limit+0xf7c07c0c>
a0005c24:	3699                	jal	a000576a <puts>
a0005c26:	0048                	addi	a0,sp,4
a0005c28:	2a99                	jal	a0005d7e <utils_crc32_stream_results>
a0005c2a:	003c                	addi	a5,sp,8
a0005c2c:	c42a                	sw	a0,8(sp)
a0005c2e:	ce3e                	sw	a5,28(sp)
a0005c30:	d03e                	sw	a5,32(sp)
a0005c32:	d42a                	sw	a0,40(sp)
a0005c34:	005c                	addi	a5,sp,4
a0005c36:	0830                	addi	a2,sp,24
a0005c38:	ac098593          	addi	a1,s3,-1344
a0005c3c:	b0840513          	addi	a0,s0,-1272
a0005c40:	d24a                	sw	s2,36(sp)
a0005c42:	d63e                	sw	a5,44(sp)
a0005c44:	cc02                	sw	zero,24(sp)
a0005c46:	2829                	jal	a0005c60 <utils_base64_encode_stream>
a0005c48:	c0048513          	addi	a0,s1,-1024
a0005c4c:	3e39                	jal	a000576a <puts>
a0005c4e:	40b6                	lw	ra,76(sp)
a0005c50:	4426                	lw	s0,72(sp)
a0005c52:	4496                	lw	s1,68(sp)
a0005c54:	4906                	lw	s2,64(sp)
a0005c56:	59f2                	lw	s3,60(sp)
a0005c58:	5a62                	lw	s4,56(sp)
a0005c5a:	5ad2                	lw	s5,52(sp)
a0005c5c:	6161                	addi	sp,sp,80
a0005c5e:	8082                	ret

a0005c60 <utils_base64_encode_stream>:
a0005c60:	7139                	addi	sp,sp,-64
a0005c62:	d84a                	sw	s2,48(sp)
a0005c64:	a0008937          	lui	s2,0xa0008
a0005c68:	da26                	sw	s1,52(sp)
a0005c6a:	d64e                	sw	s3,44(sp)
a0005c6c:	d452                	sw	s4,40(sp)
a0005c6e:	d256                	sw	s5,36(sp)
a0005c70:	d05a                	sw	s6,32(sp)
a0005c72:	ce5e                	sw	s7,28(sp)
a0005c74:	de06                	sw	ra,60(sp)
a0005c76:	dc22                	sw	s0,56(sp)
a0005c78:	cc62                	sw	s8,24(sp)
a0005c7a:	8a2a                	mv	s4,a0
a0005c7c:	8aae                	mv	s5,a1
a0005c7e:	89b2                	mv	s3,a2
a0005c80:	54fd                	li	s1,-1
a0005c82:	5b7d                	li	s6,-1
a0005c84:	c1c90913          	addi	s2,s2,-996 # a0007c1c <__psram_limit+0xf7c07c1c>
a0005c88:	00c10b93          	addi	s7,sp,12
a0005c8c:	85ce                	mv	a1,s3
a0005c8e:	00b10513          	addi	a0,sp,11
a0005c92:	9a02                	jalr	s4
a0005c94:	c15d                	beqz	a0,a0005d3a <utils_base64_encode_stream+0xda>
a0005c96:	0004d363          	bgez	s1,a0005c9c <utils_base64_encode_stream+0x3c>
a0005c9a:	4481                	li	s1,0
a0005c9c:	4401                	li	s0,0
a0005c9e:	85ce                	mv	a1,s3
a0005ca0:	00b10513          	addi	a0,sp,11
a0005ca4:	9a02                	jalr	s4
a0005ca6:	cd49                	beqz	a0,a0005d40 <utils_base64_encode_stream+0xe0>
a0005ca8:	4c01                	li	s8,0
a0005caa:	01649363          	bne	s1,s6,a0005cb0 <utils_base64_encode_stream+0x50>
a0005cae:	4485                	li	s1,1
a0005cb0:	85ce                	mv	a1,s3
a0005cb2:	00b10513          	addi	a0,sp,11
a0005cb6:	9a02                	jalr	s4
a0005cb8:	c559                	beqz	a0,a0005d46 <utils_base64_encode_stream+0xe6>
a0005cba:	4701                	li	a4,0
a0005cbc:	01649363          	bne	s1,s6,a0005cc2 <utils_base64_encode_stream+0x62>
a0005cc0:	4489                	li	s1,2
a0005cc2:	01041793          	slli	a5,s0,0x10
a0005cc6:	0c22                	slli	s8,s8,0x8
a0005cc8:	97e2                	add	a5,a5,s8
a0005cca:	97ba                	add	a5,a5,a4
a0005ccc:	c111                	beqz	a0,a0005cd0 <utils_base64_encode_stream+0x70>
a0005cce:	c8b1                	beqz	s1,a0005d22 <utils_base64_encode_stream+0xc2>
a0005cd0:	0127d713          	srli	a4,a5,0x12
a0005cd4:	80e9470b          	lrbu	a4,s2,a4,0
a0005cd8:	00e10623          	sb	a4,12(sp)
a0005cdc:	44c7b70b          	extu	a4,a5,17,12
a0005ce0:	80e9470b          	lrbu	a4,s2,a4,0
a0005ce4:	00e106a3          	sb	a4,13(sp)
a0005ce8:	2c67b70b          	extu	a4,a5,11,6
a0005cec:	03f7f793          	andi	a5,a5,63
a0005cf0:	80e9470b          	lrbu	a4,s2,a4,0
a0005cf4:	80f9478b          	lrbu	a5,s2,a5,0
a0005cf8:	00e10723          	sb	a4,14(sp)
a0005cfc:	00f107a3          	sb	a5,15(sp)
a0005d00:	c531                	beqz	a0,a0005d4c <utils_base64_encode_stream+0xec>
a0005d02:	a00087b7          	lui	a5,0xa0008
a0005d06:	c5c78793          	addi	a5,a5,-932 # a0007c5c <__psram_limit+0xf7c07c5c>
a0005d0a:	4497c70b          	lrw	a4,a5,s1,2
a0005d0e:	03d00613          	li	a2,61
a0005d12:	87de                	mv	a5,s7
a0005d14:	40fb86b3          	sub	a3,s7,a5
a0005d18:	02e6ce63          	blt	a3,a4,a0005d54 <utils_base64_encode_stream+0xf4>
a0005d1c:	85ce                	mv	a1,s3
a0005d1e:	855e                	mv	a0,s7
a0005d20:	9a82                	jalr	s5
a0005d22:	50f2                	lw	ra,60(sp)
a0005d24:	5462                	lw	s0,56(sp)
a0005d26:	54d2                	lw	s1,52(sp)
a0005d28:	5942                	lw	s2,48(sp)
a0005d2a:	59b2                	lw	s3,44(sp)
a0005d2c:	5a22                	lw	s4,40(sp)
a0005d2e:	5a92                	lw	s5,36(sp)
a0005d30:	5b02                	lw	s6,32(sp)
a0005d32:	4bf2                	lw	s7,28(sp)
a0005d34:	4c62                	lw	s8,24(sp)
a0005d36:	6121                	addi	sp,sp,64
a0005d38:	8082                	ret
a0005d3a:	00b14403          	lbu	s0,11(sp)
a0005d3e:	b785                	j	a0005c9e <utils_base64_encode_stream+0x3e>
a0005d40:	00b14c03          	lbu	s8,11(sp)
a0005d44:	b7b5                	j	a0005cb0 <utils_base64_encode_stream+0x50>
a0005d46:	00b14703          	lbu	a4,11(sp)
a0005d4a:	bfa5                	j	a0005cc2 <utils_base64_encode_stream+0x62>
a0005d4c:	85ce                	mv	a1,s3
a0005d4e:	855e                	mv	a0,s7
a0005d50:	9a82                	jalr	s5
a0005d52:	bf2d                	j	a0005c8c <utils_base64_encode_stream+0x2c>
a0005d54:	00c781a3          	sb	a2,3(a5)
a0005d58:	17fd                	addi	a5,a5,-1
a0005d5a:	bf6d                	j	a0005d14 <utils_base64_encode_stream+0xb4>

a0005d5c <utils_crc32_stream_init>:
a0005d5c:	57fd                	li	a5,-1
a0005d5e:	c11c                	sw	a5,0(a0)
a0005d60:	8082                	ret

a0005d62 <utils_crc32_stream_feed>:
a0005d62:	411c                	lw	a5,0(a0)
a0005d64:	a0008737          	lui	a4,0xa0008
a0005d68:	c6870713          	addi	a4,a4,-920 # a0007c68 <__psram_limit+0xf7c07c68>
a0005d6c:	8dbd                	xor	a1,a1,a5
a0005d6e:	0ff5f593          	zext.b	a1,a1
a0005d72:	44b7470b          	lrw	a4,a4,a1,2
a0005d76:	83a1                	srli	a5,a5,0x8
a0005d78:	8fb9                	xor	a5,a5,a4
a0005d7a:	c11c                	sw	a5,0(a0)
a0005d7c:	8082                	ret

a0005d7e <utils_crc32_stream_results>:
a0005d7e:	4108                	lw	a0,0(a0)
a0005d80:	fff54513          	not	a0,a0
a0005d84:	8082                	ret

a0005d86 <utils_bin2hex>:
a0005d86:	a0008737          	lui	a4,0xa0008
a0005d8a:	4781                	li	a5,0
a0005d8c:	06870713          	addi	a4,a4,104 # a0008068 <__psram_limit+0xf7c08068>
a0005d90:	00150813          	addi	a6,a0,1
a0005d94:	00f61563          	bne	a2,a5,a0005d9e <utils_bin2hex+0x18>
a0005d98:	02c5150b          	addsl	a0,a0,a2,1
a0005d9c:	8082                	ret
a0005d9e:	80f5c68b          	lrbu	a3,a1,a5,0
a0005da2:	0046d893          	srli	a7,a3,0x4
a0005da6:	8117488b          	lrbu	a7,a4,a7,0
a0005daa:	8abd                	andi	a3,a3,15
a0005dac:	80d7468b          	lrbu	a3,a4,a3,0
a0005db0:	02f5588b          	srb	a7,a0,a5,1
a0005db4:	02f8568b          	srb	a3,a6,a5,1
a0005db8:	0785                	addi	a5,a5,1
a0005dba:	bfe9                	j	a0005d94 <utils_bin2hex+0xe>

a0005dbc <qcc74x_gpio_init>:
a0005dbc:	1101                	addi	sp,sp,-32
a0005dbe:	c84a                	sw	s2,16(sp)
a0005dc0:	00452903          	lw	s2,4(a0)
a0005dc4:	852e                	mv	a0,a1
a0005dc6:	cc22                	sw	s0,24(sp)
a0005dc8:	ca26                	sw	s1,20(sp)
a0005dca:	3c06340b          	extu	s0,a2,15,0
a0005dce:	34c6348b          	extu	s1,a2,13,12
a0005dd2:	c632                	sw	a2,12(sp)
a0005dd4:	c42e                	sw	a1,8(sp)
a0005dd6:	ce06                	sw	ra,28(sp)
a0005dd8:	3d4010ef          	jal	ra,a00071ac <qcc74x_gpio_pad_check>
a0005ddc:	45a2                	lw	a1,8(sp)
a0005dde:	47c1                	li	a5,16
a0005de0:	4632                	lw	a2,12(sp)
a0005de2:	06f59463          	bne	a1,a5,a0005e4a <qcc74x_gpio_init+0x8e>
a0005de6:	2000f6b7          	lui	a3,0x2000f
a0005dea:	5e9c                	lw	a5,56(a3)
a0005dec:	fff00737          	lui	a4,0xfff00
a0005df0:	177d                	addi	a4,a4,-1
a0005df2:	8ff9                	and	a5,a5,a4
a0005df4:	de9c                	sw	a5,56(a3)
a0005df6:	08047793          	andi	a5,s0,128
a0005dfa:	04b9158b          	addsl	a1,s2,a1,2
a0005dfe:	efa5                	bnez	a5,a0005e76 <qcc74x_gpio_init+0xba>
a0005e00:	10047793          	andi	a5,s0,256
a0005e04:	cfa1                	beqz	a5,a0005e5c <qcc74x_gpio_init+0xa0>
a0005e06:	004007b7          	lui	a5,0x400
a0005e0a:	01f67713          	andi	a4,a2,31
a0005e0e:	0785                	addi	a5,a5,1
a0005e10:	20067693          	andi	a3,a2,512
a0005e14:	c6ad                	beqz	a3,a0005e7e <qcc74x_gpio_init+0xc2>
a0005e16:	0107e793          	ori	a5,a5,16
a0005e1a:	2cb6360b          	extu	a2,a2,11,11
a0005e1e:	c219                	beqz	a2,a0005e24 <qcc74x_gpio_init+0x68>
a0005e20:	0027e793          	ori	a5,a5,2
a0005e24:	048a                	slli	s1,s1,0x2
a0005e26:	8cdd                	or	s1,s1,a5
a0005e28:	00871793          	slli	a5,a4,0x8
a0005e2c:	8fc5                	or	a5,a5,s1
a0005e2e:	40000737          	lui	a4,0x40000
a0005e32:	40f2                	lw	ra,28(sp)
a0005e34:	4462                	lw	s0,24(sp)
a0005e36:	8fd9                	or	a5,a5,a4
a0005e38:	6705                	lui	a4,0x1
a0005e3a:	8c470713          	addi	a4,a4,-1852 # 8c4 <__RFTLV_SIZE_HOLE+0xc4>
a0005e3e:	40e5d78b          	srw	a5,a1,a4,0
a0005e42:	44d2                	lw	s1,20(sp)
a0005e44:	4942                	lw	s2,16(sp)
a0005e46:	6105                	addi	sp,sp,32
a0005e48:	8082                	ret
a0005e4a:	47c5                	li	a5,17
a0005e4c:	faf595e3          	bne	a1,a5,a0005df6 <qcc74x_gpio_init+0x3a>
a0005e50:	2000f6b7          	lui	a3,0x2000f
a0005e54:	5e9c                	lw	a5,56(a3)
a0005e56:	ffe00737          	lui	a4,0xffe00
a0005e5a:	bf59                	j	a0005df0 <qcc74x_gpio_init+0x34>
a0005e5c:	02047713          	andi	a4,s0,32
a0005e60:	004007b7          	lui	a5,0x400
a0005e64:	c311                	beqz	a4,a0005e68 <qcc74x_gpio_init+0xac>
a0005e66:	0785                	addi	a5,a5,1
a0005e68:	04047413          	andi	s0,s0,64
a0005e6c:	472d                	li	a4,11
a0005e6e:	d04d                	beqz	s0,a0005e10 <qcc74x_gpio_init+0x54>
a0005e70:	0407e793          	ori	a5,a5,64
a0005e74:	bf71                	j	a0005e10 <qcc74x_gpio_init+0x54>
a0005e76:	4729                	li	a4,10
a0005e78:	004007b7          	lui	a5,0x400
a0005e7c:	bf51                	j	a0005e10 <qcc74x_gpio_init+0x54>
a0005e7e:	40067693          	andi	a3,a2,1024
a0005e82:	dec1                	beqz	a3,a0005e1a <qcc74x_gpio_init+0x5e>
a0005e84:	0207e793          	ori	a5,a5,32
a0005e88:	bf49                	j	a0005e1a <qcc74x_gpio_init+0x5e>

a0005e8a <qcc74x_gpio_set>:
a0005e8a:	1101                	addi	sp,sp,-32
a0005e8c:	cc22                	sw	s0,24(sp)
a0005e8e:	842a                	mv	s0,a0
a0005e90:	852e                	mv	a0,a1
a0005e92:	ce06                	sw	ra,28(sp)
a0005e94:	c62e                	sw	a1,12(sp)
a0005e96:	316010ef          	jal	ra,a00071ac <qcc74x_gpio_pad_check>
a0005e9a:	405c                	lw	a5,4(s0)
a0005e9c:	45b2                	lw	a1,12(sp)
a0005e9e:	6705                	lui	a4,0x1
a0005ea0:	aec70713          	addi	a4,a4,-1300 # aec <__RFTLV_SIZE_HOLE+0x2ec>
a0005ea4:	40f2                	lw	ra,28(sp)
a0005ea6:	4462                	lw	s0,24(sp)
a0005ea8:	97ba                	add	a5,a5,a4
a0005eaa:	4705                	li	a4,1
a0005eac:	0055d693          	srli	a3,a1,0x5
a0005eb0:	00b71733          	sll	a4,a4,a1
a0005eb4:	44d7d70b          	srw	a4,a5,a3,2
a0005eb8:	6105                	addi	sp,sp,32
a0005eba:	8082                	ret

a0005ebc <qcc74x_gpio_reset>:
a0005ebc:	1101                	addi	sp,sp,-32
a0005ebe:	cc22                	sw	s0,24(sp)
a0005ec0:	842a                	mv	s0,a0
a0005ec2:	852e                	mv	a0,a1
a0005ec4:	ce06                	sw	ra,28(sp)
a0005ec6:	c62e                	sw	a1,12(sp)
a0005ec8:	2e4010ef          	jal	ra,a00071ac <qcc74x_gpio_pad_check>
a0005ecc:	405c                	lw	a5,4(s0)
a0005ece:	45b2                	lw	a1,12(sp)
a0005ed0:	6705                	lui	a4,0x1
a0005ed2:	af470713          	addi	a4,a4,-1292 # af4 <__RFTLV_SIZE_HOLE+0x2f4>
a0005ed6:	40f2                	lw	ra,28(sp)
a0005ed8:	4462                	lw	s0,24(sp)
a0005eda:	97ba                	add	a5,a5,a4
a0005edc:	4705                	li	a4,1
a0005ede:	0055d693          	srli	a3,a1,0x5
a0005ee2:	00b71733          	sll	a4,a4,a1
a0005ee6:	44d7d70b          	srw	a4,a5,a3,2
a0005eea:	6105                	addi	sp,sp,32
a0005eec:	8082                	ret

a0005eee <qcc74x_gpio_read>:
a0005eee:	1101                	addi	sp,sp,-32
a0005ef0:	cc22                	sw	s0,24(sp)
a0005ef2:	842a                	mv	s0,a0
a0005ef4:	852e                	mv	a0,a1
a0005ef6:	ce06                	sw	ra,28(sp)
a0005ef8:	c62e                	sw	a1,12(sp)
a0005efa:	2b2010ef          	jal	ra,a00071ac <qcc74x_gpio_pad_check>
a0005efe:	405c                	lw	a5,4(s0)
a0005f00:	45b2                	lw	a1,12(sp)
a0005f02:	6705                	lui	a4,0x1
a0005f04:	8c470713          	addi	a4,a4,-1852 # 8c4 <__RFTLV_SIZE_HOLE+0xc4>
a0005f08:	97ba                	add	a5,a5,a4
a0005f0a:	44b7c50b          	lrw	a0,a5,a1,2
a0005f0e:	40f2                	lw	ra,28(sp)
a0005f10:	4462                	lw	s0,24(sp)
a0005f12:	71c5350b          	extu	a0,a0,28,28
a0005f16:	6105                	addi	sp,sp,32
a0005f18:	8082                	ret

a0005f1a <qcc74x_gpio_uart_init>:
a0005f1a:	1101                	addi	sp,sp,-32
a0005f1c:	cc22                	sw	s0,24(sp)
a0005f1e:	ca26                	sw	s1,20(sp)
a0005f20:	4140                	lw	s0,4(a0)
a0005f22:	84aa                	mv	s1,a0
a0005f24:	852e                	mv	a0,a1
a0005f26:	c632                	sw	a2,12(sp)
a0005f28:	c42e                	sw	a1,8(sp)
a0005f2a:	ce06                	sw	ra,28(sp)
a0005f2c:	280010ef          	jal	ra,a00071ac <qcc74x_gpio_pad_check>
a0005f30:	45a2                	lw	a1,8(sp)
a0005f32:	46b1                	li	a3,12
a0005f34:	479d                	li	a5,7
a0005f36:	02d5f6b3          	remu	a3,a1,a3
a0005f3a:	4632                	lw	a2,12(sp)
a0005f3c:	0ad7e063          	bltu	a5,a3,a0005fdc <qcc74x_gpio_uart_init+0xc2>
a0005f40:	00269713          	slli	a4,a3,0x2
a0005f44:	15442803          	lw	a6,340(s0)
a0005f48:	47bd                	li	a5,15
a0005f4a:	00e797b3          	sll	a5,a5,a4
a0005f4e:	fff7c793          	not	a5,a5
a0005f52:	0107f833          	and	a6,a5,a6
a0005f56:	00e617b3          	sll	a5,a2,a4
a0005f5a:	0107e7b3          	or	a5,a5,a6
a0005f5e:	4701                	li	a4,0
a0005f60:	48bd                	li	a7,15
a0005f62:	4321                	li	t1,8
a0005f64:	00271513          	slli	a0,a4,0x2
a0005f68:	00a89833          	sll	a6,a7,a0
a0005f6c:	00f87e33          	and	t3,a6,a5
a0005f70:	00a61533          	sll	a0,a2,a0
a0005f74:	00ae1d63          	bne	t3,a0,a0005f8e <qcc74x_gpio_uart_init+0x74>
a0005f78:	0ff77513          	zext.b	a0,a4
a0005f7c:	00d50963          	beq	a0,a3,a0005f8e <qcc74x_gpio_uart_init+0x74>
a0005f80:	01160763          	beq	a2,a7,a0005f8e <qcc74x_gpio_uart_init+0x74>
a0005f84:	fff84513          	not	a0,a6
a0005f88:	8fe9                	and	a5,a5,a0
a0005f8a:	00f867b3          	or	a5,a6,a5
a0005f8e:	0705                	addi	a4,a4,1
a0005f90:	fc671ae3          	bne	a4,t1,a0005f64 <qcc74x_gpio_uart_init+0x4a>
a0005f94:	15842703          	lw	a4,344(s0)
a0005f98:	4681                	li	a3,0
a0005f9a:	483d                	li	a6,15
a0005f9c:	48c1                	li	a7,16
a0005f9e:	00d81533          	sll	a0,a6,a3
a0005fa2:	00e57e33          	and	t3,a0,a4
a0005fa6:	00d61333          	sll	t1,a2,a3
a0005faa:	006e1963          	bne	t3,t1,a0005fbc <qcc74x_gpio_uart_init+0xa2>
a0005fae:	01060763          	beq	a2,a6,a0005fbc <qcc74x_gpio_uart_init+0xa2>
a0005fb2:	fff54313          	not	t1,a0
a0005fb6:	00e37733          	and	a4,t1,a4
a0005fba:	8f49                	or	a4,a4,a0
a0005fbc:	0691                	addi	a3,a3,4
a0005fbe:	ff1690e3          	bne	a3,a7,a0005f9e <qcc74x_gpio_uart_init+0x84>
a0005fc2:	14f42a23          	sw	a5,340(s0)
a0005fc6:	14e42c23          	sw	a4,344(s0)
a0005fca:	4462                	lw	s0,24(sp)
a0005fcc:	40f2                	lw	ra,28(sp)
a0005fce:	8526                	mv	a0,s1
a0005fd0:	44d2                	lw	s1,20(sp)
a0005fd2:	6609                	lui	a2,0x2
a0005fd4:	b0760613          	addi	a2,a2,-1273 # 1b07 <HeapMinSize+0xb07>
a0005fd8:	6105                	addi	sp,sp,32
a0005fda:	b3cd                	j	a0005dbc <qcc74x_gpio_init>
a0005fdc:	ff868713          	addi	a4,a3,-8 # 2000eff8 <remain_wifi_ram+0x1ffeeff8>
a0005fe0:	070a                	slli	a4,a4,0x2
a0005fe2:	0ff77713          	zext.b	a4,a4
a0005fe6:	15842803          	lw	a6,344(s0)
a0005fea:	47bd                	li	a5,15
a0005fec:	00e797b3          	sll	a5,a5,a4
a0005ff0:	fff7c793          	not	a5,a5
a0005ff4:	0107f833          	and	a6,a5,a6
a0005ff8:	00e617b3          	sll	a5,a2,a4
a0005ffc:	0107e7b3          	or	a5,a5,a6
a0006000:	4701                	li	a4,0
a0006002:	48bd                	li	a7,15
a0006004:	4311                	li	t1,4
a0006006:	00271513          	slli	a0,a4,0x2
a000600a:	00a89833          	sll	a6,a7,a0
a000600e:	00f87e33          	and	t3,a6,a5
a0006012:	00a61533          	sll	a0,a2,a0
a0006016:	00ae1f63          	bne	t3,a0,a0006034 <qcc74x_gpio_uart_init+0x11a>
a000601a:	00870513          	addi	a0,a4,8
a000601e:	0ff57513          	zext.b	a0,a0
a0006022:	00d50963          	beq	a0,a3,a0006034 <qcc74x_gpio_uart_init+0x11a>
a0006026:	01160763          	beq	a2,a7,a0006034 <qcc74x_gpio_uart_init+0x11a>
a000602a:	fff84513          	not	a0,a6
a000602e:	8fe9                	and	a5,a5,a0
a0006030:	00f867b3          	or	a5,a6,a5
a0006034:	0705                	addi	a4,a4,1
a0006036:	fc6718e3          	bne	a4,t1,a0006006 <qcc74x_gpio_uart_init+0xec>
a000603a:	15442703          	lw	a4,340(s0)
a000603e:	4681                	li	a3,0
a0006040:	483d                	li	a6,15
a0006042:	02000893          	li	a7,32
a0006046:	00d81533          	sll	a0,a6,a3
a000604a:	00e57e33          	and	t3,a0,a4
a000604e:	00d61333          	sll	t1,a2,a3
a0006052:	006e1963          	bne	t3,t1,a0006064 <qcc74x_gpio_uart_init+0x14a>
a0006056:	01060763          	beq	a2,a6,a0006064 <qcc74x_gpio_uart_init+0x14a>
a000605a:	fff54313          	not	t1,a0
a000605e:	00e37733          	and	a4,t1,a4
a0006062:	8f49                	or	a4,a4,a0
a0006064:	0691                	addi	a3,a3,4
a0006066:	ff1690e3          	bne	a3,a7,a0006046 <qcc74x_gpio_uart_init+0x12c>
a000606a:	14f42c23          	sw	a5,344(s0)
a000606e:	14e42a23          	sw	a4,340(s0)
a0006072:	bfa1                	j	a0005fca <qcc74x_gpio_uart_init+0xb0>

a0006074 <qcc74x_uart_init>:
a0006074:	1141                	addi	sp,sp,-16
a0006076:	c422                	sw	s0,8(sp)
a0006078:	c226                	sw	s1,4(sp)
a000607a:	c606                	sw	ra,12(sp)
a000607c:	84ae                	mv	s1,a1
a000607e:	00954583          	lbu	a1,9(a0)
a0006082:	4140                	lw	s0,4(a0)
a0006084:	4515                	li	a0,5
a0006086:	13c010ef          	jal	ra,a00071c2 <qcc74x_clk_get_peripheral_clock>
a000608a:	4729                	li	a4,10
a000608c:	02e507b3          	mul	a5,a0,a4
a0006090:	4088                	lw	a0,0(s1)
a0006092:	4014                	lw	a3,0(s0)
a0006094:	4605                	li	a2,1
a0006096:	9af9                	andi	a3,a3,-2
a0006098:	02a7d7b3          	divu	a5,a5,a0
a000609c:	0795                	addi	a5,a5,5
a000609e:	02e7d7b3          	divu	a5,a5,a4
a00060a2:	4058                	lw	a4,4(s0)
a00060a4:	c014                	sw	a3,0(s0)
a00060a6:	9b79                	andi	a4,a4,-2
a00060a8:	c058                	sw	a4,4(s0)
a00060aa:	17fd                	addi	a5,a5,-1
a00060ac:	0ef797f7          	pkbb16	a5,a5,a5
a00060b0:	c41c                	sw	a5,8(s0)
a00060b2:	0074c683          	lbu	a3,7(s1)
a00060b6:	401c                	lw	a5,0(s0)
a00060b8:	4058                	lw	a4,4(s0)
a00060ba:	0ac68c63          	beq	a3,a2,a0006172 <qcc74x_uart_init+0xfe>
a00060be:	4609                	li	a2,2
a00060c0:	0ac68e63          	beq	a3,a2,a000617c <qcc74x_uart_init+0x108>
a00060c4:	e299                	bnez	a3,a00060ca <qcc74x_uart_init+0x56>
a00060c6:	9bbd                	andi	a5,a5,-17
a00060c8:	9b3d                	andi	a4,a4,-17
a00060ca:	0054c683          	lbu	a3,5(s1)
a00060ce:	8ff7f793          	andi	a5,a5,-1793
a00060d2:	8ff77713          	andi	a4,a4,-1793
a00060d6:	0691                	addi	a3,a3,4
a00060d8:	06a2                	slli	a3,a3,0x8
a00060da:	8fd5                	or	a5,a5,a3
a00060dc:	8f55                	or	a4,a4,a3
a00060de:	76f9                	lui	a3,0xffffe
a00060e0:	7ff68693          	addi	a3,a3,2047 # ffffe7ff <__psram_limit+0x57bfe7ff>
a00060e4:	8ff5                	and	a5,a5,a3
a00060e6:	0064c683          	lbu	a3,6(s1)
a00060ea:	06ae                	slli	a3,a3,0xb
a00060ec:	8fd5                	or	a5,a5,a3
a00060ee:	0094c683          	lbu	a3,9(s1)
a00060f2:	ffd7f613          	andi	a2,a5,-3
a00060f6:	8a89                	andi	a3,a3,2
a00060f8:	c299                	beqz	a3,a00060fe <qcc74x_uart_init+0x8a>
a00060fa:	0027e613          	ori	a2,a5,2
a00060fe:	76fd                	lui	a3,0xfffff
a0006100:	7ff68693          	addi	a3,a3,2047 # fffff7ff <__psram_limit+0x57bff7ff>
a0006104:	c010                	sw	a2,0(s0)
a0006106:	8f75                	and	a4,a4,a3
a0006108:	c058                	sw	a4,4(s0)
a000610a:	4c5c                	lw	a5,28(s0)
a000610c:	08040693          	addi	a3,s0,128
a0006110:	e0e10637          	lui	a2,0xe0e10
a0006114:	9bed                	andi	a5,a5,-5
a0006116:	cc5c                	sw	a5,28(s0)
a0006118:	445c                	lw	a5,12(s0)
a000611a:	167d                	addi	a2,a2,-1
a000611c:	001f0737          	lui	a4,0x1f0
a0006120:	9bf9                	andi	a5,a5,-2
a0006122:	c45c                	sw	a5,12(s0)
a0006124:	401c                	lw	a5,0(s0)
a0006126:	1f0005b7          	lui	a1,0x1f000
a000612a:	40b2                	lw	ra,12(sp)
a000612c:	0047e793          	ori	a5,a5,4
a0006130:	c01c                	sw	a5,0(s0)
a0006132:	42dc                	lw	a5,4(a3)
a0006134:	8e7d                	and	a2,a2,a5
a0006136:	00a4c783          	lbu	a5,10(s1)
a000613a:	07c2                	slli	a5,a5,0x10
a000613c:	8ff9                	and	a5,a5,a4
a000613e:	00b4c703          	lbu	a4,11(s1)
a0006142:	4492                	lw	s1,4(sp)
a0006144:	0762                	slli	a4,a4,0x18
a0006146:	8f6d                	and	a4,a4,a1
a0006148:	8fd9                	or	a5,a5,a4
a000614a:	8fd1                	or	a5,a5,a2
a000614c:	c2dc                	sw	a5,4(a3)
a000614e:	429c                	lw	a5,0(a3)
a0006150:	9bf1                	andi	a5,a5,-4
a0006152:	00c7e793          	ori	a5,a5,12
a0006156:	c29c                	sw	a5,0(a3)
a0006158:	57fd                	li	a5,-1
a000615a:	d05c                	sw	a5,36(s0)
a000615c:	4018                	lw	a4,0(s0)
a000615e:	405c                	lw	a5,4(s0)
a0006160:	00176713          	ori	a4,a4,1
a0006164:	c018                	sw	a4,0(s0)
a0006166:	0017e793          	ori	a5,a5,1
a000616a:	c05c                	sw	a5,4(s0)
a000616c:	4422                	lw	s0,8(sp)
a000616e:	0141                	addi	sp,sp,16
a0006170:	8082                	ret
a0006172:	0307e793          	ori	a5,a5,48
a0006176:	03076713          	ori	a4,a4,48
a000617a:	bf81                	j	a00060ca <qcc74x_uart_init+0x56>
a000617c:	fdf7f793          	andi	a5,a5,-33
a0006180:	fdf77713          	andi	a4,a4,-33
a0006184:	0107e793          	ori	a5,a5,16
a0006188:	01076713          	ori	a4,a4,16
a000618c:	bf3d                	j	a00060ca <qcc74x_uart_init+0x56>

a000618e <flash_get_clock_delay.constprop.0.isra.0>:
a000618e:	2000b7b7          	lui	a5,0x2000b
a0006192:	4394                	lw	a3,0(a5)
a0006194:	4781                	li	a5,0
a0006196:	2cb6b70b          	extu	a4,a3,11,11
a000619a:	c701                	beqz	a4,a00061a2 <flash_get_clock_delay.constprop.0.isra.0+0x14>
a000619c:	2886b78b          	extu	a5,a3,10,8
a00061a0:	0785                	addi	a5,a5,1
a00061a2:	2000b737          	lui	a4,0x2000b
a00061a6:	5b58                	lw	a4,52(a4)
a00061a8:	85c18613          	addi	a2,gp,-1956 # 62fc1b74 <g_flash_cfg>
a00061ac:	00c75593          	srli	a1,a4,0xc
a00061b0:	0305f593          	andi	a1,a1,48
a00061b4:	8fcd                	or	a5,a5,a1
a00061b6:	00f60123          	sb	a5,2(a2) # e0e10002 <__psram_limit+0x38a10002>
a00061ba:	0016d793          	srli	a5,a3,0x1
a00061be:	8b89                	andi	a5,a5,2
a00061c0:	1046b68b          	extu	a3,a3,4,4
a00061c4:	8fd5                	or	a5,a5,a3
a00061c6:	00675693          	srli	a3,a4,0x6
a00061ca:	0716                	slli	a4,a4,0x5
a00061cc:	8ab1                	andi	a3,a3,12
a00061ce:	06077713          	andi	a4,a4,96
a00061d2:	8f55                	or	a4,a4,a3
a00061d4:	8fd9                	or	a5,a5,a4
a00061d6:	00f601a3          	sb	a5,3(a2)
a00061da:	8082                	ret

a00061dc <irq_unexpected_isr>:
a00061dc:	85aa                	mv	a1,a0
a00061de:	a0008537          	lui	a0,0xa0008
a00061e2:	07c50513          	addi	a0,a0,124 # a000807c <__psram_limit+0xf7c0807c>
a00061e6:	db8ff06f          	j	a000579e <printf>

a00061ea <qcc74x_irq_initialize>:
a00061ea:	62fc37b7          	lui	a5,0x62fc3
a00061ee:	2e078793          	addi	a5,a5,736 # 62fc32e0 <g_irqvector>
a00061f2:	a0006737          	lui	a4,0xa0006
a00061f6:	28078693          	addi	a3,a5,640
a00061fa:	1dc70713          	addi	a4,a4,476 # a00061dc <__psram_limit+0xf7c061dc>
a00061fe:	c398                	sw	a4,0(a5)
a0006200:	0007a223          	sw	zero,4(a5)
a0006204:	07a1                	addi	a5,a5,8
a0006206:	fed79ce3          	bne	a5,a3,a00061fe <qcc74x_irq_initialize+0x14>
a000620a:	8082                	ret

a000620c <qcc74x_device_get_by_name>:
a000620c:	1101                	addi	sp,sp,-32
a000620e:	cc22                	sw	s0,24(sp)
a0006210:	ca26                	sw	s1,20(sp)
a0006212:	c64e                	sw	s3,12(sp)
a0006214:	c452                	sw	s4,8(sp)
a0006216:	ce06                	sw	ra,28(sp)
a0006218:	c84a                	sw	s2,16(sp)
a000621a:	8a2a                	mv	s4,a0
a000621c:	4481                	li	s1,0
a000621e:	8b018413          	addi	s0,gp,-1872 # 62fc1bc8 <qcc743_device_table>
a0006222:	02900993          	li	s3,41
a0006226:	00449913          	slli	s2,s1,0x4
a000622a:	4124450b          	lrw	a0,s0,s2,0
a000622e:	85d2                	mv	a1,s4
a0006230:	c7ffd0ef          	jal	ra,a0003eae <strcmp>
a0006234:	e919                	bnez	a0,a000624a <qcc74x_device_get_by_name+0x3e>
a0006236:	01240533          	add	a0,s0,s2
a000623a:	40f2                	lw	ra,28(sp)
a000623c:	4462                	lw	s0,24(sp)
a000623e:	44d2                	lw	s1,20(sp)
a0006240:	4942                	lw	s2,16(sp)
a0006242:	49b2                	lw	s3,12(sp)
a0006244:	4a22                	lw	s4,8(sp)
a0006246:	6105                	addi	sp,sp,32
a0006248:	8082                	ret
a000624a:	0485                	addi	s1,s1,1
a000624c:	fd349de3          	bne	s1,s3,a0006226 <qcc74x_device_get_by_name+0x1a>
a0006250:	4501                	li	a0,0
a0006252:	b7e5                	j	a000623a <qcc74x_device_get_by_name+0x2e>
	...

a0006280 <default_interrupt_handler>:
a0006280:	715d                	addi	sp,sp,-80
a0006282:	c216                	sw	t0,4(sp)
a0006284:	c41a                	sw	t1,8(sp)
a0006286:	341022f3          	csrr	t0,mepc
a000628a:	34202373          	csrr	t1,mcause
a000628e:	c09a                	sw	t1,64(sp)
a0006290:	c296                	sw	t0,68(sp)
a0006292:	340022f3          	csrr	t0,mscratch
a0006296:	c496                	sw	t0,72(sp)
a0006298:	c006                	sw	ra,0(sp)
a000629a:	c61e                	sw	t2,12(sp)
a000629c:	c82a                	sw	a0,16(sp)
a000629e:	ca2e                	sw	a1,20(sp)
a00062a0:	cc32                	sw	a2,24(sp)
a00062a2:	ce36                	sw	a3,28(sp)
a00062a4:	d03a                	sw	a4,32(sp)
a00062a6:	d23e                	sw	a5,36(sp)
a00062a8:	d442                	sw	a6,40(sp)
a00062aa:	d646                	sw	a7,44(sp)
a00062ac:	d872                	sw	t3,48(sp)
a00062ae:	da76                	sw	t4,52(sp)
a00062b0:	dc7a                	sw	t5,56(sp)
a00062b2:	de7e                	sw	t6,60(sp)
a00062b4:	30046073          	csrsi	mstatus,8
a00062b8:	711d                	addi	sp,sp,-96
a00062ba:	30002373          	csrr	t1,mstatus
a00062be:	ca9a                	sw	t1,84(sp)
a00062c0:	00d35393          	srli	t2,t1,0xd
a00062c4:	0033f393          	andi	t2,t2,3
a00062c8:	428d                	li	t0,3
a00062ca:	02539663          	bne	t2,t0,a00062f6 <.F_RegNotSave1>
a00062ce:	e002                	fsw	ft0,0(sp)
a00062d0:	e206                	fsw	ft1,4(sp)
a00062d2:	e40a                	fsw	ft2,8(sp)
a00062d4:	e60e                	fsw	ft3,12(sp)
a00062d6:	e812                	fsw	ft4,16(sp)
a00062d8:	ea16                	fsw	ft5,20(sp)
a00062da:	ec1a                	fsw	ft6,24(sp)
a00062dc:	ee1e                	fsw	ft7,28(sp)
a00062de:	f02a                	fsw	fa0,32(sp)
a00062e0:	f22e                	fsw	fa1,36(sp)
a00062e2:	f432                	fsw	fa2,40(sp)
a00062e4:	f636                	fsw	fa3,44(sp)
a00062e6:	f83a                	fsw	fa4,48(sp)
a00062e8:	fa3e                	fsw	fa5,52(sp)
a00062ea:	fc42                	fsw	fa6,56(sp)
a00062ec:	fe46                	fsw	fa7,60(sp)
a00062ee:	e0f2                	fsw	ft8,64(sp)
a00062f0:	e2f6                	fsw	ft9,68(sp)
a00062f2:	e4fa                	fsw	ft10,72(sp)
a00062f4:	e6fe                	fsw	ft11,76(sp)

a00062f6 <.F_RegNotSave1>:
a00062f6:	34202573          	csrr	a0,mcause
a00062fa:	3ff57313          	andi	t1,a0,1023
a00062fe:	00000397          	auipc	t2,0x0
a0006302:	5a238393          	addi	t2,t2,1442 # a00068a0 <interrupt_entry>
a0006306:	9382                	jalr	t2
a0006308:	4356                	lw	t1,84(sp)
a000630a:	00d35393          	srli	t2,t1,0xd
a000630e:	0033f393          	andi	t2,t2,3
a0006312:	428d                	li	t0,3
a0006314:	02539663          	bne	t2,t0,a0006340 <.F_RegNotLoad>
a0006318:	6002                	flw	ft0,0(sp)
a000631a:	6092                	flw	ft1,4(sp)
a000631c:	6122                	flw	ft2,8(sp)
a000631e:	61b2                	flw	ft3,12(sp)
a0006320:	6242                	flw	ft4,16(sp)
a0006322:	62d2                	flw	ft5,20(sp)
a0006324:	6362                	flw	ft6,24(sp)
a0006326:	63f2                	flw	ft7,28(sp)
a0006328:	7502                	flw	fa0,32(sp)
a000632a:	7592                	flw	fa1,36(sp)
a000632c:	7622                	flw	fa2,40(sp)
a000632e:	76b2                	flw	fa3,44(sp)
a0006330:	7742                	flw	fa4,48(sp)
a0006332:	77d2                	flw	fa5,52(sp)
a0006334:	7862                	flw	fa6,56(sp)
a0006336:	78f2                	flw	fa7,60(sp)
a0006338:	6e06                	flw	ft8,64(sp)
a000633a:	6e96                	flw	ft9,68(sp)
a000633c:	6f26                	flw	ft10,72(sp)
a000633e:	6fb6                	flw	ft11,76(sp)

a0006340 <.F_RegNotLoad>:
a0006340:	6125                	addi	sp,sp,96
a0006342:	30047073          	csrci	mstatus,8
a0006346:	4296                	lw	t0,68(sp)
a0006348:	34129073          	csrw	mepc,t0
a000634c:	4286                	lw	t0,64(sp)
a000634e:	34229073          	csrw	mcause,t0
a0006352:	42a6                	lw	t0,72(sp)
a0006354:	34029073          	csrw	mscratch,t0
a0006358:	4082                	lw	ra,0(sp)
a000635a:	4292                	lw	t0,4(sp)
a000635c:	4322                	lw	t1,8(sp)
a000635e:	43b2                	lw	t2,12(sp)
a0006360:	4542                	lw	a0,16(sp)
a0006362:	45d2                	lw	a1,20(sp)
a0006364:	4662                	lw	a2,24(sp)
a0006366:	46f2                	lw	a3,28(sp)
a0006368:	5702                	lw	a4,32(sp)
a000636a:	5792                	lw	a5,36(sp)
a000636c:	5822                	lw	a6,40(sp)
a000636e:	58b2                	lw	a7,44(sp)
a0006370:	5e42                	lw	t3,48(sp)
a0006372:	5ed2                	lw	t4,52(sp)
a0006374:	5f62                	lw	t5,56(sp)
a0006376:	5ff2                	lw	t6,60(sp)
a0006378:	6161                	addi	sp,sp,80
a000637a:	8082                	ret
	...

a00063c0 <trap>:
a00063c0:	fe512e23          	sw	t0,-4(sp)
a00063c4:	342022f3          	csrr	t0,mcause
a00063c8:	0e02ca63          	bltz	t0,a00064bc <trap+0xfc>
a00063cc:	c2fbd297          	auipc	t0,0xc2fbd
a00063d0:	f1428293          	addi	t0,t0,-236 # 62fc32e0 <g_irqvector>
a00063d4:	ef828293          	addi	t0,t0,-264
a00063d8:	0012a223          	sw	ra,4(t0)
a00063dc:	0022a423          	sw	sp,8(t0)
a00063e0:	0032a623          	sw	gp,12(t0)
a00063e4:	0042a823          	sw	tp,16(t0)
a00063e8:	0062ac23          	sw	t1,24(t0)
a00063ec:	0072ae23          	sw	t2,28(t0)
a00063f0:	0282a023          	sw	s0,32(t0)
a00063f4:	0292a223          	sw	s1,36(t0)
a00063f8:	02a2a423          	sw	a0,40(t0)
a00063fc:	02b2a623          	sw	a1,44(t0)
a0006400:	02c2a823          	sw	a2,48(t0)
a0006404:	02d2aa23          	sw	a3,52(t0)
a0006408:	02e2ac23          	sw	a4,56(t0)
a000640c:	02f2ae23          	sw	a5,60(t0)
a0006410:	0502a023          	sw	a6,64(t0)
a0006414:	0512a223          	sw	a7,68(t0)
a0006418:	0522a423          	sw	s2,72(t0)
a000641c:	0532a623          	sw	s3,76(t0)
a0006420:	0542a823          	sw	s4,80(t0)
a0006424:	0552aa23          	sw	s5,84(t0)
a0006428:	0562ac23          	sw	s6,88(t0)
a000642c:	0572ae23          	sw	s7,92(t0)
a0006430:	0782a023          	sw	s8,96(t0)
a0006434:	0792a223          	sw	s9,100(t0)
a0006438:	07a2a423          	sw	s10,104(t0)
a000643c:	07b2a623          	sw	s11,108(t0)
a0006440:	07c2a823          	sw	t3,112(t0)
a0006444:	07d2aa23          	sw	t4,116(t0)
a0006448:	07e2ac23          	sw	t5,120(t0)
a000644c:	07f2ae23          	sw	t6,124(t0)
a0006450:	34102573          	csrr	a0,mepc
a0006454:	00a2a023          	sw	a0,0(t0)
a0006458:	30002573          	csrr	a0,mstatus
a000645c:	08a2a023          	sw	a0,128(t0)
a0006460:	8516                	mv	a0,t0
a0006462:	ffc12283          	lw	t0,-4(sp)
a0006466:	812a                	mv	sp,a0
a0006468:	ca16                	sw	t0,20(sp)
a000646a:	396000ef          	jal	ra,a0006800 <exception_entry>
a000646e:	428a                	lw	t0,128(sp)
a0006470:	30029073          	csrw	mstatus,t0
a0006474:	4282                	lw	t0,0(sp)
a0006476:	34129073          	csrw	mepc,t0
a000647a:	5ff6                	lw	t6,124(sp)
a000647c:	5f66                	lw	t5,120(sp)
a000647e:	5ed6                	lw	t4,116(sp)
a0006480:	5e46                	lw	t3,112(sp)
a0006482:	5db6                	lw	s11,108(sp)
a0006484:	5d26                	lw	s10,104(sp)
a0006486:	5c96                	lw	s9,100(sp)
a0006488:	5c06                	lw	s8,96(sp)
a000648a:	4bf6                	lw	s7,92(sp)
a000648c:	4b66                	lw	s6,88(sp)
a000648e:	4ad6                	lw	s5,84(sp)
a0006490:	4a46                	lw	s4,80(sp)
a0006492:	49b6                	lw	s3,76(sp)
a0006494:	4926                	lw	s2,72(sp)
a0006496:	4896                	lw	a7,68(sp)
a0006498:	4806                	lw	a6,64(sp)
a000649a:	57f2                	lw	a5,60(sp)
a000649c:	5762                	lw	a4,56(sp)
a000649e:	56d2                	lw	a3,52(sp)
a00064a0:	5642                	lw	a2,48(sp)
a00064a2:	55b2                	lw	a1,44(sp)
a00064a4:	5522                	lw	a0,40(sp)
a00064a6:	5492                	lw	s1,36(sp)
a00064a8:	5402                	lw	s0,32(sp)
a00064aa:	43f2                	lw	t2,28(sp)
a00064ac:	4362                	lw	t1,24(sp)
a00064ae:	42d2                	lw	t0,20(sp)
a00064b0:	4242                	lw	tp,16(sp)
a00064b2:	41b2                	lw	gp,12(sp)
a00064b4:	4092                	lw	ra,4(sp)
a00064b6:	4122                	lw	sp,8(sp)
a00064b8:	30200073          	mret
a00064bc:	ffc12283          	lw	t0,-4(sp)
a00064c0:	1141                	addi	sp,sp,-16
a00064c2:	c006                	sw	ra,0(sp)
a00064c4:	3b75                	jal	a0006280 <default_interrupt_handler>
a00064c6:	4082                	lw	ra,0(sp)
a00064c8:	0141                	addi	sp,sp,16
a00064ca:	30200073          	mret
	...

a00064fc <start_load>:
a00064fc:	62fc07b7          	lui	a5,0x62fc0
a0006500:	a0009737          	lui	a4,0xa0009
a0006504:	62fc26b7          	lui	a3,0x62fc2
a0006508:	40078793          	addi	a5,a5,1024 # 62fc0400 <arch_memcpy>
a000650c:	c4c70713          	addi	a4,a4,-948 # a0008c4c <__psram_limit+0xf7c08c4c>
a0006510:	b1868693          	addi	a3,a3,-1256 # 62fc1b18 <flash1_size>
a0006514:	08d7ed63          	bltu	a5,a3,a00065ae <start_load+0xb2>
a0006518:	62fc27b7          	lui	a5,0x62fc2
a000651c:	a000a737          	lui	a4,0xa000a
a0006520:	62fc26b7          	lui	a3,0x62fc2
a0006524:	b1878793          	addi	a5,a5,-1256 # 62fc1b18 <flash1_size>
a0006528:	36470713          	addi	a4,a4,868 # a000a364 <__psram_limit+0xf7c0a364>
a000652c:	b1868693          	addi	a3,a3,-1256 # 62fc1b18 <flash1_size>
a0006530:	08d7e463          	bltu	a5,a3,a00065b8 <start_load+0xbc>
a0006534:	62fc27b7          	lui	a5,0x62fc2
a0006538:	a000a737          	lui	a4,0xa000a
a000653c:	b1878793          	addi	a5,a5,-1256 # 62fc1b18 <flash1_size>
a0006540:	36470713          	addi	a4,a4,868 # a000a364 <__psram_limit+0xf7c0a364>
a0006544:	b4018693          	addi	a3,gp,-1216 # 62fc1e58 <__StackLimit>
a0006548:	06d7ed63          	bltu	a5,a3,a00065c2 <start_load+0xc6>
a000654c:	a80007b7          	lui	a5,0xa8000
a0006550:	a000a737          	lui	a4,0xa000a
a0006554:	a80006b7          	lui	a3,0xa8000
a0006558:	00078793          	mv	a5,a5
a000655c:	6a470713          	addi	a4,a4,1700 # a000a6a4 <__psram_limit+0xf7c0a6a4>
a0006560:	00068693          	mv	a3,a3
a0006564:	06d7e463          	bltu	a5,a3,a00065cc <start_load+0xd0>
a0006568:	22fc07b7          	lui	a5,0x22fc0
a000656c:	a0009737          	lui	a4,0xa0009
a0006570:	22fc06b7          	lui	a3,0x22fc0
a0006574:	40078793          	addi	a5,a5,1024 # 22fc0400 <__nocache_noinit_ram_data_end__>
a0006578:	c4c70713          	addi	a4,a4,-948 # a0008c4c <__psram_limit+0xf7c08c4c>
a000657c:	40068693          	addi	a3,a3,1024 # 22fc0400 <__nocache_noinit_ram_data_end__>
a0006580:	04d7eb63          	bltu	a5,a3,a00065d6 <start_load+0xda>
a0006584:	62fc37b7          	lui	a5,0x62fc3
a0006588:	62fc3737          	lui	a4,0x62fc3
a000658c:	e6078793          	addi	a5,a5,-416 # 62fc2e60 <gpio>
a0006590:	56470713          	addi	a4,a4,1380 # 62fc3564 <__HeapBase>
a0006594:	04e7e663          	bltu	a5,a4,a00065e0 <start_load+0xe4>
a0006598:	230307b7          	lui	a5,0x23030
a000659c:	23030737          	lui	a4,0x23030
a00065a0:	00078793          	mv	a5,a5
a00065a4:	00070713          	mv	a4,a4
a00065a8:	02e7ef63          	bltu	a5,a4,a00065e6 <start_load+0xea>
a00065ac:	8082                	ret
a00065ae:	5847460b          	lwia	a2,(a4),4,0
a00065b2:	5847d60b          	swia	a2,(a5),4,0
a00065b6:	bfb9                	j	a0006514 <start_load+0x18>
a00065b8:	5847460b          	lwia	a2,(a4),4,0
a00065bc:	5847d60b          	swia	a2,(a5),4,0
a00065c0:	bf85                	j	a0006530 <start_load+0x34>
a00065c2:	5847460b          	lwia	a2,(a4),4,0
a00065c6:	5847d60b          	swia	a2,(a5),4,0
a00065ca:	bfbd                	j	a0006548 <start_load+0x4c>
a00065cc:	5847460b          	lwia	a2,(a4),4,0
a00065d0:	5847d60b          	swia	a2,(a5),4,0
a00065d4:	bf41                	j	a0006564 <start_load+0x68>
a00065d6:	5847460b          	lwia	a2,(a4),4,0
a00065da:	5847d60b          	swia	a2,(a5),4,0
a00065de:	b74d                	j	a0006580 <start_load+0x84>
a00065e0:	5847d00b          	swia	zero,(a5),4,0
a00065e4:	bf45                	j	a0006594 <start_load+0x98>
a00065e6:	5847d00b          	swia	zero,(a5),4,0
a00065ea:	bf7d                	j	a00065a8 <start_load+0xac>

a00065ec <System_BOD_Init>:
a00065ec:	1101                	addi	sp,sp,-32
a00065ee:	010707b7          	lui	a5,0x1070
a00065f2:	0785                	addi	a5,a5,1
a00065f4:	0068                	addi	a0,sp,12
a00065f6:	ce06                	sw	ra,28(sp)
a00065f8:	c63e                	sw	a5,12(sp)
a00065fa:	21c1                	jal	a0006aba <HBN_Set_BOD_Cfg>
a00065fc:	40f2                	lw	ra,28(sp)
a00065fe:	6105                	addi	sp,sp,32
a0006600:	8082                	ret

a0006602 <SystemInit>:
a0006602:	2000e7b7          	lui	a5,0x2000e
a0006606:	02000713          	li	a4,32
a000660a:	50e7a023          	sw	a4,1280(a5) # 2000e500 <remain_wifi_ram+0x1ffee500>
a000660e:	5007a223          	sw	zero,1284(a5)
a0006612:	200017b7          	lui	a5,0x20001
a0006616:	9687a703          	lw	a4,-1688(a5) # 20000968 <remain_wifi_ram+0x1ffe0968>
a000661a:	1141                	addi	sp,sp,-16
a000661c:	8b05                	andi	a4,a4,1
a000661e:	cf39                	beqz	a4,a000667c <SystemInit+0x7a>
a0006620:	96c7a703          	lw	a4,-1684(a5)
a0006624:	8b05                	andi	a4,a4,1
a0006626:	cb39                	beqz	a4,a000667c <SystemInit+0x7a>
a0006628:	9707a703          	lw	a4,-1680(a5)
a000662c:	8b05                	andi	a4,a4,1
a000662e:	c739                	beqz	a4,a000667c <SystemInit+0x7a>
a0006630:	9747a703          	lw	a4,-1676(a5)
a0006634:	8b05                	andi	a4,a4,1
a0006636:	c339                	beqz	a4,a000667c <SystemInit+0x7a>
a0006638:	9787a703          	lw	a4,-1672(a5)
a000663c:	8b05                	andi	a4,a4,1
a000663e:	cf1d                	beqz	a4,a000667c <SystemInit+0x7a>
a0006640:	97c7a703          	lw	a4,-1668(a5)
a0006644:	8b05                	andi	a4,a4,1
a0006646:	cb1d                	beqz	a4,a000667c <SystemInit+0x7a>
a0006648:	9807a703          	lw	a4,-1664(a5)
a000664c:	8b05                	andi	a4,a4,1
a000664e:	c71d                	beqz	a4,a000667c <SystemInit+0x7a>
a0006650:	9847a703          	lw	a4,-1660(a5)
a0006654:	8b05                	andi	a4,a4,1
a0006656:	c31d                	beqz	a4,a000667c <SystemInit+0x7a>
a0006658:	9887a703          	lw	a4,-1656(a5)
a000665c:	8b05                	andi	a4,a4,1
a000665e:	cf19                	beqz	a4,a000667c <SystemInit+0x7a>
a0006660:	98c7a783          	lw	a5,-1652(a5)
a0006664:	8b85                	andi	a5,a5,1
a0006666:	cb99                	beqz	a5,a000667c <SystemInit+0x7a>
a0006668:	20001737          	lui	a4,0x20001
a000666c:	99072783          	lw	a5,-1648(a4) # 20000990 <remain_wifi_ram+0x1ffe0990>
a0006670:	8b85                	andi	a5,a5,1
a0006672:	c789                	beqz	a5,a000667c <SystemInit+0x7a>
a0006674:	99472783          	lw	a5,-1644(a4)
a0006678:	8b85                	andi	a5,a5,1
a000667a:	ef99                	bnez	a5,a0006698 <SystemInit+0x96>
a000667c:	200057b7          	lui	a5,0x20005
a0006680:	38078793          	addi	a5,a5,896 # 20005380 <remain_wifi_ram+0x1ffe5380>
a0006684:	5398                	lw	a4,32(a5)
a0006686:	66c1                	lui	a3,0x10
a0006688:	9b71                	andi	a4,a4,-4
a000668a:	d398                	sw	a4,32(a5)
a000668c:	fff68713          	addi	a4,a3,-1 # ffff <wifi_ram_max_size+0x7fff>
a0006690:	d798                	sw	a4,40(a5)
a0006692:	5398                	lw	a4,32(a5)
a0006694:	8f55                	or	a4,a4,a3
a0006696:	d398                	sw	a4,32(a5)
a0006698:	200057b7          	lui	a5,0x20005
a000669c:	43b8                	lw	a4,64(a5)
a000669e:	000206b7          	lui	a3,0x20
a00066a2:	f0f77713          	andi	a4,a4,-241
a00066a6:	c3b8                	sw	a4,64(a5)
a00066a8:	577d                	li	a4,-1
a00066aa:	c7f8                	sw	a4,76(a5)
a00066ac:	43b8                	lw	a4,64(a5)
a00066ae:	8f55                	or	a4,a4,a3
a00066b0:	c3b8                	sw	a4,64(a5)
a00066b2:	2000b737          	lui	a4,0x2000b
a00066b6:	5b3c                	lw	a5,112(a4)
a00066b8:	600006b7          	lui	a3,0x60000
a00066bc:	8fd5                	or	a5,a5,a3
a00066be:	db3c                	sw	a5,112(a4)
a00066c0:	300027f3          	csrr	a5,mstatus
a00066c4:	6709                	lui	a4,0x2
a00066c6:	8fd9                	or	a5,a5,a4
a00066c8:	30079073          	csrw	mstatus,a5
a00066cc:	7c0027f3          	csrr	a5,mxstatus
a00066d0:	00408737          	lui	a4,0x408
a00066d4:	8fd9                	or	a5,a5,a4
a00066d6:	7c079073          	csrw	mxstatus,a5
a00066da:	e0800737          	lui	a4,0xe0800
a00066de:	435c                	lw	a5,4(a4)
a00066e0:	00074683          	lbu	a3,0(a4) # e0800000 <__psram_limit+0x38400000>
a00066e4:	e0800537          	lui	a0,0xe0800
a00066e8:	83d1                	srli	a5,a5,0x14
a00066ea:	8bf9                	andi	a5,a5,30
a00066ec:	ac0786f7          	insb	a3,a5,0
a00066f0:	00d70023          	sb	a3,0(a4)
a00066f4:	6785                	lui	a5,0x1
a00066f6:	4701                	li	a4,0
a00066f8:	05000593          	li	a1,80
a00066fc:	04e5160b          	addsl	a2,a0,a4,2
a0006700:	00f606b3          	add	a3,a2,a5
a0006704:	000680a3          	sb	zero,1(a3) # 60000001 <__RFTLV_HEAD1_H+0x19adb3bf>
a0006708:	00f6500b          	srb	zero,a2,a5,0
a000670c:	00068123          	sb	zero,2(a3)
a0006710:	0705                	addi	a4,a4,1
a0006712:	feb715e3          	bne	a4,a1,a00066fc <SystemInit+0xfa>
a0006716:	e0801737          	lui	a4,0xe0801
a000671a:	4689                	li	a3,2
a000671c:	00d70723          	sb	a3,14(a4) # e080100e <__psram_limit+0x3840100e>
a0006720:	04d70723          	sb	a3,78(a4)
a0006724:	0ff0000f          	fence
a0006728:	0000100f          	fence.i
a000672c:	0020000b          	dcache.iall
a0006730:	7c102773          	csrr	a4,mhcr
a0006734:	03e78793          	addi	a5,a5,62 # 103e <HeapMinSize+0x3e>
a0006738:	8fd9                	or	a5,a5,a4
a000673a:	7c179073          	csrw	mhcr,a5
a000673e:	0ff0000f          	fence
a0006742:	0000100f          	fence.i
a0006746:	0ff0000f          	fence
a000674a:	0000100f          	fence.i
a000674e:	0100000b          	icache.iall
a0006752:	7c1027f3          	csrr	a5,mhcr
a0006756:	0017e793          	ori	a5,a5,1
a000675a:	7c179073          	csrw	mhcr,a5
a000675e:	0ff0000f          	fence
a0006762:	0000100f          	fence.i
a0006766:	7e1027f3          	csrr	a5,mexstatus
a000676a:	fffd0737          	lui	a4,0xfffd0
a000676e:	177d                	addi	a4,a4,-1
a0006770:	8ff9                	and	a5,a5,a4
a0006772:	7e179073          	csrw	mexstatus,a5
a0006776:	200007b7          	lui	a5,0x20000
a000677a:	577d                	li	a4,-1
a000677c:	66c1                	lui	a3,0x10
a000677e:	14e7aa23          	sw	a4,340(a5) # 20000154 <remain_wifi_ram+0x1ffe0154>
a0006782:	fff68713          	addi	a4,a3,-1 # ffff <wifi_ram_max_size+0x7fff>
a0006786:	14e7ac23          	sw	a4,344(a5)
a000678a:	00000713          	li	a4,0
a000678e:	c63a                	sw	a4,12(sp)
a0006790:	60c7a783          	lw	a5,1548(a5)
a0006794:	4732                	lw	a4,12(sp)
a0006796:	eb09                	bnez	a4,a00067a8 <SystemInit+0x1a6>
a0006798:	ff07f713          	andi	a4,a5,-16
a000679c:	200007b7          	lui	a5,0x20000
a00067a0:	60e7a623          	sw	a4,1548(a5) # 2000060c <remain_wifi_ram+0x1ffe060c>
a00067a4:	0141                	addi	sp,sp,16
a00067a6:	8082                	ret
a00067a8:	4632                	lw	a2,12(sp)
a00067aa:	6721                	lui	a4,0x8
a00067ac:	00e61663          	bne	a2,a4,a00067b8 <SystemInit+0x1b6>
a00067b0:	9bc1                	andi	a5,a5,-16
a00067b2:	0037e713          	ori	a4,a5,3
a00067b6:	b7dd                	j	a000679c <SystemInit+0x19a>
a00067b8:	4632                	lw	a2,12(sp)
a00067ba:	ff07f713          	andi	a4,a5,-16
a00067be:	fcd61fe3          	bne	a2,a3,a000679c <SystemInit+0x19a>
a00067c2:	00f7e713          	ori	a4,a5,15
a00067c6:	bfd9                	j	a000679c <SystemInit+0x19a>

a00067c8 <System_Post_Init>:
a00067c8:	1141                	addi	sp,sp,-16
a00067ca:	c606                	sw	ra,12(sp)
a00067cc:	3505                	jal	a00065ec <System_BOD_Init>
a00067ce:	0ff0000f          	fence
a00067d2:	0010000b          	dcache.call
a00067d6:	0ff0000f          	fence
a00067da:	0ff0000f          	fence
a00067de:	0000100f          	fence.i
a00067e2:	0100000b          	icache.iall
a00067e6:	0ff0000f          	fence
a00067ea:	0000100f          	fence.i
a00067ee:	c2fba097          	auipc	ra,0xc2fba
a00067f2:	30a080e7          	jalr	778(ra) # 62fc0af8 <system_setup_xtal_config.isra.0>
a00067f6:	30046073          	csrsi	mstatus,8
a00067fa:	40b2                	lw	ra,12(sp)
a00067fc:	0141                	addi	sp,sp,16
a00067fe:	8082                	ret

a0006800 <exception_entry>:
a0006800:	a0008537          	lui	a0,0xa0008
a0006804:	715d                	addi	sp,sp,-80
a0006806:	35450513          	addi	a0,a0,852 # a0008354 <__psram_limit+0xf7c08354>
a000680a:	c686                	sw	ra,76(sp)
a000680c:	c4a2                	sw	s0,72(sp)
a000680e:	c2a6                	sw	s1,68(sp)
a0006810:	c0ca                	sw	s2,64(sp)
a0006812:	f8dfe0ef          	jal	ra,a000579e <printf>
a0006816:	34202473          	csrr	s0,mcause
a000681a:	a0008537          	lui	a0,0xa0008
a000681e:	85a2                	mv	a1,s0
a0006820:	36850513          	addi	a0,a0,872 # a0008368 <__psram_limit+0xf7c08368>
a0006824:	f7bfe0ef          	jal	ra,a000579e <printf>
a0006828:	341024f3          	csrr	s1,mepc
a000682c:	a0008537          	lui	a0,0xa0008
a0006830:	85a6                	mv	a1,s1
a0006832:	37850513          	addi	a0,a0,888 # a0008378 <__psram_limit+0xf7c08378>
a0006836:	f69fe0ef          	jal	ra,a000579e <printf>
a000683a:	343025f3          	csrr	a1,mtval
a000683e:	a0008537          	lui	a0,0xa0008
a0006842:	38450513          	addi	a0,a0,900 # a0008384 <__psram_limit+0xf7c08384>
a0006846:	f59fe0ef          	jal	ra,a000579e <printf>
a000684a:	a00085b7          	lui	a1,0xa0008
a000684e:	04000613          	li	a2,64
a0006852:	39c58593          	addi	a1,a1,924 # a000839c <__psram_limit+0xf7c0839c>
a0006856:	850a                	mv	a0,sp
a0006858:	e72fd0ef          	jal	ra,a0003eca <memcpy>
a000685c:	3ff47913          	andi	s2,s0,1023
a0006860:	883d                	andi	s0,s0,15
a0006862:	4481458b          	lrw	a1,sp,s0,2
a0006866:	a0008537          	lui	a0,0xa0008
a000686a:	39450513          	addi	a0,a0,916 # a0008394 <__psram_limit+0xf7c08394>
a000686e:	f31fe0ef          	jal	ra,a000579e <printf>
a0006872:	47a1                	li	a5,8
a0006874:	00f90d63          	beq	s2,a5,a000688e <exception_entry+0x8e>
a0006878:	47ad                	li	a5,11
a000687a:	00f90a63          	beq	s2,a5,a000688e <exception_entry+0x8e>
a000687e:	62fc3437          	lui	s0,0x62fc3
a0006882:	e6040413          	addi	s0,s0,-416 # 62fc2e60 <gpio>
a0006886:	8122                	mv	sp,s0
a0006888:	92eff0ef          	jal	ra,a00059b6 <coredump_run>
a000688c:	bfed                	j	a0006886 <exception_entry+0x86>
a000688e:	0491                	addi	s1,s1,4
a0006890:	34149073          	csrw	mepc,s1
a0006894:	40b6                	lw	ra,76(sp)
a0006896:	4426                	lw	s0,72(sp)
a0006898:	4496                	lw	s1,68(sp)
a000689a:	4906                	lw	s2,64(sp)
a000689c:	6161                	addi	sp,sp,80
a000689e:	8082                	ret

a00068a0 <interrupt_entry>:
a00068a0:	1141                	addi	sp,sp,-16
a00068a2:	c602                	sw	zero,12(sp)
a00068a4:	342027f3          	csrr	a5,mcause
a00068a8:	c63e                	sw	a5,12(sp)
a00068aa:	4532                	lw	a0,12(sp)
a00068ac:	04f00793          	li	a5,79
a00068b0:	3ff57513          	andi	a0,a0,1023
a00068b4:	00a7ee63          	bltu	a5,a0,a00068d0 <interrupt_entry+0x30>
a00068b8:	62fc37b7          	lui	a5,0x62fc3
a00068bc:	2e078793          	addi	a5,a5,736 # 62fc32e0 <g_irqvector>
a00068c0:	46a7c70b          	lrw	a4,a5,a0,3
a00068c4:	c711                	beqz	a4,a00068d0 <interrupt_entry+0x30>
a00068c6:	06a7978b          	addsl	a5,a5,a0,3
a00068ca:	43cc                	lw	a1,4(a5)
a00068cc:	0141                	addi	sp,sp,16
a00068ce:	8702                	jr	a4
a00068d0:	0141                	addi	sp,sp,16
a00068d2:	8082                	ret

a00068d4 <GLB_Set_ADC_CLK>:
a00068d4:	200007b7          	lui	a5,0x20000
a00068d8:	10078793          	addi	a5,a5,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a00068dc:	4b98                	lw	a4,16(a5)
a00068de:	059e                	slli	a1,a1,0x7
a00068e0:	eff77713          	andi	a4,a4,-257
a00068e4:	cb98                	sw	a4,16(a5)
a00068e6:	4b98                	lw	a4,16(a5)
a00068e8:	fc077713          	andi	a4,a4,-64
a00068ec:	8e59                	or	a2,a2,a4
a00068ee:	f7f67613          	andi	a2,a2,-129
a00068f2:	8dd1                	or	a1,a1,a2
a00068f4:	cb8c                	sw	a1,16(a5)
a00068f6:	4b98                	lw	a4,16(a5)
a00068f8:	eff77793          	andi	a5,a4,-257
a00068fc:	c119                	beqz	a0,a0006902 <GLB_Set_ADC_CLK+0x2e>
a00068fe:	10076793          	ori	a5,a4,256
a0006902:	20000737          	lui	a4,0x20000
a0006906:	10f72823          	sw	a5,272(a4) # 20000110 <remain_wifi_ram+0x1ffe0110>
a000690a:	4501                	li	a0,0
a000690c:	8082                	ret

a000690e <GLB_Set_IR_CLK>:
a000690e:	20000737          	lui	a4,0x20000
a0006912:	10070713          	addi	a4,a4,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a0006916:	4334                	lw	a3,64(a4)
a0006918:	ff8007b7          	lui	a5,0xff800
a000691c:	17fd                	addi	a5,a5,-1
a000691e:	8efd                	and	a3,a3,a5
a0006920:	c334                	sw	a3,64(a4)
a0006922:	4334                	lw	a3,64(a4)
a0006924:	ffc105b7          	lui	a1,0xffc10
a0006928:	15fd                	addi	a1,a1,-1
a000692a:	8eed                	and	a3,a3,a1
a000692c:	0642                	slli	a2,a2,0x10
a000692e:	8e55                	or	a2,a2,a3
a0006930:	c330                	sw	a2,64(a4)
a0006932:	4338                	lw	a4,64(a4)
a0006934:	8ff9                	and	a5,a5,a4
a0006936:	c501                	beqz	a0,a000693e <GLB_Set_IR_CLK+0x30>
a0006938:	008007b7          	lui	a5,0x800
a000693c:	8fd9                	or	a5,a5,a4
a000693e:	20000737          	lui	a4,0x20000
a0006942:	14f72023          	sw	a5,320(a4) # 20000140 <remain_wifi_ram+0x1ffe0140>
a0006946:	4501                	li	a0,0
a0006948:	8082                	ret

a000694a <GLB_Set_I2C_CLK>:
a000694a:	20000737          	lui	a4,0x20000
a000694e:	18070713          	addi	a4,a4,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006952:	4314                	lw	a3,0(a4)
a0006954:	ff0007b7          	lui	a5,0xff000
a0006958:	17fd                	addi	a5,a5,-1
a000695a:	8efd                	and	a3,a3,a5
a000695c:	c314                	sw	a3,0(a4)
a000695e:	4314                	lw	a3,0(a4)
a0006960:	fe000837          	lui	a6,0xfe000
a0006964:	187d                	addi	a6,a6,-1
a0006966:	0106f6b3          	and	a3,a3,a6
a000696a:	05e6                	slli	a1,a1,0x19
a000696c:	8dd5                	or	a1,a1,a3
a000696e:	ff0106b7          	lui	a3,0xff010
a0006972:	16fd                	addi	a3,a3,-1
a0006974:	8df5                	and	a1,a1,a3
a0006976:	0642                	slli	a2,a2,0x10
a0006978:	8dd1                	or	a1,a1,a2
a000697a:	c30c                	sw	a1,0(a4)
a000697c:	4318                	lw	a4,0(a4)
a000697e:	8ff9                	and	a5,a5,a4
a0006980:	c501                	beqz	a0,a0006988 <GLB_Set_I2C_CLK+0x3e>
a0006982:	010007b7          	lui	a5,0x1000
a0006986:	8fd9                	or	a5,a5,a4
a0006988:	20000737          	lui	a4,0x20000
a000698c:	18f72023          	sw	a5,384(a4) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006990:	4501                	li	a0,0
a0006992:	8082                	ret

a0006994 <GLB_Set_SPI_CLK>:
a0006994:	200007b7          	lui	a5,0x20000
a0006998:	18078793          	addi	a5,a5,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a000699c:	5b94                	lw	a3,48(a5)
a000699e:	05a6                	slli	a1,a1,0x9
a00069a0:	eff6f693          	andi	a3,a3,-257
a00069a4:	db94                	sw	a3,48(a5)
a00069a6:	5b98                	lw	a4,48(a5)
a00069a8:	de077713          	andi	a4,a4,-544
a00069ac:	8f51                	or	a4,a4,a2
a00069ae:	8dd9                	or	a1,a1,a4
a00069b0:	db8c                	sw	a1,48(a5)
a00069b2:	5b98                	lw	a4,48(a5)
a00069b4:	eff77793          	andi	a5,a4,-257
a00069b8:	c119                	beqz	a0,a00069be <GLB_Set_SPI_CLK+0x2a>
a00069ba:	10076793          	ori	a5,a4,256
a00069be:	20000737          	lui	a4,0x20000
a00069c2:	1af72823          	sw	a5,432(a4) # 200001b0 <remain_wifi_ram+0x1ffe01b0>
a00069c6:	4501                	li	a0,0
a00069c8:	8082                	ret

a00069ca <GLB_Set_DBI_CLK>:
a00069ca:	200007b7          	lui	a5,0x20000
a00069ce:	18078793          	addi	a5,a5,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a00069d2:	5bb4                	lw	a3,112(a5)
a00069d4:	05a6                	slli	a1,a1,0x9
a00069d6:	eff6f693          	andi	a3,a3,-257
a00069da:	dbb4                	sw	a3,112(a5)
a00069dc:	5bb8                	lw	a4,112(a5)
a00069de:	de077713          	andi	a4,a4,-544
a00069e2:	8f51                	or	a4,a4,a2
a00069e4:	8dd9                	or	a1,a1,a4
a00069e6:	dbac                	sw	a1,112(a5)
a00069e8:	5bb8                	lw	a4,112(a5)
a00069ea:	eff77793          	andi	a5,a4,-257
a00069ee:	c119                	beqz	a0,a00069f4 <GLB_Set_DBI_CLK+0x2a>
a00069f0:	10076793          	ori	a5,a4,256
a00069f4:	20000737          	lui	a4,0x20000
a00069f8:	1ef72823          	sw	a5,496(a4) # 200001f0 <remain_wifi_ram+0x1ffe01f0>
a00069fc:	4501                	li	a0,0
a00069fe:	8082                	ret

a0006a00 <GLB_Set_CAM_CLK>:
a0006a00:	20000737          	lui	a4,0x20000
a0006a04:	40070713          	addi	a4,a4,1024 # 20000400 <remain_wifi_ram+0x1ffe0400>
a0006a08:	5314                	lw	a3,32(a4)
a0006a0a:	f80007b7          	lui	a5,0xf8000
a0006a0e:	17fd                	addi	a5,a5,-1
a0006a10:	8efd                	and	a3,a3,a5
a0006a12:	d314                	sw	a3,32(a4)
a0006a14:	5314                	lw	a3,32(a4)
a0006a16:	d0000837          	lui	a6,0xd0000
a0006a1a:	187d                	addi	a6,a6,-1
a0006a1c:	0106f6b3          	and	a3,a3,a6
a0006a20:	05f2                	slli	a1,a1,0x1c
a0006a22:	8dd5                	or	a1,a1,a3
a0006a24:	400006b7          	lui	a3,0x40000
a0006a28:	16fd                	addi	a3,a3,-1
a0006a2a:	8df5                	and	a1,a1,a3
a0006a2c:	067a                	slli	a2,a2,0x1e
a0006a2e:	8dd1                	or	a1,a1,a2
a0006a30:	d30c                	sw	a1,32(a4)
a0006a32:	5318                	lw	a4,32(a4)
a0006a34:	8ff9                	and	a5,a5,a4
a0006a36:	c501                	beqz	a0,a0006a3e <GLB_Set_CAM_CLK+0x3e>
a0006a38:	080007b7          	lui	a5,0x8000
a0006a3c:	8fd9                	or	a5,a5,a4
a0006a3e:	20000737          	lui	a4,0x20000
a0006a42:	42f72023          	sw	a5,1056(a4) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0006a46:	4501                	li	a0,0
a0006a48:	8082                	ret

a0006a4a <GLB_Set_PSRAMB_CLK_Sel>:
a0006a4a:	20000737          	lui	a4,0x20000
a0006a4e:	60070713          	addi	a4,a4,1536 # 20000600 <remain_wifi_ram+0x1ffe0600>
a0006a52:	5314                	lw	a3,32(a4)
a0006a54:	f80007b7          	lui	a5,0xf8000
a0006a58:	17fd                	addi	a5,a5,-1
a0006a5a:	8efd                	and	a3,a3,a5
a0006a5c:	d314                	sw	a3,32(a4)
a0006a5e:	5314                	lw	a3,32(a4)
a0006a60:	f0000837          	lui	a6,0xf0000
a0006a64:	187d                	addi	a6,a6,-1
a0006a66:	0106f6b3          	and	a3,a3,a6
a0006a6a:	05f2                	slli	a1,a1,0x1c
a0006a6c:	8dd5                	or	a1,a1,a3
a0006a6e:	400006b7          	lui	a3,0x40000
a0006a72:	16fd                	addi	a3,a3,-1
a0006a74:	8df5                	and	a1,a1,a3
a0006a76:	067a                	slli	a2,a2,0x1e
a0006a78:	8dd1                	or	a1,a1,a2
a0006a7a:	d30c                	sw	a1,32(a4)
a0006a7c:	5318                	lw	a4,32(a4)
a0006a7e:	8ff9                	and	a5,a5,a4
a0006a80:	c501                	beqz	a0,a0006a88 <GLB_Set_PSRAMB_CLK_Sel+0x3e>
a0006a82:	080007b7          	lui	a5,0x8000
a0006a86:	8fd9                	or	a5,a5,a4
a0006a88:	20000737          	lui	a4,0x20000
a0006a8c:	62f72023          	sw	a5,1568(a4) # 20000620 <remain_wifi_ram+0x1ffe0620>
a0006a90:	4501                	li	a0,0
a0006a92:	8082                	ret

a0006a94 <HBN_Enable_BOD_IRQ>:
a0006a94:	2000f737          	lui	a4,0x2000f
a0006a98:	4b5c                	lw	a5,20(a4)
a0006a9a:	000406b7          	lui	a3,0x40
a0006a9e:	4501                	li	a0,0
a0006aa0:	8fd5                	or	a5,a5,a3
a0006aa2:	cb5c                	sw	a5,20(a4)
a0006aa4:	8082                	ret

a0006aa6 <HBN_Disable_BOD_IRQ>:
a0006aa6:	2000f6b7          	lui	a3,0x2000f
a0006aaa:	4adc                	lw	a5,20(a3)
a0006aac:	fffc0737          	lui	a4,0xfffc0
a0006ab0:	177d                	addi	a4,a4,-1
a0006ab2:	8ff9                	and	a5,a5,a4
a0006ab4:	cadc                	sw	a5,20(a3)
a0006ab6:	4501                	li	a0,0
a0006ab8:	8082                	ret

a0006aba <HBN_Set_BOD_Cfg>:
a0006aba:	1141                	addi	sp,sp,-16
a0006abc:	c422                	sw	s0,8(sp)
a0006abe:	c606                	sw	ra,12(sp)
a0006ac0:	00154783          	lbu	a5,1(a0)
a0006ac4:	842a                	mv	s0,a0
a0006ac6:	c3a9                	beqz	a5,a0006b08 <HBN_Set_BOD_Cfg+0x4e>
a0006ac8:	37f1                	jal	a0006a94 <HBN_Enable_BOD_IRQ>
a0006aca:	2000f7b7          	lui	a5,0x2000f
a0006ace:	57dc                	lw	a5,44(a5)
a0006ad0:	00344683          	lbu	a3,3(s0)
a0006ad4:	ff17f713          	andi	a4,a5,-15
a0006ad8:	00244783          	lbu	a5,2(s0)
a0006adc:	0786                	slli	a5,a5,0x1
a0006ade:	8fd9                	or	a5,a5,a4
a0006ae0:	ffe7f713          	andi	a4,a5,-2
a0006ae4:	c299                	beqz	a3,a0006aea <HBN_Set_BOD_Cfg+0x30>
a0006ae6:	0017e713          	ori	a4,a5,1
a0006aea:	00044683          	lbu	a3,0(s0)
a0006aee:	fef77793          	andi	a5,a4,-17
a0006af2:	c299                	beqz	a3,a0006af8 <HBN_Set_BOD_Cfg+0x3e>
a0006af4:	01076793          	ori	a5,a4,16
a0006af8:	40b2                	lw	ra,12(sp)
a0006afa:	4422                	lw	s0,8(sp)
a0006afc:	2000f737          	lui	a4,0x2000f
a0006b00:	d75c                	sw	a5,44(a4)
a0006b02:	4501                	li	a0,0
a0006b04:	0141                	addi	sp,sp,16
a0006b06:	8082                	ret
a0006b08:	3f79                	jal	a0006aa6 <HBN_Disable_BOD_IRQ>
a0006b0a:	b7c1                	j	a0006aca <HBN_Set_BOD_Cfg+0x10>

a0006b0c <Clock_DBI_Clk_Mux_Output>:
a0006b0c:	e919                	bnez	a0,a0006b22 <Clock_DBI_Clk_Mux_Output+0x16>
a0006b0e:	200007b7          	lui	a5,0x20000
a0006b12:	2547a503          	lw	a0,596(a5) # 20000254 <remain_wifi_ram+0x1ffe0254>
a0006b16:	2ca5350b          	extu	a0,a0,11,10
a0006b1a:	c2fbb317          	auipc	t1,0xc2fbb
a0006b1e:	dea30067          	jr	-534(t1) # 62fc1904 <Clock_160M_Clk_Mux_Output>
a0006b22:	4515                	li	a0,5
a0006b24:	c2fbb317          	auipc	t1,0xc2fbb
a0006b28:	ee230067          	jr	-286(t1) # 62fc1a06 <Clock_System_Clock_Get>

a0006b2c <Clock_Get_PSRAMB_Clk>:
a0006b2c:	1141                	addi	sp,sp,-16
a0006b2e:	200007b7          	lui	a5,0x20000
a0006b32:	c422                	sw	s0,8(sp)
a0006b34:	6207a403          	lw	s0,1568(a5) # 20000620 <remain_wifi_ram+0x1ffe0620>
a0006b38:	6207a783          	lw	a5,1568(a5)
a0006b3c:	c606                	sw	ra,12(sp)
a0006b3e:	8079                	srli	s0,s0,0x1e
a0006b40:	71c7b78b          	extu	a5,a5,28,28
a0006b44:	1312d537          	lui	a0,0x1312d
a0006b48:	c791                	beqz	a5,a0006b54 <Clock_Get_PSRAMB_Clk+0x28>
a0006b4a:	4501                	li	a0,0
a0006b4c:	c2fbb097          	auipc	ra,0xc2fbb
a0006b50:	c50080e7          	jalr	-944(ra) # 62fc179c <Clock_Get_AUPLL_Output>
a0006b54:	0405                	addi	s0,s0,1
a0006b56:	02855533          	divu	a0,a0,s0
a0006b5a:	40b2                	lw	ra,12(sp)
a0006b5c:	4422                	lw	s0,8(sp)
a0006b5e:	0141                	addi	sp,sp,16
a0006b60:	8082                	ret

a0006b62 <Clock_Get_ISP_Clk>:
a0006b62:	200007b7          	lui	a5,0x20000
a0006b66:	2547a783          	lw	a5,596(a5) # 20000254 <remain_wifi_ram+0x1ffe0254>
a0006b6a:	8b8d                	andi	a5,a5,3
a0006b6c:	cb91                	beqz	a5,a0006b80 <Clock_Get_ISP_Clk+0x1e>
a0006b6e:	4705                	li	a4,1
a0006b70:	4515                	li	a0,5
a0006b72:	00e78363          	beq	a5,a4,a0006b78 <Clock_Get_ISP_Clk+0x16>
a0006b76:	4519                	li	a0,6
a0006b78:	c2fbb317          	auipc	t1,0xc2fbb
a0006b7c:	c2430067          	jr	-988(t1) # 62fc179c <Clock_Get_AUPLL_Output>
a0006b80:	04c4b537          	lui	a0,0x4c4b
a0006b84:	40050513          	addi	a0,a0,1024 # 4c4b400 <remain_wifi_ram+0x4c2b400>
a0006b88:	8082                	ret

a0006b8a <Clock_Audio_ADC_Clock_Get>:
a0006b8a:	1141                	addi	sp,sp,-16
a0006b8c:	c606                	sw	ra,12(sp)
a0006b8e:	c2fbb097          	auipc	ra,0xc2fbb
a0006b92:	d54080e7          	jalr	-684(ra) # 62fc18e2 <Clock_Get_Audio_PLL_Output>
a0006b96:	200007b7          	lui	a5,0x20000
a0006b9a:	3447a783          	lw	a5,836(a5) # 20000344 <remain_wifi_ram+0x1ffe0344>
a0006b9e:	40b2                	lw	ra,12(sp)
a0006ba0:	5d07b78b          	extu	a5,a5,23,16
a0006ba4:	0785                	addi	a5,a5,1
a0006ba6:	02f55533          	divu	a0,a0,a5
a0006baa:	0141                	addi	sp,sp,16
a0006bac:	8082                	ret

a0006bae <Clock_Peripheral_Clock_Get>:
a0006bae:	1141                	addi	sp,sp,-16
a0006bb0:	c606                	sw	ra,12(sp)
a0006bb2:	c422                	sw	s0,8(sp)
a0006bb4:	4731                	li	a4,12
a0006bb6:	22e50d63          	beq	a0,a4,a0006df0 <Clock_Peripheral_Clock_Get+0x242>
a0006bba:	87aa                	mv	a5,a0
a0006bbc:	04a76c63          	bltu	a4,a0,a0006c14 <Clock_Peripheral_Clock_Get+0x66>
a0006bc0:	471d                	li	a4,7
a0006bc2:	18e50863          	beq	a0,a4,a0006d52 <Clock_Peripheral_Clock_Get+0x1a4>
a0006bc6:	02a76a63          	bltu	a4,a0,a0006bfa <Clock_Peripheral_Clock_Get+0x4c>
a0006bca:	4715                	li	a4,5
a0006bcc:	14e50163          	beq	a0,a4,a0006d0e <Clock_Peripheral_Clock_Get+0x160>
a0006bd0:	00a76a63          	bltu	a4,a0,a0006be4 <Clock_Peripheral_Clock_Get+0x36>
a0006bd4:	4709                	li	a4,2
a0006bd6:	0ca77b63          	bgeu	a4,a0,a0006cac <Clock_Peripheral_Clock_Get+0xfe>
a0006bda:	470d                	li	a4,3
a0006bdc:	10e50e63          	beq	a0,a4,a0006cf8 <Clock_Peripheral_Clock_Get+0x14a>
a0006be0:	4501                	li	a0,0
a0006be2:	a02d                	j	a0006c0c <Clock_Peripheral_Clock_Get+0x5e>
a0006be4:	4719                	li	a4,6
a0006be6:	fee51de3          	bne	a0,a4,a0006be0 <Clock_Peripheral_Clock_Get+0x32>
a0006bea:	4422                	lw	s0,8(sp)
a0006bec:	40b2                	lw	ra,12(sp)
a0006bee:	450d                	li	a0,3
a0006bf0:	0141                	addi	sp,sp,16
a0006bf2:	c2fbb317          	auipc	t1,0xc2fbb
a0006bf6:	e1430067          	jr	-492(t1) # 62fc1a06 <Clock_System_Clock_Get>
a0006bfa:	4729                	li	a4,10
a0006bfc:	14e50763          	beq	a0,a4,a0006d4a <Clock_Peripheral_Clock_Get+0x19c>
a0006c00:	46ad                	li	a3,11
a0006c02:	14d50c63          	beq	a0,a3,a0006d5a <Clock_Peripheral_Clock_Get+0x1ac>
a0006c06:	4501                	li	a0,0
a0006c08:	10e79d63          	bne	a5,a4,a0006d22 <Clock_Peripheral_Clock_Get+0x174>
a0006c0c:	40b2                	lw	ra,12(sp)
a0006c0e:	4422                	lw	s0,8(sp)
a0006c10:	0141                	addi	sp,sp,16
a0006c12:	8082                	ret
a0006c14:	4745                	li	a4,17
a0006c16:	26e50763          	beq	a0,a4,a0006e84 <Clock_Peripheral_Clock_Get+0x2d6>
a0006c1a:	04a76b63          	bltu	a4,a0,a0006c70 <Clock_Peripheral_Clock_Get+0xc2>
a0006c1e:	473d                	li	a4,15
a0006c20:	1ee50f63          	beq	a0,a4,a0006e1e <Clock_Peripheral_Clock_Get+0x270>
a0006c24:	00a76c63          	bltu	a4,a0,a0006c3c <Clock_Peripheral_Clock_Get+0x8e>
a0006c28:	4735                	li	a4,13
a0006c2a:	1ce50e63          	beq	a0,a4,a0006e06 <Clock_Peripheral_Clock_Get+0x258>
a0006c2e:	4739                	li	a4,14
a0006c30:	fae518e3          	bne	a0,a4,a0006be0 <Clock_Peripheral_Clock_Get+0x32>
a0006c34:	4422                	lw	s0,8(sp)
a0006c36:	40b2                	lw	ra,12(sp)
a0006c38:	0141                	addi	sp,sp,16
a0006c3a:	bf81                	j	a0006b8a <Clock_Audio_ADC_Clock_Get>
a0006c3c:	4741                	li	a4,16
a0006c3e:	fae511e3          	bne	a0,a4,a0006be0 <Clock_Peripheral_Clock_Get+0x32>
a0006c42:	200007b7          	lui	a5,0x20000
a0006c46:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
a0006c4a:	75c7b78b          	extu	a5,a5,29,28
a0006c4e:	22078663          	beqz	a5,a0006e7a <Clock_Peripheral_Clock_Get+0x2cc>
a0006c52:	4705                	li	a4,1
a0006c54:	20e79e63          	bne	a5,a4,a0006e70 <Clock_Peripheral_Clock_Get+0x2c2>
a0006c58:	4515                	li	a0,5
a0006c5a:	c2fbb097          	auipc	ra,0xc2fbb
a0006c5e:	dac080e7          	jalr	-596(ra) # 62fc1a06 <Clock_System_Clock_Get>
a0006c62:	200007b7          	lui	a5,0x20000
a0006c66:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
a0006c6a:	5907b78b          	extu	a5,a5,22,16
a0006c6e:	a8a5                	j	a0006ce6 <Clock_Peripheral_Clock_Get+0x138>
a0006c70:	474d                	li	a4,19
a0006c72:	24e50e63          	beq	a0,a4,a0006ece <Clock_Peripheral_Clock_Get+0x320>
a0006c76:	4751                	li	a4,20
a0006c78:	6521                	lui	a0,0x8
a0006c7a:	f8e789e3          	beq	a5,a4,a0006c0c <Clock_Peripheral_Clock_Get+0x5e>
a0006c7e:	4749                	li	a4,18
a0006c80:	f6e790e3          	bne	a5,a4,a0006be0 <Clock_Peripheral_Clock_Get+0x32>
a0006c84:	200007b7          	lui	a5,0x20000
a0006c88:	4307a783          	lw	a5,1072(a5) # 20000430 <remain_wifi_ram+0x1ffe0430>
a0006c8c:	30c7b78b          	extu	a5,a5,12,12
a0006c90:	22078a63          	beqz	a5,a0006ec4 <Clock_Peripheral_Clock_Get+0x316>
a0006c94:	4515                	li	a0,5
a0006c96:	c2fbb097          	auipc	ra,0xc2fbb
a0006c9a:	b06080e7          	jalr	-1274(ra) # 62fc179c <Clock_Get_AUPLL_Output>
a0006c9e:	200007b7          	lui	a5,0x20000
a0006ca2:	4307a783          	lw	a5,1072(a5) # 20000430 <remain_wifi_ram+0x1ffe0430>
a0006ca6:	2c97b78b          	extu	a5,a5,11,9
a0006caa:	a835                	j	a0006ce6 <Clock_Peripheral_Clock_Get+0x138>
a0006cac:	200006b7          	lui	a3,0x20000
a0006cb0:	1506a703          	lw	a4,336(a3) # 20000150 <remain_wifi_ram+0x1ffe0150>
a0006cb4:	450d                	li	a0,3
a0006cb6:	01575793          	srli	a5,a4,0x15
a0006cba:	8b89                	andi	a5,a5,2
a0006cbc:	1c77370b          	extu	a4,a4,7,7
a0006cc0:	8fd9                	or	a5,a5,a4
a0006cc2:	c795                	beqz	a5,a0006cee <Clock_Peripheral_Clock_Get+0x140>
a0006cc4:	4705                	li	a4,1
a0006cc6:	4515                	li	a0,5
a0006cc8:	02e79363          	bne	a5,a4,a0006cee <Clock_Peripheral_Clock_Get+0x140>
a0006ccc:	2546a503          	lw	a0,596(a3)
a0006cd0:	2ca5350b          	extu	a0,a0,11,10
a0006cd4:	c2fbb097          	auipc	ra,0xc2fbb
a0006cd8:	c30080e7          	jalr	-976(ra) # 62fc1904 <Clock_160M_Clk_Mux_Output>
a0006cdc:	200007b7          	lui	a5,0x20000
a0006ce0:	1507a783          	lw	a5,336(a5) # 20000150 <remain_wifi_ram+0x1ffe0150>
a0006ce4:	8b9d                	andi	a5,a5,7
a0006ce6:	0785                	addi	a5,a5,1
a0006ce8:	02f55533          	divu	a0,a0,a5
a0006cec:	b705                	j	a0006c0c <Clock_Peripheral_Clock_Get+0x5e>
a0006cee:	c2fbb097          	auipc	ra,0xc2fbb
a0006cf2:	d18080e7          	jalr	-744(ra) # 62fc1a06 <Clock_System_Clock_Get>
a0006cf6:	b7dd                	j	a0006cdc <Clock_Peripheral_Clock_Get+0x12e>
a0006cf8:	20000437          	lui	s0,0x20000
a0006cfc:	1b042503          	lw	a0,432(s0) # 200001b0 <remain_wifi_ram+0x1ffe01b0>
a0006d00:	2495350b          	extu	a0,a0,9,9
a0006d04:	3521                	jal	a0006b0c <Clock_DBI_Clk_Mux_Output>
a0006d06:	1b042783          	lw	a5,432(s0)
a0006d0a:	8bfd                	andi	a5,a5,31
a0006d0c:	bfe9                	j	a0006ce6 <Clock_Peripheral_Clock_Get+0x138>
a0006d0e:	20000437          	lui	s0,0x20000
a0006d12:	1f042503          	lw	a0,496(s0) # 200001f0 <remain_wifi_ram+0x1ffe01f0>
a0006d16:	2495350b          	extu	a0,a0,9,9
a0006d1a:	3bcd                	jal	a0006b0c <Clock_DBI_Clk_Mux_Output>
a0006d1c:	1f042783          	lw	a5,496(s0)
a0006d20:	b7ed                	j	a0006d0a <Clock_Peripheral_Clock_Get+0x15c>
a0006d22:	200007b7          	lui	a5,0x20000
a0006d26:	1807a783          	lw	a5,384(a5) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006d2a:	450d                	li	a0,3
a0006d2c:	6597b78b          	extu	a5,a5,25,25
a0006d30:	c391                	beqz	a5,a0006d34 <Clock_Peripheral_Clock_Get+0x186>
a0006d32:	4515                	li	a0,5
a0006d34:	c2fbb097          	auipc	ra,0xc2fbb
a0006d38:	cd2080e7          	jalr	-814(ra) # 62fc1a06 <Clock_System_Clock_Get>
a0006d3c:	200007b7          	lui	a5,0x20000
a0006d40:	1807a783          	lw	a5,384(a5) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006d44:	5d07b78b          	extu	a5,a5,23,16
a0006d48:	bf79                	j	a0006ce6 <Clock_Peripheral_Clock_Get+0x138>
a0006d4a:	4422                	lw	s0,8(sp)
a0006d4c:	40b2                	lw	ra,12(sp)
a0006d4e:	0141                	addi	sp,sp,16
a0006d50:	bbf1                	j	a0006b2c <Clock_Get_PSRAMB_Clk>
a0006d52:	4422                	lw	s0,8(sp)
a0006d54:	40b2                	lw	ra,12(sp)
a0006d56:	0141                	addi	sp,sp,16
a0006d58:	b529                	j	a0006b62 <Clock_Get_ISP_Clk>
a0006d5a:	20000737          	lui	a4,0x20000
a0006d5e:	17072783          	lw	a5,368(a4) # 20000170 <remain_wifi_ram+0x1ffe0170>
a0006d62:	34c7b78b          	extu	a5,a5,13,12
a0006d66:	ef8d                	bnez	a5,a0006da0 <Clock_Peripheral_Clock_Get+0x1f2>
a0006d68:	17072783          	lw	a5,368(a4)
a0006d6c:	3ce7b78b          	extu	a5,a5,15,14
a0006d70:	c3ad                	beqz	a5,a0006dd2 <Clock_Peripheral_Clock_Get+0x224>
a0006d72:	4705                	li	a4,1
a0006d74:	00e79d63          	bne	a5,a4,a0006d8e <Clock_Peripheral_Clock_Get+0x1e0>
a0006d78:	c2fbb097          	auipc	ra,0xc2fbb
a0006d7c:	bba080e7          	jalr	-1094(ra) # 62fc1932 <Clock_Xtal_Output>
a0006d80:	200007b7          	lui	a5,0x20000
a0006d84:	1707a783          	lw	a5,368(a5) # 20000170 <remain_wifi_ram+0x1ffe0170>
a0006d88:	2887b78b          	extu	a5,a5,10,8
a0006d8c:	bfa9                	j	a0006ce6 <Clock_Peripheral_Clock_Get+0x138>
a0006d8e:	4709                	li	a4,2
a0006d90:	04e78163          	beq	a5,a4,a0006dd2 <Clock_Peripheral_Clock_Get+0x224>
a0006d94:	4515                	li	a0,5
a0006d96:	c2fbb097          	auipc	ra,0xc2fbb
a0006d9a:	a06080e7          	jalr	-1530(ra) # 62fc179c <Clock_Get_AUPLL_Output>
a0006d9e:	b7cd                	j	a0006d80 <Clock_Peripheral_Clock_Get+0x1d2>
a0006da0:	4685                	li	a3,1
a0006da2:	00d79f63          	bne	a5,a3,a0006dc0 <Clock_Peripheral_Clock_Get+0x212>
a0006da6:	25472703          	lw	a4,596(a4)
a0006daa:	2487370b          	extu	a4,a4,9,8
a0006dae:	c71d                	beqz	a4,a0006ddc <Clock_Peripheral_Clock_Get+0x22e>
a0006db0:	fef702e3          	beq	a4,a5,a0006d94 <Clock_Peripheral_Clock_Get+0x1e6>
a0006db4:	4789                	li	a5,2
a0006db6:	4501                	li	a0,0
a0006db8:	fcf714e3          	bne	a4,a5,a0006d80 <Clock_Peripheral_Clock_Get+0x1d2>
a0006dbc:	4519                	li	a0,6
a0006dbe:	bfe1                	j	a0006d96 <Clock_Peripheral_Clock_Get+0x1e8>
a0006dc0:	4709                	li	a4,2
a0006dc2:	02e79263          	bne	a5,a4,a0006de6 <Clock_Peripheral_Clock_Get+0x238>
a0006dc6:	450d                	li	a0,3
a0006dc8:	c2fbb097          	auipc	ra,0xc2fbb
a0006dcc:	c3e080e7          	jalr	-962(ra) # 62fc1a06 <Clock_System_Clock_Get>
a0006dd0:	bf45                	j	a0006d80 <Clock_Peripheral_Clock_Get+0x1d2>
a0006dd2:	07271537          	lui	a0,0x7271
a0006dd6:	e0050513          	addi	a0,a0,-512 # 7270e00 <remain_wifi_ram+0x7250e00>
a0006dda:	b75d                	j	a0006d80 <Clock_Peripheral_Clock_Get+0x1d2>
a0006ddc:	04c4b537          	lui	a0,0x4c4b
a0006de0:	40050513          	addi	a0,a0,1024 # 4c4b400 <remain_wifi_ram+0x4c2b400>
a0006de4:	bf71                	j	a0006d80 <Clock_Peripheral_Clock_Get+0x1d2>
a0006de6:	05b8e537          	lui	a0,0x5b8e
a0006dea:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0006dee:	bf49                	j	a0006d80 <Clock_Peripheral_Clock_Get+0x1d2>
a0006df0:	c2fbb097          	auipc	ra,0xc2fbb
a0006df4:	af2080e7          	jalr	-1294(ra) # 62fc18e2 <Clock_Get_Audio_PLL_Output>
a0006df8:	200007b7          	lui	a5,0x20000
a0006dfc:	1907a783          	lw	a5,400(a5) # 20000190 <remain_wifi_ram+0x1ffe0190>
a0006e00:	03f7f793          	andi	a5,a5,63
a0006e04:	b5cd                	j	a0006ce6 <Clock_Peripheral_Clock_Get+0x138>
a0006e06:	4515                	li	a0,5
a0006e08:	c2fbb097          	auipc	ra,0xc2fbb
a0006e0c:	bfe080e7          	jalr	-1026(ra) # 62fc1a06 <Clock_System_Clock_Get>
a0006e10:	200007b7          	lui	a5,0x20000
a0006e14:	1407a783          	lw	a5,320(a5) # 20000140 <remain_wifi_ram+0x1ffe0140>
a0006e18:	5507b78b          	extu	a5,a5,21,16
a0006e1c:	b5e9                	j	a0006ce6 <Clock_Peripheral_Clock_Get+0x138>
a0006e1e:	2000f737          	lui	a4,0x2000f
a0006e22:	531c                	lw	a5,32(a4)
a0006e24:	2087b78b          	extu	a5,a5,8,8
a0006e28:	cb99                	beqz	a5,a0006e3e <Clock_Peripheral_Clock_Get+0x290>
a0006e2a:	5b08                	lw	a0,48(a4)
a0006e2c:	4422                	lw	s0,8(sp)
a0006e2e:	40b2                	lw	ra,12(sp)
a0006e30:	1035350b          	extu	a0,a0,4,3
a0006e34:	0141                	addi	sp,sp,16
a0006e36:	c2fbb317          	auipc	t1,0xc2fbb
a0006e3a:	b3430067          	jr	-1228(t1) # 62fc196a <Clock_F32k_Mux_Output>
a0006e3e:	200007b7          	lui	a5,0x20000
a0006e42:	1107a403          	lw	s0,272(a5) # 20000110 <remain_wifi_ram+0x1ffe0110>
a0006e46:	1107a783          	lw	a5,272(a5)
a0006e4a:	03f47413          	andi	s0,s0,63
a0006e4e:	1c77b78b          	extu	a5,a5,7,7
a0006e52:	eb89                	bnez	a5,a0006e64 <Clock_Peripheral_Clock_Get+0x2b6>
a0006e54:	c2fbb097          	auipc	ra,0xc2fbb
a0006e58:	a8e080e7          	jalr	-1394(ra) # 62fc18e2 <Clock_Get_Audio_PLL_Output>
a0006e5c:	0405                	addi	s0,s0,1
a0006e5e:	02855533          	divu	a0,a0,s0
a0006e62:	b36d                	j	a0006c0c <Clock_Peripheral_Clock_Get+0x5e>
a0006e64:	4515                	li	a0,5
a0006e66:	c2fbb097          	auipc	ra,0xc2fbb
a0006e6a:	ba0080e7          	jalr	-1120(ra) # 62fc1a06 <Clock_System_Clock_Get>
a0006e6e:	b7fd                	j	a0006e5c <Clock_Peripheral_Clock_Get+0x2ae>
a0006e70:	c2fbb097          	auipc	ra,0xc2fbb
a0006e74:	a72080e7          	jalr	-1422(ra) # 62fc18e2 <Clock_Get_Audio_PLL_Output>
a0006e78:	b3ed                	j	a0006c62 <Clock_Peripheral_Clock_Get+0xb4>
a0006e7a:	01e85537          	lui	a0,0x1e85
a0006e7e:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
a0006e82:	b3c5                	j	a0006c62 <Clock_Peripheral_Clock_Get+0xb4>
a0006e84:	200007b7          	lui	a5,0x20000
a0006e88:	4207a783          	lw	a5,1056(a5) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0006e8c:	75c7b78b          	extu	a5,a5,29,28
a0006e90:	ef81                	bnez	a5,a0006ea8 <Clock_Peripheral_Clock_Get+0x2fa>
a0006e92:	4515                	li	a0,5
a0006e94:	c2fbb097          	auipc	ra,0xc2fbb
a0006e98:	b72080e7          	jalr	-1166(ra) # 62fc1a06 <Clock_System_Clock_Get>
a0006e9c:	200007b7          	lui	a5,0x20000
a0006ea0:	4207a783          	lw	a5,1056(a5) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0006ea4:	83f9                	srli	a5,a5,0x1e
a0006ea6:	b581                	j	a0006ce6 <Clock_Peripheral_Clock_Get+0x138>
a0006ea8:	4705                	li	a4,1
a0006eaa:	00e78863          	beq	a5,a4,a0006eba <Clock_Peripheral_Clock_Get+0x30c>
a0006eae:	4515                	li	a0,5
a0006eb0:	c2fbb097          	auipc	ra,0xc2fbb
a0006eb4:	8ec080e7          	jalr	-1812(ra) # 62fc179c <Clock_Get_AUPLL_Output>
a0006eb8:	b7d5                	j	a0006e9c <Clock_Peripheral_Clock_Get+0x2ee>
a0006eba:	05b8e537          	lui	a0,0x5b8e
a0006ebe:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0006ec2:	bfe9                	j	a0006e9c <Clock_Peripheral_Clock_Get+0x2ee>
a0006ec4:	05b8e537          	lui	a0,0x5b8e
a0006ec8:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0006ecc:	bbc9                	j	a0006c9e <Clock_Peripheral_Clock_Get+0xf0>
a0006ece:	20000737          	lui	a4,0x20000
a0006ed2:	54872783          	lw	a5,1352(a4) # 20000548 <remain_wifi_ram+0x1ffe0548>
a0006ed6:	6187b78b          	extu	a5,a5,24,24
a0006eda:	d00788e3          	beqz	a5,a0006bea <Clock_Peripheral_Clock_Get+0x3c>
a0006ede:	25472503          	lw	a0,596(a4)
a0006ee2:	4422                	lw	s0,8(sp)
a0006ee4:	40b2                	lw	ra,12(sp)
a0006ee6:	2ca5350b          	extu	a0,a0,11,10
a0006eea:	0141                	addi	sp,sp,16
a0006eec:	c2fbb317          	auipc	t1,0xc2fbb
a0006ef0:	a1830067          	jr	-1512(t1) # 62fc1904 <Clock_160M_Clk_Mux_Output>

a0006ef4 <qcc74x_ef_ctrl_get_common_trim_list>:
a0006ef4:	a00087b7          	lui	a5,0xa0008
a0006ef8:	5c478793          	addi	a5,a5,1476 # a00085c4 <__psram_limit+0xf7c085c4>
a0006efc:	c11c                	sw	a5,0(a0)
a0006efe:	02200513          	li	a0,34
a0006f02:	8082                	ret

a0006f04 <Tzc_Sec_PSRAMB_Access_Release>:
a0006f04:	200056b7          	lui	a3,0x20005
a0006f08:	3a06a783          	lw	a5,928(a3) # 200053a0 <remain_wifi_ram+0x1ffe53a0>
a0006f0c:	7741                	lui	a4,0xffff0
a0006f0e:	177d                	addi	a4,a4,-1
a0006f10:	8ff9                	and	a5,a5,a4
a0006f12:	3af6a023          	sw	a5,928(a3)
a0006f16:	8082                	ret

a0006f18 <PSram_Ctrl_Request>:
a0006f18:	0532                	slli	a0,a0,0xc
a0006f1a:	200527b7          	lui	a5,0x20052
a0006f1e:	40f5470b          	lrw	a4,a0,a5,0
a0006f22:	66c1                	lui	a3,0x10
a0006f24:	00f50633          	add	a2,a0,a5
a0006f28:	8f55                	or	a4,a4,a3
a0006f2a:	40f5570b          	srw	a4,a0,a5,0
a0006f2e:	000206b7          	lui	a3,0x20
a0006f32:	3ea00713          	li	a4,1002
a0006f36:	421c                	lw	a5,0(a2)
a0006f38:	177d                	addi	a4,a4,-1
a0006f3a:	c319                	beqz	a4,a0006f40 <PSram_Ctrl_Request+0x28>
a0006f3c:	8ff5                	and	a5,a5,a3
a0006f3e:	dfe5                	beqz	a5,a0006f36 <PSram_Ctrl_Request+0x1e>
a0006f40:	8082                	ret

a0006f42 <PSram_Ctrl_Release>:
a0006f42:	0532                	slli	a0,a0,0xc
a0006f44:	200526b7          	lui	a3,0x20052
a0006f48:	40d5478b          	lrw	a5,a0,a3,0
a0006f4c:	7741                	lui	a4,0xffff0
a0006f4e:	177d                	addi	a4,a4,-1
a0006f50:	8ff9                	and	a5,a5,a4
a0006f52:	40d5578b          	srw	a5,a0,a3,0
a0006f56:	8082                	ret

a0006f58 <PSram_Ctrl_Init>:
a0006f58:	1101                	addi	sp,sp,-32
a0006f5a:	cc22                	sw	s0,24(sp)
a0006f5c:	00c51413          	slli	s0,a0,0xc
a0006f60:	09600513          	li	a0,150
a0006f64:	c62e                	sw	a1,12(sp)
a0006f66:	ce06                	sw	ra,28(sp)
a0006f68:	c2fba097          	auipc	ra,0xc2fba
a0006f6c:	0ee080e7          	jalr	238(ra) # 62fc1056 <arch_delay_us>
a0006f70:	20052737          	lui	a4,0x20052
a0006f74:	11470693          	addi	a3,a4,276 # 20052114 <remain_wifi_ram+0x20032114>
a0006f78:	40d4478b          	lrw	a5,s0,a3,0
a0006f7c:	45b2                	lw	a1,12(sp)
a0006f7e:	7641                	lui	a2,0xffff0
a0006f80:	8ff1                	and	a5,a5,a2
a0006f82:	41d0                	lw	a2,4(a1)
a0006f84:	00c70513          	addi	a0,a4,12
a0006f88:	8fd1                	or	a5,a5,a2
a0006f8a:	40d4578b          	srw	a5,s0,a3,0
a0006f8e:	40e4468b          	lrw	a3,s0,a4,0
a0006f92:	0005c783          	lbu	a5,0(a1) # ffc10000 <__psram_limit+0x57810000>
a0006f96:	ff900637          	lui	a2,0xff900
a0006f9a:	1661                	addi	a2,a2,-8
a0006f9c:	8ef1                	and	a3,a3,a2
a0006f9e:	8fd5                	or	a5,a5,a3
a0006fa0:	fffc06b7          	lui	a3,0xfffc0
a0006fa4:	16fd                	addi	a3,a3,-1
a0006fa6:	8ff5                	and	a5,a5,a3
a0006fa8:	0015c683          	lbu	a3,1(a1)
a0006fac:	06ca                	slli	a3,a3,0x12
a0006fae:	8fd5                	or	a5,a5,a3
a0006fb0:	001006b7          	lui	a3,0x100
a0006fb4:	8fd5                	or	a5,a5,a3
a0006fb6:	40e4578b          	srw	a5,s0,a4,0
a0006fba:	40a4478b          	lrw	a5,s0,a0,0
a0006fbe:	0025c603          	lbu	a2,2(a1)
a0006fc2:	010006b7          	lui	a3,0x1000
a0006fc6:	16fd                	addi	a3,a3,-1
a0006fc8:	8efd                	and	a3,a3,a5
a0006fca:	01861793          	slli	a5,a2,0x18
a0006fce:	8fd5                	or	a5,a5,a3
a0006fd0:	76e1                	lui	a3,0xffff8
a0006fd2:	0ff68693          	addi	a3,a3,255 # ffff80ff <__psram_limit+0x57bf80ff>
a0006fd6:	8ff5                	and	a5,a5,a3
a0006fd8:	6689                	lui	a3,0x2
a0006fda:	f0068693          	addi	a3,a3,-256 # 1f00 <HeapMinSize+0xf00>
a0006fde:	8fd5                	or	a5,a5,a3
a0006fe0:	40a4578b          	srw	a5,s0,a0,0
a0006fe4:	0005d683          	lhu	a3,0(a1)
a0006fe8:	10100793          	li	a5,257
a0006fec:	00f69c63          	bne	a3,a5,a0007004 <PSram_Ctrl_Init+0xac>
a0006ff0:	47bd                	li	a5,15
a0006ff2:	00f61963          	bne	a2,a5,a0007004 <PSram_Ctrl_Init+0xac>
a0006ff6:	40e4478b          	lrw	a5,s0,a4,0
a0006ffa:	000806b7          	lui	a3,0x80
a0006ffe:	8fd5                	or	a5,a5,a3
a0007000:	40e4578b          	srw	a5,s0,a4,0
a0007004:	40f2                	lw	ra,28(sp)
a0007006:	4462                	lw	s0,24(sp)
a0007008:	6105                	addi	sp,sp,32
a000700a:	8082                	ret

a000700c <PSram_Ctrl_Winbond_Read_Reg>:
a000700c:	1101                	addi	sp,sp,-32
a000700e:	cc22                	sw	s0,24(sp)
a0007010:	c62e                	sw	a1,12(sp)
a0007012:	00c51413          	slli	s0,a0,0xc
a0007016:	c432                	sw	a2,8(sp)
a0007018:	c22a                	sw	a0,4(sp)
a000701a:	ce06                	sw	ra,28(sp)
a000701c:	3df5                	jal	a0006f18 <PSram_Ctrl_Request>
a000701e:	200527b7          	lui	a5,0x20052
a0007022:	40f4470b          	lrw	a4,s0,a5,0
a0007026:	45b2                	lw	a1,12(sp)
a0007028:	6689                	lui	a3,0x2
a000702a:	8ff77713          	andi	a4,a4,-1793
a000702e:	05a2                	slli	a1,a1,0x8
a0007030:	8dd9                	or	a1,a1,a4
a0007032:	40f4558b          	srw	a1,s0,a5,0
a0007036:	40f4470b          	lrw	a4,s0,a5,0
a000703a:	4622                	lw	a2,8(sp)
a000703c:	4512                	lw	a0,4(sp)
a000703e:	8f55                	or	a4,a4,a3
a0007040:	40f4570b          	srw	a4,s0,a5,0
a0007044:	00f40833          	add	a6,s0,a5
a0007048:	3ea00713          	li	a4,1002
a000704c:	66a1                	lui	a3,0x8
a000704e:	00082783          	lw	a5,0(a6) # f0000000 <__psram_limit+0x47c00000>
a0007052:	177d                	addi	a4,a4,-1
a0007054:	c30d                	beqz	a4,a0007076 <PSram_Ctrl_Winbond_Read_Reg+0x6a>
a0007056:	8ff5                	and	a5,a5,a3
a0007058:	dbfd                	beqz	a5,a000704e <PSram_Ctrl_Winbond_Read_Reg+0x42>
a000705a:	200527b7          	lui	a5,0x20052
a000705e:	0791                	addi	a5,a5,4
a0007060:	40f4478b          	lrw	a5,s0,a5,0
a0007064:	83c1                	srli	a5,a5,0x10
a0007066:	00f61023          	sh	a5,0(a2) # ff900000 <__psram_limit+0x57500000>
a000706a:	3de1                	jal	a0006f42 <PSram_Ctrl_Release>
a000706c:	4501                	li	a0,0
a000706e:	40f2                	lw	ra,28(sp)
a0007070:	4462                	lw	s0,24(sp)
a0007072:	6105                	addi	sp,sp,32
a0007074:	8082                	ret
a0007076:	4509                	li	a0,2
a0007078:	bfdd                	j	a000706e <PSram_Ctrl_Winbond_Read_Reg+0x62>

a000707a <PSram_Ctrl_Winbond_Write_Reg>:
a000707a:	1101                	addi	sp,sp,-32
a000707c:	cc22                	sw	s0,24(sp)
a000707e:	ca26                	sw	s1,20(sp)
a0007080:	00c51413          	slli	s0,a0,0xc
a0007084:	c84a                	sw	s2,16(sp)
a0007086:	c62e                	sw	a1,12(sp)
a0007088:	c432                	sw	a2,8(sp)
a000708a:	c22a                	sw	a0,4(sp)
a000708c:	ce06                	sw	ra,28(sp)
a000708e:	3569                	jal	a0006f18 <PSram_Ctrl_Request>
a0007090:	4622                	lw	a2,8(sp)
a0007092:	200524b7          	lui	s1,0x20052
a0007096:	01048693          	addi	a3,s1,16 # 20052010 <remain_wifi_ram+0x20032010>
a000709a:	40d4470b          	lrw	a4,s0,a3,0
a000709e:	00b64783          	lbu	a5,11(a2)
a00070a2:	488d                	li	a7,3
a00070a4:	9b41                	andi	a4,a4,-16
a00070a6:	8fd9                	or	a5,a5,a4
a00070a8:	f8f7f713          	andi	a4,a5,-113
a00070ac:	00a64783          	lbu	a5,10(a2)
a00070b0:	4512                	lw	a0,4(sp)
a00070b2:	45b2                	lw	a1,12(sp)
a00070b4:	0792                	slli	a5,a5,0x4
a00070b6:	8fd9                	or	a5,a5,a4
a00070b8:	00964703          	lbu	a4,9(a2)
a00070bc:	f7f7f793          	andi	a5,a5,-129
a00070c0:	00940933          	add	s2,s0,s1
a00070c4:	071e                	slli	a4,a4,0x7
a00070c6:	8f5d                	or	a4,a4,a5
a00070c8:	8ff77793          	andi	a5,a4,-1793
a00070cc:	00864703          	lbu	a4,8(a2)
a00070d0:	0722                	slli	a4,a4,0x8
a00070d2:	8f5d                	or	a4,a4,a5
a00070d4:	77fd                	lui	a5,0xfffff
a00070d6:	17fd                	addi	a5,a5,-1
a00070d8:	8f7d                	and	a4,a4,a5
a00070da:	00764783          	lbu	a5,7(a2)
a00070de:	07b2                	slli	a5,a5,0xc
a00070e0:	8fd9                	or	a5,a5,a4
a00070e2:	7779                	lui	a4,0xffffe
a00070e4:	177d                	addi	a4,a4,-1
a00070e6:	8f7d                	and	a4,a4,a5
a00070e8:	00c48793          	addi	a5,s1,12
a00070ec:	40f4480b          	lrw	a6,s0,a5,0
a00070f0:	00664783          	lbu	a5,6(a2)
a00070f4:	01885813          	srli	a6,a6,0x18
a00070f8:	07b6                	slli	a5,a5,0xd
a00070fa:	8fd9                	or	a5,a5,a4
a00070fc:	ffe10737          	lui	a4,0xffe10
a0007100:	177d                	addi	a4,a4,-1
a0007102:	8ff9                	and	a5,a5,a4
a0007104:	00564703          	lbu	a4,5(a2)
a0007108:	09181e63          	bne	a6,a7,a00071a4 <PSram_Ctrl_Winbond_Write_Reg+0x12a>
a000710c:	0742                	slli	a4,a4,0x10
a000710e:	8fd9                	or	a5,a5,a4
a0007110:	ff000737          	lui	a4,0xff000
a0007114:	177d                	addi	a4,a4,-1
a0007116:	8ff9                	and	a5,a5,a4
a0007118:	00464703          	lbu	a4,4(a2)
a000711c:	05a2                	slli	a1,a1,0x8
a000711e:	0762                	slli	a4,a4,0x18
a0007120:	8fd9                	or	a5,a5,a4
a0007122:	e0000737          	lui	a4,0xe0000
a0007126:	177d                	addi	a4,a4,-1
a0007128:	8ff9                	and	a5,a5,a4
a000712a:	00264703          	lbu	a4,2(a2)
a000712e:	0776                	slli	a4,a4,0x1d
a0007130:	8fd9                	or	a5,a5,a4
a0007132:	c0000737          	lui	a4,0xc0000
a0007136:	177d                	addi	a4,a4,-1
a0007138:	8f7d                	and	a4,a4,a5
a000713a:	00164783          	lbu	a5,1(a2)
a000713e:	07fa                	slli	a5,a5,0x1e
a0007140:	8fd9                	or	a5,a5,a4
a0007142:	fe000737          	lui	a4,0xfe000
a0007146:	177d                	addi	a4,a4,-1
a0007148:	8f7d                	and	a4,a4,a5
a000714a:	00364783          	lbu	a5,3(a2)
a000714e:	07e6                	slli	a5,a5,0x19
a0007150:	8fd9                	or	a5,a5,a4
a0007152:	80000737          	lui	a4,0x80000
a0007156:	fff74713          	not	a4,a4
a000715a:	8ff9                	and	a5,a5,a4
a000715c:	00064703          	lbu	a4,0(a2)
a0007160:	077e                	slli	a4,a4,0x1f
a0007162:	8fd9                	or	a5,a5,a4
a0007164:	40d4578b          	srw	a5,s0,a3,0
a0007168:	4094478b          	lrw	a5,s0,s1,0
a000716c:	6705                	lui	a4,0x1
a000716e:	6691                	lui	a3,0x4
a0007170:	8ff7f793          	andi	a5,a5,-1793
a0007174:	8ddd                	or	a1,a1,a5
a0007176:	4094558b          	srw	a1,s0,s1,0
a000717a:	4094478b          	lrw	a5,s0,s1,0
a000717e:	8fd9                	or	a5,a5,a4
a0007180:	4094578b          	srw	a5,s0,s1,0
a0007184:	3ea00713          	li	a4,1002
a0007188:	00092783          	lw	a5,0(s2)
a000718c:	177d                	addi	a4,a4,-1
a000718e:	cf09                	beqz	a4,a00071a8 <PSram_Ctrl_Winbond_Write_Reg+0x12e>
a0007190:	8ff5                	and	a5,a5,a3
a0007192:	dbfd                	beqz	a5,a0007188 <PSram_Ctrl_Winbond_Write_Reg+0x10e>
a0007194:	337d                	jal	a0006f42 <PSram_Ctrl_Release>
a0007196:	4501                	li	a0,0
a0007198:	40f2                	lw	ra,28(sp)
a000719a:	4462                	lw	s0,24(sp)
a000719c:	44d2                	lw	s1,20(sp)
a000719e:	4942                	lw	s2,16(sp)
a00071a0:	6105                	addi	sp,sp,32
a00071a2:	8082                	ret
a00071a4:	074a                	slli	a4,a4,0x12
a00071a6:	b7a5                	j	a000710e <PSram_Ctrl_Winbond_Write_Reg+0x94>
a00071a8:	4509                	li	a0,2
a00071aa:	b7fd                	j	a0007198 <PSram_Ctrl_Winbond_Write_Reg+0x11e>

a00071ac <qcc74x_gpio_pad_check>:
a00071ac:	1141                	addi	sp,sp,-16
a00071ae:	c606                	sw	ra,12(sp)
a00071b0:	c2fba097          	auipc	ra,0xc2fba
a00071b4:	d5a080e7          	jalr	-678(ra) # 62fc0f0a <GLB_GPIO_Pad_LeadOut_Sts>
a00071b8:	e111                	bnez	a0,a00071bc <qcc74x_gpio_pad_check+0x10>
a00071ba:	a001                	j	a00071ba <qcc74x_gpio_pad_check+0xe>
a00071bc:	40b2                	lw	ra,12(sp)
a00071be:	0141                	addi	sp,sp,16
a00071c0:	8082                	ret

a00071c2 <qcc74x_clk_get_peripheral_clock>:
a00071c2:	e501                	bnez	a0,a00071ca <qcc74x_clk_get_peripheral_clock+0x8>
a00071c4:	4539                	li	a0,14
a00071c6:	9e9ff06f          	j	a0006bae <Clock_Peripheral_Clock_Get>
a00071ca:	4785                	li	a5,1
a00071cc:	00f51463          	bne	a0,a5,a00071d4 <qcc74x_clk_get_peripheral_clock+0x12>
a00071d0:	4541                	li	a0,16
a00071d2:	bfd5                	j	a00071c6 <qcc74x_clk_get_peripheral_clock+0x4>
a00071d4:	4795                	li	a5,5
a00071d6:	00f51463          	bne	a0,a5,a00071de <qcc74x_clk_get_peripheral_clock+0x1c>
a00071da:	4501                	li	a0,0
a00071dc:	b7ed                	j	a00071c6 <qcc74x_clk_get_peripheral_clock+0x4>
a00071de:	4799                	li	a5,6
a00071e0:	00f51463          	bne	a0,a5,a00071e8 <qcc74x_clk_get_peripheral_clock+0x26>
a00071e4:	450d                	li	a0,3
a00071e6:	b7c5                	j	a00071c6 <qcc74x_clk_get_peripheral_clock+0x4>
a00071e8:	479d                	li	a5,7
a00071ea:	00f51463          	bne	a0,a5,a00071f2 <qcc74x_clk_get_peripheral_clock+0x30>
a00071ee:	4521                	li	a0,8
a00071f0:	bfd9                	j	a00071c6 <qcc74x_clk_get_peripheral_clock+0x4>
a00071f2:	47bd                	li	a5,15
a00071f4:	00f51463          	bne	a0,a5,a00071fc <qcc74x_clk_get_peripheral_clock+0x3a>
a00071f8:	452d                	li	a0,11
a00071fa:	b7f1                	j	a00071c6 <qcc74x_clk_get_peripheral_clock+0x4>
a00071fc:	47a9                	li	a5,10
a00071fe:	00f51463          	bne	a0,a5,a0007206 <qcc74x_clk_get_peripheral_clock+0x44>
a0007202:	4535                	li	a0,13
a0007204:	b7c9                	j	a00071c6 <qcc74x_clk_get_peripheral_clock+0x4>
a0007206:	02000793          	li	a5,32
a000720a:	00f51463          	bne	a0,a5,a0007212 <qcc74x_clk_get_peripheral_clock+0x50>
a000720e:	454d                	li	a0,19
a0007210:	bf5d                	j	a00071c6 <qcc74x_clk_get_peripheral_clock+0x4>
a0007212:	47c5                	li	a5,17
a0007214:	00f51463          	bne	a0,a5,a000721c <qcc74x_clk_get_peripheral_clock+0x5a>
a0007218:	4549                	li	a0,18
a000721a:	b775                	j	a00071c6 <qcc74x_clk_get_peripheral_clock+0x4>
a000721c:	47b9                	li	a5,14
a000721e:	00f51463          	bne	a0,a5,a0007226 <qcc74x_clk_get_peripheral_clock+0x64>
a0007222:	4545                	li	a0,17
a0007224:	b74d                	j	a00071c6 <qcc74x_clk_get_peripheral_clock+0x4>
a0007226:	02400793          	li	a5,36
a000722a:	00f51463          	bne	a0,a5,a0007232 <qcc74x_clk_get_peripheral_clock+0x70>
a000722e:	4515                	li	a0,5
a0007230:	bf59                	j	a00071c6 <qcc74x_clk_get_peripheral_clock+0x4>
a0007232:	47a5                	li	a5,9
a0007234:	00f51463          	bne	a0,a5,a000723c <qcc74x_clk_get_peripheral_clock+0x7a>
a0007238:	4531                	li	a0,12
a000723a:	b771                	j	a00071c6 <qcc74x_clk_get_peripheral_clock+0x4>
a000723c:	47d1                	li	a5,20
a000723e:	00f51463          	bne	a0,a5,a0007246 <qcc74x_clk_get_peripheral_clock+0x84>
a0007242:	4551                	li	a0,20
a0007244:	b749                	j	a00071c6 <qcc74x_clk_get_peripheral_clock+0x4>
a0007246:	4501                	li	a0,0
a0007248:	8082                	ret

a000724a <qcc74x_sys_reset_por>:
a000724a:	1141                	addi	sp,sp,-16
a000724c:	c606                	sw	ra,12(sp)
a000724e:	200107b7          	lui	a5,0x20010
a0007252:	4711                	li	a4,4
a0007254:	5ae7a423          	sw	a4,1448(a5) # 200105a8 <remain_wifi_ram+0x1fff05a8>
a0007258:	bf1ba737          	lui	a4,0xbf1ba
a000725c:	55e70713          	addi	a4,a4,1374 # bf1ba55e <__psram_limit+0x16dba55e>
a0007260:	5ae7a623          	sw	a4,1452(a5)
a0007264:	30047073          	csrci	mstatus,8
a0007268:	4511                	li	a0,4
a000726a:	c2fba097          	auipc	ra,0xc2fba
a000726e:	8d4080e7          	jalr	-1836(ra) # 62fc0b3e <GLB_AHB_MCU_Software_Reset>
a0007272:	4521                	li	a0,8
a0007274:	c2fba097          	auipc	ra,0xc2fba
a0007278:	8ca080e7          	jalr	-1846(ra) # 62fc0b3e <GLB_AHB_MCU_Software_Reset>
a000727c:	4525                	li	a0,9
a000727e:	c2fba097          	auipc	ra,0xc2fba
a0007282:	8c0080e7          	jalr	-1856(ra) # 62fc0b3e <GLB_AHB_MCU_Software_Reset>
a0007286:	4529                	li	a0,10
a0007288:	c2fba097          	auipc	ra,0xc2fba
a000728c:	8b6080e7          	jalr	-1866(ra) # 62fc0b3e <GLB_AHB_MCU_Software_Reset>
a0007290:	452d                	li	a0,11
a0007292:	c2fba097          	auipc	ra,0xc2fba
a0007296:	8ac080e7          	jalr	-1876(ra) # 62fc0b3e <GLB_AHB_MCU_Software_Reset>
a000729a:	4529                	li	a0,10
a000729c:	c2fba097          	auipc	ra,0xc2fba
a00072a0:	e04080e7          	jalr	-508(ra) # 62fc10a0 <arch_delay_ms>
a00072a4:	c2fba097          	auipc	ra,0xc2fba
a00072a8:	8ae080e7          	jalr	-1874(ra) # 62fc0b52 <GLB_SW_POR_Reset>
a00072ac:	a001                	j	a00072ac <qcc74x_sys_reset_por+0x62>

a00072ae <board_psram_x8_init>:
a00072ae:	7135                	addi	sp,sp,-160
a00072b0:	cb26                	sw	s1,148(sp)
a00072b2:	84aa                	mv	s1,a0
a00072b4:	08e8                	addi	a0,sp,92
a00072b6:	cf06                	sw	ra,156(sp)
a00072b8:	cd22                	sw	s0,152(sp)
a00072ba:	c94a                	sw	s2,144(sp)
a00072bc:	c74e                	sw	s3,140(sp)
a00072be:	00011f23          	sh	zero,30(sp)
a00072c2:	c2fba097          	auipc	ra,0xc2fba
a00072c6:	e5c080e7          	jalr	-420(ra) # 62fc111e <qcc74x_efuse_get_device_info>
a00072ca:	05e14783          	lbu	a5,94(sp)
a00072ce:	eb81                	bnez	a5,a00072de <board_psram_x8_init+0x30>
a00072d0:	a0008537          	lui	a0,0xa0008
a00072d4:	7c450513          	addi	a0,a0,1988 # a00087c4 <__psram_limit+0xf7c087c4>
a00072d8:	c92fe0ef          	jal	ra,a000576a <puts>
a00072dc:	a001                	j	a00072dc <board_psram_x8_init+0x2e>
a00072de:	200017b7          	lui	a5,0x20001
a00072e2:	9687a703          	lw	a4,-1688(a5) # 20000968 <remain_wifi_ram+0x1ffe0968>
a00072e6:	8b05                	andi	a4,a4,1
a00072e8:	cf2d                	beqz	a4,a0007362 <board_psram_x8_init+0xb4>
a00072ea:	96c7a703          	lw	a4,-1684(a5)
a00072ee:	8b05                	andi	a4,a4,1
a00072f0:	cb2d                	beqz	a4,a0007362 <board_psram_x8_init+0xb4>
a00072f2:	9707a703          	lw	a4,-1680(a5)
a00072f6:	8b05                	andi	a4,a4,1
a00072f8:	c72d                	beqz	a4,a0007362 <board_psram_x8_init+0xb4>
a00072fa:	9747a703          	lw	a4,-1676(a5)
a00072fe:	8b05                	andi	a4,a4,1
a0007300:	c32d                	beqz	a4,a0007362 <board_psram_x8_init+0xb4>
a0007302:	9787a703          	lw	a4,-1672(a5)
a0007306:	8b05                	andi	a4,a4,1
a0007308:	cf29                	beqz	a4,a0007362 <board_psram_x8_init+0xb4>
a000730a:	97c7a703          	lw	a4,-1668(a5)
a000730e:	8b05                	andi	a4,a4,1
a0007310:	cb29                	beqz	a4,a0007362 <board_psram_x8_init+0xb4>
a0007312:	9807a703          	lw	a4,-1664(a5)
a0007316:	8b05                	andi	a4,a4,1
a0007318:	c729                	beqz	a4,a0007362 <board_psram_x8_init+0xb4>
a000731a:	9847a703          	lw	a4,-1660(a5)
a000731e:	8b05                	andi	a4,a4,1
a0007320:	c329                	beqz	a4,a0007362 <board_psram_x8_init+0xb4>
a0007322:	9887a783          	lw	a5,-1656(a5)
a0007326:	8b85                	andi	a5,a5,1
a0007328:	cf8d                	beqz	a5,a0007362 <board_psram_x8_init+0xb4>
a000732a:	200017b7          	lui	a5,0x20001
a000732e:	98c7a703          	lw	a4,-1652(a5) # 2000098c <remain_wifi_ram+0x1ffe098c>
a0007332:	8b05                	andi	a4,a4,1
a0007334:	c71d                	beqz	a4,a0007362 <board_psram_x8_init+0xb4>
a0007336:	9907a703          	lw	a4,-1648(a5)
a000733a:	8b05                	andi	a4,a4,1
a000733c:	c31d                	beqz	a4,a0007362 <board_psram_x8_init+0xb4>
a000733e:	9947a783          	lw	a5,-1644(a5)
a0007342:	8b85                	andi	a5,a5,1
a0007344:	cf99                	beqz	a5,a0007362 <board_psram_x8_init+0xb4>
a0007346:	a0008537          	lui	a0,0xa0008
a000734a:	7fc50513          	addi	a0,a0,2044 # a00087fc <__psram_limit+0xf7c087fc>
a000734e:	c1cfe0ef          	jal	ra,a000576a <puts>
a0007352:	4501                	li	a0,0
a0007354:	40fa                	lw	ra,156(sp)
a0007356:	446a                	lw	s0,152(sp)
a0007358:	44da                	lw	s1,148(sp)
a000735a:	494a                	lw	s2,144(sp)
a000735c:	49ba                	lw	s3,140(sp)
a000735e:	610d                	addi	sp,sp,160
a0007360:	8082                	ret
a0007362:	4601                	li	a2,0
a0007364:	4581                	li	a1,0
a0007366:	4505                	li	a0,1
a0007368:	ee2ff0ef          	jal	ra,a0006a4a <GLB_Set_PSRAMB_CLK_Sel>
a000736c:	a0008537          	lui	a0,0xa0008
a0007370:	8dc50513          	addi	a0,a0,-1828 # a00078dc <__psram_limit+0xf7c078dc>
a0007374:	6905                	lui	s2,0x1
a0007376:	e97fe0ef          	jal	ra,a000620c <qcc74x_device_get_by_name>
a000737a:	02900413          	li	s0,41
a000737e:	82090913          	addi	s2,s2,-2016 # 820 <__RFTLV_SIZE_HOLE+0x20>
a0007382:	03500993          	li	s3,53
a0007386:	85a2                	mv	a1,s0
a0007388:	864a                	mv	a2,s2
a000738a:	0405                	addi	s0,s0,1
a000738c:	c62a                	sw	a0,12(sp)
a000738e:	0ff47413          	zext.b	s0,s0
a0007392:	a2bfe0ef          	jal	ra,a0005dbc <qcc74x_gpio_init>
a0007396:	4532                	lw	a0,12(sp)
a0007398:	ff3417e3          	bne	s0,s3,a0007386 <board_psram_x8_init+0xd8>
a000739c:	1860                	addi	s0,sp,60
a000739e:	a00095b7          	lui	a1,0xa0009
a00073a2:	02000613          	li	a2,32
a00073a6:	87458593          	addi	a1,a1,-1932 # a0008874 <__psram_limit+0xf7c08874>
a00073aa:	8522                	mv	a0,s0
a00073ac:	b1ffc0ef          	jal	ra,a0003eca <memcpy>
a00073b0:	4785                	li	a5,1
a00073b2:	02f11423          	sh	a5,40(sp)
a00073b6:	478d                	li	a5,3
a00073b8:	02f10523          	sb	a5,42(sp)
a00073bc:	67c1                	lui	a5,0x10
a00073be:	ff078713          	addi	a4,a5,-16 # fff0 <wifi_ram_max_size+0x7ff0>
a00073c2:	da3e                	sw	a5,52(sp)
a00073c4:	a00095b7          	lui	a1,0xa0009
a00073c8:	010107b7          	lui	a5,0x1010
a00073cc:	10578793          	addi	a5,a5,261 # 1010105 <remain_wifi_ram+0xff0105>
a00073d0:	d63a                	sw	a4,44(sp)
a00073d2:	4685                	li	a3,1
a00073d4:	01000737          	lui	a4,0x1000
a00073d8:	1010                	addi	a2,sp,32
a00073da:	81458593          	addi	a1,a1,-2028 # a0008814 <__psram_limit+0xf7c08814>
a00073de:	4501                	li	a0,0
a00073e0:	dc3e                	sw	a5,56(sp)
a00073e2:	d83a                	sw	a4,48(sp)
a00073e4:	c2fb9097          	auipc	ra,0xc2fb9
a00073e8:	21a080e7          	jalr	538(ra) # 62fc05fe <qcc74x_ef_ctrl_read_common_trim>
a00073ec:	02014783          	lbu	a5,32(sp)
a00073f0:	cfa5                	beqz	a5,a0007468 <board_psram_x8_init+0x1ba>
a00073f2:	02314583          	lbu	a1,35(sp)
a00073f6:	5512                	lw	a0,36(sp)
a00073f8:	02114903          	lbu	s2,33(sp)
a00073fc:	c2fb9097          	auipc	ra,0xc2fb9
a0007400:	34a080e7          	jalr	842(ra) # 62fc0746 <qcc74x_ef_ctrl_get_trim_parity>
a0007404:	04a91b63          	bne	s2,a0,a000745a <board_psram_x8_init+0x1ac>
a0007408:	5712                	lw	a4,36(sp)
a000740a:	1c47378b          	extu	a5,a4,7,4
a000740e:	8b3d                	andi	a4,a4,15
a0007410:	97ba                	add	a5,a5,a4
a0007412:	8785                	srai	a5,a5,0x1
a0007414:	a2f4478b          	lrhu	a5,s0,a5,1
a0007418:	d63e                	sw	a5,44(sp)
a000741a:	4789                	li	a5,2
a000741c:	04f48b63          	beq	s1,a5,a0007472 <board_psram_x8_init+0x1c4>
a0007420:	478d                	li	a5,3
a0007422:	04f48e63          	beq	s1,a5,a000747e <board_psram_x8_init+0x1d0>
a0007426:	4705                	li	a4,1
a0007428:	00e49663          	bne	s1,a4,a0007434 <board_psram_x8_init+0x186>
a000742c:	02f10523          	sb	a5,42(sp)
a0007430:	02910d23          	sb	s1,58(sp)
a0007434:	102c                	addi	a1,sp,40
a0007436:	4501                	li	a0,0
a0007438:	b21ff0ef          	jal	ra,a0006f58 <PSram_Ctrl_Init>
a000743c:	1810                	addi	a2,sp,48
a000743e:	4589                	li	a1,2
a0007440:	4501                	li	a0,0
a0007442:	3925                	jal	a000707a <PSram_Ctrl_Winbond_Write_Reg>
a0007444:	01e10613          	addi	a2,sp,30
a0007448:	4581                	li	a1,0
a000744a:	4501                	li	a0,0
a000744c:	bc1ff0ef          	jal	ra,a000700c <PSram_Ctrl_Winbond_Read_Reg>
a0007450:	ab5ff0ef          	jal	ra,a0006f04 <Tzc_Sec_PSRAMB_Access_Release>
a0007454:	01e15503          	lhu	a0,30(sp)
a0007458:	bdf5                	j	a0007354 <board_psram_x8_init+0xa6>
a000745a:	a0009537          	lui	a0,0xa0009
a000745e:	81c50513          	addi	a0,a0,-2020 # a000881c <__psram_limit+0xf7c0881c>
a0007462:	b3cfe0ef          	jal	ra,a000579e <printf>
a0007466:	bf55                	j	a000741a <board_psram_x8_init+0x16c>
a0007468:	a0009537          	lui	a0,0xa0009
a000746c:	83850513          	addi	a0,a0,-1992 # a0008838 <__psram_limit+0xf7c08838>
a0007470:	bfcd                	j	a0007462 <board_psram_x8_init+0x1b4>
a0007472:	479d                	li	a5,7
a0007474:	02f10523          	sb	a5,42(sp)
a0007478:	02010d23          	sb	zero,58(sp)
a000747c:	bf65                	j	a0007434 <board_psram_x8_init+0x186>
a000747e:	47bd                	li	a5,15
a0007480:	bfd5                	j	a0007474 <board_psram_x8_init+0x1c6>

a0007482 <qcc74x_show_log>:
a0007482:	1141                	addi	sp,sp,-16
a0007484:	c422                	sw	s0,8(sp)
a0007486:	a0009437          	lui	s0,0xa0009
a000748a:	a2440513          	addi	a0,s0,-1500 # a0008a24 <__psram_limit+0xf7c08a24>
a000748e:	c606                	sw	ra,12(sp)
a0007490:	b0efe0ef          	jal	ra,a000579e <printf>
a0007494:	a2440513          	addi	a0,s0,-1500
a0007498:	b06fe0ef          	jal	ra,a000579e <printf>
a000749c:	4422                	lw	s0,8(sp)
a000749e:	40b2                	lw	ra,12(sp)
a00074a0:	a0009637          	lui	a2,0xa0009
a00074a4:	a00095b7          	lui	a1,0xa0009
a00074a8:	a0009537          	lui	a0,0xa0009
a00074ac:	89460613          	addi	a2,a2,-1900 # a0008894 <__psram_limit+0xf7c08894>
a00074b0:	8a058593          	addi	a1,a1,-1888 # a00088a0 <__psram_limit+0xf7c088a0>
a00074b4:	8ac50513          	addi	a0,a0,-1876 # a00088ac <__psram_limit+0xf7c088ac>
a00074b8:	0141                	addi	sp,sp,16
a00074ba:	ae4fe06f          	j	a000579e <printf>

a00074be <qcc74x_sys_version>:
a00074be:	411c                	lw	a5,0(a0)
a00074c0:	872a                	mv	a4,a0
a00074c2:	e791                	bnez	a5,a00074ce <qcc74x_sys_version+0x10>
a00074c4:	a00087b7          	lui	a5,0xa0008
a00074c8:	8d078793          	addi	a5,a5,-1840 # a00078d0 <__psram_limit+0xf7c078d0>
a00074cc:	c11c                	sw	a5,0(a0)
a00074ce:	431c                	lw	a5,0(a4)
a00074d0:	a00086b7          	lui	a3,0xa0008
a00074d4:	8dc68693          	addi	a3,a3,-1828 # a00078dc <__psram_limit+0xf7c078dc>
a00074d8:	4501                	li	a0,0
a00074da:	00d78563          	beq	a5,a3,a00074e4 <qcc74x_sys_version+0x26>
a00074de:	5847c50b          	lwia	a0,(a5),4,0
a00074e2:	c31c                	sw	a5,0(a4)
a00074e4:	8082                	ret

a00074e6 <qcc74x_show_component_version>:
a00074e6:	a0009537          	lui	a0,0xa0009
a00074ea:	1101                	addi	sp,sp,-32
a00074ec:	8bc50513          	addi	a0,a0,-1860 # a00088bc <__psram_limit+0xf7c088bc>
a00074f0:	ca26                	sw	s1,20(sp)
a00074f2:	c84a                	sw	s2,16(sp)
a00074f4:	ce06                	sw	ra,28(sp)
a00074f6:	cc22                	sw	s0,24(sp)
a00074f8:	c602                	sw	zero,12(sp)
a00074fa:	a00094b7          	lui	s1,0xa0009
a00074fe:	a6cfe0ef          	jal	ra,a000576a <puts>
a0007502:	a0009937          	lui	s2,0xa0009
a0007506:	0068                	addi	a0,sp,12
a0007508:	3f5d                	jal	a00074be <qcc74x_sys_version>
a000750a:	842a                	mv	s0,a0
a000750c:	e519                	bnez	a0,a000751a <qcc74x_show_component_version+0x34>
a000750e:	40f2                	lw	ra,28(sp)
a0007510:	4462                	lw	s0,24(sp)
a0007512:	44d2                	lw	s1,20(sp)
a0007514:	4942                	lw	s2,16(sp)
a0007516:	6105                	addi	sp,sp,32
a0007518:	8082                	ret
a000751a:	8dc48513          	addi	a0,s1,-1828 # a00088dc <__psram_limit+0xf7c088dc>
a000751e:	a4cfe0ef          	jal	ra,a000576a <puts>
a0007522:	8522                	mv	a0,s0
a0007524:	a46fe0ef          	jal	ra,a000576a <puts>
a0007528:	a2490513          	addi	a0,s2,-1500 # a0008a24 <__psram_limit+0xf7c08a24>
a000752c:	a3efe0ef          	jal	ra,a000576a <puts>
a0007530:	bfd9                	j	a0007506 <qcc74x_show_component_version+0x20>

a0007532 <qcc74x_show_chipinfo>:
a0007532:	7139                	addi	sp,sp,-64
a0007534:	0068                	addi	a0,sp,12
a0007536:	de06                	sw	ra,60(sp)
a0007538:	c2fba097          	auipc	ra,0xc2fba
a000753c:	be6080e7          	jalr	-1050(ra) # 62fc111e <qcc74x_efuse_get_device_info>
a0007540:	a0009537          	lui	a0,0xa0009
a0007544:	8e850513          	addi	a0,a0,-1816 # a00088e8 <__psram_limit+0xf7c088e8>
a0007548:	a56fe0ef          	jal	ra,a000579e <printf>
a000754c:	45d2                	lw	a1,20(sp)
a000754e:	a0009537          	lui	a0,0xa0009
a0007552:	90850513          	addi	a0,a0,-1784 # a0008908 <__psram_limit+0xf7c08908>
a0007556:	a48fe0ef          	jal	ra,a000579e <printf>
a000755a:	45e2                	lw	a1,24(sp)
a000755c:	a0009537          	lui	a0,0xa0009
a0007560:	92050513          	addi	a0,a0,-1760 # a0008920 <__psram_limit+0xf7c08920>
a0007564:	a3afe0ef          	jal	ra,a000579e <printf>
a0007568:	45f2                	lw	a1,28(sp)
a000756a:	a0009537          	lui	a0,0xa0009
a000756e:	93850513          	addi	a0,a0,-1736 # a0008938 <__psram_limit+0xf7c08938>
a0007572:	a2cfe0ef          	jal	ra,a000579e <printf>
a0007576:	00f14583          	lbu	a1,15(sp)
a000757a:	a0009537          	lui	a0,0xa0009
a000757e:	95050513          	addi	a0,a0,-1712 # a0008950 <__psram_limit+0xf7c08950>
a0007582:	a1cfe0ef          	jal	ra,a000579e <printf>
a0007586:	50f2                	lw	ra,60(sp)
a0007588:	6121                	addi	sp,sp,64
a000758a:	8082                	ret

a000758c <board_init>:
a000758c:	7119                	addi	sp,sp,-128
a000758e:	de86                	sw	ra,124(sp)
a0007590:	dca2                	sw	s0,120(sp)
a0007592:	daa6                	sw	s1,116(sp)
a0007594:	d8ca                	sw	s2,112(sp)
a0007596:	d6ce                	sw	s3,108(sp)
a0007598:	ca02                	sw	zero,20(sp)
a000759a:	c2fb9097          	auipc	ra,0xc2fb9
a000759e:	4a4080e7          	jalr	1188(ra) # 62fc0a3e <qcc74x_irq_save>
a00075a2:	892a                	mv	s2,a0
a00075a4:	c2fb9097          	auipc	ra,0xc2fb9
a00075a8:	38c080e7          	jalr	908(ra) # 62fc0930 <qcc74x_flash_init>
a00075ac:	89aa                	mv	s3,a0
a00075ae:	c2fba097          	auipc	ra,0xc2fba
a00075b2:	530080e7          	jalr	1328(ra) # 62fc1ade <system_clock_init>
a00075b6:	200007b7          	lui	a5,0x20000
a00075ba:	58078793          	addi	a5,a5,1408 # 20000580 <remain_wifi_ram+0x1ffe0580>
a00075be:	43d8                	lw	a4,4(a5)
a00075c0:	6685                	lui	a3,0x1
a00075c2:	6441                	lui	s0,0x10
a00075c4:	cc3a                	sw	a4,24(sp)
a00075c6:	4762                	lw	a4,24(sp)
a00075c8:	00200637          	lui	a2,0x200
a00075cc:	4589                	li	a1,2
a00075ce:	00476713          	ori	a4,a4,4
a00075d2:	cc3a                	sw	a4,24(sp)
a00075d4:	4762                	lw	a4,24(sp)
a00075d6:	4505                	li	a0,1
a00075d8:	a84004b7          	lui	s1,0xa8400
a00075dc:	c3d8                	sw	a4,4(a5)
a00075de:	43d8                	lw	a4,4(a5)
a00075e0:	00048493          	mv	s1,s1
a00075e4:	ce3a                	sw	a4,28(sp)
a00075e6:	4772                	lw	a4,28(sp)
a00075e8:	00876713          	ori	a4,a4,8
a00075ec:	ce3a                	sw	a4,28(sp)
a00075ee:	4772                	lw	a4,28(sp)
a00075f0:	01076713          	ori	a4,a4,16
a00075f4:	ce3a                	sw	a4,28(sp)
a00075f6:	4772                	lw	a4,28(sp)
a00075f8:	c3d8                	sw	a4,4(a5)
a00075fa:	43d8                	lw	a4,4(a5)
a00075fc:	d03a                	sw	a4,32(sp)
a00075fe:	5702                	lw	a4,32(sp)
a0007600:	8f55                	or	a4,a4,a3
a0007602:	d03a                	sw	a4,32(sp)
a0007604:	5702                	lw	a4,32(sp)
a0007606:	000206b7          	lui	a3,0x20
a000760a:	c3d8                	sw	a4,4(a5)
a000760c:	43d8                	lw	a4,4(a5)
a000760e:	d23a                	sw	a4,36(sp)
a0007610:	5712                	lw	a4,36(sp)
a0007612:	8f41                	or	a4,a4,s0
a0007614:	d23a                	sw	a4,36(sp)
a0007616:	5712                	lw	a4,36(sp)
a0007618:	30040413          	addi	s0,s0,768 # 10300 <wifi_ram_max_size+0x8300>
a000761c:	c3d8                	sw	a4,4(a5)
a000761e:	43d8                	lw	a4,4(a5)
a0007620:	d43a                	sw	a4,40(sp)
a0007622:	5722                	lw	a4,40(sp)
a0007624:	8f55                	or	a4,a4,a3
a0007626:	d43a                	sw	a4,40(sp)
a0007628:	5722                	lw	a4,40(sp)
a000762a:	000406b7          	lui	a3,0x40
a000762e:	c3d8                	sw	a4,4(a5)
a0007630:	43d8                	lw	a4,4(a5)
a0007632:	d63a                	sw	a4,44(sp)
a0007634:	5732                	lw	a4,44(sp)
a0007636:	8f55                	or	a4,a4,a3
a0007638:	d63a                	sw	a4,44(sp)
a000763a:	5732                	lw	a4,44(sp)
a000763c:	000806b7          	lui	a3,0x80
a0007640:	c3d8                	sw	a4,4(a5)
a0007642:	43d8                	lw	a4,4(a5)
a0007644:	d83a                	sw	a4,48(sp)
a0007646:	5742                	lw	a4,48(sp)
a0007648:	8f55                	or	a4,a4,a3
a000764a:	d83a                	sw	a4,48(sp)
a000764c:	5742                	lw	a4,48(sp)
a000764e:	001006b7          	lui	a3,0x100
a0007652:	c3d8                	sw	a4,4(a5)
a0007654:	43d8                	lw	a4,4(a5)
a0007656:	da3a                	sw	a4,52(sp)
a0007658:	5752                	lw	a4,52(sp)
a000765a:	8f55                	or	a4,a4,a3
a000765c:	da3a                	sw	a4,52(sp)
a000765e:	5752                	lw	a4,52(sp)
a0007660:	c3d8                	sw	a4,4(a5)
a0007662:	43d8                	lw	a4,4(a5)
a0007664:	dc3a                	sw	a4,56(sp)
a0007666:	56e2                	lw	a3,56(sp)
a0007668:	8ed1                	or	a3,a3,a2
a000766a:	dc36                	sw	a3,56(sp)
a000766c:	5762                	lw	a4,56(sp)
a000766e:	c3d8                	sw	a4,4(a5)
a0007670:	43d8                	lw	a4,4(a5)
a0007672:	de3a                	sw	a4,60(sp)
a0007674:	56f2                	lw	a3,60(sp)
a0007676:	00400737          	lui	a4,0x400
a000767a:	8ed9                	or	a3,a3,a4
a000767c:	de36                	sw	a3,60(sp)
a000767e:	5772                	lw	a4,60(sp)
a0007680:	c3d8                	sw	a4,4(a5)
a0007682:	43d8                	lw	a4,4(a5)
a0007684:	c0ba                	sw	a4,64(sp)
a0007686:	4686                	lw	a3,64(sp)
a0007688:	08000737          	lui	a4,0x8000
a000768c:	8ed9                	or	a3,a3,a4
a000768e:	c0b6                	sw	a3,64(sp)
a0007690:	4706                	lw	a4,64(sp)
a0007692:	c3d8                	sw	a4,4(a5)
a0007694:	43d8                	lw	a4,4(a5)
a0007696:	c2ba                	sw	a4,68(sp)
a0007698:	4696                	lw	a3,68(sp)
a000769a:	6709                	lui	a4,0x2
a000769c:	8ed9                	or	a3,a3,a4
a000769e:	c2b6                	sw	a3,68(sp)
a00076a0:	4716                	lw	a4,68(sp)
a00076a2:	c3d8                	sw	a4,4(a5)
a00076a4:	43d8                	lw	a4,4(a5)
a00076a6:	c4ba                	sw	a4,72(sp)
a00076a8:	46a6                	lw	a3,72(sp)
a00076aa:	04000737          	lui	a4,0x4000
a00076ae:	8ed9                	or	a3,a3,a4
a00076b0:	c4b6                	sw	a3,72(sp)
a00076b2:	4726                	lw	a4,72(sp)
a00076b4:	008006b7          	lui	a3,0x800
a00076b8:	c3d8                	sw	a4,4(a5)
a00076ba:	4798                	lw	a4,8(a5)
a00076bc:	c6ba                	sw	a4,76(sp)
a00076be:	4736                	lw	a4,76(sp)
a00076c0:	8f51                	or	a4,a4,a2
a00076c2:	c6ba                	sw	a4,76(sp)
a00076c4:	4736                	lw	a4,76(sp)
a00076c6:	4601                	li	a2,0
a00076c8:	c798                	sw	a4,8(a5)
a00076ca:	43d8                	lw	a4,4(a5)
a00076cc:	c8ba                	sw	a4,80(sp)
a00076ce:	4746                	lw	a4,80(sp)
a00076d0:	8f55                	or	a4,a4,a3
a00076d2:	c8ba                	sw	a4,80(sp)
a00076d4:	4746                	lw	a4,80(sp)
a00076d6:	c3d8                	sw	a4,4(a5)
a00076d8:	c2fb9097          	auipc	ra,0xc2fb9
a00076dc:	4b6080e7          	jalr	1206(ra) # 62fc0b8e <GLB_Set_UART_CLK>
a00076e0:	4601                	li	a2,0
a00076e2:	4581                	li	a1,0
a00076e4:	4505                	li	a0,1
a00076e6:	aaeff0ef          	jal	ra,a0006994 <GLB_Set_SPI_CLK>
a00076ea:	4601                	li	a2,0
a00076ec:	4581                	li	a1,0
a00076ee:	4505                	li	a0,1
a00076f0:	adaff0ef          	jal	ra,a00069ca <GLB_Set_DBI_CLK>
a00076f4:	4601                	li	a2,0
a00076f6:	4585                	li	a1,1
a00076f8:	4505                	li	a0,1
a00076fa:	a50ff0ef          	jal	ra,a000694a <GLB_Set_I2C_CLK>
a00076fe:	4605                	li	a2,1
a0007700:	4585                	li	a1,1
a0007702:	4505                	li	a0,1
a0007704:	9d0ff0ef          	jal	ra,a00068d4 <GLB_Set_ADC_CLK>
a0007708:	4505                	li	a0,1
a000770a:	c2fb9097          	auipc	ra,0xc2fb9
a000770e:	45c080e7          	jalr	1116(ra) # 62fc0b66 <GLB_Set_DIG_CLK_Sel>
a0007712:	04e00613          	li	a2,78
a0007716:	4585                	li	a1,1
a0007718:	4505                	li	a0,1
a000771a:	c2fb9097          	auipc	ra,0xc2fb9
a000771e:	442080e7          	jalr	1090(ra) # 62fc0b5c <GLB_Set_DIG_512K_CLK>
a0007722:	4501                	li	a0,0
a0007724:	c2fb9097          	auipc	ra,0xc2fb9
a0007728:	460080e7          	jalr	1120(ra) # 62fc0b84 <GLB_Set_PWM1_IO_Sel>
a000772c:	464d                	li	a2,19
a000772e:	4581                	li	a1,0
a0007730:	4505                	li	a0,1
a0007732:	9dcff0ef          	jal	ra,a000690e <GLB_Set_IR_CLK>
a0007736:	460d                	li	a2,3
a0007738:	4585                	li	a1,1
a000773a:	4505                	li	a0,1
a000773c:	ac4ff0ef          	jal	ra,a0006a00 <GLB_Set_CAM_CLK>
a0007740:	4505                	li	a0,1
a0007742:	c2fb9097          	auipc	ra,0xc2fb9
a0007746:	438080e7          	jalr	1080(ra) # 62fc0b7a <GLB_Set_PKA_CLK_Sel>
a000774a:	4505                	li	a0,1
a000774c:	c2fb9097          	auipc	ra,0xc2fb9
a0007750:	44c080e7          	jalr	1100(ra) # 62fc0b98 <GLB_Set_USB_CLK_From_WIFIPLL>
a0007754:	4501                	li	a0,0
a0007756:	c2fb9097          	auipc	ra,0xc2fb9
a000775a:	44c080e7          	jalr	1100(ra) # 62fc0ba2 <GLB_Swap_MCU_SPI_0_MOSI_With_MISO>
a000775e:	a8dfe0ef          	jal	ra,a00061ea <qcc74x_irq_initialize>
a0007762:	a0008537          	lui	a0,0xa0008
a0007766:	8dc50513          	addi	a0,a0,-1828 # a00078dc <__psram_limit+0xf7c078dc>
a000776a:	aa3fe0ef          	jal	ra,a000620c <qcc74x_device_get_by_name>
a000776e:	4609                	li	a2,2
a0007770:	45d5                	li	a1,21
a0007772:	c62a                	sw	a0,12(sp)
a0007774:	fa6fe0ef          	jal	ra,a0005f1a <qcc74x_gpio_uart_init>
a0007778:	4532                	lw	a0,12(sp)
a000777a:	460d                	li	a2,3
a000777c:	45d9                	li	a1,22
a000777e:	f9cfe0ef          	jal	ra,a0005f1a <qcc74x_gpio_uart_init>
a0007782:	001e87b7          	lui	a5,0x1e8
a0007786:	48078793          	addi	a5,a5,1152 # 1e8480 <remain_wifi_ram+0x1c8480>
a000778a:	a0008537          	lui	a0,0xa0008
a000778e:	cabe                	sw	a5,84(sp)
a0007790:	0a450513          	addi	a0,a0,164 # a00080a4 <__psram_limit+0xf7c080a4>
a0007794:	070707b7          	lui	a5,0x7070
a0007798:	cebe                	sw	a5,92(sp)
a000779a:	cca2                	sw	s0,88(sp)
a000779c:	a71fe0ef          	jal	ra,a000620c <qcc74x_device_get_by_name>
a00077a0:	62fc3437          	lui	s0,0x62fc3
a00077a4:	56040413          	addi	s0,s0,1376 # 62fc3560 <uart0>
a00077a8:	08cc                	addi	a1,sp,84
a00077aa:	c008                	sw	a0,0(s0)
a00077ac:	8c9fe0ef          	jal	ra,a0006074 <qcc74x_uart_init>
a00077b0:	4008                	lw	a0,0(s0)
a00077b2:	63030437          	lui	s0,0x63030
a00077b6:	00040413          	mv	s0,s0
a00077ba:	810fe0ef          	jal	ra,a00057ca <qcc74x_uart_set_console>
a00077be:	62fc3537          	lui	a0,0x62fc3
a00077c2:	56450593          	addi	a1,a0,1380 # 62fc3564 <__HeapBase>
a00077c6:	8c0d                	sub	s0,s0,a1
a00077c8:	85a2                	mv	a1,s0
a00077ca:	56450513          	addi	a0,a0,1380
a00077ce:	806fe0ef          	jal	ra,a00057d4 <kmem_init>
a00077d2:	3945                	jal	a0007482 <qcc74x_show_log>
a00077d4:	3b09                	jal	a00074e6 <qcc74x_show_component_version>
a00077d6:	ad9ff0ef          	jal	ra,a00072ae <board_psram_x8_init>
a00077da:	a8000537          	lui	a0,0xa8000
a00077de:	00050613          	mv	a2,a0
a00077e2:	8c91                	sub	s1,s1,a2
a00077e4:	85a6                	mv	a1,s1
a00077e6:	00050513          	mv	a0,a0
a00077ea:	ff9fd0ef          	jal	ra,a00057e2 <pmem_init>
a00077ee:	8029                	srli	s0,s0,0xa
a00077f0:	a0009537          	lui	a0,0xa0009
a00077f4:	00a4d613          	srli	a2,s1,0xa
a00077f8:	85a2                	mv	a1,s0
a00077fa:	97c50513          	addi	a0,a0,-1668 # a000897c <__psram_limit+0xf7c0897c>
a00077fe:	fa1fd0ef          	jal	ra,a000579e <printf>
a0007802:	3b05                	jal	a0007532 <qcc74x_show_chipinfo>
a0007804:	00098863          	beqz	s3,a0007814 <board_init+0x288>
a0007808:	a0009537          	lui	a0,0xa0009
a000780c:	9d450513          	addi	a0,a0,-1580 # a00089d4 <__psram_limit+0xf7c089d4>
a0007810:	f8ffd0ef          	jal	ra,a000579e <printf>
a0007814:	a0009537          	lui	a0,0xa0009
a0007818:	85a2                	mv	a1,s0
a000781a:	9ec50513          	addi	a0,a0,-1556 # a00089ec <__psram_limit+0xf7c089ec>
a000781e:	f81fd0ef          	jal	ra,a000579e <printf>
a0007822:	20000437          	lui	s0,0x20000
a0007826:	10040793          	addi	a5,s0,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a000782a:	4bec                	lw	a1,84(a5)
a000782c:	4fb0                	lw	a2,88(a5)
a000782e:	a0009537          	lui	a0,0xa0009
a0007832:	a2850513          	addi	a0,a0,-1496 # a0008a28 <__psram_limit+0xf7c08a28>
a0007836:	f69fd0ef          	jal	ra,a000579e <printf>
a000783a:	58040413          	addi	s0,s0,1408
a000783e:	404c                	lw	a1,4(s0)
a0007840:	4410                	lw	a2,8(s0)
a0007842:	a0009537          	lui	a0,0xa0009
a0007846:	a4850513          	addi	a0,a0,-1464 # a0008a48 <__psram_limit+0xf7c08a48>
a000784a:	f55fd0ef          	jal	ra,a000579e <printf>
a000784e:	0848                	addi	a0,sp,20
a0007850:	c2fb9097          	auipc	ra,0xc2fb9
a0007854:	6f4080e7          	jalr	1780(ra) # 62fc0f44 <HBN_Get_Xtal_Value>
a0007858:	200107b7          	lui	a5,0x20010
a000785c:	8847a783          	lw	a5,-1916(a5) # 2000f884 <remain_wifi_ram+0x1ffef884>
a0007860:	45d2                	lw	a1,20(sp)
a0007862:	0c37b78b          	extu	a5,a5,3,3
a0007866:	e7a9                	bnez	a5,a00078b0 <board_init+0x324>
a0007868:	a0009637          	lui	a2,0xa0009
a000786c:	97460613          	addi	a2,a2,-1676 # a0008974 <__psram_limit+0xf7c08974>
a0007870:	a0009537          	lui	a0,0xa0009
a0007874:	a6850513          	addi	a0,a0,-1432 # a0008a68 <__psram_limit+0xf7c08a68>
a0007878:	f27fd0ef          	jal	ra,a000579e <printf>
a000787c:	938fe0ef          	jal	ra,a00059b4 <log_start>
a0007880:	854a                	mv	a0,s2
a0007882:	c2fb9097          	auipc	ra,0xc2fb9
a0007886:	1c4080e7          	jalr	452(ra) # 62fc0a46 <qcc74x_irq_restore>
a000788a:	a0009537          	lui	a0,0xa0009
a000788e:	a7850513          	addi	a0,a0,-1416 # a0008a78 <__psram_limit+0xf7c08a78>
a0007892:	f0dfd0ef          	jal	ra,a000579e <printf>
a0007896:	a0009537          	lui	a0,0xa0009
a000789a:	a8c50513          	addi	a0,a0,-1396 # a0008a8c <__psram_limit+0xf7c08a8c>
a000789e:	f01fd0ef          	jal	ra,a000579e <printf>
a00078a2:	50f6                	lw	ra,124(sp)
a00078a4:	5466                	lw	s0,120(sp)
a00078a6:	54d6                	lw	s1,116(sp)
a00078a8:	5946                	lw	s2,112(sp)
a00078aa:	59b6                	lw	s3,108(sp)
a00078ac:	6109                	addi	sp,sp,128
a00078ae:	8082                	ret
a00078b0:	a0009637          	lui	a2,0xa0009
a00078b4:	96860613          	addi	a2,a2,-1688 # a0008968 <__psram_limit+0xf7c08968>
a00078b8:	bf65                	j	a0007870 <board_init+0x2e4>
	...

a00078bc <strlen>:
a00078bc:	87aa                	mv	a5,a0
a00078be:	0007c703          	lbu	a4,0(a5)
a00078c2:	0785                	addi	a5,a5,1
a00078c4:	ff6d                	bnez	a4,a00078be <strlen+0x2>
a00078c6:	40a78533          	sub	a0,a5,a0
a00078ca:	157d                	addi	a0,a0,-1
a00078cc:	8082                	ret
	...

a00078d0 <version_sdk>:
a00078d0:	87a4 a000                                   ....

a00078d4 <sw_image>:
a00078d4:	875c a000                                   \...

a00078d8 <compile_time>:
a00078d8:	8780 a000                                   ....

a00078dc <__usbh_class_info_end__>:
a00078dc:	6f697067          	0x6f697067
a00078e0:	0000                	unimp
a00078e2:	0000                	unimp
a00078e4:	6f697067          	0x6f697067
a00078e8:	6f20                	flw	fs0,88(a4)
a00078ea:	7475                	lui	s0,0xffffd
a00078ec:	7570                	flw	fa2,108(a0)
a00078ee:	0d74                	addi	a3,sp,668
a00078f0:	000a                	c.slli	zero,0x2
a00078f2:	0000                	unimp
a00078f4:	6e66                	flw	ft8,88(sp)
a00078f6:	0069                	c.nop	26
a00078f8:	6e66                	flw	ft8,88(sp)
a00078fa:	2b69                	jal	a0007e94 <crc32Tab+0x22c>
a00078fc:	0000                	unimp
a00078fe:	0000                	unimp
a0007900:	616e                	flw	ft2,216(sp)
a0007902:	006e                	c.slli	zero,0x1b
a0007904:	6e66                	flw	ft8,88(sp)
a0007906:	2d69                	jal	a0007fa0 <crc32Tab+0x338>
a0007908:	0000                	unimp
a000790a:	0000                	unimp
a000790c:	6c29                	lui	s8,0xa
a000790e:	756c                	flw	fa1,108(a0)
a0007910:	286e                	fld	fa6,216(sp)
a0007912:	0000                	unimp
a0007914:	6c29                	lui	s8,0xa
a0007916:	6e69                	lui	t3,0x1a
a0007918:	0028                	addi	a0,sp,8
	...
a0007926:	3fe0                	fld	fs0,248(a5)
a0007928:	509f79fb          	0x509f79fb
a000792c:	3fd34413          	xori	s0,t1,1021
a0007930:	8b60c8b3          	0x8b60c8b3
a0007934:	8a28                	sb	a0,2(a2)
a0007936:	3fc6                	fld	ft11,112(sp)
a0007938:	0000                	unimp
a000793a:	0000                	unimp
a000793c:	0000                	unimp
a000793e:	3ff8                	fld	fa4,248(a5)
a0007940:	4361                	li	t1,24
a0007942:	87a7636f          	jal	t1,9ff7d9bc <__HeapLimit+0x3cf4d9bc>
a0007946:	3fd2                	fld	ft11,304(sp)
a0007948:	a371                	j	a0007ed4 <crc32Tab+0x26c>
a000794a:	0979                	addi	s2,s2,30
a000794c:	400a934f          	fnmadd.s	ft6,fs5,ft0,fs0,rtz
a0007950:	5516                	lw	a0,100(sp)
a0007952:	bbb5                	j	a00076ce <board_init+0x142>
a0007954:	6bb1                	lui	s7,0xc
a0007956:	4002                	0x4002
a0007958:	fefa39ef          	jal	s3,9ffab946 <__HeapLimit+0x3cf7b946>
a000795c:	2e42                	fld	ft8,16(sp)
a000795e:	3fe6                	fld	ft11,120(sp)
a0007960:	0000                	unimp
a0007962:	0000                	unimp
a0007964:	0000                	unimp
a0007966:	402c                	lw	a1,64(s0)
a0007968:	0000                	unimp
a000796a:	0000                	unimp
a000796c:	0000                	unimp
a000796e:	4024                	lw	s1,64(s0)
a0007970:	0000                	unimp
a0007972:	0000                	unimp
a0007974:	0000                	unimp
a0007976:	4018                	lw	a4,0(s0)
a0007978:	0000                	unimp
a000797a:	0000                	unimp
a000797c:	0000                	unimp
a000797e:	4000                	lw	s0,0(s0)
a0007980:	0000                	unimp
a0007982:	0000                	unimp
a0007984:	0000                	unimp
a0007986:	3ff0                	fld	fa2,248(a5)
a0007988:	ffffffff          	0xffffffff
a000798c:	ffefffff          	0xffefffff
a0007990:	ffffffff          	0xffffffff
a0007994:	7fefffff          	0x7fefffff
a0007998:	0000                	unimp
a000799a:	0000                	unimp
a000799c:	cd65                	beqz	a0,a0007a94 <powers_of_10+0xec>
a000799e:	41cd                	li	gp,19
a00079a0:	0000                	unimp
a00079a2:	0000                	unimp
a00079a4:	cd65                	beqz	a0,a0007a9c <powers_of_10+0xf4>
a00079a6:	c1cd                	beqz	a1,a0007a48 <powers_of_10+0xa0>

a00079a8 <powers_of_10>:
a00079a8:	0000 0000 0000 3ff0 0000 0000 0000 4024     .......?......$@
a00079b8:	0000 0000 0000 4059 0000 0000 4000 408f     ......Y@.....@.@
a00079c8:	0000 0000 8800 40c3 0000 0000 6a00 40f8     .......@.....j.@
a00079d8:	0000 0000 8480 412e 0000 0000 12d0 4163     .......A......cA
a00079e8:	0000 0000 d784 4197 0000 0000 cd65 41cd     .......A....e..A
a00079f8:	0000 2000 a05f 4202 0000 e800 4876 4237     ... _..B....vH7B
a0007a08:	0000 a200 1a94 426d 0000 e540 309c 42a2     ......mB..@..0.B
a0007a18:	0000 1e90 bcc4 42d6 0000 2634 6bf5 430c     .......B..4&.k.C
a0007a28:	8000 37e0 c379 4341 a000 85d8 3457 4376     ...7y.AC....W4vC
a0007a38:	6c74 6673 615f 6464 705f 6f6f 3a6c 4d20     tlsf_add_pool: M
a0007a48:	6d65 726f 2079 756d 7473 6220 2065 6c61     emory must be al
a0007a58:	6769 656e 2064 7962 2520 2075 7962 6574     igned by %u byte
a0007a68:	2e73 000a 6c74 6673 615f 6464 705f 6f6f     s...tlsf_add_poo
a0007a78:	3a6c 4d20 6d65 726f 2079 6973 657a 6d20     l: Memory size m
a0007a88:	7375 2074 6562 6220 7465 6577 6e65 2520     ust be between %
a0007a98:	2075 6e61 2064 7525 6220 7479 7365 0a2e     u and %u bytes..
a0007aa8:	0000 0000 6c74 6673 635f 6572 7461 3a65     ....tlsf_create:
a0007ab8:	4d20 6d65 726f 2079 756d 7473 6220 2065      Memory must be 
a0007ac8:	6c61 6769 656e 2064 6f74 2520 2075 7962     aligned to %u by
a0007ad8:	6574 2e73 000a 0000 0a0d 6863 6365 206b     tes.......check 
a0007ae8:	7562 6c69 5f64 6469 7720 7469 2068 7260     build_id with `r
a0007af8:	7369 7663 3436 752d 6b6e 6f6e 6e77 652d     iscv64-unknown-e
a0007b08:	666c 722d 6165 6564 666c 2d20 206e 2e2a     lf-readelf -n *.
a0007b18:	6c65 6066 6f20 7475 7570 2074 0a0d 0000     elf` output ....
a0007b28:	7562 6c69 5f64 6469 203a 3025 7832 3025     build_id: %02x%0
a0007b38:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0007b48:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0007b58:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0007b68:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0007b78:	7832 3025 7832 3025 7832 0a0d 0000 0000     2x%02x%02x......
a0007b88:	7270 6465 6665 6e69 6465 0000 0a0d 2b2d     predefined....-+
a0007b98:	2b2d 2b2d 202d 4351 3743 7834 4320 524f     -+-+- QCC74x COR
a0007ba8:	4445 4d55 2050 4e45 2044 2d2b 2d2b 2d2b     EDUMP END +-+-+-
a0007bb8:	0d2b 000a 0a0d 2b2d 2b2d 2b2d 202d 4351     +.....-+-+-+- QC
a0007bc8:	3743 7834 4320 524f 4445 4d55 2050 3076     C74x COREDUMP v0
a0007bd8:	302e 312e 2b20 2b2d 2b2d 2b2d 0a0d 0000     .0.1 +-+-+-+....
a0007be8:	0a0d 2d2d 2d2d 2d2d 4420 5441 2041 4542     ..------ DATA BE
a0007bf8:	4947 204e 0000 0000 2d20 2d2d 2d2d 0d2d     GIN .... ------.
a0007c08:	000a 0000 0a0d 2d2d 2d2d 2d2d 4520 444e     ......------ END
a0007c18:	0020 0000                                    ...

a0007c1c <g_encodingTable>:
a0007c1c:	4241 4443 4645 4847 4a49 4c4b 4e4d 504f     ABCDEFGHIJKLMNOP
a0007c2c:	5251 5453 5655 5857 5a59 6261 6463 6665     QRSTUVWXYZabcdef
a0007c3c:	6867 6a69 6c6b 6e6d 706f 7271 7473 7675     ghijklmnopqrstuv
a0007c4c:	7877 7a79 3130 3332 3534 3736 3938 2f2b     wxyz0123456789+/

a0007c5c <g_modTable>:
a0007c5c:	0000 0000 0002 0000 0001 0000               ............

a0007c68 <crc32Tab>:
a0007c68:	0000 0000 3096 7707 612c ee0e 51ba 9909     .....0.w,a...Q..
a0007c78:	c419 076d f48f 706a a535 e963 95a3 9e64     ..m...jp5.c...d.
a0007c88:	8832 0edb b8a4 79dc e91e e0d5 d988 97d2     2......y........
a0007c98:	4c2b 09b6 7cbd 7eb1 2d07 e7b8 1d91 90bf     +L...|.~.-......
a0007ca8:	1064 1db7 20f2 6ab0 7148 f3b9 41de 84be     d.... .jHq...A..
a0007cb8:	d47d 1ada e4eb 6ddd b551 f4d4 85c7 83d3     }......mQ.......
a0007cc8:	9856 136c a8c0 646b f97a fd62 c9ec 8a65     V.l...kdz.b...e.
a0007cd8:	5c4f 1401 6cd9 6306 3d63 fa0f 0df5 8d08     O\...l.cc=......
a0007ce8:	20c8 3b6e 105e 4c69 41e4 d560 7172 a267     . n;^.iL.A`.rqg.
a0007cf8:	e4d1 3c03 d447 4b04 85fd d20d b56b a50a     ...<G..K....k...
a0007d08:	a8fa 35b5 986c 42b2 c9d6 dbbb f940 acbc     ...5l..B....@...
a0007d18:	6ce3 32d8 5c75 45df 0dcf dcd6 3d59 abd1     .l.2u\.E....Y=..
a0007d28:	30ac 26d9 003a 51de 5180 c8d7 6116 bfd0     .0.&:..Q.Q...a..
a0007d38:	f4b5 21b4 c423 56b3 9599 cfba a50f b8bd     ...!#..V........
a0007d48:	b89e 2802 8808 5f05 d9b2 c60c e924 b10b     ...(..._....$...
a0007d58:	7c87 2f6f 4c11 5868 1dab c161 2d3d b666     .|o/.LhX..a.=-f.
a0007d68:	4190 76dc 7106 01db 20bc 98d2 102a efd5     .A.v.q... ..*...
a0007d78:	8589 71b1 b51f 06b6 e4a5 9fbf d433 e8b8     ...q........3...
a0007d88:	c9a2 7807 f934 0f00 a88e 9609 9818 e10e     ...x4...........
a0007d98:	0dbb 7f6a 3d2d 086d 6c97 9164 5c01 e663     ..j.-=m..ld..\c.
a0007da8:	51f4 6b6b 6162 1c6c 30d8 8565 004e f262     .Qkkbal..0e.N.b.
a0007db8:	95ed 6c06 a57b 1b01 f4c1 8208 c457 f50f     ...l{.......W...
a0007dc8:	d9c6 65b0 e950 12b7 b8ea 8bbe 887c fcb9     ...eP.......|...
a0007dd8:	1ddf 62dd 2d49 15da 7cf3 8cd3 4c65 fbd4     ...bI-...|..eL..
a0007de8:	6158 4db2 51ce 3ab5 0074 a3bc 30e2 d4bb     Xa.M.Q.:t....0..
a0007df8:	a541 4adf 95d7 3dd8 c46d a4d1 f4fb d3d6     A..J...=m.......
a0007e08:	e96a 4369 d9fc 346e 8846 ad67 b8d0 da60     j.iC..n4F.g...`.
a0007e18:	2d73 4404 1de5 3303 4c5f aa0a 7cc9 dd0d     s-.D...3_L...|..
a0007e28:	713c 5005 41aa 2702 1010 be0b 2086 c90c     <q.P.A.'..... ..
a0007e38:	b525 5768 85b3 206f d409 b966 e49f ce61     %.hW..o ..f...a.
a0007e48:	f90e 5ede c998 29d9 9822 b0d0 a8b4 c7d7     ...^...)".......
a0007e58:	3d17 59b3 0d81 2eb4 5c3b b7bd 6cad c0ba     .=.Y....;\...l..
a0007e68:	8320 edb8 b3b6 9abf e20c 03b6 d29a 74b1      ..............t
a0007e78:	4739 ead5 77af 9dd2 2615 04db 1683 73dc     9G...w...&.....s
a0007e88:	0b12 e363 3b84 9464 6a3e 0d6d 5aa8 7a6a     ..c..;d.>jm..Zjz
a0007e98:	cf0b e40e ff9d 9309 ae27 0a00 9eb1 7d07     ........'......}
a0007ea8:	9344 f00f a3d2 8708 f268 1e01 c2fe 6906     D.......h......i
a0007eb8:	575d f762 67cb 8065 3671 196c 06e7 6e6b     ]Wb..ge.q6l...kn
a0007ec8:	1b76 fed4 2be0 89d3 7a5a 10da 4acc 67dd     v....+..Zz...J.g
a0007ed8:	df6f f9b9 eff9 8ebe be43 17b7 8ed5 60b0     o.......C......`
a0007ee8:	a3e8 d6d6 937e a1d1 c2c4 38d8 f252 4fdf     ....~......8R..O
a0007ef8:	67f1 d1bb 5767 a6bc 06dd 3fb5 364b 48b2     .g..gW.....?K6.H
a0007f08:	2bda d80d 1b4c af0a 4af6 3603 7a60 4104     .+..L....J.6`z.A
a0007f18:	efc3 df60 df55 a867 8eef 316e be79 4669     ..`.U.g...n1y.iF
a0007f28:	b38c cb61 831a bc66 d2a0 256f e236 5268     ..a...f...o%6.hR
a0007f38:	7795 cc0c 4703 bb0b 16b9 2202 262f 5505     .w...G....."/&.U
a0007f48:	3bbe c5ba 0b28 b2bd 5a92 2bb4 6a04 5cb3     .;..(....Z.+.j.\
a0007f58:	ffa7 c2d7 cf31 b5d0 9e8b 2cd9 ae1d 5bde     ....1......,...[
a0007f68:	c2b0 9b64 f226 ec63 a39c 756a 930a 026d     ..d.&.c...ju..m.
a0007f78:	06a9 9c09 363f eb0e 6785 7207 5713 0500     ....?6...g.r.W..
a0007f88:	4a82 95bf 7a14 e2b8 2bae 7bb1 1b38 0cb6     .J...z...+.{8...
a0007f98:	8e9b 92d2 be0d e5d5 efb7 7cdc df21 0bdb     ...........|!...
a0007fa8:	d2d4 86d3 e242 f1d4 b3f8 68dd 836e 1fda     ....B......hn...
a0007fb8:	16cd 81be 265b f6b9 77e1 6fb0 4777 18b7     ....[&...w.owG..
a0007fc8:	5ae6 8808 6a70 ff0f 3bca 6606 0b5c 1101     .Z..pj...;.f\...
a0007fd8:	9eff 8f65 ae69 f862 ffd3 616b cf45 166c     ..e.i.b...kaE.l.
a0007fe8:	e278 a00a d2ee d70d 8354 4e04 b3c2 3903     x.......T..N...9
a0007ff8:	2661 a767 16f7 d060 474d 4969 77db 3e6e     a&g...`.MGiI.wn>
a0008008:	6a4a aed1 5adc d9d6 0b66 40df 3bf0 37d8     Jj...Z..f..@.;.7
a0008018:	ae53 a9bc 9ec5 debb cf7f 47b2 ffe9 30b5     S..........G...0
a0008028:	f21c bdbd c28a caba 9330 53b3 a3a6 24b4     ........0..S...$
a0008038:	3605 bad0 0693 cdd7 5729 54de 67bf 23d9     .6......)W.T.g.#
a0008048:	7a2e b366 4ab8 c461 1b02 5d68 2b94 2a6f     .zf..Ja...h].+o*
a0008058:	be37 b40b 8ea1 c30c df1b 5a05 ef8d 2d02     7..........Z...-

a0008068 <hex_asc_upper>:
a0008068:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
a0008078:	0000 0000 7269 2071 253a 2064 6e75 6572     ....irq :%d unre
a0008088:	6967 7473 7265 6465 0a0d 0000 6461 0063     gistered....adc.
a0008098:	6164 0063 6665 635f 7274 006c 6175 7472     dac.ef_ctrl.uart
a00080a8:	0030 0000 6175 7472 0031 0000 7073 3069     0...uart1...spi0
a00080b8:	0000 0000 7770 5f6d 3276 305f 0000 0000     ....pwm_v2_0....
a00080c8:	6d64 3061 635f 3068 0000 0000 6d64 3061     dma0_ch0....dma0
a00080d8:	635f 3168 0000 0000 6d64 3061 635f 3268     _ch1....dma0_ch2
a00080e8:	0000 0000 6d64 3061 635f 3368 0000 0000     ....dma0_ch3....
a00080f8:	3269 3063 0000 0000 3269 3163 0000 0000     i2c0....i2c1....
a0008108:	3269 3073 0000 0000 6974 656d 3072 0000     i2s0....timer0..
a0008118:	6974 656d 3172 0000 7472 0063 6561 0073     timer1..rtc.aes.
a0008128:	6873 0061 7274 676e 0000 0000 6b70 0061     sha.trng....pka.
a0008138:	6d65 6361 0030 0000 6177 6374 6468 676f     emac0...watchdog
a0008148:	0000 0000 6b63 0073 6a6d 6570 0067 0000     ....cks.mjpeg...
a0008158:	7269 7872 0000 0000 6163 306d 0000 0000     irrx....cam0....
a0008168:	6163 316d 0000 0000 7561 6461 0063 0000     cam1....auadc...
a0008178:	7561 6164 0063 0000 6473 6f69 0032 0000     audac...sdio2...
a0008188:	6473 0068 6264 0069 6c70 6d66 645f 616d     sdh.dbi.plfm_dma
a0008198:	635f 3068 0000 0000 6c70 6d66 645f 616d     _ch0....plfm_dma
a00081a8:	635f 3168 0000 0000 6c70 6d66 645f 616d     _ch1....plfm_dma
a00081b8:	635f 3268 0000 0000 6c70 6d66 645f 616d     _ch2....plfm_dma
a00081c8:	635f 3368 0000 0000 6c70 6d66 645f 616d     _ch3....plfm_dma
a00081d8:	635f 3468 0000 0000 6f77 0000 7375 5f62     _ch4....wo..usb_
a00081e8:	3276 0000 6e49 7473 7572 7463 6f69 206e     v2..Instruction 
a00081f8:	6461 7264 7365 2073 696d 6173 696c 6e67     address misalign
a0008208:	6465 0000 6e49 7473 7572 7463 6f69 206e     ed..Instruction 
a0008218:	6361 6563 7373 6620 7561 746c 0000 0000     access fault....
a0008228:	6c49 656c 6167 206c 6e69 7473 7572 7463     Illegal instruct
a0008238:	6f69 006e 7242 6165 706b 696f 746e 0000     ion.Breakpoint..
a0008248:	6f4c 6461 6120 6464 6572 7373 6d20 7369     Load address mis
a0008258:	6c61 6769 656e 0064 6f4c 6461 6120 6363     aligned.Load acc
a0008268:	7365 2073 6166 6c75 0074 0000 7453 726f     ess fault...Stor
a0008278:	2f65 4d41 204f 6461 7264 7365 2073 696d     e/AMO address mi
a0008288:	6173 696c 6e67 6465 0000 0000 7453 726f     saligned....Stor
a0008298:	2f65 4d41 204f 6361 6563 7373 6620 7561     e/AMO access fau
a00082a8:	746c 0000 6e45 6976 6f72 6d6e 6e65 2074     lt..Environment 
a00082b8:	6163 6c6c 6620 6f72 206d 2d55 6f6d 6564     call from U-mode
a00082c8:	0000 0000 6e45 6976 6f72 6d6e 6e65 2074     ....Environment 
a00082d8:	6163 6c6c 6620 6f72 206d 2d53 6f6d 6564     call from S-mode
a00082e8:	0000 0000 5352 4456 0000 0000 6e45 6976     ....RSVD....Envi
a00082f8:	6f72 6d6e 6e65 2074 6163 6c6c 6620 6f72     ronment call fro
a0008308:	206d 2d4d 6f6d 6564 0000 0000 6e49 7473     m M-mode....Inst
a0008318:	7572 7463 6f69 206e 6170 6567 6620 7561     ruction page fau
a0008328:	746c 0000 6f4c 6461 7020 6761 2065 6166     lt..Load page fa
a0008338:	6c75 0074 7453 726f 2f65 4d41 204f 6170     ult.Store/AMO pa
a0008348:	6567 6620 7561 746c 0000 0000 7865 6563     ge fault....exce
a0008358:	7470 6f69 5f6e 6e65 7274 0d79 000a 0000     ption_entry.....
a0008368:	636d 7561 6573 253d 3830 0d78 000a 0000     mcause=%08x.....
a0008378:	656d 6370 253a 3830 0d78 000a 746d 6176     mepc:%08x...mtva
a0008388:	3a6c 3025 7838 0a0d 0000 0000 7325 0a0d     l:%08x......%s..
a0008398:	0000 0000 81ec a000 820c a000 8228 a000     ............(...
a00083a8:	823c a000 8248 a000 8260 a000 8274 a000     <...H...`...t...
a00083b8:	8294 a000 82ac a000 82cc a000 82ec a000     ................
a00083c8:	82f4 a000 8314 a000 832c a000 82ec a000     ........,.......
a00083d8:	833c a000                                   <...

a00083dc <CSWTCH.86>:
a00083dc:	0000 0000 3600 016e 4800 01e8 f000 0249     .....6n..H....I.
a00083ec:	5a00 0262 ba80 018c 4800 01e8 4651 344e     .Zb......H..QFN4
a00083fc:	0030 0000 4651 344e 4d30 0000 4651 354e     0...QFN40M..QFN5
a000840c:	0036 0000 5245 4f52 0052 0000 4f4e 0000     6...ERROR...NO..
a000841c:	4d32 0042 4d34 0042 4d38 0042 4257 345f     2MB.4MB.8MB.WB_4
a000842c:	424d 0000 4257 385f 424d 0000 4257 315f     MB..WB_8MB..WB_1
a000843c:	4d36 0042 5353 0000 5425 2b54 0000 0000     6MB.SS..%TT+....
a000844c:	5325 0053 5454 0000 4625 0046 4646 0000     %SS.TT..%FF.FF..
a000845c:	646c 316f 0035 0000 7069 6174 0074 0000     ldo15...iptat...
a000846c:	6369 0078 6364 6364 745f 6972 006d 0000     icx.dcdc_trim...
a000847c:	646c 316f 5f38 6573 006c 0000 646c 316f     ldo18_sel...ldo1
a000848c:	5f38 7274 6d69 0000 646c 336f 5f33 7274     8_trim..ldo33_tr
a000849c:	6d69 0000 646c 316f 5f31 6974 6d72 0000     im..ldo11_tirm..
a00084ac:	6372 3233 006d 0000 7068 705f 666f 7366     rc32m...hp_poffs
a00084bc:	7465 0030 7068 705f 666f 7366 7465 0031     et0.hp_poffset1.
a00084cc:	7068 705f 666f 7366 7465 0032 706c 705f     hp_poffset2.lp_p
a00084dc:	666f 7366 7465 0030 706c 705f 666f 7366     offset0.lp_poffs
a00084ec:	7465 0031 706c 705f 666f 7366 7465 0032     et1.lp_poffset2.
a00084fc:	7a62 705f 666f 7366 7465 0030 7a62 705f     bz_poffset0.bz_p
a000850c:	666f 7366 7465 0031 7a62 705f 666f 7366     offset1.bz_poffs
a000851c:	7465 0032 6d74 5f70 706d 0030 6d74 5f70     et2.tmp_mp0.tmp_
a000852c:	706d 0031 6d74 5f70 706d 0032 7561 6461     mp1.tmp_mp2.auad
a000853c:	5f63 6167 6e69 0000 7561 6461 5f63 666f     c_gain..auadc_of
a000854c:	7366 7465 0000 0000 7370 6172 5f6d 7274     fset....psram_tr
a000855c:	6d69 0000 6372 3233 006b 0000 7478 6c61     im..rc32k...xtal
a000856c:	0030 0000 7478 6c61 0031 0000 7478 6c61     0...xtal1...xtal
a000857c:	0032 0000 6364 6364 645f 7369 0000 0000     2...dcdc_dis....
a000858c:	6364 6364 765f 756f 0074 0000 646c 316f     dcdc_vout...ldo1
a000859c:	5f38 7962 6170 7373 0000 0000 7375 3262     8_bypass....usb2
a00085ac:	0030 0000 7067 6461 5f63 6167 6e69 0000     0...gpadc_gain..
a00085bc:	7374 6e65 0000 0000                         tsen....

a00085c4 <trim_list>:
a00085c4:	845c a000 035f 035e 035b 0003 8464 a000     \..._.^.[...d...
a00085d4:	03bf 03be 0356 0005 846c a000 03bd 03bc     ....V...l.......
a00085e4:	03b6 0006 8470 a000 03df 03de 03da 0004     ....p...........
a00085f4:	847c a000 03d9 03d8 03d4 0004 8488 a000     |...............
a0008604:	03d3 03d2 03ce 0004 8494 a000 03cd 03cc     ................
a0008614:	03c8 0004 84a0 a000 03c7 03c6 03c2 0004     ................
a0008624:	84ac a000 03c1 03c0 03e4 0008 84b4 a000     ................
a0008634:	067a 060f 0600 000f 84c0 a000 067b 061f     z...........{...
a0008644:	0610 000f 84cc a000 067c 062f 0620 000f     ........|./. ...
a0008654:	84d8 a000 067d 063f 0630 000f 84e4 a000     ....}.?.0.......
a0008664:	067e 064f 0640 000f 84f0 a000 067f 065f     ~.O.@........._.
a0008674:	0650 000f 84fc a000 069a 0679 0660 0019     P.........y.`...
a0008684:	8508 a000 069b 0699 0680 0019 8514 a000     ................
a0008694:	069c 06b9 06a0 0019 8520 a000 06c9 06c8     ........ .......
a00086a4:	06c0 0008 8528 a000 06d3 06d2 06ca 0008     ....(...........
a00086b4:	8530 a000 06dd 06dc 06d4 0008 8538 a000     0...........8...
a00086c4:	06f9 06f8 06e0 0018 8544 a000 0719 0718     ........D.......
a00086d4:	0700 0018 8554 a000 074c 074b 0740 000b     ....T...L.K.@...
a00086e4:	8560 a000 0773 0772 0768 000a 8568 a000     `...s.r.h...h...
a00086f4:	0767 0766 0760 0006 8570 a000 079f 079e     g.f.`...p.......
a0008704:	07ba 0006 8578 a000 079d 079c 07b4 0006     ....x...........
a0008714:	85b0 a000 079b 079a 078e 000c 85bc a000     ................
a0008724:	078d 078c 0780 000c 8580 a000 07b3 07b2     ................
a0008734:	07b1 0001 858c a000 07b0 07af 07aa 0005     ................
a0008744:	8598 a000 07a9 07a8 07a4 0001 85a8 a000     ................
a0008754:	07cf 07ce 07c8 0006 5753 6920 616d 6567     ........SW image
a0008764:	673a 6970 5f6f 6e69 7570 5f74 756f 7074     :gpio_input_outp
a0008774:	7475 715f 6363 3437 6478 006b 6f63 706d     ut_qcc74xdk.comp
a0008784:	6c69 5f65 6974 656d 4a3a 6e61 3220 2036     ile_time:Jan 26 
a0008794:	3032 3632 3120 3a32 3230 303a 0037 0000     2026 12:02:07...
a00087a4:	6f63 706d 6e6f 6e65 5f74 6576 7372 6f69     component_versio
a00087b4:	5f6e 6473 5f6b 2e32 2e30 3739 0000 0000     n_sdk_2.0.97....
a00087c4:	6854 7369 6320 6968 2070 6168 2073 6f6e     This chip has no
a00087d4:	7020 7273 6d61 202c 6c70 6165 6573 6420      psram, please d
a00087e4:	7369 6261 656c 4320 4e4f 4946 5f47 5350     isable CONFIG_PS
a00087f4:	4152 0d4d 000a 0000 7370 6172 206d 6c61     RAM.....psram al
a0008804:	6572 6461 2079 6e69 7469 0a0d 0000 0000     ready init......
a0008814:	7370 6172 006d 0000 0a0d 5350 4152 204d     psram.....PSRAM 
a0008824:	7274 6d69 6920 2073 6f63 7272 7075 6574     trim is corrupte
a0008834:	0d64 000a 0a0d 2121 2121 2121 5350 4152     d.....!!!!!!PSRA
a0008844:	204d 4e49 5449 5720 5449 4f48 5455 5020     M INIT WITHOUT P
a0008854:	5253 4d41 5420 4952 214d 2121 2121 2121     SRAM TRIM!!!!!!!
a0008864:	2121 2121 2121 2121 2121 0d21 000a 0000     !!!!!!!!!!!.....
a0008874:	8000 c000 e000 f000 f800 fc00 fe00 ff00     ................
a0008884:	ff80 ffc0 ffe0 fff0 fff8 fffc fffe ffff     ................
a0008894:	614a 206e 3632 3220 3230 0036 3231 303a     Jan 26 2026.12:0
a00088a4:	3a32 3830 0000 0000 7542 6c69 3a64 7325     2:08....Build:%s
a00088b4:	252c 0d73 000a 0000 6556 7372 6f69 206e     ,%s.....Version 
a00088c4:	666f 7520 6573 2064 6f63 706d 6e6f 6e65     of used componen
a00088d4:	7374 0d3a 000a 0000 5609 7265 6973 6e6f     ts:......Version
a00088e4:	203a 0000 3d3d 3d3d 3d3d 3d3d 6320 6968     : ..======== chi
a00088f4:	2070 6e69 6f66 3d20 3d3d 3d3d 3d3d 0d3d     p info ========.
a0008904:	000a 0000 6170 6b63 6761 2065 2020 2020     ....package     
a0008914:	2020 2020 2520 0d73 000a 0000 6c66 7361          %s.....flas
a0008924:	5f68 6e69 6f66 2020 2020 2020 2520 0d73     h_info       %s.
a0008934:	000a 0000 7370 6172 5f6d 6e69 6f66 2020     ....psram_info  
a0008944:	2020 2020 2520 0d73 000a 0000 6576 7372          %s.....vers
a0008954:	6f69 206e 2020 2020 2020 2020 4120 6425     ion          A%d
a0008964:	0a0d 0000 736f 6963 6c6c 7461 726f 0000     ....oscillator..
a0008974:	7263 7379 6174 006c 7964 616e 696d 2063     crystal.dynamic 
a0008984:	656d 6f6d 7972 6920 696e 2074 7573 6363     memory init succ
a0008994:	7365 2c73 6f20 7263 6d61 6820 6165 2070     ess, ocram heap 
a00089a4:	6973 657a 3d20 2520 2064 624b 7479 2c65     size = %d Kbyte,
a00089b4:	7020 7273 6d61 6820 6165 2070 6973 657a      psram heap size
a00089c4:	3d20 2520 2064 624b 7479 0d65 000a 0000      = %d Kbyte.....
a00089d4:	6c66 7361 2068 6e69 7469 6620 6961 216c     flash init fail!
a00089e4:	2121 0a0d 0000 0000 7964 616e 696d 2063     !!......dynamic 
a00089f4:	656d 6f6d 7972 6920 696e 2074 7573 6363     memory init succ
a0008a04:	7365 2c73 6f20 7263 6d61 6820 6165 2070     ess, ocram heap 
a0008a14:	6973 657a 3d20 2520 2064 624b 7479 2065     size = %d Kbyte 
a0008a24:	0a0d 0000 6175 7472 2020 6973 3167 253a     ....uart  sig1:%
a0008a34:	3830 2c78 7320 6769 3a32 3025 7838 0a0d     08x, sig2:%08x..
a0008a44:	0000 0000 6c63 636f 206b 6567 316e 253a     ....clock gen1:%
a0008a54:	3830 2c78 6720 6e65 3a32 3025 7838 0a0d     08x, gen2:%08x..
a0008a64:	0000 0000 7478 6c61 253a 4864 287a 7325     ....xtal:%dHz(%s
a0008a74:	0d29 000a 6f62 7261 2064 6e69 7469 6420     )...board init d
a0008a84:	6e6f 0d65 000a 0000 3d3d 3d3d 3d3d 3d3d     one.....========
a0008a94:	3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d     ================
a0008aa4:	3d3d 0d3d 000a 0000 27a4 a000 29b6 a000     ===......'...)..
a0008ab4:	27a0 a000 29b6 a000 29a6 a000 29b6 a000     .'...)...)...)..
a0008ac4:	27a0 a000 27a8 a000 27a8 a000 29a6 a000     .'...'...'...)..
a0008ad4:	27a0 a000 2784 a000 2784 a000 2784 a000     .'...'...'...'..
a0008ae4:	27b2 a000 2f82 a000 2f82 a000 2f9a a000     .'.../.../.../..
a0008af4:	2f7c a000 2f7c a000 2d94 a000 2f9a a000     |/..|/...-.../..
a0008b04:	2f7c a000 2d94 a000 2f7c a000 2f9a a000     |/...-..|/.../..
a0008b14:	2f7a a000 2f7a a000 2f7a a000 315c a000     z/..z/..z/..\1..

a0008b24 <__clz_tab>:
a0008b24:	0100 0202 0303 0303 0404 0404 0404 0404     ................
a0008b34:	0505 0505 0505 0505 0505 0505 0505 0505     ................
a0008b44:	0606 0606 0606 0606 0606 0606 0606 0606     ................
a0008b54:	0606 0606 0606 0606 0606 0606 0606 0606     ................
a0008b64:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0008b74:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0008b84:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0008b94:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0008ba4:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008bb4:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008bc4:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008bd4:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008be4:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008bf4:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008c04:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008c14:	0808 0808 0808 0808 0808 0808 0808 0808     ................

a0008c24 <__init_array_end>:
a0008c24:	0400                	addi	s0,sp,512
a0008c26:	62fc                	flw	fa5,68(a3)
a0008c28:	fc00                	fsw	fs0,56(s0)
a0008c2a:	0006                	c.slli	zero,0x1
a0008c2c:	0400                	addi	s0,sp,512
a0008c2e:	22fc                	fld	fa5,192(a3)
a0008c30:	0000                	unimp
a0008c32:	0000                	unimp
a0008c34:	0000                	unimp
a0008c36:	80002303          	lw	t1,-2048(zero) # fffff800 <__psram_limit+0x57bff800>
a0008c3a:	0000                	unimp
a0008c3c:	0000                	unimp
a0008c3e:	2801                	jal	a0008c4e <__nocache_ram_load_addr+0x2>
a0008c40:	0000                	unimp
a0008c42:	0000                	unimp
a0008c44:	ffffffff          	0xffffffff
a0008c48:	ffffffff          	0xffffffff

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
62fc05aa:	2951                	jal	62fc0a3e <qcc74x_irq_save>
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
62fc05c2:	a151                	j	62fc0a46 <qcc74x_irq_restore>
62fc05c4:	00f59363          	bne	a1,a5,62fc05ca <qcc74x_ef_ctrl_read_direct+0x4a>
62fc05c8:	4481                	li	s1,0
62fc05ca:	c63a                	sw	a4,12(sp)
62fc05cc:	298d                	jal	62fc0a3e <qcc74x_irq_save>
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

62fc05fe <qcc74x_ef_ctrl_read_common_trim>:
62fc05fe:	715d                	addi	sp,sp,-80
62fc0600:	c2a6                	sw	s1,68(sp)
62fc0602:	c0ca                	sw	s2,64(sp)
62fc0604:	de4e                	sw	s3,60(sp)
62fc0606:	da56                	sw	s5,52(sp)
62fc0608:	c636                	sw	a3,12(sp)
62fc060a:	c686                	sw	ra,76(sp)
62fc060c:	c4a2                	sw	s0,72(sp)
62fc060e:	dc52                	sw	s4,56(sp)
62fc0610:	d85a                	sw	s6,48(sp)
62fc0612:	d65e                	sw	s7,44(sp)
62fc0614:	8aaa                	mv	s5,a0
62fc0616:	89ae                	mv	s3,a1
62fc0618:	84b2                	mv	s1,a2
62fc061a:	ce02                	sw	zero,28(sp)
62fc061c:	210d                	jal	62fc0a3e <qcc74x_irq_save>
62fc061e:	46b2                	lw	a3,12(sp)
62fc0620:	892a                	mv	s2,a0
62fc0622:	c299                	beqz	a3,62fc0628 <qcc74x_ef_ctrl_read_common_trim+0x2a>
62fc0624:	8556                	mv	a0,s5
62fc0626:	3dd5                	jal	62fc051a <qcc74x_ef_ctrl_load_efuse_r0>
62fc0628:	67c1                	lui	a5,0x10
62fc062a:	c09c                	sw	a5,0(s1)
62fc062c:	0868                	addi	a0,sp,28
62fc062e:	3d047097          	auipc	ra,0x3d047
62fc0632:	8c6080e7          	jalr	-1850(ra) # a0006ef4 <qcc74x_ef_ctrl_get_common_trim_list>
62fc0636:	8b2a                	mv	s6,a0
62fc0638:	4401                	li	s0,0
62fc063a:	4bb1                	li	s7,12
62fc063c:	0d640763          	beq	s0,s6,62fc070a <qcc74x_ef_ctrl_read_common_trim+0x10c>
62fc0640:	03740a33          	mul	s4,s0,s7
62fc0644:	47f2                	lw	a5,28(sp)
62fc0646:	864e                	mv	a2,s3
62fc0648:	4147c58b          	lrw	a1,a5,s4,0
62fc064c:	00064783          	lbu	a5,0(a2)
62fc0650:	ebf1                	bnez	a5,62fc0724 <qcc74x_ef_ctrl_read_common_trim+0x126>
62fc0652:	41360633          	sub	a2,a2,s3
62fc0656:	854e                	mv	a0,s3
62fc0658:	3d09                	jal	62fc046a <arch_memcmp>
62fc065a:	e565                	bnez	a0,62fc0742 <qcc74x_ef_ctrl_read_common_trim+0x144>
62fc065c:	47f2                	lw	a5,28(sp)
62fc065e:	97d2                	add	a5,a5,s4
62fc0660:	0047d703          	lhu	a4,4(a5) # 10004 <wifi_ram_max_size+0x8004>
62fc0664:	6785                	lui	a5,0x1
62fc0666:	00f77463          	bgeu	a4,a5,62fc066e <qcc74x_ef_ctrl_read_common_trim+0x70>
62fc066a:	8556                	mv	a0,s5
62fc066c:	35b5                	jal	62fc04d8 <qcc74x_ef_ctrl_switch_ahb_clk_r0>
62fc066e:	4772                	lw	a4,28(sp)
62fc0670:	200567b7          	lui	a5,0x20056
62fc0674:	9752                	add	a4,a4,s4
62fc0676:	00a75603          	lhu	a2,10(a4)
62fc067a:	00c481a3          	sb	a2,3(s1) # a8400003 <__psram_limit+0x3>
62fc067e:	00475683          	lhu	a3,4(a4)
62fc0682:	0056d593          	srli	a1,a3,0x5
62fc0686:	44b7c58b          	lrw	a1,a5,a1,2
62fc068a:	4785                	li	a5,1
62fc068c:	00d796b3          	sll	a3,a5,a3
62fc0690:	8eed                	and	a3,a3,a1
62fc0692:	c299                	beqz	a3,62fc0698 <qcc74x_ef_ctrl_read_common_trim+0x9a>
62fc0694:	00f48023          	sb	a5,0(s1)
62fc0698:	00675683          	lhu	a3,6(a4)
62fc069c:	200567b7          	lui	a5,0x20056
62fc06a0:	0056d593          	srli	a1,a3,0x5
62fc06a4:	44b7c58b          	lrw	a1,a5,a1,2
62fc06a8:	4785                	li	a5,1
62fc06aa:	00d796b3          	sll	a3,a5,a3
62fc06ae:	8eed                	and	a3,a3,a1
62fc06b0:	c299                	beqz	a3,62fc06b6 <qcc74x_ef_ctrl_read_common_trim+0xb8>
62fc06b2:	00f480a3          	sb	a5,1(s1)
62fc06b6:	00875703          	lhu	a4,8(a4)
62fc06ba:	02000793          	li	a5,32
62fc06be:	200566b7          	lui	a3,0x20056
62fc06c2:	01f77993          	andi	s3,a4,31
62fc06c6:	00c985b3          	add	a1,s3,a2
62fc06ca:	8315                	srli	a4,a4,0x5
62fc06cc:	04b7de63          	bge	a5,a1,62fc0728 <qcc74x_ef_ctrl_read_common_trim+0x12a>
62fc06d0:	44e6ca8b          	lrw	s5,a3,a4,2
62fc06d4:	0691                	addi	a3,a3,4
62fc06d6:	44e6ca0b          	lrw	s4,a3,a4,2
62fc06da:	4505                	li	a0,1
62fc06dc:	4581                	li	a1,0
62fc06de:	3d040097          	auipc	ra,0x3d040
62fc06e2:	5cc080e7          	jalr	1484(ra) # a0000caa <__ashldi3>
62fc06e6:	fff50413          	addi	s0,a0,-1
62fc06ea:	864e                	mv	a2,s3
62fc06ec:	8556                	mv	a0,s5
62fc06ee:	85d2                	mv	a1,s4
62fc06f0:	3d040097          	auipc	ra,0x3d040
62fc06f4:	590080e7          	jalr	1424(ra) # a0000c80 <__lshrdi3>
62fc06f8:	8d61                	and	a0,a0,s0
62fc06fa:	0004d783          	lhu	a5,0(s1)
62fc06fe:	c0c8                	sw	a0,4(s1)
62fc0700:	8d5d                	or	a0,a0,a5
62fc0702:	ed0d                	bnez	a0,62fc073c <qcc74x_ef_ctrl_read_common_trim+0x13e>
62fc0704:	4785                	li	a5,1
62fc0706:	00f48123          	sb	a5,2(s1)
62fc070a:	854a                	mv	a0,s2
62fc070c:	2e2d                	jal	62fc0a46 <qcc74x_irq_restore>
62fc070e:	40b6                	lw	ra,76(sp)
62fc0710:	4426                	lw	s0,72(sp)
62fc0712:	4496                	lw	s1,68(sp)
62fc0714:	4906                	lw	s2,64(sp)
62fc0716:	59f2                	lw	s3,60(sp)
62fc0718:	5a62                	lw	s4,56(sp)
62fc071a:	5ad2                	lw	s5,52(sp)
62fc071c:	5b42                	lw	s6,48(sp)
62fc071e:	5bb2                	lw	s7,44(sp)
62fc0720:	6161                	addi	sp,sp,80
62fc0722:	8082                	ret
62fc0724:	0605                	addi	a2,a2,1
62fc0726:	b71d                	j	62fc064c <qcc74x_ef_ctrl_read_common_trim+0x4e>
62fc0728:	44e6c70b          	lrw	a4,a3,a4,2
62fc072c:	4785                	li	a5,1
62fc072e:	00c79533          	sll	a0,a5,a2
62fc0732:	157d                	addi	a0,a0,-1
62fc0734:	01375733          	srl	a4,a4,s3
62fc0738:	8d79                	and	a0,a0,a4
62fc073a:	b7c1                	j	62fc06fa <qcc74x_ef_ctrl_read_common_trim+0xfc>
62fc073c:	00048123          	sb	zero,2(s1)
62fc0740:	b7e9                	j	62fc070a <qcc74x_ef_ctrl_read_common_trim+0x10c>
62fc0742:	0405                	addi	s0,s0,1
62fc0744:	bde5                	j	62fc063c <qcc74x_ef_ctrl_read_common_trim+0x3e>

62fc0746 <qcc74x_ef_ctrl_get_trim_parity>:
62fc0746:	4701                	li	a4,0
62fc0748:	4781                	li	a5,0
62fc074a:	4605                	li	a2,1
62fc074c:	0ff77693          	zext.b	a3,a4
62fc0750:	00b6e563          	bltu	a3,a1,62fc075a <qcc74x_ef_ctrl_get_trim_parity+0x14>
62fc0754:	0017f513          	andi	a0,a5,1
62fc0758:	8082                	ret
62fc075a:	00e616b3          	sll	a3,a2,a4
62fc075e:	8ee9                	and	a3,a3,a0
62fc0760:	c681                	beqz	a3,62fc0768 <qcc74x_ef_ctrl_get_trim_parity+0x22>
62fc0762:	0785                	addi	a5,a5,1
62fc0764:	0ff7f793          	zext.b	a5,a5
62fc0768:	0705                	addi	a4,a4,1
62fc076a:	b7cd                	j	62fc074c <qcc74x_ef_ctrl_get_trim_parity+0x6>

62fc076c <qcc74x_uart_putchar>:
62fc076c:	1101                	addi	sp,sp,-32
62fc076e:	cc22                	sw	s0,24(sp)
62fc0770:	ca26                	sw	s1,20(sp)
62fc0772:	c84a                	sw	s2,16(sp)
62fc0774:	c64e                	sw	s3,12(sp)
62fc0776:	c452                	sw	s4,8(sp)
62fc0778:	4144                	lw	s1,4(a0)
62fc077a:	ce06                	sw	ra,28(sp)
62fc077c:	842e                	mv	s0,a1
62fc077e:	2685                	jal	62fc0ade <qcc74x_mtimer_get_time_ms>
62fc0780:	892a                	mv	s2,a0
62fc0782:	89ae                	mv	s3,a1
62fc0784:	06400a13          	li	s4,100
62fc0788:	0844a783          	lw	a5,132(s1)
62fc078c:	03f7f793          	andi	a5,a5,63
62fc0790:	cf91                	beqz	a5,62fc07ac <qcc74x_uart_putchar+0x40>
62fc0792:	0ff47413          	zext.b	s0,s0
62fc0796:	08848423          	sb	s0,136(s1)
62fc079a:	4501                	li	a0,0
62fc079c:	40f2                	lw	ra,28(sp)
62fc079e:	4462                	lw	s0,24(sp)
62fc07a0:	44d2                	lw	s1,20(sp)
62fc07a2:	4942                	lw	s2,16(sp)
62fc07a4:	49b2                	lw	s3,12(sp)
62fc07a6:	4a22                	lw	s4,8(sp)
62fc07a8:	6105                	addi	sp,sp,32
62fc07aa:	8082                	ret
62fc07ac:	2e0d                	jal	62fc0ade <qcc74x_mtimer_get_time_ms>
62fc07ae:	c3251577          	sub64	a0,a0,s2
62fc07b2:	e199                	bnez	a1,62fc07b8 <qcc74x_uart_putchar+0x4c>
62fc07b4:	fcaa7ae3          	bgeu	s4,a0,62fc0788 <qcc74x_uart_putchar+0x1c>
62fc07b8:	f8c00513          	li	a0,-116
62fc07bc:	b7c5                	j	62fc079c <qcc74x_uart_putchar+0x30>

62fc07be <qcc74x_uart_put>:
62fc07be:	1141                	addi	sp,sp,-16
62fc07c0:	c422                	sw	s0,8(sp)
62fc07c2:	c226                	sw	s1,4(sp)
62fc07c4:	c04a                	sw	s2,0(sp)
62fc07c6:	c606                	sw	ra,12(sp)
62fc07c8:	892a                	mv	s2,a0
62fc07ca:	842e                	mv	s0,a1
62fc07cc:	00c584b3          	add	s1,a1,a2
62fc07d0:	00941463          	bne	s0,s1,62fc07d8 <qcc74x_uart_put+0x1a>
62fc07d4:	4501                	li	a0,0
62fc07d6:	a039                	j	62fc07e4 <qcc74x_uart_put+0x26>
62fc07d8:	9814458b          	lbuia	a1,(s0),1,0
62fc07dc:	854a                	mv	a0,s2
62fc07de:	3779                	jal	62fc076c <qcc74x_uart_putchar>
62fc07e0:	fe0558e3          	bgez	a0,62fc07d0 <qcc74x_uart_put+0x12>
62fc07e4:	40b2                	lw	ra,12(sp)
62fc07e6:	4422                	lw	s0,8(sp)
62fc07e8:	4492                	lw	s1,4(sp)
62fc07ea:	4902                	lw	s2,0(sp)
62fc07ec:	0141                	addi	sp,sp,16
62fc07ee:	8082                	ret

62fc07f0 <flash_get_size_from_jedecid>:
62fc07f0:	01051793          	slli	a5,a0,0x10
62fc07f4:	00ff0737          	lui	a4,0xff0
62fc07f8:	8ff9                	and	a5,a5,a4
62fc07fa:	6741                	lui	a4,0x10
62fc07fc:	f0070713          	addi	a4,a4,-256 # ff00 <wifi_ram_max_size+0x7f00>
62fc0800:	8f69                	and	a4,a4,a0
62fc0802:	8fd9                	or	a5,a5,a4
62fc0804:	5d05350b          	extu	a0,a0,23,16
62fc0808:	953e                	add	a0,a0,a5
62fc080a:	c519                	beqz	a0,62fc0818 <flash_get_size_from_jedecid+0x28>
62fc080c:	897d                	andi	a0,a0,31
62fc080e:	1535                	addi	a0,a0,-19
62fc0810:	000807b7          	lui	a5,0x80
62fc0814:	00a79533          	sll	a0,a5,a0
62fc0818:	8082                	ret

62fc081a <qcc74x_flash_set_cmds.constprop.0>:
62fc081a:	010107b7          	lui	a5,0x1010
62fc081e:	1101                	addi	sp,sp,-32
62fc0820:	10178793          	addi	a5,a5,257 # 1010101 <remain_wifi_ram+0xff0101>
62fc0824:	c43e                	sw	a5,8(sp)
62fc0826:	47a5                	li	a5,9
62fc0828:	00f10623          	sb	a5,12(sp)
62fc082c:	85c1c783          	lbu	a5,-1956(gp) # 62fc1b74 <g_flash_cfg>
62fc0830:	ce06                	sw	ra,28(sp)
62fc0832:	4711                	li	a4,4
62fc0834:	8bfd                	andi	a5,a5,31
62fc0836:	00e79763          	bne	a5,a4,62fc0844 <qcc74x_flash_set_cmds.constprop.0+0x2a>
62fc083a:	4789                	li	a5,2
62fc083c:	00f105a3          	sb	a5,11(sp)
62fc0840:	00f10623          	sb	a5,12(sp)
62fc0844:	0028                	addi	a0,sp,8
62fc0846:	4581                	li	a1,0
62fc0848:	2e55                	jal	62fc0bfc <qcc74x_sf_ctrl_cmds_set>
62fc084a:	40f2                	lw	ra,28(sp)
62fc084c:	6105                	addi	sp,sp,32
62fc084e:	8082                	ret

62fc0850 <flash_set_l1c_wrap.constprop.0>:
62fc0850:	85c1c783          	lbu	a5,-1956(gp) # 62fc1b74 <g_flash_cfg>
62fc0854:	4711                	li	a4,4
62fc0856:	85c18513          	addi	a0,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc085a:	8bfd                	andi	a5,a5,31
62fc085c:	00e79363          	bne	a5,a4,62fc0862 <flash_set_l1c_wrap.constprop.0+0x12>
62fc0860:	a129                	j	62fc0c6a <qcc74x_sflash_set_burst_wrap>
62fc0862:	a6ed                	j	62fc0c4c <qcc74x_sflash_disable_burst_wrap>

62fc0864 <flash_set_qspi_enable.constprop.0>:
62fc0864:	85c1c783          	lbu	a5,-1956(gp) # 62fc1b74 <g_flash_cfg>
62fc0868:	8bbd                	andi	a5,a5,15
62fc086a:	17f9                	addi	a5,a5,-2
62fc086c:	0fd7f793          	andi	a5,a5,253
62fc0870:	e781                	bnez	a5,62fc0878 <flash_set_qspi_enable.constprop.0+0x14>
62fc0872:	85c18513          	addi	a0,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc0876:	ae65                	j	62fc0c2e <qcc74x_sflash_qspi_enable>
62fc0878:	8082                	ret

62fc087a <flash2_init.isra.0>:
62fc087a:	7179                	addi	sp,sp,-48
62fc087c:	4785                	li	a5,1
62fc087e:	ca3e                	sw	a5,20(sp)
62fc0880:	cc3e                	sw	a5,24(sp)
62fc0882:	10300793          	li	a5,259
62fc0886:	00f11e23          	sh	a5,28(sp)
62fc088a:	010107b7          	lui	a5,0x1010
62fc088e:	10178793          	addi	a5,a5,257 # 1010101 <remain_wifi_ram+0xff0101>
62fc0892:	c63e                	sw	a5,12(sp)
62fc0894:	47a5                	li	a5,9
62fc0896:	00f10823          	sb	a5,16(sp)
62fc089a:	62fc37b7          	lui	a5,0x62fc3
62fc089e:	ea97c703          	lbu	a4,-343(a5) # 62fc2ea9 <device_info+0x1>
62fc08a2:	d606                	sw	ra,44(sp)
62fc08a4:	d422                	sw	s0,40(sp)
62fc08a6:	d226                	sw	s1,36(sp)
62fc08a8:	d04a                	sw	s2,32(sp)
62fc08aa:	c402                	sw	zero,8(sp)
62fc08ac:	478d                	li	a5,3
62fc08ae:	06f71b63          	bne	a4,a5,62fc0924 <flash2_init.isra.0+0xaa>
62fc08b2:	084c                	addi	a1,sp,20
62fc08b4:	03400513          	li	a0,52
62fc08b8:	261d                	jal	62fc0bde <qcc74x_sf_cfg_sbus2_flash_init>
62fc08ba:	4505                	li	a0,1
62fc08bc:	26a9                	jal	62fc0c06 <qcc74x_sf_ctrl_sbus2_replace>
62fc08be:	4785                	li	a5,1
62fc08c0:	4701                	li	a4,0
62fc08c2:	80818693          	addi	a3,gp,-2040 # 62fc1b20 <g_flash2_cfg>
62fc08c6:	4601                	li	a2,0
62fc08c8:	03400593          	li	a1,52
62fc08cc:	4501                	li	a0,0
62fc08ce:	80818913          	addi	s2,gp,-2040 # 62fc1b20 <g_flash2_cfg>
62fc08d2:	26e9                	jal	62fc0c9c <qcc74x_sf_cfg_flash_identify_ext>
62fc08d4:	04055863          	bgez	a0,62fc0924 <flash2_init.isra.0+0xaa>
62fc08d8:	47c5                	li	a5,17
62fc08da:	00f91023          	sh	a5,0(s2)
62fc08de:	002c                	addi	a1,sp,8
62fc08e0:	57fd                	li	a5,-1
62fc08e2:	80818513          	addi	a0,gp,-2040 # 62fc1b20 <g_flash2_cfg>
62fc08e6:	02f90f23          	sb	a5,62(s2)
62fc08ea:	26b5                	jal	62fc0c56 <qcc74x_sflash_get_jedecid>
62fc08ec:	47a2                	lw	a5,8(sp)
62fc08ee:	01000737          	lui	a4,0x1000
62fc08f2:	177d                	addi	a4,a4,-1
62fc08f4:	62fc3437          	lui	s0,0x62fc3
62fc08f8:	8ff9                	and	a5,a5,a4
62fc08fa:	4585                	li	a1,1
62fc08fc:	0068                	addi	a0,sp,12
62fc08fe:	ed040413          	addi	s0,s0,-304 # 62fc2ed0 <g_jedec_id2>
62fc0902:	c43e                	sw	a5,8(sp)
62fc0904:	c01c                	sw	a5,0(s0)
62fc0906:	2cdd                	jal	62fc0bfc <qcc74x_sf_ctrl_cmds_set>
62fc0908:	00094583          	lbu	a1,0(s2)
62fc090c:	4685                	li	a3,1
62fc090e:	4601                	li	a2,0
62fc0910:	89bd                	andi	a1,a1,15
62fc0912:	80818513          	addi	a0,gp,-2040 # 62fc1b20 <g_flash2_cfg>
62fc0916:	2a39                	jal	62fc0a34 <qcc74x_sflash_xip_read_enable>
62fc0918:	e511                	bnez	a0,62fc0924 <flash2_init.isra.0+0xaa>
62fc091a:	2cdd                	jal	62fc0c10 <qcc74x_sf_ctrl_sbus2_revoke_replace>
62fc091c:	4008                	lw	a0,0(s0)
62fc091e:	3dc9                	jal	62fc07f0 <flash_get_size_from_jedecid>
62fc0920:	80a1a223          	sw	a0,-2044(gp) # 62fc1b1c <flash2_size>
62fc0924:	50b2                	lw	ra,44(sp)
62fc0926:	5422                	lw	s0,40(sp)
62fc0928:	5492                	lw	s1,36(sp)
62fc092a:	5902                	lw	s2,32(sp)
62fc092c:	6145                	addi	sp,sp,48
62fc092e:	8082                	ret

62fc0930 <qcc74x_flash_init>:
62fc0930:	62fc3537          	lui	a0,0x62fc3
62fc0934:	7139                	addi	sp,sp,-64
62fc0936:	ea850513          	addi	a0,a0,-344 # 62fc2ea8 <device_info>
62fc093a:	de06                	sw	ra,60(sp)
62fc093c:	dc22                	sw	s0,56(sp)
62fc093e:	da26                	sw	s1,52(sp)
62fc0940:	d64e                	sw	s3,44(sp)
62fc0942:	d452                	sw	s4,40(sp)
62fc0944:	d84a                	sw	s2,48(sp)
62fc0946:	d256                	sw	s5,36(sp)
62fc0948:	ca02                	sw	zero,20(sp)
62fc094a:	7d4000ef          	jal	ra,62fc111e <qcc74x_efuse_get_device_info>
62fc094e:	2379                	jal	62fc0edc <GLB_Get_Flash_Id_Value>
62fc0950:	62fc3437          	lui	s0,0x62fc3
62fc0954:	62fc29b7          	lui	s3,0x62fc2
62fc0958:	ca2a                	sw	a0,20(sp)
62fc095a:	85c18a13          	addi	s4,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc095e:	ecc40413          	addi	s0,s0,-308 # 62fc2ecc <g_jedec_id>
62fc0962:	b1898993          	addi	s3,s3,-1256 # 62fc1b18 <__tcm_code_end__>
62fc0966:	c121                	beqz	a0,62fc09a6 <qcc74x_flash_init+0x76>
62fc0968:	4681                	li	a3,0
62fc096a:	4601                	li	a2,0
62fc096c:	85c18593          	addi	a1,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc0970:	2131                	jal	62fc0d7c <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>
62fc0972:	892a                	mv	s2,a0
62fc0974:	e90d                	bnez	a0,62fc09a6 <qcc74x_flash_init+0x76>
62fc0976:	4552                	lw	a0,20(sp)
62fc0978:	c008                	sw	a0,0(s0)
62fc097a:	00aa06a3          	sb	a0,13(s4)
62fc097e:	c62a                	sw	a0,12(sp)
62fc0980:	3d046097          	auipc	ra,0x3d046
62fc0984:	80e080e7          	jalr	-2034(ra) # a000618e <flash_get_clock_delay.constprop.0.isra.0>
62fc0988:	4532                	lw	a0,12(sp)
62fc098a:	359d                	jal	62fc07f0 <flash_get_size_from_jedecid>
62fc098c:	00a9a023          	sw	a0,0(s3)
62fc0990:	35ed                	jal	62fc087a <flash2_init.isra.0>
62fc0992:	50f2                	lw	ra,60(sp)
62fc0994:	5462                	lw	s0,56(sp)
62fc0996:	54d2                	lw	s1,52(sp)
62fc0998:	59b2                	lw	s3,44(sp)
62fc099a:	5a22                	lw	s4,40(sp)
62fc099c:	5a92                	lw	s5,36(sp)
62fc099e:	854a                	mv	a0,s2
62fc09a0:	5942                	lw	s2,48(sp)
62fc09a2:	6121                	addi	sp,sp,64
62fc09a4:	8082                	ret
62fc09a6:	000109a3          	sb	zero,19(sp)
62fc09aa:	cc02                	sw	zero,24(sp)
62fc09ac:	ce02                	sw	zero,28(sp)
62fc09ae:	2841                	jal	62fc0a3e <qcc74x_irq_save>
62fc09b0:	8aaa                	mv	s5,a0
62fc09b2:	01310513          	addi	a0,sp,19
62fc09b6:	2cc9                	jal	62fc0c88 <qcc74x_xip_sflash_opt_enter>
62fc09b8:	4681                	li	a3,0
62fc09ba:	4601                	li	a2,0
62fc09bc:	086c                	addi	a1,sp,28
62fc09be:	85c18513          	addi	a0,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc09c2:	2161                	jal	62fc0e4a <qcc74x_xip_sflash_state_save>
62fc09c4:	082c                	addi	a1,sp,24
62fc09c6:	85c18513          	addi	a0,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc09ca:	2471                	jal	62fc0c56 <qcc74x_sflash_get_jedecid>
62fc09cc:	460d                	li	a2,3
62fc09ce:	082c                	addi	a1,sp,24
62fc09d0:	0848                	addi	a0,sp,20
62fc09d2:	343d                	jal	62fc0400 <arch_memcpy>
62fc09d4:	4562                	lw	a0,24(sp)
62fc09d6:	010007b7          	lui	a5,0x1000
62fc09da:	17fd                	addi	a5,a5,-1
62fc09dc:	8d7d                	and	a0,a0,a5
62fc09de:	4681                	li	a3,0
62fc09e0:	4601                	li	a2,0
62fc09e2:	85c18593          	addi	a1,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc09e6:	cc2a                	sw	a0,24(sp)
62fc09e8:	c008                	sw	a0,0(s0)
62fc09ea:	2e49                	jal	62fc0d7c <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>
62fc09ec:	4762                	lw	a4,24(sp)
62fc09ee:	892a                	mv	s2,a0
62fc09f0:	e119                	bnez	a0,62fc09f6 <qcc74x_flash_init+0xc6>
62fc09f2:	00ea06a3          	sb	a4,13(s4)
62fc09f6:	001667b7          	lui	a5,0x166
62fc09fa:	0ef78793          	addi	a5,a5,239 # 1660ef <remain_wifi_ram+0x1460ef>
62fc09fe:	00f71563          	bne	a4,a5,62fc0a08 <qcc74x_flash_init+0xd8>
62fc0a02:	4791                	li	a5,4
62fc0a04:	00fa1023          	sh	a5,0(s4)
62fc0a08:	3d09                	jal	62fc081a <qcc74x_flash_set_cmds.constprop.0>
62fc0a0a:	3da9                	jal	62fc0864 <flash_set_qspi_enable.constprop.0>
62fc0a0c:	3591                	jal	62fc0850 <flash_set_l1c_wrap.constprop.0>
62fc0a0e:	45f2                	lw	a1,28(sp)
62fc0a10:	4681                	li	a3,0
62fc0a12:	4601                	li	a2,0
62fc0a14:	85c18513          	addi	a0,gp,-1956 # 62fc1b74 <g_flash_cfg>
62fc0a18:	2cb1                	jal	62fc0c74 <qcc74x_xip_sflash_state_restore>
62fc0a1a:	01314503          	lbu	a0,19(sp)
62fc0a1e:	2c95                	jal	62fc0c92 <qcc74x_xip_sflash_opt_exit>
62fc0a20:	8556                	mv	a0,s5
62fc0a22:	2015                	jal	62fc0a46 <qcc74x_irq_restore>
62fc0a24:	3d045097          	auipc	ra,0x3d045
62fc0a28:	76a080e7          	jalr	1898(ra) # a000618e <flash_get_clock_delay.constprop.0.isra.0>
62fc0a2c:	4008                	lw	a0,0(s0)
62fc0a2e:	2951                	jal	62fc0ec2 <GLB_Set_Flash_Id_Value>
62fc0a30:	4008                	lw	a0,0(s0)
62fc0a32:	bfa1                	j	62fc098a <qcc74x_flash_init+0x5a>

62fc0a34 <qcc74x_sflash_xip_read_enable>:
62fc0a34:	87b6                	mv	a5,a3
62fc0a36:	02000713          	li	a4,32
62fc0a3a:	4681                	li	a3,0
62fc0a3c:	a419                	j	62fc0c42 <qcc74x_sflash_set_xip_cfg>

62fc0a3e <qcc74x_irq_save>:
62fc0a3e:	4521                	li	a0,8
62fc0a40:	30053573          	csrrc	a0,mstatus,a0
62fc0a44:	8082                	ret

62fc0a46 <qcc74x_irq_restore>:
62fc0a46:	30051073          	csrw	mstatus,a0
62fc0a4a:	8082                	ret

62fc0a4c <qcc74x_mtimer_get_time_us>:
62fc0a4c:	7139                	addi	sp,sp,-64
62fc0a4e:	de22                	sw	s0,60(sp)
62fc0a50:	c602                	sw	zero,12(sp)
62fc0a52:	e000c7b7          	lui	a5,0xe000c
62fc0a56:	3e800413          	li	s0,1000
62fc0a5a:	ff87a603          	lw	a2,-8(a5) # e000bff8 <__psram_limit+0x37c0bff8>
62fc0a5e:	ffc7a683          	lw	a3,-4(a5)
62fc0a62:	4f81                	li	t6,0
62fc0a64:	4381                	li	t2,0
62fc0a66:	cc36                	sw	a3,24(sp)
62fc0a68:	ce7e                	sw	t6,28(sp)
62fc0a6a:	ff87a603          	lw	a2,-8(a5)
62fc0a6e:	ffc7a683          	lw	a3,-4(a5)
62fc0a72:	4881                	li	a7,0
62fc0a74:	c832                	sw	a2,16(sp)
62fc0a76:	ca1e                	sw	t2,20(sp)
62fc0a78:	ff87a603          	lw	a2,-8(a5)
62fc0a7c:	ffc7a683          	lw	a3,-4(a5)
62fc0a80:	4e81                	li	t4,0
62fc0a82:	d032                	sw	a2,32(sp)
62fc0a84:	d246                	sw	a7,36(sp)
62fc0a86:	ff87a603          	lw	a2,-8(a5)
62fc0a8a:	ffc7a683          	lw	a3,-4(a5)
62fc0a8e:	d436                	sw	a3,40(sp)
62fc0a90:	d676                	sw	t4,44(sp)
62fc0a92:	4732                	lw	a4,12(sp)
62fc0a94:	0705                	addi	a4,a4,1
62fc0a96:	c63a                	sw	a4,12(sp)
62fc0a98:	4732                	lw	a4,12(sp)
62fc0a9a:	02870f63          	beq	a4,s0,62fc0ad8 <qcc74x_mtimer_get_time_us+0x8c>
62fc0a9e:	4642                	lw	a2,16(sp)
62fc0aa0:	46d2                	lw	a3,20(sp)
62fc0aa2:	5502                	lw	a0,32(sp)
62fc0aa4:	5592                	lw	a1,36(sp)
62fc0aa6:	fad5eae3          	bltu	a1,a3,62fc0a5a <qcc74x_mtimer_get_time_us+0xe>
62fc0aaa:	00b69463          	bne	a3,a1,62fc0ab2 <qcc74x_mtimer_get_time_us+0x66>
62fc0aae:	fac566e3          	bltu	a0,a2,62fc0a5a <qcc74x_mtimer_get_time_us+0xe>
62fc0ab2:	4662                	lw	a2,24(sp)
62fc0ab4:	46f2                	lw	a3,28(sp)
62fc0ab6:	5522                	lw	a0,40(sp)
62fc0ab8:	55b2                	lw	a1,44(sp)
62fc0aba:	fac510e3          	bne	a0,a2,62fc0a5a <qcc74x_mtimer_get_time_us+0xe>
62fc0abe:	f8d59ee3          	bne	a1,a3,62fc0a5a <qcc74x_mtimer_get_time_us+0xe>
62fc0ac2:	5622                	lw	a2,40(sp)
62fc0ac4:	56b2                	lw	a3,44(sp)
62fc0ac6:	5702                	lw	a4,32(sp)
62fc0ac8:	5792                	lw	a5,36(sp)
62fc0aca:	4501                	li	a0,0
62fc0acc:	85b2                	mv	a1,a2
62fc0ace:	c0e51577          	add64	a0,a0,a4
62fc0ad2:	5472                	lw	s0,60(sp)
62fc0ad4:	6121                	addi	sp,sp,64
62fc0ad6:	8082                	ret
62fc0ad8:	4501                	li	a0,0
62fc0ada:	4581                	li	a1,0
62fc0adc:	bfdd                	j	62fc0ad2 <qcc74x_mtimer_get_time_us+0x86>

62fc0ade <qcc74x_mtimer_get_time_ms>:
62fc0ade:	1141                	addi	sp,sp,-16
62fc0ae0:	c606                	sw	ra,12(sp)
62fc0ae2:	37ad                	jal	62fc0a4c <qcc74x_mtimer_get_time_us>
62fc0ae4:	3e800613          	li	a2,1000
62fc0ae8:	4681                	li	a3,0
62fc0aea:	3d041097          	auipc	ra,0x3d041
62fc0aee:	916080e7          	jalr	-1770(ra) # a0001400 <__udivdi3>
62fc0af2:	40b2                	lw	ra,12(sp)
62fc0af4:	0141                	addi	sp,sp,16
62fc0af6:	8082                	ret

62fc0af8 <system_setup_xtal_config.isra.0>:
62fc0af8:	1141                	addi	sp,sp,-16
62fc0afa:	c606                	sw	ra,12(sp)
62fc0afc:	c422                	sw	s0,8(sp)
62fc0afe:	c226                	sw	s1,4(sp)
62fc0b00:	28d1                	jal	62fc0bd4 <HBN_Get_MCU_XCLK_Sel>
62fc0b02:	84aa                	mv	s1,a0
62fc0b04:	20d9                	jal	62fc0bca <HBN_Get_MCU_Root_CLK_Sel>
62fc0b06:	842a                	mv	s0,a0
62fc0b08:	4501                	li	a0,0
62fc0b0a:	285d                	jal	62fc0bc0 <HBN_Set_MCU_XCLK_Sel>
62fc0b0c:	4501                	li	a0,0
62fc0b0e:	2065                	jal	62fc0bb6 <HBN_Set_MCU_Root_CLK_Sel>
62fc0b10:	200106b7          	lui	a3,0x20010
62fc0b14:	8846a783          	lw	a5,-1916(a3) # 2000f884 <remain_wifi_ram+0x1ffef884>
62fc0b18:	7751                	lui	a4,0xffff4
62fc0b1a:	175d                	addi	a4,a4,-9
62fc0b1c:	8ff9                	and	a5,a5,a4
62fc0b1e:	6721                	lui	a4,0x8
62fc0b20:	8fd9                	or	a5,a5,a4
62fc0b22:	88f6a223          	sw	a5,-1916(a3)
62fc0b26:	47c1                	li	a5,16
62fc0b28:	0001                	nop
62fc0b2a:	17fd                	addi	a5,a5,-1
62fc0b2c:	fff5                	bnez	a5,62fc0b28 <system_setup_xtal_config.isra.0+0x30>
62fc0b2e:	8526                	mv	a0,s1
62fc0b30:	2841                	jal	62fc0bc0 <HBN_Set_MCU_XCLK_Sel>
62fc0b32:	8522                	mv	a0,s0
62fc0b34:	4422                	lw	s0,8(sp)
62fc0b36:	40b2                	lw	ra,12(sp)
62fc0b38:	4492                	lw	s1,4(sp)
62fc0b3a:	0141                	addi	sp,sp,16
62fc0b3c:	a8ad                	j	62fc0bb6 <HBN_Set_MCU_Root_CLK_Sel>

62fc0b3e <GLB_AHB_MCU_Software_Reset>:
62fc0b3e:	900167b7          	lui	a5,0x90016
62fc0b42:	9647a783          	lw	a5,-1692(a5) # 90015964 <__psram_limit+0xe7c15964>
62fc0b46:	8782                	jr	a5

62fc0b48 <GLB_Power_On_XTAL_And_PLL_CLK>:
62fc0b48:	900167b7          	lui	a5,0x90016
62fc0b4c:	9cc7a783          	lw	a5,-1588(a5) # 900159cc <__psram_limit+0xe7c159cc>
62fc0b50:	8782                	jr	a5

62fc0b52 <GLB_SW_POR_Reset>:
62fc0b52:	900167b7          	lui	a5,0x90016
62fc0b56:	9d87a783          	lw	a5,-1576(a5) # 900159d8 <__psram_limit+0xe7c159d8>
62fc0b5a:	8782                	jr	a5

62fc0b5c <GLB_Set_DIG_512K_CLK>:
62fc0b5c:	900167b7          	lui	a5,0x90016
62fc0b60:	a0c7a783          	lw	a5,-1524(a5) # 90015a0c <__psram_limit+0xe7c15a0c>
62fc0b64:	8782                	jr	a5

62fc0b66 <GLB_Set_DIG_CLK_Sel>:
62fc0b66:	900167b7          	lui	a5,0x90016
62fc0b6a:	a107a783          	lw	a5,-1520(a5) # 90015a10 <__psram_limit+0xe7c15a10>
62fc0b6e:	8782                	jr	a5

62fc0b70 <GLB_Set_MCU_System_CLK>:
62fc0b70:	900167b7          	lui	a5,0x90016
62fc0b74:	a407a783          	lw	a5,-1472(a5) # 90015a40 <__psram_limit+0xe7c15a40>
62fc0b78:	8782                	jr	a5

62fc0b7a <GLB_Set_PKA_CLK_Sel>:
62fc0b7a:	900167b7          	lui	a5,0x90016
62fc0b7e:	a4c7a783          	lw	a5,-1460(a5) # 90015a4c <__psram_limit+0xe7c15a4c>
62fc0b82:	8782                	jr	a5

62fc0b84 <GLB_Set_PWM1_IO_Sel>:
62fc0b84:	900167b7          	lui	a5,0x90016
62fc0b88:	a547a783          	lw	a5,-1452(a5) # 90015a54 <__psram_limit+0xe7c15a54>
62fc0b8c:	8782                	jr	a5

62fc0b8e <GLB_Set_UART_CLK>:
62fc0b8e:	900167b7          	lui	a5,0x90016
62fc0b92:	a847a783          	lw	a5,-1404(a5) # 90015a84 <__psram_limit+0xe7c15a84>
62fc0b96:	8782                	jr	a5

62fc0b98 <GLB_Set_USB_CLK_From_WIFIPLL>:
62fc0b98:	900167b7          	lui	a5,0x90016
62fc0b9c:	a887a783          	lw	a5,-1400(a5) # 90015a88 <__psram_limit+0xe7c15a88>
62fc0ba0:	8782                	jr	a5

62fc0ba2 <GLB_Swap_MCU_SPI_0_MOSI_With_MISO>:
62fc0ba2:	900167b7          	lui	a5,0x90016
62fc0ba6:	a8c7a783          	lw	a5,-1396(a5) # 90015a8c <__psram_limit+0xe7c15a8c>
62fc0baa:	8782                	jr	a5

62fc0bac <HBN_Get_Xtal_Type>:
62fc0bac:	900167b7          	lui	a5,0x90016
62fc0bb0:	b8c7a783          	lw	a5,-1140(a5) # 90015b8c <__psram_limit+0xe7c15b8c>
62fc0bb4:	8782                	jr	a5

62fc0bb6 <HBN_Set_MCU_Root_CLK_Sel>:
62fc0bb6:	900167b7          	lui	a5,0x90016
62fc0bba:	bf47a783          	lw	a5,-1036(a5) # 90015bf4 <__psram_limit+0xe7c15bf4>
62fc0bbe:	8782                	jr	a5

62fc0bc0 <HBN_Set_MCU_XCLK_Sel>:
62fc0bc0:	900167b7          	lui	a5,0x90016
62fc0bc4:	bf87a783          	lw	a5,-1032(a5) # 90015bf8 <__psram_limit+0xe7c15bf8>
62fc0bc8:	8782                	jr	a5

62fc0bca <HBN_Get_MCU_Root_CLK_Sel>:
62fc0bca:	900167b7          	lui	a5,0x90016
62fc0bce:	c307a783          	lw	a5,-976(a5) # 90015c30 <__psram_limit+0xe7c15c30>
62fc0bd2:	8782                	jr	a5

62fc0bd4 <HBN_Get_MCU_XCLK_Sel>:
62fc0bd4:	900167b7          	lui	a5,0x90016
62fc0bd8:	c347a783          	lw	a5,-972(a5) # 90015c34 <__psram_limit+0xe7c15c34>
62fc0bdc:	8782                	jr	a5

62fc0bde <qcc74x_sf_cfg_sbus2_flash_init>:
62fc0bde:	900167b7          	lui	a5,0x90016
62fc0be2:	d107a783          	lw	a5,-752(a5) # 90015d10 <__psram_limit+0xe7c15d10>
62fc0be6:	8782                	jr	a5

62fc0be8 <qcc74x_sf_cfg_flash_identify>:
62fc0be8:	90016837          	lui	a6,0x90016
62fc0bec:	d1482803          	lw	a6,-748(a6) # 90015d14 <__psram_limit+0xe7c15d14>
62fc0bf0:	8802                	jr	a6

62fc0bf2 <qcc74x_sf_ctrl_get_flash_image_offset>:
62fc0bf2:	900167b7          	lui	a5,0x90016
62fc0bf6:	d247a783          	lw	a5,-732(a5) # 90015d24 <__psram_limit+0xe7c15d24>
62fc0bfa:	8782                	jr	a5

62fc0bfc <qcc74x_sf_ctrl_cmds_set>:
62fc0bfc:	900167b7          	lui	a5,0x90016
62fc0c00:	d707a783          	lw	a5,-656(a5) # 90015d70 <__psram_limit+0xe7c15d70>
62fc0c04:	8782                	jr	a5

62fc0c06 <qcc74x_sf_ctrl_sbus2_replace>:
62fc0c06:	900167b7          	lui	a5,0x90016
62fc0c0a:	d987a783          	lw	a5,-616(a5) # 90015d98 <__psram_limit+0xe7c15d98>
62fc0c0e:	8782                	jr	a5

62fc0c10 <qcc74x_sf_ctrl_sbus2_revoke_replace>:
62fc0c10:	900167b7          	lui	a5,0x90016
62fc0c14:	d9c7a783          	lw	a5,-612(a5) # 90015d9c <__psram_limit+0xe7c15d9c>
62fc0c18:	8782                	jr	a5

62fc0c1a <qcc74x_sf_ctrl_set_flash_image_offset>:
62fc0c1a:	900167b7          	lui	a5,0x90016
62fc0c1e:	db47a783          	lw	a5,-588(a5) # 90015db4 <__psram_limit+0xe7c15db4>
62fc0c22:	8782                	jr	a5

62fc0c24 <qcc74x_sf_ctrl_set_owner>:
62fc0c24:	900167b7          	lui	a5,0x90016
62fc0c28:	dbc7a783          	lw	a5,-580(a5) # 90015dbc <__psram_limit+0xe7c15dbc>
62fc0c2c:	8782                	jr	a5

62fc0c2e <qcc74x_sflash_qspi_enable>:
62fc0c2e:	900167b7          	lui	a5,0x90016
62fc0c32:	de47a783          	lw	a5,-540(a5) # 90015de4 <__psram_limit+0xe7c15de4>
62fc0c36:	8782                	jr	a5

62fc0c38 <qcc74x_sflash_set_32bits_addr_mode>:
62fc0c38:	900167b7          	lui	a5,0x90016
62fc0c3c:	e047a783          	lw	a5,-508(a5) # 90015e04 <__psram_limit+0xe7c15e04>
62fc0c40:	8782                	jr	a5

62fc0c42 <qcc74x_sflash_set_xip_cfg>:
62fc0c42:	90016837          	lui	a6,0x90016
62fc0c46:	e0c82803          	lw	a6,-500(a6) # 90015e0c <__psram_limit+0xe7c15e0c>
62fc0c4a:	8802                	jr	a6

62fc0c4c <qcc74x_sflash_disable_burst_wrap>:
62fc0c4c:	900167b7          	lui	a5,0x90016
62fc0c50:	e247a783          	lw	a5,-476(a5) # 90015e24 <__psram_limit+0xe7c15e24>
62fc0c54:	8782                	jr	a5

62fc0c56 <qcc74x_sflash_get_jedecid>:
62fc0c56:	900167b7          	lui	a5,0x90016
62fc0c5a:	e2c7a783          	lw	a5,-468(a5) # 90015e2c <__psram_limit+0xe7c15e2c>
62fc0c5e:	8782                	jr	a5

62fc0c60 <qcc74x_sflash_reset_continue_read>:
62fc0c60:	900167b7          	lui	a5,0x90016
62fc0c64:	e447a783          	lw	a5,-444(a5) # 90015e44 <__psram_limit+0xe7c15e44>
62fc0c68:	8782                	jr	a5

62fc0c6a <qcc74x_sflash_set_burst_wrap>:
62fc0c6a:	900167b7          	lui	a5,0x90016
62fc0c6e:	e487a783          	lw	a5,-440(a5) # 90015e48 <__psram_limit+0xe7c15e48>
62fc0c72:	8782                	jr	a5

62fc0c74 <qcc74x_xip_sflash_state_restore>:
62fc0c74:	900167b7          	lui	a5,0x90016
62fc0c78:	ef87a783          	lw	a5,-264(a5) # 90015ef8 <__psram_limit+0xe7c15ef8>
62fc0c7c:	1141                	addi	sp,sp,-16
62fc0c7e:	c606                	sw	ra,12(sp)
62fc0c80:	9782                	jalr	a5
62fc0c82:	40b2                	lw	ra,12(sp)
62fc0c84:	0141                	addi	sp,sp,16
62fc0c86:	8082                	ret

62fc0c88 <qcc74x_xip_sflash_opt_enter>:
62fc0c88:	900167b7          	lui	a5,0x90016
62fc0c8c:	f047a783          	lw	a5,-252(a5) # 90015f04 <__psram_limit+0xe7c15f04>
62fc0c90:	8782                	jr	a5

62fc0c92 <qcc74x_xip_sflash_opt_exit>:
62fc0c92:	900167b7          	lui	a5,0x90016
62fc0c96:	f087a783          	lw	a5,-248(a5) # 90015f08 <__psram_limit+0xe7c15f08>
62fc0c9a:	8782                	jr	a5

62fc0c9c <qcc74x_sf_cfg_flash_identify_ext>:
62fc0c9c:	1101                	addi	sp,sp,-32
62fc0c9e:	cc22                	sw	s0,24(sp)
62fc0ca0:	ca26                	sw	s1,20(sp)
62fc0ca2:	c84a                	sw	s2,16(sp)
62fc0ca4:	c63e                	sw	a5,12(sp)
62fc0ca6:	ce06                	sw	ra,28(sp)
62fc0ca8:	892a                	mv	s2,a0
62fc0caa:	84b6                	mv	s1,a3
62fc0cac:	3f35                	jal	62fc0be8 <qcc74x_sf_cfg_flash_identify>
62fc0cae:	47b2                	lw	a5,12(sp)
62fc0cb0:	842a                	mv	s0,a0
62fc0cb2:	00090b63          	beqz	s2,62fc0cc8 <qcc74x_sf_cfg_flash_identify_ext+0x2c>
62fc0cb6:	0004c583          	lbu	a1,0(s1)
62fc0cba:	02000713          	li	a4,32
62fc0cbe:	4681                	li	a3,0
62fc0cc0:	4605                	li	a2,1
62fc0cc2:	89bd                	andi	a1,a1,15
62fc0cc4:	8526                	mv	a0,s1
62fc0cc6:	3fb5                	jal	62fc0c42 <qcc74x_sflash_set_xip_cfg>
62fc0cc8:	02044e63          	bltz	s0,62fc0d04 <qcc74x_sf_cfg_flash_identify_ext+0x68>
62fc0ccc:	010007b7          	lui	a5,0x1000
62fc0cd0:	17fd                	addi	a5,a5,-1
62fc0cd2:	8c7d                	and	s0,s0,a5
62fc0cd4:	62fc17b7          	lui	a5,0x62fc1
62fc0cd8:	4701                	li	a4,0
62fc0cda:	59878793          	addi	a5,a5,1432 # 62fc1598 <flash_infos>
62fc0cde:	45b1                	li	a1,12
62fc0ce0:	02b00613          	li	a2,43
62fc0ce4:	02b706b3          	mul	a3,a4,a1
62fc0ce8:	40f6c50b          	lrw	a0,a3,a5,0
62fc0cec:	02851363          	bne	a0,s0,62fc0d12 <qcc74x_sf_cfg_flash_identify_ext+0x76>
62fc0cf0:	97b6                	add	a5,a5,a3
62fc0cf2:	478c                	lw	a1,8(a5)
62fc0cf4:	05400613          	li	a2,84
62fc0cf8:	8526                	mv	a0,s1
62fc0cfa:	f2eff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0cfe:	800007b7          	lui	a5,0x80000
62fc0d02:	8c5d                	or	s0,s0,a5
62fc0d04:	40f2                	lw	ra,28(sp)
62fc0d06:	8522                	mv	a0,s0
62fc0d08:	4462                	lw	s0,24(sp)
62fc0d0a:	44d2                	lw	s1,20(sp)
62fc0d0c:	4942                	lw	s2,16(sp)
62fc0d0e:	6105                	addi	sp,sp,32
62fc0d10:	8082                	ret
62fc0d12:	0705                	addi	a4,a4,1
62fc0d14:	fcc718e3          	bne	a4,a2,62fc0ce4 <qcc74x_sf_cfg_flash_identify_ext+0x48>
62fc0d18:	b7f5                	j	62fc0d04 <qcc74x_sf_cfg_flash_identify_ext+0x68>

62fc0d1a <qcc74x_xip_sflash_read_via_cache_need_lock>:
62fc0d1a:	1101                	addi	sp,sp,-32
62fc0d1c:	cc22                	sw	s0,24(sp)
62fc0d1e:	04000437          	lui	s0,0x4000
62fc0d22:	147d                	addi	s0,s0,-1
62fc0d24:	c452                	sw	s4,8(sp)
62fc0d26:	8c69                	and	s0,s0,a0
62fc0d28:	8a2e                	mv	s4,a1
62fc0d2a:	8536                	mv	a0,a3
62fc0d2c:	85ba                	mv	a1,a4
62fc0d2e:	ce06                	sw	ra,28(sp)
62fc0d30:	ca26                	sw	s1,20(sp)
62fc0d32:	c84a                	sw	s2,16(sp)
62fc0d34:	c64e                	sw	s3,12(sp)
62fc0d36:	c256                	sw	s5,4(sp)
62fc0d38:	84b6                	mv	s1,a3
62fc0d3a:	893a                	mv	s2,a4
62fc0d3c:	8ab2                	mv	s5,a2
62fc0d3e:	3d55                	jal	62fc0bf2 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0d40:	864a                	mv	a2,s2
62fc0d42:	89aa                	mv	s3,a0
62fc0d44:	85a6                	mv	a1,s1
62fc0d46:	4501                	li	a0,0
62fc0d48:	3dc9                	jal	62fc0c1a <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0d4a:	85ca                	mv	a1,s2
62fc0d4c:	8526                	mv	a0,s1
62fc0d4e:	3555                	jal	62fc0bf2 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0d50:	a00005b7          	lui	a1,0xa0000
62fc0d54:	8dc1                	or	a1,a1,s0
62fc0d56:	8656                	mv	a2,s5
62fc0d58:	8d89                	sub	a1,a1,a0
62fc0d5a:	8552                	mv	a0,s4
62fc0d5c:	eccff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0d60:	854e                	mv	a0,s3
62fc0d62:	864a                	mv	a2,s2
62fc0d64:	85a6                	mv	a1,s1
62fc0d66:	3d55                	jal	62fc0c1a <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0d68:	40f2                	lw	ra,28(sp)
62fc0d6a:	4462                	lw	s0,24(sp)
62fc0d6c:	44d2                	lw	s1,20(sp)
62fc0d6e:	4942                	lw	s2,16(sp)
62fc0d70:	49b2                	lw	s3,12(sp)
62fc0d72:	4a22                	lw	s4,8(sp)
62fc0d74:	4a92                	lw	s5,4(sp)
62fc0d76:	4501                	li	a0,0
62fc0d78:	6105                	addi	sp,sp,32
62fc0d7a:	8082                	ret

62fc0d7c <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>:
62fc0d7c:	474647b7          	lui	a5,0x47464
62fc0d80:	7175                	addi	sp,sp,-144
62fc0d82:	34678793          	addi	a5,a5,838 # 47464346 <__RFTLV_HEAD1_H+0xf3f704>
62fc0d86:	dece                	sw	s3,124(sp)
62fc0d88:	c706                	sw	ra,140(sp)
62fc0d8a:	c522                	sw	s0,136(sp)
62fc0d8c:	c326                	sw	s1,132(sp)
62fc0d8e:	c14a                	sw	s2,128(sp)
62fc0d90:	c63e                	sw	a5,12(sp)
62fc0d92:	00010823          	sb	zero,16(sp)
62fc0d96:	89ae                	mv	s3,a1
62fc0d98:	e52d                	bnez	a0,62fc0e02 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x86>
62fc0d9a:	85b6                	mv	a1,a3
62fc0d9c:	8532                	mv	a0,a2
62fc0d9e:	8432                	mv	s0,a2
62fc0da0:	84b6                	mv	s1,a3
62fc0da2:	3d81                	jal	62fc0bf2 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0da4:	85a2                	mv	a1,s0
62fc0da6:	892a                	mv	s2,a0
62fc0da8:	8626                	mv	a2,s1
62fc0daa:	4501                	li	a0,0
62fc0dac:	35bd                	jal	62fc0c1a <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0dae:	a0000537          	lui	a0,0xa0000
62fc0db2:	86a2                	mv	a3,s0
62fc0db4:	8726                	mv	a4,s1
62fc0db6:	05c00613          	li	a2,92
62fc0dba:	084c                	addi	a1,sp,20
62fc0dbc:	0521                	addi	a0,a0,8
62fc0dbe:	3fb1                	jal	62fc0d1a <qcc74x_xip_sflash_read_via_cache_need_lock>
62fc0dc0:	85a2                	mv	a1,s0
62fc0dc2:	8626                	mv	a2,s1
62fc0dc4:	854a                	mv	a0,s2
62fc0dc6:	3d91                	jal	62fc0c1a <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0dc8:	4611                	li	a2,4
62fc0dca:	006c                	addi	a1,sp,12
62fc0dcc:	0848                	addi	a0,sp,20
62fc0dce:	e9cff0ef          	jal	ra,62fc046a <arch_memcmp>
62fc0dd2:	842a                	mv	s0,a0
62fc0dd4:	e92d                	bnez	a0,62fc0e46 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xca>
62fc0dd6:	05400593          	li	a1,84
62fc0dda:	0828                	addi	a0,sp,24
62fc0ddc:	ee6ff0ef          	jal	ra,62fc04c2 <qcc74x_soft_crc32>
62fc0de0:	57b6                	lw	a5,108(sp)
62fc0de2:	06a79263          	bne	a5,a0,62fc0e46 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xca>
62fc0de6:	05400613          	li	a2,84
62fc0dea:	082c                	addi	a1,sp,24
62fc0dec:	854e                	mv	a0,s3
62fc0dee:	e3aff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0df2:	40ba                	lw	ra,140(sp)
62fc0df4:	8522                	mv	a0,s0
62fc0df6:	442a                	lw	s0,136(sp)
62fc0df8:	449a                	lw	s1,132(sp)
62fc0dfa:	490a                	lw	s2,128(sp)
62fc0dfc:	59f6                	lw	s3,124(sp)
62fc0dfe:	6149                	addi	sp,sp,144
62fc0e00:	8082                	ret
62fc0e02:	900167b7          	lui	a5,0x90016
62fc0e06:	d007a783          	lw	a5,-768(a5) # 90015d00 <__psram_limit+0xe7c15d00>
62fc0e0a:	892a                	mv	s2,a0
62fc0e0c:	9782                	jalr	a5
62fc0e0e:	842a                	mv	s0,a0
62fc0e10:	d16d                	beqz	a0,62fc0df2 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>
62fc0e12:	62fc17b7          	lui	a5,0x62fc1
62fc0e16:	4701                	li	a4,0
62fc0e18:	59878793          	addi	a5,a5,1432 # 62fc1598 <flash_infos>
62fc0e1c:	45b1                	li	a1,12
62fc0e1e:	02b00613          	li	a2,43
62fc0e22:	02b706b3          	mul	a3,a4,a1
62fc0e26:	40f6c50b          	lrw	a0,a3,a5,0
62fc0e2a:	01251b63          	bne	a0,s2,62fc0e40 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xc4>
62fc0e2e:	97b6                	add	a5,a5,a3
62fc0e30:	478c                	lw	a1,8(a5)
62fc0e32:	05400613          	li	a2,84
62fc0e36:	854e                	mv	a0,s3
62fc0e38:	df0ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0e3c:	4401                	li	s0,0
62fc0e3e:	bf55                	j	62fc0df2 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>
62fc0e40:	0705                	addi	a4,a4,1
62fc0e42:	fec710e3          	bne	a4,a2,62fc0e22 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xa6>
62fc0e46:	547d                	li	s0,-1
62fc0e48:	b76d                	j	62fc0df2 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>

62fc0e4a <qcc74x_xip_sflash_state_save>:
62fc0e4a:	7179                	addi	sp,sp,-48
62fc0e4c:	04000793          	li	a5,64
62fc0e50:	d422                	sw	s0,40(sp)
62fc0e52:	d226                	sw	s1,36(sp)
62fc0e54:	d04a                	sw	s2,32(sp)
62fc0e56:	ce4e                	sw	s3,28(sp)
62fc0e58:	d606                	sw	ra,44(sp)
62fc0e5a:	842a                	mv	s0,a0
62fc0e5c:	89ae                	mv	s3,a1
62fc0e5e:	8932                	mv	s2,a2
62fc0e60:	84b6                	mv	s1,a3
62fc0e62:	c63e                	sw	a5,12(sp)
62fc0e64:	47b2                	lw	a5,12(sp)
62fc0e66:	fff78713          	addi	a4,a5,-1
62fc0e6a:	c63a                	sw	a4,12(sp)
62fc0e6c:	ffe5                	bnez	a5,62fc0e64 <qcc74x_xip_sflash_state_save+0x1a>
62fc0e6e:	4785                	li	a5,1
62fc0e70:	00f49463          	bne	s1,a5,62fc0e78 <qcc74x_xip_sflash_state_save+0x2e>
62fc0e74:	4505                	li	a0,1
62fc0e76:	3b41                	jal	62fc0c06 <qcc74x_sf_ctrl_sbus2_replace>
62fc0e78:	4501                	li	a0,0
62fc0e7a:	336d                	jal	62fc0c24 <qcc74x_sf_ctrl_set_owner>
62fc0e7c:	8522                	mv	a0,s0
62fc0e7e:	33cd                	jal	62fc0c60 <qcc74x_sflash_reset_continue_read>
62fc0e80:	8522                	mv	a0,s0
62fc0e82:	33e9                	jal	62fc0c4c <qcc74x_sflash_disable_burst_wrap>
62fc0e84:	4585                	li	a1,1
62fc0e86:	8522                	mv	a0,s0
62fc0e88:	3b45                	jal	62fc0c38 <qcc74x_sflash_set_32bits_addr_mode>
62fc0e8a:	00044783          	lbu	a5,0(s0) # 4000000 <remain_wifi_ram+0x3fe0000>
62fc0e8e:	8bbd                	andi	a5,a5,15
62fc0e90:	17f9                	addi	a5,a5,-2
62fc0e92:	0fd7f793          	andi	a5,a5,253
62fc0e96:	e399                	bnez	a5,62fc0e9c <qcc74x_xip_sflash_state_save+0x52>
62fc0e98:	8522                	mv	a0,s0
62fc0e9a:	3b51                	jal	62fc0c2e <qcc74x_sflash_qspi_enable>
62fc0e9c:	8522                	mv	a0,s0
62fc0e9e:	337d                	jal	62fc0c4c <qcc74x_sflash_disable_burst_wrap>
62fc0ea0:	85a6                	mv	a1,s1
62fc0ea2:	854a                	mv	a0,s2
62fc0ea4:	33b9                	jal	62fc0bf2 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0ea6:	00a9a023          	sw	a0,0(s3)
62fc0eaa:	8626                	mv	a2,s1
62fc0eac:	85ca                	mv	a1,s2
62fc0eae:	4501                	li	a0,0
62fc0eb0:	33ad                	jal	62fc0c1a <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0eb2:	50b2                	lw	ra,44(sp)
62fc0eb4:	5422                	lw	s0,40(sp)
62fc0eb6:	5492                	lw	s1,36(sp)
62fc0eb8:	5902                	lw	s2,32(sp)
62fc0eba:	49f2                	lw	s3,28(sp)
62fc0ebc:	4501                	li	a0,0
62fc0ebe:	6145                	addi	sp,sp,48
62fc0ec0:	8082                	ret

62fc0ec2 <GLB_Set_Flash_Id_Value>:
62fc0ec2:	010007b7          	lui	a5,0x1000
62fc0ec6:	17fd                	addi	a5,a5,-1
62fc0ec8:	8d7d                	and	a0,a0,a5
62fc0eca:	5a0007b7          	lui	a5,0x5a000
62fc0ece:	8d5d                	or	a0,a0,a5
62fc0ed0:	200007b7          	lui	a5,0x20000
62fc0ed4:	5ca7a223          	sw	a0,1476(a5) # 200005c4 <remain_wifi_ram+0x1ffe05c4>
62fc0ed8:	4501                	li	a0,0
62fc0eda:	8082                	ret

62fc0edc <GLB_Get_Flash_Id_Value>:
62fc0edc:	200007b7          	lui	a5,0x20000
62fc0ee0:	5c47a703          	lw	a4,1476(a5) # 200005c4 <remain_wifi_ram+0x1ffe05c4>
62fc0ee4:	7f0007b7          	lui	a5,0x7f000
62fc0ee8:	5a0006b7          	lui	a3,0x5a000
62fc0eec:	8ff9                	and	a5,a5,a4
62fc0eee:	4501                	li	a0,0
62fc0ef0:	00d79663          	bne	a5,a3,62fc0efc <GLB_Get_Flash_Id_Value+0x20>
62fc0ef4:	01000537          	lui	a0,0x1000
62fc0ef8:	157d                	addi	a0,a0,-1
62fc0efa:	8d79                	and	a0,a0,a4
62fc0efc:	8082                	ret

62fc0efe <GLB_Get_Package_Type>:
62fc0efe:	200567b7          	lui	a5,0x20056
62fc0f02:	4f88                	lw	a0,24(a5)
62fc0f04:	5d65350b          	extu	a0,a0,23,22
62fc0f08:	8082                	ret

62fc0f0a <GLB_GPIO_Pad_LeadOut_Sts>:
62fc0f0a:	1141                	addi	sp,sp,-16
62fc0f0c:	c422                	sw	s0,8(sp)
62fc0f0e:	c606                	sw	ra,12(sp)
62fc0f10:	842a                	mv	s0,a0
62fc0f12:	37f5                	jal	62fc0efe <GLB_Get_Package_Type>
62fc0f14:	4789                	li	a5,2
62fc0f16:	02f50563          	beq	a0,a5,62fc0f40 <GLB_GPIO_Pad_LeadOut_Sts+0x36>
62fc0f1a:	47f9                	li	a5,30
62fc0f1c:	4505                	li	a0,1
62fc0f1e:	0087eb63          	bltu	a5,s0,62fc0f34 <GLB_GPIO_Pad_LeadOut_Sts+0x2a>
62fc0f22:	78740537          	lui	a0,0x78740
62fc0f26:	c0f50513          	addi	a0,a0,-1009 # 7873fc0f <__HeapLimit+0x1570fc0f>
62fc0f2a:	00855533          	srl	a0,a0,s0
62fc0f2e:	fff54513          	not	a0,a0
62fc0f32:	8905                	andi	a0,a0,1
62fc0f34:	00154513          	xori	a0,a0,1
62fc0f38:	40b2                	lw	ra,12(sp)
62fc0f3a:	4422                	lw	s0,8(sp)
62fc0f3c:	0141                	addi	sp,sp,16
62fc0f3e:	8082                	ret
62fc0f40:	4505                	li	a0,1
62fc0f42:	bfdd                	j	62fc0f38 <GLB_GPIO_Pad_LeadOut_Sts+0x2e>

62fc0f44 <HBN_Get_Xtal_Value>:
62fc0f44:	cd2d                	beqz	a0,62fc0fbe <HBN_Get_Xtal_Value+0x7a>
62fc0f46:	2000f7b7          	lui	a5,0x2000f
62fc0f4a:	10c7a783          	lw	a5,268(a5) # 2000f10c <remain_wifi_ram+0x1ffef10c>
62fc0f4e:	4721                	li	a4,8
62fc0f50:	1c47b68b          	extu	a3,a5,7,4
62fc0f54:	06e69363          	bne	a3,a4,62fc0fba <HBN_Get_Xtal_Value+0x76>
62fc0f58:	8bbd                	andi	a5,a5,15
62fc0f5a:	4711                	li	a4,4
62fc0f5c:	04e78563          	beq	a5,a4,62fc0fa6 <HBN_Get_Xtal_Value+0x62>
62fc0f60:	00f76f63          	bltu	a4,a5,62fc0f7e <HBN_Get_Xtal_Value+0x3a>
62fc0f64:	4709                	li	a4,2
62fc0f66:	02e78263          	beq	a5,a4,62fc0f8a <HBN_Get_Xtal_Value+0x46>
62fc0f6a:	470d                	li	a4,3
62fc0f6c:	02e78a63          	beq	a5,a4,62fc0fa0 <HBN_Get_Xtal_Value+0x5c>
62fc0f70:	4705                	li	a4,1
62fc0f72:	02e78163          	beq	a5,a4,62fc0f94 <HBN_Get_Xtal_Value+0x50>
62fc0f76:	00052023          	sw	zero,0(a0)
62fc0f7a:	4501                	li	a0,0
62fc0f7c:	8082                	ret
62fc0f7e:	4715                	li	a4,5
62fc0f80:	02e78863          	beq	a5,a4,62fc0fb0 <HBN_Get_Xtal_Value+0x6c>
62fc0f84:	4719                	li	a4,6
62fc0f86:	fee798e3          	bne	a5,a4,62fc0f76 <HBN_Get_Xtal_Value+0x32>
62fc0f8a:	01e857b7          	lui	a5,0x1e85
62fc0f8e:	80078793          	addi	a5,a5,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc0f92:	a029                	j	62fc0f9c <HBN_Get_Xtal_Value+0x58>
62fc0f94:	016e37b7          	lui	a5,0x16e3
62fc0f98:	60078793          	addi	a5,a5,1536 # 16e3600 <remain_wifi_ram+0x16c3600>
62fc0f9c:	c11c                	sw	a5,0(a0)
62fc0f9e:	bff1                	j	62fc0f7a <HBN_Get_Xtal_Value+0x36>
62fc0fa0:	0249f7b7          	lui	a5,0x249f
62fc0fa4:	bfe5                	j	62fc0f9c <HBN_Get_Xtal_Value+0x58>
62fc0fa6:	026267b7          	lui	a5,0x2626
62fc0faa:	a0078793          	addi	a5,a5,-1536 # 2625a00 <remain_wifi_ram+0x2605a00>
62fc0fae:	b7fd                	j	62fc0f9c <HBN_Get_Xtal_Value+0x58>
62fc0fb0:	018cc7b7          	lui	a5,0x18cc
62fc0fb4:	a8078793          	addi	a5,a5,-1408 # 18cba80 <remain_wifi_ram+0x18aba80>
62fc0fb8:	b7d5                	j	62fc0f9c <HBN_Get_Xtal_Value+0x58>
62fc0fba:	00052023          	sw	zero,0(a0)
62fc0fbe:	4505                	li	a0,1
62fc0fc0:	8082                	ret
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
62fc1164:	a0008737          	lui	a4,0xa0008
62fc1168:	3f870713          	addi	a4,a4,1016 # a00083f8 <__psram_limit+0xf7c083f8>
62fc116c:	c418                	sw	a4,8(s0)
62fc116e:	4709                	li	a4,2
62fc1170:	0ee78363          	beq	a5,a4,62fc1256 <qcc74x_efuse_get_device_info+0x138>
62fc1174:	02f76a63          	bltu	a4,a5,62fc11a8 <qcc74x_efuse_get_device_info+0x8a>
62fc1178:	c3b9                	beqz	a5,62fc11be <qcc74x_efuse_get_device_info+0xa0>
62fc117a:	4705                	li	a4,1
62fc117c:	0ce78863          	beq	a5,a4,62fc124c <qcc74x_efuse_get_device_info+0x12e>
62fc1180:	a00087b7          	lui	a5,0xa0008
62fc1184:	41078793          	addi	a5,a5,1040 # a0008410 <__psram_limit+0xf7c08410>
62fc1188:	a83d                	j	62fc11c6 <qcc74x_efuse_get_device_info+0xa8>
62fc118a:	a0008737          	lui	a4,0xa0008
62fc118e:	40070713          	addi	a4,a4,1024 # a0008400 <__psram_limit+0xf7c08400>
62fc1192:	bfe9                	j	62fc116c <qcc74x_efuse_get_device_info+0x4e>
62fc1194:	a0008737          	lui	a4,0xa0008
62fc1198:	40870713          	addi	a4,a4,1032 # a0008408 <__psram_limit+0xf7c08408>
62fc119c:	bfc1                	j	62fc116c <qcc74x_efuse_get_device_info+0x4e>
62fc119e:	a0008737          	lui	a4,0xa0008
62fc11a2:	41070713          	addi	a4,a4,1040 # a0008410 <__psram_limit+0xf7c08410>
62fc11a6:	b7d9                	j	62fc116c <qcc74x_efuse_get_device_info+0x4e>
62fc11a8:	470d                	li	a4,3
62fc11aa:	0ae78b63          	beq	a5,a4,62fc1260 <qcc74x_efuse_get_device_info+0x142>
62fc11ae:	4711                	li	a4,4
62fc11b0:	fce798e3          	bne	a5,a4,62fc1180 <qcc74x_efuse_get_device_info+0x62>
62fc11b4:	a00087b7          	lui	a5,0xa0008
62fc11b8:	42478793          	addi	a5,a5,1060 # a0008424 <__psram_limit+0xf7c08424>
62fc11bc:	a029                	j	62fc11c6 <qcc74x_efuse_get_device_info+0xa8>
62fc11be:	a00087b7          	lui	a5,0xa0008
62fc11c2:	41878793          	addi	a5,a5,1048 # a0008418 <__psram_limit+0xf7c08418>
62fc11c6:	c45c                	sw	a5,12(s0)
62fc11c8:	4789                	li	a5,2
62fc11ca:	0af68563          	beq	a3,a5,62fc1274 <qcc74x_efuse_get_device_info+0x156>
62fc11ce:	478d                	li	a5,3
62fc11d0:	0af68763          	beq	a3,a5,62fc127e <qcc74x_efuse_get_device_info+0x160>
62fc11d4:	4785                	li	a5,1
62fc11d6:	08f68a63          	beq	a3,a5,62fc126a <qcc74x_efuse_get_device_info+0x14c>
62fc11da:	a00087b7          	lui	a5,0xa0008
62fc11de:	41878793          	addi	a5,a5,1048 # a0008418 <__psram_limit+0xf7c08418>
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
62fc1234:	a00085b7          	lui	a1,0xa0008
62fc1238:	460d                	li	a2,3
62fc123a:	44058593          	addi	a1,a1,1088 # a0008440 <__psram_limit+0xf7c08440>
62fc123e:	9c2ff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc1242:	40f2                	lw	ra,28(sp)
62fc1244:	4462                	lw	s0,24(sp)
62fc1246:	44d2                	lw	s1,20(sp)
62fc1248:	6105                	addi	sp,sp,32
62fc124a:	8082                	ret
62fc124c:	a00087b7          	lui	a5,0xa0008
62fc1250:	41c78793          	addi	a5,a5,1052 # a000841c <__psram_limit+0xf7c0841c>
62fc1254:	bf8d                	j	62fc11c6 <qcc74x_efuse_get_device_info+0xa8>
62fc1256:	a00087b7          	lui	a5,0xa0008
62fc125a:	42078793          	addi	a5,a5,1056 # a0008420 <__psram_limit+0xf7c08420>
62fc125e:	b7a5                	j	62fc11c6 <qcc74x_efuse_get_device_info+0xa8>
62fc1260:	a00087b7          	lui	a5,0xa0008
62fc1264:	43c78793          	addi	a5,a5,1084 # a000843c <__psram_limit+0xf7c0843c>
62fc1268:	bfb9                	j	62fc11c6 <qcc74x_efuse_get_device_info+0xa8>
62fc126a:	a00087b7          	lui	a5,0xa0008
62fc126e:	42878793          	addi	a5,a5,1064 # a0008428 <__psram_limit+0xf7c08428>
62fc1272:	bf85                	j	62fc11e2 <qcc74x_efuse_get_device_info+0xc4>
62fc1274:	a00087b7          	lui	a5,0xa0008
62fc1278:	43078793          	addi	a5,a5,1072 # a0008430 <__psram_limit+0xf7c08430>
62fc127c:	b79d                	j	62fc11e2 <qcc74x_efuse_get_device_info+0xc4>
62fc127e:	a00087b7          	lui	a5,0xa0008
62fc1282:	43878793          	addi	a5,a5,1080 # a0008438 <__psram_limit+0xf7c08438>
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
62fc12ac:	a00085b7          	lui	a1,0xa0008
62fc12b0:	4615                	li	a2,5
62fc12b2:	44458593          	addi	a1,a1,1092 # a0008444 <__psram_limit+0xf7c08444>
62fc12b6:	84aa                	mv	s1,a0
62fc12b8:	948ff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc12bc:	06400593          	li	a1,100
62fc12c0:	8d81                	sub	a1,a1,s0
62fc12c2:	0ff5f593          	zext.b	a1,a1
62fc12c6:	00448513          	addi	a0,s1,4
62fc12ca:	350d                	jal	62fc10ec <qcc74x_efuse_print_number>
62fc12cc:	a00085b7          	lui	a1,0xa0008
62fc12d0:	4611                	li	a2,4
62fc12d2:	44c58593          	addi	a1,a1,1100 # a000844c <__psram_limit+0xf7c0844c>
62fc12d6:	b7a5                	j	62fc123e <qcc74x_efuse_get_device_info+0x120>
62fc12d8:	21c00693          	li	a3,540
62fc12dc:	00d79863          	bne	a5,a3,62fc12ec <qcc74x_efuse_get_device_info+0x1ce>
62fc12e0:	a00085b7          	lui	a1,0xa0008
62fc12e4:	460d                	li	a2,3
62fc12e6:	45058593          	addi	a1,a1,1104 # a0008450 <__psram_limit+0xf7c08450>
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
62fc1318:	a00085b7          	lui	a1,0xa0008
62fc131c:	4615                	li	a2,5
62fc131e:	44458593          	addi	a1,a1,1092 # a0008444 <__psram_limit+0xf7c08444>
62fc1322:	84aa                	mv	s1,a0
62fc1324:	8dcff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc1328:	0ff47593          	zext.b	a1,s0
62fc132c:	00448513          	addi	a0,s1,4
62fc1330:	3b75                	jal	62fc10ec <qcc74x_efuse_print_number>
62fc1332:	a00085b7          	lui	a1,0xa0008
62fc1336:	4611                	li	a2,4
62fc1338:	45458593          	addi	a1,a1,1108 # a0008454 <__psram_limit+0xf7c08454>
62fc133c:	b709                	j	62fc123e <qcc74x_efuse_get_device_info+0x120>
62fc133e:	a00085b7          	lui	a1,0xa0008
62fc1342:	460d                	li	a2,3
62fc1344:	45858593          	addi	a1,a1,1112 # a0008458 <__psram_limit+0xf7c08458>
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
62fc17b6:	bf6ff0ef          	jal	ra,62fc0bac <HBN_Get_Xtal_Type>
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
62fc193e:	a6eff0ef          	jal	ra,62fc0bac <HBN_Get_Xtal_Type>
62fc1942:	ed19                	bnez	a0,62fc1960 <Clock_Xtal_Output+0x2e>
62fc1944:	00f14703          	lbu	a4,15(sp)
62fc1948:	4799                	li	a5,6
62fc194a:	00e7e863          	bltu	a5,a4,62fc195a <Clock_Xtal_Output+0x28>
62fc194e:	a00087b7          	lui	a5,0xa0008
62fc1952:	3dc78793          	addi	a5,a5,988 # a00083dc <__psram_limit+0xf7c083dc>
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
62fc1ae6:	862ff0ef          	jal	ra,62fc0b48 <GLB_Power_On_XTAL_And_PLL_CLK>
62fc1aea:	4515                	li	a0,5
62fc1aec:	884ff0ef          	jal	ra,62fc0b70 <GLB_Set_MCU_System_CLK>
62fc1af0:	4505                	li	a0,1
62fc1af2:	8ceff0ef          	jal	ra,62fc0bc0 <HBN_Set_MCU_XCLK_Sel>
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

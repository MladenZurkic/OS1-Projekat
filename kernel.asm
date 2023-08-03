
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	6c013103          	ld	sp,1728(sp) # 8000b6c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	408060ef          	jal	ra,80006424 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	0bd010ef          	jal	ra,80002940 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret
	...

0000000080001130 <_ZN5Riscv16stvecVectorTableEv>:
.align 4
.global _ZN5Riscv16stvecVectorTableEv
.type _ZN5Riscv16stvecVectorTableEv, @function

_ZN5Riscv16stvecVectorTableEv:
    j softwareInterruptHandler
    80001130:	02c0006f          	j	8000115c <softwareInterruptHandler>
    j timerInterruptHandler
    80001134:	1380006f          	j	8000126c <timerInterruptHandler>
	...
    .skip 28
    j consoleHandler
    80001154:	2280006f          	j	8000137c <consoleHandler>
    sret
    80001158:	10200073          	sret

000000008000115c <softwareInterruptHandler>:

softwareInterruptHandler:
    addi sp, sp, -256
    8000115c:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001160:	00013023          	sd	zero,0(sp)
    80001164:	00113423          	sd	ra,8(sp)
    80001168:	00213823          	sd	sp,16(sp)
    8000116c:	00313c23          	sd	gp,24(sp)
    80001170:	02413023          	sd	tp,32(sp)
    80001174:	02513423          	sd	t0,40(sp)
    80001178:	02613823          	sd	t1,48(sp)
    8000117c:	02713c23          	sd	t2,56(sp)
    80001180:	04813023          	sd	s0,64(sp)
    80001184:	04913423          	sd	s1,72(sp)
    80001188:	04a13823          	sd	a0,80(sp)
    8000118c:	04b13c23          	sd	a1,88(sp)
    80001190:	06c13023          	sd	a2,96(sp)
    80001194:	06d13423          	sd	a3,104(sp)
    80001198:	06e13823          	sd	a4,112(sp)
    8000119c:	06f13c23          	sd	a5,120(sp)
    800011a0:	09013023          	sd	a6,128(sp)
    800011a4:	09113423          	sd	a7,136(sp)
    800011a8:	09213823          	sd	s2,144(sp)
    800011ac:	09313c23          	sd	s3,152(sp)
    800011b0:	0b413023          	sd	s4,160(sp)
    800011b4:	0b513423          	sd	s5,168(sp)
    800011b8:	0b613823          	sd	s6,176(sp)
    800011bc:	0b713c23          	sd	s7,184(sp)
    800011c0:	0d813023          	sd	s8,192(sp)
    800011c4:	0d913423          	sd	s9,200(sp)
    800011c8:	0da13823          	sd	s10,208(sp)
    800011cc:	0db13c23          	sd	s11,216(sp)
    800011d0:	0fc13023          	sd	t3,224(sp)
    800011d4:	0fd13423          	sd	t4,232(sp)
    800011d8:	0fe13823          	sd	t5,240(sp)
    800011dc:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    800011e0:	760010ef          	jal	ra,80002940 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011e4:	00013003          	ld	zero,0(sp)
    800011e8:	00813083          	ld	ra,8(sp)
    800011ec:	01013103          	ld	sp,16(sp)
    800011f0:	01813183          	ld	gp,24(sp)
    800011f4:	02013203          	ld	tp,32(sp)
    800011f8:	02813283          	ld	t0,40(sp)
    800011fc:	03013303          	ld	t1,48(sp)
    80001200:	03813383          	ld	t2,56(sp)
    80001204:	04013403          	ld	s0,64(sp)
    80001208:	04813483          	ld	s1,72(sp)
    8000120c:	05013503          	ld	a0,80(sp)
    80001210:	05813583          	ld	a1,88(sp)
    80001214:	06013603          	ld	a2,96(sp)
    80001218:	06813683          	ld	a3,104(sp)
    8000121c:	07013703          	ld	a4,112(sp)
    80001220:	07813783          	ld	a5,120(sp)
    80001224:	08013803          	ld	a6,128(sp)
    80001228:	08813883          	ld	a7,136(sp)
    8000122c:	09013903          	ld	s2,144(sp)
    80001230:	09813983          	ld	s3,152(sp)
    80001234:	0a013a03          	ld	s4,160(sp)
    80001238:	0a813a83          	ld	s5,168(sp)
    8000123c:	0b013b03          	ld	s6,176(sp)
    80001240:	0b813b83          	ld	s7,184(sp)
    80001244:	0c013c03          	ld	s8,192(sp)
    80001248:	0c813c83          	ld	s9,200(sp)
    8000124c:	0d013d03          	ld	s10,208(sp)
    80001250:	0d813d83          	ld	s11,216(sp)
    80001254:	0e013e03          	ld	t3,224(sp)
    80001258:	0e813e83          	ld	t4,232(sp)
    8000125c:	0f013f03          	ld	t5,240(sp)
    80001260:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001264:	10010113          	addi	sp,sp,256

    sret
    80001268:	10200073          	sret

000000008000126c <timerInterruptHandler>:


timerInterruptHandler:
    addi sp, sp, -256
    8000126c:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001270:	00013023          	sd	zero,0(sp)
    80001274:	00113423          	sd	ra,8(sp)
    80001278:	00213823          	sd	sp,16(sp)
    8000127c:	00313c23          	sd	gp,24(sp)
    80001280:	02413023          	sd	tp,32(sp)
    80001284:	02513423          	sd	t0,40(sp)
    80001288:	02613823          	sd	t1,48(sp)
    8000128c:	02713c23          	sd	t2,56(sp)
    80001290:	04813023          	sd	s0,64(sp)
    80001294:	04913423          	sd	s1,72(sp)
    80001298:	04a13823          	sd	a0,80(sp)
    8000129c:	04b13c23          	sd	a1,88(sp)
    800012a0:	06c13023          	sd	a2,96(sp)
    800012a4:	06d13423          	sd	a3,104(sp)
    800012a8:	06e13823          	sd	a4,112(sp)
    800012ac:	06f13c23          	sd	a5,120(sp)
    800012b0:	09013023          	sd	a6,128(sp)
    800012b4:	09113423          	sd	a7,136(sp)
    800012b8:	09213823          	sd	s2,144(sp)
    800012bc:	09313c23          	sd	s3,152(sp)
    800012c0:	0b413023          	sd	s4,160(sp)
    800012c4:	0b513423          	sd	s5,168(sp)
    800012c8:	0b613823          	sd	s6,176(sp)
    800012cc:	0b713c23          	sd	s7,184(sp)
    800012d0:	0d813023          	sd	s8,192(sp)
    800012d4:	0d913423          	sd	s9,200(sp)
    800012d8:	0da13823          	sd	s10,208(sp)
    800012dc:	0db13c23          	sd	s11,216(sp)
    800012e0:	0fc13023          	sd	t3,224(sp)
    800012e4:	0fd13423          	sd	t4,232(sp)
    800012e8:	0fe13823          	sd	t5,240(sp)
    800012ec:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleTimerInterruptEv
    800012f0:	111010ef          	jal	ra,80002c00 <_ZN5Riscv20handleTimerInterruptEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800012f4:	00013003          	ld	zero,0(sp)
    800012f8:	00813083          	ld	ra,8(sp)
    800012fc:	01013103          	ld	sp,16(sp)
    80001300:	01813183          	ld	gp,24(sp)
    80001304:	02013203          	ld	tp,32(sp)
    80001308:	02813283          	ld	t0,40(sp)
    8000130c:	03013303          	ld	t1,48(sp)
    80001310:	03813383          	ld	t2,56(sp)
    80001314:	04013403          	ld	s0,64(sp)
    80001318:	04813483          	ld	s1,72(sp)
    8000131c:	05013503          	ld	a0,80(sp)
    80001320:	05813583          	ld	a1,88(sp)
    80001324:	06013603          	ld	a2,96(sp)
    80001328:	06813683          	ld	a3,104(sp)
    8000132c:	07013703          	ld	a4,112(sp)
    80001330:	07813783          	ld	a5,120(sp)
    80001334:	08013803          	ld	a6,128(sp)
    80001338:	08813883          	ld	a7,136(sp)
    8000133c:	09013903          	ld	s2,144(sp)
    80001340:	09813983          	ld	s3,152(sp)
    80001344:	0a013a03          	ld	s4,160(sp)
    80001348:	0a813a83          	ld	s5,168(sp)
    8000134c:	0b013b03          	ld	s6,176(sp)
    80001350:	0b813b83          	ld	s7,184(sp)
    80001354:	0c013c03          	ld	s8,192(sp)
    80001358:	0c813c83          	ld	s9,200(sp)
    8000135c:	0d013d03          	ld	s10,208(sp)
    80001360:	0d813d83          	ld	s11,216(sp)
    80001364:	0e013e03          	ld	t3,224(sp)
    80001368:	0e813e83          	ld	t4,232(sp)
    8000136c:	0f013f03          	ld	t5,240(sp)
    80001370:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001374:	10010113          	addi	sp,sp,256

    sret
    80001378:	10200073          	sret

000000008000137c <consoleHandler>:


consoleHandler:
    addi sp, sp, -256
    8000137c:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001380:	00013023          	sd	zero,0(sp)
    80001384:	00113423          	sd	ra,8(sp)
    80001388:	00213823          	sd	sp,16(sp)
    8000138c:	00313c23          	sd	gp,24(sp)
    80001390:	02413023          	sd	tp,32(sp)
    80001394:	02513423          	sd	t0,40(sp)
    80001398:	02613823          	sd	t1,48(sp)
    8000139c:	02713c23          	sd	t2,56(sp)
    800013a0:	04813023          	sd	s0,64(sp)
    800013a4:	04913423          	sd	s1,72(sp)
    800013a8:	04a13823          	sd	a0,80(sp)
    800013ac:	04b13c23          	sd	a1,88(sp)
    800013b0:	06c13023          	sd	a2,96(sp)
    800013b4:	06d13423          	sd	a3,104(sp)
    800013b8:	06e13823          	sd	a4,112(sp)
    800013bc:	06f13c23          	sd	a5,120(sp)
    800013c0:	09013023          	sd	a6,128(sp)
    800013c4:	09113423          	sd	a7,136(sp)
    800013c8:	09213823          	sd	s2,144(sp)
    800013cc:	09313c23          	sd	s3,152(sp)
    800013d0:	0b413023          	sd	s4,160(sp)
    800013d4:	0b513423          	sd	s5,168(sp)
    800013d8:	0b613823          	sd	s6,176(sp)
    800013dc:	0b713c23          	sd	s7,184(sp)
    800013e0:	0d813023          	sd	s8,192(sp)
    800013e4:	0d913423          	sd	s9,200(sp)
    800013e8:	0da13823          	sd	s10,208(sp)
    800013ec:	0db13c23          	sd	s11,216(sp)
    800013f0:	0fc13023          	sd	t3,224(sp)
    800013f4:	0fd13423          	sd	t4,232(sp)
    800013f8:	0fe13823          	sd	t5,240(sp)
    800013fc:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv22handleConsoleInterruptEv
    80001400:	7d8010ef          	jal	ra,80002bd8 <_ZN5Riscv22handleConsoleInterruptEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001404:	00013003          	ld	zero,0(sp)
    80001408:	00813083          	ld	ra,8(sp)
    8000140c:	01013103          	ld	sp,16(sp)
    80001410:	01813183          	ld	gp,24(sp)
    80001414:	02013203          	ld	tp,32(sp)
    80001418:	02813283          	ld	t0,40(sp)
    8000141c:	03013303          	ld	t1,48(sp)
    80001420:	03813383          	ld	t2,56(sp)
    80001424:	04013403          	ld	s0,64(sp)
    80001428:	04813483          	ld	s1,72(sp)
    8000142c:	05013503          	ld	a0,80(sp)
    80001430:	05813583          	ld	a1,88(sp)
    80001434:	06013603          	ld	a2,96(sp)
    80001438:	06813683          	ld	a3,104(sp)
    8000143c:	07013703          	ld	a4,112(sp)
    80001440:	07813783          	ld	a5,120(sp)
    80001444:	08013803          	ld	a6,128(sp)
    80001448:	08813883          	ld	a7,136(sp)
    8000144c:	09013903          	ld	s2,144(sp)
    80001450:	09813983          	ld	s3,152(sp)
    80001454:	0a013a03          	ld	s4,160(sp)
    80001458:	0a813a83          	ld	s5,168(sp)
    8000145c:	0b013b03          	ld	s6,176(sp)
    80001460:	0b813b83          	ld	s7,184(sp)
    80001464:	0c013c03          	ld	s8,192(sp)
    80001468:	0c813c83          	ld	s9,200(sp)
    8000146c:	0d013d03          	ld	s10,208(sp)
    80001470:	0d813d83          	ld	s11,216(sp)
    80001474:	0e013e03          	ld	t3,224(sp)
    80001478:	0e813e83          	ld	t4,232(sp)
    8000147c:	0f013f03          	ld	t5,240(sp)
    80001480:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001484:	10010113          	addi	sp,sp,256

    sret
    80001488:	10200073          	sret
	...

0000000080001498 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001498:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000149c:	00b29a63          	bne	t0,a1,800014b0 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    800014a0:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    800014a4:	fe029ae3          	bnez	t0,80001498 <copy_and_swap>
    li a0, 0               # Set return to success.
    800014a8:	00000513          	li	a0,0
    jr ra                  # Return.
    800014ac:	00008067          	ret

00000000800014b0 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    800014b0:	00100513          	li	a0,1
    800014b4:	00008067          	ret

00000000800014b8 <_Z9mem_allocm>:
//void* mem_alloc(size_t size) {
//    Riscv::w_a0(size);
//    __asm__ volatile("ecall");
//}

void* mem_alloc(size_t size) {
    800014b8:	ff010113          	addi	sp,sp,-16
    800014bc:	00813423          	sd	s0,8(sp)
    800014c0:	01010413          	addi	s0,sp,16
    size_t newSize;
    if(size%MEM_BLOCK_SIZE != 0) {
    800014c4:	03f57793          	andi	a5,a0,63
    800014c8:	00078663          	beqz	a5,800014d4 <_Z9mem_allocm+0x1c>
        newSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    800014cc:	03f50513          	addi	a0,a0,63
    800014d0:	fc057513          	andi	a0,a0,-64
    }
    else {
        newSize = size;
    }

    __asm__ volatile("mv a1, %0" : : "r"(newSize));
    800014d4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01");
    800014d8:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    800014dc:	00000073          	ecall

    //check this
    void* returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800014e0:	00050513          	mv	a0,a0
    return returnValue;
}
    800014e4:	00813403          	ld	s0,8(sp)
    800014e8:	01010113          	addi	sp,sp,16
    800014ec:	00008067          	ret

00000000800014f0 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    800014f0:	ff010113          	addi	sp,sp,-16
    800014f4:	00813423          	sd	s0,8(sp)
    800014f8:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r"(ptr));
    800014fc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02");
    80001500:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    80001504:	00000073          	ecall


    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001508:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    8000150c:	0005051b          	sext.w	a0,a0
    80001510:	00813403          	ld	s0,8(sp)
    80001514:	01010113          	addi	sp,sp,16
    80001518:	00008067          	ret

000000008000151c <_Z12thread_startP3TCB>:

void thread_start(TCB* tcb) {
    8000151c:	ff010113          	addi	sp,sp,-16
    80001520:	00813423          	sd	s0,8(sp)
    80001524:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"(tcb));
    80001528:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x09");
    8000152c:	00900513          	li	a0,9
    __asm__ volatile("ecall");
    80001530:	00000073          	ecall
}
    80001534:	00813403          	ld	s0,8(sp)
    80001538:	01010113          	addi	sp,sp,16
    8000153c:	00008067          	ret

0000000080001540 <_Z27thread_create_without_startPP3TCBPFvPvES2_>:

int thread_create_without_start(thread_t* handle,
                                void (*start_routine)(void*), void* arg) {
    80001540:	ff010113          	addi	sp,sp,-16
    80001544:	00813423          	sd	s0,8(sp)
    80001548:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a7, %0" : : "r"(arg));
    8000154c:	00060893          	mv	a7,a2
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    80001550:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    80001554:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x10");
    80001558:	01000513          	li	a0,16
    __asm__ volatile("ecall");
    8000155c:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001560:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001564:	0005051b          	sext.w	a0,a0
    80001568:	00813403          	ld	s0,8(sp)
    8000156c:	01010113          	addi	sp,sp,16
    80001570:	00008067          	ret

0000000080001574 <_Z13thread_createPP3TCBPFvPvES2_>:


int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    80001574:	ff010113          	addi	sp,sp,-16
    80001578:	00813423          	sd	s0,8(sp)
    8000157c:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a7, %0" : : "r"(arg));
    80001580:	00060893          	mv	a7,a2
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    80001584:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    80001588:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x11");
    8000158c:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    80001590:	00000073          	ecall

    uint64 returnValue; //bio je uint64 ali vrednosti mogu da budu i negativne
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001594:	00050513          	mv	a0,a0
    //if(returnValue == (uint32)4294967295) { //maxint
      //  return -1;
    //} //Ne mora izgleda da se ovo radi
    return (int)returnValue;
}
    80001598:	0005051b          	sext.w	a0,a0
    8000159c:	00813403          	ld	s0,8(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret

00000000800015a8 <_Z11thread_exitv>:

int thread_exit() {
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00813423          	sd	s0,8(sp)
    800015b0:	01010413          	addi	s0,sp,16
    return a0;
}


inline void Riscv::w_a0(uint64 writeValue) {
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    800015b4:	01200793          	li	a5,18
    800015b8:	00078513          	mv	a0,a5
    Riscv::w_a0(0x12);
    __asm__ volatile ("ecall");
    800015bc:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800015c0:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800015c4:	0005051b          	sext.w	a0,a0
    800015c8:	00813403          	ld	s0,8(sp)
    800015cc:	01010113          	addi	sp,sp,16
    800015d0:	00008067          	ret

00000000800015d4 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800015d4:	ff010113          	addi	sp,sp,-16
    800015d8:	00813423          	sd	s0,8(sp)
    800015dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800015e0:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    800015e4:	00000073          	ecall

}
    800015e8:	00813403          	ld	s0,8(sp)
    800015ec:	01010113          	addi	sp,sp,16
    800015f0:	00008067          	ret

00000000800015f4 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00813423          	sd	s0,8(sp)
    800015fc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001600:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x14");
    80001604:	01400513          	li	a0,20
    __asm__ volatile ("ecall");
    80001608:	00000073          	ecall
}
    8000160c:	00813403          	ld	s0,8(sp)
    80001610:	01010113          	addi	sp,sp,16
    80001614:	00008067          	ret

0000000080001618 <_Z8sem_openPP11MySemaphorej>:


int sem_open(sem_t* handle, unsigned init) {
    80001618:	ff010113          	addi	sp,sp,-16
    8000161c:	00813423          	sd	s0,8(sp)
    80001620:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    80001624:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001628:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000162c:	02100513          	li	a0,33
    __asm__ volatile ("ecall");
    80001630:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001634:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001638:	0005051b          	sext.w	a0,a0
    8000163c:	00813403          	ld	s0,8(sp)
    80001640:	01010113          	addi	sp,sp,16
    80001644:	00008067          	ret

0000000080001648 <_Z9sem_closeP11MySemaphore>:

int sem_close(sem_t handle) {
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00813423          	sd	s0,8(sp)
    80001650:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001654:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80001658:	02200513          	li	a0,34
    __asm__ volatile ("ecall");
    8000165c:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001660:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001664:	0005051b          	sext.w	a0,a0
    80001668:	00813403          	ld	s0,8(sp)
    8000166c:	01010113          	addi	sp,sp,16
    80001670:	00008067          	ret

0000000080001674 <_Z8sem_waitP11MySemaphore>:

int sem_wait(sem_t id) {
    80001674:	ff010113          	addi	sp,sp,-16
    80001678:	00813423          	sd	s0,8(sp)
    8000167c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001680:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80001684:	02300513          	li	a0,35
    __asm__ volatile ("ecall");
    80001688:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    8000168c:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001690:	0005051b          	sext.w	a0,a0
    80001694:	00813403          	ld	s0,8(sp)
    80001698:	01010113          	addi	sp,sp,16
    8000169c:	00008067          	ret

00000000800016a0 <_Z10sem_signalP11MySemaphore>:

int sem_signal(sem_t id) {
    800016a0:	ff010113          	addi	sp,sp,-16
    800016a4:	00813423          	sd	s0,8(sp)
    800016a8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800016ac:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800016b0:	02400513          	li	a0,36
    __asm__ volatile ("ecall");
    800016b4:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800016b8:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800016bc:	0005051b          	sext.w	a0,a0
    800016c0:	00813403          	ld	s0,8(sp)
    800016c4:	01010113          	addi	sp,sp,16
    800016c8:	00008067          	ret

00000000800016cc <_Z4getcv>:

char getc() {
    800016cc:	ff010113          	addi	sp,sp,-16
    800016d0:	00813423          	sd	s0,8(sp)
    800016d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800016d8:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    800016dc:	00000073          	ecall

    char returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800016e0:	00050513          	mv	a0,a0
    return returnValue;
}
    800016e4:	0ff57513          	andi	a0,a0,255
    800016e8:	00813403          	ld	s0,8(sp)
    800016ec:	01010113          	addi	sp,sp,16
    800016f0:	00008067          	ret

00000000800016f4 <_Z4putcc>:

void putc(char c) {
    800016f4:	ff010113          	addi	sp,sp,-16
    800016f8:	00813423          	sd	s0,8(sp)
    800016fc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    80001700:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001704:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    80001708:	00000073          	ecall
}
    8000170c:	00813403          	ld	s0,8(sp)
    80001710:	01010113          	addi	sp,sp,16
    80001714:	00008067          	ret

0000000080001718 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    80001718:	ff010113          	addi	sp,sp,-16
    8000171c:	00813423          	sd	s0,8(sp)
    80001720:	01010413          	addi	s0,sp,16
    return 0;
    80001724:	00000513          	li	a0,0
    80001728:	00813403          	ld	s0,8(sp)
    8000172c:	01010113          	addi	sp,sp,16
    80001730:	00008067          	ret

0000000080001734 <_ZN11MySemaphore4waitEv>:
#include "../h/mySemaphore.hpp"
#include "../h/syscall_c.hpp"

int MySemaphore::wait() {
    if(this->closed) {
    80001734:	00054783          	lbu	a5,0(a0)
    80001738:	0a079c63          	bnez	a5,800017f0 <_ZN11MySemaphore4waitEv+0xbc>
int MySemaphore::wait() {
    8000173c:	fe010113          	addi	sp,sp,-32
    80001740:	00113c23          	sd	ra,24(sp)
    80001744:	00813823          	sd	s0,16(sp)
    80001748:	00913423          	sd	s1,8(sp)
    8000174c:	01213023          	sd	s2,0(sp)
    80001750:	02010413          	addi	s0,sp,32
    80001754:	00050493          	mv	s1,a0
        return -1;
    }

    if((int)--this->value < 0) {
    80001758:	00452783          	lw	a5,4(a0)
    8000175c:	fff7879b          	addiw	a5,a5,-1
    80001760:	00f52223          	sw	a5,4(a0)
    80001764:	02079713          	slli	a4,a5,0x20
    80001768:	02074063          	bltz	a4,80001788 <_ZN11MySemaphore4waitEv+0x54>
        //Provera da li smo se vratili jer je bio signal() ili je bio close()
        if(this->closed) {
            return -1;
        }
    }
    return 0;
    8000176c:	00000513          	li	a0,0
}
    80001770:	01813083          	ld	ra,24(sp)
    80001774:	01013403          	ld	s0,16(sp)
    80001778:	00813483          	ld	s1,8(sp)
    8000177c:	00013903          	ld	s2,0(sp)
    80001780:	02010113          	addi	sp,sp,32
    80001784:	00008067          	ret
        this->blocked.addLast(TCB::running);
    80001788:	0000a797          	auipc	a5,0xa
    8000178c:	f587b783          	ld	a5,-168(a5) # 8000b6e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001790:	0007b903          	ld	s2,0(a5)
            }
            else {
                newSize = size;
            }

            return MemoryAllocator::mem_alloc(newSize);
    80001794:	04000513          	li	a0,64
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	a48080e7          	jalr	-1464(ra) # 800021e0 <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800017a0:	01253023          	sd	s2,0(a0)
    800017a4:	00053423          	sd	zero,8(a0)
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
    800017a8:	0104b783          	ld	a5,16(s1)
    800017ac:	02078c63          	beqz	a5,800017e4 <_ZN11MySemaphore4waitEv+0xb0>
        {
            tail->next = elem;
    800017b0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800017b4:	00a4b823          	sd	a0,16(s1)
        TCB::running->setBlocked(true);
    800017b8:	0000a797          	auipc	a5,0xa
    800017bc:	f287b783          	ld	a5,-216(a5) # 8000b6e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800017c0:	0007b783          	ld	a5,0(a5)

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return this->blocked; }

    void setBlocked(bool value) { this->blocked = value; }
    800017c4:	00100713          	li	a4,1
    800017c8:	02e780a3          	sb	a4,33(a5)
        thread_dispatch();
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	e08080e7          	jalr	-504(ra) # 800015d4 <_Z15thread_dispatchv>
        if(this->closed) {
    800017d4:	0004c783          	lbu	a5,0(s1)
    800017d8:	02079063          	bnez	a5,800017f8 <_ZN11MySemaphore4waitEv+0xc4>
    return 0;
    800017dc:	00000513          	li	a0,0
    800017e0:	f91ff06f          	j	80001770 <_ZN11MySemaphore4waitEv+0x3c>
        } else
        {
            head = tail = elem;
    800017e4:	00a4b823          	sd	a0,16(s1)
    800017e8:	00a4b423          	sd	a0,8(s1)
    800017ec:	fcdff06f          	j	800017b8 <_ZN11MySemaphore4waitEv+0x84>
        return -1;
    800017f0:	fff00513          	li	a0,-1
}
    800017f4:	00008067          	ret
            return -1;
    800017f8:	fff00513          	li	a0,-1
    800017fc:	f75ff06f          	j	80001770 <_ZN11MySemaphore4waitEv+0x3c>

0000000080001800 <_ZN11MySemaphore6signalEv>:

int MySemaphore::signal() {
    if(this->closed) {
    80001800:	00054783          	lbu	a5,0(a0)
    80001804:	08079863          	bnez	a5,80001894 <_ZN11MySemaphore6signalEv+0x94>
    80001808:	00050713          	mv	a4,a0
        return -1;
    }
    if((int)++this->value <= 0) {
    8000180c:	00452783          	lw	a5,4(a0)
    80001810:	0017879b          	addiw	a5,a5,1
    80001814:	00f52223          	sw	a5,4(a0)
    80001818:	0007879b          	sext.w	a5,a5
    8000181c:	00f05663          	blez	a5,80001828 <_ZN11MySemaphore6signalEv+0x28>
        TCB* tcb;
        tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    }
    return 0;
    80001820:	00000513          	li	a0,0
}
    80001824:	00008067          	ret
int MySemaphore::signal() {
    80001828:	fe010113          	addi	sp,sp,-32
    8000182c:	00113c23          	sd	ra,24(sp)
    80001830:	00813823          	sd	s0,16(sp)
    80001834:	00913423          	sd	s1,8(sp)
    80001838:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000183c:	00853503          	ld	a0,8(a0)
    80001840:	04050663          	beqz	a0,8000188c <_ZN11MySemaphore6signalEv+0x8c>

        Elem *elem = head;
        head = head->next;
    80001844:	00853783          	ld	a5,8(a0)
    80001848:	00f73423          	sd	a5,8(a4)
        if (!head) { tail = 0; }
    8000184c:	02078c63          	beqz	a5,80001884 <_ZN11MySemaphore6signalEv+0x84>

        T *ret = elem->data;
    80001850:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80001854:	00001097          	auipc	ra,0x1
    80001858:	b74080e7          	jalr	-1164(ra) # 800023c8 <_ZN15MemoryAllocator8mem_freeEPv>
    8000185c:	020480a3          	sb	zero,33(s1)
        Scheduler::put(tcb);
    80001860:	00048513          	mv	a0,s1
    80001864:	00001097          	auipc	ra,0x1
    80001868:	464080e7          	jalr	1124(ra) # 80002cc8 <_ZN9Scheduler3putEP3TCB>
    return 0;
    8000186c:	00000513          	li	a0,0
}
    80001870:	01813083          	ld	ra,24(sp)
    80001874:	01013403          	ld	s0,16(sp)
    80001878:	00813483          	ld	s1,8(sp)
    8000187c:	02010113          	addi	sp,sp,32
    80001880:	00008067          	ret
        if (!head) { tail = 0; }
    80001884:	00073823          	sd	zero,16(a4)
    80001888:	fc9ff06f          	j	80001850 <_ZN11MySemaphore6signalEv+0x50>
        if (!head) { return 0; }
    8000188c:	00050493          	mv	s1,a0
    80001890:	fcdff06f          	j	8000185c <_ZN11MySemaphore6signalEv+0x5c>
        return -1;
    80001894:	fff00513          	li	a0,-1
    80001898:	00008067          	ret

000000008000189c <_ZN11MySemaphore15createSemaphoreEj>:

MySemaphore *MySemaphore::createSemaphore(unsigned int init) {
    8000189c:	fe010113          	addi	sp,sp,-32
    800018a0:	00113c23          	sd	ra,24(sp)
    800018a4:	00813823          	sd	s0,16(sp)
    800018a8:	00913423          	sd	s1,8(sp)
    800018ac:	02010413          	addi	s0,sp,32
    800018b0:	00050493          	mv	s1,a0
        }
        else {
            newSize = size;
        }

        return MemoryAllocator::mem_alloc(newSize);
    800018b4:	04000513          	li	a0,64
    800018b8:	00001097          	auipc	ra,0x1
    800018bc:	928080e7          	jalr	-1752(ra) # 800021e0 <_ZN15MemoryAllocator9mem_allocEm>
    List() : head(0), tail(0) {}
    800018c0:	00053423          	sd	zero,8(a0)
    800018c4:	00053823          	sd	zero,16(a0)
        this->value = init;
    800018c8:	00952223          	sw	s1,4(a0)
        this->closed = false;
    800018cc:	00050023          	sb	zero,0(a0)
    return new MySemaphore(init);
}
    800018d0:	01813083          	ld	ra,24(sp)
    800018d4:	01013403          	ld	s0,16(sp)
    800018d8:	00813483          	ld	s1,8(sp)
    800018dc:	02010113          	addi	sp,sp,32
    800018e0:	00008067          	ret

00000000800018e4 <_ZN11MySemaphore5closeEv>:

int MySemaphore::close() {
    if (closed) {
    800018e4:	00054783          	lbu	a5,0(a0)
    800018e8:	06079663          	bnez	a5,80001954 <_ZN11MySemaphore5closeEv+0x70>
int MySemaphore::close() {
    800018ec:	fe010113          	addi	sp,sp,-32
    800018f0:	00113c23          	sd	ra,24(sp)
    800018f4:	00813823          	sd	s0,16(sp)
    800018f8:	00913423          	sd	s1,8(sp)
    800018fc:	01213023          	sd	s2,0(sp)
    80001900:	02010413          	addi	s0,sp,32
    80001904:	00050493          	mv	s1,a0
        return -1;
    }
    closed = true;
    80001908:	00100793          	li	a5,1
    8000190c:	00f50023          	sb	a5,0(a0)
    80001910:	0240006f          	j	80001934 <_ZN11MySemaphore5closeEv+0x50>
        if (!head) { tail = 0; }
    80001914:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    80001918:	00053903          	ld	s2,0(a0)
            MemoryAllocator::mem_free(ptr);
    8000191c:	00001097          	auipc	ra,0x1
    80001920:	aac080e7          	jalr	-1364(ra) # 800023c8 <_ZN15MemoryAllocator8mem_freeEPv>
    80001924:	020900a3          	sb	zero,33(s2)

    while (this->blocked.peekFirst()) {
        TCB* tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    80001928:	00090513          	mv	a0,s2
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	39c080e7          	jalr	924(ra) # 80002cc8 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001934:	0084b503          	ld	a0,8(s1)
    80001938:	02050263          	beqz	a0,8000195c <_ZN11MySemaphore5closeEv+0x78>
        return head->data;
    8000193c:	00053783          	ld	a5,0(a0)
    while (this->blocked.peekFirst()) {
    80001940:	02078c63          	beqz	a5,80001978 <_ZN11MySemaphore5closeEv+0x94>
        head = head->next;
    80001944:	00853783          	ld	a5,8(a0)
    80001948:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    8000194c:	fc0796e3          	bnez	a5,80001918 <_ZN11MySemaphore5closeEv+0x34>
    80001950:	fc5ff06f          	j	80001914 <_ZN11MySemaphore5closeEv+0x30>
        return -1;
    80001954:	fff00513          	li	a0,-1
    }
    return 0;
}
    80001958:	00008067          	ret
    return 0;
    8000195c:	00000513          	li	a0,0
}
    80001960:	01813083          	ld	ra,24(sp)
    80001964:	01013403          	ld	s0,16(sp)
    80001968:	00813483          	ld	s1,8(sp)
    8000196c:	00013903          	ld	s2,0(sp)
    80001970:	02010113          	addi	sp,sp,32
    80001974:	00008067          	ret
    return 0;
    80001978:	00000513          	li	a0,0
    8000197c:	fe5ff06f          	j	80001960 <_ZN11MySemaphore5closeEv+0x7c>

0000000080001980 <_ZL9fibonaccim>:
#include "../h/syscall_c.hpp"



static uint64 fibonacci(uint64 n)
{
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00113c23          	sd	ra,24(sp)
    80001988:	00813823          	sd	s0,16(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	01213023          	sd	s2,0(sp)
    80001994:	02010413          	addi	s0,sp,32
    80001998:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000199c:	00100793          	li	a5,1
    800019a0:	02a7f663          	bgeu	a5,a0,800019cc <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) {
    800019a4:	00357793          	andi	a5,a0,3
    800019a8:	02078e63          	beqz	a5,800019e4 <_ZL9fibonaccim+0x64>
        //printString("fibonacci yield\n");
        thread_dispatch();
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
    800019ac:	fff48513          	addi	a0,s1,-1
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	fd0080e7          	jalr	-48(ra) # 80001980 <_ZL9fibonaccim>
    800019b8:	00050913          	mv	s2,a0
    800019bc:	ffe48513          	addi	a0,s1,-2
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	fc0080e7          	jalr	-64(ra) # 80001980 <_ZL9fibonaccim>
    800019c8:	00a90533          	add	a0,s2,a0
}
    800019cc:	01813083          	ld	ra,24(sp)
    800019d0:	01013403          	ld	s0,16(sp)
    800019d4:	00813483          	ld	s1,8(sp)
    800019d8:	00013903          	ld	s2,0(sp)
    800019dc:	02010113          	addi	sp,sp,32
    800019e0:	00008067          	ret
        thread_dispatch();
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	bf0080e7          	jalr	-1040(ra) # 800015d4 <_Z15thread_dispatchv>
    800019ec:	fc1ff06f          	j	800019ac <_ZL9fibonaccim+0x2c>

00000000800019f0 <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    800019f0:	fe010113          	addi	sp,sp,-32
    800019f4:	00113c23          	sd	ra,24(sp)
    800019f8:	00813823          	sd	s0,16(sp)
    800019fc:	00913423          	sd	s1,8(sp)
    80001a00:	01213023          	sd	s2,0(sp)
    80001a04:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001a08:	00000493          	li	s1,0
    80001a0c:	0400006f          	j	80001a4c <_Z11workerBodyAPv+0x5c>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001a10:	00007517          	auipc	a0,0x7
    80001a14:	61050513          	addi	a0,a0,1552 # 80009020 <CONSOLE_STATUS+0x10>
    80001a18:	00003097          	auipc	ra,0x3
    80001a1c:	7c8080e7          	jalr	1992(ra) # 800051e0 <_Z11printStringPKc>
        printInt(i);
    80001a20:	00000613          	li	a2,0
    80001a24:	00a00593          	li	a1,10
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	00004097          	auipc	ra,0x4
    80001a30:	964080e7          	jalr	-1692(ra) # 80005390 <_Z8printIntiii>
        printString("\n");
    80001a34:	00007517          	auipc	a0,0x7
    80001a38:	77450513          	addi	a0,a0,1908 # 800091a8 <CONSOLE_STATUS+0x198>
    80001a3c:	00003097          	auipc	ra,0x3
    80001a40:	7a4080e7          	jalr	1956(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001a44:	0014849b          	addiw	s1,s1,1
    80001a48:	0ff4f493          	andi	s1,s1,255
    80001a4c:	00200793          	li	a5,2
    80001a50:	fc97f0e3          	bgeu	a5,s1,80001a10 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001a54:	00007517          	auipc	a0,0x7
    80001a58:	5d450513          	addi	a0,a0,1492 # 80009028 <CONSOLE_STATUS+0x18>
    80001a5c:	00003097          	auipc	ra,0x3
    80001a60:	784080e7          	jalr	1924(ra) # 800051e0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001a64:	00700313          	li	t1,7
    thread_dispatch();
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	b6c080e7          	jalr	-1172(ra) # 800015d4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001a70:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001a74:	00007517          	auipc	a0,0x7
    80001a78:	5c450513          	addi	a0,a0,1476 # 80009038 <CONSOLE_STATUS+0x28>
    80001a7c:	00003097          	auipc	ra,0x3
    80001a80:	764080e7          	jalr	1892(ra) # 800051e0 <_Z11printStringPKc>
    printInt(t1);
    80001a84:	00000613          	li	a2,0
    80001a88:	00a00593          	li	a1,10
    80001a8c:	0009051b          	sext.w	a0,s2
    80001a90:	00004097          	auipc	ra,0x4
    80001a94:	900080e7          	jalr	-1792(ra) # 80005390 <_Z8printIntiii>
    printString("\n");
    80001a98:	00007517          	auipc	a0,0x7
    80001a9c:	71050513          	addi	a0,a0,1808 # 800091a8 <CONSOLE_STATUS+0x198>
    80001aa0:	00003097          	auipc	ra,0x3
    80001aa4:	740080e7          	jalr	1856(ra) # 800051e0 <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    80001aa8:	01400513          	li	a0,20
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	ed4080e7          	jalr	-300(ra) # 80001980 <_ZL9fibonaccim>
    80001ab4:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001ab8:	00007517          	auipc	a0,0x7
    80001abc:	58850513          	addi	a0,a0,1416 # 80009040 <CONSOLE_STATUS+0x30>
    80001ac0:	00003097          	auipc	ra,0x3
    80001ac4:	720080e7          	jalr	1824(ra) # 800051e0 <_Z11printStringPKc>
    printInt(result);
    80001ac8:	00000613          	li	a2,0
    80001acc:	00a00593          	li	a1,10
    80001ad0:	0009051b          	sext.w	a0,s2
    80001ad4:	00004097          	auipc	ra,0x4
    80001ad8:	8bc080e7          	jalr	-1860(ra) # 80005390 <_Z8printIntiii>
    printString("\n");
    80001adc:	00007517          	auipc	a0,0x7
    80001ae0:	6cc50513          	addi	a0,a0,1740 # 800091a8 <CONSOLE_STATUS+0x198>
    80001ae4:	00003097          	auipc	ra,0x3
    80001ae8:	6fc080e7          	jalr	1788(ra) # 800051e0 <_Z11printStringPKc>
    80001aec:	0400006f          	j	80001b2c <_Z11workerBodyAPv+0x13c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001af0:	00007517          	auipc	a0,0x7
    80001af4:	53050513          	addi	a0,a0,1328 # 80009020 <CONSOLE_STATUS+0x10>
    80001af8:	00003097          	auipc	ra,0x3
    80001afc:	6e8080e7          	jalr	1768(ra) # 800051e0 <_Z11printStringPKc>
        printInt(i);
    80001b00:	00000613          	li	a2,0
    80001b04:	00a00593          	li	a1,10
    80001b08:	00048513          	mv	a0,s1
    80001b0c:	00004097          	auipc	ra,0x4
    80001b10:	884080e7          	jalr	-1916(ra) # 80005390 <_Z8printIntiii>
        printString("\n");
    80001b14:	00007517          	auipc	a0,0x7
    80001b18:	69450513          	addi	a0,a0,1684 # 800091a8 <CONSOLE_STATUS+0x198>
    80001b1c:	00003097          	auipc	ra,0x3
    80001b20:	6c4080e7          	jalr	1732(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001b24:	0014849b          	addiw	s1,s1,1
    80001b28:	0ff4f493          	andi	s1,s1,255
    80001b2c:	00500793          	li	a5,5
    80001b30:	fc97f0e3          	bgeu	a5,s1,80001af0 <_Z11workerBodyAPv+0x100>
    }

    thread_dispatch();
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	aa0080e7          	jalr	-1376(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80001b3c:	01813083          	ld	ra,24(sp)
    80001b40:	01013403          	ld	s0,16(sp)
    80001b44:	00813483          	ld	s1,8(sp)
    80001b48:	00013903          	ld	s2,0(sp)
    80001b4c:	02010113          	addi	sp,sp,32
    80001b50:	00008067          	ret

0000000080001b54 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    80001b54:	fe010113          	addi	sp,sp,-32
    80001b58:	00113c23          	sd	ra,24(sp)
    80001b5c:	00813823          	sd	s0,16(sp)
    80001b60:	00913423          	sd	s1,8(sp)
    80001b64:	01213023          	sd	s2,0(sp)
    80001b68:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    thread_join((thread_t) arg);
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	a88080e7          	jalr	-1400(ra) # 800015f4 <_Z11thread_joinP3TCB>
    uint8 i = 10;
    80001b74:	00a00493          	li	s1,10
    80001b78:	0400006f          	j	80001bb8 <_Z11workerBodyBPv+0x64>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001b7c:	00007517          	auipc	a0,0x7
    80001b80:	4d450513          	addi	a0,a0,1236 # 80009050 <CONSOLE_STATUS+0x40>
    80001b84:	00003097          	auipc	ra,0x3
    80001b88:	65c080e7          	jalr	1628(ra) # 800051e0 <_Z11printStringPKc>
        printInt(i);
    80001b8c:	00000613          	li	a2,0
    80001b90:	00a00593          	li	a1,10
    80001b94:	00048513          	mv	a0,s1
    80001b98:	00003097          	auipc	ra,0x3
    80001b9c:	7f8080e7          	jalr	2040(ra) # 80005390 <_Z8printIntiii>
        printString("\n");
    80001ba0:	00007517          	auipc	a0,0x7
    80001ba4:	60850513          	addi	a0,a0,1544 # 800091a8 <CONSOLE_STATUS+0x198>
    80001ba8:	00003097          	auipc	ra,0x3
    80001bac:	638080e7          	jalr	1592(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001bb0:	0014849b          	addiw	s1,s1,1
    80001bb4:	0ff4f493          	andi	s1,s1,255
    80001bb8:	00c00793          	li	a5,12
    80001bbc:	fc97f0e3          	bgeu	a5,s1,80001b7c <_Z11workerBodyBPv+0x28>
    }

    printString("B: yield\n");
    80001bc0:	00007517          	auipc	a0,0x7
    80001bc4:	49850513          	addi	a0,a0,1176 # 80009058 <CONSOLE_STATUS+0x48>
    80001bc8:	00003097          	auipc	ra,0x3
    80001bcc:	618080e7          	jalr	1560(ra) # 800051e0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001bd0:	00500313          	li	t1,5
    thread_dispatch();
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	a00080e7          	jalr	-1536(ra) # 800015d4 <_Z15thread_dispatchv>


    uint64 result = fibonacci(23);
    80001bdc:	01700513          	li	a0,23
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	da0080e7          	jalr	-608(ra) # 80001980 <_ZL9fibonaccim>
    80001be8:	00050913          	mv	s2,a0
    printString("B: fibonaci=");
    80001bec:	00007517          	auipc	a0,0x7
    80001bf0:	47c50513          	addi	a0,a0,1148 # 80009068 <CONSOLE_STATUS+0x58>
    80001bf4:	00003097          	auipc	ra,0x3
    80001bf8:	5ec080e7          	jalr	1516(ra) # 800051e0 <_Z11printStringPKc>
    printInt(result);
    80001bfc:	00000613          	li	a2,0
    80001c00:	00a00593          	li	a1,10
    80001c04:	0009051b          	sext.w	a0,s2
    80001c08:	00003097          	auipc	ra,0x3
    80001c0c:	788080e7          	jalr	1928(ra) # 80005390 <_Z8printIntiii>
    printString("\n");
    80001c10:	00007517          	auipc	a0,0x7
    80001c14:	59850513          	addi	a0,a0,1432 # 800091a8 <CONSOLE_STATUS+0x198>
    80001c18:	00003097          	auipc	ra,0x3
    80001c1c:	5c8080e7          	jalr	1480(ra) # 800051e0 <_Z11printStringPKc>
    80001c20:	0400006f          	j	80001c60 <_Z11workerBodyBPv+0x10c>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001c24:	00007517          	auipc	a0,0x7
    80001c28:	42c50513          	addi	a0,a0,1068 # 80009050 <CONSOLE_STATUS+0x40>
    80001c2c:	00003097          	auipc	ra,0x3
    80001c30:	5b4080e7          	jalr	1460(ra) # 800051e0 <_Z11printStringPKc>
        printInt(i);
    80001c34:	00000613          	li	a2,0
    80001c38:	00a00593          	li	a1,10
    80001c3c:	00048513          	mv	a0,s1
    80001c40:	00003097          	auipc	ra,0x3
    80001c44:	750080e7          	jalr	1872(ra) # 80005390 <_Z8printIntiii>
        printString("\n");
    80001c48:	00007517          	auipc	a0,0x7
    80001c4c:	56050513          	addi	a0,a0,1376 # 800091a8 <CONSOLE_STATUS+0x198>
    80001c50:	00003097          	auipc	ra,0x3
    80001c54:	590080e7          	jalr	1424(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001c58:	0014849b          	addiw	s1,s1,1
    80001c5c:	0ff4f493          	andi	s1,s1,255
    80001c60:	00f00793          	li	a5,15
    80001c64:	fc97f0e3          	bgeu	a5,s1,80001c24 <_Z11workerBodyBPv+0xd0>
    }

    thread_dispatch();
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	96c080e7          	jalr	-1684(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80001c70:	01813083          	ld	ra,24(sp)
    80001c74:	01013403          	ld	s0,16(sp)
    80001c78:	00813483          	ld	s1,8(sp)
    80001c7c:	00013903          	ld	s2,0(sp)
    80001c80:	02010113          	addi	sp,sp,32
    80001c84:	00008067          	ret

0000000080001c88 <_Z11workerBodyCPv>:

//test semafora
void workerBodyC(void* arg) {
    80001c88:	fe010113          	addi	sp,sp,-32
    80001c8c:	00113c23          	sd	ra,24(sp)
    80001c90:	00813823          	sd	s0,16(sp)
    80001c94:	00913423          	sd	s1,8(sp)
    80001c98:	02010413          	addi	s0,sp,32
    80001c9c:	00050493          	mv	s1,a0
    printString("C: poziva se dispatch1.\n");
    80001ca0:	00007517          	auipc	a0,0x7
    80001ca4:	3d850513          	addi	a0,a0,984 # 80009078 <CONSOLE_STATUS+0x68>
    80001ca8:	00003097          	auipc	ra,0x3
    80001cac:	538080e7          	jalr	1336(ra) # 800051e0 <_Z11printStringPKc>
    thread_dispatch();
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	924080e7          	jalr	-1756(ra) # 800015d4 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch2..\n");
    80001cb8:	00007517          	auipc	a0,0x7
    80001cbc:	3e050513          	addi	a0,a0,992 # 80009098 <CONSOLE_STATUS+0x88>
    80001cc0:	00003097          	auipc	ra,0x3
    80001cc4:	520080e7          	jalr	1312(ra) # 800051e0 <_Z11printStringPKc>
    thread_dispatch();
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	90c080e7          	jalr	-1780(ra) # 800015d4 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch3...\n");
    80001cd0:	00007517          	auipc	a0,0x7
    80001cd4:	3e850513          	addi	a0,a0,1000 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001cd8:	00003097          	auipc	ra,0x3
    80001cdc:	508080e7          	jalr	1288(ra) # 800051e0 <_Z11printStringPKc>
    thread_dispatch();
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	8f4080e7          	jalr	-1804(ra) # 800015d4 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch4....\n");
    80001ce8:	00007517          	auipc	a0,0x7
    80001cec:	3f050513          	addi	a0,a0,1008 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001cf0:	00003097          	auipc	ra,0x3
    80001cf4:	4f0080e7          	jalr	1264(ra) # 800051e0 <_Z11printStringPKc>
    printString("C: Signal semafora!\n");
    80001cf8:	00007517          	auipc	a0,0x7
    80001cfc:	40050513          	addi	a0,a0,1024 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001d00:	00003097          	auipc	ra,0x3
    80001d04:	4e0080e7          	jalr	1248(ra) # 800051e0 <_Z11printStringPKc>
    sem_close((sem_t) arg);
    80001d08:	00048513          	mv	a0,s1
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	93c080e7          	jalr	-1732(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
    thread_dispatch();
    80001d14:	00000097          	auipc	ra,0x0
    80001d18:	8c0080e7          	jalr	-1856(ra) # 800015d4 <_Z15thread_dispatchv>
    printString("C: posle signala..\n");
    80001d1c:	00007517          	auipc	a0,0x7
    80001d20:	3f450513          	addi	a0,a0,1012 # 80009110 <CONSOLE_STATUS+0x100>
    80001d24:	00003097          	auipc	ra,0x3
    80001d28:	4bc080e7          	jalr	1212(ra) # 800051e0 <_Z11printStringPKc>
    printString("C: posle signala.2.\n");
    80001d2c:	00007517          	auipc	a0,0x7
    80001d30:	3fc50513          	addi	a0,a0,1020 # 80009128 <CONSOLE_STATUS+0x118>
    80001d34:	00003097          	auipc	ra,0x3
    80001d38:	4ac080e7          	jalr	1196(ra) # 800051e0 <_Z11printStringPKc>
}
    80001d3c:	01813083          	ld	ra,24(sp)
    80001d40:	01013403          	ld	s0,16(sp)
    80001d44:	00813483          	ld	s1,8(sp)
    80001d48:	02010113          	addi	sp,sp,32
    80001d4c:	00008067          	ret

0000000080001d50 <_Z11workerBodyDPv>:


void workerBodyD(void *arg) {
    80001d50:	fe010113          	addi	sp,sp,-32
    80001d54:	00113c23          	sd	ra,24(sp)
    80001d58:	00813823          	sd	s0,16(sp)
    80001d5c:	00913423          	sd	s1,8(sp)
    80001d60:	02010413          	addi	s0,sp,32
    80001d64:	00050493          	mv	s1,a0
    printString("D: Usli smo u D 1. put\n");
    80001d68:	00007517          	auipc	a0,0x7
    80001d6c:	3d850513          	addi	a0,a0,984 # 80009140 <CONSOLE_STATUS+0x130>
    80001d70:	00003097          	auipc	ra,0x3
    80001d74:	470080e7          	jalr	1136(ra) # 800051e0 <_Z11printStringPKc>
    printString("D: Cekamo na semaforu..\n");
    80001d78:	00007517          	auipc	a0,0x7
    80001d7c:	3e050513          	addi	a0,a0,992 # 80009158 <CONSOLE_STATUS+0x148>
    80001d80:	00003097          	auipc	ra,0x3
    80001d84:	460080e7          	jalr	1120(ra) # 800051e0 <_Z11printStringPKc>

    int returnValue = sem_wait((sem_t) arg);
    80001d88:	00048513          	mv	a0,s1
    80001d8c:	00000097          	auipc	ra,0x0
    80001d90:	8e8080e7          	jalr	-1816(ra) # 80001674 <_Z8sem_waitP11MySemaphore>
    80001d94:	00050493          	mv	s1,a0

    printString("D: rezultat: ");
    80001d98:	00007517          	auipc	a0,0x7
    80001d9c:	3e050513          	addi	a0,a0,992 # 80009178 <CONSOLE_STATUS+0x168>
    80001da0:	00003097          	auipc	ra,0x3
    80001da4:	440080e7          	jalr	1088(ra) # 800051e0 <_Z11printStringPKc>
    printInt(returnValue);
    80001da8:	00000613          	li	a2,0
    80001dac:	00a00593          	li	a1,10
    80001db0:	00048513          	mv	a0,s1
    80001db4:	00003097          	auipc	ra,0x3
    80001db8:	5dc080e7          	jalr	1500(ra) # 80005390 <_Z8printIntiii>
    printString("\nD: izlazim automatski, pozdrav!\n");
    80001dbc:	00007517          	auipc	a0,0x7
    80001dc0:	3cc50513          	addi	a0,a0,972 # 80009188 <CONSOLE_STATUS+0x178>
    80001dc4:	00003097          	auipc	ra,0x3
    80001dc8:	41c080e7          	jalr	1052(ra) # 800051e0 <_Z11printStringPKc>
}
    80001dcc:	01813083          	ld	ra,24(sp)
    80001dd0:	01013403          	ld	s0,16(sp)
    80001dd4:	00813483          	ld	s1,8(sp)
    80001dd8:	02010113          	addi	sp,sp,32
    80001ddc:	00008067          	ret

0000000080001de0 <main>:
#include "../h/memoryAllocator.hpp"

extern void userMain();

int main()
{
    80001de0:	fc010113          	addi	sp,sp,-64
    80001de4:	02113c23          	sd	ra,56(sp)
    80001de8:	02813823          	sd	s0,48(sp)
    80001dec:	04010413          	addi	s0,sp,64

    static void tryToJoin(DataBlock* curr);

    static void initFreeBlock() {

        MemoryAllocator::free = (DataBlock*)((char*)HEAP_START_ADDR);
    80001df0:	0000a797          	auipc	a5,0xa
    80001df4:	8a87b783          	ld	a5,-1880(a5) # 8000b698 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001df8:	0007b683          	ld	a3,0(a5)
    80001dfc:	0000a717          	auipc	a4,0xa
    80001e00:	8a473703          	ld	a4,-1884(a4) # 8000b6a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001e04:	00d73023          	sd	a3,0(a4)
        used = nullptr;
    80001e08:	0000a617          	auipc	a2,0xa
    80001e0c:	8c863603          	ld	a2,-1848(a2) # 8000b6d0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001e10:	00063023          	sd	zero,0(a2)

        free->next = nullptr;
    80001e14:	0006b023          	sd	zero,0(a3)
        free->prev  = nullptr;
    80001e18:	00073703          	ld	a4,0(a4)
    80001e1c:	00073423          	sd	zero,8(a4)
        free->size = ((char*)HEAP_START_ADDR - (char*)HEAP_END_ADDR - sizeof(DataBlock)); //FOR NOW
    80001e20:	0007b783          	ld	a5,0(a5)
    80001e24:	0000a697          	auipc	a3,0xa
    80001e28:	8c46b683          	ld	a3,-1852(a3) # 8000b6e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001e2c:	0006b683          	ld	a3,0(a3)
    80001e30:	40d787b3          	sub	a5,a5,a3
    80001e34:	fe878793          	addi	a5,a5,-24
    80001e38:	00f73823          	sd	a5,16(a4)


        //testing purposes
        newCalled = 0;
    80001e3c:	0000a797          	auipc	a5,0xa
    80001e40:	89c7b783          	ld	a5,-1892(a5) # 8000b6d8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001e44:	0007a023          	sw	zero,0(a5)
        newArrayCalled = 0;
    80001e48:	0000a797          	auipc	a5,0xa
    80001e4c:	8807b783          	ld	a5,-1920(a5) # 8000b6c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001e50:	0007a023          	sw	zero,0(a5)
        deleteCalled= 0;
    80001e54:	0000a797          	auipc	a5,0xa
    80001e58:	85c7b783          	ld	a5,-1956(a5) # 8000b6b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e5c:	0007a023          	sw	zero,0(a5)
        deleteArrayCalled = 0;
    80001e60:	0000a797          	auipc	a5,0xa
    80001e64:	8587b783          	ld	a5,-1960(a5) # 8000b6b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e68:	0007a023          	sw	zero,0(a5)

    TCB *threads[5];

    MemoryAllocator::initFreeBlock();

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    80001e6c:	0000a797          	auipc	a5,0xa
    80001e70:	83c7b783          	ld	a5,-1988(a5) # 8000b6a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e74:	0017e793          	ori	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001e78:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e7c:	00200793          	li	a5,2
    80001e80:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    threads[0] = TCB::createThread(nullptr,nullptr);
    80001e84:	00000593          	li	a1,0
    80001e88:	00000513          	li	a0,0
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	0c8080e7          	jalr	200(ra) # 80001f54 <_ZN3TCB12createThreadEPFvPvES0_>
    80001e94:	fca43423          	sd	a0,-56(s0)
    TCB::running = threads[0];
    80001e98:	0000a797          	auipc	a5,0xa
    80001e9c:	8487b783          	ld	a5,-1976(a5) # 8000b6e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001ea0:	00a7b023          	sd	a0,0(a5)

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    80001ea4:	00000613          	li	a2,0
    80001ea8:	00009597          	auipc	a1,0x9
    80001eac:	7e85b583          	ld	a1,2024(a1) # 8000b690 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001eb0:	fd040513          	addi	a0,s0,-48
    80001eb4:	fffff097          	auipc	ra,0xfffff
    80001eb8:	6c0080e7          	jalr	1728(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>

    while(!threads[1]->isFinished()) {
    80001ebc:	fd043783          	ld	a5,-48(s0)
    bool isFinished() const { return finished; }
    80001ec0:	0207c783          	lbu	a5,32(a5)
    80001ec4:	00079863          	bnez	a5,80001ed4 <main+0xf4>
        thread_dispatch();
    80001ec8:	fffff097          	auipc	ra,0xfffff
    80001ecc:	70c080e7          	jalr	1804(ra) # 800015d4 <_Z15thread_dispatchv>
    80001ed0:	fedff06f          	j	80001ebc <main+0xdc>
    }


    printString("Vratio sam se u main");
    80001ed4:	00007517          	auipc	a0,0x7
    80001ed8:	2dc50513          	addi	a0,a0,732 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80001edc:	00003097          	auipc	ra,0x3
    80001ee0:	304080e7          	jalr	772(ra) # 800051e0 <_Z11printStringPKc>
    //userMain();

    return 0;
}
    80001ee4:	00000513          	li	a0,0
    80001ee8:	03813083          	ld	ra,56(sp)
    80001eec:	03013403          	ld	s0,48(sp)
    80001ef0:	04010113          	addi	sp,sp,64
    80001ef4:	00008067          	ret

0000000080001ef8 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001ef8:	fe010113          	addi	sp,sp,-32
    80001efc:	00113c23          	sd	ra,24(sp)
    80001f00:	00813823          	sd	s0,16(sp)
    80001f04:	00913423          	sd	s1,8(sp)
    80001f08:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	a14080e7          	jalr	-1516(ra) # 80002920 <_ZN5Riscv10popSppSpieEv>
    //Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    //Ovde smo uvek u niti koja nije main zar ne?

    running->body(running->arg);
    80001f14:	0000a497          	auipc	s1,0xa
    80001f18:	82c48493          	addi	s1,s1,-2004 # 8000b740 <_ZN3TCB7runningE>
    80001f1c:	0004b783          	ld	a5,0(s1)
    80001f20:	0007b703          	ld	a4,0(a5)
    80001f24:	0287b503          	ld	a0,40(a5)
    80001f28:	000700e7          	jalr	a4
    running->setFinished(true);
    80001f2c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001f30:	00100713          	li	a4,1
    80001f34:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001f38:	fffff097          	auipc	ra,0xfffff
    80001f3c:	69c080e7          	jalr	1692(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80001f40:	01813083          	ld	ra,24(sp)
    80001f44:	01013403          	ld	s0,16(sp)
    80001f48:	00813483          	ld	s1,8(sp)
    80001f4c:	02010113          	addi	sp,sp,32
    80001f50:	00008067          	ret

0000000080001f54 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80001f54:	fd010113          	addi	sp,sp,-48
    80001f58:	02113423          	sd	ra,40(sp)
    80001f5c:	02813023          	sd	s0,32(sp)
    80001f60:	00913c23          	sd	s1,24(sp)
    80001f64:	01213823          	sd	s2,16(sp)
    80001f68:	01313423          	sd	s3,8(sp)
    80001f6c:	03010413          	addi	s0,sp,48
    80001f70:	00050913          	mv	s2,a0
    80001f74:	00058993          	mv	s3,a1
        }
        else {
            newSize = size;
        }

        return MemoryAllocator::mem_alloc(newSize);
    80001f78:	04000513          	li	a0,64
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	264080e7          	jalr	612(ra) # 800021e0 <_ZN15MemoryAllocator9mem_allocEm>
    80001f84:	00050493          	mv	s1,a0
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            main(body == nullptr),
            arg(arg)
    80001f88:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001f8c:	00090a63          	beqz	s2,80001fa0 <_ZN3TCB12createThreadEPFvPvES0_+0x4c>
    80001f90:	00002537          	lui	a0,0x2
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	5bc080e7          	jalr	1468(ra) # 80002550 <_Znam>
    80001f9c:	0080006f          	j	80001fa4 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001fa0:	00000513          	li	a0,0
            arg(arg)
    80001fa4:	00a4b423          	sd	a0,8(s1)
    80001fa8:	00000797          	auipc	a5,0x0
    80001fac:	f5078793          	addi	a5,a5,-176 # 80001ef8 <_ZN3TCB13threadWrapperEv>
    80001fb0:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001fb4:	04050863          	beqz	a0,80002004 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    80001fb8:	000027b7          	lui	a5,0x2
    80001fbc:	00f50533          	add	a0,a0,a5
            arg(arg)
    80001fc0:	00a4bc23          	sd	a0,24(s1)
    80001fc4:	02048023          	sb	zero,32(s1)
    80001fc8:	020480a3          	sb	zero,33(s1)
            main(body == nullptr),
    80001fcc:	00193913          	seqz	s2,s2
            arg(arg)
    80001fd0:	03248123          	sb	s2,34(s1)
    80001fd4:	0334b423          	sd	s3,40(s1)
    Scheduler::put(newTCB);
    80001fd8:	00048513          	mv	a0,s1
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	cec080e7          	jalr	-788(ra) # 80002cc8 <_ZN9Scheduler3putEP3TCB>
}
    80001fe4:	00048513          	mv	a0,s1
    80001fe8:	02813083          	ld	ra,40(sp)
    80001fec:	02013403          	ld	s0,32(sp)
    80001ff0:	01813483          	ld	s1,24(sp)
    80001ff4:	01013903          	ld	s2,16(sp)
    80001ff8:	00813983          	ld	s3,8(sp)
    80001ffc:	03010113          	addi	sp,sp,48
    80002000:	00008067          	ret
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002004:	00000513          	li	a0,0
    80002008:	fb9ff06f          	j	80001fc0 <_ZN3TCB12createThreadEPFvPvES0_+0x6c>
    8000200c:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(ptr);
    80002010:	00048513          	mv	a0,s1
    80002014:	00000097          	auipc	ra,0x0
    80002018:	3b4080e7          	jalr	948(ra) # 800023c8 <_ZN15MemoryAllocator8mem_freeEPv>
    8000201c:	00090513          	mv	a0,s2
    80002020:	0000b097          	auipc	ra,0xb
    80002024:	878080e7          	jalr	-1928(ra) # 8000c898 <_Unwind_Resume>

0000000080002028 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_>:
{
    80002028:	fd010113          	addi	sp,sp,-48
    8000202c:	02113423          	sd	ra,40(sp)
    80002030:	02813023          	sd	s0,32(sp)
    80002034:	00913c23          	sd	s1,24(sp)
    80002038:	01213823          	sd	s2,16(sp)
    8000203c:	01313423          	sd	s3,8(sp)
    80002040:	03010413          	addi	s0,sp,48
    80002044:	00050913          	mv	s2,a0
    80002048:	00058993          	mv	s3,a1
        return MemoryAllocator::mem_alloc(newSize);
    8000204c:	04000513          	li	a0,64
    80002050:	00000097          	auipc	ra,0x0
    80002054:	190080e7          	jalr	400(ra) # 800021e0 <_ZN15MemoryAllocator9mem_allocEm>
    80002058:	00050493          	mv	s1,a0
            arg(arg)
    8000205c:	01253023          	sd	s2,0(a0) # 2000 <_entry-0x7fffe000>
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80002060:	00090a63          	beqz	s2,80002074 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0x4c>
    80002064:	00002537          	lui	a0,0x2
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	4e8080e7          	jalr	1256(ra) # 80002550 <_Znam>
    80002070:	0080006f          	j	80002078 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0x50>
    80002074:	00000513          	li	a0,0
            arg(arg)
    80002078:	00a4b423          	sd	a0,8(s1)
    8000207c:	00000797          	auipc	a5,0x0
    80002080:	e7c78793          	addi	a5,a5,-388 # 80001ef8 <_ZN3TCB13threadWrapperEv>
    80002084:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002088:	04050263          	beqz	a0,800020cc <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0xa4>
    8000208c:	000027b7          	lui	a5,0x2
    80002090:	00f50533          	add	a0,a0,a5
            arg(arg)
    80002094:	00a4bc23          	sd	a0,24(s1)
    80002098:	02048023          	sb	zero,32(s1)
    8000209c:	020480a3          	sb	zero,33(s1)
            main(body == nullptr),
    800020a0:	00193913          	seqz	s2,s2
            arg(arg)
    800020a4:	03248123          	sb	s2,34(s1)
    800020a8:	0334b423          	sd	s3,40(s1)
}
    800020ac:	00048513          	mv	a0,s1
    800020b0:	02813083          	ld	ra,40(sp)
    800020b4:	02013403          	ld	s0,32(sp)
    800020b8:	01813483          	ld	s1,24(sp)
    800020bc:	01013903          	ld	s2,16(sp)
    800020c0:	00813983          	ld	s3,8(sp)
    800020c4:	03010113          	addi	sp,sp,48
    800020c8:	00008067          	ret
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800020cc:	00000513          	li	a0,0
    800020d0:	fc5ff06f          	j	80002094 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0x6c>
    800020d4:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(ptr);
    800020d8:	00048513          	mv	a0,s1
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	2ec080e7          	jalr	748(ra) # 800023c8 <_ZN15MemoryAllocator8mem_freeEPv>
    800020e4:	00090513          	mv	a0,s2
    800020e8:	0000a097          	auipc	ra,0xa
    800020ec:	7b0080e7          	jalr	1968(ra) # 8000c898 <_Unwind_Resume>

00000000800020f0 <_ZN3TCB5yieldEv>:
{
    800020f0:	ff010113          	addi	sp,sp,-16
    800020f4:	00813423          	sd	s0,8(sp)
    800020f8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    800020fc:	01300793          	li	a5,19
    80002100:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80002104:	00000073          	ecall
}
    80002108:	00813403          	ld	s0,8(sp)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret

0000000080002114 <_ZN3TCB8dispatchEv>:
{
    80002114:	fe010113          	addi	sp,sp,-32
    80002118:	00113c23          	sd	ra,24(sp)
    8000211c:	00813823          	sd	s0,16(sp)
    80002120:	00913423          	sd	s1,8(sp)
    80002124:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002128:	00009497          	auipc	s1,0x9
    8000212c:	6184b483          	ld	s1,1560(s1) # 8000b740 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80002130:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002134:	00079663          	bnez	a5,80002140 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return this->blocked; }
    80002138:	0214c783          	lbu	a5,33(s1)
    8000213c:	04078463          	beqz	a5,80002184 <_ZN3TCB8dispatchEv+0x70>
    running = Scheduler::get();
    80002140:	00001097          	auipc	ra,0x1
    80002144:	b20080e7          	jalr	-1248(ra) # 80002c60 <_ZN9Scheduler3getEv>
    80002148:	00009797          	auipc	a5,0x9
    8000214c:	5ea7bc23          	sd	a0,1528(a5) # 8000b740 <_ZN3TCB7runningE>
    bool isMain() const { return this->main; }
    80002150:	02254783          	lbu	a5,34(a0) # 2022 <_entry-0x7fffdfde>
    if(running->isMain()) {
    80002154:	04078063          	beqz	a5,80002194 <_ZN3TCB8dispatchEv+0x80>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002158:	10000793          	li	a5,256
    8000215c:	1007a073          	csrs	sstatus,a5
    TCB::contextSwitch(&old->context, &running->context);
    80002160:	01050593          	addi	a1,a0,16
    80002164:	01048513          	addi	a0,s1,16
    80002168:	fffff097          	auipc	ra,0xfffff
    8000216c:	fa8080e7          	jalr	-88(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002170:	01813083          	ld	ra,24(sp)
    80002174:	01013403          	ld	s0,16(sp)
    80002178:	00813483          	ld	s1,8(sp)
    8000217c:	02010113          	addi	sp,sp,32
    80002180:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002184:	00048513          	mv	a0,s1
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	b40080e7          	jalr	-1216(ra) # 80002cc8 <_ZN9Scheduler3putEP3TCB>
    80002190:	fb1ff06f          	j	80002140 <_ZN3TCB8dispatchEv+0x2c>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002194:	10000793          	li	a5,256
    80002198:	1007b073          	csrc	sstatus,a5
}
    8000219c:	fc5ff06f          	j	80002160 <_ZN3TCB8dispatchEv+0x4c>

00000000800021a0 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB* handle) {
    800021a0:	fe010113          	addi	sp,sp,-32
    800021a4:	00113c23          	sd	ra,24(sp)
    800021a8:	00813823          	sd	s0,16(sp)
    800021ac:	00913423          	sd	s1,8(sp)
    800021b0:	02010413          	addi	s0,sp,32
    800021b4:	00050493          	mv	s1,a0
    bool isFinished() const { return finished; }
    800021b8:	0204c783          	lbu	a5,32(s1)
    while(!handle->isFinished()) {
    800021bc:	00079863          	bnez	a5,800021cc <_ZN3TCB4joinEPS_+0x2c>
        TCB::dispatch();
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	f54080e7          	jalr	-172(ra) # 80002114 <_ZN3TCB8dispatchEv>
    while(!handle->isFinished()) {
    800021c8:	ff1ff06f          	j	800021b8 <_ZN3TCB4joinEPS_+0x18>
    }
}
    800021cc:	01813083          	ld	ra,24(sp)
    800021d0:	01013403          	ld	s0,16(sp)
    800021d4:	00813483          	ld	s1,8(sp)
    800021d8:	02010113          	addi	sp,sp,32
    800021dc:	00008067          	ret

00000000800021e0 <_ZN15MemoryAllocator9mem_allocEm>:
int MemoryAllocator::newArrayCalled = 0;
int MemoryAllocator::deleteCalled = 0;
int MemoryAllocator::deleteArrayCalled = 0;


void *MemoryAllocator::mem_alloc(size_t size) {
    800021e0:	ff010113          	addi	sp,sp,-16
    800021e4:	00813423          	sd	s0,8(sp)
    800021e8:	01010413          	addi	s0,sp,16
    800021ec:	00050793          	mv	a5,a0
    size_t newSize;
    if(size%MEM_BLOCK_SIZE != 0) {
    800021f0:	03f57713          	andi	a4,a0,63
    800021f4:	00070663          	beqz	a4,80002200 <_ZN15MemoryAllocator9mem_allocEm+0x20>
        newSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    800021f8:	03f50793          	addi	a5,a0,63
    800021fc:	fc07f793          	andi	a5,a5,-64
    }
    else {
        newSize = size;
    }

    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
    80002200:	00009517          	auipc	a0,0x9
    80002204:	54853503          	ld	a0,1352(a0) # 8000b748 <_ZN15MemoryAllocator4freeE>
    80002208:	06050e63          	beqz	a0,80002284 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if(curr->size<newSize) continue;
    8000220c:	01053703          	ld	a4,16(a0)
    80002210:	08f76063          	bltu	a4,a5,80002290 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
        if(curr->size > newSize) {
    80002214:	0ce7f663          	bgeu	a5,a4,800022e0 <_ZN15MemoryAllocator9mem_allocEm+0x100>
            //new fragment needs to be created
            //novi ce biti offsetovan od curr za novi size i plus za sizeof(DataBlock) zato sto se posle curr
            // nalazi taj "header"
            DataBlock *newBlock;
            newBlock = (DataBlock*) ((char*)curr + newSize + sizeof(DataBlock));
    80002218:	01878713          	addi	a4,a5,24
    8000221c:	00e50733          	add	a4,a0,a4

            //Azuriranje free liste
            if(curr->prev) curr->prev->next = newBlock;
    80002220:	00853683          	ld	a3,8(a0)
    80002224:	06068a63          	beqz	a3,80002298 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002228:	00e6b023          	sd	a4,0(a3)
            else MemoryAllocator::free = newBlock;
            if(curr->next) curr->next->prev = newBlock;
    8000222c:	00053683          	ld	a3,0(a0)
    80002230:	00068463          	beqz	a3,80002238 <_ZN15MemoryAllocator9mem_allocEm+0x58>
    80002234:	00e6b423          	sd	a4,8(a3)
            newBlock->prev = curr->prev;
    80002238:	00853683          	ld	a3,8(a0)
    8000223c:	00d73423          	sd	a3,8(a4)
            newBlock->next = curr->next;
    80002240:	00053683          	ld	a3,0(a0)
    80002244:	00d73023          	sd	a3,0(a4)
            //size novi je sada prethodni size - novi size i jos - sizeof(DataBlock) jer se to ne brise kada se zauzme
            //pa mora i to da se cuva
            newBlock->size = curr->size - newSize - sizeof(DataBlock);
    80002248:	01053683          	ld	a3,16(a0)
    8000224c:	40f686b3          	sub	a3,a3,a5
    80002250:	fe868693          	addi	a3,a3,-24
    80002254:	00d73823          	sd	a3,16(a4)
            curr->size = newSize;
    80002258:	00f53823          	sd	a5,16(a0)


            //azuriranje USED liste
            if(used == nullptr) {
    8000225c:	00009797          	auipc	a5,0x9
    80002260:	4f47b783          	ld	a5,1268(a5) # 8000b750 <_ZN15MemoryAllocator4usedE>
    80002264:	04078063          	beqz	a5,800022a4 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
                used = curr;
                curr->next = nullptr;
                curr->prev = nullptr;
            }
            else if((char*) curr < (char*)used) {
    80002268:	04f57863          	bgeu	a0,a5,800022b8 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
                //treba da ide pre trenutnog used
                used->prev = curr;
    8000226c:	00a7b423          	sd	a0,8(a5)
                curr->prev = nullptr;
    80002270:	00053423          	sd	zero,8(a0)
                curr->next = used;
    80002274:	00f53023          	sd	a5,0(a0)
                used = curr;
    80002278:	00009797          	auipc	a5,0x9
    8000227c:	4ca7bc23          	sd	a0,1240(a5) # 8000b750 <_ZN15MemoryAllocator4usedE>
                curr->prev = currUsed;
                if(curr->next) curr->next->prev = curr;
                currUsed->next = curr;
            }
        }
        return (char*)curr + sizeof(DataBlock);
    80002280:	01850513          	addi	a0,a0,24
    }
    return nullptr; //should not enter here
}
    80002284:	00813403          	ld	s0,8(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret
    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
    80002290:	00053503          	ld	a0,0(a0)
    80002294:	f75ff06f          	j	80002208 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            else MemoryAllocator::free = newBlock;
    80002298:	00009697          	auipc	a3,0x9
    8000229c:	4ae6b823          	sd	a4,1200(a3) # 8000b748 <_ZN15MemoryAllocator4freeE>
    800022a0:	f8dff06f          	j	8000222c <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                used = curr;
    800022a4:	00009797          	auipc	a5,0x9
    800022a8:	4aa7b623          	sd	a0,1196(a5) # 8000b750 <_ZN15MemoryAllocator4usedE>
                curr->next = nullptr;
    800022ac:	00053023          	sd	zero,0(a0)
                curr->prev = nullptr;
    800022b0:	00053423          	sd	zero,8(a0)
    800022b4:	fcdff06f          	j	80002280 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
                for(; currUsed->next && (char*)(currUsed->next) < (char*) curr; currUsed = currUsed->next);
    800022b8:	00078713          	mv	a4,a5
    800022bc:	0007b783          	ld	a5,0(a5)
    800022c0:	00078463          	beqz	a5,800022c8 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    800022c4:	fea7eae3          	bltu	a5,a0,800022b8 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
                curr->next = currUsed->next;
    800022c8:	00f53023          	sd	a5,0(a0)
                curr->prev = currUsed;
    800022cc:	00e53423          	sd	a4,8(a0)
                if(curr->next) curr->next->prev = curr;
    800022d0:	00078463          	beqz	a5,800022d8 <_ZN15MemoryAllocator9mem_allocEm+0xf8>
    800022d4:	00a7b423          	sd	a0,8(a5)
                currUsed->next = curr;
    800022d8:	00a73023          	sd	a0,0(a4)
    800022dc:	fa5ff06f          	j	80002280 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            if (curr->prev) curr->prev->next = curr->next;
    800022e0:	00853783          	ld	a5,8(a0)
    800022e4:	04078263          	beqz	a5,80002328 <_ZN15MemoryAllocator9mem_allocEm+0x148>
    800022e8:	00053703          	ld	a4,0(a0)
    800022ec:	00e7b023          	sd	a4,0(a5)
            if(curr->next) curr->next->prev = curr->prev;
    800022f0:	00053783          	ld	a5,0(a0)
    800022f4:	00078663          	beqz	a5,80002300 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    800022f8:	00853703          	ld	a4,8(a0)
    800022fc:	00e7b423          	sd	a4,8(a5)
            if(used == nullptr) {
    80002300:	00009797          	auipc	a5,0x9
    80002304:	4507b783          	ld	a5,1104(a5) # 8000b750 <_ZN15MemoryAllocator4usedE>
    80002308:	02078863          	beqz	a5,80002338 <_ZN15MemoryAllocator9mem_allocEm+0x158>
            else if((char*) curr < (char*)used) {
    8000230c:	04f57063          	bgeu	a0,a5,8000234c <_ZN15MemoryAllocator9mem_allocEm+0x16c>
                used->prev = curr;
    80002310:	00a7b423          	sd	a0,8(a5)
                curr->prev = nullptr;
    80002314:	00053423          	sd	zero,8(a0)
                curr->next = used;
    80002318:	00f53023          	sd	a5,0(a0)
                used = curr;
    8000231c:	00009797          	auipc	a5,0x9
    80002320:	42a7ba23          	sd	a0,1076(a5) # 8000b750 <_ZN15MemoryAllocator4usedE>
    80002324:	f5dff06f          	j	80002280 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            else MemoryAllocator::free = curr->next;
    80002328:	00053783          	ld	a5,0(a0)
    8000232c:	00009717          	auipc	a4,0x9
    80002330:	40f73e23          	sd	a5,1052(a4) # 8000b748 <_ZN15MemoryAllocator4freeE>
    80002334:	fbdff06f          	j	800022f0 <_ZN15MemoryAllocator9mem_allocEm+0x110>
                used = curr;
    80002338:	00009797          	auipc	a5,0x9
    8000233c:	40a7bc23          	sd	a0,1048(a5) # 8000b750 <_ZN15MemoryAllocator4usedE>
                curr->next = nullptr;
    80002340:	00053023          	sd	zero,0(a0)
                curr->prev = nullptr;
    80002344:	00053423          	sd	zero,8(a0)
    80002348:	f39ff06f          	j	80002280 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
                for(; currUsed->next && (char*)(currUsed->next) < (char*) curr; currUsed = currUsed->next);
    8000234c:	00078713          	mv	a4,a5
    80002350:	0007b783          	ld	a5,0(a5)
    80002354:	00078463          	beqz	a5,8000235c <_ZN15MemoryAllocator9mem_allocEm+0x17c>
    80002358:	fea7eae3          	bltu	a5,a0,8000234c <_ZN15MemoryAllocator9mem_allocEm+0x16c>
                curr->next = currUsed->next;
    8000235c:	00f53023          	sd	a5,0(a0)
                curr->prev = currUsed;
    80002360:	00e53423          	sd	a4,8(a0)
                if(curr->next) curr->next->prev = curr;
    80002364:	00078463          	beqz	a5,8000236c <_ZN15MemoryAllocator9mem_allocEm+0x18c>
    80002368:	00a7b423          	sd	a0,8(a5)
                currUsed->next = curr;
    8000236c:	00a73023          	sd	a0,0(a4)
    80002370:	f11ff06f          	j	80002280 <_ZN15MemoryAllocator9mem_allocEm+0xa0>

0000000080002374 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>:
        tryToJoin(currFree);
    }
    return 0;
}

void MemoryAllocator::tryToJoin(DataBlock *curr) {
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00813423          	sd	s0,8(sp)
    8000237c:	01010413          	addi	s0,sp,16
    if(curr->next && (char*)curr + sizeof(DataBlock) + curr->size == (char*)curr->next) {
    80002380:	00053783          	ld	a5,0(a0)
    80002384:	00078a63          	beqz	a5,80002398 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>
    80002388:	01053683          	ld	a3,16(a0)
    8000238c:	01868713          	addi	a4,a3,24
    80002390:	00e50733          	add	a4,a0,a4
    80002394:	00e78863          	beq	a5,a4,800023a4 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x30>
        curr->size += curr->next->size + sizeof(DataBlock);
        curr->next = curr->next->next;
        if(curr->next) curr->next->prev = curr;
    }
}
    80002398:	00813403          	ld	s0,8(sp)
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret
        curr->size += curr->next->size + sizeof(DataBlock);
    800023a4:	0107b703          	ld	a4,16(a5)
    800023a8:	00e686b3          	add	a3,a3,a4
    800023ac:	01868693          	addi	a3,a3,24
    800023b0:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    800023b4:	0007b783          	ld	a5,0(a5)
    800023b8:	00f53023          	sd	a5,0(a0)
        if(curr->next) curr->next->prev = curr;
    800023bc:	fc078ee3          	beqz	a5,80002398 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>
    800023c0:	00a7b423          	sd	a0,8(a5)
}
    800023c4:	fd5ff06f          	j	80002398 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>

00000000800023c8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(used == nullptr) return -1;
    800023c8:	00009797          	auipc	a5,0x9
    800023cc:	3887b783          	ld	a5,904(a5) # 8000b750 <_ZN15MemoryAllocator4usedE>
    800023d0:	12078863          	beqz	a5,80002500 <_ZN15MemoryAllocator8mem_freeEPv+0x138>
    800023d4:	00050713          	mv	a4,a0
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;
    800023d8:	12050863          	beqz	a0,80002508 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    800023dc:	00009697          	auipc	a3,0x9
    800023e0:	2bc6b683          	ld	a3,700(a3) # 8000b698 <_GLOBAL_OFFSET_TABLE_+0x10>
    800023e4:	0006b683          	ld	a3,0(a3)
    800023e8:	12d56463          	bltu	a0,a3,80002510 <_ZN15MemoryAllocator8mem_freeEPv+0x148>
    800023ec:	00009697          	auipc	a3,0x9
    800023f0:	2fc6b683          	ld	a3,764(a3) # 8000b6e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800023f4:	0006b683          	ld	a3,0(a3)
    800023f8:	12a6e063          	bltu	a3,a0,80002518 <_ZN15MemoryAllocator8mem_freeEPv+0x150>
    DataBlock* curr = (DataBlock*)((char*)ptr - sizeof(DataBlock));
    800023fc:	fe850513          	addi	a0,a0,-24
    if(curr < used) return -3;
    80002400:	12f56063          	bltu	a0,a5,80002520 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    if(used == curr) {
    80002404:	08a78c63          	beq	a5,a0,8000249c <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
        curr->prev->next = curr->next;
    80002408:	ff073683          	ld	a3,-16(a4)
    8000240c:	fe873783          	ld	a5,-24(a4)
    80002410:	00f6b023          	sd	a5,0(a3)
        if(curr->next) curr->next->prev = curr->prev;
    80002414:	00078663          	beqz	a5,80002420 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80002418:	ff073683          	ld	a3,-16(a4)
    8000241c:	00d7b423          	sd	a3,8(a5)
        curr->next = nullptr;
    80002420:	fe073423          	sd	zero,-24(a4)
        curr->prev = nullptr;
    80002424:	fe073823          	sd	zero,-16(a4)
    if (free == nullptr) {
    80002428:	00009797          	auipc	a5,0x9
    8000242c:	3207b783          	ld	a5,800(a5) # 8000b748 <_ZN15MemoryAllocator4freeE>
    80002430:	08078663          	beqz	a5,800024bc <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
int MemoryAllocator::mem_free(void* ptr) {
    80002434:	fe010113          	addi	sp,sp,-32
    80002438:	00113c23          	sd	ra,24(sp)
    8000243c:	00813823          	sd	s0,16(sp)
    80002440:	00913423          	sd	s1,8(sp)
    80002444:	02010413          	addi	s0,sp,32
    else if((char*)curr < (char*)free) {
    80002448:	08f56663          	bltu	a0,a5,800024d4 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        for(currFree = free; currFree->next && (char*)(currFree->next) < (char*) curr; currFree = currFree->next);
    8000244c:	00078493          	mv	s1,a5
    80002450:	0007b783          	ld	a5,0(a5)
    80002454:	00078463          	beqz	a5,8000245c <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002458:	fea7eae3          	bltu	a5,a0,8000244c <_ZN15MemoryAllocator8mem_freeEPv+0x84>
        curr->next = currFree->next;
    8000245c:	fef73423          	sd	a5,-24(a4)
        curr->prev = currFree;
    80002460:	fe973823          	sd	s1,-16(a4)
        if(curr->next) curr->next->prev = curr;
    80002464:	00078463          	beqz	a5,8000246c <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    80002468:	00a7b423          	sd	a0,8(a5)
        currFree->next = curr;
    8000246c:	00a4b023          	sd	a0,0(s1)
        tryToJoin(curr);
    80002470:	00000097          	auipc	ra,0x0
    80002474:	f04080e7          	jalr	-252(ra) # 80002374 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
        tryToJoin(currFree);
    80002478:	00048513          	mv	a0,s1
    8000247c:	00000097          	auipc	ra,0x0
    80002480:	ef8080e7          	jalr	-264(ra) # 80002374 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
    return 0;
    80002484:	00000513          	li	a0,0
}
    80002488:	01813083          	ld	ra,24(sp)
    8000248c:	01013403          	ld	s0,16(sp)
    80002490:	00813483          	ld	s1,8(sp)
    80002494:	02010113          	addi	sp,sp,32
    80002498:	00008067          	ret
        used = curr->next;
    8000249c:	fe873783          	ld	a5,-24(a4)
    800024a0:	00009697          	auipc	a3,0x9
    800024a4:	2af6b823          	sd	a5,688(a3) # 8000b750 <_ZN15MemoryAllocator4usedE>
        if(used) used->prev = nullptr;
    800024a8:	00078463          	beqz	a5,800024b0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    800024ac:	0007b423          	sd	zero,8(a5)
        curr->next = nullptr;
    800024b0:	fe073423          	sd	zero,-24(a4)
        curr->prev = nullptr;
    800024b4:	fe073823          	sd	zero,-16(a4)
    800024b8:	f71ff06f          	j	80002428 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
        free = curr;
    800024bc:	00009797          	auipc	a5,0x9
    800024c0:	28a7b623          	sd	a0,652(a5) # 8000b748 <_ZN15MemoryAllocator4freeE>
        curr->next = nullptr;
    800024c4:	fe073423          	sd	zero,-24(a4)
        curr->prev = nullptr;
    800024c8:	fe073823          	sd	zero,-16(a4)
    return 0;
    800024cc:	00000513          	li	a0,0
    800024d0:	00008067          	ret
        free->prev = curr;
    800024d4:	00a7b423          	sd	a0,8(a5)
        curr->prev = nullptr;
    800024d8:	fe073823          	sd	zero,-16(a4)
        curr->next = free;
    800024dc:	00009797          	auipc	a5,0x9
    800024e0:	26c78793          	addi	a5,a5,620 # 8000b748 <_ZN15MemoryAllocator4freeE>
    800024e4:	0007b683          	ld	a3,0(a5)
    800024e8:	fed73423          	sd	a3,-24(a4)
        free = curr;
    800024ec:	00a7b023          	sd	a0,0(a5)
        tryToJoin(free);
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	e84080e7          	jalr	-380(ra) # 80002374 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
    return 0;
    800024f8:	00000513          	li	a0,0
    800024fc:	f8dff06f          	j	80002488 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
    if(used == nullptr) return -1;
    80002500:	fff00513          	li	a0,-1
    80002504:	00008067          	ret
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;
    80002508:	ffe00513          	li	a0,-2
    8000250c:	00008067          	ret
    80002510:	ffe00513          	li	a0,-2
    80002514:	00008067          	ret
    80002518:	ffe00513          	li	a0,-2
    8000251c:	00008067          	ret
    if(curr < used) return -3;
    80002520:	ffd00513          	li	a0,-3
}
    80002524:	00008067          	ret

0000000080002528 <_Znwm>:

//******************SYSCALL MEMORY*********************************


void *operator new(size_t n)
{
    80002528:	ff010113          	addi	sp,sp,-16
    8000252c:	00113423          	sd	ra,8(sp)
    80002530:	00813023          	sd	s0,0(sp)
    80002534:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	f80080e7          	jalr	-128(ra) # 800014b8 <_Z9mem_allocm>
}
    80002540:	00813083          	ld	ra,8(sp)
    80002544:	00013403          	ld	s0,0(sp)
    80002548:	01010113          	addi	sp,sp,16
    8000254c:	00008067          	ret

0000000080002550 <_Znam>:

void *operator new[](size_t n)
{
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00113423          	sd	ra,8(sp)
    80002558:	00813023          	sd	s0,0(sp)
    8000255c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002560:	fffff097          	auipc	ra,0xfffff
    80002564:	f58080e7          	jalr	-168(ra) # 800014b8 <_Z9mem_allocm>
}
    80002568:	00813083          	ld	ra,8(sp)
    8000256c:	00013403          	ld	s0,0(sp)
    80002570:	01010113          	addi	sp,sp,16
    80002574:	00008067          	ret

0000000080002578 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002578:	ff010113          	addi	sp,sp,-16
    8000257c:	00113423          	sd	ra,8(sp)
    80002580:	00813023          	sd	s0,0(sp)
    80002584:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	f68080e7          	jalr	-152(ra) # 800014f0 <_Z8mem_freePv>
}
    80002590:	00813083          	ld	ra,8(sp)
    80002594:	00013403          	ld	s0,0(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00113423          	sd	ra,8(sp)
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	01010413          	addi	s0,sp,16
    mem_free(p);
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	f40080e7          	jalr	-192(ra) # 800014f0 <_Z8mem_freePv>
}
    800025b8:	00813083          	ld	ra,8(sp)
    800025bc:	00013403          	ld	s0,0(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <_ZN6Thread3runEv>:

Thread::Thread() {
    thread_create_without_start(&this->myHandle, runWrapper, this);
}

void Thread::run() {
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00813423          	sd	s0,8(sp)
    800025d0:	01010413          	addi	s0,sp,16
    //todo
}
    800025d4:	00813403          	ld	s0,8(sp)
    800025d8:	01010113          	addi	sp,sp,16
    800025dc:	00008067          	ret

00000000800025e0 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    800025e0:	ff010113          	addi	sp,sp,-16
    800025e4:	00113423          	sd	ra,8(sp)
    800025e8:	00813023          	sd	s0,0(sp)
    800025ec:	01010413          	addi	s0,sp,16
    800025f0:	00009797          	auipc	a5,0x9
    800025f4:	eb878793          	addi	a5,a5,-328 # 8000b4a8 <_ZTV9Semaphore+0x10>
    800025f8:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    800025fc:	00853503          	ld	a0,8(a0)
    80002600:	fffff097          	auipc	ra,0xfffff
    80002604:	048080e7          	jalr	72(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
}
    80002608:	00813083          	ld	ra,8(sp)
    8000260c:	00013403          	ld	s0,0(sp)
    80002610:	01010113          	addi	sp,sp,16
    80002614:	00008067          	ret

0000000080002618 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002618:	fe010113          	addi	sp,sp,-32
    8000261c:	00113c23          	sd	ra,24(sp)
    80002620:	00813823          	sd	s0,16(sp)
    80002624:	00913423          	sd	s1,8(sp)
    80002628:	02010413          	addi	s0,sp,32
    8000262c:	00050493          	mv	s1,a0
}
    80002630:	00000097          	auipc	ra,0x0
    80002634:	fb0080e7          	jalr	-80(ra) # 800025e0 <_ZN9SemaphoreD1Ev>
    80002638:	00048513          	mv	a0,s1
    8000263c:	00000097          	auipc	ra,0x0
    80002640:	f3c080e7          	jalr	-196(ra) # 80002578 <_ZdlPv>
    80002644:	01813083          	ld	ra,24(sp)
    80002648:	01013403          	ld	s0,16(sp)
    8000264c:	00813483          	ld	s1,8(sp)
    80002650:	02010113          	addi	sp,sp,32
    80002654:	00008067          	ret

0000000080002658 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002658:	fe010113          	addi	sp,sp,-32
    8000265c:	00113c23          	sd	ra,24(sp)
    80002660:	00813823          	sd	s0,16(sp)
    80002664:	00913423          	sd	s1,8(sp)
    80002668:	02010413          	addi	s0,sp,32
    8000266c:	00009797          	auipc	a5,0x9
    80002670:	e5c78793          	addi	a5,a5,-420 # 8000b4c8 <_ZTV6Thread+0x10>
    80002674:	00f53023          	sd	a5,0(a0)
    delete this->myHandle;
    80002678:	00853483          	ld	s1,8(a0)
    8000267c:	02048063          	beqz	s1,8000269c <_ZN6ThreadD1Ev+0x44>
    ~TCB() { delete[] stack; }
    80002680:	0084b503          	ld	a0,8(s1)
    80002684:	00050663          	beqz	a0,80002690 <_ZN6ThreadD1Ev+0x38>
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	f18080e7          	jalr	-232(ra) # 800025a0 <_ZdaPv>
        MemoryAllocator::mem_free(ptr);
    80002690:	00048513          	mv	a0,s1
    80002694:	00000097          	auipc	ra,0x0
    80002698:	d34080e7          	jalr	-716(ra) # 800023c8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000269c:	01813083          	ld	ra,24(sp)
    800026a0:	01013403          	ld	s0,16(sp)
    800026a4:	00813483          	ld	s1,8(sp)
    800026a8:	02010113          	addi	sp,sp,32
    800026ac:	00008067          	ret

00000000800026b0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800026b0:	fe010113          	addi	sp,sp,-32
    800026b4:	00113c23          	sd	ra,24(sp)
    800026b8:	00813823          	sd	s0,16(sp)
    800026bc:	00913423          	sd	s1,8(sp)
    800026c0:	02010413          	addi	s0,sp,32
    800026c4:	00050493          	mv	s1,a0
}
    800026c8:	00000097          	auipc	ra,0x0
    800026cc:	f90080e7          	jalr	-112(ra) # 80002658 <_ZN6ThreadD1Ev>
    800026d0:	00048513          	mv	a0,s1
    800026d4:	00000097          	auipc	ra,0x0
    800026d8:	ea4080e7          	jalr	-348(ra) # 80002578 <_ZdlPv>
    800026dc:	01813083          	ld	ra,24(sp)
    800026e0:	01013403          	ld	s0,16(sp)
    800026e4:	00813483          	ld	s1,8(sp)
    800026e8:	02010113          	addi	sp,sp,32
    800026ec:	00008067          	ret

00000000800026f0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800026f0:	ff010113          	addi	sp,sp,-16
    800026f4:	00113423          	sd	ra,8(sp)
    800026f8:	00813023          	sd	s0,0(sp)
    800026fc:	01010413          	addi	s0,sp,16
    80002700:	00009797          	auipc	a5,0x9
    80002704:	da878793          	addi	a5,a5,-600 # 8000b4a8 <_ZTV9Semaphore+0x10>
    80002708:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    8000270c:	00850513          	addi	a0,a0,8
    80002710:	fffff097          	auipc	ra,0xfffff
    80002714:	f08080e7          	jalr	-248(ra) # 80001618 <_Z8sem_openPP11MySemaphorej>
}
    80002718:	00813083          	ld	ra,8(sp)
    8000271c:	00013403          	ld	s0,0(sp)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret

0000000080002728 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002728:	ff010113          	addi	sp,sp,-16
    8000272c:	00113423          	sd	ra,8(sp)
    80002730:	00813023          	sd	s0,0(sp)
    80002734:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    80002738:	00853503          	ld	a0,8(a0)
    8000273c:	fffff097          	auipc	ra,0xfffff
    80002740:	f38080e7          	jalr	-200(ra) # 80001674 <_Z8sem_waitP11MySemaphore>
}
    80002744:	00813083          	ld	ra,8(sp)
    80002748:	00013403          	ld	s0,0(sp)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00113423          	sd	ra,8(sp)
    8000275c:	00813023          	sd	s0,0(sp)
    80002760:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    80002764:	00853503          	ld	a0,8(a0)
    80002768:	fffff097          	auipc	ra,0xfffff
    8000276c:	f38080e7          	jalr	-200(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>
}
    80002770:	00813083          	ld	ra,8(sp)
    80002774:	00013403          	ld	s0,0(sp)
    80002778:	01010113          	addi	sp,sp,16
    8000277c:	00008067          	ret

0000000080002780 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002780:	ff010113          	addi	sp,sp,-16
    80002784:	00113423          	sd	ra,8(sp)
    80002788:	00813023          	sd	s0,0(sp)
    8000278c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002790:	fffff097          	auipc	ra,0xfffff
    80002794:	e44080e7          	jalr	-444(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80002798:	00813083          	ld	ra,8(sp)
    8000279c:	00013403          	ld	s0,0(sp)
    800027a0:	01010113          	addi	sp,sp,16
    800027a4:	00008067          	ret

00000000800027a8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800027a8:	ff010113          	addi	sp,sp,-16
    800027ac:	00113423          	sd	ra,8(sp)
    800027b0:	00813023          	sd	s0,0(sp)
    800027b4:	01010413          	addi	s0,sp,16
    800027b8:	00009797          	auipc	a5,0x9
    800027bc:	d1078793          	addi	a5,a5,-752 # 8000b4c8 <_ZTV6Thread+0x10>
    800027c0:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    800027c4:	00850513          	addi	a0,a0,8
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	dac080e7          	jalr	-596(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800027d0:	00813083          	ld	ra,8(sp)
    800027d4:	00013403          	ld	s0,0(sp)
    800027d8:	01010113          	addi	sp,sp,16
    800027dc:	00008067          	ret

00000000800027e0 <_ZN6Thread4joinEv>:
void Thread::join() {
    800027e0:	ff010113          	addi	sp,sp,-16
    800027e4:	00113423          	sd	ra,8(sp)
    800027e8:	00813023          	sd	s0,0(sp)
    800027ec:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    800027f0:	00853503          	ld	a0,8(a0)
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	e00080e7          	jalr	-512(ra) # 800015f4 <_Z11thread_joinP3TCB>
}
    800027fc:	00813083          	ld	ra,8(sp)
    80002800:	00013403          	ld	s0,0(sp)
    80002804:	01010113          	addi	sp,sp,16
    80002808:	00008067          	ret

000000008000280c <_ZN6Thread5startEv>:
int Thread::start() {
    8000280c:	ff010113          	addi	sp,sp,-16
    80002810:	00113423          	sd	ra,8(sp)
    80002814:	00813023          	sd	s0,0(sp)
    80002818:	01010413          	addi	s0,sp,16
    thread_start(this->myHandle);
    8000281c:	00853503          	ld	a0,8(a0)
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	cfc080e7          	jalr	-772(ra) # 8000151c <_Z12thread_startP3TCB>
}
    80002828:	00000513          	li	a0,0
    8000282c:	00813083          	ld	ra,8(sp)
    80002830:	00013403          	ld	s0,0(sp)
    80002834:	01010113          	addi	sp,sp,16
    80002838:	00008067          	ret

000000008000283c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00113423          	sd	ra,8(sp)
    80002844:	00813023          	sd	s0,0(sp)
    80002848:	01010413          	addi	s0,sp,16
    8000284c:	00009797          	auipc	a5,0x9
    80002850:	c7c78793          	addi	a5,a5,-900 # 8000b4c8 <_ZTV6Thread+0x10>
    80002854:	00f53023          	sd	a5,0(a0)
    thread_create_without_start(&this->myHandle, runWrapper, this);
    80002858:	00050613          	mv	a2,a0
    8000285c:	00000597          	auipc	a1,0x0
    80002860:	09058593          	addi	a1,a1,144 # 800028ec <_ZN6Thread10runWrapperEPv>
    80002864:	00850513          	addi	a0,a0,8
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	cd8080e7          	jalr	-808(ra) # 80001540 <_Z27thread_create_without_startPP3TCBPFvPvES2_>
}
    80002870:	00813083          	ld	ra,8(sp)
    80002874:	00013403          	ld	s0,0(sp)
    80002878:	01010113          	addi	sp,sp,16
    8000287c:	00008067          	ret

0000000080002880 <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t time) {
    80002880:	ff010113          	addi	sp,sp,-16
    80002884:	00813423          	sd	s0,8(sp)
    80002888:	01010413          	addi	s0,sp,16
    return 0;
}
    8000288c:	00000513          	li	a0,0
    80002890:	00813403          	ld	s0,8(sp)
    80002894:	01010113          	addi	sp,sp,16
    80002898:	00008067          	ret

000000008000289c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000289c:	ff010113          	addi	sp,sp,-16
    800028a0:	00113423          	sd	ra,8(sp)
    800028a4:	00813023          	sd	s0,0(sp)
    800028a8:	01010413          	addi	s0,sp,16
    syscall_c::putc(c);
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	e48080e7          	jalr	-440(ra) # 800016f4 <_Z4putcc>
}
    800028b4:	00813083          	ld	ra,8(sp)
    800028b8:	00013403          	ld	s0,0(sp)
    800028bc:	01010113          	addi	sp,sp,16
    800028c0:	00008067          	ret

00000000800028c4 <_ZN7Console4getcEv>:

char Console::getc() {
    800028c4:	ff010113          	addi	sp,sp,-16
    800028c8:	00113423          	sd	ra,8(sp)
    800028cc:	00813023          	sd	s0,0(sp)
    800028d0:	01010413          	addi	s0,sp,16
    return syscall_c::getc();
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	df8080e7          	jalr	-520(ra) # 800016cc <_Z4getcv>
}
    800028dc:	00813083          	ld	ra,8(sp)
    800028e0:	00013403          	ld	s0,0(sp)
    800028e4:	01010113          	addi	sp,sp,16
    800028e8:	00008067          	ret

00000000800028ec <_ZN6Thread10runWrapperEPv>:
    void (*body)(void*);
    void* arg;

    //wrapper za poziv run() metode
    static void runWrapper(void* thread) {
        if(thread) {
    800028ec:	02050863          	beqz	a0,8000291c <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread) {
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00113423          	sd	ra,8(sp)
    800028f8:	00813023          	sd	s0,0(sp)
    800028fc:	01010413          	addi	s0,sp,16
            ((Thread*)thread)->run();
    80002900:	00053783          	ld	a5,0(a0)
    80002904:	0107b783          	ld	a5,16(a5)
    80002908:	000780e7          	jalr	a5
        }
    }
    8000290c:	00813083          	ld	ra,8(sp)
    80002910:	00013403          	ld	s0,0(sp)
    80002914:	01010113          	addi	sp,sp,16
    80002918:	00008067          	ret
    8000291c:	00008067          	ret

0000000080002920 <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"

void Riscv::popSppSpie()
{
    80002920:	ff010113          	addi	sp,sp,-16
    80002924:	00813423          	sd	s0,8(sp)
    80002928:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    8000292c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002930:	10200073          	sret
}
    80002934:	00813403          	ld	s0,8(sp)
    80002938:	01010113          	addi	sp,sp,16
    8000293c:	00008067          	ret

0000000080002940 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void*);

void Riscv::handleSupervisorTrap()
{
    80002940:	fb010113          	addi	sp,sp,-80
    80002944:	04113423          	sd	ra,72(sp)
    80002948:	04813023          	sd	s0,64(sp)
    8000294c:	02913c23          	sd	s1,56(sp)
    80002950:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002954:	142027f3          	csrr	a5,scause
    80002958:	fcf43023          	sd	a5,-64(s0)
    return scause;
    8000295c:	fc043483          	ld	s1,-64(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002960:	ff848713          	addi	a4,s1,-8
    80002964:	00100793          	li	a5,1
    80002968:	22e7ec63          	bltu	a5,a4,80002ba0 <_ZN5Riscv20handleSupervisorTrapEv+0x260>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000296c:	141027f3          	csrr	a5,sepc
    80002970:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002974:	fd843783          	ld	a5,-40(s0)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 volatile sepc = r_sepc() + 4;
    80002978:	00478793          	addi	a5,a5,4
    8000297c:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002980:	100027f3          	csrr	a5,sstatus
    80002984:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002988:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    8000298c:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80002990:	00050793          	mv	a5,a0
    80002994:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80002998:	fc843783          	ld	a5,-56(s0)

        uint64 codeOperation = Riscv::r_a0();
        int returnValue;
        MySemaphore* semHandlePtr;
        switch (codeOperation) {
    8000299c:	04300713          	li	a4,67
    800029a0:	02f76a63          	bltu	a4,a5,800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
    800029a4:	00279793          	slli	a5,a5,0x2
    800029a8:	00007717          	auipc	a4,0x7
    800029ac:	83070713          	addi	a4,a4,-2000 # 800091d8 <CONSOLE_STATUS+0x1c8>
    800029b0:	00e787b3          	add	a5,a5,a4
    800029b4:	0007a783          	lw	a5,0(a5)
    800029b8:	00e787b3          	add	a5,a5,a4
    800029bc:	00078067          	jr	a5
            case 0x01:
                //mem_alloc(size)

                size_t size;
                void* ptr;
                __asm__ volatile("mv %0, a1" : "=r" (size));
    800029c0:	00058513          	mv	a0,a1
                ptr = MemoryAllocator::mem_alloc(size);
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	81c080e7          	jalr	-2020(ra) # 800021e0 <_ZN15MemoryAllocator9mem_allocEm>

                __asm__ volatile("mv t0, %0" : : "r"(ptr));
    800029cc:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800029d0:	04542823          	sw	t0,80(s0)
                break;
            default:
                break;
        }

        w_sstatus(sstatus);
    800029d4:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800029d8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800029dc:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800029e0:	14179073          	csrw	sepc,a5
        // Ovde se ulazi ako se desi neki interrupt tabele
        printString("ERROR! SCAUSE:");
        printInt(scause);
        printString("\n");
    }
}
    800029e4:	04813083          	ld	ra,72(sp)
    800029e8:	04013403          	ld	s0,64(sp)
    800029ec:	03813483          	ld	s1,56(sp)
    800029f0:	05010113          	addi	sp,sp,80
    800029f4:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r" (memptr));
    800029f8:	00058513          	mv	a0,a1
                returnValue = MemoryAllocator::mem_free(memptr);
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	9cc080e7          	jalr	-1588(ra) # 800023c8 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv t0, %0" : : "r"(returnValue));
    80002a04:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002a08:	04542823          	sw	t0,80(s0)
                break;
    80002a0c:	fc9ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile("mv %0, a1" : "=r" (tcbForStart));
    80002a10:	00058513          	mv	a0,a1
        Scheduler::put(tcbToStart);
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	2b4080e7          	jalr	692(ra) # 80002cc8 <_ZN9Scheduler3putEP3TCB>
    }
    80002a1c:	fb9ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile ("mv %0, a1" : "=r" (tcbNoStart));
    80002a20:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (bodyNoStart));
    80002a24:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a7" : "=r" (argNoStart));
    80002a28:	00088593          	mv	a1,a7
                *tcbNoStart = TCB::createThreadWithoutStarting(bodyNoStart, argNoStart);
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	5fc080e7          	jalr	1532(ra) # 80002028 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_>
    80002a34:	00a4b023          	sd	a0,0(s1)
                if(*tcbNoStart != nullptr) {
    80002a38:	00050863          	beqz	a0,80002a48 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                    __asm__ volatile ("li t0, 0");
    80002a3c:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002a40:	04542823          	sw	t0,80(s0)
    80002a44:	f91ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                    __asm__ volatile ("li t0, -1");
    80002a48:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002a4c:	04542823          	sw	t0,80(s0)
    80002a50:	f85ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    80002a54:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002a58:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a7" : "=r" (arg));
    80002a5c:	00088593          	mv	a1,a7
                *tcb = TCB::createThread(body, arg);
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	4f4080e7          	jalr	1268(ra) # 80001f54 <_ZN3TCB12createThreadEPFvPvES0_>
    80002a68:	00a4b023          	sd	a0,0(s1)
                if(*tcb != nullptr) {
    80002a6c:	00050863          	beqz	a0,80002a7c <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                    __asm__ volatile ("li t0, 0");
    80002a70:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002a74:	04542823          	sw	t0,80(s0)
    80002a78:	f5dff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                    __asm__ volatile ("li t0, -1");
    80002a7c:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002a80:	04542823          	sw	t0,80(s0)
    80002a84:	f51ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                TCB::running->setFinished(true);
    80002a88:	00009797          	auipc	a5,0x9
    80002a8c:	c587b783          	ld	a5,-936(a5) # 8000b6e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002a90:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002a94:	00100713          	li	a4,1
    80002a98:	02e78023          	sb	a4,32(a5)
                TCB::dispatch();
    80002a9c:	fffff097          	auipc	ra,0xfffff
    80002aa0:	678080e7          	jalr	1656(ra) # 80002114 <_ZN3TCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    80002aa4:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    80002aa8:	04542823          	sw	t0,80(s0)
                break;
    80002aac:	f29ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                TCB::dispatch();
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	664080e7          	jalr	1636(ra) # 80002114 <_ZN3TCB8dispatchEv>
                break;
    80002ab8:	f1dff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002abc:	00058513          	mv	a0,a1
                TCB::join(handle);
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	6e0080e7          	jalr	1760(ra) # 800021a0 <_ZN3TCB4joinEPS_>
                break;
    80002ac8:	f0dff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile ("mv %0, a2" : "=r" (init));
    80002acc:	00060513          	mv	a0,a2
    80002ad0:	0005051b          	sext.w	a0,a0
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80002ad4:	00058493          	mv	s1,a1
                *semHandle = MySemaphore::createSemaphore(init);
    80002ad8:	fffff097          	auipc	ra,0xfffff
    80002adc:	dc4080e7          	jalr	-572(ra) # 8000189c <_ZN11MySemaphore15createSemaphoreEj>
    80002ae0:	00a4b023          	sd	a0,0(s1)
                if(*semHandle != nullptr) {
    80002ae4:	00050863          	beqz	a0,80002af4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                    __asm__ volatile ("li t0, 0");
    80002ae8:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002aec:	04542823          	sw	t0,80(s0)
    80002af0:	ee5ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                    __asm__ volatile ("li t0, -1");
    80002af4:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002af8:	04542823          	sw	t0,80(s0)
    80002afc:	ed9ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002b00:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    80002b04:	00050c63          	beqz	a0,80002b1c <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
                    returnValue = semHandlePtr->close();
    80002b08:	fffff097          	auipc	ra,0xfffff
    80002b0c:	ddc080e7          	jalr	-548(ra) # 800018e4 <_ZN11MySemaphore5closeEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002b10:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002b14:	04542823          	sw	t0,80(s0)
                break;
    80002b18:	ebdff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                else returnValue = -2;
    80002b1c:	ffe00513          	li	a0,-2
    80002b20:	ff1ff06f          	j	80002b10 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002b24:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    80002b28:	00050c63          	beqz	a0,80002b40 <_ZN5Riscv20handleSupervisorTrapEv+0x200>
                    returnValue = semHandlePtr->wait();
    80002b2c:	fffff097          	auipc	ra,0xfffff
    80002b30:	c08080e7          	jalr	-1016(ra) # 80001734 <_ZN11MySemaphore4waitEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002b34:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002b38:	04542823          	sw	t0,80(s0)
                break;
    80002b3c:	e99ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                else returnValue = -2;
    80002b40:	ffe00513          	li	a0,-2
    80002b44:	ff1ff06f          	j	80002b34 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002b48:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr)
    80002b4c:	00050c63          	beqz	a0,80002b64 <_ZN5Riscv20handleSupervisorTrapEv+0x224>
                    returnValue = semHandlePtr->signal();
    80002b50:	fffff097          	auipc	ra,0xfffff
    80002b54:	cb0080e7          	jalr	-848(ra) # 80001800 <_ZN11MySemaphore6signalEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002b58:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002b5c:	04542823          	sw	t0,80(s0)
                break;
    80002b60:	e75ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                    returnValue = -2;
    80002b64:	ffe00513          	li	a0,-2
    80002b68:	ff1ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0x218>
                returnValue = __getc();
    80002b6c:	00006097          	auipc	ra,0x6
    80002b70:	9bc080e7          	jalr	-1604(ra) # 80008528 <__getc>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002b74:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002b78:	04542823          	sw	t0,80(s0)
                break;
    80002b7c:	e59ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile ("mv %0, a1" : "=r" (c));
    80002b80:	00058513          	mv	a0,a1
                __putc(c);
    80002b84:	0ff57513          	andi	a0,a0,255
    80002b88:	00006097          	auipc	ra,0x6
    80002b8c:	964080e7          	jalr	-1692(ra) # 800084ec <__putc>
                break;
    80002b90:	e45ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                TCB::dispatch();
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	580080e7          	jalr	1408(ra) # 80002114 <_ZN3TCB8dispatchEv>
                break;
    80002b9c:	e39ff06f          	j	800029d4 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
        printString("ERROR! SCAUSE:");
    80002ba0:	00006517          	auipc	a0,0x6
    80002ba4:	62850513          	addi	a0,a0,1576 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80002ba8:	00002097          	auipc	ra,0x2
    80002bac:	638080e7          	jalr	1592(ra) # 800051e0 <_Z11printStringPKc>
        printInt(scause);
    80002bb0:	00000613          	li	a2,0
    80002bb4:	00a00593          	li	a1,10
    80002bb8:	0004851b          	sext.w	a0,s1
    80002bbc:	00002097          	auipc	ra,0x2
    80002bc0:	7d4080e7          	jalr	2004(ra) # 80005390 <_Z8printIntiii>
        printString("\n");
    80002bc4:	00006517          	auipc	a0,0x6
    80002bc8:	5e450513          	addi	a0,a0,1508 # 800091a8 <CONSOLE_STATUS+0x198>
    80002bcc:	00002097          	auipc	ra,0x2
    80002bd0:	614080e7          	jalr	1556(ra) # 800051e0 <_Z11printStringPKc>
}
    80002bd4:	e11ff06f          	j	800029e4 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>

0000000080002bd8 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    80002bd8:	ff010113          	addi	sp,sp,-16
    80002bdc:	00113423          	sd	ra,8(sp)
    80002be0:	00813023          	sd	s0,0(sp)
    80002be4:	01010413          	addi	s0,sp,16
    console_handler();
    80002be8:	00006097          	auipc	ra,0x6
    80002bec:	978080e7          	jalr	-1672(ra) # 80008560 <console_handler>
}
    80002bf0:	00813083          	ld	ra,8(sp)
    80002bf4:	00013403          	ld	s0,0(sp)
    80002bf8:	01010113          	addi	sp,sp,16
    80002bfc:	00008067          	ret

0000000080002c00 <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    80002c00:	ff010113          	addi	sp,sp,-16
    80002c04:	00813423          	sd	s0,8(sp)
    80002c08:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002c0c:	00200793          	li	a5,2
    80002c10:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
    80002c14:	00813403          	ld	s0,8(sp)
    80002c18:	01010113          	addi	sp,sp,16
    80002c1c:	00008067          	ret

0000000080002c20 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002c20:	ff010113          	addi	sp,sp,-16
    80002c24:	00813423          	sd	s0,8(sp)
    80002c28:	01010413          	addi	s0,sp,16
    80002c2c:	00100793          	li	a5,1
    80002c30:	00f50863          	beq	a0,a5,80002c40 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002c34:	00813403          	ld	s0,8(sp)
    80002c38:	01010113          	addi	sp,sp,16
    80002c3c:	00008067          	ret
    80002c40:	000107b7          	lui	a5,0x10
    80002c44:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002c48:	fef596e3          	bne	a1,a5,80002c34 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002c4c:	00009797          	auipc	a5,0x9
    80002c50:	b1c78793          	addi	a5,a5,-1252 # 8000b768 <_ZN9Scheduler16readyThreadQueueE>
    80002c54:	0007b023          	sd	zero,0(a5)
    80002c58:	0007b423          	sd	zero,8(a5)
    80002c5c:	fd9ff06f          	j	80002c34 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002c60 <_ZN9Scheduler3getEv>:
{
    80002c60:	fe010113          	addi	sp,sp,-32
    80002c64:	00113c23          	sd	ra,24(sp)
    80002c68:	00813823          	sd	s0,16(sp)
    80002c6c:	00913423          	sd	s1,8(sp)
    80002c70:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002c74:	00009517          	auipc	a0,0x9
    80002c78:	af453503          	ld	a0,-1292(a0) # 8000b768 <_ZN9Scheduler16readyThreadQueueE>
    80002c7c:	04050263          	beqz	a0,80002cc0 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002c80:	00853783          	ld	a5,8(a0)
    80002c84:	00009717          	auipc	a4,0x9
    80002c88:	aef73223          	sd	a5,-1308(a4) # 8000b768 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002c8c:	02078463          	beqz	a5,80002cb4 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002c90:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80002c94:	fffff097          	auipc	ra,0xfffff
    80002c98:	734080e7          	jalr	1844(ra) # 800023c8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002c9c:	00048513          	mv	a0,s1
    80002ca0:	01813083          	ld	ra,24(sp)
    80002ca4:	01013403          	ld	s0,16(sp)
    80002ca8:	00813483          	ld	s1,8(sp)
    80002cac:	02010113          	addi	sp,sp,32
    80002cb0:	00008067          	ret
        if (!head) { tail = 0; }
    80002cb4:	00009797          	auipc	a5,0x9
    80002cb8:	aa07be23          	sd	zero,-1348(a5) # 8000b770 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002cbc:	fd5ff06f          	j	80002c90 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002cc0:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002cc4:	fd9ff06f          	j	80002c9c <_ZN9Scheduler3getEv+0x3c>

0000000080002cc8 <_ZN9Scheduler3putEP3TCB>:
{
    80002cc8:	fe010113          	addi	sp,sp,-32
    80002ccc:	00113c23          	sd	ra,24(sp)
    80002cd0:	00813823          	sd	s0,16(sp)
    80002cd4:	00913423          	sd	s1,8(sp)
    80002cd8:	02010413          	addi	s0,sp,32
    80002cdc:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(newSize);
    80002ce0:	04000513          	li	a0,64
    80002ce4:	fffff097          	auipc	ra,0xfffff
    80002ce8:	4fc080e7          	jalr	1276(ra) # 800021e0 <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002cec:	00953023          	sd	s1,0(a0)
    80002cf0:	00053423          	sd	zero,8(a0)
        if (tail)
    80002cf4:	00009797          	auipc	a5,0x9
    80002cf8:	a7c7b783          	ld	a5,-1412(a5) # 8000b770 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002cfc:	02078263          	beqz	a5,80002d20 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002d00:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002d04:	00009797          	auipc	a5,0x9
    80002d08:	a6a7b623          	sd	a0,-1428(a5) # 8000b770 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002d0c:	01813083          	ld	ra,24(sp)
    80002d10:	01013403          	ld	s0,16(sp)
    80002d14:	00813483          	ld	s1,8(sp)
    80002d18:	02010113          	addi	sp,sp,32
    80002d1c:	00008067          	ret
            head = tail = elem;
    80002d20:	00009797          	auipc	a5,0x9
    80002d24:	a4878793          	addi	a5,a5,-1464 # 8000b768 <_ZN9Scheduler16readyThreadQueueE>
    80002d28:	00a7b423          	sd	a0,8(a5)
    80002d2c:	00a7b023          	sd	a0,0(a5)
    80002d30:	fddff06f          	j	80002d0c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002d34 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002d34:	ff010113          	addi	sp,sp,-16
    80002d38:	00113423          	sd	ra,8(sp)
    80002d3c:	00813023          	sd	s0,0(sp)
    80002d40:	01010413          	addi	s0,sp,16
    80002d44:	000105b7          	lui	a1,0x10
    80002d48:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002d4c:	00100513          	li	a0,1
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	ed0080e7          	jalr	-304(ra) # 80002c20 <_Z41__static_initialization_and_destruction_0ii>
    80002d58:	00813083          	ld	ra,8(sp)
    80002d5c:	00013403          	ld	s0,0(sp)
    80002d60:	01010113          	addi	sp,sp,16
    80002d64:	00008067          	ret

0000000080002d68 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002d68:	fe010113          	addi	sp,sp,-32
    80002d6c:	00113c23          	sd	ra,24(sp)
    80002d70:	00813823          	sd	s0,16(sp)
    80002d74:	00913423          	sd	s1,8(sp)
    80002d78:	01213023          	sd	s2,0(sp)
    80002d7c:	02010413          	addi	s0,sp,32
    80002d80:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002d84:	00000913          	li	s2,0
    80002d88:	00c0006f          	j	80002d94 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'A') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002d8c:	fffff097          	auipc	ra,0xfffff
    80002d90:	848080e7          	jalr	-1976(ra) # 800015d4 <_Z15thread_dispatchv>
    while ((key = getc()) != 'A') {
    80002d94:	fffff097          	auipc	ra,0xfffff
    80002d98:	938080e7          	jalr	-1736(ra) # 800016cc <_Z4getcv>
    80002d9c:	0005059b          	sext.w	a1,a0
    80002da0:	04100793          	li	a5,65
    80002da4:	02f58a63          	beq	a1,a5,80002dd8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002da8:	0084b503          	ld	a0,8(s1)
    80002dac:	00003097          	auipc	ra,0x3
    80002db0:	3f4080e7          	jalr	1012(ra) # 800061a0 <_ZN6Buffer3putEi>
        i++;
    80002db4:	0019071b          	addiw	a4,s2,1
    80002db8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002dbc:	0004a683          	lw	a3,0(s1)
    80002dc0:	0026979b          	slliw	a5,a3,0x2
    80002dc4:	00d787bb          	addw	a5,a5,a3
    80002dc8:	0017979b          	slliw	a5,a5,0x1
    80002dcc:	02f767bb          	remw	a5,a4,a5
    80002dd0:	fc0792e3          	bnez	a5,80002d94 <_ZL16producerKeyboardPv+0x2c>
    80002dd4:	fb9ff06f          	j	80002d8c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002dd8:	00100793          	li	a5,1
    80002ddc:	00009717          	auipc	a4,0x9
    80002de0:	98f72e23          	sw	a5,-1636(a4) # 8000b778 <_ZL9threadEnd>
    data->buffer->put('!');
    80002de4:	02100593          	li	a1,33
    80002de8:	0084b503          	ld	a0,8(s1)
    80002dec:	00003097          	auipc	ra,0x3
    80002df0:	3b4080e7          	jalr	948(ra) # 800061a0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002df4:	0104b503          	ld	a0,16(s1)
    80002df8:	fffff097          	auipc	ra,0xfffff
    80002dfc:	8a8080e7          	jalr	-1880(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>
}
    80002e00:	01813083          	ld	ra,24(sp)
    80002e04:	01013403          	ld	s0,16(sp)
    80002e08:	00813483          	ld	s1,8(sp)
    80002e0c:	00013903          	ld	s2,0(sp)
    80002e10:	02010113          	addi	sp,sp,32
    80002e14:	00008067          	ret

0000000080002e18 <_ZL8producerPv>:

static void producer(void *arg) {
    80002e18:	fe010113          	addi	sp,sp,-32
    80002e1c:	00113c23          	sd	ra,24(sp)
    80002e20:	00813823          	sd	s0,16(sp)
    80002e24:	00913423          	sd	s1,8(sp)
    80002e28:	01213023          	sd	s2,0(sp)
    80002e2c:	02010413          	addi	s0,sp,32
    80002e30:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e34:	00000913          	li	s2,0
    80002e38:	00c0006f          	j	80002e44 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e3c:	ffffe097          	auipc	ra,0xffffe
    80002e40:	798080e7          	jalr	1944(ra) # 800015d4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002e44:	00009797          	auipc	a5,0x9
    80002e48:	9347a783          	lw	a5,-1740(a5) # 8000b778 <_ZL9threadEnd>
    80002e4c:	02079e63          	bnez	a5,80002e88 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002e50:	0004a583          	lw	a1,0(s1)
    80002e54:	0305859b          	addiw	a1,a1,48
    80002e58:	0084b503          	ld	a0,8(s1)
    80002e5c:	00003097          	auipc	ra,0x3
    80002e60:	344080e7          	jalr	836(ra) # 800061a0 <_ZN6Buffer3putEi>
        i++;
    80002e64:	0019071b          	addiw	a4,s2,1
    80002e68:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e6c:	0004a683          	lw	a3,0(s1)
    80002e70:	0026979b          	slliw	a5,a3,0x2
    80002e74:	00d787bb          	addw	a5,a5,a3
    80002e78:	0017979b          	slliw	a5,a5,0x1
    80002e7c:	02f767bb          	remw	a5,a4,a5
    80002e80:	fc0792e3          	bnez	a5,80002e44 <_ZL8producerPv+0x2c>
    80002e84:	fb9ff06f          	j	80002e3c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002e88:	0104b503          	ld	a0,16(s1)
    80002e8c:	fffff097          	auipc	ra,0xfffff
    80002e90:	814080e7          	jalr	-2028(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>
}
    80002e94:	01813083          	ld	ra,24(sp)
    80002e98:	01013403          	ld	s0,16(sp)
    80002e9c:	00813483          	ld	s1,8(sp)
    80002ea0:	00013903          	ld	s2,0(sp)
    80002ea4:	02010113          	addi	sp,sp,32
    80002ea8:	00008067          	ret

0000000080002eac <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002eac:	fd010113          	addi	sp,sp,-48
    80002eb0:	02113423          	sd	ra,40(sp)
    80002eb4:	02813023          	sd	s0,32(sp)
    80002eb8:	00913c23          	sd	s1,24(sp)
    80002ebc:	01213823          	sd	s2,16(sp)
    80002ec0:	01313423          	sd	s3,8(sp)
    80002ec4:	03010413          	addi	s0,sp,48
    80002ec8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ecc:	00000993          	li	s3,0
    80002ed0:	01c0006f          	j	80002eec <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002ed4:	ffffe097          	auipc	ra,0xffffe
    80002ed8:	700080e7          	jalr	1792(ra) # 800015d4 <_Z15thread_dispatchv>
    80002edc:	0500006f          	j	80002f2c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002ee0:	00a00513          	li	a0,10
    80002ee4:	fffff097          	auipc	ra,0xfffff
    80002ee8:	810080e7          	jalr	-2032(ra) # 800016f4 <_Z4putcc>
    while (!threadEnd) {
    80002eec:	00009797          	auipc	a5,0x9
    80002ef0:	88c7a783          	lw	a5,-1908(a5) # 8000b778 <_ZL9threadEnd>
    80002ef4:	06079063          	bnez	a5,80002f54 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002ef8:	00893503          	ld	a0,8(s2)
    80002efc:	00003097          	auipc	ra,0x3
    80002f00:	334080e7          	jalr	820(ra) # 80006230 <_ZN6Buffer3getEv>
        i++;
    80002f04:	0019849b          	addiw	s1,s3,1
    80002f08:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f0c:	0ff57513          	andi	a0,a0,255
    80002f10:	ffffe097          	auipc	ra,0xffffe
    80002f14:	7e4080e7          	jalr	2020(ra) # 800016f4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002f18:	00092703          	lw	a4,0(s2)
    80002f1c:	0027179b          	slliw	a5,a4,0x2
    80002f20:	00e787bb          	addw	a5,a5,a4
    80002f24:	02f4e7bb          	remw	a5,s1,a5
    80002f28:	fa0786e3          	beqz	a5,80002ed4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002f2c:	05000793          	li	a5,80
    80002f30:	02f4e4bb          	remw	s1,s1,a5
    80002f34:	fa049ce3          	bnez	s1,80002eec <_ZL8consumerPv+0x40>
    80002f38:	fa9ff06f          	j	80002ee0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002f3c:	00893503          	ld	a0,8(s2)
    80002f40:	00003097          	auipc	ra,0x3
    80002f44:	2f0080e7          	jalr	752(ra) # 80006230 <_ZN6Buffer3getEv>
        putc(key);
    80002f48:	0ff57513          	andi	a0,a0,255
    80002f4c:	ffffe097          	auipc	ra,0xffffe
    80002f50:	7a8080e7          	jalr	1960(ra) # 800016f4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002f54:	00893503          	ld	a0,8(s2)
    80002f58:	00003097          	auipc	ra,0x3
    80002f5c:	364080e7          	jalr	868(ra) # 800062bc <_ZN6Buffer6getCntEv>
    80002f60:	fca04ee3          	bgtz	a0,80002f3c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002f64:	01093503          	ld	a0,16(s2)
    80002f68:	ffffe097          	auipc	ra,0xffffe
    80002f6c:	738080e7          	jalr	1848(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>
}
    80002f70:	02813083          	ld	ra,40(sp)
    80002f74:	02013403          	ld	s0,32(sp)
    80002f78:	01813483          	ld	s1,24(sp)
    80002f7c:	01013903          	ld	s2,16(sp)
    80002f80:	00813983          	ld	s3,8(sp)
    80002f84:	03010113          	addi	sp,sp,48
    80002f88:	00008067          	ret

0000000080002f8c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002f8c:	f9010113          	addi	sp,sp,-112
    80002f90:	06113423          	sd	ra,104(sp)
    80002f94:	06813023          	sd	s0,96(sp)
    80002f98:	04913c23          	sd	s1,88(sp)
    80002f9c:	05213823          	sd	s2,80(sp)
    80002fa0:	05313423          	sd	s3,72(sp)
    80002fa4:	05413023          	sd	s4,64(sp)
    80002fa8:	03513c23          	sd	s5,56(sp)
    80002fac:	03613823          	sd	s6,48(sp)
    80002fb0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002fb4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002fb8:	00006517          	auipc	a0,0x6
    80002fbc:	33050513          	addi	a0,a0,816 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80002fc0:	00002097          	auipc	ra,0x2
    80002fc4:	220080e7          	jalr	544(ra) # 800051e0 <_Z11printStringPKc>
    getString(input, 30);
    80002fc8:	01e00593          	li	a1,30
    80002fcc:	fa040493          	addi	s1,s0,-96
    80002fd0:	00048513          	mv	a0,s1
    80002fd4:	00002097          	auipc	ra,0x2
    80002fd8:	294080e7          	jalr	660(ra) # 80005268 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002fdc:	00048513          	mv	a0,s1
    80002fe0:	00002097          	auipc	ra,0x2
    80002fe4:	360080e7          	jalr	864(ra) # 80005340 <_Z11stringToIntPKc>
    80002fe8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002fec:	00006517          	auipc	a0,0x6
    80002ff0:	31c50513          	addi	a0,a0,796 # 80009308 <CONSOLE_STATUS+0x2f8>
    80002ff4:	00002097          	auipc	ra,0x2
    80002ff8:	1ec080e7          	jalr	492(ra) # 800051e0 <_Z11printStringPKc>
    getString(input, 30);
    80002ffc:	01e00593          	li	a1,30
    80003000:	00048513          	mv	a0,s1
    80003004:	00002097          	auipc	ra,0x2
    80003008:	264080e7          	jalr	612(ra) # 80005268 <_Z9getStringPci>
    n = stringToInt(input);
    8000300c:	00048513          	mv	a0,s1
    80003010:	00002097          	auipc	ra,0x2
    80003014:	330080e7          	jalr	816(ra) # 80005340 <_Z11stringToIntPKc>
    80003018:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000301c:	00006517          	auipc	a0,0x6
    80003020:	30c50513          	addi	a0,a0,780 # 80009328 <CONSOLE_STATUS+0x318>
    80003024:	00002097          	auipc	ra,0x2
    80003028:	1bc080e7          	jalr	444(ra) # 800051e0 <_Z11printStringPKc>
    8000302c:	00000613          	li	a2,0
    80003030:	00a00593          	li	a1,10
    80003034:	00090513          	mv	a0,s2
    80003038:	00002097          	auipc	ra,0x2
    8000303c:	358080e7          	jalr	856(ra) # 80005390 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003040:	00006517          	auipc	a0,0x6
    80003044:	30050513          	addi	a0,a0,768 # 80009340 <CONSOLE_STATUS+0x330>
    80003048:	00002097          	auipc	ra,0x2
    8000304c:	198080e7          	jalr	408(ra) # 800051e0 <_Z11printStringPKc>
    80003050:	00000613          	li	a2,0
    80003054:	00a00593          	li	a1,10
    80003058:	00048513          	mv	a0,s1
    8000305c:	00002097          	auipc	ra,0x2
    80003060:	334080e7          	jalr	820(ra) # 80005390 <_Z8printIntiii>
    printString(".\n");
    80003064:	00006517          	auipc	a0,0x6
    80003068:	06c50513          	addi	a0,a0,108 # 800090d0 <CONSOLE_STATUS+0xc0>
    8000306c:	00002097          	auipc	ra,0x2
    80003070:	174080e7          	jalr	372(ra) # 800051e0 <_Z11printStringPKc>
    if(threadNum > n) {
    80003074:	0324c463          	blt	s1,s2,8000309c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003078:	03205c63          	blez	s2,800030b0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000307c:	03800513          	li	a0,56
    80003080:	fffff097          	auipc	ra,0xfffff
    80003084:	4a8080e7          	jalr	1192(ra) # 80002528 <_Znwm>
    80003088:	00050a13          	mv	s4,a0
    8000308c:	00048593          	mv	a1,s1
    80003090:	00003097          	auipc	ra,0x3
    80003094:	074080e7          	jalr	116(ra) # 80006104 <_ZN6BufferC1Ei>
    80003098:	0300006f          	j	800030c8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000309c:	00006517          	auipc	a0,0x6
    800030a0:	2bc50513          	addi	a0,a0,700 # 80009358 <CONSOLE_STATUS+0x348>
    800030a4:	00002097          	auipc	ra,0x2
    800030a8:	13c080e7          	jalr	316(ra) # 800051e0 <_Z11printStringPKc>
        return;
    800030ac:	0140006f          	j	800030c0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800030b0:	00006517          	auipc	a0,0x6
    800030b4:	2e850513          	addi	a0,a0,744 # 80009398 <CONSOLE_STATUS+0x388>
    800030b8:	00002097          	auipc	ra,0x2
    800030bc:	128080e7          	jalr	296(ra) # 800051e0 <_Z11printStringPKc>
        return;
    800030c0:	000b0113          	mv	sp,s6
    800030c4:	1500006f          	j	80003214 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800030c8:	00000593          	li	a1,0
    800030cc:	00008517          	auipc	a0,0x8
    800030d0:	6b450513          	addi	a0,a0,1716 # 8000b780 <_ZL10waitForAll>
    800030d4:	ffffe097          	auipc	ra,0xffffe
    800030d8:	544080e7          	jalr	1348(ra) # 80001618 <_Z8sem_openPP11MySemaphorej>
    thread_t threads[threadNum];
    800030dc:	00391793          	slli	a5,s2,0x3
    800030e0:	00f78793          	addi	a5,a5,15
    800030e4:	ff07f793          	andi	a5,a5,-16
    800030e8:	40f10133          	sub	sp,sp,a5
    800030ec:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800030f0:	0019071b          	addiw	a4,s2,1
    800030f4:	00171793          	slli	a5,a4,0x1
    800030f8:	00e787b3          	add	a5,a5,a4
    800030fc:	00379793          	slli	a5,a5,0x3
    80003100:	00f78793          	addi	a5,a5,15
    80003104:	ff07f793          	andi	a5,a5,-16
    80003108:	40f10133          	sub	sp,sp,a5
    8000310c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003110:	00191613          	slli	a2,s2,0x1
    80003114:	012607b3          	add	a5,a2,s2
    80003118:	00379793          	slli	a5,a5,0x3
    8000311c:	00f987b3          	add	a5,s3,a5
    80003120:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003124:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003128:	00008717          	auipc	a4,0x8
    8000312c:	65873703          	ld	a4,1624(a4) # 8000b780 <_ZL10waitForAll>
    80003130:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003134:	00078613          	mv	a2,a5
    80003138:	00000597          	auipc	a1,0x0
    8000313c:	d7458593          	addi	a1,a1,-652 # 80002eac <_ZL8consumerPv>
    80003140:	f9840513          	addi	a0,s0,-104
    80003144:	ffffe097          	auipc	ra,0xffffe
    80003148:	430080e7          	jalr	1072(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000314c:	00000493          	li	s1,0
    80003150:	0280006f          	j	80003178 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003154:	00000597          	auipc	a1,0x0
    80003158:	c1458593          	addi	a1,a1,-1004 # 80002d68 <_ZL16producerKeyboardPv>
                      data + i);
    8000315c:	00179613          	slli	a2,a5,0x1
    80003160:	00f60633          	add	a2,a2,a5
    80003164:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003168:	00c98633          	add	a2,s3,a2
    8000316c:	ffffe097          	auipc	ra,0xffffe
    80003170:	408080e7          	jalr	1032(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003174:	0014849b          	addiw	s1,s1,1
    80003178:	0524d263          	bge	s1,s2,800031bc <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000317c:	00149793          	slli	a5,s1,0x1
    80003180:	009787b3          	add	a5,a5,s1
    80003184:	00379793          	slli	a5,a5,0x3
    80003188:	00f987b3          	add	a5,s3,a5
    8000318c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003190:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003194:	00008717          	auipc	a4,0x8
    80003198:	5ec73703          	ld	a4,1516(a4) # 8000b780 <_ZL10waitForAll>
    8000319c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800031a0:	00048793          	mv	a5,s1
    800031a4:	00349513          	slli	a0,s1,0x3
    800031a8:	00aa8533          	add	a0,s5,a0
    800031ac:	fa9054e3          	blez	s1,80003154 <_Z22producerConsumer_C_APIv+0x1c8>
    800031b0:	00000597          	auipc	a1,0x0
    800031b4:	c6858593          	addi	a1,a1,-920 # 80002e18 <_ZL8producerPv>
    800031b8:	fa5ff06f          	j	8000315c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800031bc:	ffffe097          	auipc	ra,0xffffe
    800031c0:	418080e7          	jalr	1048(ra) # 800015d4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800031c4:	00000493          	li	s1,0
    800031c8:	00994e63          	blt	s2,s1,800031e4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800031cc:	00008517          	auipc	a0,0x8
    800031d0:	5b453503          	ld	a0,1460(a0) # 8000b780 <_ZL10waitForAll>
    800031d4:	ffffe097          	auipc	ra,0xffffe
    800031d8:	4a0080e7          	jalr	1184(ra) # 80001674 <_Z8sem_waitP11MySemaphore>
    for (int i = 0; i <= threadNum; i++) {
    800031dc:	0014849b          	addiw	s1,s1,1
    800031e0:	fe9ff06f          	j	800031c8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800031e4:	00008517          	auipc	a0,0x8
    800031e8:	59c53503          	ld	a0,1436(a0) # 8000b780 <_ZL10waitForAll>
    800031ec:	ffffe097          	auipc	ra,0xffffe
    800031f0:	45c080e7          	jalr	1116(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
    delete buffer;
    800031f4:	000a0e63          	beqz	s4,80003210 <_Z22producerConsumer_C_APIv+0x284>
    800031f8:	000a0513          	mv	a0,s4
    800031fc:	00003097          	auipc	ra,0x3
    80003200:	148080e7          	jalr	328(ra) # 80006344 <_ZN6BufferD1Ev>
    80003204:	000a0513          	mv	a0,s4
    80003208:	fffff097          	auipc	ra,0xfffff
    8000320c:	370080e7          	jalr	880(ra) # 80002578 <_ZdlPv>
    80003210:	000b0113          	mv	sp,s6

}
    80003214:	f9040113          	addi	sp,s0,-112
    80003218:	06813083          	ld	ra,104(sp)
    8000321c:	06013403          	ld	s0,96(sp)
    80003220:	05813483          	ld	s1,88(sp)
    80003224:	05013903          	ld	s2,80(sp)
    80003228:	04813983          	ld	s3,72(sp)
    8000322c:	04013a03          	ld	s4,64(sp)
    80003230:	03813a83          	ld	s5,56(sp)
    80003234:	03013b03          	ld	s6,48(sp)
    80003238:	07010113          	addi	sp,sp,112
    8000323c:	00008067          	ret
    80003240:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003244:	000a0513          	mv	a0,s4
    80003248:	fffff097          	auipc	ra,0xfffff
    8000324c:	330080e7          	jalr	816(ra) # 80002578 <_ZdlPv>
    80003250:	00048513          	mv	a0,s1
    80003254:	00009097          	auipc	ra,0x9
    80003258:	644080e7          	jalr	1604(ra) # 8000c898 <_Unwind_Resume>

000000008000325c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000325c:	fe010113          	addi	sp,sp,-32
    80003260:	00113c23          	sd	ra,24(sp)
    80003264:	00813823          	sd	s0,16(sp)
    80003268:	00913423          	sd	s1,8(sp)
    8000326c:	01213023          	sd	s2,0(sp)
    80003270:	02010413          	addi	s0,sp,32
    80003274:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003278:	00100793          	li	a5,1
    8000327c:	02a7f863          	bgeu	a5,a0,800032ac <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003280:	00a00793          	li	a5,10
    80003284:	02f577b3          	remu	a5,a0,a5
    80003288:	02078e63          	beqz	a5,800032c4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000328c:	fff48513          	addi	a0,s1,-1
    80003290:	00000097          	auipc	ra,0x0
    80003294:	fcc080e7          	jalr	-52(ra) # 8000325c <_ZL9fibonaccim>
    80003298:	00050913          	mv	s2,a0
    8000329c:	ffe48513          	addi	a0,s1,-2
    800032a0:	00000097          	auipc	ra,0x0
    800032a4:	fbc080e7          	jalr	-68(ra) # 8000325c <_ZL9fibonaccim>
    800032a8:	00a90533          	add	a0,s2,a0
}
    800032ac:	01813083          	ld	ra,24(sp)
    800032b0:	01013403          	ld	s0,16(sp)
    800032b4:	00813483          	ld	s1,8(sp)
    800032b8:	00013903          	ld	s2,0(sp)
    800032bc:	02010113          	addi	sp,sp,32
    800032c0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800032c4:	ffffe097          	auipc	ra,0xffffe
    800032c8:	310080e7          	jalr	784(ra) # 800015d4 <_Z15thread_dispatchv>
    800032cc:	fc1ff06f          	j	8000328c <_ZL9fibonaccim+0x30>

00000000800032d0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800032d0:	fe010113          	addi	sp,sp,-32
    800032d4:	00113c23          	sd	ra,24(sp)
    800032d8:	00813823          	sd	s0,16(sp)
    800032dc:	00913423          	sd	s1,8(sp)
    800032e0:	01213023          	sd	s2,0(sp)
    800032e4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800032e8:	00000913          	li	s2,0
    800032ec:	0380006f          	j	80003324 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800032f0:	ffffe097          	auipc	ra,0xffffe
    800032f4:	2e4080e7          	jalr	740(ra) # 800015d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800032f8:	00148493          	addi	s1,s1,1
    800032fc:	000027b7          	lui	a5,0x2
    80003300:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003304:	0097ee63          	bltu	a5,s1,80003320 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003308:	00000713          	li	a4,0
    8000330c:	000077b7          	lui	a5,0x7
    80003310:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003314:	fce7eee3          	bltu	a5,a4,800032f0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003318:	00170713          	addi	a4,a4,1
    8000331c:	ff1ff06f          	j	8000330c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003320:	00190913          	addi	s2,s2,1
    80003324:	00900793          	li	a5,9
    80003328:	0527e063          	bltu	a5,s2,80003368 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000332c:	00006517          	auipc	a0,0x6
    80003330:	cf450513          	addi	a0,a0,-780 # 80009020 <CONSOLE_STATUS+0x10>
    80003334:	00002097          	auipc	ra,0x2
    80003338:	eac080e7          	jalr	-340(ra) # 800051e0 <_Z11printStringPKc>
    8000333c:	00000613          	li	a2,0
    80003340:	00a00593          	li	a1,10
    80003344:	0009051b          	sext.w	a0,s2
    80003348:	00002097          	auipc	ra,0x2
    8000334c:	048080e7          	jalr	72(ra) # 80005390 <_Z8printIntiii>
    80003350:	00006517          	auipc	a0,0x6
    80003354:	e5850513          	addi	a0,a0,-424 # 800091a8 <CONSOLE_STATUS+0x198>
    80003358:	00002097          	auipc	ra,0x2
    8000335c:	e88080e7          	jalr	-376(ra) # 800051e0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003360:	00000493          	li	s1,0
    80003364:	f99ff06f          	j	800032fc <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003368:	00006517          	auipc	a0,0x6
    8000336c:	06050513          	addi	a0,a0,96 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80003370:	00002097          	auipc	ra,0x2
    80003374:	e70080e7          	jalr	-400(ra) # 800051e0 <_Z11printStringPKc>
    finishedA = true;
    80003378:	00100793          	li	a5,1
    8000337c:	00008717          	auipc	a4,0x8
    80003380:	40f70623          	sb	a5,1036(a4) # 8000b788 <_ZL9finishedA>
}
    80003384:	01813083          	ld	ra,24(sp)
    80003388:	01013403          	ld	s0,16(sp)
    8000338c:	00813483          	ld	s1,8(sp)
    80003390:	00013903          	ld	s2,0(sp)
    80003394:	02010113          	addi	sp,sp,32
    80003398:	00008067          	ret

000000008000339c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000339c:	fe010113          	addi	sp,sp,-32
    800033a0:	00113c23          	sd	ra,24(sp)
    800033a4:	00813823          	sd	s0,16(sp)
    800033a8:	00913423          	sd	s1,8(sp)
    800033ac:	01213023          	sd	s2,0(sp)
    800033b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800033b4:	00000913          	li	s2,0
    800033b8:	0380006f          	j	800033f0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800033bc:	ffffe097          	auipc	ra,0xffffe
    800033c0:	218080e7          	jalr	536(ra) # 800015d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800033c4:	00148493          	addi	s1,s1,1
    800033c8:	000027b7          	lui	a5,0x2
    800033cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800033d0:	0097ee63          	bltu	a5,s1,800033ec <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800033d4:	00000713          	li	a4,0
    800033d8:	000077b7          	lui	a5,0x7
    800033dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800033e0:	fce7eee3          	bltu	a5,a4,800033bc <_ZN7WorkerB11workerBodyBEPv+0x20>
    800033e4:	00170713          	addi	a4,a4,1
    800033e8:	ff1ff06f          	j	800033d8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800033ec:	00190913          	addi	s2,s2,1
    800033f0:	00f00793          	li	a5,15
    800033f4:	0527e063          	bltu	a5,s2,80003434 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800033f8:	00006517          	auipc	a0,0x6
    800033fc:	c5850513          	addi	a0,a0,-936 # 80009050 <CONSOLE_STATUS+0x40>
    80003400:	00002097          	auipc	ra,0x2
    80003404:	de0080e7          	jalr	-544(ra) # 800051e0 <_Z11printStringPKc>
    80003408:	00000613          	li	a2,0
    8000340c:	00a00593          	li	a1,10
    80003410:	0009051b          	sext.w	a0,s2
    80003414:	00002097          	auipc	ra,0x2
    80003418:	f7c080e7          	jalr	-132(ra) # 80005390 <_Z8printIntiii>
    8000341c:	00006517          	auipc	a0,0x6
    80003420:	d8c50513          	addi	a0,a0,-628 # 800091a8 <CONSOLE_STATUS+0x198>
    80003424:	00002097          	auipc	ra,0x2
    80003428:	dbc080e7          	jalr	-580(ra) # 800051e0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000342c:	00000493          	li	s1,0
    80003430:	f99ff06f          	j	800033c8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003434:	00006517          	auipc	a0,0x6
    80003438:	fa450513          	addi	a0,a0,-92 # 800093d8 <CONSOLE_STATUS+0x3c8>
    8000343c:	00002097          	auipc	ra,0x2
    80003440:	da4080e7          	jalr	-604(ra) # 800051e0 <_Z11printStringPKc>
    finishedB = true;
    80003444:	00100793          	li	a5,1
    80003448:	00008717          	auipc	a4,0x8
    8000344c:	34f700a3          	sb	a5,833(a4) # 8000b789 <_ZL9finishedB>
    thread_dispatch();
    80003450:	ffffe097          	auipc	ra,0xffffe
    80003454:	184080e7          	jalr	388(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80003458:	01813083          	ld	ra,24(sp)
    8000345c:	01013403          	ld	s0,16(sp)
    80003460:	00813483          	ld	s1,8(sp)
    80003464:	00013903          	ld	s2,0(sp)
    80003468:	02010113          	addi	sp,sp,32
    8000346c:	00008067          	ret

0000000080003470 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003470:	fe010113          	addi	sp,sp,-32
    80003474:	00113c23          	sd	ra,24(sp)
    80003478:	00813823          	sd	s0,16(sp)
    8000347c:	00913423          	sd	s1,8(sp)
    80003480:	01213023          	sd	s2,0(sp)
    80003484:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003488:	00000493          	li	s1,0
    8000348c:	0400006f          	j	800034cc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003490:	00006517          	auipc	a0,0x6
    80003494:	f5850513          	addi	a0,a0,-168 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80003498:	00002097          	auipc	ra,0x2
    8000349c:	d48080e7          	jalr	-696(ra) # 800051e0 <_Z11printStringPKc>
    800034a0:	00000613          	li	a2,0
    800034a4:	00a00593          	li	a1,10
    800034a8:	00048513          	mv	a0,s1
    800034ac:	00002097          	auipc	ra,0x2
    800034b0:	ee4080e7          	jalr	-284(ra) # 80005390 <_Z8printIntiii>
    800034b4:	00006517          	auipc	a0,0x6
    800034b8:	cf450513          	addi	a0,a0,-780 # 800091a8 <CONSOLE_STATUS+0x198>
    800034bc:	00002097          	auipc	ra,0x2
    800034c0:	d24080e7          	jalr	-732(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800034c4:	0014849b          	addiw	s1,s1,1
    800034c8:	0ff4f493          	andi	s1,s1,255
    800034cc:	00200793          	li	a5,2
    800034d0:	fc97f0e3          	bgeu	a5,s1,80003490 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800034d4:	00006517          	auipc	a0,0x6
    800034d8:	f1c50513          	addi	a0,a0,-228 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800034dc:	00002097          	auipc	ra,0x2
    800034e0:	d04080e7          	jalr	-764(ra) # 800051e0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800034e4:	00700313          	li	t1,7
    thread_dispatch();
    800034e8:	ffffe097          	auipc	ra,0xffffe
    800034ec:	0ec080e7          	jalr	236(ra) # 800015d4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800034f0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800034f4:	00006517          	auipc	a0,0x6
    800034f8:	f0c50513          	addi	a0,a0,-244 # 80009400 <CONSOLE_STATUS+0x3f0>
    800034fc:	00002097          	auipc	ra,0x2
    80003500:	ce4080e7          	jalr	-796(ra) # 800051e0 <_Z11printStringPKc>
    80003504:	00000613          	li	a2,0
    80003508:	00a00593          	li	a1,10
    8000350c:	0009051b          	sext.w	a0,s2
    80003510:	00002097          	auipc	ra,0x2
    80003514:	e80080e7          	jalr	-384(ra) # 80005390 <_Z8printIntiii>
    80003518:	00006517          	auipc	a0,0x6
    8000351c:	c9050513          	addi	a0,a0,-880 # 800091a8 <CONSOLE_STATUS+0x198>
    80003520:	00002097          	auipc	ra,0x2
    80003524:	cc0080e7          	jalr	-832(ra) # 800051e0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003528:	00c00513          	li	a0,12
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	d30080e7          	jalr	-720(ra) # 8000325c <_ZL9fibonaccim>
    80003534:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003538:	00006517          	auipc	a0,0x6
    8000353c:	ed050513          	addi	a0,a0,-304 # 80009408 <CONSOLE_STATUS+0x3f8>
    80003540:	00002097          	auipc	ra,0x2
    80003544:	ca0080e7          	jalr	-864(ra) # 800051e0 <_Z11printStringPKc>
    80003548:	00000613          	li	a2,0
    8000354c:	00a00593          	li	a1,10
    80003550:	0009051b          	sext.w	a0,s2
    80003554:	00002097          	auipc	ra,0x2
    80003558:	e3c080e7          	jalr	-452(ra) # 80005390 <_Z8printIntiii>
    8000355c:	00006517          	auipc	a0,0x6
    80003560:	c4c50513          	addi	a0,a0,-948 # 800091a8 <CONSOLE_STATUS+0x198>
    80003564:	00002097          	auipc	ra,0x2
    80003568:	c7c080e7          	jalr	-900(ra) # 800051e0 <_Z11printStringPKc>
    8000356c:	0400006f          	j	800035ac <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003570:	00006517          	auipc	a0,0x6
    80003574:	e7850513          	addi	a0,a0,-392 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	c68080e7          	jalr	-920(ra) # 800051e0 <_Z11printStringPKc>
    80003580:	00000613          	li	a2,0
    80003584:	00a00593          	li	a1,10
    80003588:	00048513          	mv	a0,s1
    8000358c:	00002097          	auipc	ra,0x2
    80003590:	e04080e7          	jalr	-508(ra) # 80005390 <_Z8printIntiii>
    80003594:	00006517          	auipc	a0,0x6
    80003598:	c1450513          	addi	a0,a0,-1004 # 800091a8 <CONSOLE_STATUS+0x198>
    8000359c:	00002097          	auipc	ra,0x2
    800035a0:	c44080e7          	jalr	-956(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800035a4:	0014849b          	addiw	s1,s1,1
    800035a8:	0ff4f493          	andi	s1,s1,255
    800035ac:	00500793          	li	a5,5
    800035b0:	fc97f0e3          	bgeu	a5,s1,80003570 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800035b4:	00006517          	auipc	a0,0x6
    800035b8:	e1450513          	addi	a0,a0,-492 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	c24080e7          	jalr	-988(ra) # 800051e0 <_Z11printStringPKc>
    finishedC = true;
    800035c4:	00100793          	li	a5,1
    800035c8:	00008717          	auipc	a4,0x8
    800035cc:	1cf70123          	sb	a5,450(a4) # 8000b78a <_ZL9finishedC>
    thread_dispatch();
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	004080e7          	jalr	4(ra) # 800015d4 <_Z15thread_dispatchv>
}
    800035d8:	01813083          	ld	ra,24(sp)
    800035dc:	01013403          	ld	s0,16(sp)
    800035e0:	00813483          	ld	s1,8(sp)
    800035e4:	00013903          	ld	s2,0(sp)
    800035e8:	02010113          	addi	sp,sp,32
    800035ec:	00008067          	ret

00000000800035f0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800035f0:	fe010113          	addi	sp,sp,-32
    800035f4:	00113c23          	sd	ra,24(sp)
    800035f8:	00813823          	sd	s0,16(sp)
    800035fc:	00913423          	sd	s1,8(sp)
    80003600:	01213023          	sd	s2,0(sp)
    80003604:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003608:	00a00493          	li	s1,10
    8000360c:	0400006f          	j	8000364c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003610:	00006517          	auipc	a0,0x6
    80003614:	e0850513          	addi	a0,a0,-504 # 80009418 <CONSOLE_STATUS+0x408>
    80003618:	00002097          	auipc	ra,0x2
    8000361c:	bc8080e7          	jalr	-1080(ra) # 800051e0 <_Z11printStringPKc>
    80003620:	00000613          	li	a2,0
    80003624:	00a00593          	li	a1,10
    80003628:	00048513          	mv	a0,s1
    8000362c:	00002097          	auipc	ra,0x2
    80003630:	d64080e7          	jalr	-668(ra) # 80005390 <_Z8printIntiii>
    80003634:	00006517          	auipc	a0,0x6
    80003638:	b7450513          	addi	a0,a0,-1164 # 800091a8 <CONSOLE_STATUS+0x198>
    8000363c:	00002097          	auipc	ra,0x2
    80003640:	ba4080e7          	jalr	-1116(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003644:	0014849b          	addiw	s1,s1,1
    80003648:	0ff4f493          	andi	s1,s1,255
    8000364c:	00c00793          	li	a5,12
    80003650:	fc97f0e3          	bgeu	a5,s1,80003610 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003654:	00006517          	auipc	a0,0x6
    80003658:	dcc50513          	addi	a0,a0,-564 # 80009420 <CONSOLE_STATUS+0x410>
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	b84080e7          	jalr	-1148(ra) # 800051e0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003664:	00500313          	li	t1,5
    thread_dispatch();
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	f6c080e7          	jalr	-148(ra) # 800015d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003670:	01000513          	li	a0,16
    80003674:	00000097          	auipc	ra,0x0
    80003678:	be8080e7          	jalr	-1048(ra) # 8000325c <_ZL9fibonaccim>
    8000367c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003680:	00006517          	auipc	a0,0x6
    80003684:	db050513          	addi	a0,a0,-592 # 80009430 <CONSOLE_STATUS+0x420>
    80003688:	00002097          	auipc	ra,0x2
    8000368c:	b58080e7          	jalr	-1192(ra) # 800051e0 <_Z11printStringPKc>
    80003690:	00000613          	li	a2,0
    80003694:	00a00593          	li	a1,10
    80003698:	0009051b          	sext.w	a0,s2
    8000369c:	00002097          	auipc	ra,0x2
    800036a0:	cf4080e7          	jalr	-780(ra) # 80005390 <_Z8printIntiii>
    800036a4:	00006517          	auipc	a0,0x6
    800036a8:	b0450513          	addi	a0,a0,-1276 # 800091a8 <CONSOLE_STATUS+0x198>
    800036ac:	00002097          	auipc	ra,0x2
    800036b0:	b34080e7          	jalr	-1228(ra) # 800051e0 <_Z11printStringPKc>
    800036b4:	0400006f          	j	800036f4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800036b8:	00006517          	auipc	a0,0x6
    800036bc:	d6050513          	addi	a0,a0,-672 # 80009418 <CONSOLE_STATUS+0x408>
    800036c0:	00002097          	auipc	ra,0x2
    800036c4:	b20080e7          	jalr	-1248(ra) # 800051e0 <_Z11printStringPKc>
    800036c8:	00000613          	li	a2,0
    800036cc:	00a00593          	li	a1,10
    800036d0:	00048513          	mv	a0,s1
    800036d4:	00002097          	auipc	ra,0x2
    800036d8:	cbc080e7          	jalr	-836(ra) # 80005390 <_Z8printIntiii>
    800036dc:	00006517          	auipc	a0,0x6
    800036e0:	acc50513          	addi	a0,a0,-1332 # 800091a8 <CONSOLE_STATUS+0x198>
    800036e4:	00002097          	auipc	ra,0x2
    800036e8:	afc080e7          	jalr	-1284(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800036ec:	0014849b          	addiw	s1,s1,1
    800036f0:	0ff4f493          	andi	s1,s1,255
    800036f4:	00f00793          	li	a5,15
    800036f8:	fc97f0e3          	bgeu	a5,s1,800036b8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800036fc:	00006517          	auipc	a0,0x6
    80003700:	d4450513          	addi	a0,a0,-700 # 80009440 <CONSOLE_STATUS+0x430>
    80003704:	00002097          	auipc	ra,0x2
    80003708:	adc080e7          	jalr	-1316(ra) # 800051e0 <_Z11printStringPKc>
    finishedD = true;
    8000370c:	00100793          	li	a5,1
    80003710:	00008717          	auipc	a4,0x8
    80003714:	06f70da3          	sb	a5,123(a4) # 8000b78b <_ZL9finishedD>
    thread_dispatch();
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	ebc080e7          	jalr	-324(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80003720:	01813083          	ld	ra,24(sp)
    80003724:	01013403          	ld	s0,16(sp)
    80003728:	00813483          	ld	s1,8(sp)
    8000372c:	00013903          	ld	s2,0(sp)
    80003730:	02010113          	addi	sp,sp,32
    80003734:	00008067          	ret

0000000080003738 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003738:	fc010113          	addi	sp,sp,-64
    8000373c:	02113c23          	sd	ra,56(sp)
    80003740:	02813823          	sd	s0,48(sp)
    80003744:	02913423          	sd	s1,40(sp)
    80003748:	03213023          	sd	s2,32(sp)
    8000374c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003750:	02000513          	li	a0,32
    80003754:	fffff097          	auipc	ra,0xfffff
    80003758:	dd4080e7          	jalr	-556(ra) # 80002528 <_Znwm>
    8000375c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003760:	fffff097          	auipc	ra,0xfffff
    80003764:	0dc080e7          	jalr	220(ra) # 8000283c <_ZN6ThreadC1Ev>
    80003768:	00008797          	auipc	a5,0x8
    8000376c:	d8878793          	addi	a5,a5,-632 # 8000b4f0 <_ZTV7WorkerA+0x10>
    80003770:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003774:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003778:	00006517          	auipc	a0,0x6
    8000377c:	cd850513          	addi	a0,a0,-808 # 80009450 <CONSOLE_STATUS+0x440>
    80003780:	00002097          	auipc	ra,0x2
    80003784:	a60080e7          	jalr	-1440(ra) # 800051e0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003788:	02000513          	li	a0,32
    8000378c:	fffff097          	auipc	ra,0xfffff
    80003790:	d9c080e7          	jalr	-612(ra) # 80002528 <_Znwm>
    80003794:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003798:	fffff097          	auipc	ra,0xfffff
    8000379c:	0a4080e7          	jalr	164(ra) # 8000283c <_ZN6ThreadC1Ev>
    800037a0:	00008797          	auipc	a5,0x8
    800037a4:	d7878793          	addi	a5,a5,-648 # 8000b518 <_ZTV7WorkerB+0x10>
    800037a8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800037ac:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800037b0:	00006517          	auipc	a0,0x6
    800037b4:	cb850513          	addi	a0,a0,-840 # 80009468 <CONSOLE_STATUS+0x458>
    800037b8:	00002097          	auipc	ra,0x2
    800037bc:	a28080e7          	jalr	-1496(ra) # 800051e0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800037c0:	02000513          	li	a0,32
    800037c4:	fffff097          	auipc	ra,0xfffff
    800037c8:	d64080e7          	jalr	-668(ra) # 80002528 <_Znwm>
    800037cc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800037d0:	fffff097          	auipc	ra,0xfffff
    800037d4:	06c080e7          	jalr	108(ra) # 8000283c <_ZN6ThreadC1Ev>
    800037d8:	00008797          	auipc	a5,0x8
    800037dc:	d6878793          	addi	a5,a5,-664 # 8000b540 <_ZTV7WorkerC+0x10>
    800037e0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800037e4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800037e8:	00006517          	auipc	a0,0x6
    800037ec:	c9850513          	addi	a0,a0,-872 # 80009480 <CONSOLE_STATUS+0x470>
    800037f0:	00002097          	auipc	ra,0x2
    800037f4:	9f0080e7          	jalr	-1552(ra) # 800051e0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800037f8:	02000513          	li	a0,32
    800037fc:	fffff097          	auipc	ra,0xfffff
    80003800:	d2c080e7          	jalr	-724(ra) # 80002528 <_Znwm>
    80003804:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003808:	fffff097          	auipc	ra,0xfffff
    8000380c:	034080e7          	jalr	52(ra) # 8000283c <_ZN6ThreadC1Ev>
    80003810:	00008797          	auipc	a5,0x8
    80003814:	d5878793          	addi	a5,a5,-680 # 8000b568 <_ZTV7WorkerD+0x10>
    80003818:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000381c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003820:	00006517          	auipc	a0,0x6
    80003824:	c7850513          	addi	a0,a0,-904 # 80009498 <CONSOLE_STATUS+0x488>
    80003828:	00002097          	auipc	ra,0x2
    8000382c:	9b8080e7          	jalr	-1608(ra) # 800051e0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003830:	00000493          	li	s1,0
    80003834:	00300793          	li	a5,3
    80003838:	0297c663          	blt	a5,s1,80003864 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000383c:	00349793          	slli	a5,s1,0x3
    80003840:	fe040713          	addi	a4,s0,-32
    80003844:	00f707b3          	add	a5,a4,a5
    80003848:	fe07b503          	ld	a0,-32(a5)
    8000384c:	fffff097          	auipc	ra,0xfffff
    80003850:	fc0080e7          	jalr	-64(ra) # 8000280c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003854:	0014849b          	addiw	s1,s1,1
    80003858:	fddff06f          	j	80003834 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000385c:	fffff097          	auipc	ra,0xfffff
    80003860:	f24080e7          	jalr	-220(ra) # 80002780 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003864:	00008797          	auipc	a5,0x8
    80003868:	f247c783          	lbu	a5,-220(a5) # 8000b788 <_ZL9finishedA>
    8000386c:	fe0788e3          	beqz	a5,8000385c <_Z20Threads_CPP_API_testv+0x124>
    80003870:	00008797          	auipc	a5,0x8
    80003874:	f197c783          	lbu	a5,-231(a5) # 8000b789 <_ZL9finishedB>
    80003878:	fe0782e3          	beqz	a5,8000385c <_Z20Threads_CPP_API_testv+0x124>
    8000387c:	00008797          	auipc	a5,0x8
    80003880:	f0e7c783          	lbu	a5,-242(a5) # 8000b78a <_ZL9finishedC>
    80003884:	fc078ce3          	beqz	a5,8000385c <_Z20Threads_CPP_API_testv+0x124>
    80003888:	00008797          	auipc	a5,0x8
    8000388c:	f037c783          	lbu	a5,-253(a5) # 8000b78b <_ZL9finishedD>
    80003890:	fc0786e3          	beqz	a5,8000385c <_Z20Threads_CPP_API_testv+0x124>
    80003894:	fc040493          	addi	s1,s0,-64
    80003898:	0080006f          	j	800038a0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000389c:	00848493          	addi	s1,s1,8
    800038a0:	fe040793          	addi	a5,s0,-32
    800038a4:	08f48663          	beq	s1,a5,80003930 <_Z20Threads_CPP_API_testv+0x1f8>
    800038a8:	0004b503          	ld	a0,0(s1)
    800038ac:	fe0508e3          	beqz	a0,8000389c <_Z20Threads_CPP_API_testv+0x164>
    800038b0:	00053783          	ld	a5,0(a0)
    800038b4:	0087b783          	ld	a5,8(a5)
    800038b8:	000780e7          	jalr	a5
    800038bc:	fe1ff06f          	j	8000389c <_Z20Threads_CPP_API_testv+0x164>
    800038c0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800038c4:	00048513          	mv	a0,s1
    800038c8:	fffff097          	auipc	ra,0xfffff
    800038cc:	cb0080e7          	jalr	-848(ra) # 80002578 <_ZdlPv>
    800038d0:	00090513          	mv	a0,s2
    800038d4:	00009097          	auipc	ra,0x9
    800038d8:	fc4080e7          	jalr	-60(ra) # 8000c898 <_Unwind_Resume>
    800038dc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800038e0:	00048513          	mv	a0,s1
    800038e4:	fffff097          	auipc	ra,0xfffff
    800038e8:	c94080e7          	jalr	-876(ra) # 80002578 <_ZdlPv>
    800038ec:	00090513          	mv	a0,s2
    800038f0:	00009097          	auipc	ra,0x9
    800038f4:	fa8080e7          	jalr	-88(ra) # 8000c898 <_Unwind_Resume>
    800038f8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800038fc:	00048513          	mv	a0,s1
    80003900:	fffff097          	auipc	ra,0xfffff
    80003904:	c78080e7          	jalr	-904(ra) # 80002578 <_ZdlPv>
    80003908:	00090513          	mv	a0,s2
    8000390c:	00009097          	auipc	ra,0x9
    80003910:	f8c080e7          	jalr	-116(ra) # 8000c898 <_Unwind_Resume>
    80003914:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003918:	00048513          	mv	a0,s1
    8000391c:	fffff097          	auipc	ra,0xfffff
    80003920:	c5c080e7          	jalr	-932(ra) # 80002578 <_ZdlPv>
    80003924:	00090513          	mv	a0,s2
    80003928:	00009097          	auipc	ra,0x9
    8000392c:	f70080e7          	jalr	-144(ra) # 8000c898 <_Unwind_Resume>
}
    80003930:	03813083          	ld	ra,56(sp)
    80003934:	03013403          	ld	s0,48(sp)
    80003938:	02813483          	ld	s1,40(sp)
    8000393c:	02013903          	ld	s2,32(sp)
    80003940:	04010113          	addi	sp,sp,64
    80003944:	00008067          	ret

0000000080003948 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003948:	ff010113          	addi	sp,sp,-16
    8000394c:	00113423          	sd	ra,8(sp)
    80003950:	00813023          	sd	s0,0(sp)
    80003954:	01010413          	addi	s0,sp,16
    80003958:	00008797          	auipc	a5,0x8
    8000395c:	b9878793          	addi	a5,a5,-1128 # 8000b4f0 <_ZTV7WorkerA+0x10>
    80003960:	00f53023          	sd	a5,0(a0)
    80003964:	fffff097          	auipc	ra,0xfffff
    80003968:	cf4080e7          	jalr	-780(ra) # 80002658 <_ZN6ThreadD1Ev>
    8000396c:	00813083          	ld	ra,8(sp)
    80003970:	00013403          	ld	s0,0(sp)
    80003974:	01010113          	addi	sp,sp,16
    80003978:	00008067          	ret

000000008000397c <_ZN7WorkerAD0Ev>:
    8000397c:	fe010113          	addi	sp,sp,-32
    80003980:	00113c23          	sd	ra,24(sp)
    80003984:	00813823          	sd	s0,16(sp)
    80003988:	00913423          	sd	s1,8(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	00050493          	mv	s1,a0
    80003994:	00008797          	auipc	a5,0x8
    80003998:	b5c78793          	addi	a5,a5,-1188 # 8000b4f0 <_ZTV7WorkerA+0x10>
    8000399c:	00f53023          	sd	a5,0(a0)
    800039a0:	fffff097          	auipc	ra,0xfffff
    800039a4:	cb8080e7          	jalr	-840(ra) # 80002658 <_ZN6ThreadD1Ev>
    800039a8:	00048513          	mv	a0,s1
    800039ac:	fffff097          	auipc	ra,0xfffff
    800039b0:	bcc080e7          	jalr	-1076(ra) # 80002578 <_ZdlPv>
    800039b4:	01813083          	ld	ra,24(sp)
    800039b8:	01013403          	ld	s0,16(sp)
    800039bc:	00813483          	ld	s1,8(sp)
    800039c0:	02010113          	addi	sp,sp,32
    800039c4:	00008067          	ret

00000000800039c8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800039c8:	ff010113          	addi	sp,sp,-16
    800039cc:	00113423          	sd	ra,8(sp)
    800039d0:	00813023          	sd	s0,0(sp)
    800039d4:	01010413          	addi	s0,sp,16
    800039d8:	00008797          	auipc	a5,0x8
    800039dc:	b4078793          	addi	a5,a5,-1216 # 8000b518 <_ZTV7WorkerB+0x10>
    800039e0:	00f53023          	sd	a5,0(a0)
    800039e4:	fffff097          	auipc	ra,0xfffff
    800039e8:	c74080e7          	jalr	-908(ra) # 80002658 <_ZN6ThreadD1Ev>
    800039ec:	00813083          	ld	ra,8(sp)
    800039f0:	00013403          	ld	s0,0(sp)
    800039f4:	01010113          	addi	sp,sp,16
    800039f8:	00008067          	ret

00000000800039fc <_ZN7WorkerBD0Ev>:
    800039fc:	fe010113          	addi	sp,sp,-32
    80003a00:	00113c23          	sd	ra,24(sp)
    80003a04:	00813823          	sd	s0,16(sp)
    80003a08:	00913423          	sd	s1,8(sp)
    80003a0c:	02010413          	addi	s0,sp,32
    80003a10:	00050493          	mv	s1,a0
    80003a14:	00008797          	auipc	a5,0x8
    80003a18:	b0478793          	addi	a5,a5,-1276 # 8000b518 <_ZTV7WorkerB+0x10>
    80003a1c:	00f53023          	sd	a5,0(a0)
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	c38080e7          	jalr	-968(ra) # 80002658 <_ZN6ThreadD1Ev>
    80003a28:	00048513          	mv	a0,s1
    80003a2c:	fffff097          	auipc	ra,0xfffff
    80003a30:	b4c080e7          	jalr	-1204(ra) # 80002578 <_ZdlPv>
    80003a34:	01813083          	ld	ra,24(sp)
    80003a38:	01013403          	ld	s0,16(sp)
    80003a3c:	00813483          	ld	s1,8(sp)
    80003a40:	02010113          	addi	sp,sp,32
    80003a44:	00008067          	ret

0000000080003a48 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003a48:	ff010113          	addi	sp,sp,-16
    80003a4c:	00113423          	sd	ra,8(sp)
    80003a50:	00813023          	sd	s0,0(sp)
    80003a54:	01010413          	addi	s0,sp,16
    80003a58:	00008797          	auipc	a5,0x8
    80003a5c:	ae878793          	addi	a5,a5,-1304 # 8000b540 <_ZTV7WorkerC+0x10>
    80003a60:	00f53023          	sd	a5,0(a0)
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	bf4080e7          	jalr	-1036(ra) # 80002658 <_ZN6ThreadD1Ev>
    80003a6c:	00813083          	ld	ra,8(sp)
    80003a70:	00013403          	ld	s0,0(sp)
    80003a74:	01010113          	addi	sp,sp,16
    80003a78:	00008067          	ret

0000000080003a7c <_ZN7WorkerCD0Ev>:
    80003a7c:	fe010113          	addi	sp,sp,-32
    80003a80:	00113c23          	sd	ra,24(sp)
    80003a84:	00813823          	sd	s0,16(sp)
    80003a88:	00913423          	sd	s1,8(sp)
    80003a8c:	02010413          	addi	s0,sp,32
    80003a90:	00050493          	mv	s1,a0
    80003a94:	00008797          	auipc	a5,0x8
    80003a98:	aac78793          	addi	a5,a5,-1364 # 8000b540 <_ZTV7WorkerC+0x10>
    80003a9c:	00f53023          	sd	a5,0(a0)
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	bb8080e7          	jalr	-1096(ra) # 80002658 <_ZN6ThreadD1Ev>
    80003aa8:	00048513          	mv	a0,s1
    80003aac:	fffff097          	auipc	ra,0xfffff
    80003ab0:	acc080e7          	jalr	-1332(ra) # 80002578 <_ZdlPv>
    80003ab4:	01813083          	ld	ra,24(sp)
    80003ab8:	01013403          	ld	s0,16(sp)
    80003abc:	00813483          	ld	s1,8(sp)
    80003ac0:	02010113          	addi	sp,sp,32
    80003ac4:	00008067          	ret

0000000080003ac8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003ac8:	ff010113          	addi	sp,sp,-16
    80003acc:	00113423          	sd	ra,8(sp)
    80003ad0:	00813023          	sd	s0,0(sp)
    80003ad4:	01010413          	addi	s0,sp,16
    80003ad8:	00008797          	auipc	a5,0x8
    80003adc:	a9078793          	addi	a5,a5,-1392 # 8000b568 <_ZTV7WorkerD+0x10>
    80003ae0:	00f53023          	sd	a5,0(a0)
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	b74080e7          	jalr	-1164(ra) # 80002658 <_ZN6ThreadD1Ev>
    80003aec:	00813083          	ld	ra,8(sp)
    80003af0:	00013403          	ld	s0,0(sp)
    80003af4:	01010113          	addi	sp,sp,16
    80003af8:	00008067          	ret

0000000080003afc <_ZN7WorkerDD0Ev>:
    80003afc:	fe010113          	addi	sp,sp,-32
    80003b00:	00113c23          	sd	ra,24(sp)
    80003b04:	00813823          	sd	s0,16(sp)
    80003b08:	00913423          	sd	s1,8(sp)
    80003b0c:	02010413          	addi	s0,sp,32
    80003b10:	00050493          	mv	s1,a0
    80003b14:	00008797          	auipc	a5,0x8
    80003b18:	a5478793          	addi	a5,a5,-1452 # 8000b568 <_ZTV7WorkerD+0x10>
    80003b1c:	00f53023          	sd	a5,0(a0)
    80003b20:	fffff097          	auipc	ra,0xfffff
    80003b24:	b38080e7          	jalr	-1224(ra) # 80002658 <_ZN6ThreadD1Ev>
    80003b28:	00048513          	mv	a0,s1
    80003b2c:	fffff097          	auipc	ra,0xfffff
    80003b30:	a4c080e7          	jalr	-1460(ra) # 80002578 <_ZdlPv>
    80003b34:	01813083          	ld	ra,24(sp)
    80003b38:	01013403          	ld	s0,16(sp)
    80003b3c:	00813483          	ld	s1,8(sp)
    80003b40:	02010113          	addi	sp,sp,32
    80003b44:	00008067          	ret

0000000080003b48 <_ZN7WorkerA3runEv>:
    void run() override {
    80003b48:	ff010113          	addi	sp,sp,-16
    80003b4c:	00113423          	sd	ra,8(sp)
    80003b50:	00813023          	sd	s0,0(sp)
    80003b54:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003b58:	00000593          	li	a1,0
    80003b5c:	fffff097          	auipc	ra,0xfffff
    80003b60:	774080e7          	jalr	1908(ra) # 800032d0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003b64:	00813083          	ld	ra,8(sp)
    80003b68:	00013403          	ld	s0,0(sp)
    80003b6c:	01010113          	addi	sp,sp,16
    80003b70:	00008067          	ret

0000000080003b74 <_ZN7WorkerB3runEv>:
    void run() override {
    80003b74:	ff010113          	addi	sp,sp,-16
    80003b78:	00113423          	sd	ra,8(sp)
    80003b7c:	00813023          	sd	s0,0(sp)
    80003b80:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003b84:	00000593          	li	a1,0
    80003b88:	00000097          	auipc	ra,0x0
    80003b8c:	814080e7          	jalr	-2028(ra) # 8000339c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003b90:	00813083          	ld	ra,8(sp)
    80003b94:	00013403          	ld	s0,0(sp)
    80003b98:	01010113          	addi	sp,sp,16
    80003b9c:	00008067          	ret

0000000080003ba0 <_ZN7WorkerC3runEv>:
    void run() override {
    80003ba0:	ff010113          	addi	sp,sp,-16
    80003ba4:	00113423          	sd	ra,8(sp)
    80003ba8:	00813023          	sd	s0,0(sp)
    80003bac:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003bb0:	00000593          	li	a1,0
    80003bb4:	00000097          	auipc	ra,0x0
    80003bb8:	8bc080e7          	jalr	-1860(ra) # 80003470 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003bbc:	00813083          	ld	ra,8(sp)
    80003bc0:	00013403          	ld	s0,0(sp)
    80003bc4:	01010113          	addi	sp,sp,16
    80003bc8:	00008067          	ret

0000000080003bcc <_ZN7WorkerD3runEv>:
    void run() override {
    80003bcc:	ff010113          	addi	sp,sp,-16
    80003bd0:	00113423          	sd	ra,8(sp)
    80003bd4:	00813023          	sd	s0,0(sp)
    80003bd8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003bdc:	00000593          	li	a1,0
    80003be0:	00000097          	auipc	ra,0x0
    80003be4:	a10080e7          	jalr	-1520(ra) # 800035f0 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003be8:	00813083          	ld	ra,8(sp)
    80003bec:	00013403          	ld	s0,0(sp)
    80003bf0:	01010113          	addi	sp,sp,16
    80003bf4:	00008067          	ret

0000000080003bf8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003bf8:	f8010113          	addi	sp,sp,-128
    80003bfc:	06113c23          	sd	ra,120(sp)
    80003c00:	06813823          	sd	s0,112(sp)
    80003c04:	06913423          	sd	s1,104(sp)
    80003c08:	07213023          	sd	s2,96(sp)
    80003c0c:	05313c23          	sd	s3,88(sp)
    80003c10:	05413823          	sd	s4,80(sp)
    80003c14:	05513423          	sd	s5,72(sp)
    80003c18:	05613023          	sd	s6,64(sp)
    80003c1c:	03713c23          	sd	s7,56(sp)
    80003c20:	03813823          	sd	s8,48(sp)
    80003c24:	03913423          	sd	s9,40(sp)
    80003c28:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003c2c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c30:	00005517          	auipc	a0,0x5
    80003c34:	6b850513          	addi	a0,a0,1720 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80003c38:	00001097          	auipc	ra,0x1
    80003c3c:	5a8080e7          	jalr	1448(ra) # 800051e0 <_Z11printStringPKc>
    getString(input, 30);
    80003c40:	01e00593          	li	a1,30
    80003c44:	f8040493          	addi	s1,s0,-128
    80003c48:	00048513          	mv	a0,s1
    80003c4c:	00001097          	auipc	ra,0x1
    80003c50:	61c080e7          	jalr	1564(ra) # 80005268 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c54:	00048513          	mv	a0,s1
    80003c58:	00001097          	auipc	ra,0x1
    80003c5c:	6e8080e7          	jalr	1768(ra) # 80005340 <_Z11stringToIntPKc>
    80003c60:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003c64:	00005517          	auipc	a0,0x5
    80003c68:	6a450513          	addi	a0,a0,1700 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003c6c:	00001097          	auipc	ra,0x1
    80003c70:	574080e7          	jalr	1396(ra) # 800051e0 <_Z11printStringPKc>
    getString(input, 30);
    80003c74:	01e00593          	li	a1,30
    80003c78:	00048513          	mv	a0,s1
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	5ec080e7          	jalr	1516(ra) # 80005268 <_Z9getStringPci>
    n = stringToInt(input);
    80003c84:	00048513          	mv	a0,s1
    80003c88:	00001097          	auipc	ra,0x1
    80003c8c:	6b8080e7          	jalr	1720(ra) # 80005340 <_Z11stringToIntPKc>
    80003c90:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003c94:	00005517          	auipc	a0,0x5
    80003c98:	69450513          	addi	a0,a0,1684 # 80009328 <CONSOLE_STATUS+0x318>
    80003c9c:	00001097          	auipc	ra,0x1
    80003ca0:	544080e7          	jalr	1348(ra) # 800051e0 <_Z11printStringPKc>
    printInt(threadNum);
    80003ca4:	00000613          	li	a2,0
    80003ca8:	00a00593          	li	a1,10
    80003cac:	00098513          	mv	a0,s3
    80003cb0:	00001097          	auipc	ra,0x1
    80003cb4:	6e0080e7          	jalr	1760(ra) # 80005390 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003cb8:	00005517          	auipc	a0,0x5
    80003cbc:	68850513          	addi	a0,a0,1672 # 80009340 <CONSOLE_STATUS+0x330>
    80003cc0:	00001097          	auipc	ra,0x1
    80003cc4:	520080e7          	jalr	1312(ra) # 800051e0 <_Z11printStringPKc>
    printInt(n);
    80003cc8:	00000613          	li	a2,0
    80003ccc:	00a00593          	li	a1,10
    80003cd0:	00048513          	mv	a0,s1
    80003cd4:	00001097          	auipc	ra,0x1
    80003cd8:	6bc080e7          	jalr	1724(ra) # 80005390 <_Z8printIntiii>
    printString(".\n");
    80003cdc:	00005517          	auipc	a0,0x5
    80003ce0:	3f450513          	addi	a0,a0,1012 # 800090d0 <CONSOLE_STATUS+0xc0>
    80003ce4:	00001097          	auipc	ra,0x1
    80003ce8:	4fc080e7          	jalr	1276(ra) # 800051e0 <_Z11printStringPKc>
    if (threadNum > n) {
    80003cec:	0334c463          	blt	s1,s3,80003d14 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003cf0:	03305c63          	blez	s3,80003d28 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003cf4:	03800513          	li	a0,56
    80003cf8:	fffff097          	auipc	ra,0xfffff
    80003cfc:	830080e7          	jalr	-2000(ra) # 80002528 <_Znwm>
    80003d00:	00050a93          	mv	s5,a0
    80003d04:	00048593          	mv	a1,s1
    80003d08:	00001097          	auipc	ra,0x1
    80003d0c:	7a8080e7          	jalr	1960(ra) # 800054b0 <_ZN9BufferCPPC1Ei>
    80003d10:	0300006f          	j	80003d40 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d14:	00005517          	auipc	a0,0x5
    80003d18:	64450513          	addi	a0,a0,1604 # 80009358 <CONSOLE_STATUS+0x348>
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	4c4080e7          	jalr	1220(ra) # 800051e0 <_Z11printStringPKc>
        return;
    80003d24:	0140006f          	j	80003d38 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003d28:	00005517          	auipc	a0,0x5
    80003d2c:	67050513          	addi	a0,a0,1648 # 80009398 <CONSOLE_STATUS+0x388>
    80003d30:	00001097          	auipc	ra,0x1
    80003d34:	4b0080e7          	jalr	1200(ra) # 800051e0 <_Z11printStringPKc>
        return;
    80003d38:	000c0113          	mv	sp,s8
    80003d3c:	2140006f          	j	80003f50 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003d40:	01000513          	li	a0,16
    80003d44:	ffffe097          	auipc	ra,0xffffe
    80003d48:	7e4080e7          	jalr	2020(ra) # 80002528 <_Znwm>
    80003d4c:	00050913          	mv	s2,a0
    80003d50:	00000593          	li	a1,0
    80003d54:	fffff097          	auipc	ra,0xfffff
    80003d58:	99c080e7          	jalr	-1636(ra) # 800026f0 <_ZN9SemaphoreC1Ej>
    80003d5c:	00008797          	auipc	a5,0x8
    80003d60:	a327be23          	sd	s2,-1476(a5) # 8000b798 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003d64:	00399793          	slli	a5,s3,0x3
    80003d68:	00f78793          	addi	a5,a5,15
    80003d6c:	ff07f793          	andi	a5,a5,-16
    80003d70:	40f10133          	sub	sp,sp,a5
    80003d74:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003d78:	0019871b          	addiw	a4,s3,1
    80003d7c:	00171793          	slli	a5,a4,0x1
    80003d80:	00e787b3          	add	a5,a5,a4
    80003d84:	00379793          	slli	a5,a5,0x3
    80003d88:	00f78793          	addi	a5,a5,15
    80003d8c:	ff07f793          	andi	a5,a5,-16
    80003d90:	40f10133          	sub	sp,sp,a5
    80003d94:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003d98:	00199493          	slli	s1,s3,0x1
    80003d9c:	013484b3          	add	s1,s1,s3
    80003da0:	00349493          	slli	s1,s1,0x3
    80003da4:	009b04b3          	add	s1,s6,s1
    80003da8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003dac:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003db0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003db4:	02800513          	li	a0,40
    80003db8:	ffffe097          	auipc	ra,0xffffe
    80003dbc:	770080e7          	jalr	1904(ra) # 80002528 <_Znwm>
    80003dc0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003dc4:	fffff097          	auipc	ra,0xfffff
    80003dc8:	a78080e7          	jalr	-1416(ra) # 8000283c <_ZN6ThreadC1Ev>
    80003dcc:	00008797          	auipc	a5,0x8
    80003dd0:	81478793          	addi	a5,a5,-2028 # 8000b5e0 <_ZTV8Consumer+0x10>
    80003dd4:	00fbb023          	sd	a5,0(s7)
    80003dd8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003ddc:	000b8513          	mv	a0,s7
    80003de0:	fffff097          	auipc	ra,0xfffff
    80003de4:	a2c080e7          	jalr	-1492(ra) # 8000280c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003de8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003dec:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003df0:	00008797          	auipc	a5,0x8
    80003df4:	9a87b783          	ld	a5,-1624(a5) # 8000b798 <_ZL10waitForAll>
    80003df8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003dfc:	02800513          	li	a0,40
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	728080e7          	jalr	1832(ra) # 80002528 <_Znwm>
    80003e08:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003e0c:	fffff097          	auipc	ra,0xfffff
    80003e10:	a30080e7          	jalr	-1488(ra) # 8000283c <_ZN6ThreadC1Ev>
    80003e14:	00007797          	auipc	a5,0x7
    80003e18:	77c78793          	addi	a5,a5,1916 # 8000b590 <_ZTV16ProducerKeyborad+0x10>
    80003e1c:	00f4b023          	sd	a5,0(s1)
    80003e20:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e24:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003e28:	00048513          	mv	a0,s1
    80003e2c:	fffff097          	auipc	ra,0xfffff
    80003e30:	9e0080e7          	jalr	-1568(ra) # 8000280c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e34:	00100913          	li	s2,1
    80003e38:	0300006f          	j	80003e68 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e3c:	00007797          	auipc	a5,0x7
    80003e40:	77c78793          	addi	a5,a5,1916 # 8000b5b8 <_ZTV8Producer+0x10>
    80003e44:	00fcb023          	sd	a5,0(s9)
    80003e48:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003e4c:	00391793          	slli	a5,s2,0x3
    80003e50:	00fa07b3          	add	a5,s4,a5
    80003e54:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003e58:	000c8513          	mv	a0,s9
    80003e5c:	fffff097          	auipc	ra,0xfffff
    80003e60:	9b0080e7          	jalr	-1616(ra) # 8000280c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e64:	0019091b          	addiw	s2,s2,1
    80003e68:	05395263          	bge	s2,s3,80003eac <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003e6c:	00191493          	slli	s1,s2,0x1
    80003e70:	012484b3          	add	s1,s1,s2
    80003e74:	00349493          	slli	s1,s1,0x3
    80003e78:	009b04b3          	add	s1,s6,s1
    80003e7c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003e80:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003e84:	00008797          	auipc	a5,0x8
    80003e88:	9147b783          	ld	a5,-1772(a5) # 8000b798 <_ZL10waitForAll>
    80003e8c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003e90:	02800513          	li	a0,40
    80003e94:	ffffe097          	auipc	ra,0xffffe
    80003e98:	694080e7          	jalr	1684(ra) # 80002528 <_Znwm>
    80003e9c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ea0:	fffff097          	auipc	ra,0xfffff
    80003ea4:	99c080e7          	jalr	-1636(ra) # 8000283c <_ZN6ThreadC1Ev>
    80003ea8:	f95ff06f          	j	80003e3c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003eac:	fffff097          	auipc	ra,0xfffff
    80003eb0:	8d4080e7          	jalr	-1836(ra) # 80002780 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003eb4:	00000493          	li	s1,0
    80003eb8:	0099ce63          	blt	s3,s1,80003ed4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003ebc:	00008517          	auipc	a0,0x8
    80003ec0:	8dc53503          	ld	a0,-1828(a0) # 8000b798 <_ZL10waitForAll>
    80003ec4:	fffff097          	auipc	ra,0xfffff
    80003ec8:	864080e7          	jalr	-1948(ra) # 80002728 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003ecc:	0014849b          	addiw	s1,s1,1
    80003ed0:	fe9ff06f          	j	80003eb8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003ed4:	00008517          	auipc	a0,0x8
    80003ed8:	8c453503          	ld	a0,-1852(a0) # 8000b798 <_ZL10waitForAll>
    80003edc:	00050863          	beqz	a0,80003eec <_Z20testConsumerProducerv+0x2f4>
    80003ee0:	00053783          	ld	a5,0(a0)
    80003ee4:	0087b783          	ld	a5,8(a5)
    80003ee8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003eec:	00000493          	li	s1,0
    80003ef0:	0080006f          	j	80003ef8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003ef4:	0014849b          	addiw	s1,s1,1
    80003ef8:	0334d263          	bge	s1,s3,80003f1c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003efc:	00349793          	slli	a5,s1,0x3
    80003f00:	00fa07b3          	add	a5,s4,a5
    80003f04:	0007b503          	ld	a0,0(a5)
    80003f08:	fe0506e3          	beqz	a0,80003ef4 <_Z20testConsumerProducerv+0x2fc>
    80003f0c:	00053783          	ld	a5,0(a0)
    80003f10:	0087b783          	ld	a5,8(a5)
    80003f14:	000780e7          	jalr	a5
    80003f18:	fddff06f          	j	80003ef4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003f1c:	000b8a63          	beqz	s7,80003f30 <_Z20testConsumerProducerv+0x338>
    80003f20:	000bb783          	ld	a5,0(s7)
    80003f24:	0087b783          	ld	a5,8(a5)
    80003f28:	000b8513          	mv	a0,s7
    80003f2c:	000780e7          	jalr	a5
    delete buffer;
    80003f30:	000a8e63          	beqz	s5,80003f4c <_Z20testConsumerProducerv+0x354>
    80003f34:	000a8513          	mv	a0,s5
    80003f38:	00002097          	auipc	ra,0x2
    80003f3c:	870080e7          	jalr	-1936(ra) # 800057a8 <_ZN9BufferCPPD1Ev>
    80003f40:	000a8513          	mv	a0,s5
    80003f44:	ffffe097          	auipc	ra,0xffffe
    80003f48:	634080e7          	jalr	1588(ra) # 80002578 <_ZdlPv>
    80003f4c:	000c0113          	mv	sp,s8
}
    80003f50:	f8040113          	addi	sp,s0,-128
    80003f54:	07813083          	ld	ra,120(sp)
    80003f58:	07013403          	ld	s0,112(sp)
    80003f5c:	06813483          	ld	s1,104(sp)
    80003f60:	06013903          	ld	s2,96(sp)
    80003f64:	05813983          	ld	s3,88(sp)
    80003f68:	05013a03          	ld	s4,80(sp)
    80003f6c:	04813a83          	ld	s5,72(sp)
    80003f70:	04013b03          	ld	s6,64(sp)
    80003f74:	03813b83          	ld	s7,56(sp)
    80003f78:	03013c03          	ld	s8,48(sp)
    80003f7c:	02813c83          	ld	s9,40(sp)
    80003f80:	08010113          	addi	sp,sp,128
    80003f84:	00008067          	ret
    80003f88:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003f8c:	000a8513          	mv	a0,s5
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	5e8080e7          	jalr	1512(ra) # 80002578 <_ZdlPv>
    80003f98:	00048513          	mv	a0,s1
    80003f9c:	00009097          	auipc	ra,0x9
    80003fa0:	8fc080e7          	jalr	-1796(ra) # 8000c898 <_Unwind_Resume>
    80003fa4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003fa8:	00090513          	mv	a0,s2
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	5cc080e7          	jalr	1484(ra) # 80002578 <_ZdlPv>
    80003fb4:	00048513          	mv	a0,s1
    80003fb8:	00009097          	auipc	ra,0x9
    80003fbc:	8e0080e7          	jalr	-1824(ra) # 8000c898 <_Unwind_Resume>
    80003fc0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003fc4:	000b8513          	mv	a0,s7
    80003fc8:	ffffe097          	auipc	ra,0xffffe
    80003fcc:	5b0080e7          	jalr	1456(ra) # 80002578 <_ZdlPv>
    80003fd0:	00048513          	mv	a0,s1
    80003fd4:	00009097          	auipc	ra,0x9
    80003fd8:	8c4080e7          	jalr	-1852(ra) # 8000c898 <_Unwind_Resume>
    80003fdc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003fe0:	00048513          	mv	a0,s1
    80003fe4:	ffffe097          	auipc	ra,0xffffe
    80003fe8:	594080e7          	jalr	1428(ra) # 80002578 <_ZdlPv>
    80003fec:	00090513          	mv	a0,s2
    80003ff0:	00009097          	auipc	ra,0x9
    80003ff4:	8a8080e7          	jalr	-1880(ra) # 8000c898 <_Unwind_Resume>
    80003ff8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003ffc:	000c8513          	mv	a0,s9
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	578080e7          	jalr	1400(ra) # 80002578 <_ZdlPv>
    80004008:	00048513          	mv	a0,s1
    8000400c:	00009097          	auipc	ra,0x9
    80004010:	88c080e7          	jalr	-1908(ra) # 8000c898 <_Unwind_Resume>

0000000080004014 <_ZN8Consumer3runEv>:
    void run() override {
    80004014:	fd010113          	addi	sp,sp,-48
    80004018:	02113423          	sd	ra,40(sp)
    8000401c:	02813023          	sd	s0,32(sp)
    80004020:	00913c23          	sd	s1,24(sp)
    80004024:	01213823          	sd	s2,16(sp)
    80004028:	01313423          	sd	s3,8(sp)
    8000402c:	03010413          	addi	s0,sp,48
    80004030:	00050913          	mv	s2,a0
        int i = 0;
    80004034:	00000993          	li	s3,0
    80004038:	0100006f          	j	80004048 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000403c:	00a00513          	li	a0,10
    80004040:	fffff097          	auipc	ra,0xfffff
    80004044:	85c080e7          	jalr	-1956(ra) # 8000289c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004048:	00007797          	auipc	a5,0x7
    8000404c:	7487a783          	lw	a5,1864(a5) # 8000b790 <_ZL9threadEnd>
    80004050:	04079a63          	bnez	a5,800040a4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004054:	02093783          	ld	a5,32(s2)
    80004058:	0087b503          	ld	a0,8(a5)
    8000405c:	00001097          	auipc	ra,0x1
    80004060:	638080e7          	jalr	1592(ra) # 80005694 <_ZN9BufferCPP3getEv>
            i++;
    80004064:	0019849b          	addiw	s1,s3,1
    80004068:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000406c:	0ff57513          	andi	a0,a0,255
    80004070:	fffff097          	auipc	ra,0xfffff
    80004074:	82c080e7          	jalr	-2004(ra) # 8000289c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004078:	05000793          	li	a5,80
    8000407c:	02f4e4bb          	remw	s1,s1,a5
    80004080:	fc0494e3          	bnez	s1,80004048 <_ZN8Consumer3runEv+0x34>
    80004084:	fb9ff06f          	j	8000403c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004088:	02093783          	ld	a5,32(s2)
    8000408c:	0087b503          	ld	a0,8(a5)
    80004090:	00001097          	auipc	ra,0x1
    80004094:	604080e7          	jalr	1540(ra) # 80005694 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004098:	0ff57513          	andi	a0,a0,255
    8000409c:	fffff097          	auipc	ra,0xfffff
    800040a0:	800080e7          	jalr	-2048(ra) # 8000289c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800040a4:	02093783          	ld	a5,32(s2)
    800040a8:	0087b503          	ld	a0,8(a5)
    800040ac:	00001097          	auipc	ra,0x1
    800040b0:	674080e7          	jalr	1652(ra) # 80005720 <_ZN9BufferCPP6getCntEv>
    800040b4:	fca04ae3          	bgtz	a0,80004088 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800040b8:	02093783          	ld	a5,32(s2)
    800040bc:	0107b503          	ld	a0,16(a5)
    800040c0:	ffffe097          	auipc	ra,0xffffe
    800040c4:	694080e7          	jalr	1684(ra) # 80002754 <_ZN9Semaphore6signalEv>
    }
    800040c8:	02813083          	ld	ra,40(sp)
    800040cc:	02013403          	ld	s0,32(sp)
    800040d0:	01813483          	ld	s1,24(sp)
    800040d4:	01013903          	ld	s2,16(sp)
    800040d8:	00813983          	ld	s3,8(sp)
    800040dc:	03010113          	addi	sp,sp,48
    800040e0:	00008067          	ret

00000000800040e4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800040e4:	ff010113          	addi	sp,sp,-16
    800040e8:	00113423          	sd	ra,8(sp)
    800040ec:	00813023          	sd	s0,0(sp)
    800040f0:	01010413          	addi	s0,sp,16
    800040f4:	00007797          	auipc	a5,0x7
    800040f8:	4ec78793          	addi	a5,a5,1260 # 8000b5e0 <_ZTV8Consumer+0x10>
    800040fc:	00f53023          	sd	a5,0(a0)
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	558080e7          	jalr	1368(ra) # 80002658 <_ZN6ThreadD1Ev>
    80004108:	00813083          	ld	ra,8(sp)
    8000410c:	00013403          	ld	s0,0(sp)
    80004110:	01010113          	addi	sp,sp,16
    80004114:	00008067          	ret

0000000080004118 <_ZN8ConsumerD0Ev>:
    80004118:	fe010113          	addi	sp,sp,-32
    8000411c:	00113c23          	sd	ra,24(sp)
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00913423          	sd	s1,8(sp)
    80004128:	02010413          	addi	s0,sp,32
    8000412c:	00050493          	mv	s1,a0
    80004130:	00007797          	auipc	a5,0x7
    80004134:	4b078793          	addi	a5,a5,1200 # 8000b5e0 <_ZTV8Consumer+0x10>
    80004138:	00f53023          	sd	a5,0(a0)
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	51c080e7          	jalr	1308(ra) # 80002658 <_ZN6ThreadD1Ev>
    80004144:	00048513          	mv	a0,s1
    80004148:	ffffe097          	auipc	ra,0xffffe
    8000414c:	430080e7          	jalr	1072(ra) # 80002578 <_ZdlPv>
    80004150:	01813083          	ld	ra,24(sp)
    80004154:	01013403          	ld	s0,16(sp)
    80004158:	00813483          	ld	s1,8(sp)
    8000415c:	02010113          	addi	sp,sp,32
    80004160:	00008067          	ret

0000000080004164 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004164:	ff010113          	addi	sp,sp,-16
    80004168:	00113423          	sd	ra,8(sp)
    8000416c:	00813023          	sd	s0,0(sp)
    80004170:	01010413          	addi	s0,sp,16
    80004174:	00007797          	auipc	a5,0x7
    80004178:	41c78793          	addi	a5,a5,1052 # 8000b590 <_ZTV16ProducerKeyborad+0x10>
    8000417c:	00f53023          	sd	a5,0(a0)
    80004180:	ffffe097          	auipc	ra,0xffffe
    80004184:	4d8080e7          	jalr	1240(ra) # 80002658 <_ZN6ThreadD1Ev>
    80004188:	00813083          	ld	ra,8(sp)
    8000418c:	00013403          	ld	s0,0(sp)
    80004190:	01010113          	addi	sp,sp,16
    80004194:	00008067          	ret

0000000080004198 <_ZN16ProducerKeyboradD0Ev>:
    80004198:	fe010113          	addi	sp,sp,-32
    8000419c:	00113c23          	sd	ra,24(sp)
    800041a0:	00813823          	sd	s0,16(sp)
    800041a4:	00913423          	sd	s1,8(sp)
    800041a8:	02010413          	addi	s0,sp,32
    800041ac:	00050493          	mv	s1,a0
    800041b0:	00007797          	auipc	a5,0x7
    800041b4:	3e078793          	addi	a5,a5,992 # 8000b590 <_ZTV16ProducerKeyborad+0x10>
    800041b8:	00f53023          	sd	a5,0(a0)
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	49c080e7          	jalr	1180(ra) # 80002658 <_ZN6ThreadD1Ev>
    800041c4:	00048513          	mv	a0,s1
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	3b0080e7          	jalr	944(ra) # 80002578 <_ZdlPv>
    800041d0:	01813083          	ld	ra,24(sp)
    800041d4:	01013403          	ld	s0,16(sp)
    800041d8:	00813483          	ld	s1,8(sp)
    800041dc:	02010113          	addi	sp,sp,32
    800041e0:	00008067          	ret

00000000800041e4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800041e4:	ff010113          	addi	sp,sp,-16
    800041e8:	00113423          	sd	ra,8(sp)
    800041ec:	00813023          	sd	s0,0(sp)
    800041f0:	01010413          	addi	s0,sp,16
    800041f4:	00007797          	auipc	a5,0x7
    800041f8:	3c478793          	addi	a5,a5,964 # 8000b5b8 <_ZTV8Producer+0x10>
    800041fc:	00f53023          	sd	a5,0(a0)
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	458080e7          	jalr	1112(ra) # 80002658 <_ZN6ThreadD1Ev>
    80004208:	00813083          	ld	ra,8(sp)
    8000420c:	00013403          	ld	s0,0(sp)
    80004210:	01010113          	addi	sp,sp,16
    80004214:	00008067          	ret

0000000080004218 <_ZN8ProducerD0Ev>:
    80004218:	fe010113          	addi	sp,sp,-32
    8000421c:	00113c23          	sd	ra,24(sp)
    80004220:	00813823          	sd	s0,16(sp)
    80004224:	00913423          	sd	s1,8(sp)
    80004228:	02010413          	addi	s0,sp,32
    8000422c:	00050493          	mv	s1,a0
    80004230:	00007797          	auipc	a5,0x7
    80004234:	38878793          	addi	a5,a5,904 # 8000b5b8 <_ZTV8Producer+0x10>
    80004238:	00f53023          	sd	a5,0(a0)
    8000423c:	ffffe097          	auipc	ra,0xffffe
    80004240:	41c080e7          	jalr	1052(ra) # 80002658 <_ZN6ThreadD1Ev>
    80004244:	00048513          	mv	a0,s1
    80004248:	ffffe097          	auipc	ra,0xffffe
    8000424c:	330080e7          	jalr	816(ra) # 80002578 <_ZdlPv>
    80004250:	01813083          	ld	ra,24(sp)
    80004254:	01013403          	ld	s0,16(sp)
    80004258:	00813483          	ld	s1,8(sp)
    8000425c:	02010113          	addi	sp,sp,32
    80004260:	00008067          	ret

0000000080004264 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004264:	fe010113          	addi	sp,sp,-32
    80004268:	00113c23          	sd	ra,24(sp)
    8000426c:	00813823          	sd	s0,16(sp)
    80004270:	00913423          	sd	s1,8(sp)
    80004274:	02010413          	addi	s0,sp,32
    80004278:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000427c:	ffffd097          	auipc	ra,0xffffd
    80004280:	450080e7          	jalr	1104(ra) # 800016cc <_Z4getcv>
    80004284:	0005059b          	sext.w	a1,a0
    80004288:	01b00793          	li	a5,27
    8000428c:	00f58c63          	beq	a1,a5,800042a4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004290:	0204b783          	ld	a5,32(s1)
    80004294:	0087b503          	ld	a0,8(a5)
    80004298:	00001097          	auipc	ra,0x1
    8000429c:	36c080e7          	jalr	876(ra) # 80005604 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800042a0:	fddff06f          	j	8000427c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800042a4:	00100793          	li	a5,1
    800042a8:	00007717          	auipc	a4,0x7
    800042ac:	4ef72423          	sw	a5,1256(a4) # 8000b790 <_ZL9threadEnd>
        td->buffer->put('!');
    800042b0:	0204b783          	ld	a5,32(s1)
    800042b4:	02100593          	li	a1,33
    800042b8:	0087b503          	ld	a0,8(a5)
    800042bc:	00001097          	auipc	ra,0x1
    800042c0:	348080e7          	jalr	840(ra) # 80005604 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800042c4:	0204b783          	ld	a5,32(s1)
    800042c8:	0107b503          	ld	a0,16(a5)
    800042cc:	ffffe097          	auipc	ra,0xffffe
    800042d0:	488080e7          	jalr	1160(ra) # 80002754 <_ZN9Semaphore6signalEv>
    }
    800042d4:	01813083          	ld	ra,24(sp)
    800042d8:	01013403          	ld	s0,16(sp)
    800042dc:	00813483          	ld	s1,8(sp)
    800042e0:	02010113          	addi	sp,sp,32
    800042e4:	00008067          	ret

00000000800042e8 <_ZN8Producer3runEv>:
    void run() override {
    800042e8:	fe010113          	addi	sp,sp,-32
    800042ec:	00113c23          	sd	ra,24(sp)
    800042f0:	00813823          	sd	s0,16(sp)
    800042f4:	00913423          	sd	s1,8(sp)
    800042f8:	01213023          	sd	s2,0(sp)
    800042fc:	02010413          	addi	s0,sp,32
    80004300:	00050493          	mv	s1,a0
        int i = 0;
    80004304:	00000913          	li	s2,0
        while (!threadEnd) {
    80004308:	00007797          	auipc	a5,0x7
    8000430c:	4887a783          	lw	a5,1160(a5) # 8000b790 <_ZL9threadEnd>
    80004310:	04079263          	bnez	a5,80004354 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004314:	0204b783          	ld	a5,32(s1)
    80004318:	0007a583          	lw	a1,0(a5)
    8000431c:	0305859b          	addiw	a1,a1,48
    80004320:	0087b503          	ld	a0,8(a5)
    80004324:	00001097          	auipc	ra,0x1
    80004328:	2e0080e7          	jalr	736(ra) # 80005604 <_ZN9BufferCPP3putEi>
            i++;
    8000432c:	0019071b          	addiw	a4,s2,1
    80004330:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004334:	0204b783          	ld	a5,32(s1)
    80004338:	0007a783          	lw	a5,0(a5)
    8000433c:	00e787bb          	addw	a5,a5,a4
    80004340:	00500513          	li	a0,5
    80004344:	02a7e53b          	remw	a0,a5,a0
    80004348:	ffffe097          	auipc	ra,0xffffe
    8000434c:	538080e7          	jalr	1336(ra) # 80002880 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004350:	fb9ff06f          	j	80004308 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004354:	0204b783          	ld	a5,32(s1)
    80004358:	0107b503          	ld	a0,16(a5)
    8000435c:	ffffe097          	auipc	ra,0xffffe
    80004360:	3f8080e7          	jalr	1016(ra) # 80002754 <_ZN9Semaphore6signalEv>
    }
    80004364:	01813083          	ld	ra,24(sp)
    80004368:	01013403          	ld	s0,16(sp)
    8000436c:	00813483          	ld	s1,8(sp)
    80004370:	00013903          	ld	s2,0(sp)
    80004374:	02010113          	addi	sp,sp,32
    80004378:	00008067          	ret

000000008000437c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000437c:	fe010113          	addi	sp,sp,-32
    80004380:	00113c23          	sd	ra,24(sp)
    80004384:	00813823          	sd	s0,16(sp)
    80004388:	00913423          	sd	s1,8(sp)
    8000438c:	01213023          	sd	s2,0(sp)
    80004390:	02010413          	addi	s0,sp,32
    80004394:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004398:	00100793          	li	a5,1
    8000439c:	02a7f863          	bgeu	a5,a0,800043cc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800043a0:	00a00793          	li	a5,10
    800043a4:	02f577b3          	remu	a5,a0,a5
    800043a8:	02078e63          	beqz	a5,800043e4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800043ac:	fff48513          	addi	a0,s1,-1
    800043b0:	00000097          	auipc	ra,0x0
    800043b4:	fcc080e7          	jalr	-52(ra) # 8000437c <_ZL9fibonaccim>
    800043b8:	00050913          	mv	s2,a0
    800043bc:	ffe48513          	addi	a0,s1,-2
    800043c0:	00000097          	auipc	ra,0x0
    800043c4:	fbc080e7          	jalr	-68(ra) # 8000437c <_ZL9fibonaccim>
    800043c8:	00a90533          	add	a0,s2,a0
}
    800043cc:	01813083          	ld	ra,24(sp)
    800043d0:	01013403          	ld	s0,16(sp)
    800043d4:	00813483          	ld	s1,8(sp)
    800043d8:	00013903          	ld	s2,0(sp)
    800043dc:	02010113          	addi	sp,sp,32
    800043e0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800043e4:	ffffd097          	auipc	ra,0xffffd
    800043e8:	1f0080e7          	jalr	496(ra) # 800015d4 <_Z15thread_dispatchv>
    800043ec:	fc1ff06f          	j	800043ac <_ZL9fibonaccim+0x30>

00000000800043f0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800043f0:	fe010113          	addi	sp,sp,-32
    800043f4:	00113c23          	sd	ra,24(sp)
    800043f8:	00813823          	sd	s0,16(sp)
    800043fc:	00913423          	sd	s1,8(sp)
    80004400:	01213023          	sd	s2,0(sp)
    80004404:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004408:	00a00493          	li	s1,10
    8000440c:	0400006f          	j	8000444c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004410:	00005517          	auipc	a0,0x5
    80004414:	00850513          	addi	a0,a0,8 # 80009418 <CONSOLE_STATUS+0x408>
    80004418:	00001097          	auipc	ra,0x1
    8000441c:	dc8080e7          	jalr	-568(ra) # 800051e0 <_Z11printStringPKc>
    80004420:	00000613          	li	a2,0
    80004424:	00a00593          	li	a1,10
    80004428:	00048513          	mv	a0,s1
    8000442c:	00001097          	auipc	ra,0x1
    80004430:	f64080e7          	jalr	-156(ra) # 80005390 <_Z8printIntiii>
    80004434:	00005517          	auipc	a0,0x5
    80004438:	d7450513          	addi	a0,a0,-652 # 800091a8 <CONSOLE_STATUS+0x198>
    8000443c:	00001097          	auipc	ra,0x1
    80004440:	da4080e7          	jalr	-604(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004444:	0014849b          	addiw	s1,s1,1
    80004448:	0ff4f493          	andi	s1,s1,255
    8000444c:	00c00793          	li	a5,12
    80004450:	fc97f0e3          	bgeu	a5,s1,80004410 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004454:	00005517          	auipc	a0,0x5
    80004458:	fcc50513          	addi	a0,a0,-52 # 80009420 <CONSOLE_STATUS+0x410>
    8000445c:	00001097          	auipc	ra,0x1
    80004460:	d84080e7          	jalr	-636(ra) # 800051e0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004464:	00500313          	li	t1,5
    thread_dispatch();
    80004468:	ffffd097          	auipc	ra,0xffffd
    8000446c:	16c080e7          	jalr	364(ra) # 800015d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004470:	01000513          	li	a0,16
    80004474:	00000097          	auipc	ra,0x0
    80004478:	f08080e7          	jalr	-248(ra) # 8000437c <_ZL9fibonaccim>
    8000447c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004480:	00005517          	auipc	a0,0x5
    80004484:	fb050513          	addi	a0,a0,-80 # 80009430 <CONSOLE_STATUS+0x420>
    80004488:	00001097          	auipc	ra,0x1
    8000448c:	d58080e7          	jalr	-680(ra) # 800051e0 <_Z11printStringPKc>
    80004490:	00000613          	li	a2,0
    80004494:	00a00593          	li	a1,10
    80004498:	0009051b          	sext.w	a0,s2
    8000449c:	00001097          	auipc	ra,0x1
    800044a0:	ef4080e7          	jalr	-268(ra) # 80005390 <_Z8printIntiii>
    800044a4:	00005517          	auipc	a0,0x5
    800044a8:	d0450513          	addi	a0,a0,-764 # 800091a8 <CONSOLE_STATUS+0x198>
    800044ac:	00001097          	auipc	ra,0x1
    800044b0:	d34080e7          	jalr	-716(ra) # 800051e0 <_Z11printStringPKc>
    800044b4:	0400006f          	j	800044f4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800044b8:	00005517          	auipc	a0,0x5
    800044bc:	f6050513          	addi	a0,a0,-160 # 80009418 <CONSOLE_STATUS+0x408>
    800044c0:	00001097          	auipc	ra,0x1
    800044c4:	d20080e7          	jalr	-736(ra) # 800051e0 <_Z11printStringPKc>
    800044c8:	00000613          	li	a2,0
    800044cc:	00a00593          	li	a1,10
    800044d0:	00048513          	mv	a0,s1
    800044d4:	00001097          	auipc	ra,0x1
    800044d8:	ebc080e7          	jalr	-324(ra) # 80005390 <_Z8printIntiii>
    800044dc:	00005517          	auipc	a0,0x5
    800044e0:	ccc50513          	addi	a0,a0,-820 # 800091a8 <CONSOLE_STATUS+0x198>
    800044e4:	00001097          	auipc	ra,0x1
    800044e8:	cfc080e7          	jalr	-772(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800044ec:	0014849b          	addiw	s1,s1,1
    800044f0:	0ff4f493          	andi	s1,s1,255
    800044f4:	00f00793          	li	a5,15
    800044f8:	fc97f0e3          	bgeu	a5,s1,800044b8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800044fc:	00005517          	auipc	a0,0x5
    80004500:	f4450513          	addi	a0,a0,-188 # 80009440 <CONSOLE_STATUS+0x430>
    80004504:	00001097          	auipc	ra,0x1
    80004508:	cdc080e7          	jalr	-804(ra) # 800051e0 <_Z11printStringPKc>
    finishedD = true;
    8000450c:	00100793          	li	a5,1
    80004510:	00007717          	auipc	a4,0x7
    80004514:	28f70823          	sb	a5,656(a4) # 8000b7a0 <_ZL9finishedD>
    thread_dispatch();
    80004518:	ffffd097          	auipc	ra,0xffffd
    8000451c:	0bc080e7          	jalr	188(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80004520:	01813083          	ld	ra,24(sp)
    80004524:	01013403          	ld	s0,16(sp)
    80004528:	00813483          	ld	s1,8(sp)
    8000452c:	00013903          	ld	s2,0(sp)
    80004530:	02010113          	addi	sp,sp,32
    80004534:	00008067          	ret

0000000080004538 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004538:	fe010113          	addi	sp,sp,-32
    8000453c:	00113c23          	sd	ra,24(sp)
    80004540:	00813823          	sd	s0,16(sp)
    80004544:	00913423          	sd	s1,8(sp)
    80004548:	01213023          	sd	s2,0(sp)
    8000454c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004550:	00000493          	li	s1,0
    80004554:	0400006f          	j	80004594 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004558:	00005517          	auipc	a0,0x5
    8000455c:	e9050513          	addi	a0,a0,-368 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004560:	00001097          	auipc	ra,0x1
    80004564:	c80080e7          	jalr	-896(ra) # 800051e0 <_Z11printStringPKc>
    80004568:	00000613          	li	a2,0
    8000456c:	00a00593          	li	a1,10
    80004570:	00048513          	mv	a0,s1
    80004574:	00001097          	auipc	ra,0x1
    80004578:	e1c080e7          	jalr	-484(ra) # 80005390 <_Z8printIntiii>
    8000457c:	00005517          	auipc	a0,0x5
    80004580:	c2c50513          	addi	a0,a0,-980 # 800091a8 <CONSOLE_STATUS+0x198>
    80004584:	00001097          	auipc	ra,0x1
    80004588:	c5c080e7          	jalr	-932(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000458c:	0014849b          	addiw	s1,s1,1
    80004590:	0ff4f493          	andi	s1,s1,255
    80004594:	00200793          	li	a5,2
    80004598:	fc97f0e3          	bgeu	a5,s1,80004558 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000459c:	00005517          	auipc	a0,0x5
    800045a0:	e5450513          	addi	a0,a0,-428 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800045a4:	00001097          	auipc	ra,0x1
    800045a8:	c3c080e7          	jalr	-964(ra) # 800051e0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800045ac:	00700313          	li	t1,7
    thread_dispatch();
    800045b0:	ffffd097          	auipc	ra,0xffffd
    800045b4:	024080e7          	jalr	36(ra) # 800015d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800045b8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800045bc:	00005517          	auipc	a0,0x5
    800045c0:	e4450513          	addi	a0,a0,-444 # 80009400 <CONSOLE_STATUS+0x3f0>
    800045c4:	00001097          	auipc	ra,0x1
    800045c8:	c1c080e7          	jalr	-996(ra) # 800051e0 <_Z11printStringPKc>
    800045cc:	00000613          	li	a2,0
    800045d0:	00a00593          	li	a1,10
    800045d4:	0009051b          	sext.w	a0,s2
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	db8080e7          	jalr	-584(ra) # 80005390 <_Z8printIntiii>
    800045e0:	00005517          	auipc	a0,0x5
    800045e4:	bc850513          	addi	a0,a0,-1080 # 800091a8 <CONSOLE_STATUS+0x198>
    800045e8:	00001097          	auipc	ra,0x1
    800045ec:	bf8080e7          	jalr	-1032(ra) # 800051e0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800045f0:	00c00513          	li	a0,12
    800045f4:	00000097          	auipc	ra,0x0
    800045f8:	d88080e7          	jalr	-632(ra) # 8000437c <_ZL9fibonaccim>
    800045fc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004600:	00005517          	auipc	a0,0x5
    80004604:	e0850513          	addi	a0,a0,-504 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004608:	00001097          	auipc	ra,0x1
    8000460c:	bd8080e7          	jalr	-1064(ra) # 800051e0 <_Z11printStringPKc>
    80004610:	00000613          	li	a2,0
    80004614:	00a00593          	li	a1,10
    80004618:	0009051b          	sext.w	a0,s2
    8000461c:	00001097          	auipc	ra,0x1
    80004620:	d74080e7          	jalr	-652(ra) # 80005390 <_Z8printIntiii>
    80004624:	00005517          	auipc	a0,0x5
    80004628:	b8450513          	addi	a0,a0,-1148 # 800091a8 <CONSOLE_STATUS+0x198>
    8000462c:	00001097          	auipc	ra,0x1
    80004630:	bb4080e7          	jalr	-1100(ra) # 800051e0 <_Z11printStringPKc>
    80004634:	0400006f          	j	80004674 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004638:	00005517          	auipc	a0,0x5
    8000463c:	db050513          	addi	a0,a0,-592 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004640:	00001097          	auipc	ra,0x1
    80004644:	ba0080e7          	jalr	-1120(ra) # 800051e0 <_Z11printStringPKc>
    80004648:	00000613          	li	a2,0
    8000464c:	00a00593          	li	a1,10
    80004650:	00048513          	mv	a0,s1
    80004654:	00001097          	auipc	ra,0x1
    80004658:	d3c080e7          	jalr	-708(ra) # 80005390 <_Z8printIntiii>
    8000465c:	00005517          	auipc	a0,0x5
    80004660:	b4c50513          	addi	a0,a0,-1204 # 800091a8 <CONSOLE_STATUS+0x198>
    80004664:	00001097          	auipc	ra,0x1
    80004668:	b7c080e7          	jalr	-1156(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000466c:	0014849b          	addiw	s1,s1,1
    80004670:	0ff4f493          	andi	s1,s1,255
    80004674:	00500793          	li	a5,5
    80004678:	fc97f0e3          	bgeu	a5,s1,80004638 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000467c:	00005517          	auipc	a0,0x5
    80004680:	d4c50513          	addi	a0,a0,-692 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80004684:	00001097          	auipc	ra,0x1
    80004688:	b5c080e7          	jalr	-1188(ra) # 800051e0 <_Z11printStringPKc>
    finishedC = true;
    8000468c:	00100793          	li	a5,1
    80004690:	00007717          	auipc	a4,0x7
    80004694:	10f708a3          	sb	a5,273(a4) # 8000b7a1 <_ZL9finishedC>
    thread_dispatch();
    80004698:	ffffd097          	auipc	ra,0xffffd
    8000469c:	f3c080e7          	jalr	-196(ra) # 800015d4 <_Z15thread_dispatchv>
}
    800046a0:	01813083          	ld	ra,24(sp)
    800046a4:	01013403          	ld	s0,16(sp)
    800046a8:	00813483          	ld	s1,8(sp)
    800046ac:	00013903          	ld	s2,0(sp)
    800046b0:	02010113          	addi	sp,sp,32
    800046b4:	00008067          	ret

00000000800046b8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800046b8:	fe010113          	addi	sp,sp,-32
    800046bc:	00113c23          	sd	ra,24(sp)
    800046c0:	00813823          	sd	s0,16(sp)
    800046c4:	00913423          	sd	s1,8(sp)
    800046c8:	01213023          	sd	s2,0(sp)
    800046cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800046d0:	00000913          	li	s2,0
    800046d4:	0380006f          	j	8000470c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800046d8:	ffffd097          	auipc	ra,0xffffd
    800046dc:	efc080e7          	jalr	-260(ra) # 800015d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800046e0:	00148493          	addi	s1,s1,1
    800046e4:	000027b7          	lui	a5,0x2
    800046e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800046ec:	0097ee63          	bltu	a5,s1,80004708 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800046f0:	00000713          	li	a4,0
    800046f4:	000077b7          	lui	a5,0x7
    800046f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800046fc:	fce7eee3          	bltu	a5,a4,800046d8 <_ZL11workerBodyBPv+0x20>
    80004700:	00170713          	addi	a4,a4,1
    80004704:	ff1ff06f          	j	800046f4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004708:	00190913          	addi	s2,s2,1
    8000470c:	00f00793          	li	a5,15
    80004710:	0527e063          	bltu	a5,s2,80004750 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004714:	00005517          	auipc	a0,0x5
    80004718:	93c50513          	addi	a0,a0,-1732 # 80009050 <CONSOLE_STATUS+0x40>
    8000471c:	00001097          	auipc	ra,0x1
    80004720:	ac4080e7          	jalr	-1340(ra) # 800051e0 <_Z11printStringPKc>
    80004724:	00000613          	li	a2,0
    80004728:	00a00593          	li	a1,10
    8000472c:	0009051b          	sext.w	a0,s2
    80004730:	00001097          	auipc	ra,0x1
    80004734:	c60080e7          	jalr	-928(ra) # 80005390 <_Z8printIntiii>
    80004738:	00005517          	auipc	a0,0x5
    8000473c:	a7050513          	addi	a0,a0,-1424 # 800091a8 <CONSOLE_STATUS+0x198>
    80004740:	00001097          	auipc	ra,0x1
    80004744:	aa0080e7          	jalr	-1376(ra) # 800051e0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004748:	00000493          	li	s1,0
    8000474c:	f99ff06f          	j	800046e4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004750:	00005517          	auipc	a0,0x5
    80004754:	c8850513          	addi	a0,a0,-888 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80004758:	00001097          	auipc	ra,0x1
    8000475c:	a88080e7          	jalr	-1400(ra) # 800051e0 <_Z11printStringPKc>
    finishedB = true;
    80004760:	00100793          	li	a5,1
    80004764:	00007717          	auipc	a4,0x7
    80004768:	02f70f23          	sb	a5,62(a4) # 8000b7a2 <_ZL9finishedB>
    thread_dispatch();
    8000476c:	ffffd097          	auipc	ra,0xffffd
    80004770:	e68080e7          	jalr	-408(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80004774:	01813083          	ld	ra,24(sp)
    80004778:	01013403          	ld	s0,16(sp)
    8000477c:	00813483          	ld	s1,8(sp)
    80004780:	00013903          	ld	s2,0(sp)
    80004784:	02010113          	addi	sp,sp,32
    80004788:	00008067          	ret

000000008000478c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000478c:	fe010113          	addi	sp,sp,-32
    80004790:	00113c23          	sd	ra,24(sp)
    80004794:	00813823          	sd	s0,16(sp)
    80004798:	00913423          	sd	s1,8(sp)
    8000479c:	01213023          	sd	s2,0(sp)
    800047a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800047a4:	00000913          	li	s2,0
    800047a8:	0380006f          	j	800047e0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800047ac:	ffffd097          	auipc	ra,0xffffd
    800047b0:	e28080e7          	jalr	-472(ra) # 800015d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800047b4:	00148493          	addi	s1,s1,1
    800047b8:	000027b7          	lui	a5,0x2
    800047bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800047c0:	0097ee63          	bltu	a5,s1,800047dc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800047c4:	00000713          	li	a4,0
    800047c8:	000077b7          	lui	a5,0x7
    800047cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800047d0:	fce7eee3          	bltu	a5,a4,800047ac <_ZL11workerBodyAPv+0x20>
    800047d4:	00170713          	addi	a4,a4,1
    800047d8:	ff1ff06f          	j	800047c8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800047dc:	00190913          	addi	s2,s2,1
    800047e0:	00900793          	li	a5,9
    800047e4:	0527e063          	bltu	a5,s2,80004824 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800047e8:	00005517          	auipc	a0,0x5
    800047ec:	83850513          	addi	a0,a0,-1992 # 80009020 <CONSOLE_STATUS+0x10>
    800047f0:	00001097          	auipc	ra,0x1
    800047f4:	9f0080e7          	jalr	-1552(ra) # 800051e0 <_Z11printStringPKc>
    800047f8:	00000613          	li	a2,0
    800047fc:	00a00593          	li	a1,10
    80004800:	0009051b          	sext.w	a0,s2
    80004804:	00001097          	auipc	ra,0x1
    80004808:	b8c080e7          	jalr	-1140(ra) # 80005390 <_Z8printIntiii>
    8000480c:	00005517          	auipc	a0,0x5
    80004810:	99c50513          	addi	a0,a0,-1636 # 800091a8 <CONSOLE_STATUS+0x198>
    80004814:	00001097          	auipc	ra,0x1
    80004818:	9cc080e7          	jalr	-1588(ra) # 800051e0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000481c:	00000493          	li	s1,0
    80004820:	f99ff06f          	j	800047b8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004824:	00005517          	auipc	a0,0x5
    80004828:	ba450513          	addi	a0,a0,-1116 # 800093c8 <CONSOLE_STATUS+0x3b8>
    8000482c:	00001097          	auipc	ra,0x1
    80004830:	9b4080e7          	jalr	-1612(ra) # 800051e0 <_Z11printStringPKc>
    finishedA = true;
    80004834:	00100793          	li	a5,1
    80004838:	00007717          	auipc	a4,0x7
    8000483c:	f6f705a3          	sb	a5,-149(a4) # 8000b7a3 <_ZL9finishedA>
}
    80004840:	01813083          	ld	ra,24(sp)
    80004844:	01013403          	ld	s0,16(sp)
    80004848:	00813483          	ld	s1,8(sp)
    8000484c:	00013903          	ld	s2,0(sp)
    80004850:	02010113          	addi	sp,sp,32
    80004854:	00008067          	ret

0000000080004858 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004858:	fd010113          	addi	sp,sp,-48
    8000485c:	02113423          	sd	ra,40(sp)
    80004860:	02813023          	sd	s0,32(sp)
    80004864:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004868:	00000613          	li	a2,0
    8000486c:	00000597          	auipc	a1,0x0
    80004870:	f2058593          	addi	a1,a1,-224 # 8000478c <_ZL11workerBodyAPv>
    80004874:	fd040513          	addi	a0,s0,-48
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	cfc080e7          	jalr	-772(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004880:	00005517          	auipc	a0,0x5
    80004884:	bd050513          	addi	a0,a0,-1072 # 80009450 <CONSOLE_STATUS+0x440>
    80004888:	00001097          	auipc	ra,0x1
    8000488c:	958080e7          	jalr	-1704(ra) # 800051e0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004890:	00000613          	li	a2,0
    80004894:	00000597          	auipc	a1,0x0
    80004898:	e2458593          	addi	a1,a1,-476 # 800046b8 <_ZL11workerBodyBPv>
    8000489c:	fd840513          	addi	a0,s0,-40
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	cd4080e7          	jalr	-812(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800048a8:	00005517          	auipc	a0,0x5
    800048ac:	bc050513          	addi	a0,a0,-1088 # 80009468 <CONSOLE_STATUS+0x458>
    800048b0:	00001097          	auipc	ra,0x1
    800048b4:	930080e7          	jalr	-1744(ra) # 800051e0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800048b8:	00000613          	li	a2,0
    800048bc:	00000597          	auipc	a1,0x0
    800048c0:	c7c58593          	addi	a1,a1,-900 # 80004538 <_ZL11workerBodyCPv>
    800048c4:	fe040513          	addi	a0,s0,-32
    800048c8:	ffffd097          	auipc	ra,0xffffd
    800048cc:	cac080e7          	jalr	-852(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800048d0:	00005517          	auipc	a0,0x5
    800048d4:	bb050513          	addi	a0,a0,-1104 # 80009480 <CONSOLE_STATUS+0x470>
    800048d8:	00001097          	auipc	ra,0x1
    800048dc:	908080e7          	jalr	-1784(ra) # 800051e0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800048e0:	00000613          	li	a2,0
    800048e4:	00000597          	auipc	a1,0x0
    800048e8:	b0c58593          	addi	a1,a1,-1268 # 800043f0 <_ZL11workerBodyDPv>
    800048ec:	fe840513          	addi	a0,s0,-24
    800048f0:	ffffd097          	auipc	ra,0xffffd
    800048f4:	c84080e7          	jalr	-892(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800048f8:	00005517          	auipc	a0,0x5
    800048fc:	ba050513          	addi	a0,a0,-1120 # 80009498 <CONSOLE_STATUS+0x488>
    80004900:	00001097          	auipc	ra,0x1
    80004904:	8e0080e7          	jalr	-1824(ra) # 800051e0 <_Z11printStringPKc>
    80004908:	00c0006f          	j	80004914 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000490c:	ffffd097          	auipc	ra,0xffffd
    80004910:	cc8080e7          	jalr	-824(ra) # 800015d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004914:	00007797          	auipc	a5,0x7
    80004918:	e8f7c783          	lbu	a5,-369(a5) # 8000b7a3 <_ZL9finishedA>
    8000491c:	fe0788e3          	beqz	a5,8000490c <_Z18Threads_C_API_testv+0xb4>
    80004920:	00007797          	auipc	a5,0x7
    80004924:	e827c783          	lbu	a5,-382(a5) # 8000b7a2 <_ZL9finishedB>
    80004928:	fe0782e3          	beqz	a5,8000490c <_Z18Threads_C_API_testv+0xb4>
    8000492c:	00007797          	auipc	a5,0x7
    80004930:	e757c783          	lbu	a5,-395(a5) # 8000b7a1 <_ZL9finishedC>
    80004934:	fc078ce3          	beqz	a5,8000490c <_Z18Threads_C_API_testv+0xb4>
    80004938:	00007797          	auipc	a5,0x7
    8000493c:	e687c783          	lbu	a5,-408(a5) # 8000b7a0 <_ZL9finishedD>
    80004940:	fc0786e3          	beqz	a5,8000490c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004944:	02813083          	ld	ra,40(sp)
    80004948:	02013403          	ld	s0,32(sp)
    8000494c:	03010113          	addi	sp,sp,48
    80004950:	00008067          	ret

0000000080004954 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004954:	fd010113          	addi	sp,sp,-48
    80004958:	02113423          	sd	ra,40(sp)
    8000495c:	02813023          	sd	s0,32(sp)
    80004960:	00913c23          	sd	s1,24(sp)
    80004964:	01213823          	sd	s2,16(sp)
    80004968:	01313423          	sd	s3,8(sp)
    8000496c:	03010413          	addi	s0,sp,48
    80004970:	00050993          	mv	s3,a0
    80004974:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004978:	00000913          	li	s2,0
    8000497c:	00c0006f          	j	80004988 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 'A') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004980:	ffffe097          	auipc	ra,0xffffe
    80004984:	e00080e7          	jalr	-512(ra) # 80002780 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 'A') {
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	d44080e7          	jalr	-700(ra) # 800016cc <_Z4getcv>
    80004990:	0005059b          	sext.w	a1,a0
    80004994:	04100793          	li	a5,65
    80004998:	02f58a63          	beq	a1,a5,800049cc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000499c:	0084b503          	ld	a0,8(s1)
    800049a0:	00001097          	auipc	ra,0x1
    800049a4:	c64080e7          	jalr	-924(ra) # 80005604 <_ZN9BufferCPP3putEi>
        i++;
    800049a8:	0019071b          	addiw	a4,s2,1
    800049ac:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800049b0:	0004a683          	lw	a3,0(s1)
    800049b4:	0026979b          	slliw	a5,a3,0x2
    800049b8:	00d787bb          	addw	a5,a5,a3
    800049bc:	0017979b          	slliw	a5,a5,0x1
    800049c0:	02f767bb          	remw	a5,a4,a5
    800049c4:	fc0792e3          	bnez	a5,80004988 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800049c8:	fb9ff06f          	j	80004980 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800049cc:	00100793          	li	a5,1
    800049d0:	00007717          	auipc	a4,0x7
    800049d4:	dcf72c23          	sw	a5,-552(a4) # 8000b7a8 <_ZL9threadEnd>
    td->buffer->put('!');
    800049d8:	0209b783          	ld	a5,32(s3)
    800049dc:	02100593          	li	a1,33
    800049e0:	0087b503          	ld	a0,8(a5)
    800049e4:	00001097          	auipc	ra,0x1
    800049e8:	c20080e7          	jalr	-992(ra) # 80005604 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800049ec:	0104b503          	ld	a0,16(s1)
    800049f0:	ffffe097          	auipc	ra,0xffffe
    800049f4:	d64080e7          	jalr	-668(ra) # 80002754 <_ZN9Semaphore6signalEv>
}
    800049f8:	02813083          	ld	ra,40(sp)
    800049fc:	02013403          	ld	s0,32(sp)
    80004a00:	01813483          	ld	s1,24(sp)
    80004a04:	01013903          	ld	s2,16(sp)
    80004a08:	00813983          	ld	s3,8(sp)
    80004a0c:	03010113          	addi	sp,sp,48
    80004a10:	00008067          	ret

0000000080004a14 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004a14:	fe010113          	addi	sp,sp,-32
    80004a18:	00113c23          	sd	ra,24(sp)
    80004a1c:	00813823          	sd	s0,16(sp)
    80004a20:	00913423          	sd	s1,8(sp)
    80004a24:	01213023          	sd	s2,0(sp)
    80004a28:	02010413          	addi	s0,sp,32
    80004a2c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004a30:	00000913          	li	s2,0
    80004a34:	00c0006f          	j	80004a40 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a38:	ffffe097          	auipc	ra,0xffffe
    80004a3c:	d48080e7          	jalr	-696(ra) # 80002780 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004a40:	00007797          	auipc	a5,0x7
    80004a44:	d687a783          	lw	a5,-664(a5) # 8000b7a8 <_ZL9threadEnd>
    80004a48:	02079e63          	bnez	a5,80004a84 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004a4c:	0004a583          	lw	a1,0(s1)
    80004a50:	0305859b          	addiw	a1,a1,48
    80004a54:	0084b503          	ld	a0,8(s1)
    80004a58:	00001097          	auipc	ra,0x1
    80004a5c:	bac080e7          	jalr	-1108(ra) # 80005604 <_ZN9BufferCPP3putEi>
        i++;
    80004a60:	0019071b          	addiw	a4,s2,1
    80004a64:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a68:	0004a683          	lw	a3,0(s1)
    80004a6c:	0026979b          	slliw	a5,a3,0x2
    80004a70:	00d787bb          	addw	a5,a5,a3
    80004a74:	0017979b          	slliw	a5,a5,0x1
    80004a78:	02f767bb          	remw	a5,a4,a5
    80004a7c:	fc0792e3          	bnez	a5,80004a40 <_ZN12ProducerSync8producerEPv+0x2c>
    80004a80:	fb9ff06f          	j	80004a38 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004a84:	0104b503          	ld	a0,16(s1)
    80004a88:	ffffe097          	auipc	ra,0xffffe
    80004a8c:	ccc080e7          	jalr	-820(ra) # 80002754 <_ZN9Semaphore6signalEv>
}
    80004a90:	01813083          	ld	ra,24(sp)
    80004a94:	01013403          	ld	s0,16(sp)
    80004a98:	00813483          	ld	s1,8(sp)
    80004a9c:	00013903          	ld	s2,0(sp)
    80004aa0:	02010113          	addi	sp,sp,32
    80004aa4:	00008067          	ret

0000000080004aa8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004aa8:	fd010113          	addi	sp,sp,-48
    80004aac:	02113423          	sd	ra,40(sp)
    80004ab0:	02813023          	sd	s0,32(sp)
    80004ab4:	00913c23          	sd	s1,24(sp)
    80004ab8:	01213823          	sd	s2,16(sp)
    80004abc:	01313423          	sd	s3,8(sp)
    80004ac0:	01413023          	sd	s4,0(sp)
    80004ac4:	03010413          	addi	s0,sp,48
    80004ac8:	00050993          	mv	s3,a0
    80004acc:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004ad0:	00000a13          	li	s4,0
    80004ad4:	01c0006f          	j	80004af0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004ad8:	ffffe097          	auipc	ra,0xffffe
    80004adc:	ca8080e7          	jalr	-856(ra) # 80002780 <_ZN6Thread8dispatchEv>
    80004ae0:	0500006f          	j	80004b30 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004ae4:	00a00513          	li	a0,10
    80004ae8:	ffffd097          	auipc	ra,0xffffd
    80004aec:	c0c080e7          	jalr	-1012(ra) # 800016f4 <_Z4putcc>
    while (!threadEnd) {
    80004af0:	00007797          	auipc	a5,0x7
    80004af4:	cb87a783          	lw	a5,-840(a5) # 8000b7a8 <_ZL9threadEnd>
    80004af8:	06079263          	bnez	a5,80004b5c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004afc:	00893503          	ld	a0,8(s2)
    80004b00:	00001097          	auipc	ra,0x1
    80004b04:	b94080e7          	jalr	-1132(ra) # 80005694 <_ZN9BufferCPP3getEv>
        i++;
    80004b08:	001a049b          	addiw	s1,s4,1
    80004b0c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004b10:	0ff57513          	andi	a0,a0,255
    80004b14:	ffffd097          	auipc	ra,0xffffd
    80004b18:	be0080e7          	jalr	-1056(ra) # 800016f4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004b1c:	00092703          	lw	a4,0(s2)
    80004b20:	0027179b          	slliw	a5,a4,0x2
    80004b24:	00e787bb          	addw	a5,a5,a4
    80004b28:	02f4e7bb          	remw	a5,s1,a5
    80004b2c:	fa0786e3          	beqz	a5,80004ad8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004b30:	05000793          	li	a5,80
    80004b34:	02f4e4bb          	remw	s1,s1,a5
    80004b38:	fa049ce3          	bnez	s1,80004af0 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004b3c:	fa9ff06f          	j	80004ae4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004b40:	0209b783          	ld	a5,32(s3)
    80004b44:	0087b503          	ld	a0,8(a5)
    80004b48:	00001097          	auipc	ra,0x1
    80004b4c:	b4c080e7          	jalr	-1204(ra) # 80005694 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004b50:	0ff57513          	andi	a0,a0,255
    80004b54:	ffffe097          	auipc	ra,0xffffe
    80004b58:	d48080e7          	jalr	-696(ra) # 8000289c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004b5c:	0209b783          	ld	a5,32(s3)
    80004b60:	0087b503          	ld	a0,8(a5)
    80004b64:	00001097          	auipc	ra,0x1
    80004b68:	bbc080e7          	jalr	-1092(ra) # 80005720 <_ZN9BufferCPP6getCntEv>
    80004b6c:	fca04ae3          	bgtz	a0,80004b40 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004b70:	01093503          	ld	a0,16(s2)
    80004b74:	ffffe097          	auipc	ra,0xffffe
    80004b78:	be0080e7          	jalr	-1056(ra) # 80002754 <_ZN9Semaphore6signalEv>
}
    80004b7c:	02813083          	ld	ra,40(sp)
    80004b80:	02013403          	ld	s0,32(sp)
    80004b84:	01813483          	ld	s1,24(sp)
    80004b88:	01013903          	ld	s2,16(sp)
    80004b8c:	00813983          	ld	s3,8(sp)
    80004b90:	00013a03          	ld	s4,0(sp)
    80004b94:	03010113          	addi	sp,sp,48
    80004b98:	00008067          	ret

0000000080004b9c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004b9c:	f8010113          	addi	sp,sp,-128
    80004ba0:	06113c23          	sd	ra,120(sp)
    80004ba4:	06813823          	sd	s0,112(sp)
    80004ba8:	06913423          	sd	s1,104(sp)
    80004bac:	07213023          	sd	s2,96(sp)
    80004bb0:	05313c23          	sd	s3,88(sp)
    80004bb4:	05413823          	sd	s4,80(sp)
    80004bb8:	05513423          	sd	s5,72(sp)
    80004bbc:	05613023          	sd	s6,64(sp)
    80004bc0:	03713c23          	sd	s7,56(sp)
    80004bc4:	03813823          	sd	s8,48(sp)
    80004bc8:	03913423          	sd	s9,40(sp)
    80004bcc:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004bd0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004bd4:	00004517          	auipc	a0,0x4
    80004bd8:	71450513          	addi	a0,a0,1812 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80004bdc:	00000097          	auipc	ra,0x0
    80004be0:	604080e7          	jalr	1540(ra) # 800051e0 <_Z11printStringPKc>
    getString(input, 30);
    80004be4:	01e00593          	li	a1,30
    80004be8:	f8040493          	addi	s1,s0,-128
    80004bec:	00048513          	mv	a0,s1
    80004bf0:	00000097          	auipc	ra,0x0
    80004bf4:	678080e7          	jalr	1656(ra) # 80005268 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004bf8:	00048513          	mv	a0,s1
    80004bfc:	00000097          	auipc	ra,0x0
    80004c00:	744080e7          	jalr	1860(ra) # 80005340 <_Z11stringToIntPKc>
    80004c04:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004c08:	00004517          	auipc	a0,0x4
    80004c0c:	70050513          	addi	a0,a0,1792 # 80009308 <CONSOLE_STATUS+0x2f8>
    80004c10:	00000097          	auipc	ra,0x0
    80004c14:	5d0080e7          	jalr	1488(ra) # 800051e0 <_Z11printStringPKc>
    getString(input, 30);
    80004c18:	01e00593          	li	a1,30
    80004c1c:	00048513          	mv	a0,s1
    80004c20:	00000097          	auipc	ra,0x0
    80004c24:	648080e7          	jalr	1608(ra) # 80005268 <_Z9getStringPci>
    n = stringToInt(input);
    80004c28:	00048513          	mv	a0,s1
    80004c2c:	00000097          	auipc	ra,0x0
    80004c30:	714080e7          	jalr	1812(ra) # 80005340 <_Z11stringToIntPKc>
    80004c34:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004c38:	00004517          	auipc	a0,0x4
    80004c3c:	6f050513          	addi	a0,a0,1776 # 80009328 <CONSOLE_STATUS+0x318>
    80004c40:	00000097          	auipc	ra,0x0
    80004c44:	5a0080e7          	jalr	1440(ra) # 800051e0 <_Z11printStringPKc>
    80004c48:	00000613          	li	a2,0
    80004c4c:	00a00593          	li	a1,10
    80004c50:	00090513          	mv	a0,s2
    80004c54:	00000097          	auipc	ra,0x0
    80004c58:	73c080e7          	jalr	1852(ra) # 80005390 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004c5c:	00004517          	auipc	a0,0x4
    80004c60:	6e450513          	addi	a0,a0,1764 # 80009340 <CONSOLE_STATUS+0x330>
    80004c64:	00000097          	auipc	ra,0x0
    80004c68:	57c080e7          	jalr	1404(ra) # 800051e0 <_Z11printStringPKc>
    80004c6c:	00000613          	li	a2,0
    80004c70:	00a00593          	li	a1,10
    80004c74:	00048513          	mv	a0,s1
    80004c78:	00000097          	auipc	ra,0x0
    80004c7c:	718080e7          	jalr	1816(ra) # 80005390 <_Z8printIntiii>
    printString(".\n");
    80004c80:	00004517          	auipc	a0,0x4
    80004c84:	45050513          	addi	a0,a0,1104 # 800090d0 <CONSOLE_STATUS+0xc0>
    80004c88:	00000097          	auipc	ra,0x0
    80004c8c:	558080e7          	jalr	1368(ra) # 800051e0 <_Z11printStringPKc>
    if(threadNum > n) {
    80004c90:	0324c463          	blt	s1,s2,80004cb8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004c94:	03205c63          	blez	s2,80004ccc <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004c98:	03800513          	li	a0,56
    80004c9c:	ffffe097          	auipc	ra,0xffffe
    80004ca0:	88c080e7          	jalr	-1908(ra) # 80002528 <_Znwm>
    80004ca4:	00050a93          	mv	s5,a0
    80004ca8:	00048593          	mv	a1,s1
    80004cac:	00001097          	auipc	ra,0x1
    80004cb0:	804080e7          	jalr	-2044(ra) # 800054b0 <_ZN9BufferCPPC1Ei>
    80004cb4:	0300006f          	j	80004ce4 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004cb8:	00004517          	auipc	a0,0x4
    80004cbc:	6a050513          	addi	a0,a0,1696 # 80009358 <CONSOLE_STATUS+0x348>
    80004cc0:	00000097          	auipc	ra,0x0
    80004cc4:	520080e7          	jalr	1312(ra) # 800051e0 <_Z11printStringPKc>
        return;
    80004cc8:	0140006f          	j	80004cdc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004ccc:	00004517          	auipc	a0,0x4
    80004cd0:	6cc50513          	addi	a0,a0,1740 # 80009398 <CONSOLE_STATUS+0x388>
    80004cd4:	00000097          	auipc	ra,0x0
    80004cd8:	50c080e7          	jalr	1292(ra) # 800051e0 <_Z11printStringPKc>
        return;
    80004cdc:	000b8113          	mv	sp,s7
    80004ce0:	2380006f          	j	80004f18 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004ce4:	01000513          	li	a0,16
    80004ce8:	ffffe097          	auipc	ra,0xffffe
    80004cec:	840080e7          	jalr	-1984(ra) # 80002528 <_Znwm>
    80004cf0:	00050493          	mv	s1,a0
    80004cf4:	00000593          	li	a1,0
    80004cf8:	ffffe097          	auipc	ra,0xffffe
    80004cfc:	9f8080e7          	jalr	-1544(ra) # 800026f0 <_ZN9SemaphoreC1Ej>
    80004d00:	00007797          	auipc	a5,0x7
    80004d04:	aa97b823          	sd	s1,-1360(a5) # 8000b7b0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004d08:	00391793          	slli	a5,s2,0x3
    80004d0c:	00f78793          	addi	a5,a5,15
    80004d10:	ff07f793          	andi	a5,a5,-16
    80004d14:	40f10133          	sub	sp,sp,a5
    80004d18:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004d1c:	0019071b          	addiw	a4,s2,1
    80004d20:	00171793          	slli	a5,a4,0x1
    80004d24:	00e787b3          	add	a5,a5,a4
    80004d28:	00379793          	slli	a5,a5,0x3
    80004d2c:	00f78793          	addi	a5,a5,15
    80004d30:	ff07f793          	andi	a5,a5,-16
    80004d34:	40f10133          	sub	sp,sp,a5
    80004d38:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004d3c:	00191c13          	slli	s8,s2,0x1
    80004d40:	012c07b3          	add	a5,s8,s2
    80004d44:	00379793          	slli	a5,a5,0x3
    80004d48:	00fa07b3          	add	a5,s4,a5
    80004d4c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004d50:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004d54:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004d58:	02800513          	li	a0,40
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	7cc080e7          	jalr	1996(ra) # 80002528 <_Znwm>
    80004d64:	00050b13          	mv	s6,a0
    80004d68:	012c0c33          	add	s8,s8,s2
    80004d6c:	003c1c13          	slli	s8,s8,0x3
    80004d70:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004d74:	ffffe097          	auipc	ra,0xffffe
    80004d78:	ac8080e7          	jalr	-1336(ra) # 8000283c <_ZN6ThreadC1Ev>
    80004d7c:	00007797          	auipc	a5,0x7
    80004d80:	8dc78793          	addi	a5,a5,-1828 # 8000b658 <_ZTV12ConsumerSync+0x10>
    80004d84:	00fb3023          	sd	a5,0(s6)
    80004d88:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004d8c:	000b0513          	mv	a0,s6
    80004d90:	ffffe097          	auipc	ra,0xffffe
    80004d94:	a7c080e7          	jalr	-1412(ra) # 8000280c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004d98:	00000493          	li	s1,0
    80004d9c:	0380006f          	j	80004dd4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004da0:	00007797          	auipc	a5,0x7
    80004da4:	89078793          	addi	a5,a5,-1904 # 8000b630 <_ZTV12ProducerSync+0x10>
    80004da8:	00fcb023          	sd	a5,0(s9)
    80004dac:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004db0:	00349793          	slli	a5,s1,0x3
    80004db4:	00f987b3          	add	a5,s3,a5
    80004db8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004dbc:	00349793          	slli	a5,s1,0x3
    80004dc0:	00f987b3          	add	a5,s3,a5
    80004dc4:	0007b503          	ld	a0,0(a5)
    80004dc8:	ffffe097          	auipc	ra,0xffffe
    80004dcc:	a44080e7          	jalr	-1468(ra) # 8000280c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004dd0:	0014849b          	addiw	s1,s1,1
    80004dd4:	0b24d063          	bge	s1,s2,80004e74 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004dd8:	00149793          	slli	a5,s1,0x1
    80004ddc:	009787b3          	add	a5,a5,s1
    80004de0:	00379793          	slli	a5,a5,0x3
    80004de4:	00fa07b3          	add	a5,s4,a5
    80004de8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004dec:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004df0:	00007717          	auipc	a4,0x7
    80004df4:	9c073703          	ld	a4,-1600(a4) # 8000b7b0 <_ZL10waitForAll>
    80004df8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004dfc:	02905863          	blez	s1,80004e2c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004e00:	02800513          	li	a0,40
    80004e04:	ffffd097          	auipc	ra,0xffffd
    80004e08:	724080e7          	jalr	1828(ra) # 80002528 <_Znwm>
    80004e0c:	00050c93          	mv	s9,a0
    80004e10:	00149c13          	slli	s8,s1,0x1
    80004e14:	009c0c33          	add	s8,s8,s1
    80004e18:	003c1c13          	slli	s8,s8,0x3
    80004e1c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e20:	ffffe097          	auipc	ra,0xffffe
    80004e24:	a1c080e7          	jalr	-1508(ra) # 8000283c <_ZN6ThreadC1Ev>
    80004e28:	f79ff06f          	j	80004da0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004e2c:	02800513          	li	a0,40
    80004e30:	ffffd097          	auipc	ra,0xffffd
    80004e34:	6f8080e7          	jalr	1784(ra) # 80002528 <_Znwm>
    80004e38:	00050c93          	mv	s9,a0
    80004e3c:	00149c13          	slli	s8,s1,0x1
    80004e40:	009c0c33          	add	s8,s8,s1
    80004e44:	003c1c13          	slli	s8,s8,0x3
    80004e48:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004e4c:	ffffe097          	auipc	ra,0xffffe
    80004e50:	9f0080e7          	jalr	-1552(ra) # 8000283c <_ZN6ThreadC1Ev>
    80004e54:	00006797          	auipc	a5,0x6
    80004e58:	7b478793          	addi	a5,a5,1972 # 8000b608 <_ZTV16ProducerKeyboard+0x10>
    80004e5c:	00fcb023          	sd	a5,0(s9)
    80004e60:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004e64:	00349793          	slli	a5,s1,0x3
    80004e68:	00f987b3          	add	a5,s3,a5
    80004e6c:	0197b023          	sd	s9,0(a5)
    80004e70:	f4dff06f          	j	80004dbc <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004e74:	ffffe097          	auipc	ra,0xffffe
    80004e78:	90c080e7          	jalr	-1780(ra) # 80002780 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e7c:	00000493          	li	s1,0
    80004e80:	00994e63          	blt	s2,s1,80004e9c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004e84:	00007517          	auipc	a0,0x7
    80004e88:	92c53503          	ld	a0,-1748(a0) # 8000b7b0 <_ZL10waitForAll>
    80004e8c:	ffffe097          	auipc	ra,0xffffe
    80004e90:	89c080e7          	jalr	-1892(ra) # 80002728 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e94:	0014849b          	addiw	s1,s1,1
    80004e98:	fe9ff06f          	j	80004e80 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004e9c:	00000493          	li	s1,0
    80004ea0:	0080006f          	j	80004ea8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004ea4:	0014849b          	addiw	s1,s1,1
    80004ea8:	0324d263          	bge	s1,s2,80004ecc <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004eac:	00349793          	slli	a5,s1,0x3
    80004eb0:	00f987b3          	add	a5,s3,a5
    80004eb4:	0007b503          	ld	a0,0(a5)
    80004eb8:	fe0506e3          	beqz	a0,80004ea4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004ebc:	00053783          	ld	a5,0(a0)
    80004ec0:	0087b783          	ld	a5,8(a5)
    80004ec4:	000780e7          	jalr	a5
    80004ec8:	fddff06f          	j	80004ea4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004ecc:	000b0a63          	beqz	s6,80004ee0 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004ed0:	000b3783          	ld	a5,0(s6)
    80004ed4:	0087b783          	ld	a5,8(a5)
    80004ed8:	000b0513          	mv	a0,s6
    80004edc:	000780e7          	jalr	a5
    delete waitForAll;
    80004ee0:	00007517          	auipc	a0,0x7
    80004ee4:	8d053503          	ld	a0,-1840(a0) # 8000b7b0 <_ZL10waitForAll>
    80004ee8:	00050863          	beqz	a0,80004ef8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004eec:	00053783          	ld	a5,0(a0)
    80004ef0:	0087b783          	ld	a5,8(a5)
    80004ef4:	000780e7          	jalr	a5
    delete buffer;
    80004ef8:	000a8e63          	beqz	s5,80004f14 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004efc:	000a8513          	mv	a0,s5
    80004f00:	00001097          	auipc	ra,0x1
    80004f04:	8a8080e7          	jalr	-1880(ra) # 800057a8 <_ZN9BufferCPPD1Ev>
    80004f08:	000a8513          	mv	a0,s5
    80004f0c:	ffffd097          	auipc	ra,0xffffd
    80004f10:	66c080e7          	jalr	1644(ra) # 80002578 <_ZdlPv>
    80004f14:	000b8113          	mv	sp,s7

}
    80004f18:	f8040113          	addi	sp,s0,-128
    80004f1c:	07813083          	ld	ra,120(sp)
    80004f20:	07013403          	ld	s0,112(sp)
    80004f24:	06813483          	ld	s1,104(sp)
    80004f28:	06013903          	ld	s2,96(sp)
    80004f2c:	05813983          	ld	s3,88(sp)
    80004f30:	05013a03          	ld	s4,80(sp)
    80004f34:	04813a83          	ld	s5,72(sp)
    80004f38:	04013b03          	ld	s6,64(sp)
    80004f3c:	03813b83          	ld	s7,56(sp)
    80004f40:	03013c03          	ld	s8,48(sp)
    80004f44:	02813c83          	ld	s9,40(sp)
    80004f48:	08010113          	addi	sp,sp,128
    80004f4c:	00008067          	ret
    80004f50:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004f54:	000a8513          	mv	a0,s5
    80004f58:	ffffd097          	auipc	ra,0xffffd
    80004f5c:	620080e7          	jalr	1568(ra) # 80002578 <_ZdlPv>
    80004f60:	00048513          	mv	a0,s1
    80004f64:	00008097          	auipc	ra,0x8
    80004f68:	934080e7          	jalr	-1740(ra) # 8000c898 <_Unwind_Resume>
    80004f6c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004f70:	00048513          	mv	a0,s1
    80004f74:	ffffd097          	auipc	ra,0xffffd
    80004f78:	604080e7          	jalr	1540(ra) # 80002578 <_ZdlPv>
    80004f7c:	00090513          	mv	a0,s2
    80004f80:	00008097          	auipc	ra,0x8
    80004f84:	918080e7          	jalr	-1768(ra) # 8000c898 <_Unwind_Resume>
    80004f88:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004f8c:	000b0513          	mv	a0,s6
    80004f90:	ffffd097          	auipc	ra,0xffffd
    80004f94:	5e8080e7          	jalr	1512(ra) # 80002578 <_ZdlPv>
    80004f98:	00048513          	mv	a0,s1
    80004f9c:	00008097          	auipc	ra,0x8
    80004fa0:	8fc080e7          	jalr	-1796(ra) # 8000c898 <_Unwind_Resume>
    80004fa4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004fa8:	000c8513          	mv	a0,s9
    80004fac:	ffffd097          	auipc	ra,0xffffd
    80004fb0:	5cc080e7          	jalr	1484(ra) # 80002578 <_ZdlPv>
    80004fb4:	00048513          	mv	a0,s1
    80004fb8:	00008097          	auipc	ra,0x8
    80004fbc:	8e0080e7          	jalr	-1824(ra) # 8000c898 <_Unwind_Resume>
    80004fc0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004fc4:	000c8513          	mv	a0,s9
    80004fc8:	ffffd097          	auipc	ra,0xffffd
    80004fcc:	5b0080e7          	jalr	1456(ra) # 80002578 <_ZdlPv>
    80004fd0:	00048513          	mv	a0,s1
    80004fd4:	00008097          	auipc	ra,0x8
    80004fd8:	8c4080e7          	jalr	-1852(ra) # 8000c898 <_Unwind_Resume>

0000000080004fdc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004fdc:	ff010113          	addi	sp,sp,-16
    80004fe0:	00113423          	sd	ra,8(sp)
    80004fe4:	00813023          	sd	s0,0(sp)
    80004fe8:	01010413          	addi	s0,sp,16
    80004fec:	00006797          	auipc	a5,0x6
    80004ff0:	66c78793          	addi	a5,a5,1644 # 8000b658 <_ZTV12ConsumerSync+0x10>
    80004ff4:	00f53023          	sd	a5,0(a0)
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	660080e7          	jalr	1632(ra) # 80002658 <_ZN6ThreadD1Ev>
    80005000:	00813083          	ld	ra,8(sp)
    80005004:	00013403          	ld	s0,0(sp)
    80005008:	01010113          	addi	sp,sp,16
    8000500c:	00008067          	ret

0000000080005010 <_ZN12ConsumerSyncD0Ev>:
    80005010:	fe010113          	addi	sp,sp,-32
    80005014:	00113c23          	sd	ra,24(sp)
    80005018:	00813823          	sd	s0,16(sp)
    8000501c:	00913423          	sd	s1,8(sp)
    80005020:	02010413          	addi	s0,sp,32
    80005024:	00050493          	mv	s1,a0
    80005028:	00006797          	auipc	a5,0x6
    8000502c:	63078793          	addi	a5,a5,1584 # 8000b658 <_ZTV12ConsumerSync+0x10>
    80005030:	00f53023          	sd	a5,0(a0)
    80005034:	ffffd097          	auipc	ra,0xffffd
    80005038:	624080e7          	jalr	1572(ra) # 80002658 <_ZN6ThreadD1Ev>
    8000503c:	00048513          	mv	a0,s1
    80005040:	ffffd097          	auipc	ra,0xffffd
    80005044:	538080e7          	jalr	1336(ra) # 80002578 <_ZdlPv>
    80005048:	01813083          	ld	ra,24(sp)
    8000504c:	01013403          	ld	s0,16(sp)
    80005050:	00813483          	ld	s1,8(sp)
    80005054:	02010113          	addi	sp,sp,32
    80005058:	00008067          	ret

000000008000505c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000505c:	ff010113          	addi	sp,sp,-16
    80005060:	00113423          	sd	ra,8(sp)
    80005064:	00813023          	sd	s0,0(sp)
    80005068:	01010413          	addi	s0,sp,16
    8000506c:	00006797          	auipc	a5,0x6
    80005070:	5c478793          	addi	a5,a5,1476 # 8000b630 <_ZTV12ProducerSync+0x10>
    80005074:	00f53023          	sd	a5,0(a0)
    80005078:	ffffd097          	auipc	ra,0xffffd
    8000507c:	5e0080e7          	jalr	1504(ra) # 80002658 <_ZN6ThreadD1Ev>
    80005080:	00813083          	ld	ra,8(sp)
    80005084:	00013403          	ld	s0,0(sp)
    80005088:	01010113          	addi	sp,sp,16
    8000508c:	00008067          	ret

0000000080005090 <_ZN12ProducerSyncD0Ev>:
    80005090:	fe010113          	addi	sp,sp,-32
    80005094:	00113c23          	sd	ra,24(sp)
    80005098:	00813823          	sd	s0,16(sp)
    8000509c:	00913423          	sd	s1,8(sp)
    800050a0:	02010413          	addi	s0,sp,32
    800050a4:	00050493          	mv	s1,a0
    800050a8:	00006797          	auipc	a5,0x6
    800050ac:	58878793          	addi	a5,a5,1416 # 8000b630 <_ZTV12ProducerSync+0x10>
    800050b0:	00f53023          	sd	a5,0(a0)
    800050b4:	ffffd097          	auipc	ra,0xffffd
    800050b8:	5a4080e7          	jalr	1444(ra) # 80002658 <_ZN6ThreadD1Ev>
    800050bc:	00048513          	mv	a0,s1
    800050c0:	ffffd097          	auipc	ra,0xffffd
    800050c4:	4b8080e7          	jalr	1208(ra) # 80002578 <_ZdlPv>
    800050c8:	01813083          	ld	ra,24(sp)
    800050cc:	01013403          	ld	s0,16(sp)
    800050d0:	00813483          	ld	s1,8(sp)
    800050d4:	02010113          	addi	sp,sp,32
    800050d8:	00008067          	ret

00000000800050dc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800050dc:	ff010113          	addi	sp,sp,-16
    800050e0:	00113423          	sd	ra,8(sp)
    800050e4:	00813023          	sd	s0,0(sp)
    800050e8:	01010413          	addi	s0,sp,16
    800050ec:	00006797          	auipc	a5,0x6
    800050f0:	51c78793          	addi	a5,a5,1308 # 8000b608 <_ZTV16ProducerKeyboard+0x10>
    800050f4:	00f53023          	sd	a5,0(a0)
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	560080e7          	jalr	1376(ra) # 80002658 <_ZN6ThreadD1Ev>
    80005100:	00813083          	ld	ra,8(sp)
    80005104:	00013403          	ld	s0,0(sp)
    80005108:	01010113          	addi	sp,sp,16
    8000510c:	00008067          	ret

0000000080005110 <_ZN16ProducerKeyboardD0Ev>:
    80005110:	fe010113          	addi	sp,sp,-32
    80005114:	00113c23          	sd	ra,24(sp)
    80005118:	00813823          	sd	s0,16(sp)
    8000511c:	00913423          	sd	s1,8(sp)
    80005120:	02010413          	addi	s0,sp,32
    80005124:	00050493          	mv	s1,a0
    80005128:	00006797          	auipc	a5,0x6
    8000512c:	4e078793          	addi	a5,a5,1248 # 8000b608 <_ZTV16ProducerKeyboard+0x10>
    80005130:	00f53023          	sd	a5,0(a0)
    80005134:	ffffd097          	auipc	ra,0xffffd
    80005138:	524080e7          	jalr	1316(ra) # 80002658 <_ZN6ThreadD1Ev>
    8000513c:	00048513          	mv	a0,s1
    80005140:	ffffd097          	auipc	ra,0xffffd
    80005144:	438080e7          	jalr	1080(ra) # 80002578 <_ZdlPv>
    80005148:	01813083          	ld	ra,24(sp)
    8000514c:	01013403          	ld	s0,16(sp)
    80005150:	00813483          	ld	s1,8(sp)
    80005154:	02010113          	addi	sp,sp,32
    80005158:	00008067          	ret

000000008000515c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000515c:	ff010113          	addi	sp,sp,-16
    80005160:	00113423          	sd	ra,8(sp)
    80005164:	00813023          	sd	s0,0(sp)
    80005168:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000516c:	02053583          	ld	a1,32(a0)
    80005170:	fffff097          	auipc	ra,0xfffff
    80005174:	7e4080e7          	jalr	2020(ra) # 80004954 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005178:	00813083          	ld	ra,8(sp)
    8000517c:	00013403          	ld	s0,0(sp)
    80005180:	01010113          	addi	sp,sp,16
    80005184:	00008067          	ret

0000000080005188 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005188:	ff010113          	addi	sp,sp,-16
    8000518c:	00113423          	sd	ra,8(sp)
    80005190:	00813023          	sd	s0,0(sp)
    80005194:	01010413          	addi	s0,sp,16
        producer(td);
    80005198:	02053583          	ld	a1,32(a0)
    8000519c:	00000097          	auipc	ra,0x0
    800051a0:	878080e7          	jalr	-1928(ra) # 80004a14 <_ZN12ProducerSync8producerEPv>
    }
    800051a4:	00813083          	ld	ra,8(sp)
    800051a8:	00013403          	ld	s0,0(sp)
    800051ac:	01010113          	addi	sp,sp,16
    800051b0:	00008067          	ret

00000000800051b4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800051b4:	ff010113          	addi	sp,sp,-16
    800051b8:	00113423          	sd	ra,8(sp)
    800051bc:	00813023          	sd	s0,0(sp)
    800051c0:	01010413          	addi	s0,sp,16
        consumer(td);
    800051c4:	02053583          	ld	a1,32(a0)
    800051c8:	00000097          	auipc	ra,0x0
    800051cc:	8e0080e7          	jalr	-1824(ra) # 80004aa8 <_ZN12ConsumerSync8consumerEPv>
    }
    800051d0:	00813083          	ld	ra,8(sp)
    800051d4:	00013403          	ld	s0,0(sp)
    800051d8:	01010113          	addi	sp,sp,16
    800051dc:	00008067          	ret

00000000800051e0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800051e0:	fe010113          	addi	sp,sp,-32
    800051e4:	00113c23          	sd	ra,24(sp)
    800051e8:	00813823          	sd	s0,16(sp)
    800051ec:	00913423          	sd	s1,8(sp)
    800051f0:	02010413          	addi	s0,sp,32
    800051f4:	00050493          	mv	s1,a0
    LOCK();
    800051f8:	00100613          	li	a2,1
    800051fc:	00000593          	li	a1,0
    80005200:	00006517          	auipc	a0,0x6
    80005204:	5b850513          	addi	a0,a0,1464 # 8000b7b8 <lockPrint>
    80005208:	ffffc097          	auipc	ra,0xffffc
    8000520c:	290080e7          	jalr	656(ra) # 80001498 <copy_and_swap>
    80005210:	00050863          	beqz	a0,80005220 <_Z11printStringPKc+0x40>
    80005214:	ffffc097          	auipc	ra,0xffffc
    80005218:	3c0080e7          	jalr	960(ra) # 800015d4 <_Z15thread_dispatchv>
    8000521c:	fddff06f          	j	800051f8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005220:	0004c503          	lbu	a0,0(s1)
    80005224:	00050a63          	beqz	a0,80005238 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005228:	ffffc097          	auipc	ra,0xffffc
    8000522c:	4cc080e7          	jalr	1228(ra) # 800016f4 <_Z4putcc>
        string++;
    80005230:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005234:	fedff06f          	j	80005220 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005238:	00000613          	li	a2,0
    8000523c:	00100593          	li	a1,1
    80005240:	00006517          	auipc	a0,0x6
    80005244:	57850513          	addi	a0,a0,1400 # 8000b7b8 <lockPrint>
    80005248:	ffffc097          	auipc	ra,0xffffc
    8000524c:	250080e7          	jalr	592(ra) # 80001498 <copy_and_swap>
    80005250:	fe0514e3          	bnez	a0,80005238 <_Z11printStringPKc+0x58>
}
    80005254:	01813083          	ld	ra,24(sp)
    80005258:	01013403          	ld	s0,16(sp)
    8000525c:	00813483          	ld	s1,8(sp)
    80005260:	02010113          	addi	sp,sp,32
    80005264:	00008067          	ret

0000000080005268 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005268:	fd010113          	addi	sp,sp,-48
    8000526c:	02113423          	sd	ra,40(sp)
    80005270:	02813023          	sd	s0,32(sp)
    80005274:	00913c23          	sd	s1,24(sp)
    80005278:	01213823          	sd	s2,16(sp)
    8000527c:	01313423          	sd	s3,8(sp)
    80005280:	01413023          	sd	s4,0(sp)
    80005284:	03010413          	addi	s0,sp,48
    80005288:	00050993          	mv	s3,a0
    8000528c:	00058a13          	mv	s4,a1
    LOCK();
    80005290:	00100613          	li	a2,1
    80005294:	00000593          	li	a1,0
    80005298:	00006517          	auipc	a0,0x6
    8000529c:	52050513          	addi	a0,a0,1312 # 8000b7b8 <lockPrint>
    800052a0:	ffffc097          	auipc	ra,0xffffc
    800052a4:	1f8080e7          	jalr	504(ra) # 80001498 <copy_and_swap>
    800052a8:	00050863          	beqz	a0,800052b8 <_Z9getStringPci+0x50>
    800052ac:	ffffc097          	auipc	ra,0xffffc
    800052b0:	328080e7          	jalr	808(ra) # 800015d4 <_Z15thread_dispatchv>
    800052b4:	fddff06f          	j	80005290 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800052b8:	00000913          	li	s2,0
    800052bc:	00090493          	mv	s1,s2
    800052c0:	0019091b          	addiw	s2,s2,1
    800052c4:	03495a63          	bge	s2,s4,800052f8 <_Z9getStringPci+0x90>
        cc = getc();
    800052c8:	ffffc097          	auipc	ra,0xffffc
    800052cc:	404080e7          	jalr	1028(ra) # 800016cc <_Z4getcv>
        if(cc < 1)
    800052d0:	02050463          	beqz	a0,800052f8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800052d4:	009984b3          	add	s1,s3,s1
    800052d8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800052dc:	00a00793          	li	a5,10
    800052e0:	00f50a63          	beq	a0,a5,800052f4 <_Z9getStringPci+0x8c>
    800052e4:	00d00793          	li	a5,13
    800052e8:	fcf51ae3          	bne	a0,a5,800052bc <_Z9getStringPci+0x54>
        buf[i++] = c;
    800052ec:	00090493          	mv	s1,s2
    800052f0:	0080006f          	j	800052f8 <_Z9getStringPci+0x90>
    800052f4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800052f8:	009984b3          	add	s1,s3,s1
    800052fc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005300:	00000613          	li	a2,0
    80005304:	00100593          	li	a1,1
    80005308:	00006517          	auipc	a0,0x6
    8000530c:	4b050513          	addi	a0,a0,1200 # 8000b7b8 <lockPrint>
    80005310:	ffffc097          	auipc	ra,0xffffc
    80005314:	188080e7          	jalr	392(ra) # 80001498 <copy_and_swap>
    80005318:	fe0514e3          	bnez	a0,80005300 <_Z9getStringPci+0x98>
    return buf;
}
    8000531c:	00098513          	mv	a0,s3
    80005320:	02813083          	ld	ra,40(sp)
    80005324:	02013403          	ld	s0,32(sp)
    80005328:	01813483          	ld	s1,24(sp)
    8000532c:	01013903          	ld	s2,16(sp)
    80005330:	00813983          	ld	s3,8(sp)
    80005334:	00013a03          	ld	s4,0(sp)
    80005338:	03010113          	addi	sp,sp,48
    8000533c:	00008067          	ret

0000000080005340 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005340:	ff010113          	addi	sp,sp,-16
    80005344:	00813423          	sd	s0,8(sp)
    80005348:	01010413          	addi	s0,sp,16
    8000534c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005350:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005354:	0006c603          	lbu	a2,0(a3)
    80005358:	fd06071b          	addiw	a4,a2,-48
    8000535c:	0ff77713          	andi	a4,a4,255
    80005360:	00900793          	li	a5,9
    80005364:	02e7e063          	bltu	a5,a4,80005384 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005368:	0025179b          	slliw	a5,a0,0x2
    8000536c:	00a787bb          	addw	a5,a5,a0
    80005370:	0017979b          	slliw	a5,a5,0x1
    80005374:	00168693          	addi	a3,a3,1
    80005378:	00c787bb          	addw	a5,a5,a2
    8000537c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005380:	fd5ff06f          	j	80005354 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005384:	00813403          	ld	s0,8(sp)
    80005388:	01010113          	addi	sp,sp,16
    8000538c:	00008067          	ret

0000000080005390 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005390:	fc010113          	addi	sp,sp,-64
    80005394:	02113c23          	sd	ra,56(sp)
    80005398:	02813823          	sd	s0,48(sp)
    8000539c:	02913423          	sd	s1,40(sp)
    800053a0:	03213023          	sd	s2,32(sp)
    800053a4:	01313c23          	sd	s3,24(sp)
    800053a8:	04010413          	addi	s0,sp,64
    800053ac:	00050493          	mv	s1,a0
    800053b0:	00058913          	mv	s2,a1
    800053b4:	00060993          	mv	s3,a2
    LOCK();
    800053b8:	00100613          	li	a2,1
    800053bc:	00000593          	li	a1,0
    800053c0:	00006517          	auipc	a0,0x6
    800053c4:	3f850513          	addi	a0,a0,1016 # 8000b7b8 <lockPrint>
    800053c8:	ffffc097          	auipc	ra,0xffffc
    800053cc:	0d0080e7          	jalr	208(ra) # 80001498 <copy_and_swap>
    800053d0:	00050863          	beqz	a0,800053e0 <_Z8printIntiii+0x50>
    800053d4:	ffffc097          	auipc	ra,0xffffc
    800053d8:	200080e7          	jalr	512(ra) # 800015d4 <_Z15thread_dispatchv>
    800053dc:	fddff06f          	j	800053b8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800053e0:	00098463          	beqz	s3,800053e8 <_Z8printIntiii+0x58>
    800053e4:	0804c463          	bltz	s1,8000546c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800053e8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800053ec:	00000593          	li	a1,0
    }

    i = 0;
    800053f0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800053f4:	0009079b          	sext.w	a5,s2
    800053f8:	0325773b          	remuw	a4,a0,s2
    800053fc:	00048613          	mv	a2,s1
    80005400:	0014849b          	addiw	s1,s1,1
    80005404:	02071693          	slli	a3,a4,0x20
    80005408:	0206d693          	srli	a3,a3,0x20
    8000540c:	00006717          	auipc	a4,0x6
    80005410:	26470713          	addi	a4,a4,612 # 8000b670 <digits>
    80005414:	00d70733          	add	a4,a4,a3
    80005418:	00074683          	lbu	a3,0(a4)
    8000541c:	fd040713          	addi	a4,s0,-48
    80005420:	00c70733          	add	a4,a4,a2
    80005424:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005428:	0005071b          	sext.w	a4,a0
    8000542c:	0325553b          	divuw	a0,a0,s2
    80005430:	fcf772e3          	bgeu	a4,a5,800053f4 <_Z8printIntiii+0x64>
    if(neg)
    80005434:	00058c63          	beqz	a1,8000544c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005438:	fd040793          	addi	a5,s0,-48
    8000543c:	009784b3          	add	s1,a5,s1
    80005440:	02d00793          	li	a5,45
    80005444:	fef48823          	sb	a5,-16(s1)
    80005448:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000544c:	fff4849b          	addiw	s1,s1,-1
    80005450:	0204c463          	bltz	s1,80005478 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005454:	fd040793          	addi	a5,s0,-48
    80005458:	009787b3          	add	a5,a5,s1
    8000545c:	ff07c503          	lbu	a0,-16(a5)
    80005460:	ffffc097          	auipc	ra,0xffffc
    80005464:	294080e7          	jalr	660(ra) # 800016f4 <_Z4putcc>
    80005468:	fe5ff06f          	j	8000544c <_Z8printIntiii+0xbc>
        x = -xx;
    8000546c:	4090053b          	negw	a0,s1
        neg = 1;
    80005470:	00100593          	li	a1,1
        x = -xx;
    80005474:	f7dff06f          	j	800053f0 <_Z8printIntiii+0x60>

    UNLOCK();
    80005478:	00000613          	li	a2,0
    8000547c:	00100593          	li	a1,1
    80005480:	00006517          	auipc	a0,0x6
    80005484:	33850513          	addi	a0,a0,824 # 8000b7b8 <lockPrint>
    80005488:	ffffc097          	auipc	ra,0xffffc
    8000548c:	010080e7          	jalr	16(ra) # 80001498 <copy_and_swap>
    80005490:	fe0514e3          	bnez	a0,80005478 <_Z8printIntiii+0xe8>
    80005494:	03813083          	ld	ra,56(sp)
    80005498:	03013403          	ld	s0,48(sp)
    8000549c:	02813483          	ld	s1,40(sp)
    800054a0:	02013903          	ld	s2,32(sp)
    800054a4:	01813983          	ld	s3,24(sp)
    800054a8:	04010113          	addi	sp,sp,64
    800054ac:	00008067          	ret

00000000800054b0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800054b0:	fd010113          	addi	sp,sp,-48
    800054b4:	02113423          	sd	ra,40(sp)
    800054b8:	02813023          	sd	s0,32(sp)
    800054bc:	00913c23          	sd	s1,24(sp)
    800054c0:	01213823          	sd	s2,16(sp)
    800054c4:	01313423          	sd	s3,8(sp)
    800054c8:	03010413          	addi	s0,sp,48
    800054cc:	00050493          	mv	s1,a0
    800054d0:	00058913          	mv	s2,a1
    800054d4:	0015879b          	addiw	a5,a1,1
    800054d8:	0007851b          	sext.w	a0,a5
    800054dc:	00f4a023          	sw	a5,0(s1)
    800054e0:	0004a823          	sw	zero,16(s1)
    800054e4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800054e8:	00251513          	slli	a0,a0,0x2
    800054ec:	ffffc097          	auipc	ra,0xffffc
    800054f0:	fcc080e7          	jalr	-52(ra) # 800014b8 <_Z9mem_allocm>
    800054f4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800054f8:	01000513          	li	a0,16
    800054fc:	ffffd097          	auipc	ra,0xffffd
    80005500:	02c080e7          	jalr	44(ra) # 80002528 <_Znwm>
    80005504:	00050993          	mv	s3,a0
    80005508:	00000593          	li	a1,0
    8000550c:	ffffd097          	auipc	ra,0xffffd
    80005510:	1e4080e7          	jalr	484(ra) # 800026f0 <_ZN9SemaphoreC1Ej>
    80005514:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005518:	01000513          	li	a0,16
    8000551c:	ffffd097          	auipc	ra,0xffffd
    80005520:	00c080e7          	jalr	12(ra) # 80002528 <_Znwm>
    80005524:	00050993          	mv	s3,a0
    80005528:	00090593          	mv	a1,s2
    8000552c:	ffffd097          	auipc	ra,0xffffd
    80005530:	1c4080e7          	jalr	452(ra) # 800026f0 <_ZN9SemaphoreC1Ej>
    80005534:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005538:	01000513          	li	a0,16
    8000553c:	ffffd097          	auipc	ra,0xffffd
    80005540:	fec080e7          	jalr	-20(ra) # 80002528 <_Znwm>
    80005544:	00050913          	mv	s2,a0
    80005548:	00100593          	li	a1,1
    8000554c:	ffffd097          	auipc	ra,0xffffd
    80005550:	1a4080e7          	jalr	420(ra) # 800026f0 <_ZN9SemaphoreC1Ej>
    80005554:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005558:	01000513          	li	a0,16
    8000555c:	ffffd097          	auipc	ra,0xffffd
    80005560:	fcc080e7          	jalr	-52(ra) # 80002528 <_Znwm>
    80005564:	00050913          	mv	s2,a0
    80005568:	00100593          	li	a1,1
    8000556c:	ffffd097          	auipc	ra,0xffffd
    80005570:	184080e7          	jalr	388(ra) # 800026f0 <_ZN9SemaphoreC1Ej>
    80005574:	0324b823          	sd	s2,48(s1)
}
    80005578:	02813083          	ld	ra,40(sp)
    8000557c:	02013403          	ld	s0,32(sp)
    80005580:	01813483          	ld	s1,24(sp)
    80005584:	01013903          	ld	s2,16(sp)
    80005588:	00813983          	ld	s3,8(sp)
    8000558c:	03010113          	addi	sp,sp,48
    80005590:	00008067          	ret
    80005594:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005598:	00098513          	mv	a0,s3
    8000559c:	ffffd097          	auipc	ra,0xffffd
    800055a0:	fdc080e7          	jalr	-36(ra) # 80002578 <_ZdlPv>
    800055a4:	00048513          	mv	a0,s1
    800055a8:	00007097          	auipc	ra,0x7
    800055ac:	2f0080e7          	jalr	752(ra) # 8000c898 <_Unwind_Resume>
    800055b0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800055b4:	00098513          	mv	a0,s3
    800055b8:	ffffd097          	auipc	ra,0xffffd
    800055bc:	fc0080e7          	jalr	-64(ra) # 80002578 <_ZdlPv>
    800055c0:	00048513          	mv	a0,s1
    800055c4:	00007097          	auipc	ra,0x7
    800055c8:	2d4080e7          	jalr	724(ra) # 8000c898 <_Unwind_Resume>
    800055cc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800055d0:	00090513          	mv	a0,s2
    800055d4:	ffffd097          	auipc	ra,0xffffd
    800055d8:	fa4080e7          	jalr	-92(ra) # 80002578 <_ZdlPv>
    800055dc:	00048513          	mv	a0,s1
    800055e0:	00007097          	auipc	ra,0x7
    800055e4:	2b8080e7          	jalr	696(ra) # 8000c898 <_Unwind_Resume>
    800055e8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800055ec:	00090513          	mv	a0,s2
    800055f0:	ffffd097          	auipc	ra,0xffffd
    800055f4:	f88080e7          	jalr	-120(ra) # 80002578 <_ZdlPv>
    800055f8:	00048513          	mv	a0,s1
    800055fc:	00007097          	auipc	ra,0x7
    80005600:	29c080e7          	jalr	668(ra) # 8000c898 <_Unwind_Resume>

0000000080005604 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005604:	fe010113          	addi	sp,sp,-32
    80005608:	00113c23          	sd	ra,24(sp)
    8000560c:	00813823          	sd	s0,16(sp)
    80005610:	00913423          	sd	s1,8(sp)
    80005614:	01213023          	sd	s2,0(sp)
    80005618:	02010413          	addi	s0,sp,32
    8000561c:	00050493          	mv	s1,a0
    80005620:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005624:	01853503          	ld	a0,24(a0)
    80005628:	ffffd097          	auipc	ra,0xffffd
    8000562c:	100080e7          	jalr	256(ra) # 80002728 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005630:	0304b503          	ld	a0,48(s1)
    80005634:	ffffd097          	auipc	ra,0xffffd
    80005638:	0f4080e7          	jalr	244(ra) # 80002728 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000563c:	0084b783          	ld	a5,8(s1)
    80005640:	0144a703          	lw	a4,20(s1)
    80005644:	00271713          	slli	a4,a4,0x2
    80005648:	00e787b3          	add	a5,a5,a4
    8000564c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005650:	0144a783          	lw	a5,20(s1)
    80005654:	0017879b          	addiw	a5,a5,1
    80005658:	0004a703          	lw	a4,0(s1)
    8000565c:	02e7e7bb          	remw	a5,a5,a4
    80005660:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005664:	0304b503          	ld	a0,48(s1)
    80005668:	ffffd097          	auipc	ra,0xffffd
    8000566c:	0ec080e7          	jalr	236(ra) # 80002754 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005670:	0204b503          	ld	a0,32(s1)
    80005674:	ffffd097          	auipc	ra,0xffffd
    80005678:	0e0080e7          	jalr	224(ra) # 80002754 <_ZN9Semaphore6signalEv>

}
    8000567c:	01813083          	ld	ra,24(sp)
    80005680:	01013403          	ld	s0,16(sp)
    80005684:	00813483          	ld	s1,8(sp)
    80005688:	00013903          	ld	s2,0(sp)
    8000568c:	02010113          	addi	sp,sp,32
    80005690:	00008067          	ret

0000000080005694 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005694:	fe010113          	addi	sp,sp,-32
    80005698:	00113c23          	sd	ra,24(sp)
    8000569c:	00813823          	sd	s0,16(sp)
    800056a0:	00913423          	sd	s1,8(sp)
    800056a4:	01213023          	sd	s2,0(sp)
    800056a8:	02010413          	addi	s0,sp,32
    800056ac:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800056b0:	02053503          	ld	a0,32(a0)
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	074080e7          	jalr	116(ra) # 80002728 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800056bc:	0284b503          	ld	a0,40(s1)
    800056c0:	ffffd097          	auipc	ra,0xffffd
    800056c4:	068080e7          	jalr	104(ra) # 80002728 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800056c8:	0084b703          	ld	a4,8(s1)
    800056cc:	0104a783          	lw	a5,16(s1)
    800056d0:	00279693          	slli	a3,a5,0x2
    800056d4:	00d70733          	add	a4,a4,a3
    800056d8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800056dc:	0017879b          	addiw	a5,a5,1
    800056e0:	0004a703          	lw	a4,0(s1)
    800056e4:	02e7e7bb          	remw	a5,a5,a4
    800056e8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800056ec:	0284b503          	ld	a0,40(s1)
    800056f0:	ffffd097          	auipc	ra,0xffffd
    800056f4:	064080e7          	jalr	100(ra) # 80002754 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800056f8:	0184b503          	ld	a0,24(s1)
    800056fc:	ffffd097          	auipc	ra,0xffffd
    80005700:	058080e7          	jalr	88(ra) # 80002754 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005704:	00090513          	mv	a0,s2
    80005708:	01813083          	ld	ra,24(sp)
    8000570c:	01013403          	ld	s0,16(sp)
    80005710:	00813483          	ld	s1,8(sp)
    80005714:	00013903          	ld	s2,0(sp)
    80005718:	02010113          	addi	sp,sp,32
    8000571c:	00008067          	ret

0000000080005720 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005720:	fe010113          	addi	sp,sp,-32
    80005724:	00113c23          	sd	ra,24(sp)
    80005728:	00813823          	sd	s0,16(sp)
    8000572c:	00913423          	sd	s1,8(sp)
    80005730:	01213023          	sd	s2,0(sp)
    80005734:	02010413          	addi	s0,sp,32
    80005738:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000573c:	02853503          	ld	a0,40(a0)
    80005740:	ffffd097          	auipc	ra,0xffffd
    80005744:	fe8080e7          	jalr	-24(ra) # 80002728 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005748:	0304b503          	ld	a0,48(s1)
    8000574c:	ffffd097          	auipc	ra,0xffffd
    80005750:	fdc080e7          	jalr	-36(ra) # 80002728 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005754:	0144a783          	lw	a5,20(s1)
    80005758:	0104a903          	lw	s2,16(s1)
    8000575c:	0327ce63          	blt	a5,s2,80005798 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005760:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005764:	0304b503          	ld	a0,48(s1)
    80005768:	ffffd097          	auipc	ra,0xffffd
    8000576c:	fec080e7          	jalr	-20(ra) # 80002754 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005770:	0284b503          	ld	a0,40(s1)
    80005774:	ffffd097          	auipc	ra,0xffffd
    80005778:	fe0080e7          	jalr	-32(ra) # 80002754 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000577c:	00090513          	mv	a0,s2
    80005780:	01813083          	ld	ra,24(sp)
    80005784:	01013403          	ld	s0,16(sp)
    80005788:	00813483          	ld	s1,8(sp)
    8000578c:	00013903          	ld	s2,0(sp)
    80005790:	02010113          	addi	sp,sp,32
    80005794:	00008067          	ret
        ret = cap - head + tail;
    80005798:	0004a703          	lw	a4,0(s1)
    8000579c:	4127093b          	subw	s2,a4,s2
    800057a0:	00f9093b          	addw	s2,s2,a5
    800057a4:	fc1ff06f          	j	80005764 <_ZN9BufferCPP6getCntEv+0x44>

00000000800057a8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800057a8:	fe010113          	addi	sp,sp,-32
    800057ac:	00113c23          	sd	ra,24(sp)
    800057b0:	00813823          	sd	s0,16(sp)
    800057b4:	00913423          	sd	s1,8(sp)
    800057b8:	02010413          	addi	s0,sp,32
    800057bc:	00050493          	mv	s1,a0
    Console::putc('\n');
    800057c0:	00a00513          	li	a0,10
    800057c4:	ffffd097          	auipc	ra,0xffffd
    800057c8:	0d8080e7          	jalr	216(ra) # 8000289c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800057cc:	00004517          	auipc	a0,0x4
    800057d0:	ce450513          	addi	a0,a0,-796 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800057d4:	00000097          	auipc	ra,0x0
    800057d8:	a0c080e7          	jalr	-1524(ra) # 800051e0 <_Z11printStringPKc>
    while (getCnt()) {
    800057dc:	00048513          	mv	a0,s1
    800057e0:	00000097          	auipc	ra,0x0
    800057e4:	f40080e7          	jalr	-192(ra) # 80005720 <_ZN9BufferCPP6getCntEv>
    800057e8:	02050c63          	beqz	a0,80005820 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800057ec:	0084b783          	ld	a5,8(s1)
    800057f0:	0104a703          	lw	a4,16(s1)
    800057f4:	00271713          	slli	a4,a4,0x2
    800057f8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800057fc:	0007c503          	lbu	a0,0(a5)
    80005800:	ffffd097          	auipc	ra,0xffffd
    80005804:	09c080e7          	jalr	156(ra) # 8000289c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005808:	0104a783          	lw	a5,16(s1)
    8000580c:	0017879b          	addiw	a5,a5,1
    80005810:	0004a703          	lw	a4,0(s1)
    80005814:	02e7e7bb          	remw	a5,a5,a4
    80005818:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000581c:	fc1ff06f          	j	800057dc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005820:	02100513          	li	a0,33
    80005824:	ffffd097          	auipc	ra,0xffffd
    80005828:	078080e7          	jalr	120(ra) # 8000289c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000582c:	00a00513          	li	a0,10
    80005830:	ffffd097          	auipc	ra,0xffffd
    80005834:	06c080e7          	jalr	108(ra) # 8000289c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005838:	0084b503          	ld	a0,8(s1)
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	cb4080e7          	jalr	-844(ra) # 800014f0 <_Z8mem_freePv>
    delete itemAvailable;
    80005844:	0204b503          	ld	a0,32(s1)
    80005848:	00050863          	beqz	a0,80005858 <_ZN9BufferCPPD1Ev+0xb0>
    8000584c:	00053783          	ld	a5,0(a0)
    80005850:	0087b783          	ld	a5,8(a5)
    80005854:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005858:	0184b503          	ld	a0,24(s1)
    8000585c:	00050863          	beqz	a0,8000586c <_ZN9BufferCPPD1Ev+0xc4>
    80005860:	00053783          	ld	a5,0(a0)
    80005864:	0087b783          	ld	a5,8(a5)
    80005868:	000780e7          	jalr	a5
    delete mutexTail;
    8000586c:	0304b503          	ld	a0,48(s1)
    80005870:	00050863          	beqz	a0,80005880 <_ZN9BufferCPPD1Ev+0xd8>
    80005874:	00053783          	ld	a5,0(a0)
    80005878:	0087b783          	ld	a5,8(a5)
    8000587c:	000780e7          	jalr	a5
    delete mutexHead;
    80005880:	0284b503          	ld	a0,40(s1)
    80005884:	00050863          	beqz	a0,80005894 <_ZN9BufferCPPD1Ev+0xec>
    80005888:	00053783          	ld	a5,0(a0)
    8000588c:	0087b783          	ld	a5,8(a5)
    80005890:	000780e7          	jalr	a5
}
    80005894:	01813083          	ld	ra,24(sp)
    80005898:	01013403          	ld	s0,16(sp)
    8000589c:	00813483          	ld	s1,8(sp)
    800058a0:	02010113          	addi	sp,sp,32
    800058a4:	00008067          	ret

00000000800058a8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800058a8:	fe010113          	addi	sp,sp,-32
    800058ac:	00113c23          	sd	ra,24(sp)
    800058b0:	00813823          	sd	s0,16(sp)
    800058b4:	00913423          	sd	s1,8(sp)
    800058b8:	01213023          	sd	s2,0(sp)
    800058bc:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800058c0:	00004517          	auipc	a0,0x4
    800058c4:	c0850513          	addi	a0,a0,-1016 # 800094c8 <CONSOLE_STATUS+0x4b8>
    800058c8:	00000097          	auipc	ra,0x0
    800058cc:	918080e7          	jalr	-1768(ra) # 800051e0 <_Z11printStringPKc>
    int test = getc() - '0';
    800058d0:	ffffc097          	auipc	ra,0xffffc
    800058d4:	dfc080e7          	jalr	-516(ra) # 800016cc <_Z4getcv>
    800058d8:	00050913          	mv	s2,a0
    800058dc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	dec080e7          	jalr	-532(ra) # 800016cc <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800058e8:	fcb9091b          	addiw	s2,s2,-53
    800058ec:	00100793          	li	a5,1
    800058f0:	0327f463          	bgeu	a5,s2,80005918 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800058f4:	00700793          	li	a5,7
    800058f8:	0e97e263          	bltu	a5,s1,800059dc <_Z8userMainv+0x134>
    800058fc:	00249493          	slli	s1,s1,0x2
    80005900:	00004717          	auipc	a4,0x4
    80005904:	de070713          	addi	a4,a4,-544 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80005908:	00e484b3          	add	s1,s1,a4
    8000590c:	0004a783          	lw	a5,0(s1)
    80005910:	00e787b3          	add	a5,a5,a4
    80005914:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005918:	00004517          	auipc	a0,0x4
    8000591c:	bd050513          	addi	a0,a0,-1072 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80005920:	00000097          	auipc	ra,0x0
    80005924:	8c0080e7          	jalr	-1856(ra) # 800051e0 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005928:	01813083          	ld	ra,24(sp)
    8000592c:	01013403          	ld	s0,16(sp)
    80005930:	00813483          	ld	s1,8(sp)
    80005934:	00013903          	ld	s2,0(sp)
    80005938:	02010113          	addi	sp,sp,32
    8000593c:	00008067          	ret
            Threads_C_API_test();
    80005940:	fffff097          	auipc	ra,0xfffff
    80005944:	f18080e7          	jalr	-232(ra) # 80004858 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005948:	00004517          	auipc	a0,0x4
    8000594c:	bd050513          	addi	a0,a0,-1072 # 80009518 <CONSOLE_STATUS+0x508>
    80005950:	00000097          	auipc	ra,0x0
    80005954:	890080e7          	jalr	-1904(ra) # 800051e0 <_Z11printStringPKc>
            break;
    80005958:	fd1ff06f          	j	80005928 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    8000595c:	ffffe097          	auipc	ra,0xffffe
    80005960:	ddc080e7          	jalr	-548(ra) # 80003738 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005964:	00004517          	auipc	a0,0x4
    80005968:	bf450513          	addi	a0,a0,-1036 # 80009558 <CONSOLE_STATUS+0x548>
    8000596c:	00000097          	auipc	ra,0x0
    80005970:	874080e7          	jalr	-1932(ra) # 800051e0 <_Z11printStringPKc>
            break;
    80005974:	fb5ff06f          	j	80005928 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005978:	ffffd097          	auipc	ra,0xffffd
    8000597c:	614080e7          	jalr	1556(ra) # 80002f8c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005980:	00004517          	auipc	a0,0x4
    80005984:	c1850513          	addi	a0,a0,-1000 # 80009598 <CONSOLE_STATUS+0x588>
    80005988:	00000097          	auipc	ra,0x0
    8000598c:	858080e7          	jalr	-1960(ra) # 800051e0 <_Z11printStringPKc>
            break;
    80005990:	f99ff06f          	j	80005928 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005994:	fffff097          	auipc	ra,0xfffff
    80005998:	208080e7          	jalr	520(ra) # 80004b9c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000599c:	00004517          	auipc	a0,0x4
    800059a0:	c4c50513          	addi	a0,a0,-948 # 800095e8 <CONSOLE_STATUS+0x5d8>
    800059a4:	00000097          	auipc	ra,0x0
    800059a8:	83c080e7          	jalr	-1988(ra) # 800051e0 <_Z11printStringPKc>
            break;
    800059ac:	f7dff06f          	j	80005928 <_Z8userMainv+0x80>
            System_Mode_test();
    800059b0:	00000097          	auipc	ra,0x0
    800059b4:	658080e7          	jalr	1624(ra) # 80006008 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800059b8:	00004517          	auipc	a0,0x4
    800059bc:	c8850513          	addi	a0,a0,-888 # 80009640 <CONSOLE_STATUS+0x630>
    800059c0:	00000097          	auipc	ra,0x0
    800059c4:	820080e7          	jalr	-2016(ra) # 800051e0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800059c8:	00004517          	auipc	a0,0x4
    800059cc:	c9850513          	addi	a0,a0,-872 # 80009660 <CONSOLE_STATUS+0x650>
    800059d0:	00000097          	auipc	ra,0x0
    800059d4:	810080e7          	jalr	-2032(ra) # 800051e0 <_Z11printStringPKc>
            break;
    800059d8:	f51ff06f          	j	80005928 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800059dc:	00004517          	auipc	a0,0x4
    800059e0:	cdc50513          	addi	a0,a0,-804 # 800096b8 <CONSOLE_STATUS+0x6a8>
    800059e4:	fffff097          	auipc	ra,0xfffff
    800059e8:	7fc080e7          	jalr	2044(ra) # 800051e0 <_Z11printStringPKc>
    800059ec:	f3dff06f          	j	80005928 <_Z8userMainv+0x80>

00000000800059f0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800059f0:	fe010113          	addi	sp,sp,-32
    800059f4:	00113c23          	sd	ra,24(sp)
    800059f8:	00813823          	sd	s0,16(sp)
    800059fc:	00913423          	sd	s1,8(sp)
    80005a00:	01213023          	sd	s2,0(sp)
    80005a04:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005a08:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005a0c:	00600493          	li	s1,6
    while (--i > 0) {
    80005a10:	fff4849b          	addiw	s1,s1,-1
    80005a14:	04905463          	blez	s1,80005a5c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005a18:	00004517          	auipc	a0,0x4
    80005a1c:	ce850513          	addi	a0,a0,-792 # 80009700 <CONSOLE_STATUS+0x6f0>
    80005a20:	fffff097          	auipc	ra,0xfffff
    80005a24:	7c0080e7          	jalr	1984(ra) # 800051e0 <_Z11printStringPKc>
        printInt(sleep_time);
    80005a28:	00000613          	li	a2,0
    80005a2c:	00a00593          	li	a1,10
    80005a30:	0009051b          	sext.w	a0,s2
    80005a34:	00000097          	auipc	ra,0x0
    80005a38:	95c080e7          	jalr	-1700(ra) # 80005390 <_Z8printIntiii>
        printString(" !\n");
    80005a3c:	00004517          	auipc	a0,0x4
    80005a40:	ccc50513          	addi	a0,a0,-820 # 80009708 <CONSOLE_STATUS+0x6f8>
    80005a44:	fffff097          	auipc	ra,0xfffff
    80005a48:	79c080e7          	jalr	1948(ra) # 800051e0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a4c:	00090513          	mv	a0,s2
    80005a50:	ffffc097          	auipc	ra,0xffffc
    80005a54:	cc8080e7          	jalr	-824(ra) # 80001718 <_Z10time_sleepm>
    while (--i > 0) {
    80005a58:	fb9ff06f          	j	80005a10 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005a5c:	00a00793          	li	a5,10
    80005a60:	02f95933          	divu	s2,s2,a5
    80005a64:	fff90913          	addi	s2,s2,-1
    80005a68:	00006797          	auipc	a5,0x6
    80005a6c:	d5878793          	addi	a5,a5,-680 # 8000b7c0 <_ZL8finished>
    80005a70:	01278933          	add	s2,a5,s2
    80005a74:	00100793          	li	a5,1
    80005a78:	00f90023          	sb	a5,0(s2)
}
    80005a7c:	01813083          	ld	ra,24(sp)
    80005a80:	01013403          	ld	s0,16(sp)
    80005a84:	00813483          	ld	s1,8(sp)
    80005a88:	00013903          	ld	s2,0(sp)
    80005a8c:	02010113          	addi	sp,sp,32
    80005a90:	00008067          	ret

0000000080005a94 <_Z12testSleepingv>:

void testSleeping() {
    80005a94:	fc010113          	addi	sp,sp,-64
    80005a98:	02113c23          	sd	ra,56(sp)
    80005a9c:	02813823          	sd	s0,48(sp)
    80005aa0:	02913423          	sd	s1,40(sp)
    80005aa4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005aa8:	00a00793          	li	a5,10
    80005aac:	fcf43823          	sd	a5,-48(s0)
    80005ab0:	01400793          	li	a5,20
    80005ab4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ab8:	00000493          	li	s1,0
    80005abc:	02c0006f          	j	80005ae8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005ac0:	00349793          	slli	a5,s1,0x3
    80005ac4:	fd040613          	addi	a2,s0,-48
    80005ac8:	00f60633          	add	a2,a2,a5
    80005acc:	00000597          	auipc	a1,0x0
    80005ad0:	f2458593          	addi	a1,a1,-220 # 800059f0 <_ZL9sleepyRunPv>
    80005ad4:	fc040513          	addi	a0,s0,-64
    80005ad8:	00f50533          	add	a0,a0,a5
    80005adc:	ffffc097          	auipc	ra,0xffffc
    80005ae0:	a98080e7          	jalr	-1384(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ae4:	0014849b          	addiw	s1,s1,1
    80005ae8:	00100793          	li	a5,1
    80005aec:	fc97dae3          	bge	a5,s1,80005ac0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005af0:	00006797          	auipc	a5,0x6
    80005af4:	cd07c783          	lbu	a5,-816(a5) # 8000b7c0 <_ZL8finished>
    80005af8:	fe078ce3          	beqz	a5,80005af0 <_Z12testSleepingv+0x5c>
    80005afc:	00006797          	auipc	a5,0x6
    80005b00:	cc57c783          	lbu	a5,-827(a5) # 8000b7c1 <_ZL8finished+0x1>
    80005b04:	fe0786e3          	beqz	a5,80005af0 <_Z12testSleepingv+0x5c>
}
    80005b08:	03813083          	ld	ra,56(sp)
    80005b0c:	03013403          	ld	s0,48(sp)
    80005b10:	02813483          	ld	s1,40(sp)
    80005b14:	04010113          	addi	sp,sp,64
    80005b18:	00008067          	ret

0000000080005b1c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005b1c:	fe010113          	addi	sp,sp,-32
    80005b20:	00113c23          	sd	ra,24(sp)
    80005b24:	00813823          	sd	s0,16(sp)
    80005b28:	00913423          	sd	s1,8(sp)
    80005b2c:	01213023          	sd	s2,0(sp)
    80005b30:	02010413          	addi	s0,sp,32
    80005b34:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b38:	00100793          	li	a5,1
    80005b3c:	02a7f863          	bgeu	a5,a0,80005b6c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b40:	00a00793          	li	a5,10
    80005b44:	02f577b3          	remu	a5,a0,a5
    80005b48:	02078e63          	beqz	a5,80005b84 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b4c:	fff48513          	addi	a0,s1,-1
    80005b50:	00000097          	auipc	ra,0x0
    80005b54:	fcc080e7          	jalr	-52(ra) # 80005b1c <_ZL9fibonaccim>
    80005b58:	00050913          	mv	s2,a0
    80005b5c:	ffe48513          	addi	a0,s1,-2
    80005b60:	00000097          	auipc	ra,0x0
    80005b64:	fbc080e7          	jalr	-68(ra) # 80005b1c <_ZL9fibonaccim>
    80005b68:	00a90533          	add	a0,s2,a0
}
    80005b6c:	01813083          	ld	ra,24(sp)
    80005b70:	01013403          	ld	s0,16(sp)
    80005b74:	00813483          	ld	s1,8(sp)
    80005b78:	00013903          	ld	s2,0(sp)
    80005b7c:	02010113          	addi	sp,sp,32
    80005b80:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005b84:	ffffc097          	auipc	ra,0xffffc
    80005b88:	a50080e7          	jalr	-1456(ra) # 800015d4 <_Z15thread_dispatchv>
    80005b8c:	fc1ff06f          	j	80005b4c <_ZL9fibonaccim+0x30>

0000000080005b90 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005b90:	fe010113          	addi	sp,sp,-32
    80005b94:	00113c23          	sd	ra,24(sp)
    80005b98:	00813823          	sd	s0,16(sp)
    80005b9c:	00913423          	sd	s1,8(sp)
    80005ba0:	01213023          	sd	s2,0(sp)
    80005ba4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005ba8:	00a00493          	li	s1,10
    80005bac:	0400006f          	j	80005bec <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005bb0:	00004517          	auipc	a0,0x4
    80005bb4:	86850513          	addi	a0,a0,-1944 # 80009418 <CONSOLE_STATUS+0x408>
    80005bb8:	fffff097          	auipc	ra,0xfffff
    80005bbc:	628080e7          	jalr	1576(ra) # 800051e0 <_Z11printStringPKc>
    80005bc0:	00000613          	li	a2,0
    80005bc4:	00a00593          	li	a1,10
    80005bc8:	00048513          	mv	a0,s1
    80005bcc:	fffff097          	auipc	ra,0xfffff
    80005bd0:	7c4080e7          	jalr	1988(ra) # 80005390 <_Z8printIntiii>
    80005bd4:	00003517          	auipc	a0,0x3
    80005bd8:	5d450513          	addi	a0,a0,1492 # 800091a8 <CONSOLE_STATUS+0x198>
    80005bdc:	fffff097          	auipc	ra,0xfffff
    80005be0:	604080e7          	jalr	1540(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005be4:	0014849b          	addiw	s1,s1,1
    80005be8:	0ff4f493          	andi	s1,s1,255
    80005bec:	00c00793          	li	a5,12
    80005bf0:	fc97f0e3          	bgeu	a5,s1,80005bb0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005bf4:	00004517          	auipc	a0,0x4
    80005bf8:	82c50513          	addi	a0,a0,-2004 # 80009420 <CONSOLE_STATUS+0x410>
    80005bfc:	fffff097          	auipc	ra,0xfffff
    80005c00:	5e4080e7          	jalr	1508(ra) # 800051e0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005c04:	00500313          	li	t1,5
    thread_dispatch();
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	9cc080e7          	jalr	-1588(ra) # 800015d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005c10:	01000513          	li	a0,16
    80005c14:	00000097          	auipc	ra,0x0
    80005c18:	f08080e7          	jalr	-248(ra) # 80005b1c <_ZL9fibonaccim>
    80005c1c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c20:	00004517          	auipc	a0,0x4
    80005c24:	81050513          	addi	a0,a0,-2032 # 80009430 <CONSOLE_STATUS+0x420>
    80005c28:	fffff097          	auipc	ra,0xfffff
    80005c2c:	5b8080e7          	jalr	1464(ra) # 800051e0 <_Z11printStringPKc>
    80005c30:	00000613          	li	a2,0
    80005c34:	00a00593          	li	a1,10
    80005c38:	0009051b          	sext.w	a0,s2
    80005c3c:	fffff097          	auipc	ra,0xfffff
    80005c40:	754080e7          	jalr	1876(ra) # 80005390 <_Z8printIntiii>
    80005c44:	00003517          	auipc	a0,0x3
    80005c48:	56450513          	addi	a0,a0,1380 # 800091a8 <CONSOLE_STATUS+0x198>
    80005c4c:	fffff097          	auipc	ra,0xfffff
    80005c50:	594080e7          	jalr	1428(ra) # 800051e0 <_Z11printStringPKc>
    80005c54:	0400006f          	j	80005c94 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c58:	00003517          	auipc	a0,0x3
    80005c5c:	7c050513          	addi	a0,a0,1984 # 80009418 <CONSOLE_STATUS+0x408>
    80005c60:	fffff097          	auipc	ra,0xfffff
    80005c64:	580080e7          	jalr	1408(ra) # 800051e0 <_Z11printStringPKc>
    80005c68:	00000613          	li	a2,0
    80005c6c:	00a00593          	li	a1,10
    80005c70:	00048513          	mv	a0,s1
    80005c74:	fffff097          	auipc	ra,0xfffff
    80005c78:	71c080e7          	jalr	1820(ra) # 80005390 <_Z8printIntiii>
    80005c7c:	00003517          	auipc	a0,0x3
    80005c80:	52c50513          	addi	a0,a0,1324 # 800091a8 <CONSOLE_STATUS+0x198>
    80005c84:	fffff097          	auipc	ra,0xfffff
    80005c88:	55c080e7          	jalr	1372(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005c8c:	0014849b          	addiw	s1,s1,1
    80005c90:	0ff4f493          	andi	s1,s1,255
    80005c94:	00f00793          	li	a5,15
    80005c98:	fc97f0e3          	bgeu	a5,s1,80005c58 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005c9c:	00003517          	auipc	a0,0x3
    80005ca0:	7a450513          	addi	a0,a0,1956 # 80009440 <CONSOLE_STATUS+0x430>
    80005ca4:	fffff097          	auipc	ra,0xfffff
    80005ca8:	53c080e7          	jalr	1340(ra) # 800051e0 <_Z11printStringPKc>
    finishedD = true;
    80005cac:	00100793          	li	a5,1
    80005cb0:	00006717          	auipc	a4,0x6
    80005cb4:	b0f70923          	sb	a5,-1262(a4) # 8000b7c2 <_ZL9finishedD>
    thread_dispatch();
    80005cb8:	ffffc097          	auipc	ra,0xffffc
    80005cbc:	91c080e7          	jalr	-1764(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80005cc0:	01813083          	ld	ra,24(sp)
    80005cc4:	01013403          	ld	s0,16(sp)
    80005cc8:	00813483          	ld	s1,8(sp)
    80005ccc:	00013903          	ld	s2,0(sp)
    80005cd0:	02010113          	addi	sp,sp,32
    80005cd4:	00008067          	ret

0000000080005cd8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005cd8:	fe010113          	addi	sp,sp,-32
    80005cdc:	00113c23          	sd	ra,24(sp)
    80005ce0:	00813823          	sd	s0,16(sp)
    80005ce4:	00913423          	sd	s1,8(sp)
    80005ce8:	01213023          	sd	s2,0(sp)
    80005cec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005cf0:	00000493          	li	s1,0
    80005cf4:	0400006f          	j	80005d34 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005cf8:	00003517          	auipc	a0,0x3
    80005cfc:	6f050513          	addi	a0,a0,1776 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005d00:	fffff097          	auipc	ra,0xfffff
    80005d04:	4e0080e7          	jalr	1248(ra) # 800051e0 <_Z11printStringPKc>
    80005d08:	00000613          	li	a2,0
    80005d0c:	00a00593          	li	a1,10
    80005d10:	00048513          	mv	a0,s1
    80005d14:	fffff097          	auipc	ra,0xfffff
    80005d18:	67c080e7          	jalr	1660(ra) # 80005390 <_Z8printIntiii>
    80005d1c:	00003517          	auipc	a0,0x3
    80005d20:	48c50513          	addi	a0,a0,1164 # 800091a8 <CONSOLE_STATUS+0x198>
    80005d24:	fffff097          	auipc	ra,0xfffff
    80005d28:	4bc080e7          	jalr	1212(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005d2c:	0014849b          	addiw	s1,s1,1
    80005d30:	0ff4f493          	andi	s1,s1,255
    80005d34:	00200793          	li	a5,2
    80005d38:	fc97f0e3          	bgeu	a5,s1,80005cf8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005d3c:	00003517          	auipc	a0,0x3
    80005d40:	6b450513          	addi	a0,a0,1716 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005d44:	fffff097          	auipc	ra,0xfffff
    80005d48:	49c080e7          	jalr	1180(ra) # 800051e0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d4c:	00700313          	li	t1,7
    thread_dispatch();
    80005d50:	ffffc097          	auipc	ra,0xffffc
    80005d54:	884080e7          	jalr	-1916(ra) # 800015d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005d58:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005d5c:	00003517          	auipc	a0,0x3
    80005d60:	6a450513          	addi	a0,a0,1700 # 80009400 <CONSOLE_STATUS+0x3f0>
    80005d64:	fffff097          	auipc	ra,0xfffff
    80005d68:	47c080e7          	jalr	1148(ra) # 800051e0 <_Z11printStringPKc>
    80005d6c:	00000613          	li	a2,0
    80005d70:	00a00593          	li	a1,10
    80005d74:	0009051b          	sext.w	a0,s2
    80005d78:	fffff097          	auipc	ra,0xfffff
    80005d7c:	618080e7          	jalr	1560(ra) # 80005390 <_Z8printIntiii>
    80005d80:	00003517          	auipc	a0,0x3
    80005d84:	42850513          	addi	a0,a0,1064 # 800091a8 <CONSOLE_STATUS+0x198>
    80005d88:	fffff097          	auipc	ra,0xfffff
    80005d8c:	458080e7          	jalr	1112(ra) # 800051e0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005d90:	00c00513          	li	a0,12
    80005d94:	00000097          	auipc	ra,0x0
    80005d98:	d88080e7          	jalr	-632(ra) # 80005b1c <_ZL9fibonaccim>
    80005d9c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005da0:	00003517          	auipc	a0,0x3
    80005da4:	66850513          	addi	a0,a0,1640 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005da8:	fffff097          	auipc	ra,0xfffff
    80005dac:	438080e7          	jalr	1080(ra) # 800051e0 <_Z11printStringPKc>
    80005db0:	00000613          	li	a2,0
    80005db4:	00a00593          	li	a1,10
    80005db8:	0009051b          	sext.w	a0,s2
    80005dbc:	fffff097          	auipc	ra,0xfffff
    80005dc0:	5d4080e7          	jalr	1492(ra) # 80005390 <_Z8printIntiii>
    80005dc4:	00003517          	auipc	a0,0x3
    80005dc8:	3e450513          	addi	a0,a0,996 # 800091a8 <CONSOLE_STATUS+0x198>
    80005dcc:	fffff097          	auipc	ra,0xfffff
    80005dd0:	414080e7          	jalr	1044(ra) # 800051e0 <_Z11printStringPKc>
    80005dd4:	0400006f          	j	80005e14 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005dd8:	00003517          	auipc	a0,0x3
    80005ddc:	61050513          	addi	a0,a0,1552 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005de0:	fffff097          	auipc	ra,0xfffff
    80005de4:	400080e7          	jalr	1024(ra) # 800051e0 <_Z11printStringPKc>
    80005de8:	00000613          	li	a2,0
    80005dec:	00a00593          	li	a1,10
    80005df0:	00048513          	mv	a0,s1
    80005df4:	fffff097          	auipc	ra,0xfffff
    80005df8:	59c080e7          	jalr	1436(ra) # 80005390 <_Z8printIntiii>
    80005dfc:	00003517          	auipc	a0,0x3
    80005e00:	3ac50513          	addi	a0,a0,940 # 800091a8 <CONSOLE_STATUS+0x198>
    80005e04:	fffff097          	auipc	ra,0xfffff
    80005e08:	3dc080e7          	jalr	988(ra) # 800051e0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005e0c:	0014849b          	addiw	s1,s1,1
    80005e10:	0ff4f493          	andi	s1,s1,255
    80005e14:	00500793          	li	a5,5
    80005e18:	fc97f0e3          	bgeu	a5,s1,80005dd8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005e1c:	00003517          	auipc	a0,0x3
    80005e20:	5ac50513          	addi	a0,a0,1452 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80005e24:	fffff097          	auipc	ra,0xfffff
    80005e28:	3bc080e7          	jalr	956(ra) # 800051e0 <_Z11printStringPKc>
    finishedC = true;
    80005e2c:	00100793          	li	a5,1
    80005e30:	00006717          	auipc	a4,0x6
    80005e34:	98f709a3          	sb	a5,-1645(a4) # 8000b7c3 <_ZL9finishedC>
    thread_dispatch();
    80005e38:	ffffb097          	auipc	ra,0xffffb
    80005e3c:	79c080e7          	jalr	1948(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80005e40:	01813083          	ld	ra,24(sp)
    80005e44:	01013403          	ld	s0,16(sp)
    80005e48:	00813483          	ld	s1,8(sp)
    80005e4c:	00013903          	ld	s2,0(sp)
    80005e50:	02010113          	addi	sp,sp,32
    80005e54:	00008067          	ret

0000000080005e58 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005e58:	fe010113          	addi	sp,sp,-32
    80005e5c:	00113c23          	sd	ra,24(sp)
    80005e60:	00813823          	sd	s0,16(sp)
    80005e64:	00913423          	sd	s1,8(sp)
    80005e68:	01213023          	sd	s2,0(sp)
    80005e6c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005e70:	00000913          	li	s2,0
    80005e74:	0400006f          	j	80005eb4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005e78:	ffffb097          	auipc	ra,0xffffb
    80005e7c:	75c080e7          	jalr	1884(ra) # 800015d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005e80:	00148493          	addi	s1,s1,1
    80005e84:	000027b7          	lui	a5,0x2
    80005e88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005e8c:	0097ee63          	bltu	a5,s1,80005ea8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005e90:	00000713          	li	a4,0
    80005e94:	000077b7          	lui	a5,0x7
    80005e98:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005e9c:	fce7eee3          	bltu	a5,a4,80005e78 <_ZL11workerBodyBPv+0x20>
    80005ea0:	00170713          	addi	a4,a4,1
    80005ea4:	ff1ff06f          	j	80005e94 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005ea8:	00a00793          	li	a5,10
    80005eac:	04f90663          	beq	s2,a5,80005ef8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005eb0:	00190913          	addi	s2,s2,1
    80005eb4:	00f00793          	li	a5,15
    80005eb8:	0527e463          	bltu	a5,s2,80005f00 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005ebc:	00003517          	auipc	a0,0x3
    80005ec0:	19450513          	addi	a0,a0,404 # 80009050 <CONSOLE_STATUS+0x40>
    80005ec4:	fffff097          	auipc	ra,0xfffff
    80005ec8:	31c080e7          	jalr	796(ra) # 800051e0 <_Z11printStringPKc>
    80005ecc:	00000613          	li	a2,0
    80005ed0:	00a00593          	li	a1,10
    80005ed4:	0009051b          	sext.w	a0,s2
    80005ed8:	fffff097          	auipc	ra,0xfffff
    80005edc:	4b8080e7          	jalr	1208(ra) # 80005390 <_Z8printIntiii>
    80005ee0:	00003517          	auipc	a0,0x3
    80005ee4:	2c850513          	addi	a0,a0,712 # 800091a8 <CONSOLE_STATUS+0x198>
    80005ee8:	fffff097          	auipc	ra,0xfffff
    80005eec:	2f8080e7          	jalr	760(ra) # 800051e0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005ef0:	00000493          	li	s1,0
    80005ef4:	f91ff06f          	j	80005e84 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005ef8:	14102ff3          	csrr	t6,sepc
    80005efc:	fb5ff06f          	j	80005eb0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005f00:	00003517          	auipc	a0,0x3
    80005f04:	4d850513          	addi	a0,a0,1240 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005f08:	fffff097          	auipc	ra,0xfffff
    80005f0c:	2d8080e7          	jalr	728(ra) # 800051e0 <_Z11printStringPKc>
    finishedB = true;
    80005f10:	00100793          	li	a5,1
    80005f14:	00006717          	auipc	a4,0x6
    80005f18:	8af70823          	sb	a5,-1872(a4) # 8000b7c4 <_ZL9finishedB>
    thread_dispatch();
    80005f1c:	ffffb097          	auipc	ra,0xffffb
    80005f20:	6b8080e7          	jalr	1720(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80005f24:	01813083          	ld	ra,24(sp)
    80005f28:	01013403          	ld	s0,16(sp)
    80005f2c:	00813483          	ld	s1,8(sp)
    80005f30:	00013903          	ld	s2,0(sp)
    80005f34:	02010113          	addi	sp,sp,32
    80005f38:	00008067          	ret

0000000080005f3c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005f3c:	fe010113          	addi	sp,sp,-32
    80005f40:	00113c23          	sd	ra,24(sp)
    80005f44:	00813823          	sd	s0,16(sp)
    80005f48:	00913423          	sd	s1,8(sp)
    80005f4c:	01213023          	sd	s2,0(sp)
    80005f50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f54:	00000913          	li	s2,0
    80005f58:	0380006f          	j	80005f90 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005f5c:	ffffb097          	auipc	ra,0xffffb
    80005f60:	678080e7          	jalr	1656(ra) # 800015d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f64:	00148493          	addi	s1,s1,1
    80005f68:	000027b7          	lui	a5,0x2
    80005f6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f70:	0097ee63          	bltu	a5,s1,80005f8c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005f74:	00000713          	li	a4,0
    80005f78:	000077b7          	lui	a5,0x7
    80005f7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005f80:	fce7eee3          	bltu	a5,a4,80005f5c <_ZL11workerBodyAPv+0x20>
    80005f84:	00170713          	addi	a4,a4,1
    80005f88:	ff1ff06f          	j	80005f78 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005f8c:	00190913          	addi	s2,s2,1
    80005f90:	00900793          	li	a5,9
    80005f94:	0527e063          	bltu	a5,s2,80005fd4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005f98:	00003517          	auipc	a0,0x3
    80005f9c:	08850513          	addi	a0,a0,136 # 80009020 <CONSOLE_STATUS+0x10>
    80005fa0:	fffff097          	auipc	ra,0xfffff
    80005fa4:	240080e7          	jalr	576(ra) # 800051e0 <_Z11printStringPKc>
    80005fa8:	00000613          	li	a2,0
    80005fac:	00a00593          	li	a1,10
    80005fb0:	0009051b          	sext.w	a0,s2
    80005fb4:	fffff097          	auipc	ra,0xfffff
    80005fb8:	3dc080e7          	jalr	988(ra) # 80005390 <_Z8printIntiii>
    80005fbc:	00003517          	auipc	a0,0x3
    80005fc0:	1ec50513          	addi	a0,a0,492 # 800091a8 <CONSOLE_STATUS+0x198>
    80005fc4:	fffff097          	auipc	ra,0xfffff
    80005fc8:	21c080e7          	jalr	540(ra) # 800051e0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005fcc:	00000493          	li	s1,0
    80005fd0:	f99ff06f          	j	80005f68 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005fd4:	00003517          	auipc	a0,0x3
    80005fd8:	3f450513          	addi	a0,a0,1012 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80005fdc:	fffff097          	auipc	ra,0xfffff
    80005fe0:	204080e7          	jalr	516(ra) # 800051e0 <_Z11printStringPKc>
    finishedA = true;
    80005fe4:	00100793          	li	a5,1
    80005fe8:	00005717          	auipc	a4,0x5
    80005fec:	7cf70ea3          	sb	a5,2013(a4) # 8000b7c5 <_ZL9finishedA>
}
    80005ff0:	01813083          	ld	ra,24(sp)
    80005ff4:	01013403          	ld	s0,16(sp)
    80005ff8:	00813483          	ld	s1,8(sp)
    80005ffc:	00013903          	ld	s2,0(sp)
    80006000:	02010113          	addi	sp,sp,32
    80006004:	00008067          	ret

0000000080006008 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006008:	fd010113          	addi	sp,sp,-48
    8000600c:	02113423          	sd	ra,40(sp)
    80006010:	02813023          	sd	s0,32(sp)
    80006014:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006018:	00000613          	li	a2,0
    8000601c:	00000597          	auipc	a1,0x0
    80006020:	f2058593          	addi	a1,a1,-224 # 80005f3c <_ZL11workerBodyAPv>
    80006024:	fd040513          	addi	a0,s0,-48
    80006028:	ffffb097          	auipc	ra,0xffffb
    8000602c:	54c080e7          	jalr	1356(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006030:	00003517          	auipc	a0,0x3
    80006034:	42050513          	addi	a0,a0,1056 # 80009450 <CONSOLE_STATUS+0x440>
    80006038:	fffff097          	auipc	ra,0xfffff
    8000603c:	1a8080e7          	jalr	424(ra) # 800051e0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006040:	00000613          	li	a2,0
    80006044:	00000597          	auipc	a1,0x0
    80006048:	e1458593          	addi	a1,a1,-492 # 80005e58 <_ZL11workerBodyBPv>
    8000604c:	fd840513          	addi	a0,s0,-40
    80006050:	ffffb097          	auipc	ra,0xffffb
    80006054:	524080e7          	jalr	1316(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006058:	00003517          	auipc	a0,0x3
    8000605c:	41050513          	addi	a0,a0,1040 # 80009468 <CONSOLE_STATUS+0x458>
    80006060:	fffff097          	auipc	ra,0xfffff
    80006064:	180080e7          	jalr	384(ra) # 800051e0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006068:	00000613          	li	a2,0
    8000606c:	00000597          	auipc	a1,0x0
    80006070:	c6c58593          	addi	a1,a1,-916 # 80005cd8 <_ZL11workerBodyCPv>
    80006074:	fe040513          	addi	a0,s0,-32
    80006078:	ffffb097          	auipc	ra,0xffffb
    8000607c:	4fc080e7          	jalr	1276(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006080:	00003517          	auipc	a0,0x3
    80006084:	40050513          	addi	a0,a0,1024 # 80009480 <CONSOLE_STATUS+0x470>
    80006088:	fffff097          	auipc	ra,0xfffff
    8000608c:	158080e7          	jalr	344(ra) # 800051e0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006090:	00000613          	li	a2,0
    80006094:	00000597          	auipc	a1,0x0
    80006098:	afc58593          	addi	a1,a1,-1284 # 80005b90 <_ZL11workerBodyDPv>
    8000609c:	fe840513          	addi	a0,s0,-24
    800060a0:	ffffb097          	auipc	ra,0xffffb
    800060a4:	4d4080e7          	jalr	1236(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800060a8:	00003517          	auipc	a0,0x3
    800060ac:	3f050513          	addi	a0,a0,1008 # 80009498 <CONSOLE_STATUS+0x488>
    800060b0:	fffff097          	auipc	ra,0xfffff
    800060b4:	130080e7          	jalr	304(ra) # 800051e0 <_Z11printStringPKc>
    800060b8:	00c0006f          	j	800060c4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800060bc:	ffffb097          	auipc	ra,0xffffb
    800060c0:	518080e7          	jalr	1304(ra) # 800015d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800060c4:	00005797          	auipc	a5,0x5
    800060c8:	7017c783          	lbu	a5,1793(a5) # 8000b7c5 <_ZL9finishedA>
    800060cc:	fe0788e3          	beqz	a5,800060bc <_Z16System_Mode_testv+0xb4>
    800060d0:	00005797          	auipc	a5,0x5
    800060d4:	6f47c783          	lbu	a5,1780(a5) # 8000b7c4 <_ZL9finishedB>
    800060d8:	fe0782e3          	beqz	a5,800060bc <_Z16System_Mode_testv+0xb4>
    800060dc:	00005797          	auipc	a5,0x5
    800060e0:	6e77c783          	lbu	a5,1767(a5) # 8000b7c3 <_ZL9finishedC>
    800060e4:	fc078ce3          	beqz	a5,800060bc <_Z16System_Mode_testv+0xb4>
    800060e8:	00005797          	auipc	a5,0x5
    800060ec:	6da7c783          	lbu	a5,1754(a5) # 8000b7c2 <_ZL9finishedD>
    800060f0:	fc0786e3          	beqz	a5,800060bc <_Z16System_Mode_testv+0xb4>
    }

}
    800060f4:	02813083          	ld	ra,40(sp)
    800060f8:	02013403          	ld	s0,32(sp)
    800060fc:	03010113          	addi	sp,sp,48
    80006100:	00008067          	ret

0000000080006104 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006104:	fe010113          	addi	sp,sp,-32
    80006108:	00113c23          	sd	ra,24(sp)
    8000610c:	00813823          	sd	s0,16(sp)
    80006110:	00913423          	sd	s1,8(sp)
    80006114:	01213023          	sd	s2,0(sp)
    80006118:	02010413          	addi	s0,sp,32
    8000611c:	00050493          	mv	s1,a0
    80006120:	00058913          	mv	s2,a1
    80006124:	0015879b          	addiw	a5,a1,1
    80006128:	0007851b          	sext.w	a0,a5
    8000612c:	00f4a023          	sw	a5,0(s1)
    80006130:	0004a823          	sw	zero,16(s1)
    80006134:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006138:	00251513          	slli	a0,a0,0x2
    8000613c:	ffffb097          	auipc	ra,0xffffb
    80006140:	37c080e7          	jalr	892(ra) # 800014b8 <_Z9mem_allocm>
    80006144:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006148:	00000593          	li	a1,0
    8000614c:	02048513          	addi	a0,s1,32
    80006150:	ffffb097          	auipc	ra,0xffffb
    80006154:	4c8080e7          	jalr	1224(ra) # 80001618 <_Z8sem_openPP11MySemaphorej>
    sem_open(&spaceAvailable, _cap);
    80006158:	00090593          	mv	a1,s2
    8000615c:	01848513          	addi	a0,s1,24
    80006160:	ffffb097          	auipc	ra,0xffffb
    80006164:	4b8080e7          	jalr	1208(ra) # 80001618 <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutexHead, 1);
    80006168:	00100593          	li	a1,1
    8000616c:	02848513          	addi	a0,s1,40
    80006170:	ffffb097          	auipc	ra,0xffffb
    80006174:	4a8080e7          	jalr	1192(ra) # 80001618 <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutexTail, 1);
    80006178:	00100593          	li	a1,1
    8000617c:	03048513          	addi	a0,s1,48
    80006180:	ffffb097          	auipc	ra,0xffffb
    80006184:	498080e7          	jalr	1176(ra) # 80001618 <_Z8sem_openPP11MySemaphorej>
}
    80006188:	01813083          	ld	ra,24(sp)
    8000618c:	01013403          	ld	s0,16(sp)
    80006190:	00813483          	ld	s1,8(sp)
    80006194:	00013903          	ld	s2,0(sp)
    80006198:	02010113          	addi	sp,sp,32
    8000619c:	00008067          	ret

00000000800061a0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800061a0:	fe010113          	addi	sp,sp,-32
    800061a4:	00113c23          	sd	ra,24(sp)
    800061a8:	00813823          	sd	s0,16(sp)
    800061ac:	00913423          	sd	s1,8(sp)
    800061b0:	01213023          	sd	s2,0(sp)
    800061b4:	02010413          	addi	s0,sp,32
    800061b8:	00050493          	mv	s1,a0
    800061bc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800061c0:	01853503          	ld	a0,24(a0)
    800061c4:	ffffb097          	auipc	ra,0xffffb
    800061c8:	4b0080e7          	jalr	1200(ra) # 80001674 <_Z8sem_waitP11MySemaphore>

    sem_wait(mutexTail);
    800061cc:	0304b503          	ld	a0,48(s1)
    800061d0:	ffffb097          	auipc	ra,0xffffb
    800061d4:	4a4080e7          	jalr	1188(ra) # 80001674 <_Z8sem_waitP11MySemaphore>
    buffer[tail] = val;
    800061d8:	0084b783          	ld	a5,8(s1)
    800061dc:	0144a703          	lw	a4,20(s1)
    800061e0:	00271713          	slli	a4,a4,0x2
    800061e4:	00e787b3          	add	a5,a5,a4
    800061e8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800061ec:	0144a783          	lw	a5,20(s1)
    800061f0:	0017879b          	addiw	a5,a5,1
    800061f4:	0004a703          	lw	a4,0(s1)
    800061f8:	02e7e7bb          	remw	a5,a5,a4
    800061fc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006200:	0304b503          	ld	a0,48(s1)
    80006204:	ffffb097          	auipc	ra,0xffffb
    80006208:	49c080e7          	jalr	1180(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>

    sem_signal(itemAvailable);
    8000620c:	0204b503          	ld	a0,32(s1)
    80006210:	ffffb097          	auipc	ra,0xffffb
    80006214:	490080e7          	jalr	1168(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>

}
    80006218:	01813083          	ld	ra,24(sp)
    8000621c:	01013403          	ld	s0,16(sp)
    80006220:	00813483          	ld	s1,8(sp)
    80006224:	00013903          	ld	s2,0(sp)
    80006228:	02010113          	addi	sp,sp,32
    8000622c:	00008067          	ret

0000000080006230 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006230:	fe010113          	addi	sp,sp,-32
    80006234:	00113c23          	sd	ra,24(sp)
    80006238:	00813823          	sd	s0,16(sp)
    8000623c:	00913423          	sd	s1,8(sp)
    80006240:	01213023          	sd	s2,0(sp)
    80006244:	02010413          	addi	s0,sp,32
    80006248:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000624c:	02053503          	ld	a0,32(a0)
    80006250:	ffffb097          	auipc	ra,0xffffb
    80006254:	424080e7          	jalr	1060(ra) # 80001674 <_Z8sem_waitP11MySemaphore>

    sem_wait(mutexHead);
    80006258:	0284b503          	ld	a0,40(s1)
    8000625c:	ffffb097          	auipc	ra,0xffffb
    80006260:	418080e7          	jalr	1048(ra) # 80001674 <_Z8sem_waitP11MySemaphore>

    int ret = buffer[head];
    80006264:	0084b703          	ld	a4,8(s1)
    80006268:	0104a783          	lw	a5,16(s1)
    8000626c:	00279693          	slli	a3,a5,0x2
    80006270:	00d70733          	add	a4,a4,a3
    80006274:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006278:	0017879b          	addiw	a5,a5,1
    8000627c:	0004a703          	lw	a4,0(s1)
    80006280:	02e7e7bb          	remw	a5,a5,a4
    80006284:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006288:	0284b503          	ld	a0,40(s1)
    8000628c:	ffffb097          	auipc	ra,0xffffb
    80006290:	414080e7          	jalr	1044(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>

    sem_signal(spaceAvailable);
    80006294:	0184b503          	ld	a0,24(s1)
    80006298:	ffffb097          	auipc	ra,0xffffb
    8000629c:	408080e7          	jalr	1032(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>

    return ret;
}
    800062a0:	00090513          	mv	a0,s2
    800062a4:	01813083          	ld	ra,24(sp)
    800062a8:	01013403          	ld	s0,16(sp)
    800062ac:	00813483          	ld	s1,8(sp)
    800062b0:	00013903          	ld	s2,0(sp)
    800062b4:	02010113          	addi	sp,sp,32
    800062b8:	00008067          	ret

00000000800062bc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800062bc:	fe010113          	addi	sp,sp,-32
    800062c0:	00113c23          	sd	ra,24(sp)
    800062c4:	00813823          	sd	s0,16(sp)
    800062c8:	00913423          	sd	s1,8(sp)
    800062cc:	01213023          	sd	s2,0(sp)
    800062d0:	02010413          	addi	s0,sp,32
    800062d4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800062d8:	02853503          	ld	a0,40(a0)
    800062dc:	ffffb097          	auipc	ra,0xffffb
    800062e0:	398080e7          	jalr	920(ra) # 80001674 <_Z8sem_waitP11MySemaphore>
    sem_wait(mutexTail);
    800062e4:	0304b503          	ld	a0,48(s1)
    800062e8:	ffffb097          	auipc	ra,0xffffb
    800062ec:	38c080e7          	jalr	908(ra) # 80001674 <_Z8sem_waitP11MySemaphore>

    if (tail >= head) {
    800062f0:	0144a783          	lw	a5,20(s1)
    800062f4:	0104a903          	lw	s2,16(s1)
    800062f8:	0327ce63          	blt	a5,s2,80006334 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800062fc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006300:	0304b503          	ld	a0,48(s1)
    80006304:	ffffb097          	auipc	ra,0xffffb
    80006308:	39c080e7          	jalr	924(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>
    sem_signal(mutexHead);
    8000630c:	0284b503          	ld	a0,40(s1)
    80006310:	ffffb097          	auipc	ra,0xffffb
    80006314:	390080e7          	jalr	912(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>

    return ret;
}
    80006318:	00090513          	mv	a0,s2
    8000631c:	01813083          	ld	ra,24(sp)
    80006320:	01013403          	ld	s0,16(sp)
    80006324:	00813483          	ld	s1,8(sp)
    80006328:	00013903          	ld	s2,0(sp)
    8000632c:	02010113          	addi	sp,sp,32
    80006330:	00008067          	ret
        ret = cap - head + tail;
    80006334:	0004a703          	lw	a4,0(s1)
    80006338:	4127093b          	subw	s2,a4,s2
    8000633c:	00f9093b          	addw	s2,s2,a5
    80006340:	fc1ff06f          	j	80006300 <_ZN6Buffer6getCntEv+0x44>

0000000080006344 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006344:	fe010113          	addi	sp,sp,-32
    80006348:	00113c23          	sd	ra,24(sp)
    8000634c:	00813823          	sd	s0,16(sp)
    80006350:	00913423          	sd	s1,8(sp)
    80006354:	02010413          	addi	s0,sp,32
    80006358:	00050493          	mv	s1,a0
    putc('\n');
    8000635c:	00a00513          	li	a0,10
    80006360:	ffffb097          	auipc	ra,0xffffb
    80006364:	394080e7          	jalr	916(ra) # 800016f4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006368:	00003517          	auipc	a0,0x3
    8000636c:	14850513          	addi	a0,a0,328 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80006370:	fffff097          	auipc	ra,0xfffff
    80006374:	e70080e7          	jalr	-400(ra) # 800051e0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006378:	00048513          	mv	a0,s1
    8000637c:	00000097          	auipc	ra,0x0
    80006380:	f40080e7          	jalr	-192(ra) # 800062bc <_ZN6Buffer6getCntEv>
    80006384:	02a05c63          	blez	a0,800063bc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006388:	0084b783          	ld	a5,8(s1)
    8000638c:	0104a703          	lw	a4,16(s1)
    80006390:	00271713          	slli	a4,a4,0x2
    80006394:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006398:	0007c503          	lbu	a0,0(a5)
    8000639c:	ffffb097          	auipc	ra,0xffffb
    800063a0:	358080e7          	jalr	856(ra) # 800016f4 <_Z4putcc>
        head = (head + 1) % cap;
    800063a4:	0104a783          	lw	a5,16(s1)
    800063a8:	0017879b          	addiw	a5,a5,1
    800063ac:	0004a703          	lw	a4,0(s1)
    800063b0:	02e7e7bb          	remw	a5,a5,a4
    800063b4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800063b8:	fc1ff06f          	j	80006378 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800063bc:	02100513          	li	a0,33
    800063c0:	ffffb097          	auipc	ra,0xffffb
    800063c4:	334080e7          	jalr	820(ra) # 800016f4 <_Z4putcc>
    putc('\n');
    800063c8:	00a00513          	li	a0,10
    800063cc:	ffffb097          	auipc	ra,0xffffb
    800063d0:	328080e7          	jalr	808(ra) # 800016f4 <_Z4putcc>
    mem_free(buffer);
    800063d4:	0084b503          	ld	a0,8(s1)
    800063d8:	ffffb097          	auipc	ra,0xffffb
    800063dc:	118080e7          	jalr	280(ra) # 800014f0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800063e0:	0204b503          	ld	a0,32(s1)
    800063e4:	ffffb097          	auipc	ra,0xffffb
    800063e8:	264080e7          	jalr	612(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
    sem_close(spaceAvailable);
    800063ec:	0184b503          	ld	a0,24(s1)
    800063f0:	ffffb097          	auipc	ra,0xffffb
    800063f4:	258080e7          	jalr	600(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
    sem_close(mutexTail);
    800063f8:	0304b503          	ld	a0,48(s1)
    800063fc:	ffffb097          	auipc	ra,0xffffb
    80006400:	24c080e7          	jalr	588(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
    sem_close(mutexHead);
    80006404:	0284b503          	ld	a0,40(s1)
    80006408:	ffffb097          	auipc	ra,0xffffb
    8000640c:	240080e7          	jalr	576(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
}
    80006410:	01813083          	ld	ra,24(sp)
    80006414:	01013403          	ld	s0,16(sp)
    80006418:	00813483          	ld	s1,8(sp)
    8000641c:	02010113          	addi	sp,sp,32
    80006420:	00008067          	ret

0000000080006424 <start>:
    80006424:	ff010113          	addi	sp,sp,-16
    80006428:	00813423          	sd	s0,8(sp)
    8000642c:	01010413          	addi	s0,sp,16
    80006430:	300027f3          	csrr	a5,mstatus
    80006434:	ffffe737          	lui	a4,0xffffe
    80006438:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1dcf>
    8000643c:	00e7f7b3          	and	a5,a5,a4
    80006440:	00001737          	lui	a4,0x1
    80006444:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006448:	00e7e7b3          	or	a5,a5,a4
    8000644c:	30079073          	csrw	mstatus,a5
    80006450:	00000797          	auipc	a5,0x0
    80006454:	16078793          	addi	a5,a5,352 # 800065b0 <system_main>
    80006458:	34179073          	csrw	mepc,a5
    8000645c:	00000793          	li	a5,0
    80006460:	18079073          	csrw	satp,a5
    80006464:	000107b7          	lui	a5,0x10
    80006468:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000646c:	30279073          	csrw	medeleg,a5
    80006470:	30379073          	csrw	mideleg,a5
    80006474:	104027f3          	csrr	a5,sie
    80006478:	2227e793          	ori	a5,a5,546
    8000647c:	10479073          	csrw	sie,a5
    80006480:	fff00793          	li	a5,-1
    80006484:	00a7d793          	srli	a5,a5,0xa
    80006488:	3b079073          	csrw	pmpaddr0,a5
    8000648c:	00f00793          	li	a5,15
    80006490:	3a079073          	csrw	pmpcfg0,a5
    80006494:	f14027f3          	csrr	a5,mhartid
    80006498:	0200c737          	lui	a4,0x200c
    8000649c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064a0:	0007869b          	sext.w	a3,a5
    800064a4:	00269713          	slli	a4,a3,0x2
    800064a8:	000f4637          	lui	a2,0xf4
    800064ac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800064b0:	00d70733          	add	a4,a4,a3
    800064b4:	0037979b          	slliw	a5,a5,0x3
    800064b8:	020046b7          	lui	a3,0x2004
    800064bc:	00d787b3          	add	a5,a5,a3
    800064c0:	00c585b3          	add	a1,a1,a2
    800064c4:	00371693          	slli	a3,a4,0x3
    800064c8:	00005717          	auipc	a4,0x5
    800064cc:	30870713          	addi	a4,a4,776 # 8000b7d0 <timer_scratch>
    800064d0:	00b7b023          	sd	a1,0(a5)
    800064d4:	00d70733          	add	a4,a4,a3
    800064d8:	00f73c23          	sd	a5,24(a4)
    800064dc:	02c73023          	sd	a2,32(a4)
    800064e0:	34071073          	csrw	mscratch,a4
    800064e4:	00000797          	auipc	a5,0x0
    800064e8:	6ec78793          	addi	a5,a5,1772 # 80006bd0 <timervec>
    800064ec:	30579073          	csrw	mtvec,a5
    800064f0:	300027f3          	csrr	a5,mstatus
    800064f4:	0087e793          	ori	a5,a5,8
    800064f8:	30079073          	csrw	mstatus,a5
    800064fc:	304027f3          	csrr	a5,mie
    80006500:	0807e793          	ori	a5,a5,128
    80006504:	30479073          	csrw	mie,a5
    80006508:	f14027f3          	csrr	a5,mhartid
    8000650c:	0007879b          	sext.w	a5,a5
    80006510:	00078213          	mv	tp,a5
    80006514:	30200073          	mret
    80006518:	00813403          	ld	s0,8(sp)
    8000651c:	01010113          	addi	sp,sp,16
    80006520:	00008067          	ret

0000000080006524 <timerinit>:
    80006524:	ff010113          	addi	sp,sp,-16
    80006528:	00813423          	sd	s0,8(sp)
    8000652c:	01010413          	addi	s0,sp,16
    80006530:	f14027f3          	csrr	a5,mhartid
    80006534:	0200c737          	lui	a4,0x200c
    80006538:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000653c:	0007869b          	sext.w	a3,a5
    80006540:	00269713          	slli	a4,a3,0x2
    80006544:	000f4637          	lui	a2,0xf4
    80006548:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000654c:	00d70733          	add	a4,a4,a3
    80006550:	0037979b          	slliw	a5,a5,0x3
    80006554:	020046b7          	lui	a3,0x2004
    80006558:	00d787b3          	add	a5,a5,a3
    8000655c:	00c585b3          	add	a1,a1,a2
    80006560:	00371693          	slli	a3,a4,0x3
    80006564:	00005717          	auipc	a4,0x5
    80006568:	26c70713          	addi	a4,a4,620 # 8000b7d0 <timer_scratch>
    8000656c:	00b7b023          	sd	a1,0(a5)
    80006570:	00d70733          	add	a4,a4,a3
    80006574:	00f73c23          	sd	a5,24(a4)
    80006578:	02c73023          	sd	a2,32(a4)
    8000657c:	34071073          	csrw	mscratch,a4
    80006580:	00000797          	auipc	a5,0x0
    80006584:	65078793          	addi	a5,a5,1616 # 80006bd0 <timervec>
    80006588:	30579073          	csrw	mtvec,a5
    8000658c:	300027f3          	csrr	a5,mstatus
    80006590:	0087e793          	ori	a5,a5,8
    80006594:	30079073          	csrw	mstatus,a5
    80006598:	304027f3          	csrr	a5,mie
    8000659c:	0807e793          	ori	a5,a5,128
    800065a0:	30479073          	csrw	mie,a5
    800065a4:	00813403          	ld	s0,8(sp)
    800065a8:	01010113          	addi	sp,sp,16
    800065ac:	00008067          	ret

00000000800065b0 <system_main>:
    800065b0:	fe010113          	addi	sp,sp,-32
    800065b4:	00813823          	sd	s0,16(sp)
    800065b8:	00913423          	sd	s1,8(sp)
    800065bc:	00113c23          	sd	ra,24(sp)
    800065c0:	02010413          	addi	s0,sp,32
    800065c4:	00000097          	auipc	ra,0x0
    800065c8:	0c4080e7          	jalr	196(ra) # 80006688 <cpuid>
    800065cc:	00005497          	auipc	s1,0x5
    800065d0:	14448493          	addi	s1,s1,324 # 8000b710 <started>
    800065d4:	02050263          	beqz	a0,800065f8 <system_main+0x48>
    800065d8:	0004a783          	lw	a5,0(s1)
    800065dc:	0007879b          	sext.w	a5,a5
    800065e0:	fe078ce3          	beqz	a5,800065d8 <system_main+0x28>
    800065e4:	0ff0000f          	fence
    800065e8:	00003517          	auipc	a0,0x3
    800065ec:	15850513          	addi	a0,a0,344 # 80009740 <CONSOLE_STATUS+0x730>
    800065f0:	00001097          	auipc	ra,0x1
    800065f4:	a7c080e7          	jalr	-1412(ra) # 8000706c <panic>
    800065f8:	00001097          	auipc	ra,0x1
    800065fc:	9d0080e7          	jalr	-1584(ra) # 80006fc8 <consoleinit>
    80006600:	00001097          	auipc	ra,0x1
    80006604:	15c080e7          	jalr	348(ra) # 8000775c <printfinit>
    80006608:	00003517          	auipc	a0,0x3
    8000660c:	ba050513          	addi	a0,a0,-1120 # 800091a8 <CONSOLE_STATUS+0x198>
    80006610:	00001097          	auipc	ra,0x1
    80006614:	ab8080e7          	jalr	-1352(ra) # 800070c8 <__printf>
    80006618:	00003517          	auipc	a0,0x3
    8000661c:	0f850513          	addi	a0,a0,248 # 80009710 <CONSOLE_STATUS+0x700>
    80006620:	00001097          	auipc	ra,0x1
    80006624:	aa8080e7          	jalr	-1368(ra) # 800070c8 <__printf>
    80006628:	00003517          	auipc	a0,0x3
    8000662c:	b8050513          	addi	a0,a0,-1152 # 800091a8 <CONSOLE_STATUS+0x198>
    80006630:	00001097          	auipc	ra,0x1
    80006634:	a98080e7          	jalr	-1384(ra) # 800070c8 <__printf>
    80006638:	00001097          	auipc	ra,0x1
    8000663c:	4b0080e7          	jalr	1200(ra) # 80007ae8 <kinit>
    80006640:	00000097          	auipc	ra,0x0
    80006644:	148080e7          	jalr	328(ra) # 80006788 <trapinit>
    80006648:	00000097          	auipc	ra,0x0
    8000664c:	16c080e7          	jalr	364(ra) # 800067b4 <trapinithart>
    80006650:	00000097          	auipc	ra,0x0
    80006654:	5c0080e7          	jalr	1472(ra) # 80006c10 <plicinit>
    80006658:	00000097          	auipc	ra,0x0
    8000665c:	5e0080e7          	jalr	1504(ra) # 80006c38 <plicinithart>
    80006660:	00000097          	auipc	ra,0x0
    80006664:	078080e7          	jalr	120(ra) # 800066d8 <userinit>
    80006668:	0ff0000f          	fence
    8000666c:	00100793          	li	a5,1
    80006670:	00003517          	auipc	a0,0x3
    80006674:	0b850513          	addi	a0,a0,184 # 80009728 <CONSOLE_STATUS+0x718>
    80006678:	00f4a023          	sw	a5,0(s1)
    8000667c:	00001097          	auipc	ra,0x1
    80006680:	a4c080e7          	jalr	-1460(ra) # 800070c8 <__printf>
    80006684:	0000006f          	j	80006684 <system_main+0xd4>

0000000080006688 <cpuid>:
    80006688:	ff010113          	addi	sp,sp,-16
    8000668c:	00813423          	sd	s0,8(sp)
    80006690:	01010413          	addi	s0,sp,16
    80006694:	00020513          	mv	a0,tp
    80006698:	00813403          	ld	s0,8(sp)
    8000669c:	0005051b          	sext.w	a0,a0
    800066a0:	01010113          	addi	sp,sp,16
    800066a4:	00008067          	ret

00000000800066a8 <mycpu>:
    800066a8:	ff010113          	addi	sp,sp,-16
    800066ac:	00813423          	sd	s0,8(sp)
    800066b0:	01010413          	addi	s0,sp,16
    800066b4:	00020793          	mv	a5,tp
    800066b8:	00813403          	ld	s0,8(sp)
    800066bc:	0007879b          	sext.w	a5,a5
    800066c0:	00779793          	slli	a5,a5,0x7
    800066c4:	00006517          	auipc	a0,0x6
    800066c8:	13c50513          	addi	a0,a0,316 # 8000c800 <cpus>
    800066cc:	00f50533          	add	a0,a0,a5
    800066d0:	01010113          	addi	sp,sp,16
    800066d4:	00008067          	ret

00000000800066d8 <userinit>:
    800066d8:	ff010113          	addi	sp,sp,-16
    800066dc:	00813423          	sd	s0,8(sp)
    800066e0:	01010413          	addi	s0,sp,16
    800066e4:	00813403          	ld	s0,8(sp)
    800066e8:	01010113          	addi	sp,sp,16
    800066ec:	ffffb317          	auipc	t1,0xffffb
    800066f0:	6f430067          	jr	1780(t1) # 80001de0 <main>

00000000800066f4 <either_copyout>:
    800066f4:	ff010113          	addi	sp,sp,-16
    800066f8:	00813023          	sd	s0,0(sp)
    800066fc:	00113423          	sd	ra,8(sp)
    80006700:	01010413          	addi	s0,sp,16
    80006704:	02051663          	bnez	a0,80006730 <either_copyout+0x3c>
    80006708:	00058513          	mv	a0,a1
    8000670c:	00060593          	mv	a1,a2
    80006710:	0006861b          	sext.w	a2,a3
    80006714:	00002097          	auipc	ra,0x2
    80006718:	c60080e7          	jalr	-928(ra) # 80008374 <__memmove>
    8000671c:	00813083          	ld	ra,8(sp)
    80006720:	00013403          	ld	s0,0(sp)
    80006724:	00000513          	li	a0,0
    80006728:	01010113          	addi	sp,sp,16
    8000672c:	00008067          	ret
    80006730:	00003517          	auipc	a0,0x3
    80006734:	03850513          	addi	a0,a0,56 # 80009768 <CONSOLE_STATUS+0x758>
    80006738:	00001097          	auipc	ra,0x1
    8000673c:	934080e7          	jalr	-1740(ra) # 8000706c <panic>

0000000080006740 <either_copyin>:
    80006740:	ff010113          	addi	sp,sp,-16
    80006744:	00813023          	sd	s0,0(sp)
    80006748:	00113423          	sd	ra,8(sp)
    8000674c:	01010413          	addi	s0,sp,16
    80006750:	02059463          	bnez	a1,80006778 <either_copyin+0x38>
    80006754:	00060593          	mv	a1,a2
    80006758:	0006861b          	sext.w	a2,a3
    8000675c:	00002097          	auipc	ra,0x2
    80006760:	c18080e7          	jalr	-1000(ra) # 80008374 <__memmove>
    80006764:	00813083          	ld	ra,8(sp)
    80006768:	00013403          	ld	s0,0(sp)
    8000676c:	00000513          	li	a0,0
    80006770:	01010113          	addi	sp,sp,16
    80006774:	00008067          	ret
    80006778:	00003517          	auipc	a0,0x3
    8000677c:	01850513          	addi	a0,a0,24 # 80009790 <CONSOLE_STATUS+0x780>
    80006780:	00001097          	auipc	ra,0x1
    80006784:	8ec080e7          	jalr	-1812(ra) # 8000706c <panic>

0000000080006788 <trapinit>:
    80006788:	ff010113          	addi	sp,sp,-16
    8000678c:	00813423          	sd	s0,8(sp)
    80006790:	01010413          	addi	s0,sp,16
    80006794:	00813403          	ld	s0,8(sp)
    80006798:	00003597          	auipc	a1,0x3
    8000679c:	02058593          	addi	a1,a1,32 # 800097b8 <CONSOLE_STATUS+0x7a8>
    800067a0:	00006517          	auipc	a0,0x6
    800067a4:	0e050513          	addi	a0,a0,224 # 8000c880 <tickslock>
    800067a8:	01010113          	addi	sp,sp,16
    800067ac:	00001317          	auipc	t1,0x1
    800067b0:	5cc30067          	jr	1484(t1) # 80007d78 <initlock>

00000000800067b4 <trapinithart>:
    800067b4:	ff010113          	addi	sp,sp,-16
    800067b8:	00813423          	sd	s0,8(sp)
    800067bc:	01010413          	addi	s0,sp,16
    800067c0:	00000797          	auipc	a5,0x0
    800067c4:	30078793          	addi	a5,a5,768 # 80006ac0 <kernelvec>
    800067c8:	10579073          	csrw	stvec,a5
    800067cc:	00813403          	ld	s0,8(sp)
    800067d0:	01010113          	addi	sp,sp,16
    800067d4:	00008067          	ret

00000000800067d8 <usertrap>:
    800067d8:	ff010113          	addi	sp,sp,-16
    800067dc:	00813423          	sd	s0,8(sp)
    800067e0:	01010413          	addi	s0,sp,16
    800067e4:	00813403          	ld	s0,8(sp)
    800067e8:	01010113          	addi	sp,sp,16
    800067ec:	00008067          	ret

00000000800067f0 <usertrapret>:
    800067f0:	ff010113          	addi	sp,sp,-16
    800067f4:	00813423          	sd	s0,8(sp)
    800067f8:	01010413          	addi	s0,sp,16
    800067fc:	00813403          	ld	s0,8(sp)
    80006800:	01010113          	addi	sp,sp,16
    80006804:	00008067          	ret

0000000080006808 <kerneltrap>:
    80006808:	fe010113          	addi	sp,sp,-32
    8000680c:	00813823          	sd	s0,16(sp)
    80006810:	00113c23          	sd	ra,24(sp)
    80006814:	00913423          	sd	s1,8(sp)
    80006818:	02010413          	addi	s0,sp,32
    8000681c:	142025f3          	csrr	a1,scause
    80006820:	100027f3          	csrr	a5,sstatus
    80006824:	0027f793          	andi	a5,a5,2
    80006828:	10079c63          	bnez	a5,80006940 <kerneltrap+0x138>
    8000682c:	142027f3          	csrr	a5,scause
    80006830:	0207ce63          	bltz	a5,8000686c <kerneltrap+0x64>
    80006834:	00003517          	auipc	a0,0x3
    80006838:	fcc50513          	addi	a0,a0,-52 # 80009800 <CONSOLE_STATUS+0x7f0>
    8000683c:	00001097          	auipc	ra,0x1
    80006840:	88c080e7          	jalr	-1908(ra) # 800070c8 <__printf>
    80006844:	141025f3          	csrr	a1,sepc
    80006848:	14302673          	csrr	a2,stval
    8000684c:	00003517          	auipc	a0,0x3
    80006850:	fc450513          	addi	a0,a0,-60 # 80009810 <CONSOLE_STATUS+0x800>
    80006854:	00001097          	auipc	ra,0x1
    80006858:	874080e7          	jalr	-1932(ra) # 800070c8 <__printf>
    8000685c:	00003517          	auipc	a0,0x3
    80006860:	fcc50513          	addi	a0,a0,-52 # 80009828 <CONSOLE_STATUS+0x818>
    80006864:	00001097          	auipc	ra,0x1
    80006868:	808080e7          	jalr	-2040(ra) # 8000706c <panic>
    8000686c:	0ff7f713          	andi	a4,a5,255
    80006870:	00900693          	li	a3,9
    80006874:	04d70063          	beq	a4,a3,800068b4 <kerneltrap+0xac>
    80006878:	fff00713          	li	a4,-1
    8000687c:	03f71713          	slli	a4,a4,0x3f
    80006880:	00170713          	addi	a4,a4,1
    80006884:	fae798e3          	bne	a5,a4,80006834 <kerneltrap+0x2c>
    80006888:	00000097          	auipc	ra,0x0
    8000688c:	e00080e7          	jalr	-512(ra) # 80006688 <cpuid>
    80006890:	06050663          	beqz	a0,800068fc <kerneltrap+0xf4>
    80006894:	144027f3          	csrr	a5,sip
    80006898:	ffd7f793          	andi	a5,a5,-3
    8000689c:	14479073          	csrw	sip,a5
    800068a0:	01813083          	ld	ra,24(sp)
    800068a4:	01013403          	ld	s0,16(sp)
    800068a8:	00813483          	ld	s1,8(sp)
    800068ac:	02010113          	addi	sp,sp,32
    800068b0:	00008067          	ret
    800068b4:	00000097          	auipc	ra,0x0
    800068b8:	3d0080e7          	jalr	976(ra) # 80006c84 <plic_claim>
    800068bc:	00a00793          	li	a5,10
    800068c0:	00050493          	mv	s1,a0
    800068c4:	06f50863          	beq	a0,a5,80006934 <kerneltrap+0x12c>
    800068c8:	fc050ce3          	beqz	a0,800068a0 <kerneltrap+0x98>
    800068cc:	00050593          	mv	a1,a0
    800068d0:	00003517          	auipc	a0,0x3
    800068d4:	f1050513          	addi	a0,a0,-240 # 800097e0 <CONSOLE_STATUS+0x7d0>
    800068d8:	00000097          	auipc	ra,0x0
    800068dc:	7f0080e7          	jalr	2032(ra) # 800070c8 <__printf>
    800068e0:	01013403          	ld	s0,16(sp)
    800068e4:	01813083          	ld	ra,24(sp)
    800068e8:	00048513          	mv	a0,s1
    800068ec:	00813483          	ld	s1,8(sp)
    800068f0:	02010113          	addi	sp,sp,32
    800068f4:	00000317          	auipc	t1,0x0
    800068f8:	3c830067          	jr	968(t1) # 80006cbc <plic_complete>
    800068fc:	00006517          	auipc	a0,0x6
    80006900:	f8450513          	addi	a0,a0,-124 # 8000c880 <tickslock>
    80006904:	00001097          	auipc	ra,0x1
    80006908:	498080e7          	jalr	1176(ra) # 80007d9c <acquire>
    8000690c:	00005717          	auipc	a4,0x5
    80006910:	e0870713          	addi	a4,a4,-504 # 8000b714 <ticks>
    80006914:	00072783          	lw	a5,0(a4)
    80006918:	00006517          	auipc	a0,0x6
    8000691c:	f6850513          	addi	a0,a0,-152 # 8000c880 <tickslock>
    80006920:	0017879b          	addiw	a5,a5,1
    80006924:	00f72023          	sw	a5,0(a4)
    80006928:	00001097          	auipc	ra,0x1
    8000692c:	540080e7          	jalr	1344(ra) # 80007e68 <release>
    80006930:	f65ff06f          	j	80006894 <kerneltrap+0x8c>
    80006934:	00001097          	auipc	ra,0x1
    80006938:	09c080e7          	jalr	156(ra) # 800079d0 <uartintr>
    8000693c:	fa5ff06f          	j	800068e0 <kerneltrap+0xd8>
    80006940:	00003517          	auipc	a0,0x3
    80006944:	e8050513          	addi	a0,a0,-384 # 800097c0 <CONSOLE_STATUS+0x7b0>
    80006948:	00000097          	auipc	ra,0x0
    8000694c:	724080e7          	jalr	1828(ra) # 8000706c <panic>

0000000080006950 <clockintr>:
    80006950:	fe010113          	addi	sp,sp,-32
    80006954:	00813823          	sd	s0,16(sp)
    80006958:	00913423          	sd	s1,8(sp)
    8000695c:	00113c23          	sd	ra,24(sp)
    80006960:	02010413          	addi	s0,sp,32
    80006964:	00006497          	auipc	s1,0x6
    80006968:	f1c48493          	addi	s1,s1,-228 # 8000c880 <tickslock>
    8000696c:	00048513          	mv	a0,s1
    80006970:	00001097          	auipc	ra,0x1
    80006974:	42c080e7          	jalr	1068(ra) # 80007d9c <acquire>
    80006978:	00005717          	auipc	a4,0x5
    8000697c:	d9c70713          	addi	a4,a4,-612 # 8000b714 <ticks>
    80006980:	00072783          	lw	a5,0(a4)
    80006984:	01013403          	ld	s0,16(sp)
    80006988:	01813083          	ld	ra,24(sp)
    8000698c:	00048513          	mv	a0,s1
    80006990:	0017879b          	addiw	a5,a5,1
    80006994:	00813483          	ld	s1,8(sp)
    80006998:	00f72023          	sw	a5,0(a4)
    8000699c:	02010113          	addi	sp,sp,32
    800069a0:	00001317          	auipc	t1,0x1
    800069a4:	4c830067          	jr	1224(t1) # 80007e68 <release>

00000000800069a8 <devintr>:
    800069a8:	142027f3          	csrr	a5,scause
    800069ac:	00000513          	li	a0,0
    800069b0:	0007c463          	bltz	a5,800069b8 <devintr+0x10>
    800069b4:	00008067          	ret
    800069b8:	fe010113          	addi	sp,sp,-32
    800069bc:	00813823          	sd	s0,16(sp)
    800069c0:	00113c23          	sd	ra,24(sp)
    800069c4:	00913423          	sd	s1,8(sp)
    800069c8:	02010413          	addi	s0,sp,32
    800069cc:	0ff7f713          	andi	a4,a5,255
    800069d0:	00900693          	li	a3,9
    800069d4:	04d70c63          	beq	a4,a3,80006a2c <devintr+0x84>
    800069d8:	fff00713          	li	a4,-1
    800069dc:	03f71713          	slli	a4,a4,0x3f
    800069e0:	00170713          	addi	a4,a4,1
    800069e4:	00e78c63          	beq	a5,a4,800069fc <devintr+0x54>
    800069e8:	01813083          	ld	ra,24(sp)
    800069ec:	01013403          	ld	s0,16(sp)
    800069f0:	00813483          	ld	s1,8(sp)
    800069f4:	02010113          	addi	sp,sp,32
    800069f8:	00008067          	ret
    800069fc:	00000097          	auipc	ra,0x0
    80006a00:	c8c080e7          	jalr	-884(ra) # 80006688 <cpuid>
    80006a04:	06050663          	beqz	a0,80006a70 <devintr+0xc8>
    80006a08:	144027f3          	csrr	a5,sip
    80006a0c:	ffd7f793          	andi	a5,a5,-3
    80006a10:	14479073          	csrw	sip,a5
    80006a14:	01813083          	ld	ra,24(sp)
    80006a18:	01013403          	ld	s0,16(sp)
    80006a1c:	00813483          	ld	s1,8(sp)
    80006a20:	00200513          	li	a0,2
    80006a24:	02010113          	addi	sp,sp,32
    80006a28:	00008067          	ret
    80006a2c:	00000097          	auipc	ra,0x0
    80006a30:	258080e7          	jalr	600(ra) # 80006c84 <plic_claim>
    80006a34:	00a00793          	li	a5,10
    80006a38:	00050493          	mv	s1,a0
    80006a3c:	06f50663          	beq	a0,a5,80006aa8 <devintr+0x100>
    80006a40:	00100513          	li	a0,1
    80006a44:	fa0482e3          	beqz	s1,800069e8 <devintr+0x40>
    80006a48:	00048593          	mv	a1,s1
    80006a4c:	00003517          	auipc	a0,0x3
    80006a50:	d9450513          	addi	a0,a0,-620 # 800097e0 <CONSOLE_STATUS+0x7d0>
    80006a54:	00000097          	auipc	ra,0x0
    80006a58:	674080e7          	jalr	1652(ra) # 800070c8 <__printf>
    80006a5c:	00048513          	mv	a0,s1
    80006a60:	00000097          	auipc	ra,0x0
    80006a64:	25c080e7          	jalr	604(ra) # 80006cbc <plic_complete>
    80006a68:	00100513          	li	a0,1
    80006a6c:	f7dff06f          	j	800069e8 <devintr+0x40>
    80006a70:	00006517          	auipc	a0,0x6
    80006a74:	e1050513          	addi	a0,a0,-496 # 8000c880 <tickslock>
    80006a78:	00001097          	auipc	ra,0x1
    80006a7c:	324080e7          	jalr	804(ra) # 80007d9c <acquire>
    80006a80:	00005717          	auipc	a4,0x5
    80006a84:	c9470713          	addi	a4,a4,-876 # 8000b714 <ticks>
    80006a88:	00072783          	lw	a5,0(a4)
    80006a8c:	00006517          	auipc	a0,0x6
    80006a90:	df450513          	addi	a0,a0,-524 # 8000c880 <tickslock>
    80006a94:	0017879b          	addiw	a5,a5,1
    80006a98:	00f72023          	sw	a5,0(a4)
    80006a9c:	00001097          	auipc	ra,0x1
    80006aa0:	3cc080e7          	jalr	972(ra) # 80007e68 <release>
    80006aa4:	f65ff06f          	j	80006a08 <devintr+0x60>
    80006aa8:	00001097          	auipc	ra,0x1
    80006aac:	f28080e7          	jalr	-216(ra) # 800079d0 <uartintr>
    80006ab0:	fadff06f          	j	80006a5c <devintr+0xb4>
	...

0000000080006ac0 <kernelvec>:
    80006ac0:	f0010113          	addi	sp,sp,-256
    80006ac4:	00113023          	sd	ra,0(sp)
    80006ac8:	00213423          	sd	sp,8(sp)
    80006acc:	00313823          	sd	gp,16(sp)
    80006ad0:	00413c23          	sd	tp,24(sp)
    80006ad4:	02513023          	sd	t0,32(sp)
    80006ad8:	02613423          	sd	t1,40(sp)
    80006adc:	02713823          	sd	t2,48(sp)
    80006ae0:	02813c23          	sd	s0,56(sp)
    80006ae4:	04913023          	sd	s1,64(sp)
    80006ae8:	04a13423          	sd	a0,72(sp)
    80006aec:	04b13823          	sd	a1,80(sp)
    80006af0:	04c13c23          	sd	a2,88(sp)
    80006af4:	06d13023          	sd	a3,96(sp)
    80006af8:	06e13423          	sd	a4,104(sp)
    80006afc:	06f13823          	sd	a5,112(sp)
    80006b00:	07013c23          	sd	a6,120(sp)
    80006b04:	09113023          	sd	a7,128(sp)
    80006b08:	09213423          	sd	s2,136(sp)
    80006b0c:	09313823          	sd	s3,144(sp)
    80006b10:	09413c23          	sd	s4,152(sp)
    80006b14:	0b513023          	sd	s5,160(sp)
    80006b18:	0b613423          	sd	s6,168(sp)
    80006b1c:	0b713823          	sd	s7,176(sp)
    80006b20:	0b813c23          	sd	s8,184(sp)
    80006b24:	0d913023          	sd	s9,192(sp)
    80006b28:	0da13423          	sd	s10,200(sp)
    80006b2c:	0db13823          	sd	s11,208(sp)
    80006b30:	0dc13c23          	sd	t3,216(sp)
    80006b34:	0fd13023          	sd	t4,224(sp)
    80006b38:	0fe13423          	sd	t5,232(sp)
    80006b3c:	0ff13823          	sd	t6,240(sp)
    80006b40:	cc9ff0ef          	jal	ra,80006808 <kerneltrap>
    80006b44:	00013083          	ld	ra,0(sp)
    80006b48:	00813103          	ld	sp,8(sp)
    80006b4c:	01013183          	ld	gp,16(sp)
    80006b50:	02013283          	ld	t0,32(sp)
    80006b54:	02813303          	ld	t1,40(sp)
    80006b58:	03013383          	ld	t2,48(sp)
    80006b5c:	03813403          	ld	s0,56(sp)
    80006b60:	04013483          	ld	s1,64(sp)
    80006b64:	04813503          	ld	a0,72(sp)
    80006b68:	05013583          	ld	a1,80(sp)
    80006b6c:	05813603          	ld	a2,88(sp)
    80006b70:	06013683          	ld	a3,96(sp)
    80006b74:	06813703          	ld	a4,104(sp)
    80006b78:	07013783          	ld	a5,112(sp)
    80006b7c:	07813803          	ld	a6,120(sp)
    80006b80:	08013883          	ld	a7,128(sp)
    80006b84:	08813903          	ld	s2,136(sp)
    80006b88:	09013983          	ld	s3,144(sp)
    80006b8c:	09813a03          	ld	s4,152(sp)
    80006b90:	0a013a83          	ld	s5,160(sp)
    80006b94:	0a813b03          	ld	s6,168(sp)
    80006b98:	0b013b83          	ld	s7,176(sp)
    80006b9c:	0b813c03          	ld	s8,184(sp)
    80006ba0:	0c013c83          	ld	s9,192(sp)
    80006ba4:	0c813d03          	ld	s10,200(sp)
    80006ba8:	0d013d83          	ld	s11,208(sp)
    80006bac:	0d813e03          	ld	t3,216(sp)
    80006bb0:	0e013e83          	ld	t4,224(sp)
    80006bb4:	0e813f03          	ld	t5,232(sp)
    80006bb8:	0f013f83          	ld	t6,240(sp)
    80006bbc:	10010113          	addi	sp,sp,256
    80006bc0:	10200073          	sret
    80006bc4:	00000013          	nop
    80006bc8:	00000013          	nop
    80006bcc:	00000013          	nop

0000000080006bd0 <timervec>:
    80006bd0:	34051573          	csrrw	a0,mscratch,a0
    80006bd4:	00b53023          	sd	a1,0(a0)
    80006bd8:	00c53423          	sd	a2,8(a0)
    80006bdc:	00d53823          	sd	a3,16(a0)
    80006be0:	01853583          	ld	a1,24(a0)
    80006be4:	02053603          	ld	a2,32(a0)
    80006be8:	0005b683          	ld	a3,0(a1)
    80006bec:	00c686b3          	add	a3,a3,a2
    80006bf0:	00d5b023          	sd	a3,0(a1)
    80006bf4:	00200593          	li	a1,2
    80006bf8:	14459073          	csrw	sip,a1
    80006bfc:	01053683          	ld	a3,16(a0)
    80006c00:	00853603          	ld	a2,8(a0)
    80006c04:	00053583          	ld	a1,0(a0)
    80006c08:	34051573          	csrrw	a0,mscratch,a0
    80006c0c:	30200073          	mret

0000000080006c10 <plicinit>:
    80006c10:	ff010113          	addi	sp,sp,-16
    80006c14:	00813423          	sd	s0,8(sp)
    80006c18:	01010413          	addi	s0,sp,16
    80006c1c:	00813403          	ld	s0,8(sp)
    80006c20:	0c0007b7          	lui	a5,0xc000
    80006c24:	00100713          	li	a4,1
    80006c28:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c2c:	00e7a223          	sw	a4,4(a5)
    80006c30:	01010113          	addi	sp,sp,16
    80006c34:	00008067          	ret

0000000080006c38 <plicinithart>:
    80006c38:	ff010113          	addi	sp,sp,-16
    80006c3c:	00813023          	sd	s0,0(sp)
    80006c40:	00113423          	sd	ra,8(sp)
    80006c44:	01010413          	addi	s0,sp,16
    80006c48:	00000097          	auipc	ra,0x0
    80006c4c:	a40080e7          	jalr	-1472(ra) # 80006688 <cpuid>
    80006c50:	0085171b          	slliw	a4,a0,0x8
    80006c54:	0c0027b7          	lui	a5,0xc002
    80006c58:	00e787b3          	add	a5,a5,a4
    80006c5c:	40200713          	li	a4,1026
    80006c60:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006c64:	00813083          	ld	ra,8(sp)
    80006c68:	00013403          	ld	s0,0(sp)
    80006c6c:	00d5151b          	slliw	a0,a0,0xd
    80006c70:	0c2017b7          	lui	a5,0xc201
    80006c74:	00a78533          	add	a0,a5,a0
    80006c78:	00052023          	sw	zero,0(a0)
    80006c7c:	01010113          	addi	sp,sp,16
    80006c80:	00008067          	ret

0000000080006c84 <plic_claim>:
    80006c84:	ff010113          	addi	sp,sp,-16
    80006c88:	00813023          	sd	s0,0(sp)
    80006c8c:	00113423          	sd	ra,8(sp)
    80006c90:	01010413          	addi	s0,sp,16
    80006c94:	00000097          	auipc	ra,0x0
    80006c98:	9f4080e7          	jalr	-1548(ra) # 80006688 <cpuid>
    80006c9c:	00813083          	ld	ra,8(sp)
    80006ca0:	00013403          	ld	s0,0(sp)
    80006ca4:	00d5151b          	slliw	a0,a0,0xd
    80006ca8:	0c2017b7          	lui	a5,0xc201
    80006cac:	00a78533          	add	a0,a5,a0
    80006cb0:	00452503          	lw	a0,4(a0)
    80006cb4:	01010113          	addi	sp,sp,16
    80006cb8:	00008067          	ret

0000000080006cbc <plic_complete>:
    80006cbc:	fe010113          	addi	sp,sp,-32
    80006cc0:	00813823          	sd	s0,16(sp)
    80006cc4:	00913423          	sd	s1,8(sp)
    80006cc8:	00113c23          	sd	ra,24(sp)
    80006ccc:	02010413          	addi	s0,sp,32
    80006cd0:	00050493          	mv	s1,a0
    80006cd4:	00000097          	auipc	ra,0x0
    80006cd8:	9b4080e7          	jalr	-1612(ra) # 80006688 <cpuid>
    80006cdc:	01813083          	ld	ra,24(sp)
    80006ce0:	01013403          	ld	s0,16(sp)
    80006ce4:	00d5179b          	slliw	a5,a0,0xd
    80006ce8:	0c201737          	lui	a4,0xc201
    80006cec:	00f707b3          	add	a5,a4,a5
    80006cf0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006cf4:	00813483          	ld	s1,8(sp)
    80006cf8:	02010113          	addi	sp,sp,32
    80006cfc:	00008067          	ret

0000000080006d00 <consolewrite>:
    80006d00:	fb010113          	addi	sp,sp,-80
    80006d04:	04813023          	sd	s0,64(sp)
    80006d08:	04113423          	sd	ra,72(sp)
    80006d0c:	02913c23          	sd	s1,56(sp)
    80006d10:	03213823          	sd	s2,48(sp)
    80006d14:	03313423          	sd	s3,40(sp)
    80006d18:	03413023          	sd	s4,32(sp)
    80006d1c:	01513c23          	sd	s5,24(sp)
    80006d20:	05010413          	addi	s0,sp,80
    80006d24:	06c05c63          	blez	a2,80006d9c <consolewrite+0x9c>
    80006d28:	00060993          	mv	s3,a2
    80006d2c:	00050a13          	mv	s4,a0
    80006d30:	00058493          	mv	s1,a1
    80006d34:	00000913          	li	s2,0
    80006d38:	fff00a93          	li	s5,-1
    80006d3c:	01c0006f          	j	80006d58 <consolewrite+0x58>
    80006d40:	fbf44503          	lbu	a0,-65(s0)
    80006d44:	0019091b          	addiw	s2,s2,1
    80006d48:	00148493          	addi	s1,s1,1
    80006d4c:	00001097          	auipc	ra,0x1
    80006d50:	a9c080e7          	jalr	-1380(ra) # 800077e8 <uartputc>
    80006d54:	03298063          	beq	s3,s2,80006d74 <consolewrite+0x74>
    80006d58:	00048613          	mv	a2,s1
    80006d5c:	00100693          	li	a3,1
    80006d60:	000a0593          	mv	a1,s4
    80006d64:	fbf40513          	addi	a0,s0,-65
    80006d68:	00000097          	auipc	ra,0x0
    80006d6c:	9d8080e7          	jalr	-1576(ra) # 80006740 <either_copyin>
    80006d70:	fd5518e3          	bne	a0,s5,80006d40 <consolewrite+0x40>
    80006d74:	04813083          	ld	ra,72(sp)
    80006d78:	04013403          	ld	s0,64(sp)
    80006d7c:	03813483          	ld	s1,56(sp)
    80006d80:	02813983          	ld	s3,40(sp)
    80006d84:	02013a03          	ld	s4,32(sp)
    80006d88:	01813a83          	ld	s5,24(sp)
    80006d8c:	00090513          	mv	a0,s2
    80006d90:	03013903          	ld	s2,48(sp)
    80006d94:	05010113          	addi	sp,sp,80
    80006d98:	00008067          	ret
    80006d9c:	00000913          	li	s2,0
    80006da0:	fd5ff06f          	j	80006d74 <consolewrite+0x74>

0000000080006da4 <consoleread>:
    80006da4:	f9010113          	addi	sp,sp,-112
    80006da8:	06813023          	sd	s0,96(sp)
    80006dac:	04913c23          	sd	s1,88(sp)
    80006db0:	05213823          	sd	s2,80(sp)
    80006db4:	05313423          	sd	s3,72(sp)
    80006db8:	05413023          	sd	s4,64(sp)
    80006dbc:	03513c23          	sd	s5,56(sp)
    80006dc0:	03613823          	sd	s6,48(sp)
    80006dc4:	03713423          	sd	s7,40(sp)
    80006dc8:	03813023          	sd	s8,32(sp)
    80006dcc:	06113423          	sd	ra,104(sp)
    80006dd0:	01913c23          	sd	s9,24(sp)
    80006dd4:	07010413          	addi	s0,sp,112
    80006dd8:	00060b93          	mv	s7,a2
    80006ddc:	00050913          	mv	s2,a0
    80006de0:	00058c13          	mv	s8,a1
    80006de4:	00060b1b          	sext.w	s6,a2
    80006de8:	00006497          	auipc	s1,0x6
    80006dec:	ac048493          	addi	s1,s1,-1344 # 8000c8a8 <cons>
    80006df0:	00400993          	li	s3,4
    80006df4:	fff00a13          	li	s4,-1
    80006df8:	00a00a93          	li	s5,10
    80006dfc:	05705e63          	blez	s7,80006e58 <consoleread+0xb4>
    80006e00:	09c4a703          	lw	a4,156(s1)
    80006e04:	0984a783          	lw	a5,152(s1)
    80006e08:	0007071b          	sext.w	a4,a4
    80006e0c:	08e78463          	beq	a5,a4,80006e94 <consoleread+0xf0>
    80006e10:	07f7f713          	andi	a4,a5,127
    80006e14:	00e48733          	add	a4,s1,a4
    80006e18:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e1c:	0017869b          	addiw	a3,a5,1
    80006e20:	08d4ac23          	sw	a3,152(s1)
    80006e24:	00070c9b          	sext.w	s9,a4
    80006e28:	0b370663          	beq	a4,s3,80006ed4 <consoleread+0x130>
    80006e2c:	00100693          	li	a3,1
    80006e30:	f9f40613          	addi	a2,s0,-97
    80006e34:	000c0593          	mv	a1,s8
    80006e38:	00090513          	mv	a0,s2
    80006e3c:	f8e40fa3          	sb	a4,-97(s0)
    80006e40:	00000097          	auipc	ra,0x0
    80006e44:	8b4080e7          	jalr	-1868(ra) # 800066f4 <either_copyout>
    80006e48:	01450863          	beq	a0,s4,80006e58 <consoleread+0xb4>
    80006e4c:	001c0c13          	addi	s8,s8,1
    80006e50:	fffb8b9b          	addiw	s7,s7,-1
    80006e54:	fb5c94e3          	bne	s9,s5,80006dfc <consoleread+0x58>
    80006e58:	000b851b          	sext.w	a0,s7
    80006e5c:	06813083          	ld	ra,104(sp)
    80006e60:	06013403          	ld	s0,96(sp)
    80006e64:	05813483          	ld	s1,88(sp)
    80006e68:	05013903          	ld	s2,80(sp)
    80006e6c:	04813983          	ld	s3,72(sp)
    80006e70:	04013a03          	ld	s4,64(sp)
    80006e74:	03813a83          	ld	s5,56(sp)
    80006e78:	02813b83          	ld	s7,40(sp)
    80006e7c:	02013c03          	ld	s8,32(sp)
    80006e80:	01813c83          	ld	s9,24(sp)
    80006e84:	40ab053b          	subw	a0,s6,a0
    80006e88:	03013b03          	ld	s6,48(sp)
    80006e8c:	07010113          	addi	sp,sp,112
    80006e90:	00008067          	ret
    80006e94:	00001097          	auipc	ra,0x1
    80006e98:	1d8080e7          	jalr	472(ra) # 8000806c <push_on>
    80006e9c:	0984a703          	lw	a4,152(s1)
    80006ea0:	09c4a783          	lw	a5,156(s1)
    80006ea4:	0007879b          	sext.w	a5,a5
    80006ea8:	fef70ce3          	beq	a4,a5,80006ea0 <consoleread+0xfc>
    80006eac:	00001097          	auipc	ra,0x1
    80006eb0:	234080e7          	jalr	564(ra) # 800080e0 <pop_on>
    80006eb4:	0984a783          	lw	a5,152(s1)
    80006eb8:	07f7f713          	andi	a4,a5,127
    80006ebc:	00e48733          	add	a4,s1,a4
    80006ec0:	01874703          	lbu	a4,24(a4)
    80006ec4:	0017869b          	addiw	a3,a5,1
    80006ec8:	08d4ac23          	sw	a3,152(s1)
    80006ecc:	00070c9b          	sext.w	s9,a4
    80006ed0:	f5371ee3          	bne	a4,s3,80006e2c <consoleread+0x88>
    80006ed4:	000b851b          	sext.w	a0,s7
    80006ed8:	f96bf2e3          	bgeu	s7,s6,80006e5c <consoleread+0xb8>
    80006edc:	08f4ac23          	sw	a5,152(s1)
    80006ee0:	f7dff06f          	j	80006e5c <consoleread+0xb8>

0000000080006ee4 <consputc>:
    80006ee4:	10000793          	li	a5,256
    80006ee8:	00f50663          	beq	a0,a5,80006ef4 <consputc+0x10>
    80006eec:	00001317          	auipc	t1,0x1
    80006ef0:	9f430067          	jr	-1548(t1) # 800078e0 <uartputc_sync>
    80006ef4:	ff010113          	addi	sp,sp,-16
    80006ef8:	00113423          	sd	ra,8(sp)
    80006efc:	00813023          	sd	s0,0(sp)
    80006f00:	01010413          	addi	s0,sp,16
    80006f04:	00800513          	li	a0,8
    80006f08:	00001097          	auipc	ra,0x1
    80006f0c:	9d8080e7          	jalr	-1576(ra) # 800078e0 <uartputc_sync>
    80006f10:	02000513          	li	a0,32
    80006f14:	00001097          	auipc	ra,0x1
    80006f18:	9cc080e7          	jalr	-1588(ra) # 800078e0 <uartputc_sync>
    80006f1c:	00013403          	ld	s0,0(sp)
    80006f20:	00813083          	ld	ra,8(sp)
    80006f24:	00800513          	li	a0,8
    80006f28:	01010113          	addi	sp,sp,16
    80006f2c:	00001317          	auipc	t1,0x1
    80006f30:	9b430067          	jr	-1612(t1) # 800078e0 <uartputc_sync>

0000000080006f34 <consoleintr>:
    80006f34:	fe010113          	addi	sp,sp,-32
    80006f38:	00813823          	sd	s0,16(sp)
    80006f3c:	00913423          	sd	s1,8(sp)
    80006f40:	01213023          	sd	s2,0(sp)
    80006f44:	00113c23          	sd	ra,24(sp)
    80006f48:	02010413          	addi	s0,sp,32
    80006f4c:	00006917          	auipc	s2,0x6
    80006f50:	95c90913          	addi	s2,s2,-1700 # 8000c8a8 <cons>
    80006f54:	00050493          	mv	s1,a0
    80006f58:	00090513          	mv	a0,s2
    80006f5c:	00001097          	auipc	ra,0x1
    80006f60:	e40080e7          	jalr	-448(ra) # 80007d9c <acquire>
    80006f64:	02048c63          	beqz	s1,80006f9c <consoleintr+0x68>
    80006f68:	0a092783          	lw	a5,160(s2)
    80006f6c:	09892703          	lw	a4,152(s2)
    80006f70:	07f00693          	li	a3,127
    80006f74:	40e7873b          	subw	a4,a5,a4
    80006f78:	02e6e263          	bltu	a3,a4,80006f9c <consoleintr+0x68>
    80006f7c:	00d00713          	li	a4,13
    80006f80:	04e48063          	beq	s1,a4,80006fc0 <consoleintr+0x8c>
    80006f84:	07f7f713          	andi	a4,a5,127
    80006f88:	00e90733          	add	a4,s2,a4
    80006f8c:	0017879b          	addiw	a5,a5,1
    80006f90:	0af92023          	sw	a5,160(s2)
    80006f94:	00970c23          	sb	s1,24(a4)
    80006f98:	08f92e23          	sw	a5,156(s2)
    80006f9c:	01013403          	ld	s0,16(sp)
    80006fa0:	01813083          	ld	ra,24(sp)
    80006fa4:	00813483          	ld	s1,8(sp)
    80006fa8:	00013903          	ld	s2,0(sp)
    80006fac:	00006517          	auipc	a0,0x6
    80006fb0:	8fc50513          	addi	a0,a0,-1796 # 8000c8a8 <cons>
    80006fb4:	02010113          	addi	sp,sp,32
    80006fb8:	00001317          	auipc	t1,0x1
    80006fbc:	eb030067          	jr	-336(t1) # 80007e68 <release>
    80006fc0:	00a00493          	li	s1,10
    80006fc4:	fc1ff06f          	j	80006f84 <consoleintr+0x50>

0000000080006fc8 <consoleinit>:
    80006fc8:	fe010113          	addi	sp,sp,-32
    80006fcc:	00113c23          	sd	ra,24(sp)
    80006fd0:	00813823          	sd	s0,16(sp)
    80006fd4:	00913423          	sd	s1,8(sp)
    80006fd8:	02010413          	addi	s0,sp,32
    80006fdc:	00006497          	auipc	s1,0x6
    80006fe0:	8cc48493          	addi	s1,s1,-1844 # 8000c8a8 <cons>
    80006fe4:	00048513          	mv	a0,s1
    80006fe8:	00003597          	auipc	a1,0x3
    80006fec:	85058593          	addi	a1,a1,-1968 # 80009838 <CONSOLE_STATUS+0x828>
    80006ff0:	00001097          	auipc	ra,0x1
    80006ff4:	d88080e7          	jalr	-632(ra) # 80007d78 <initlock>
    80006ff8:	00000097          	auipc	ra,0x0
    80006ffc:	7ac080e7          	jalr	1964(ra) # 800077a4 <uartinit>
    80007000:	01813083          	ld	ra,24(sp)
    80007004:	01013403          	ld	s0,16(sp)
    80007008:	00000797          	auipc	a5,0x0
    8000700c:	d9c78793          	addi	a5,a5,-612 # 80006da4 <consoleread>
    80007010:	0af4bc23          	sd	a5,184(s1)
    80007014:	00000797          	auipc	a5,0x0
    80007018:	cec78793          	addi	a5,a5,-788 # 80006d00 <consolewrite>
    8000701c:	0cf4b023          	sd	a5,192(s1)
    80007020:	00813483          	ld	s1,8(sp)
    80007024:	02010113          	addi	sp,sp,32
    80007028:	00008067          	ret

000000008000702c <console_read>:
    8000702c:	ff010113          	addi	sp,sp,-16
    80007030:	00813423          	sd	s0,8(sp)
    80007034:	01010413          	addi	s0,sp,16
    80007038:	00813403          	ld	s0,8(sp)
    8000703c:	00006317          	auipc	t1,0x6
    80007040:	92433303          	ld	t1,-1756(t1) # 8000c960 <devsw+0x10>
    80007044:	01010113          	addi	sp,sp,16
    80007048:	00030067          	jr	t1

000000008000704c <console_write>:
    8000704c:	ff010113          	addi	sp,sp,-16
    80007050:	00813423          	sd	s0,8(sp)
    80007054:	01010413          	addi	s0,sp,16
    80007058:	00813403          	ld	s0,8(sp)
    8000705c:	00006317          	auipc	t1,0x6
    80007060:	90c33303          	ld	t1,-1780(t1) # 8000c968 <devsw+0x18>
    80007064:	01010113          	addi	sp,sp,16
    80007068:	00030067          	jr	t1

000000008000706c <panic>:
    8000706c:	fe010113          	addi	sp,sp,-32
    80007070:	00113c23          	sd	ra,24(sp)
    80007074:	00813823          	sd	s0,16(sp)
    80007078:	00913423          	sd	s1,8(sp)
    8000707c:	02010413          	addi	s0,sp,32
    80007080:	00050493          	mv	s1,a0
    80007084:	00002517          	auipc	a0,0x2
    80007088:	7bc50513          	addi	a0,a0,1980 # 80009840 <CONSOLE_STATUS+0x830>
    8000708c:	00006797          	auipc	a5,0x6
    80007090:	9607ae23          	sw	zero,-1668(a5) # 8000ca08 <pr+0x18>
    80007094:	00000097          	auipc	ra,0x0
    80007098:	034080e7          	jalr	52(ra) # 800070c8 <__printf>
    8000709c:	00048513          	mv	a0,s1
    800070a0:	00000097          	auipc	ra,0x0
    800070a4:	028080e7          	jalr	40(ra) # 800070c8 <__printf>
    800070a8:	00002517          	auipc	a0,0x2
    800070ac:	10050513          	addi	a0,a0,256 # 800091a8 <CONSOLE_STATUS+0x198>
    800070b0:	00000097          	auipc	ra,0x0
    800070b4:	018080e7          	jalr	24(ra) # 800070c8 <__printf>
    800070b8:	00100793          	li	a5,1
    800070bc:	00004717          	auipc	a4,0x4
    800070c0:	64f72e23          	sw	a5,1628(a4) # 8000b718 <panicked>
    800070c4:	0000006f          	j	800070c4 <panic+0x58>

00000000800070c8 <__printf>:
    800070c8:	f3010113          	addi	sp,sp,-208
    800070cc:	08813023          	sd	s0,128(sp)
    800070d0:	07313423          	sd	s3,104(sp)
    800070d4:	09010413          	addi	s0,sp,144
    800070d8:	05813023          	sd	s8,64(sp)
    800070dc:	08113423          	sd	ra,136(sp)
    800070e0:	06913c23          	sd	s1,120(sp)
    800070e4:	07213823          	sd	s2,112(sp)
    800070e8:	07413023          	sd	s4,96(sp)
    800070ec:	05513c23          	sd	s5,88(sp)
    800070f0:	05613823          	sd	s6,80(sp)
    800070f4:	05713423          	sd	s7,72(sp)
    800070f8:	03913c23          	sd	s9,56(sp)
    800070fc:	03a13823          	sd	s10,48(sp)
    80007100:	03b13423          	sd	s11,40(sp)
    80007104:	00006317          	auipc	t1,0x6
    80007108:	8ec30313          	addi	t1,t1,-1812 # 8000c9f0 <pr>
    8000710c:	01832c03          	lw	s8,24(t1)
    80007110:	00b43423          	sd	a1,8(s0)
    80007114:	00c43823          	sd	a2,16(s0)
    80007118:	00d43c23          	sd	a3,24(s0)
    8000711c:	02e43023          	sd	a4,32(s0)
    80007120:	02f43423          	sd	a5,40(s0)
    80007124:	03043823          	sd	a6,48(s0)
    80007128:	03143c23          	sd	a7,56(s0)
    8000712c:	00050993          	mv	s3,a0
    80007130:	4a0c1663          	bnez	s8,800075dc <__printf+0x514>
    80007134:	60098c63          	beqz	s3,8000774c <__printf+0x684>
    80007138:	0009c503          	lbu	a0,0(s3)
    8000713c:	00840793          	addi	a5,s0,8
    80007140:	f6f43c23          	sd	a5,-136(s0)
    80007144:	00000493          	li	s1,0
    80007148:	22050063          	beqz	a0,80007368 <__printf+0x2a0>
    8000714c:	00002a37          	lui	s4,0x2
    80007150:	00018ab7          	lui	s5,0x18
    80007154:	000f4b37          	lui	s6,0xf4
    80007158:	00989bb7          	lui	s7,0x989
    8000715c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007160:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007164:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007168:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000716c:	00148c9b          	addiw	s9,s1,1
    80007170:	02500793          	li	a5,37
    80007174:	01998933          	add	s2,s3,s9
    80007178:	38f51263          	bne	a0,a5,800074fc <__printf+0x434>
    8000717c:	00094783          	lbu	a5,0(s2)
    80007180:	00078c9b          	sext.w	s9,a5
    80007184:	1e078263          	beqz	a5,80007368 <__printf+0x2a0>
    80007188:	0024849b          	addiw	s1,s1,2
    8000718c:	07000713          	li	a4,112
    80007190:	00998933          	add	s2,s3,s1
    80007194:	38e78a63          	beq	a5,a4,80007528 <__printf+0x460>
    80007198:	20f76863          	bltu	a4,a5,800073a8 <__printf+0x2e0>
    8000719c:	42a78863          	beq	a5,a0,800075cc <__printf+0x504>
    800071a0:	06400713          	li	a4,100
    800071a4:	40e79663          	bne	a5,a4,800075b0 <__printf+0x4e8>
    800071a8:	f7843783          	ld	a5,-136(s0)
    800071ac:	0007a603          	lw	a2,0(a5)
    800071b0:	00878793          	addi	a5,a5,8
    800071b4:	f6f43c23          	sd	a5,-136(s0)
    800071b8:	42064a63          	bltz	a2,800075ec <__printf+0x524>
    800071bc:	00a00713          	li	a4,10
    800071c0:	02e677bb          	remuw	a5,a2,a4
    800071c4:	00002d97          	auipc	s11,0x2
    800071c8:	6a4d8d93          	addi	s11,s11,1700 # 80009868 <digits>
    800071cc:	00900593          	li	a1,9
    800071d0:	0006051b          	sext.w	a0,a2
    800071d4:	00000c93          	li	s9,0
    800071d8:	02079793          	slli	a5,a5,0x20
    800071dc:	0207d793          	srli	a5,a5,0x20
    800071e0:	00fd87b3          	add	a5,s11,a5
    800071e4:	0007c783          	lbu	a5,0(a5)
    800071e8:	02e656bb          	divuw	a3,a2,a4
    800071ec:	f8f40023          	sb	a5,-128(s0)
    800071f0:	14c5d863          	bge	a1,a2,80007340 <__printf+0x278>
    800071f4:	06300593          	li	a1,99
    800071f8:	00100c93          	li	s9,1
    800071fc:	02e6f7bb          	remuw	a5,a3,a4
    80007200:	02079793          	slli	a5,a5,0x20
    80007204:	0207d793          	srli	a5,a5,0x20
    80007208:	00fd87b3          	add	a5,s11,a5
    8000720c:	0007c783          	lbu	a5,0(a5)
    80007210:	02e6d73b          	divuw	a4,a3,a4
    80007214:	f8f400a3          	sb	a5,-127(s0)
    80007218:	12a5f463          	bgeu	a1,a0,80007340 <__printf+0x278>
    8000721c:	00a00693          	li	a3,10
    80007220:	00900593          	li	a1,9
    80007224:	02d777bb          	remuw	a5,a4,a3
    80007228:	02079793          	slli	a5,a5,0x20
    8000722c:	0207d793          	srli	a5,a5,0x20
    80007230:	00fd87b3          	add	a5,s11,a5
    80007234:	0007c503          	lbu	a0,0(a5)
    80007238:	02d757bb          	divuw	a5,a4,a3
    8000723c:	f8a40123          	sb	a0,-126(s0)
    80007240:	48e5f263          	bgeu	a1,a4,800076c4 <__printf+0x5fc>
    80007244:	06300513          	li	a0,99
    80007248:	02d7f5bb          	remuw	a1,a5,a3
    8000724c:	02059593          	slli	a1,a1,0x20
    80007250:	0205d593          	srli	a1,a1,0x20
    80007254:	00bd85b3          	add	a1,s11,a1
    80007258:	0005c583          	lbu	a1,0(a1)
    8000725c:	02d7d7bb          	divuw	a5,a5,a3
    80007260:	f8b401a3          	sb	a1,-125(s0)
    80007264:	48e57263          	bgeu	a0,a4,800076e8 <__printf+0x620>
    80007268:	3e700513          	li	a0,999
    8000726c:	02d7f5bb          	remuw	a1,a5,a3
    80007270:	02059593          	slli	a1,a1,0x20
    80007274:	0205d593          	srli	a1,a1,0x20
    80007278:	00bd85b3          	add	a1,s11,a1
    8000727c:	0005c583          	lbu	a1,0(a1)
    80007280:	02d7d7bb          	divuw	a5,a5,a3
    80007284:	f8b40223          	sb	a1,-124(s0)
    80007288:	46e57663          	bgeu	a0,a4,800076f4 <__printf+0x62c>
    8000728c:	02d7f5bb          	remuw	a1,a5,a3
    80007290:	02059593          	slli	a1,a1,0x20
    80007294:	0205d593          	srli	a1,a1,0x20
    80007298:	00bd85b3          	add	a1,s11,a1
    8000729c:	0005c583          	lbu	a1,0(a1)
    800072a0:	02d7d7bb          	divuw	a5,a5,a3
    800072a4:	f8b402a3          	sb	a1,-123(s0)
    800072a8:	46ea7863          	bgeu	s4,a4,80007718 <__printf+0x650>
    800072ac:	02d7f5bb          	remuw	a1,a5,a3
    800072b0:	02059593          	slli	a1,a1,0x20
    800072b4:	0205d593          	srli	a1,a1,0x20
    800072b8:	00bd85b3          	add	a1,s11,a1
    800072bc:	0005c583          	lbu	a1,0(a1)
    800072c0:	02d7d7bb          	divuw	a5,a5,a3
    800072c4:	f8b40323          	sb	a1,-122(s0)
    800072c8:	3eeaf863          	bgeu	s5,a4,800076b8 <__printf+0x5f0>
    800072cc:	02d7f5bb          	remuw	a1,a5,a3
    800072d0:	02059593          	slli	a1,a1,0x20
    800072d4:	0205d593          	srli	a1,a1,0x20
    800072d8:	00bd85b3          	add	a1,s11,a1
    800072dc:	0005c583          	lbu	a1,0(a1)
    800072e0:	02d7d7bb          	divuw	a5,a5,a3
    800072e4:	f8b403a3          	sb	a1,-121(s0)
    800072e8:	42eb7e63          	bgeu	s6,a4,80007724 <__printf+0x65c>
    800072ec:	02d7f5bb          	remuw	a1,a5,a3
    800072f0:	02059593          	slli	a1,a1,0x20
    800072f4:	0205d593          	srli	a1,a1,0x20
    800072f8:	00bd85b3          	add	a1,s11,a1
    800072fc:	0005c583          	lbu	a1,0(a1)
    80007300:	02d7d7bb          	divuw	a5,a5,a3
    80007304:	f8b40423          	sb	a1,-120(s0)
    80007308:	42ebfc63          	bgeu	s7,a4,80007740 <__printf+0x678>
    8000730c:	02079793          	slli	a5,a5,0x20
    80007310:	0207d793          	srli	a5,a5,0x20
    80007314:	00fd8db3          	add	s11,s11,a5
    80007318:	000dc703          	lbu	a4,0(s11)
    8000731c:	00a00793          	li	a5,10
    80007320:	00900c93          	li	s9,9
    80007324:	f8e404a3          	sb	a4,-119(s0)
    80007328:	00065c63          	bgez	a2,80007340 <__printf+0x278>
    8000732c:	f9040713          	addi	a4,s0,-112
    80007330:	00f70733          	add	a4,a4,a5
    80007334:	02d00693          	li	a3,45
    80007338:	fed70823          	sb	a3,-16(a4)
    8000733c:	00078c93          	mv	s9,a5
    80007340:	f8040793          	addi	a5,s0,-128
    80007344:	01978cb3          	add	s9,a5,s9
    80007348:	f7f40d13          	addi	s10,s0,-129
    8000734c:	000cc503          	lbu	a0,0(s9)
    80007350:	fffc8c93          	addi	s9,s9,-1
    80007354:	00000097          	auipc	ra,0x0
    80007358:	b90080e7          	jalr	-1136(ra) # 80006ee4 <consputc>
    8000735c:	ffac98e3          	bne	s9,s10,8000734c <__printf+0x284>
    80007360:	00094503          	lbu	a0,0(s2)
    80007364:	e00514e3          	bnez	a0,8000716c <__printf+0xa4>
    80007368:	1a0c1663          	bnez	s8,80007514 <__printf+0x44c>
    8000736c:	08813083          	ld	ra,136(sp)
    80007370:	08013403          	ld	s0,128(sp)
    80007374:	07813483          	ld	s1,120(sp)
    80007378:	07013903          	ld	s2,112(sp)
    8000737c:	06813983          	ld	s3,104(sp)
    80007380:	06013a03          	ld	s4,96(sp)
    80007384:	05813a83          	ld	s5,88(sp)
    80007388:	05013b03          	ld	s6,80(sp)
    8000738c:	04813b83          	ld	s7,72(sp)
    80007390:	04013c03          	ld	s8,64(sp)
    80007394:	03813c83          	ld	s9,56(sp)
    80007398:	03013d03          	ld	s10,48(sp)
    8000739c:	02813d83          	ld	s11,40(sp)
    800073a0:	0d010113          	addi	sp,sp,208
    800073a4:	00008067          	ret
    800073a8:	07300713          	li	a4,115
    800073ac:	1ce78a63          	beq	a5,a4,80007580 <__printf+0x4b8>
    800073b0:	07800713          	li	a4,120
    800073b4:	1ee79e63          	bne	a5,a4,800075b0 <__printf+0x4e8>
    800073b8:	f7843783          	ld	a5,-136(s0)
    800073bc:	0007a703          	lw	a4,0(a5)
    800073c0:	00878793          	addi	a5,a5,8
    800073c4:	f6f43c23          	sd	a5,-136(s0)
    800073c8:	28074263          	bltz	a4,8000764c <__printf+0x584>
    800073cc:	00002d97          	auipc	s11,0x2
    800073d0:	49cd8d93          	addi	s11,s11,1180 # 80009868 <digits>
    800073d4:	00f77793          	andi	a5,a4,15
    800073d8:	00fd87b3          	add	a5,s11,a5
    800073dc:	0007c683          	lbu	a3,0(a5)
    800073e0:	00f00613          	li	a2,15
    800073e4:	0007079b          	sext.w	a5,a4
    800073e8:	f8d40023          	sb	a3,-128(s0)
    800073ec:	0047559b          	srliw	a1,a4,0x4
    800073f0:	0047569b          	srliw	a3,a4,0x4
    800073f4:	00000c93          	li	s9,0
    800073f8:	0ee65063          	bge	a2,a4,800074d8 <__printf+0x410>
    800073fc:	00f6f693          	andi	a3,a3,15
    80007400:	00dd86b3          	add	a3,s11,a3
    80007404:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007408:	0087d79b          	srliw	a5,a5,0x8
    8000740c:	00100c93          	li	s9,1
    80007410:	f8d400a3          	sb	a3,-127(s0)
    80007414:	0cb67263          	bgeu	a2,a1,800074d8 <__printf+0x410>
    80007418:	00f7f693          	andi	a3,a5,15
    8000741c:	00dd86b3          	add	a3,s11,a3
    80007420:	0006c583          	lbu	a1,0(a3)
    80007424:	00f00613          	li	a2,15
    80007428:	0047d69b          	srliw	a3,a5,0x4
    8000742c:	f8b40123          	sb	a1,-126(s0)
    80007430:	0047d593          	srli	a1,a5,0x4
    80007434:	28f67e63          	bgeu	a2,a5,800076d0 <__printf+0x608>
    80007438:	00f6f693          	andi	a3,a3,15
    8000743c:	00dd86b3          	add	a3,s11,a3
    80007440:	0006c503          	lbu	a0,0(a3)
    80007444:	0087d813          	srli	a6,a5,0x8
    80007448:	0087d69b          	srliw	a3,a5,0x8
    8000744c:	f8a401a3          	sb	a0,-125(s0)
    80007450:	28b67663          	bgeu	a2,a1,800076dc <__printf+0x614>
    80007454:	00f6f693          	andi	a3,a3,15
    80007458:	00dd86b3          	add	a3,s11,a3
    8000745c:	0006c583          	lbu	a1,0(a3)
    80007460:	00c7d513          	srli	a0,a5,0xc
    80007464:	00c7d69b          	srliw	a3,a5,0xc
    80007468:	f8b40223          	sb	a1,-124(s0)
    8000746c:	29067a63          	bgeu	a2,a6,80007700 <__printf+0x638>
    80007470:	00f6f693          	andi	a3,a3,15
    80007474:	00dd86b3          	add	a3,s11,a3
    80007478:	0006c583          	lbu	a1,0(a3)
    8000747c:	0107d813          	srli	a6,a5,0x10
    80007480:	0107d69b          	srliw	a3,a5,0x10
    80007484:	f8b402a3          	sb	a1,-123(s0)
    80007488:	28a67263          	bgeu	a2,a0,8000770c <__printf+0x644>
    8000748c:	00f6f693          	andi	a3,a3,15
    80007490:	00dd86b3          	add	a3,s11,a3
    80007494:	0006c683          	lbu	a3,0(a3)
    80007498:	0147d79b          	srliw	a5,a5,0x14
    8000749c:	f8d40323          	sb	a3,-122(s0)
    800074a0:	21067663          	bgeu	a2,a6,800076ac <__printf+0x5e4>
    800074a4:	02079793          	slli	a5,a5,0x20
    800074a8:	0207d793          	srli	a5,a5,0x20
    800074ac:	00fd8db3          	add	s11,s11,a5
    800074b0:	000dc683          	lbu	a3,0(s11)
    800074b4:	00800793          	li	a5,8
    800074b8:	00700c93          	li	s9,7
    800074bc:	f8d403a3          	sb	a3,-121(s0)
    800074c0:	00075c63          	bgez	a4,800074d8 <__printf+0x410>
    800074c4:	f9040713          	addi	a4,s0,-112
    800074c8:	00f70733          	add	a4,a4,a5
    800074cc:	02d00693          	li	a3,45
    800074d0:	fed70823          	sb	a3,-16(a4)
    800074d4:	00078c93          	mv	s9,a5
    800074d8:	f8040793          	addi	a5,s0,-128
    800074dc:	01978cb3          	add	s9,a5,s9
    800074e0:	f7f40d13          	addi	s10,s0,-129
    800074e4:	000cc503          	lbu	a0,0(s9)
    800074e8:	fffc8c93          	addi	s9,s9,-1
    800074ec:	00000097          	auipc	ra,0x0
    800074f0:	9f8080e7          	jalr	-1544(ra) # 80006ee4 <consputc>
    800074f4:	ff9d18e3          	bne	s10,s9,800074e4 <__printf+0x41c>
    800074f8:	0100006f          	j	80007508 <__printf+0x440>
    800074fc:	00000097          	auipc	ra,0x0
    80007500:	9e8080e7          	jalr	-1560(ra) # 80006ee4 <consputc>
    80007504:	000c8493          	mv	s1,s9
    80007508:	00094503          	lbu	a0,0(s2)
    8000750c:	c60510e3          	bnez	a0,8000716c <__printf+0xa4>
    80007510:	e40c0ee3          	beqz	s8,8000736c <__printf+0x2a4>
    80007514:	00005517          	auipc	a0,0x5
    80007518:	4dc50513          	addi	a0,a0,1244 # 8000c9f0 <pr>
    8000751c:	00001097          	auipc	ra,0x1
    80007520:	94c080e7          	jalr	-1716(ra) # 80007e68 <release>
    80007524:	e49ff06f          	j	8000736c <__printf+0x2a4>
    80007528:	f7843783          	ld	a5,-136(s0)
    8000752c:	03000513          	li	a0,48
    80007530:	01000d13          	li	s10,16
    80007534:	00878713          	addi	a4,a5,8
    80007538:	0007bc83          	ld	s9,0(a5)
    8000753c:	f6e43c23          	sd	a4,-136(s0)
    80007540:	00000097          	auipc	ra,0x0
    80007544:	9a4080e7          	jalr	-1628(ra) # 80006ee4 <consputc>
    80007548:	07800513          	li	a0,120
    8000754c:	00000097          	auipc	ra,0x0
    80007550:	998080e7          	jalr	-1640(ra) # 80006ee4 <consputc>
    80007554:	00002d97          	auipc	s11,0x2
    80007558:	314d8d93          	addi	s11,s11,788 # 80009868 <digits>
    8000755c:	03ccd793          	srli	a5,s9,0x3c
    80007560:	00fd87b3          	add	a5,s11,a5
    80007564:	0007c503          	lbu	a0,0(a5)
    80007568:	fffd0d1b          	addiw	s10,s10,-1
    8000756c:	004c9c93          	slli	s9,s9,0x4
    80007570:	00000097          	auipc	ra,0x0
    80007574:	974080e7          	jalr	-1676(ra) # 80006ee4 <consputc>
    80007578:	fe0d12e3          	bnez	s10,8000755c <__printf+0x494>
    8000757c:	f8dff06f          	j	80007508 <__printf+0x440>
    80007580:	f7843783          	ld	a5,-136(s0)
    80007584:	0007bc83          	ld	s9,0(a5)
    80007588:	00878793          	addi	a5,a5,8
    8000758c:	f6f43c23          	sd	a5,-136(s0)
    80007590:	000c9a63          	bnez	s9,800075a4 <__printf+0x4dc>
    80007594:	1080006f          	j	8000769c <__printf+0x5d4>
    80007598:	001c8c93          	addi	s9,s9,1
    8000759c:	00000097          	auipc	ra,0x0
    800075a0:	948080e7          	jalr	-1720(ra) # 80006ee4 <consputc>
    800075a4:	000cc503          	lbu	a0,0(s9)
    800075a8:	fe0518e3          	bnez	a0,80007598 <__printf+0x4d0>
    800075ac:	f5dff06f          	j	80007508 <__printf+0x440>
    800075b0:	02500513          	li	a0,37
    800075b4:	00000097          	auipc	ra,0x0
    800075b8:	930080e7          	jalr	-1744(ra) # 80006ee4 <consputc>
    800075bc:	000c8513          	mv	a0,s9
    800075c0:	00000097          	auipc	ra,0x0
    800075c4:	924080e7          	jalr	-1756(ra) # 80006ee4 <consputc>
    800075c8:	f41ff06f          	j	80007508 <__printf+0x440>
    800075cc:	02500513          	li	a0,37
    800075d0:	00000097          	auipc	ra,0x0
    800075d4:	914080e7          	jalr	-1772(ra) # 80006ee4 <consputc>
    800075d8:	f31ff06f          	j	80007508 <__printf+0x440>
    800075dc:	00030513          	mv	a0,t1
    800075e0:	00000097          	auipc	ra,0x0
    800075e4:	7bc080e7          	jalr	1980(ra) # 80007d9c <acquire>
    800075e8:	b4dff06f          	j	80007134 <__printf+0x6c>
    800075ec:	40c0053b          	negw	a0,a2
    800075f0:	00a00713          	li	a4,10
    800075f4:	02e576bb          	remuw	a3,a0,a4
    800075f8:	00002d97          	auipc	s11,0x2
    800075fc:	270d8d93          	addi	s11,s11,624 # 80009868 <digits>
    80007600:	ff700593          	li	a1,-9
    80007604:	02069693          	slli	a3,a3,0x20
    80007608:	0206d693          	srli	a3,a3,0x20
    8000760c:	00dd86b3          	add	a3,s11,a3
    80007610:	0006c683          	lbu	a3,0(a3)
    80007614:	02e557bb          	divuw	a5,a0,a4
    80007618:	f8d40023          	sb	a3,-128(s0)
    8000761c:	10b65e63          	bge	a2,a1,80007738 <__printf+0x670>
    80007620:	06300593          	li	a1,99
    80007624:	02e7f6bb          	remuw	a3,a5,a4
    80007628:	02069693          	slli	a3,a3,0x20
    8000762c:	0206d693          	srli	a3,a3,0x20
    80007630:	00dd86b3          	add	a3,s11,a3
    80007634:	0006c683          	lbu	a3,0(a3)
    80007638:	02e7d73b          	divuw	a4,a5,a4
    8000763c:	00200793          	li	a5,2
    80007640:	f8d400a3          	sb	a3,-127(s0)
    80007644:	bca5ece3          	bltu	a1,a0,8000721c <__printf+0x154>
    80007648:	ce5ff06f          	j	8000732c <__printf+0x264>
    8000764c:	40e007bb          	negw	a5,a4
    80007650:	00002d97          	auipc	s11,0x2
    80007654:	218d8d93          	addi	s11,s11,536 # 80009868 <digits>
    80007658:	00f7f693          	andi	a3,a5,15
    8000765c:	00dd86b3          	add	a3,s11,a3
    80007660:	0006c583          	lbu	a1,0(a3)
    80007664:	ff100613          	li	a2,-15
    80007668:	0047d69b          	srliw	a3,a5,0x4
    8000766c:	f8b40023          	sb	a1,-128(s0)
    80007670:	0047d59b          	srliw	a1,a5,0x4
    80007674:	0ac75e63          	bge	a4,a2,80007730 <__printf+0x668>
    80007678:	00f6f693          	andi	a3,a3,15
    8000767c:	00dd86b3          	add	a3,s11,a3
    80007680:	0006c603          	lbu	a2,0(a3)
    80007684:	00f00693          	li	a3,15
    80007688:	0087d79b          	srliw	a5,a5,0x8
    8000768c:	f8c400a3          	sb	a2,-127(s0)
    80007690:	d8b6e4e3          	bltu	a3,a1,80007418 <__printf+0x350>
    80007694:	00200793          	li	a5,2
    80007698:	e2dff06f          	j	800074c4 <__printf+0x3fc>
    8000769c:	00002c97          	auipc	s9,0x2
    800076a0:	1acc8c93          	addi	s9,s9,428 # 80009848 <CONSOLE_STATUS+0x838>
    800076a4:	02800513          	li	a0,40
    800076a8:	ef1ff06f          	j	80007598 <__printf+0x4d0>
    800076ac:	00700793          	li	a5,7
    800076b0:	00600c93          	li	s9,6
    800076b4:	e0dff06f          	j	800074c0 <__printf+0x3f8>
    800076b8:	00700793          	li	a5,7
    800076bc:	00600c93          	li	s9,6
    800076c0:	c69ff06f          	j	80007328 <__printf+0x260>
    800076c4:	00300793          	li	a5,3
    800076c8:	00200c93          	li	s9,2
    800076cc:	c5dff06f          	j	80007328 <__printf+0x260>
    800076d0:	00300793          	li	a5,3
    800076d4:	00200c93          	li	s9,2
    800076d8:	de9ff06f          	j	800074c0 <__printf+0x3f8>
    800076dc:	00400793          	li	a5,4
    800076e0:	00300c93          	li	s9,3
    800076e4:	dddff06f          	j	800074c0 <__printf+0x3f8>
    800076e8:	00400793          	li	a5,4
    800076ec:	00300c93          	li	s9,3
    800076f0:	c39ff06f          	j	80007328 <__printf+0x260>
    800076f4:	00500793          	li	a5,5
    800076f8:	00400c93          	li	s9,4
    800076fc:	c2dff06f          	j	80007328 <__printf+0x260>
    80007700:	00500793          	li	a5,5
    80007704:	00400c93          	li	s9,4
    80007708:	db9ff06f          	j	800074c0 <__printf+0x3f8>
    8000770c:	00600793          	li	a5,6
    80007710:	00500c93          	li	s9,5
    80007714:	dadff06f          	j	800074c0 <__printf+0x3f8>
    80007718:	00600793          	li	a5,6
    8000771c:	00500c93          	li	s9,5
    80007720:	c09ff06f          	j	80007328 <__printf+0x260>
    80007724:	00800793          	li	a5,8
    80007728:	00700c93          	li	s9,7
    8000772c:	bfdff06f          	j	80007328 <__printf+0x260>
    80007730:	00100793          	li	a5,1
    80007734:	d91ff06f          	j	800074c4 <__printf+0x3fc>
    80007738:	00100793          	li	a5,1
    8000773c:	bf1ff06f          	j	8000732c <__printf+0x264>
    80007740:	00900793          	li	a5,9
    80007744:	00800c93          	li	s9,8
    80007748:	be1ff06f          	j	80007328 <__printf+0x260>
    8000774c:	00002517          	auipc	a0,0x2
    80007750:	10450513          	addi	a0,a0,260 # 80009850 <CONSOLE_STATUS+0x840>
    80007754:	00000097          	auipc	ra,0x0
    80007758:	918080e7          	jalr	-1768(ra) # 8000706c <panic>

000000008000775c <printfinit>:
    8000775c:	fe010113          	addi	sp,sp,-32
    80007760:	00813823          	sd	s0,16(sp)
    80007764:	00913423          	sd	s1,8(sp)
    80007768:	00113c23          	sd	ra,24(sp)
    8000776c:	02010413          	addi	s0,sp,32
    80007770:	00005497          	auipc	s1,0x5
    80007774:	28048493          	addi	s1,s1,640 # 8000c9f0 <pr>
    80007778:	00048513          	mv	a0,s1
    8000777c:	00002597          	auipc	a1,0x2
    80007780:	0e458593          	addi	a1,a1,228 # 80009860 <CONSOLE_STATUS+0x850>
    80007784:	00000097          	auipc	ra,0x0
    80007788:	5f4080e7          	jalr	1524(ra) # 80007d78 <initlock>
    8000778c:	01813083          	ld	ra,24(sp)
    80007790:	01013403          	ld	s0,16(sp)
    80007794:	0004ac23          	sw	zero,24(s1)
    80007798:	00813483          	ld	s1,8(sp)
    8000779c:	02010113          	addi	sp,sp,32
    800077a0:	00008067          	ret

00000000800077a4 <uartinit>:
    800077a4:	ff010113          	addi	sp,sp,-16
    800077a8:	00813423          	sd	s0,8(sp)
    800077ac:	01010413          	addi	s0,sp,16
    800077b0:	100007b7          	lui	a5,0x10000
    800077b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800077b8:	f8000713          	li	a4,-128
    800077bc:	00e781a3          	sb	a4,3(a5)
    800077c0:	00300713          	li	a4,3
    800077c4:	00e78023          	sb	a4,0(a5)
    800077c8:	000780a3          	sb	zero,1(a5)
    800077cc:	00e781a3          	sb	a4,3(a5)
    800077d0:	00700693          	li	a3,7
    800077d4:	00d78123          	sb	a3,2(a5)
    800077d8:	00e780a3          	sb	a4,1(a5)
    800077dc:	00813403          	ld	s0,8(sp)
    800077e0:	01010113          	addi	sp,sp,16
    800077e4:	00008067          	ret

00000000800077e8 <uartputc>:
    800077e8:	00004797          	auipc	a5,0x4
    800077ec:	f307a783          	lw	a5,-208(a5) # 8000b718 <panicked>
    800077f0:	00078463          	beqz	a5,800077f8 <uartputc+0x10>
    800077f4:	0000006f          	j	800077f4 <uartputc+0xc>
    800077f8:	fd010113          	addi	sp,sp,-48
    800077fc:	02813023          	sd	s0,32(sp)
    80007800:	00913c23          	sd	s1,24(sp)
    80007804:	01213823          	sd	s2,16(sp)
    80007808:	01313423          	sd	s3,8(sp)
    8000780c:	02113423          	sd	ra,40(sp)
    80007810:	03010413          	addi	s0,sp,48
    80007814:	00004917          	auipc	s2,0x4
    80007818:	f0c90913          	addi	s2,s2,-244 # 8000b720 <uart_tx_r>
    8000781c:	00093783          	ld	a5,0(s2)
    80007820:	00004497          	auipc	s1,0x4
    80007824:	f0848493          	addi	s1,s1,-248 # 8000b728 <uart_tx_w>
    80007828:	0004b703          	ld	a4,0(s1)
    8000782c:	02078693          	addi	a3,a5,32
    80007830:	00050993          	mv	s3,a0
    80007834:	02e69c63          	bne	a3,a4,8000786c <uartputc+0x84>
    80007838:	00001097          	auipc	ra,0x1
    8000783c:	834080e7          	jalr	-1996(ra) # 8000806c <push_on>
    80007840:	00093783          	ld	a5,0(s2)
    80007844:	0004b703          	ld	a4,0(s1)
    80007848:	02078793          	addi	a5,a5,32
    8000784c:	00e79463          	bne	a5,a4,80007854 <uartputc+0x6c>
    80007850:	0000006f          	j	80007850 <uartputc+0x68>
    80007854:	00001097          	auipc	ra,0x1
    80007858:	88c080e7          	jalr	-1908(ra) # 800080e0 <pop_on>
    8000785c:	00093783          	ld	a5,0(s2)
    80007860:	0004b703          	ld	a4,0(s1)
    80007864:	02078693          	addi	a3,a5,32
    80007868:	fce688e3          	beq	a3,a4,80007838 <uartputc+0x50>
    8000786c:	01f77693          	andi	a3,a4,31
    80007870:	00005597          	auipc	a1,0x5
    80007874:	1a058593          	addi	a1,a1,416 # 8000ca10 <uart_tx_buf>
    80007878:	00d586b3          	add	a3,a1,a3
    8000787c:	00170713          	addi	a4,a4,1
    80007880:	01368023          	sb	s3,0(a3)
    80007884:	00e4b023          	sd	a4,0(s1)
    80007888:	10000637          	lui	a2,0x10000
    8000788c:	02f71063          	bne	a4,a5,800078ac <uartputc+0xc4>
    80007890:	0340006f          	j	800078c4 <uartputc+0xdc>
    80007894:	00074703          	lbu	a4,0(a4)
    80007898:	00f93023          	sd	a5,0(s2)
    8000789c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800078a0:	00093783          	ld	a5,0(s2)
    800078a4:	0004b703          	ld	a4,0(s1)
    800078a8:	00f70e63          	beq	a4,a5,800078c4 <uartputc+0xdc>
    800078ac:	00564683          	lbu	a3,5(a2)
    800078b0:	01f7f713          	andi	a4,a5,31
    800078b4:	00e58733          	add	a4,a1,a4
    800078b8:	0206f693          	andi	a3,a3,32
    800078bc:	00178793          	addi	a5,a5,1
    800078c0:	fc069ae3          	bnez	a3,80007894 <uartputc+0xac>
    800078c4:	02813083          	ld	ra,40(sp)
    800078c8:	02013403          	ld	s0,32(sp)
    800078cc:	01813483          	ld	s1,24(sp)
    800078d0:	01013903          	ld	s2,16(sp)
    800078d4:	00813983          	ld	s3,8(sp)
    800078d8:	03010113          	addi	sp,sp,48
    800078dc:	00008067          	ret

00000000800078e0 <uartputc_sync>:
    800078e0:	ff010113          	addi	sp,sp,-16
    800078e4:	00813423          	sd	s0,8(sp)
    800078e8:	01010413          	addi	s0,sp,16
    800078ec:	00004717          	auipc	a4,0x4
    800078f0:	e2c72703          	lw	a4,-468(a4) # 8000b718 <panicked>
    800078f4:	02071663          	bnez	a4,80007920 <uartputc_sync+0x40>
    800078f8:	00050793          	mv	a5,a0
    800078fc:	100006b7          	lui	a3,0x10000
    80007900:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007904:	02077713          	andi	a4,a4,32
    80007908:	fe070ce3          	beqz	a4,80007900 <uartputc_sync+0x20>
    8000790c:	0ff7f793          	andi	a5,a5,255
    80007910:	00f68023          	sb	a5,0(a3)
    80007914:	00813403          	ld	s0,8(sp)
    80007918:	01010113          	addi	sp,sp,16
    8000791c:	00008067          	ret
    80007920:	0000006f          	j	80007920 <uartputc_sync+0x40>

0000000080007924 <uartstart>:
    80007924:	ff010113          	addi	sp,sp,-16
    80007928:	00813423          	sd	s0,8(sp)
    8000792c:	01010413          	addi	s0,sp,16
    80007930:	00004617          	auipc	a2,0x4
    80007934:	df060613          	addi	a2,a2,-528 # 8000b720 <uart_tx_r>
    80007938:	00004517          	auipc	a0,0x4
    8000793c:	df050513          	addi	a0,a0,-528 # 8000b728 <uart_tx_w>
    80007940:	00063783          	ld	a5,0(a2)
    80007944:	00053703          	ld	a4,0(a0)
    80007948:	04f70263          	beq	a4,a5,8000798c <uartstart+0x68>
    8000794c:	100005b7          	lui	a1,0x10000
    80007950:	00005817          	auipc	a6,0x5
    80007954:	0c080813          	addi	a6,a6,192 # 8000ca10 <uart_tx_buf>
    80007958:	01c0006f          	j	80007974 <uartstart+0x50>
    8000795c:	0006c703          	lbu	a4,0(a3)
    80007960:	00f63023          	sd	a5,0(a2)
    80007964:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007968:	00063783          	ld	a5,0(a2)
    8000796c:	00053703          	ld	a4,0(a0)
    80007970:	00f70e63          	beq	a4,a5,8000798c <uartstart+0x68>
    80007974:	01f7f713          	andi	a4,a5,31
    80007978:	00e806b3          	add	a3,a6,a4
    8000797c:	0055c703          	lbu	a4,5(a1)
    80007980:	00178793          	addi	a5,a5,1
    80007984:	02077713          	andi	a4,a4,32
    80007988:	fc071ae3          	bnez	a4,8000795c <uartstart+0x38>
    8000798c:	00813403          	ld	s0,8(sp)
    80007990:	01010113          	addi	sp,sp,16
    80007994:	00008067          	ret

0000000080007998 <uartgetc>:
    80007998:	ff010113          	addi	sp,sp,-16
    8000799c:	00813423          	sd	s0,8(sp)
    800079a0:	01010413          	addi	s0,sp,16
    800079a4:	10000737          	lui	a4,0x10000
    800079a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800079ac:	0017f793          	andi	a5,a5,1
    800079b0:	00078c63          	beqz	a5,800079c8 <uartgetc+0x30>
    800079b4:	00074503          	lbu	a0,0(a4)
    800079b8:	0ff57513          	andi	a0,a0,255
    800079bc:	00813403          	ld	s0,8(sp)
    800079c0:	01010113          	addi	sp,sp,16
    800079c4:	00008067          	ret
    800079c8:	fff00513          	li	a0,-1
    800079cc:	ff1ff06f          	j	800079bc <uartgetc+0x24>

00000000800079d0 <uartintr>:
    800079d0:	100007b7          	lui	a5,0x10000
    800079d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800079d8:	0017f793          	andi	a5,a5,1
    800079dc:	0a078463          	beqz	a5,80007a84 <uartintr+0xb4>
    800079e0:	fe010113          	addi	sp,sp,-32
    800079e4:	00813823          	sd	s0,16(sp)
    800079e8:	00913423          	sd	s1,8(sp)
    800079ec:	00113c23          	sd	ra,24(sp)
    800079f0:	02010413          	addi	s0,sp,32
    800079f4:	100004b7          	lui	s1,0x10000
    800079f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800079fc:	0ff57513          	andi	a0,a0,255
    80007a00:	fffff097          	auipc	ra,0xfffff
    80007a04:	534080e7          	jalr	1332(ra) # 80006f34 <consoleintr>
    80007a08:	0054c783          	lbu	a5,5(s1)
    80007a0c:	0017f793          	andi	a5,a5,1
    80007a10:	fe0794e3          	bnez	a5,800079f8 <uartintr+0x28>
    80007a14:	00004617          	auipc	a2,0x4
    80007a18:	d0c60613          	addi	a2,a2,-756 # 8000b720 <uart_tx_r>
    80007a1c:	00004517          	auipc	a0,0x4
    80007a20:	d0c50513          	addi	a0,a0,-756 # 8000b728 <uart_tx_w>
    80007a24:	00063783          	ld	a5,0(a2)
    80007a28:	00053703          	ld	a4,0(a0)
    80007a2c:	04f70263          	beq	a4,a5,80007a70 <uartintr+0xa0>
    80007a30:	100005b7          	lui	a1,0x10000
    80007a34:	00005817          	auipc	a6,0x5
    80007a38:	fdc80813          	addi	a6,a6,-36 # 8000ca10 <uart_tx_buf>
    80007a3c:	01c0006f          	j	80007a58 <uartintr+0x88>
    80007a40:	0006c703          	lbu	a4,0(a3)
    80007a44:	00f63023          	sd	a5,0(a2)
    80007a48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a4c:	00063783          	ld	a5,0(a2)
    80007a50:	00053703          	ld	a4,0(a0)
    80007a54:	00f70e63          	beq	a4,a5,80007a70 <uartintr+0xa0>
    80007a58:	01f7f713          	andi	a4,a5,31
    80007a5c:	00e806b3          	add	a3,a6,a4
    80007a60:	0055c703          	lbu	a4,5(a1)
    80007a64:	00178793          	addi	a5,a5,1
    80007a68:	02077713          	andi	a4,a4,32
    80007a6c:	fc071ae3          	bnez	a4,80007a40 <uartintr+0x70>
    80007a70:	01813083          	ld	ra,24(sp)
    80007a74:	01013403          	ld	s0,16(sp)
    80007a78:	00813483          	ld	s1,8(sp)
    80007a7c:	02010113          	addi	sp,sp,32
    80007a80:	00008067          	ret
    80007a84:	00004617          	auipc	a2,0x4
    80007a88:	c9c60613          	addi	a2,a2,-868 # 8000b720 <uart_tx_r>
    80007a8c:	00004517          	auipc	a0,0x4
    80007a90:	c9c50513          	addi	a0,a0,-868 # 8000b728 <uart_tx_w>
    80007a94:	00063783          	ld	a5,0(a2)
    80007a98:	00053703          	ld	a4,0(a0)
    80007a9c:	04f70263          	beq	a4,a5,80007ae0 <uartintr+0x110>
    80007aa0:	100005b7          	lui	a1,0x10000
    80007aa4:	00005817          	auipc	a6,0x5
    80007aa8:	f6c80813          	addi	a6,a6,-148 # 8000ca10 <uart_tx_buf>
    80007aac:	01c0006f          	j	80007ac8 <uartintr+0xf8>
    80007ab0:	0006c703          	lbu	a4,0(a3)
    80007ab4:	00f63023          	sd	a5,0(a2)
    80007ab8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007abc:	00063783          	ld	a5,0(a2)
    80007ac0:	00053703          	ld	a4,0(a0)
    80007ac4:	02f70063          	beq	a4,a5,80007ae4 <uartintr+0x114>
    80007ac8:	01f7f713          	andi	a4,a5,31
    80007acc:	00e806b3          	add	a3,a6,a4
    80007ad0:	0055c703          	lbu	a4,5(a1)
    80007ad4:	00178793          	addi	a5,a5,1
    80007ad8:	02077713          	andi	a4,a4,32
    80007adc:	fc071ae3          	bnez	a4,80007ab0 <uartintr+0xe0>
    80007ae0:	00008067          	ret
    80007ae4:	00008067          	ret

0000000080007ae8 <kinit>:
    80007ae8:	fc010113          	addi	sp,sp,-64
    80007aec:	02913423          	sd	s1,40(sp)
    80007af0:	fffff7b7          	lui	a5,0xfffff
    80007af4:	00006497          	auipc	s1,0x6
    80007af8:	f3b48493          	addi	s1,s1,-197 # 8000da2f <end+0xfff>
    80007afc:	02813823          	sd	s0,48(sp)
    80007b00:	01313c23          	sd	s3,24(sp)
    80007b04:	00f4f4b3          	and	s1,s1,a5
    80007b08:	02113c23          	sd	ra,56(sp)
    80007b0c:	03213023          	sd	s2,32(sp)
    80007b10:	01413823          	sd	s4,16(sp)
    80007b14:	01513423          	sd	s5,8(sp)
    80007b18:	04010413          	addi	s0,sp,64
    80007b1c:	000017b7          	lui	a5,0x1
    80007b20:	01100993          	li	s3,17
    80007b24:	00f487b3          	add	a5,s1,a5
    80007b28:	01b99993          	slli	s3,s3,0x1b
    80007b2c:	06f9e063          	bltu	s3,a5,80007b8c <kinit+0xa4>
    80007b30:	00005a97          	auipc	s5,0x5
    80007b34:	f00a8a93          	addi	s5,s5,-256 # 8000ca30 <end>
    80007b38:	0754ec63          	bltu	s1,s5,80007bb0 <kinit+0xc8>
    80007b3c:	0734fa63          	bgeu	s1,s3,80007bb0 <kinit+0xc8>
    80007b40:	00088a37          	lui	s4,0x88
    80007b44:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b48:	00004917          	auipc	s2,0x4
    80007b4c:	be890913          	addi	s2,s2,-1048 # 8000b730 <kmem>
    80007b50:	00ca1a13          	slli	s4,s4,0xc
    80007b54:	0140006f          	j	80007b68 <kinit+0x80>
    80007b58:	000017b7          	lui	a5,0x1
    80007b5c:	00f484b3          	add	s1,s1,a5
    80007b60:	0554e863          	bltu	s1,s5,80007bb0 <kinit+0xc8>
    80007b64:	0534f663          	bgeu	s1,s3,80007bb0 <kinit+0xc8>
    80007b68:	00001637          	lui	a2,0x1
    80007b6c:	00100593          	li	a1,1
    80007b70:	00048513          	mv	a0,s1
    80007b74:	00000097          	auipc	ra,0x0
    80007b78:	5e4080e7          	jalr	1508(ra) # 80008158 <__memset>
    80007b7c:	00093783          	ld	a5,0(s2)
    80007b80:	00f4b023          	sd	a5,0(s1)
    80007b84:	00993023          	sd	s1,0(s2)
    80007b88:	fd4498e3          	bne	s1,s4,80007b58 <kinit+0x70>
    80007b8c:	03813083          	ld	ra,56(sp)
    80007b90:	03013403          	ld	s0,48(sp)
    80007b94:	02813483          	ld	s1,40(sp)
    80007b98:	02013903          	ld	s2,32(sp)
    80007b9c:	01813983          	ld	s3,24(sp)
    80007ba0:	01013a03          	ld	s4,16(sp)
    80007ba4:	00813a83          	ld	s5,8(sp)
    80007ba8:	04010113          	addi	sp,sp,64
    80007bac:	00008067          	ret
    80007bb0:	00002517          	auipc	a0,0x2
    80007bb4:	cd050513          	addi	a0,a0,-816 # 80009880 <digits+0x18>
    80007bb8:	fffff097          	auipc	ra,0xfffff
    80007bbc:	4b4080e7          	jalr	1204(ra) # 8000706c <panic>

0000000080007bc0 <freerange>:
    80007bc0:	fc010113          	addi	sp,sp,-64
    80007bc4:	000017b7          	lui	a5,0x1
    80007bc8:	02913423          	sd	s1,40(sp)
    80007bcc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007bd0:	009504b3          	add	s1,a0,s1
    80007bd4:	fffff537          	lui	a0,0xfffff
    80007bd8:	02813823          	sd	s0,48(sp)
    80007bdc:	02113c23          	sd	ra,56(sp)
    80007be0:	03213023          	sd	s2,32(sp)
    80007be4:	01313c23          	sd	s3,24(sp)
    80007be8:	01413823          	sd	s4,16(sp)
    80007bec:	01513423          	sd	s5,8(sp)
    80007bf0:	01613023          	sd	s6,0(sp)
    80007bf4:	04010413          	addi	s0,sp,64
    80007bf8:	00a4f4b3          	and	s1,s1,a0
    80007bfc:	00f487b3          	add	a5,s1,a5
    80007c00:	06f5e463          	bltu	a1,a5,80007c68 <freerange+0xa8>
    80007c04:	00005a97          	auipc	s5,0x5
    80007c08:	e2ca8a93          	addi	s5,s5,-468 # 8000ca30 <end>
    80007c0c:	0954e263          	bltu	s1,s5,80007c90 <freerange+0xd0>
    80007c10:	01100993          	li	s3,17
    80007c14:	01b99993          	slli	s3,s3,0x1b
    80007c18:	0734fc63          	bgeu	s1,s3,80007c90 <freerange+0xd0>
    80007c1c:	00058a13          	mv	s4,a1
    80007c20:	00004917          	auipc	s2,0x4
    80007c24:	b1090913          	addi	s2,s2,-1264 # 8000b730 <kmem>
    80007c28:	00002b37          	lui	s6,0x2
    80007c2c:	0140006f          	j	80007c40 <freerange+0x80>
    80007c30:	000017b7          	lui	a5,0x1
    80007c34:	00f484b3          	add	s1,s1,a5
    80007c38:	0554ec63          	bltu	s1,s5,80007c90 <freerange+0xd0>
    80007c3c:	0534fa63          	bgeu	s1,s3,80007c90 <freerange+0xd0>
    80007c40:	00001637          	lui	a2,0x1
    80007c44:	00100593          	li	a1,1
    80007c48:	00048513          	mv	a0,s1
    80007c4c:	00000097          	auipc	ra,0x0
    80007c50:	50c080e7          	jalr	1292(ra) # 80008158 <__memset>
    80007c54:	00093703          	ld	a4,0(s2)
    80007c58:	016487b3          	add	a5,s1,s6
    80007c5c:	00e4b023          	sd	a4,0(s1)
    80007c60:	00993023          	sd	s1,0(s2)
    80007c64:	fcfa76e3          	bgeu	s4,a5,80007c30 <freerange+0x70>
    80007c68:	03813083          	ld	ra,56(sp)
    80007c6c:	03013403          	ld	s0,48(sp)
    80007c70:	02813483          	ld	s1,40(sp)
    80007c74:	02013903          	ld	s2,32(sp)
    80007c78:	01813983          	ld	s3,24(sp)
    80007c7c:	01013a03          	ld	s4,16(sp)
    80007c80:	00813a83          	ld	s5,8(sp)
    80007c84:	00013b03          	ld	s6,0(sp)
    80007c88:	04010113          	addi	sp,sp,64
    80007c8c:	00008067          	ret
    80007c90:	00002517          	auipc	a0,0x2
    80007c94:	bf050513          	addi	a0,a0,-1040 # 80009880 <digits+0x18>
    80007c98:	fffff097          	auipc	ra,0xfffff
    80007c9c:	3d4080e7          	jalr	980(ra) # 8000706c <panic>

0000000080007ca0 <kfree>:
    80007ca0:	fe010113          	addi	sp,sp,-32
    80007ca4:	00813823          	sd	s0,16(sp)
    80007ca8:	00113c23          	sd	ra,24(sp)
    80007cac:	00913423          	sd	s1,8(sp)
    80007cb0:	02010413          	addi	s0,sp,32
    80007cb4:	03451793          	slli	a5,a0,0x34
    80007cb8:	04079c63          	bnez	a5,80007d10 <kfree+0x70>
    80007cbc:	00005797          	auipc	a5,0x5
    80007cc0:	d7478793          	addi	a5,a5,-652 # 8000ca30 <end>
    80007cc4:	00050493          	mv	s1,a0
    80007cc8:	04f56463          	bltu	a0,a5,80007d10 <kfree+0x70>
    80007ccc:	01100793          	li	a5,17
    80007cd0:	01b79793          	slli	a5,a5,0x1b
    80007cd4:	02f57e63          	bgeu	a0,a5,80007d10 <kfree+0x70>
    80007cd8:	00001637          	lui	a2,0x1
    80007cdc:	00100593          	li	a1,1
    80007ce0:	00000097          	auipc	ra,0x0
    80007ce4:	478080e7          	jalr	1144(ra) # 80008158 <__memset>
    80007ce8:	00004797          	auipc	a5,0x4
    80007cec:	a4878793          	addi	a5,a5,-1464 # 8000b730 <kmem>
    80007cf0:	0007b703          	ld	a4,0(a5)
    80007cf4:	01813083          	ld	ra,24(sp)
    80007cf8:	01013403          	ld	s0,16(sp)
    80007cfc:	00e4b023          	sd	a4,0(s1)
    80007d00:	0097b023          	sd	s1,0(a5)
    80007d04:	00813483          	ld	s1,8(sp)
    80007d08:	02010113          	addi	sp,sp,32
    80007d0c:	00008067          	ret
    80007d10:	00002517          	auipc	a0,0x2
    80007d14:	b7050513          	addi	a0,a0,-1168 # 80009880 <digits+0x18>
    80007d18:	fffff097          	auipc	ra,0xfffff
    80007d1c:	354080e7          	jalr	852(ra) # 8000706c <panic>

0000000080007d20 <kalloc>:
    80007d20:	fe010113          	addi	sp,sp,-32
    80007d24:	00813823          	sd	s0,16(sp)
    80007d28:	00913423          	sd	s1,8(sp)
    80007d2c:	00113c23          	sd	ra,24(sp)
    80007d30:	02010413          	addi	s0,sp,32
    80007d34:	00004797          	auipc	a5,0x4
    80007d38:	9fc78793          	addi	a5,a5,-1540 # 8000b730 <kmem>
    80007d3c:	0007b483          	ld	s1,0(a5)
    80007d40:	02048063          	beqz	s1,80007d60 <kalloc+0x40>
    80007d44:	0004b703          	ld	a4,0(s1)
    80007d48:	00001637          	lui	a2,0x1
    80007d4c:	00500593          	li	a1,5
    80007d50:	00048513          	mv	a0,s1
    80007d54:	00e7b023          	sd	a4,0(a5)
    80007d58:	00000097          	auipc	ra,0x0
    80007d5c:	400080e7          	jalr	1024(ra) # 80008158 <__memset>
    80007d60:	01813083          	ld	ra,24(sp)
    80007d64:	01013403          	ld	s0,16(sp)
    80007d68:	00048513          	mv	a0,s1
    80007d6c:	00813483          	ld	s1,8(sp)
    80007d70:	02010113          	addi	sp,sp,32
    80007d74:	00008067          	ret

0000000080007d78 <initlock>:
    80007d78:	ff010113          	addi	sp,sp,-16
    80007d7c:	00813423          	sd	s0,8(sp)
    80007d80:	01010413          	addi	s0,sp,16
    80007d84:	00813403          	ld	s0,8(sp)
    80007d88:	00b53423          	sd	a1,8(a0)
    80007d8c:	00052023          	sw	zero,0(a0)
    80007d90:	00053823          	sd	zero,16(a0)
    80007d94:	01010113          	addi	sp,sp,16
    80007d98:	00008067          	ret

0000000080007d9c <acquire>:
    80007d9c:	fe010113          	addi	sp,sp,-32
    80007da0:	00813823          	sd	s0,16(sp)
    80007da4:	00913423          	sd	s1,8(sp)
    80007da8:	00113c23          	sd	ra,24(sp)
    80007dac:	01213023          	sd	s2,0(sp)
    80007db0:	02010413          	addi	s0,sp,32
    80007db4:	00050493          	mv	s1,a0
    80007db8:	10002973          	csrr	s2,sstatus
    80007dbc:	100027f3          	csrr	a5,sstatus
    80007dc0:	ffd7f793          	andi	a5,a5,-3
    80007dc4:	10079073          	csrw	sstatus,a5
    80007dc8:	fffff097          	auipc	ra,0xfffff
    80007dcc:	8e0080e7          	jalr	-1824(ra) # 800066a8 <mycpu>
    80007dd0:	07852783          	lw	a5,120(a0)
    80007dd4:	06078e63          	beqz	a5,80007e50 <acquire+0xb4>
    80007dd8:	fffff097          	auipc	ra,0xfffff
    80007ddc:	8d0080e7          	jalr	-1840(ra) # 800066a8 <mycpu>
    80007de0:	07852783          	lw	a5,120(a0)
    80007de4:	0004a703          	lw	a4,0(s1)
    80007de8:	0017879b          	addiw	a5,a5,1
    80007dec:	06f52c23          	sw	a5,120(a0)
    80007df0:	04071063          	bnez	a4,80007e30 <acquire+0x94>
    80007df4:	00100713          	li	a4,1
    80007df8:	00070793          	mv	a5,a4
    80007dfc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e00:	0007879b          	sext.w	a5,a5
    80007e04:	fe079ae3          	bnez	a5,80007df8 <acquire+0x5c>
    80007e08:	0ff0000f          	fence
    80007e0c:	fffff097          	auipc	ra,0xfffff
    80007e10:	89c080e7          	jalr	-1892(ra) # 800066a8 <mycpu>
    80007e14:	01813083          	ld	ra,24(sp)
    80007e18:	01013403          	ld	s0,16(sp)
    80007e1c:	00a4b823          	sd	a0,16(s1)
    80007e20:	00013903          	ld	s2,0(sp)
    80007e24:	00813483          	ld	s1,8(sp)
    80007e28:	02010113          	addi	sp,sp,32
    80007e2c:	00008067          	ret
    80007e30:	0104b903          	ld	s2,16(s1)
    80007e34:	fffff097          	auipc	ra,0xfffff
    80007e38:	874080e7          	jalr	-1932(ra) # 800066a8 <mycpu>
    80007e3c:	faa91ce3          	bne	s2,a0,80007df4 <acquire+0x58>
    80007e40:	00002517          	auipc	a0,0x2
    80007e44:	a4850513          	addi	a0,a0,-1464 # 80009888 <digits+0x20>
    80007e48:	fffff097          	auipc	ra,0xfffff
    80007e4c:	224080e7          	jalr	548(ra) # 8000706c <panic>
    80007e50:	00195913          	srli	s2,s2,0x1
    80007e54:	fffff097          	auipc	ra,0xfffff
    80007e58:	854080e7          	jalr	-1964(ra) # 800066a8 <mycpu>
    80007e5c:	00197913          	andi	s2,s2,1
    80007e60:	07252e23          	sw	s2,124(a0)
    80007e64:	f75ff06f          	j	80007dd8 <acquire+0x3c>

0000000080007e68 <release>:
    80007e68:	fe010113          	addi	sp,sp,-32
    80007e6c:	00813823          	sd	s0,16(sp)
    80007e70:	00113c23          	sd	ra,24(sp)
    80007e74:	00913423          	sd	s1,8(sp)
    80007e78:	01213023          	sd	s2,0(sp)
    80007e7c:	02010413          	addi	s0,sp,32
    80007e80:	00052783          	lw	a5,0(a0)
    80007e84:	00079a63          	bnez	a5,80007e98 <release+0x30>
    80007e88:	00002517          	auipc	a0,0x2
    80007e8c:	a0850513          	addi	a0,a0,-1528 # 80009890 <digits+0x28>
    80007e90:	fffff097          	auipc	ra,0xfffff
    80007e94:	1dc080e7          	jalr	476(ra) # 8000706c <panic>
    80007e98:	01053903          	ld	s2,16(a0)
    80007e9c:	00050493          	mv	s1,a0
    80007ea0:	fffff097          	auipc	ra,0xfffff
    80007ea4:	808080e7          	jalr	-2040(ra) # 800066a8 <mycpu>
    80007ea8:	fea910e3          	bne	s2,a0,80007e88 <release+0x20>
    80007eac:	0004b823          	sd	zero,16(s1)
    80007eb0:	0ff0000f          	fence
    80007eb4:	0f50000f          	fence	iorw,ow
    80007eb8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007ebc:	ffffe097          	auipc	ra,0xffffe
    80007ec0:	7ec080e7          	jalr	2028(ra) # 800066a8 <mycpu>
    80007ec4:	100027f3          	csrr	a5,sstatus
    80007ec8:	0027f793          	andi	a5,a5,2
    80007ecc:	04079a63          	bnez	a5,80007f20 <release+0xb8>
    80007ed0:	07852783          	lw	a5,120(a0)
    80007ed4:	02f05e63          	blez	a5,80007f10 <release+0xa8>
    80007ed8:	fff7871b          	addiw	a4,a5,-1
    80007edc:	06e52c23          	sw	a4,120(a0)
    80007ee0:	00071c63          	bnez	a4,80007ef8 <release+0x90>
    80007ee4:	07c52783          	lw	a5,124(a0)
    80007ee8:	00078863          	beqz	a5,80007ef8 <release+0x90>
    80007eec:	100027f3          	csrr	a5,sstatus
    80007ef0:	0027e793          	ori	a5,a5,2
    80007ef4:	10079073          	csrw	sstatus,a5
    80007ef8:	01813083          	ld	ra,24(sp)
    80007efc:	01013403          	ld	s0,16(sp)
    80007f00:	00813483          	ld	s1,8(sp)
    80007f04:	00013903          	ld	s2,0(sp)
    80007f08:	02010113          	addi	sp,sp,32
    80007f0c:	00008067          	ret
    80007f10:	00002517          	auipc	a0,0x2
    80007f14:	9a050513          	addi	a0,a0,-1632 # 800098b0 <digits+0x48>
    80007f18:	fffff097          	auipc	ra,0xfffff
    80007f1c:	154080e7          	jalr	340(ra) # 8000706c <panic>
    80007f20:	00002517          	auipc	a0,0x2
    80007f24:	97850513          	addi	a0,a0,-1672 # 80009898 <digits+0x30>
    80007f28:	fffff097          	auipc	ra,0xfffff
    80007f2c:	144080e7          	jalr	324(ra) # 8000706c <panic>

0000000080007f30 <holding>:
    80007f30:	00052783          	lw	a5,0(a0)
    80007f34:	00079663          	bnez	a5,80007f40 <holding+0x10>
    80007f38:	00000513          	li	a0,0
    80007f3c:	00008067          	ret
    80007f40:	fe010113          	addi	sp,sp,-32
    80007f44:	00813823          	sd	s0,16(sp)
    80007f48:	00913423          	sd	s1,8(sp)
    80007f4c:	00113c23          	sd	ra,24(sp)
    80007f50:	02010413          	addi	s0,sp,32
    80007f54:	01053483          	ld	s1,16(a0)
    80007f58:	ffffe097          	auipc	ra,0xffffe
    80007f5c:	750080e7          	jalr	1872(ra) # 800066a8 <mycpu>
    80007f60:	01813083          	ld	ra,24(sp)
    80007f64:	01013403          	ld	s0,16(sp)
    80007f68:	40a48533          	sub	a0,s1,a0
    80007f6c:	00153513          	seqz	a0,a0
    80007f70:	00813483          	ld	s1,8(sp)
    80007f74:	02010113          	addi	sp,sp,32
    80007f78:	00008067          	ret

0000000080007f7c <push_off>:
    80007f7c:	fe010113          	addi	sp,sp,-32
    80007f80:	00813823          	sd	s0,16(sp)
    80007f84:	00113c23          	sd	ra,24(sp)
    80007f88:	00913423          	sd	s1,8(sp)
    80007f8c:	02010413          	addi	s0,sp,32
    80007f90:	100024f3          	csrr	s1,sstatus
    80007f94:	100027f3          	csrr	a5,sstatus
    80007f98:	ffd7f793          	andi	a5,a5,-3
    80007f9c:	10079073          	csrw	sstatus,a5
    80007fa0:	ffffe097          	auipc	ra,0xffffe
    80007fa4:	708080e7          	jalr	1800(ra) # 800066a8 <mycpu>
    80007fa8:	07852783          	lw	a5,120(a0)
    80007fac:	02078663          	beqz	a5,80007fd8 <push_off+0x5c>
    80007fb0:	ffffe097          	auipc	ra,0xffffe
    80007fb4:	6f8080e7          	jalr	1784(ra) # 800066a8 <mycpu>
    80007fb8:	07852783          	lw	a5,120(a0)
    80007fbc:	01813083          	ld	ra,24(sp)
    80007fc0:	01013403          	ld	s0,16(sp)
    80007fc4:	0017879b          	addiw	a5,a5,1
    80007fc8:	06f52c23          	sw	a5,120(a0)
    80007fcc:	00813483          	ld	s1,8(sp)
    80007fd0:	02010113          	addi	sp,sp,32
    80007fd4:	00008067          	ret
    80007fd8:	0014d493          	srli	s1,s1,0x1
    80007fdc:	ffffe097          	auipc	ra,0xffffe
    80007fe0:	6cc080e7          	jalr	1740(ra) # 800066a8 <mycpu>
    80007fe4:	0014f493          	andi	s1,s1,1
    80007fe8:	06952e23          	sw	s1,124(a0)
    80007fec:	fc5ff06f          	j	80007fb0 <push_off+0x34>

0000000080007ff0 <pop_off>:
    80007ff0:	ff010113          	addi	sp,sp,-16
    80007ff4:	00813023          	sd	s0,0(sp)
    80007ff8:	00113423          	sd	ra,8(sp)
    80007ffc:	01010413          	addi	s0,sp,16
    80008000:	ffffe097          	auipc	ra,0xffffe
    80008004:	6a8080e7          	jalr	1704(ra) # 800066a8 <mycpu>
    80008008:	100027f3          	csrr	a5,sstatus
    8000800c:	0027f793          	andi	a5,a5,2
    80008010:	04079663          	bnez	a5,8000805c <pop_off+0x6c>
    80008014:	07852783          	lw	a5,120(a0)
    80008018:	02f05a63          	blez	a5,8000804c <pop_off+0x5c>
    8000801c:	fff7871b          	addiw	a4,a5,-1
    80008020:	06e52c23          	sw	a4,120(a0)
    80008024:	00071c63          	bnez	a4,8000803c <pop_off+0x4c>
    80008028:	07c52783          	lw	a5,124(a0)
    8000802c:	00078863          	beqz	a5,8000803c <pop_off+0x4c>
    80008030:	100027f3          	csrr	a5,sstatus
    80008034:	0027e793          	ori	a5,a5,2
    80008038:	10079073          	csrw	sstatus,a5
    8000803c:	00813083          	ld	ra,8(sp)
    80008040:	00013403          	ld	s0,0(sp)
    80008044:	01010113          	addi	sp,sp,16
    80008048:	00008067          	ret
    8000804c:	00002517          	auipc	a0,0x2
    80008050:	86450513          	addi	a0,a0,-1948 # 800098b0 <digits+0x48>
    80008054:	fffff097          	auipc	ra,0xfffff
    80008058:	018080e7          	jalr	24(ra) # 8000706c <panic>
    8000805c:	00002517          	auipc	a0,0x2
    80008060:	83c50513          	addi	a0,a0,-1988 # 80009898 <digits+0x30>
    80008064:	fffff097          	auipc	ra,0xfffff
    80008068:	008080e7          	jalr	8(ra) # 8000706c <panic>

000000008000806c <push_on>:
    8000806c:	fe010113          	addi	sp,sp,-32
    80008070:	00813823          	sd	s0,16(sp)
    80008074:	00113c23          	sd	ra,24(sp)
    80008078:	00913423          	sd	s1,8(sp)
    8000807c:	02010413          	addi	s0,sp,32
    80008080:	100024f3          	csrr	s1,sstatus
    80008084:	100027f3          	csrr	a5,sstatus
    80008088:	0027e793          	ori	a5,a5,2
    8000808c:	10079073          	csrw	sstatus,a5
    80008090:	ffffe097          	auipc	ra,0xffffe
    80008094:	618080e7          	jalr	1560(ra) # 800066a8 <mycpu>
    80008098:	07852783          	lw	a5,120(a0)
    8000809c:	02078663          	beqz	a5,800080c8 <push_on+0x5c>
    800080a0:	ffffe097          	auipc	ra,0xffffe
    800080a4:	608080e7          	jalr	1544(ra) # 800066a8 <mycpu>
    800080a8:	07852783          	lw	a5,120(a0)
    800080ac:	01813083          	ld	ra,24(sp)
    800080b0:	01013403          	ld	s0,16(sp)
    800080b4:	0017879b          	addiw	a5,a5,1
    800080b8:	06f52c23          	sw	a5,120(a0)
    800080bc:	00813483          	ld	s1,8(sp)
    800080c0:	02010113          	addi	sp,sp,32
    800080c4:	00008067          	ret
    800080c8:	0014d493          	srli	s1,s1,0x1
    800080cc:	ffffe097          	auipc	ra,0xffffe
    800080d0:	5dc080e7          	jalr	1500(ra) # 800066a8 <mycpu>
    800080d4:	0014f493          	andi	s1,s1,1
    800080d8:	06952e23          	sw	s1,124(a0)
    800080dc:	fc5ff06f          	j	800080a0 <push_on+0x34>

00000000800080e0 <pop_on>:
    800080e0:	ff010113          	addi	sp,sp,-16
    800080e4:	00813023          	sd	s0,0(sp)
    800080e8:	00113423          	sd	ra,8(sp)
    800080ec:	01010413          	addi	s0,sp,16
    800080f0:	ffffe097          	auipc	ra,0xffffe
    800080f4:	5b8080e7          	jalr	1464(ra) # 800066a8 <mycpu>
    800080f8:	100027f3          	csrr	a5,sstatus
    800080fc:	0027f793          	andi	a5,a5,2
    80008100:	04078463          	beqz	a5,80008148 <pop_on+0x68>
    80008104:	07852783          	lw	a5,120(a0)
    80008108:	02f05863          	blez	a5,80008138 <pop_on+0x58>
    8000810c:	fff7879b          	addiw	a5,a5,-1
    80008110:	06f52c23          	sw	a5,120(a0)
    80008114:	07853783          	ld	a5,120(a0)
    80008118:	00079863          	bnez	a5,80008128 <pop_on+0x48>
    8000811c:	100027f3          	csrr	a5,sstatus
    80008120:	ffd7f793          	andi	a5,a5,-3
    80008124:	10079073          	csrw	sstatus,a5
    80008128:	00813083          	ld	ra,8(sp)
    8000812c:	00013403          	ld	s0,0(sp)
    80008130:	01010113          	addi	sp,sp,16
    80008134:	00008067          	ret
    80008138:	00001517          	auipc	a0,0x1
    8000813c:	7a050513          	addi	a0,a0,1952 # 800098d8 <digits+0x70>
    80008140:	fffff097          	auipc	ra,0xfffff
    80008144:	f2c080e7          	jalr	-212(ra) # 8000706c <panic>
    80008148:	00001517          	auipc	a0,0x1
    8000814c:	77050513          	addi	a0,a0,1904 # 800098b8 <digits+0x50>
    80008150:	fffff097          	auipc	ra,0xfffff
    80008154:	f1c080e7          	jalr	-228(ra) # 8000706c <panic>

0000000080008158 <__memset>:
    80008158:	ff010113          	addi	sp,sp,-16
    8000815c:	00813423          	sd	s0,8(sp)
    80008160:	01010413          	addi	s0,sp,16
    80008164:	1a060e63          	beqz	a2,80008320 <__memset+0x1c8>
    80008168:	40a007b3          	neg	a5,a0
    8000816c:	0077f793          	andi	a5,a5,7
    80008170:	00778693          	addi	a3,a5,7
    80008174:	00b00813          	li	a6,11
    80008178:	0ff5f593          	andi	a1,a1,255
    8000817c:	fff6071b          	addiw	a4,a2,-1
    80008180:	1b06e663          	bltu	a3,a6,8000832c <__memset+0x1d4>
    80008184:	1cd76463          	bltu	a4,a3,8000834c <__memset+0x1f4>
    80008188:	1a078e63          	beqz	a5,80008344 <__memset+0x1ec>
    8000818c:	00b50023          	sb	a1,0(a0)
    80008190:	00100713          	li	a4,1
    80008194:	1ae78463          	beq	a5,a4,8000833c <__memset+0x1e4>
    80008198:	00b500a3          	sb	a1,1(a0)
    8000819c:	00200713          	li	a4,2
    800081a0:	1ae78a63          	beq	a5,a4,80008354 <__memset+0x1fc>
    800081a4:	00b50123          	sb	a1,2(a0)
    800081a8:	00300713          	li	a4,3
    800081ac:	18e78463          	beq	a5,a4,80008334 <__memset+0x1dc>
    800081b0:	00b501a3          	sb	a1,3(a0)
    800081b4:	00400713          	li	a4,4
    800081b8:	1ae78263          	beq	a5,a4,8000835c <__memset+0x204>
    800081bc:	00b50223          	sb	a1,4(a0)
    800081c0:	00500713          	li	a4,5
    800081c4:	1ae78063          	beq	a5,a4,80008364 <__memset+0x20c>
    800081c8:	00b502a3          	sb	a1,5(a0)
    800081cc:	00700713          	li	a4,7
    800081d0:	18e79e63          	bne	a5,a4,8000836c <__memset+0x214>
    800081d4:	00b50323          	sb	a1,6(a0)
    800081d8:	00700e93          	li	t4,7
    800081dc:	00859713          	slli	a4,a1,0x8
    800081e0:	00e5e733          	or	a4,a1,a4
    800081e4:	01059e13          	slli	t3,a1,0x10
    800081e8:	01c76e33          	or	t3,a4,t3
    800081ec:	01859313          	slli	t1,a1,0x18
    800081f0:	006e6333          	or	t1,t3,t1
    800081f4:	02059893          	slli	a7,a1,0x20
    800081f8:	40f60e3b          	subw	t3,a2,a5
    800081fc:	011368b3          	or	a7,t1,a7
    80008200:	02859813          	slli	a6,a1,0x28
    80008204:	0108e833          	or	a6,a7,a6
    80008208:	03059693          	slli	a3,a1,0x30
    8000820c:	003e589b          	srliw	a7,t3,0x3
    80008210:	00d866b3          	or	a3,a6,a3
    80008214:	03859713          	slli	a4,a1,0x38
    80008218:	00389813          	slli	a6,a7,0x3
    8000821c:	00f507b3          	add	a5,a0,a5
    80008220:	00e6e733          	or	a4,a3,a4
    80008224:	000e089b          	sext.w	a7,t3
    80008228:	00f806b3          	add	a3,a6,a5
    8000822c:	00e7b023          	sd	a4,0(a5)
    80008230:	00878793          	addi	a5,a5,8
    80008234:	fed79ce3          	bne	a5,a3,8000822c <__memset+0xd4>
    80008238:	ff8e7793          	andi	a5,t3,-8
    8000823c:	0007871b          	sext.w	a4,a5
    80008240:	01d787bb          	addw	a5,a5,t4
    80008244:	0ce88e63          	beq	a7,a4,80008320 <__memset+0x1c8>
    80008248:	00f50733          	add	a4,a0,a5
    8000824c:	00b70023          	sb	a1,0(a4)
    80008250:	0017871b          	addiw	a4,a5,1
    80008254:	0cc77663          	bgeu	a4,a2,80008320 <__memset+0x1c8>
    80008258:	00e50733          	add	a4,a0,a4
    8000825c:	00b70023          	sb	a1,0(a4)
    80008260:	0027871b          	addiw	a4,a5,2
    80008264:	0ac77e63          	bgeu	a4,a2,80008320 <__memset+0x1c8>
    80008268:	00e50733          	add	a4,a0,a4
    8000826c:	00b70023          	sb	a1,0(a4)
    80008270:	0037871b          	addiw	a4,a5,3
    80008274:	0ac77663          	bgeu	a4,a2,80008320 <__memset+0x1c8>
    80008278:	00e50733          	add	a4,a0,a4
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	0047871b          	addiw	a4,a5,4
    80008284:	08c77e63          	bgeu	a4,a2,80008320 <__memset+0x1c8>
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0057871b          	addiw	a4,a5,5
    80008294:	08c77663          	bgeu	a4,a2,80008320 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0067871b          	addiw	a4,a5,6
    800082a4:	06c77e63          	bgeu	a4,a2,80008320 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0077871b          	addiw	a4,a5,7
    800082b4:	06c77663          	bgeu	a4,a2,80008320 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	0087871b          	addiw	a4,a5,8
    800082c4:	04c77e63          	bgeu	a4,a2,80008320 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0097871b          	addiw	a4,a5,9
    800082d4:	04c77663          	bgeu	a4,a2,80008320 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	00a7871b          	addiw	a4,a5,10
    800082e4:	02c77e63          	bgeu	a4,a2,80008320 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	00b7871b          	addiw	a4,a5,11
    800082f4:	02c77663          	bgeu	a4,a2,80008320 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	00c7871b          	addiw	a4,a5,12
    80008304:	00c77e63          	bgeu	a4,a2,80008320 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	00d7879b          	addiw	a5,a5,13
    80008314:	00c7f663          	bgeu	a5,a2,80008320 <__memset+0x1c8>
    80008318:	00f507b3          	add	a5,a0,a5
    8000831c:	00b78023          	sb	a1,0(a5)
    80008320:	00813403          	ld	s0,8(sp)
    80008324:	01010113          	addi	sp,sp,16
    80008328:	00008067          	ret
    8000832c:	00b00693          	li	a3,11
    80008330:	e55ff06f          	j	80008184 <__memset+0x2c>
    80008334:	00300e93          	li	t4,3
    80008338:	ea5ff06f          	j	800081dc <__memset+0x84>
    8000833c:	00100e93          	li	t4,1
    80008340:	e9dff06f          	j	800081dc <__memset+0x84>
    80008344:	00000e93          	li	t4,0
    80008348:	e95ff06f          	j	800081dc <__memset+0x84>
    8000834c:	00000793          	li	a5,0
    80008350:	ef9ff06f          	j	80008248 <__memset+0xf0>
    80008354:	00200e93          	li	t4,2
    80008358:	e85ff06f          	j	800081dc <__memset+0x84>
    8000835c:	00400e93          	li	t4,4
    80008360:	e7dff06f          	j	800081dc <__memset+0x84>
    80008364:	00500e93          	li	t4,5
    80008368:	e75ff06f          	j	800081dc <__memset+0x84>
    8000836c:	00600e93          	li	t4,6
    80008370:	e6dff06f          	j	800081dc <__memset+0x84>

0000000080008374 <__memmove>:
    80008374:	ff010113          	addi	sp,sp,-16
    80008378:	00813423          	sd	s0,8(sp)
    8000837c:	01010413          	addi	s0,sp,16
    80008380:	0e060863          	beqz	a2,80008470 <__memmove+0xfc>
    80008384:	fff6069b          	addiw	a3,a2,-1
    80008388:	0006881b          	sext.w	a6,a3
    8000838c:	0ea5e863          	bltu	a1,a0,8000847c <__memmove+0x108>
    80008390:	00758713          	addi	a4,a1,7
    80008394:	00a5e7b3          	or	a5,a1,a0
    80008398:	40a70733          	sub	a4,a4,a0
    8000839c:	0077f793          	andi	a5,a5,7
    800083a0:	00f73713          	sltiu	a4,a4,15
    800083a4:	00174713          	xori	a4,a4,1
    800083a8:	0017b793          	seqz	a5,a5
    800083ac:	00e7f7b3          	and	a5,a5,a4
    800083b0:	10078863          	beqz	a5,800084c0 <__memmove+0x14c>
    800083b4:	00900793          	li	a5,9
    800083b8:	1107f463          	bgeu	a5,a6,800084c0 <__memmove+0x14c>
    800083bc:	0036581b          	srliw	a6,a2,0x3
    800083c0:	fff8081b          	addiw	a6,a6,-1
    800083c4:	02081813          	slli	a6,a6,0x20
    800083c8:	01d85893          	srli	a7,a6,0x1d
    800083cc:	00858813          	addi	a6,a1,8
    800083d0:	00058793          	mv	a5,a1
    800083d4:	00050713          	mv	a4,a0
    800083d8:	01088833          	add	a6,a7,a6
    800083dc:	0007b883          	ld	a7,0(a5)
    800083e0:	00878793          	addi	a5,a5,8
    800083e4:	00870713          	addi	a4,a4,8
    800083e8:	ff173c23          	sd	a7,-8(a4)
    800083ec:	ff0798e3          	bne	a5,a6,800083dc <__memmove+0x68>
    800083f0:	ff867713          	andi	a4,a2,-8
    800083f4:	02071793          	slli	a5,a4,0x20
    800083f8:	0207d793          	srli	a5,a5,0x20
    800083fc:	00f585b3          	add	a1,a1,a5
    80008400:	40e686bb          	subw	a3,a3,a4
    80008404:	00f507b3          	add	a5,a0,a5
    80008408:	06e60463          	beq	a2,a4,80008470 <__memmove+0xfc>
    8000840c:	0005c703          	lbu	a4,0(a1)
    80008410:	00e78023          	sb	a4,0(a5)
    80008414:	04068e63          	beqz	a3,80008470 <__memmove+0xfc>
    80008418:	0015c603          	lbu	a2,1(a1)
    8000841c:	00100713          	li	a4,1
    80008420:	00c780a3          	sb	a2,1(a5)
    80008424:	04e68663          	beq	a3,a4,80008470 <__memmove+0xfc>
    80008428:	0025c603          	lbu	a2,2(a1)
    8000842c:	00200713          	li	a4,2
    80008430:	00c78123          	sb	a2,2(a5)
    80008434:	02e68e63          	beq	a3,a4,80008470 <__memmove+0xfc>
    80008438:	0035c603          	lbu	a2,3(a1)
    8000843c:	00300713          	li	a4,3
    80008440:	00c781a3          	sb	a2,3(a5)
    80008444:	02e68663          	beq	a3,a4,80008470 <__memmove+0xfc>
    80008448:	0045c603          	lbu	a2,4(a1)
    8000844c:	00400713          	li	a4,4
    80008450:	00c78223          	sb	a2,4(a5)
    80008454:	00e68e63          	beq	a3,a4,80008470 <__memmove+0xfc>
    80008458:	0055c603          	lbu	a2,5(a1)
    8000845c:	00500713          	li	a4,5
    80008460:	00c782a3          	sb	a2,5(a5)
    80008464:	00e68663          	beq	a3,a4,80008470 <__memmove+0xfc>
    80008468:	0065c703          	lbu	a4,6(a1)
    8000846c:	00e78323          	sb	a4,6(a5)
    80008470:	00813403          	ld	s0,8(sp)
    80008474:	01010113          	addi	sp,sp,16
    80008478:	00008067          	ret
    8000847c:	02061713          	slli	a4,a2,0x20
    80008480:	02075713          	srli	a4,a4,0x20
    80008484:	00e587b3          	add	a5,a1,a4
    80008488:	f0f574e3          	bgeu	a0,a5,80008390 <__memmove+0x1c>
    8000848c:	02069613          	slli	a2,a3,0x20
    80008490:	02065613          	srli	a2,a2,0x20
    80008494:	fff64613          	not	a2,a2
    80008498:	00e50733          	add	a4,a0,a4
    8000849c:	00c78633          	add	a2,a5,a2
    800084a0:	fff7c683          	lbu	a3,-1(a5)
    800084a4:	fff78793          	addi	a5,a5,-1
    800084a8:	fff70713          	addi	a4,a4,-1
    800084ac:	00d70023          	sb	a3,0(a4)
    800084b0:	fec798e3          	bne	a5,a2,800084a0 <__memmove+0x12c>
    800084b4:	00813403          	ld	s0,8(sp)
    800084b8:	01010113          	addi	sp,sp,16
    800084bc:	00008067          	ret
    800084c0:	02069713          	slli	a4,a3,0x20
    800084c4:	02075713          	srli	a4,a4,0x20
    800084c8:	00170713          	addi	a4,a4,1
    800084cc:	00e50733          	add	a4,a0,a4
    800084d0:	00050793          	mv	a5,a0
    800084d4:	0005c683          	lbu	a3,0(a1)
    800084d8:	00178793          	addi	a5,a5,1
    800084dc:	00158593          	addi	a1,a1,1
    800084e0:	fed78fa3          	sb	a3,-1(a5)
    800084e4:	fee798e3          	bne	a5,a4,800084d4 <__memmove+0x160>
    800084e8:	f89ff06f          	j	80008470 <__memmove+0xfc>

00000000800084ec <__putc>:
    800084ec:	fe010113          	addi	sp,sp,-32
    800084f0:	00813823          	sd	s0,16(sp)
    800084f4:	00113c23          	sd	ra,24(sp)
    800084f8:	02010413          	addi	s0,sp,32
    800084fc:	00050793          	mv	a5,a0
    80008500:	fef40593          	addi	a1,s0,-17
    80008504:	00100613          	li	a2,1
    80008508:	00000513          	li	a0,0
    8000850c:	fef407a3          	sb	a5,-17(s0)
    80008510:	fffff097          	auipc	ra,0xfffff
    80008514:	b3c080e7          	jalr	-1220(ra) # 8000704c <console_write>
    80008518:	01813083          	ld	ra,24(sp)
    8000851c:	01013403          	ld	s0,16(sp)
    80008520:	02010113          	addi	sp,sp,32
    80008524:	00008067          	ret

0000000080008528 <__getc>:
    80008528:	fe010113          	addi	sp,sp,-32
    8000852c:	00813823          	sd	s0,16(sp)
    80008530:	00113c23          	sd	ra,24(sp)
    80008534:	02010413          	addi	s0,sp,32
    80008538:	fe840593          	addi	a1,s0,-24
    8000853c:	00100613          	li	a2,1
    80008540:	00000513          	li	a0,0
    80008544:	fffff097          	auipc	ra,0xfffff
    80008548:	ae8080e7          	jalr	-1304(ra) # 8000702c <console_read>
    8000854c:	fe844503          	lbu	a0,-24(s0)
    80008550:	01813083          	ld	ra,24(sp)
    80008554:	01013403          	ld	s0,16(sp)
    80008558:	02010113          	addi	sp,sp,32
    8000855c:	00008067          	ret

0000000080008560 <console_handler>:
    80008560:	fe010113          	addi	sp,sp,-32
    80008564:	00813823          	sd	s0,16(sp)
    80008568:	00113c23          	sd	ra,24(sp)
    8000856c:	00913423          	sd	s1,8(sp)
    80008570:	02010413          	addi	s0,sp,32
    80008574:	14202773          	csrr	a4,scause
    80008578:	100027f3          	csrr	a5,sstatus
    8000857c:	0027f793          	andi	a5,a5,2
    80008580:	06079e63          	bnez	a5,800085fc <console_handler+0x9c>
    80008584:	00074c63          	bltz	a4,8000859c <console_handler+0x3c>
    80008588:	01813083          	ld	ra,24(sp)
    8000858c:	01013403          	ld	s0,16(sp)
    80008590:	00813483          	ld	s1,8(sp)
    80008594:	02010113          	addi	sp,sp,32
    80008598:	00008067          	ret
    8000859c:	0ff77713          	andi	a4,a4,255
    800085a0:	00900793          	li	a5,9
    800085a4:	fef712e3          	bne	a4,a5,80008588 <console_handler+0x28>
    800085a8:	ffffe097          	auipc	ra,0xffffe
    800085ac:	6dc080e7          	jalr	1756(ra) # 80006c84 <plic_claim>
    800085b0:	00a00793          	li	a5,10
    800085b4:	00050493          	mv	s1,a0
    800085b8:	02f50c63          	beq	a0,a5,800085f0 <console_handler+0x90>
    800085bc:	fc0506e3          	beqz	a0,80008588 <console_handler+0x28>
    800085c0:	00050593          	mv	a1,a0
    800085c4:	00001517          	auipc	a0,0x1
    800085c8:	21c50513          	addi	a0,a0,540 # 800097e0 <CONSOLE_STATUS+0x7d0>
    800085cc:	fffff097          	auipc	ra,0xfffff
    800085d0:	afc080e7          	jalr	-1284(ra) # 800070c8 <__printf>
    800085d4:	01013403          	ld	s0,16(sp)
    800085d8:	01813083          	ld	ra,24(sp)
    800085dc:	00048513          	mv	a0,s1
    800085e0:	00813483          	ld	s1,8(sp)
    800085e4:	02010113          	addi	sp,sp,32
    800085e8:	ffffe317          	auipc	t1,0xffffe
    800085ec:	6d430067          	jr	1748(t1) # 80006cbc <plic_complete>
    800085f0:	fffff097          	auipc	ra,0xfffff
    800085f4:	3e0080e7          	jalr	992(ra) # 800079d0 <uartintr>
    800085f8:	fddff06f          	j	800085d4 <console_handler+0x74>
    800085fc:	00001517          	auipc	a0,0x1
    80008600:	2e450513          	addi	a0,a0,740 # 800098e0 <digits+0x78>
    80008604:	fffff097          	auipc	ra,0xfffff
    80008608:	a68080e7          	jalr	-1432(ra) # 8000706c <panic>
	...

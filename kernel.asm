
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	6a013103          	ld	sp,1696(sp) # 8000b6a0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3d4060ef          	jal	ra,800063f0 <start>

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
    80001084:	089010ef          	jal	ra,8000290c <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011e0:	72c010ef          	jal	ra,8000290c <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012f0:	0dd010ef          	jal	ra,80002bcc <_ZN5Riscv20handleTimerInterruptEv>

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
    80001400:	7a4010ef          	jal	ra,80002ba4 <_ZN5Riscv22handleConsoleInterruptEv>

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
    8000178c:	f387b783          	ld	a5,-200(a5) # 8000b6c0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001790:	0007b903          	ld	s2,0(a5)
            }
            else {
                newSize = size;
            }

            return MemoryAllocator::mem_alloc(newSize);
    80001794:	04000513          	li	a0,64
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	a38080e7          	jalr	-1480(ra) # 800021d0 <_ZN15MemoryAllocator9mem_allocEm>
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
    800017bc:	f087b783          	ld	a5,-248(a5) # 8000b6c0 <_GLOBAL_OFFSET_TABLE_+0x58>
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
    80001858:	b64080e7          	jalr	-1180(ra) # 800023b8 <_ZN15MemoryAllocator8mem_freeEPv>
    8000185c:	020480a3          	sb	zero,33(s1)
        Scheduler::put(tcb);
    80001860:	00048513          	mv	a0,s1
    80001864:	00001097          	auipc	ra,0x1
    80001868:	430080e7          	jalr	1072(ra) # 80002c94 <_ZN9Scheduler3putEP3TCB>
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
    800018bc:	918080e7          	jalr	-1768(ra) # 800021d0 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001920:	a9c080e7          	jalr	-1380(ra) # 800023b8 <_ZN15MemoryAllocator8mem_freeEPv>
    80001924:	020900a3          	sb	zero,33(s2)

    while (this->blocked.peekFirst()) {
        TCB* tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    80001928:	00090513          	mv	a0,s2
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	368080e7          	jalr	872(ra) # 80002c94 <_ZN9Scheduler3putEP3TCB>
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
    80001a1c:	794080e7          	jalr	1940(ra) # 800051ac <_Z11printStringPKc>
        printInt(i);
    80001a20:	00000613          	li	a2,0
    80001a24:	00a00593          	li	a1,10
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	00004097          	auipc	ra,0x4
    80001a30:	930080e7          	jalr	-1744(ra) # 8000535c <_Z8printIntiii>
        printString("\n");
    80001a34:	00007517          	auipc	a0,0x7
    80001a38:	77450513          	addi	a0,a0,1908 # 800091a8 <CONSOLE_STATUS+0x198>
    80001a3c:	00003097          	auipc	ra,0x3
    80001a40:	770080e7          	jalr	1904(ra) # 800051ac <_Z11printStringPKc>
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
    80001a60:	750080e7          	jalr	1872(ra) # 800051ac <_Z11printStringPKc>
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
    80001a80:	730080e7          	jalr	1840(ra) # 800051ac <_Z11printStringPKc>
    printInt(t1);
    80001a84:	00000613          	li	a2,0
    80001a88:	00a00593          	li	a1,10
    80001a8c:	0009051b          	sext.w	a0,s2
    80001a90:	00004097          	auipc	ra,0x4
    80001a94:	8cc080e7          	jalr	-1844(ra) # 8000535c <_Z8printIntiii>
    printString("\n");
    80001a98:	00007517          	auipc	a0,0x7
    80001a9c:	71050513          	addi	a0,a0,1808 # 800091a8 <CONSOLE_STATUS+0x198>
    80001aa0:	00003097          	auipc	ra,0x3
    80001aa4:	70c080e7          	jalr	1804(ra) # 800051ac <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    80001aa8:	01400513          	li	a0,20
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	ed4080e7          	jalr	-300(ra) # 80001980 <_ZL9fibonaccim>
    80001ab4:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001ab8:	00007517          	auipc	a0,0x7
    80001abc:	58850513          	addi	a0,a0,1416 # 80009040 <CONSOLE_STATUS+0x30>
    80001ac0:	00003097          	auipc	ra,0x3
    80001ac4:	6ec080e7          	jalr	1772(ra) # 800051ac <_Z11printStringPKc>
    printInt(result);
    80001ac8:	00000613          	li	a2,0
    80001acc:	00a00593          	li	a1,10
    80001ad0:	0009051b          	sext.w	a0,s2
    80001ad4:	00004097          	auipc	ra,0x4
    80001ad8:	888080e7          	jalr	-1912(ra) # 8000535c <_Z8printIntiii>
    printString("\n");
    80001adc:	00007517          	auipc	a0,0x7
    80001ae0:	6cc50513          	addi	a0,a0,1740 # 800091a8 <CONSOLE_STATUS+0x198>
    80001ae4:	00003097          	auipc	ra,0x3
    80001ae8:	6c8080e7          	jalr	1736(ra) # 800051ac <_Z11printStringPKc>
    80001aec:	0400006f          	j	80001b2c <_Z11workerBodyAPv+0x13c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001af0:	00007517          	auipc	a0,0x7
    80001af4:	53050513          	addi	a0,a0,1328 # 80009020 <CONSOLE_STATUS+0x10>
    80001af8:	00003097          	auipc	ra,0x3
    80001afc:	6b4080e7          	jalr	1716(ra) # 800051ac <_Z11printStringPKc>
        printInt(i);
    80001b00:	00000613          	li	a2,0
    80001b04:	00a00593          	li	a1,10
    80001b08:	00048513          	mv	a0,s1
    80001b0c:	00004097          	auipc	ra,0x4
    80001b10:	850080e7          	jalr	-1968(ra) # 8000535c <_Z8printIntiii>
        printString("\n");
    80001b14:	00007517          	auipc	a0,0x7
    80001b18:	69450513          	addi	a0,a0,1684 # 800091a8 <CONSOLE_STATUS+0x198>
    80001b1c:	00003097          	auipc	ra,0x3
    80001b20:	690080e7          	jalr	1680(ra) # 800051ac <_Z11printStringPKc>
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
    80001b88:	628080e7          	jalr	1576(ra) # 800051ac <_Z11printStringPKc>
        printInt(i);
    80001b8c:	00000613          	li	a2,0
    80001b90:	00a00593          	li	a1,10
    80001b94:	00048513          	mv	a0,s1
    80001b98:	00003097          	auipc	ra,0x3
    80001b9c:	7c4080e7          	jalr	1988(ra) # 8000535c <_Z8printIntiii>
        printString("\n");
    80001ba0:	00007517          	auipc	a0,0x7
    80001ba4:	60850513          	addi	a0,a0,1544 # 800091a8 <CONSOLE_STATUS+0x198>
    80001ba8:	00003097          	auipc	ra,0x3
    80001bac:	604080e7          	jalr	1540(ra) # 800051ac <_Z11printStringPKc>
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
    80001bcc:	5e4080e7          	jalr	1508(ra) # 800051ac <_Z11printStringPKc>
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
    80001bf8:	5b8080e7          	jalr	1464(ra) # 800051ac <_Z11printStringPKc>
    printInt(result);
    80001bfc:	00000613          	li	a2,0
    80001c00:	00a00593          	li	a1,10
    80001c04:	0009051b          	sext.w	a0,s2
    80001c08:	00003097          	auipc	ra,0x3
    80001c0c:	754080e7          	jalr	1876(ra) # 8000535c <_Z8printIntiii>
    printString("\n");
    80001c10:	00007517          	auipc	a0,0x7
    80001c14:	59850513          	addi	a0,a0,1432 # 800091a8 <CONSOLE_STATUS+0x198>
    80001c18:	00003097          	auipc	ra,0x3
    80001c1c:	594080e7          	jalr	1428(ra) # 800051ac <_Z11printStringPKc>
    80001c20:	0400006f          	j	80001c60 <_Z11workerBodyBPv+0x10c>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001c24:	00007517          	auipc	a0,0x7
    80001c28:	42c50513          	addi	a0,a0,1068 # 80009050 <CONSOLE_STATUS+0x40>
    80001c2c:	00003097          	auipc	ra,0x3
    80001c30:	580080e7          	jalr	1408(ra) # 800051ac <_Z11printStringPKc>
        printInt(i);
    80001c34:	00000613          	li	a2,0
    80001c38:	00a00593          	li	a1,10
    80001c3c:	00048513          	mv	a0,s1
    80001c40:	00003097          	auipc	ra,0x3
    80001c44:	71c080e7          	jalr	1820(ra) # 8000535c <_Z8printIntiii>
        printString("\n");
    80001c48:	00007517          	auipc	a0,0x7
    80001c4c:	56050513          	addi	a0,a0,1376 # 800091a8 <CONSOLE_STATUS+0x198>
    80001c50:	00003097          	auipc	ra,0x3
    80001c54:	55c080e7          	jalr	1372(ra) # 800051ac <_Z11printStringPKc>
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
    80001cac:	504080e7          	jalr	1284(ra) # 800051ac <_Z11printStringPKc>
    thread_dispatch();
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	924080e7          	jalr	-1756(ra) # 800015d4 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch2..\n");
    80001cb8:	00007517          	auipc	a0,0x7
    80001cbc:	3e050513          	addi	a0,a0,992 # 80009098 <CONSOLE_STATUS+0x88>
    80001cc0:	00003097          	auipc	ra,0x3
    80001cc4:	4ec080e7          	jalr	1260(ra) # 800051ac <_Z11printStringPKc>
    thread_dispatch();
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	90c080e7          	jalr	-1780(ra) # 800015d4 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch3...\n");
    80001cd0:	00007517          	auipc	a0,0x7
    80001cd4:	3e850513          	addi	a0,a0,1000 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001cd8:	00003097          	auipc	ra,0x3
    80001cdc:	4d4080e7          	jalr	1236(ra) # 800051ac <_Z11printStringPKc>
    thread_dispatch();
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	8f4080e7          	jalr	-1804(ra) # 800015d4 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch4....\n");
    80001ce8:	00007517          	auipc	a0,0x7
    80001cec:	3f050513          	addi	a0,a0,1008 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001cf0:	00003097          	auipc	ra,0x3
    80001cf4:	4bc080e7          	jalr	1212(ra) # 800051ac <_Z11printStringPKc>
    printString("C: Signal semafora!\n");
    80001cf8:	00007517          	auipc	a0,0x7
    80001cfc:	40050513          	addi	a0,a0,1024 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001d00:	00003097          	auipc	ra,0x3
    80001d04:	4ac080e7          	jalr	1196(ra) # 800051ac <_Z11printStringPKc>
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
    80001d28:	488080e7          	jalr	1160(ra) # 800051ac <_Z11printStringPKc>
    printString("C: posle signala.2.\n");
    80001d2c:	00007517          	auipc	a0,0x7
    80001d30:	3fc50513          	addi	a0,a0,1020 # 80009128 <CONSOLE_STATUS+0x118>
    80001d34:	00003097          	auipc	ra,0x3
    80001d38:	478080e7          	jalr	1144(ra) # 800051ac <_Z11printStringPKc>
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
    80001d74:	43c080e7          	jalr	1084(ra) # 800051ac <_Z11printStringPKc>
    printString("D: Cekamo na semaforu..\n");
    80001d78:	00007517          	auipc	a0,0x7
    80001d7c:	3e050513          	addi	a0,a0,992 # 80009158 <CONSOLE_STATUS+0x148>
    80001d80:	00003097          	auipc	ra,0x3
    80001d84:	42c080e7          	jalr	1068(ra) # 800051ac <_Z11printStringPKc>

    int returnValue = sem_wait((sem_t) arg);
    80001d88:	00048513          	mv	a0,s1
    80001d8c:	00000097          	auipc	ra,0x0
    80001d90:	8e8080e7          	jalr	-1816(ra) # 80001674 <_Z8sem_waitP11MySemaphore>
    80001d94:	00050493          	mv	s1,a0

    printString("D: rezultat: ");
    80001d98:	00007517          	auipc	a0,0x7
    80001d9c:	3e050513          	addi	a0,a0,992 # 80009178 <CONSOLE_STATUS+0x168>
    80001da0:	00003097          	auipc	ra,0x3
    80001da4:	40c080e7          	jalr	1036(ra) # 800051ac <_Z11printStringPKc>
    printInt(returnValue);
    80001da8:	00000613          	li	a2,0
    80001dac:	00a00593          	li	a1,10
    80001db0:	00048513          	mv	a0,s1
    80001db4:	00003097          	auipc	ra,0x3
    80001db8:	5a8080e7          	jalr	1448(ra) # 8000535c <_Z8printIntiii>
    printString("\nD: izlazim automatski, pozdrav!\n");
    80001dbc:	00007517          	auipc	a0,0x7
    80001dc0:	3cc50513          	addi	a0,a0,972 # 80009188 <CONSOLE_STATUS+0x178>
    80001dc4:	00003097          	auipc	ra,0x3
    80001dc8:	3e8080e7          	jalr	1000(ra) # 800051ac <_Z11printStringPKc>
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
    80001df4:	8887b783          	ld	a5,-1912(a5) # 8000b678 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001df8:	0007b683          	ld	a3,0(a5)
    80001dfc:	0000a717          	auipc	a4,0xa
    80001e00:	88473703          	ld	a4,-1916(a4) # 8000b680 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001e04:	00d73023          	sd	a3,0(a4)
        used = nullptr;
    80001e08:	0000a617          	auipc	a2,0xa
    80001e0c:	8a863603          	ld	a2,-1880(a2) # 8000b6b0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001e10:	00063023          	sd	zero,0(a2)

        free->next = nullptr;
    80001e14:	0006b023          	sd	zero,0(a3)
        free->prev  = nullptr;
    80001e18:	00073703          	ld	a4,0(a4)
    80001e1c:	00073423          	sd	zero,8(a4)
        free->size = ((char*)HEAP_START_ADDR - (char*)HEAP_END_ADDR - sizeof(DataBlock)); //FOR NOW
    80001e20:	0007b783          	ld	a5,0(a5)
    80001e24:	0000a697          	auipc	a3,0xa
    80001e28:	8a46b683          	ld	a3,-1884(a3) # 8000b6c8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001e2c:	0006b683          	ld	a3,0(a3)
    80001e30:	40d787b3          	sub	a5,a5,a3
    80001e34:	fe878793          	addi	a5,a5,-24
    80001e38:	00f73823          	sd	a5,16(a4)


        //testing purposes
        newCalled = 0;
    80001e3c:	0000a797          	auipc	a5,0xa
    80001e40:	87c7b783          	ld	a5,-1924(a5) # 8000b6b8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001e44:	0007a023          	sw	zero,0(a5)
        newArrayCalled = 0;
    80001e48:	0000a797          	auipc	a5,0xa
    80001e4c:	8607b783          	ld	a5,-1952(a5) # 8000b6a8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001e50:	0007a023          	sw	zero,0(a5)
        deleteCalled= 0;
    80001e54:	0000a797          	auipc	a5,0xa
    80001e58:	83c7b783          	ld	a5,-1988(a5) # 8000b690 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e5c:	0007a023          	sw	zero,0(a5)
        deleteArrayCalled = 0;
    80001e60:	0000a797          	auipc	a5,0xa
    80001e64:	8387b783          	ld	a5,-1992(a5) # 8000b698 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e68:	0007a023          	sw	zero,0(a5)

    TCB *threads[5];

    MemoryAllocator::initFreeBlock();

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    80001e6c:	0000a797          	auipc	a5,0xa
    80001e70:	81c7b783          	ld	a5,-2020(a5) # 8000b688 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    80001e90:	0b8080e7          	jalr	184(ra) # 80001f44 <_ZN3TCB12createThreadEPFvPvES0_>
    80001e94:	fca43423          	sd	a0,-56(s0)
    TCB::running = threads[0];
    80001e98:	0000a797          	auipc	a5,0xa
    80001e9c:	8287b783          	ld	a5,-2008(a5) # 8000b6c0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001ea0:	00a7b023          	sd	a0,0(a5)

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    80001ea4:	00000613          	li	a2,0
    80001ea8:	00009597          	auipc	a1,0x9
    80001eac:	7c85b583          	ld	a1,1992(a1) # 8000b670 <_GLOBAL_OFFSET_TABLE_+0x8>
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

    //userMain();

    return 0;
}
    80001ed4:	00000513          	li	a0,0
    80001ed8:	03813083          	ld	ra,56(sp)
    80001edc:	03013403          	ld	s0,48(sp)
    80001ee0:	04010113          	addi	sp,sp,64
    80001ee4:	00008067          	ret

0000000080001ee8 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001ee8:	fe010113          	addi	sp,sp,-32
    80001eec:	00113c23          	sd	ra,24(sp)
    80001ef0:	00813823          	sd	s0,16(sp)
    80001ef4:	00913423          	sd	s1,8(sp)
    80001ef8:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001efc:	00001097          	auipc	ra,0x1
    80001f00:	9f0080e7          	jalr	-1552(ra) # 800028ec <_ZN5Riscv10popSppSpieEv>
    //Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    //Ovde smo uvek u niti koja nije main zar ne?

    running->body(running->arg);
    80001f04:	0000a497          	auipc	s1,0xa
    80001f08:	81c48493          	addi	s1,s1,-2020 # 8000b720 <_ZN3TCB7runningE>
    80001f0c:	0004b783          	ld	a5,0(s1)
    80001f10:	0007b703          	ld	a4,0(a5)
    80001f14:	0287b503          	ld	a0,40(a5)
    80001f18:	000700e7          	jalr	a4
    running->setFinished(true);
    80001f1c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001f20:	00100713          	li	a4,1
    80001f24:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001f28:	fffff097          	auipc	ra,0xfffff
    80001f2c:	6ac080e7          	jalr	1708(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80001f30:	01813083          	ld	ra,24(sp)
    80001f34:	01013403          	ld	s0,16(sp)
    80001f38:	00813483          	ld	s1,8(sp)
    80001f3c:	02010113          	addi	sp,sp,32
    80001f40:	00008067          	ret

0000000080001f44 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80001f44:	fd010113          	addi	sp,sp,-48
    80001f48:	02113423          	sd	ra,40(sp)
    80001f4c:	02813023          	sd	s0,32(sp)
    80001f50:	00913c23          	sd	s1,24(sp)
    80001f54:	01213823          	sd	s2,16(sp)
    80001f58:	01313423          	sd	s3,8(sp)
    80001f5c:	03010413          	addi	s0,sp,48
    80001f60:	00050913          	mv	s2,a0
    80001f64:	00058993          	mv	s3,a1
        }
        else {
            newSize = size;
        }

        return MemoryAllocator::mem_alloc(newSize);
    80001f68:	04000513          	li	a0,64
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	264080e7          	jalr	612(ra) # 800021d0 <_ZN15MemoryAllocator9mem_allocEm>
    80001f74:	00050493          	mv	s1,a0
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            main(body == nullptr),
            arg(arg)
    80001f78:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001f7c:	00090a63          	beqz	s2,80001f90 <_ZN3TCB12createThreadEPFvPvES0_+0x4c>
    80001f80:	00002537          	lui	a0,0x2
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	5bc080e7          	jalr	1468(ra) # 80002540 <_Znam>
    80001f8c:	0080006f          	j	80001f94 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001f90:	00000513          	li	a0,0
            arg(arg)
    80001f94:	00a4b423          	sd	a0,8(s1)
    80001f98:	00000797          	auipc	a5,0x0
    80001f9c:	f5078793          	addi	a5,a5,-176 # 80001ee8 <_ZN3TCB13threadWrapperEv>
    80001fa0:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001fa4:	04050863          	beqz	a0,80001ff4 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    80001fa8:	000027b7          	lui	a5,0x2
    80001fac:	00f50533          	add	a0,a0,a5
            arg(arg)
    80001fb0:	00a4bc23          	sd	a0,24(s1)
    80001fb4:	02048023          	sb	zero,32(s1)
    80001fb8:	020480a3          	sb	zero,33(s1)
            main(body == nullptr),
    80001fbc:	00193913          	seqz	s2,s2
            arg(arg)
    80001fc0:	03248123          	sb	s2,34(s1)
    80001fc4:	0334b423          	sd	s3,40(s1)
    Scheduler::put(newTCB);
    80001fc8:	00048513          	mv	a0,s1
    80001fcc:	00001097          	auipc	ra,0x1
    80001fd0:	cc8080e7          	jalr	-824(ra) # 80002c94 <_ZN9Scheduler3putEP3TCB>
}
    80001fd4:	00048513          	mv	a0,s1
    80001fd8:	02813083          	ld	ra,40(sp)
    80001fdc:	02013403          	ld	s0,32(sp)
    80001fe0:	01813483          	ld	s1,24(sp)
    80001fe4:	01013903          	ld	s2,16(sp)
    80001fe8:	00813983          	ld	s3,8(sp)
    80001fec:	03010113          	addi	sp,sp,48
    80001ff0:	00008067          	ret
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001ff4:	00000513          	li	a0,0
    80001ff8:	fb9ff06f          	j	80001fb0 <_ZN3TCB12createThreadEPFvPvES0_+0x6c>
    80001ffc:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(ptr);
    80002000:	00048513          	mv	a0,s1
    80002004:	00000097          	auipc	ra,0x0
    80002008:	3b4080e7          	jalr	948(ra) # 800023b8 <_ZN15MemoryAllocator8mem_freeEPv>
    8000200c:	00090513          	mv	a0,s2
    80002010:	0000b097          	auipc	ra,0xb
    80002014:	868080e7          	jalr	-1944(ra) # 8000c878 <_Unwind_Resume>

0000000080002018 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_>:
{
    80002018:	fd010113          	addi	sp,sp,-48
    8000201c:	02113423          	sd	ra,40(sp)
    80002020:	02813023          	sd	s0,32(sp)
    80002024:	00913c23          	sd	s1,24(sp)
    80002028:	01213823          	sd	s2,16(sp)
    8000202c:	01313423          	sd	s3,8(sp)
    80002030:	03010413          	addi	s0,sp,48
    80002034:	00050913          	mv	s2,a0
    80002038:	00058993          	mv	s3,a1
        return MemoryAllocator::mem_alloc(newSize);
    8000203c:	04000513          	li	a0,64
    80002040:	00000097          	auipc	ra,0x0
    80002044:	190080e7          	jalr	400(ra) # 800021d0 <_ZN15MemoryAllocator9mem_allocEm>
    80002048:	00050493          	mv	s1,a0
            arg(arg)
    8000204c:	01253023          	sd	s2,0(a0) # 2000 <_entry-0x7fffe000>
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80002050:	00090a63          	beqz	s2,80002064 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0x4c>
    80002054:	00002537          	lui	a0,0x2
    80002058:	00000097          	auipc	ra,0x0
    8000205c:	4e8080e7          	jalr	1256(ra) # 80002540 <_Znam>
    80002060:	0080006f          	j	80002068 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0x50>
    80002064:	00000513          	li	a0,0
            arg(arg)
    80002068:	00a4b423          	sd	a0,8(s1)
    8000206c:	00000797          	auipc	a5,0x0
    80002070:	e7c78793          	addi	a5,a5,-388 # 80001ee8 <_ZN3TCB13threadWrapperEv>
    80002074:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002078:	04050263          	beqz	a0,800020bc <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0xa4>
    8000207c:	000027b7          	lui	a5,0x2
    80002080:	00f50533          	add	a0,a0,a5
            arg(arg)
    80002084:	00a4bc23          	sd	a0,24(s1)
    80002088:	02048023          	sb	zero,32(s1)
    8000208c:	020480a3          	sb	zero,33(s1)
            main(body == nullptr),
    80002090:	00193913          	seqz	s2,s2
            arg(arg)
    80002094:	03248123          	sb	s2,34(s1)
    80002098:	0334b423          	sd	s3,40(s1)
}
    8000209c:	00048513          	mv	a0,s1
    800020a0:	02813083          	ld	ra,40(sp)
    800020a4:	02013403          	ld	s0,32(sp)
    800020a8:	01813483          	ld	s1,24(sp)
    800020ac:	01013903          	ld	s2,16(sp)
    800020b0:	00813983          	ld	s3,8(sp)
    800020b4:	03010113          	addi	sp,sp,48
    800020b8:	00008067          	ret
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800020bc:	00000513          	li	a0,0
    800020c0:	fc5ff06f          	j	80002084 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_+0x6c>
    800020c4:	00050913          	mv	s2,a0
        MemoryAllocator::mem_free(ptr);
    800020c8:	00048513          	mv	a0,s1
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	2ec080e7          	jalr	748(ra) # 800023b8 <_ZN15MemoryAllocator8mem_freeEPv>
    800020d4:	00090513          	mv	a0,s2
    800020d8:	0000a097          	auipc	ra,0xa
    800020dc:	7a0080e7          	jalr	1952(ra) # 8000c878 <_Unwind_Resume>

00000000800020e0 <_ZN3TCB5yieldEv>:
{
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00813423          	sd	s0,8(sp)
    800020e8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    800020ec:	01300793          	li	a5,19
    800020f0:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800020f4:	00000073          	ecall
}
    800020f8:	00813403          	ld	s0,8(sp)
    800020fc:	01010113          	addi	sp,sp,16
    80002100:	00008067          	ret

0000000080002104 <_ZN3TCB8dispatchEv>:
{
    80002104:	fe010113          	addi	sp,sp,-32
    80002108:	00113c23          	sd	ra,24(sp)
    8000210c:	00813823          	sd	s0,16(sp)
    80002110:	00913423          	sd	s1,8(sp)
    80002114:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002118:	00009497          	auipc	s1,0x9
    8000211c:	6084b483          	ld	s1,1544(s1) # 8000b720 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80002120:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002124:	00079663          	bnez	a5,80002130 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return this->blocked; }
    80002128:	0214c783          	lbu	a5,33(s1)
    8000212c:	04078463          	beqz	a5,80002174 <_ZN3TCB8dispatchEv+0x70>
    running = Scheduler::get();
    80002130:	00001097          	auipc	ra,0x1
    80002134:	afc080e7          	jalr	-1284(ra) # 80002c2c <_ZN9Scheduler3getEv>
    80002138:	00009797          	auipc	a5,0x9
    8000213c:	5ea7b423          	sd	a0,1512(a5) # 8000b720 <_ZN3TCB7runningE>
    bool isMain() const { return this->main; }
    80002140:	02254783          	lbu	a5,34(a0) # 2022 <_entry-0x7fffdfde>
    if(running->isMain()) {
    80002144:	04078063          	beqz	a5,80002184 <_ZN3TCB8dispatchEv+0x80>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002148:	10000793          	li	a5,256
    8000214c:	1007a073          	csrs	sstatus,a5
    TCB::contextSwitch(&old->context, &running->context);
    80002150:	01050593          	addi	a1,a0,16
    80002154:	01048513          	addi	a0,s1,16
    80002158:	fffff097          	auipc	ra,0xfffff
    8000215c:	fb8080e7          	jalr	-72(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002160:	01813083          	ld	ra,24(sp)
    80002164:	01013403          	ld	s0,16(sp)
    80002168:	00813483          	ld	s1,8(sp)
    8000216c:	02010113          	addi	sp,sp,32
    80002170:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002174:	00048513          	mv	a0,s1
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	b1c080e7          	jalr	-1252(ra) # 80002c94 <_ZN9Scheduler3putEP3TCB>
    80002180:	fb1ff06f          	j	80002130 <_ZN3TCB8dispatchEv+0x2c>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002184:	10000793          	li	a5,256
    80002188:	1007b073          	csrc	sstatus,a5
}
    8000218c:	fc5ff06f          	j	80002150 <_ZN3TCB8dispatchEv+0x4c>

0000000080002190 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB* handle) {
    80002190:	fe010113          	addi	sp,sp,-32
    80002194:	00113c23          	sd	ra,24(sp)
    80002198:	00813823          	sd	s0,16(sp)
    8000219c:	00913423          	sd	s1,8(sp)
    800021a0:	02010413          	addi	s0,sp,32
    800021a4:	00050493          	mv	s1,a0
    bool isFinished() const { return finished; }
    800021a8:	0204c783          	lbu	a5,32(s1)
    while(!handle->isFinished()) {
    800021ac:	00079863          	bnez	a5,800021bc <_ZN3TCB4joinEPS_+0x2c>
        TCB::dispatch();
    800021b0:	00000097          	auipc	ra,0x0
    800021b4:	f54080e7          	jalr	-172(ra) # 80002104 <_ZN3TCB8dispatchEv>
    while(!handle->isFinished()) {
    800021b8:	ff1ff06f          	j	800021a8 <_ZN3TCB4joinEPS_+0x18>
    }
}
    800021bc:	01813083          	ld	ra,24(sp)
    800021c0:	01013403          	ld	s0,16(sp)
    800021c4:	00813483          	ld	s1,8(sp)
    800021c8:	02010113          	addi	sp,sp,32
    800021cc:	00008067          	ret

00000000800021d0 <_ZN15MemoryAllocator9mem_allocEm>:
int MemoryAllocator::newArrayCalled = 0;
int MemoryAllocator::deleteCalled = 0;
int MemoryAllocator::deleteArrayCalled = 0;


void *MemoryAllocator::mem_alloc(size_t size) {
    800021d0:	ff010113          	addi	sp,sp,-16
    800021d4:	00813423          	sd	s0,8(sp)
    800021d8:	01010413          	addi	s0,sp,16
    800021dc:	00050793          	mv	a5,a0
    size_t newSize;
    if(size%MEM_BLOCK_SIZE != 0) {
    800021e0:	03f57713          	andi	a4,a0,63
    800021e4:	00070663          	beqz	a4,800021f0 <_ZN15MemoryAllocator9mem_allocEm+0x20>
        newSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    800021e8:	03f50793          	addi	a5,a0,63
    800021ec:	fc07f793          	andi	a5,a5,-64
    }
    else {
        newSize = size;
    }

    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
    800021f0:	00009517          	auipc	a0,0x9
    800021f4:	53853503          	ld	a0,1336(a0) # 8000b728 <_ZN15MemoryAllocator4freeE>
    800021f8:	06050e63          	beqz	a0,80002274 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if(curr->size<newSize) continue;
    800021fc:	01053703          	ld	a4,16(a0)
    80002200:	08f76063          	bltu	a4,a5,80002280 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
        if(curr->size > newSize) {
    80002204:	0ce7f663          	bgeu	a5,a4,800022d0 <_ZN15MemoryAllocator9mem_allocEm+0x100>
            //new fragment needs to be created
            //novi ce biti offsetovan od curr za novi size i plus za sizeof(DataBlock) zato sto se posle curr
            // nalazi taj "header"
            DataBlock *newBlock;
            newBlock = (DataBlock*) ((char*)curr + newSize + sizeof(DataBlock));
    80002208:	01878713          	addi	a4,a5,24
    8000220c:	00e50733          	add	a4,a0,a4

            //Azuriranje free liste
            if(curr->prev) curr->prev->next = newBlock;
    80002210:	00853683          	ld	a3,8(a0)
    80002214:	06068a63          	beqz	a3,80002288 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    80002218:	00e6b023          	sd	a4,0(a3)
            else MemoryAllocator::free = newBlock;
            if(curr->next) curr->next->prev = newBlock;
    8000221c:	00053683          	ld	a3,0(a0)
    80002220:	00068463          	beqz	a3,80002228 <_ZN15MemoryAllocator9mem_allocEm+0x58>
    80002224:	00e6b423          	sd	a4,8(a3)
            newBlock->prev = curr->prev;
    80002228:	00853683          	ld	a3,8(a0)
    8000222c:	00d73423          	sd	a3,8(a4)
            newBlock->next = curr->next;
    80002230:	00053683          	ld	a3,0(a0)
    80002234:	00d73023          	sd	a3,0(a4)
            //size novi je sada prethodni size - novi size i jos - sizeof(DataBlock) jer se to ne brise kada se zauzme
            //pa mora i to da se cuva
            newBlock->size = curr->size - newSize - sizeof(DataBlock);
    80002238:	01053683          	ld	a3,16(a0)
    8000223c:	40f686b3          	sub	a3,a3,a5
    80002240:	fe868693          	addi	a3,a3,-24
    80002244:	00d73823          	sd	a3,16(a4)
            curr->size = newSize;
    80002248:	00f53823          	sd	a5,16(a0)


            //azuriranje USED liste
            if(used == nullptr) {
    8000224c:	00009797          	auipc	a5,0x9
    80002250:	4e47b783          	ld	a5,1252(a5) # 8000b730 <_ZN15MemoryAllocator4usedE>
    80002254:	04078063          	beqz	a5,80002294 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
                used = curr;
                curr->next = nullptr;
                curr->prev = nullptr;
            }
            else if((char*) curr < (char*)used) {
    80002258:	04f57863          	bgeu	a0,a5,800022a8 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
                //treba da ide pre trenutnog used
                used->prev = curr;
    8000225c:	00a7b423          	sd	a0,8(a5)
                curr->prev = nullptr;
    80002260:	00053423          	sd	zero,8(a0)
                curr->next = used;
    80002264:	00f53023          	sd	a5,0(a0)
                used = curr;
    80002268:	00009797          	auipc	a5,0x9
    8000226c:	4ca7b423          	sd	a0,1224(a5) # 8000b730 <_ZN15MemoryAllocator4usedE>
                curr->prev = currUsed;
                if(curr->next) curr->next->prev = curr;
                currUsed->next = curr;
            }
        }
        return (char*)curr + sizeof(DataBlock);
    80002270:	01850513          	addi	a0,a0,24
    }
    return nullptr; //should not enter here
}
    80002274:	00813403          	ld	s0,8(sp)
    80002278:	01010113          	addi	sp,sp,16
    8000227c:	00008067          	ret
    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
    80002280:	00053503          	ld	a0,0(a0)
    80002284:	f75ff06f          	j	800021f8 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            else MemoryAllocator::free = newBlock;
    80002288:	00009697          	auipc	a3,0x9
    8000228c:	4ae6b023          	sd	a4,1184(a3) # 8000b728 <_ZN15MemoryAllocator4freeE>
    80002290:	f8dff06f          	j	8000221c <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                used = curr;
    80002294:	00009797          	auipc	a5,0x9
    80002298:	48a7be23          	sd	a0,1180(a5) # 8000b730 <_ZN15MemoryAllocator4usedE>
                curr->next = nullptr;
    8000229c:	00053023          	sd	zero,0(a0)
                curr->prev = nullptr;
    800022a0:	00053423          	sd	zero,8(a0)
    800022a4:	fcdff06f          	j	80002270 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
                for(; currUsed->next && (char*)(currUsed->next) < (char*) curr; currUsed = currUsed->next);
    800022a8:	00078713          	mv	a4,a5
    800022ac:	0007b783          	ld	a5,0(a5)
    800022b0:	00078463          	beqz	a5,800022b8 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    800022b4:	fea7eae3          	bltu	a5,a0,800022a8 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
                curr->next = currUsed->next;
    800022b8:	00f53023          	sd	a5,0(a0)
                curr->prev = currUsed;
    800022bc:	00e53423          	sd	a4,8(a0)
                if(curr->next) curr->next->prev = curr;
    800022c0:	00078463          	beqz	a5,800022c8 <_ZN15MemoryAllocator9mem_allocEm+0xf8>
    800022c4:	00a7b423          	sd	a0,8(a5)
                currUsed->next = curr;
    800022c8:	00a73023          	sd	a0,0(a4)
    800022cc:	fa5ff06f          	j	80002270 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            if (curr->prev) curr->prev->next = curr->next;
    800022d0:	00853783          	ld	a5,8(a0)
    800022d4:	04078263          	beqz	a5,80002318 <_ZN15MemoryAllocator9mem_allocEm+0x148>
    800022d8:	00053703          	ld	a4,0(a0)
    800022dc:	00e7b023          	sd	a4,0(a5)
            if(curr->next) curr->next->prev = curr->prev;
    800022e0:	00053783          	ld	a5,0(a0)
    800022e4:	00078663          	beqz	a5,800022f0 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    800022e8:	00853703          	ld	a4,8(a0)
    800022ec:	00e7b423          	sd	a4,8(a5)
            if(used == nullptr) {
    800022f0:	00009797          	auipc	a5,0x9
    800022f4:	4407b783          	ld	a5,1088(a5) # 8000b730 <_ZN15MemoryAllocator4usedE>
    800022f8:	02078863          	beqz	a5,80002328 <_ZN15MemoryAllocator9mem_allocEm+0x158>
            else if((char*) curr < (char*)used) {
    800022fc:	04f57063          	bgeu	a0,a5,8000233c <_ZN15MemoryAllocator9mem_allocEm+0x16c>
                used->prev = curr;
    80002300:	00a7b423          	sd	a0,8(a5)
                curr->prev = nullptr;
    80002304:	00053423          	sd	zero,8(a0)
                curr->next = used;
    80002308:	00f53023          	sd	a5,0(a0)
                used = curr;
    8000230c:	00009797          	auipc	a5,0x9
    80002310:	42a7b223          	sd	a0,1060(a5) # 8000b730 <_ZN15MemoryAllocator4usedE>
    80002314:	f5dff06f          	j	80002270 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            else MemoryAllocator::free = curr->next;
    80002318:	00053783          	ld	a5,0(a0)
    8000231c:	00009717          	auipc	a4,0x9
    80002320:	40f73623          	sd	a5,1036(a4) # 8000b728 <_ZN15MemoryAllocator4freeE>
    80002324:	fbdff06f          	j	800022e0 <_ZN15MemoryAllocator9mem_allocEm+0x110>
                used = curr;
    80002328:	00009797          	auipc	a5,0x9
    8000232c:	40a7b423          	sd	a0,1032(a5) # 8000b730 <_ZN15MemoryAllocator4usedE>
                curr->next = nullptr;
    80002330:	00053023          	sd	zero,0(a0)
                curr->prev = nullptr;
    80002334:	00053423          	sd	zero,8(a0)
    80002338:	f39ff06f          	j	80002270 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
                for(; currUsed->next && (char*)(currUsed->next) < (char*) curr; currUsed = currUsed->next);
    8000233c:	00078713          	mv	a4,a5
    80002340:	0007b783          	ld	a5,0(a5)
    80002344:	00078463          	beqz	a5,8000234c <_ZN15MemoryAllocator9mem_allocEm+0x17c>
    80002348:	fea7eae3          	bltu	a5,a0,8000233c <_ZN15MemoryAllocator9mem_allocEm+0x16c>
                curr->next = currUsed->next;
    8000234c:	00f53023          	sd	a5,0(a0)
                curr->prev = currUsed;
    80002350:	00e53423          	sd	a4,8(a0)
                if(curr->next) curr->next->prev = curr;
    80002354:	00078463          	beqz	a5,8000235c <_ZN15MemoryAllocator9mem_allocEm+0x18c>
    80002358:	00a7b423          	sd	a0,8(a5)
                currUsed->next = curr;
    8000235c:	00a73023          	sd	a0,0(a4)
    80002360:	f11ff06f          	j	80002270 <_ZN15MemoryAllocator9mem_allocEm+0xa0>

0000000080002364 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>:
        tryToJoin(currFree);
    }
    return 0;
}

void MemoryAllocator::tryToJoin(DataBlock *curr) {
    80002364:	ff010113          	addi	sp,sp,-16
    80002368:	00813423          	sd	s0,8(sp)
    8000236c:	01010413          	addi	s0,sp,16
    if(curr->next && (char*)curr + sizeof(DataBlock) + curr->size == (char*)curr->next) {
    80002370:	00053783          	ld	a5,0(a0)
    80002374:	00078a63          	beqz	a5,80002388 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>
    80002378:	01053683          	ld	a3,16(a0)
    8000237c:	01868713          	addi	a4,a3,24
    80002380:	00e50733          	add	a4,a0,a4
    80002384:	00e78863          	beq	a5,a4,80002394 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x30>
        curr->size += curr->next->size + sizeof(DataBlock);
        curr->next = curr->next->next;
        if(curr->next) curr->next->prev = curr;
    }
}
    80002388:	00813403          	ld	s0,8(sp)
    8000238c:	01010113          	addi	sp,sp,16
    80002390:	00008067          	ret
        curr->size += curr->next->size + sizeof(DataBlock);
    80002394:	0107b703          	ld	a4,16(a5)
    80002398:	00e686b3          	add	a3,a3,a4
    8000239c:	01868693          	addi	a3,a3,24
    800023a0:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    800023a4:	0007b783          	ld	a5,0(a5)
    800023a8:	00f53023          	sd	a5,0(a0)
        if(curr->next) curr->next->prev = curr;
    800023ac:	fc078ee3          	beqz	a5,80002388 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>
    800023b0:	00a7b423          	sd	a0,8(a5)
}
    800023b4:	fd5ff06f          	j	80002388 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>

00000000800023b8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(used == nullptr) return -1;
    800023b8:	00009797          	auipc	a5,0x9
    800023bc:	3787b783          	ld	a5,888(a5) # 8000b730 <_ZN15MemoryAllocator4usedE>
    800023c0:	12078863          	beqz	a5,800024f0 <_ZN15MemoryAllocator8mem_freeEPv+0x138>
    800023c4:	00050713          	mv	a4,a0
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;
    800023c8:	12050863          	beqz	a0,800024f8 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    800023cc:	00009697          	auipc	a3,0x9
    800023d0:	2ac6b683          	ld	a3,684(a3) # 8000b678 <_GLOBAL_OFFSET_TABLE_+0x10>
    800023d4:	0006b683          	ld	a3,0(a3)
    800023d8:	12d56463          	bltu	a0,a3,80002500 <_ZN15MemoryAllocator8mem_freeEPv+0x148>
    800023dc:	00009697          	auipc	a3,0x9
    800023e0:	2ec6b683          	ld	a3,748(a3) # 8000b6c8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800023e4:	0006b683          	ld	a3,0(a3)
    800023e8:	12a6e063          	bltu	a3,a0,80002508 <_ZN15MemoryAllocator8mem_freeEPv+0x150>
    DataBlock* curr = (DataBlock*)((char*)ptr - sizeof(DataBlock));
    800023ec:	fe850513          	addi	a0,a0,-24
    if(curr < used) return -3;
    800023f0:	12f56063          	bltu	a0,a5,80002510 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    if(used == curr) {
    800023f4:	08a78c63          	beq	a5,a0,8000248c <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
        curr->prev->next = curr->next;
    800023f8:	ff073683          	ld	a3,-16(a4)
    800023fc:	fe873783          	ld	a5,-24(a4)
    80002400:	00f6b023          	sd	a5,0(a3)
        if(curr->next) curr->next->prev = curr->prev;
    80002404:	00078663          	beqz	a5,80002410 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80002408:	ff073683          	ld	a3,-16(a4)
    8000240c:	00d7b423          	sd	a3,8(a5)
        curr->next = nullptr;
    80002410:	fe073423          	sd	zero,-24(a4)
        curr->prev = nullptr;
    80002414:	fe073823          	sd	zero,-16(a4)
    if (free == nullptr) {
    80002418:	00009797          	auipc	a5,0x9
    8000241c:	3107b783          	ld	a5,784(a5) # 8000b728 <_ZN15MemoryAllocator4freeE>
    80002420:	08078663          	beqz	a5,800024ac <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
int MemoryAllocator::mem_free(void* ptr) {
    80002424:	fe010113          	addi	sp,sp,-32
    80002428:	00113c23          	sd	ra,24(sp)
    8000242c:	00813823          	sd	s0,16(sp)
    80002430:	00913423          	sd	s1,8(sp)
    80002434:	02010413          	addi	s0,sp,32
    else if((char*)curr < (char*)free) {
    80002438:	08f56663          	bltu	a0,a5,800024c4 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        for(currFree = free; currFree->next && (char*)(currFree->next) < (char*) curr; currFree = currFree->next);
    8000243c:	00078493          	mv	s1,a5
    80002440:	0007b783          	ld	a5,0(a5)
    80002444:	00078463          	beqz	a5,8000244c <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002448:	fea7eae3          	bltu	a5,a0,8000243c <_ZN15MemoryAllocator8mem_freeEPv+0x84>
        curr->next = currFree->next;
    8000244c:	fef73423          	sd	a5,-24(a4)
        curr->prev = currFree;
    80002450:	fe973823          	sd	s1,-16(a4)
        if(curr->next) curr->next->prev = curr;
    80002454:	00078463          	beqz	a5,8000245c <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    80002458:	00a7b423          	sd	a0,8(a5)
        currFree->next = curr;
    8000245c:	00a4b023          	sd	a0,0(s1)
        tryToJoin(curr);
    80002460:	00000097          	auipc	ra,0x0
    80002464:	f04080e7          	jalr	-252(ra) # 80002364 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
        tryToJoin(currFree);
    80002468:	00048513          	mv	a0,s1
    8000246c:	00000097          	auipc	ra,0x0
    80002470:	ef8080e7          	jalr	-264(ra) # 80002364 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
    return 0;
    80002474:	00000513          	li	a0,0
}
    80002478:	01813083          	ld	ra,24(sp)
    8000247c:	01013403          	ld	s0,16(sp)
    80002480:	00813483          	ld	s1,8(sp)
    80002484:	02010113          	addi	sp,sp,32
    80002488:	00008067          	ret
        used = curr->next;
    8000248c:	fe873783          	ld	a5,-24(a4)
    80002490:	00009697          	auipc	a3,0x9
    80002494:	2af6b023          	sd	a5,672(a3) # 8000b730 <_ZN15MemoryAllocator4usedE>
        if(used) used->prev = nullptr;
    80002498:	00078463          	beqz	a5,800024a0 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    8000249c:	0007b423          	sd	zero,8(a5)
        curr->next = nullptr;
    800024a0:	fe073423          	sd	zero,-24(a4)
        curr->prev = nullptr;
    800024a4:	fe073823          	sd	zero,-16(a4)
    800024a8:	f71ff06f          	j	80002418 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
        free = curr;
    800024ac:	00009797          	auipc	a5,0x9
    800024b0:	26a7be23          	sd	a0,636(a5) # 8000b728 <_ZN15MemoryAllocator4freeE>
        curr->next = nullptr;
    800024b4:	fe073423          	sd	zero,-24(a4)
        curr->prev = nullptr;
    800024b8:	fe073823          	sd	zero,-16(a4)
    return 0;
    800024bc:	00000513          	li	a0,0
    800024c0:	00008067          	ret
        free->prev = curr;
    800024c4:	00a7b423          	sd	a0,8(a5)
        curr->prev = nullptr;
    800024c8:	fe073823          	sd	zero,-16(a4)
        curr->next = free;
    800024cc:	00009797          	auipc	a5,0x9
    800024d0:	25c78793          	addi	a5,a5,604 # 8000b728 <_ZN15MemoryAllocator4freeE>
    800024d4:	0007b683          	ld	a3,0(a5)
    800024d8:	fed73423          	sd	a3,-24(a4)
        free = curr;
    800024dc:	00a7b023          	sd	a0,0(a5)
        tryToJoin(free);
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	e84080e7          	jalr	-380(ra) # 80002364 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
    return 0;
    800024e8:	00000513          	li	a0,0
    800024ec:	f8dff06f          	j	80002478 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
    if(used == nullptr) return -1;
    800024f0:	fff00513          	li	a0,-1
    800024f4:	00008067          	ret
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;
    800024f8:	ffe00513          	li	a0,-2
    800024fc:	00008067          	ret
    80002500:	ffe00513          	li	a0,-2
    80002504:	00008067          	ret
    80002508:	ffe00513          	li	a0,-2
    8000250c:	00008067          	ret
    if(curr < used) return -3;
    80002510:	ffd00513          	li	a0,-3
}
    80002514:	00008067          	ret

0000000080002518 <_Znwm>:

//******************SYSCALL MEMORY*********************************


void *operator new(size_t n)
{
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00113423          	sd	ra,8(sp)
    80002520:	00813023          	sd	s0,0(sp)
    80002524:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002528:	fffff097          	auipc	ra,0xfffff
    8000252c:	f90080e7          	jalr	-112(ra) # 800014b8 <_Z9mem_allocm>
}
    80002530:	00813083          	ld	ra,8(sp)
    80002534:	00013403          	ld	s0,0(sp)
    80002538:	01010113          	addi	sp,sp,16
    8000253c:	00008067          	ret

0000000080002540 <_Znam>:

void *operator new[](size_t n)
{
    80002540:	ff010113          	addi	sp,sp,-16
    80002544:	00113423          	sd	ra,8(sp)
    80002548:	00813023          	sd	s0,0(sp)
    8000254c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002550:	fffff097          	auipc	ra,0xfffff
    80002554:	f68080e7          	jalr	-152(ra) # 800014b8 <_Z9mem_allocm>
}
    80002558:	00813083          	ld	ra,8(sp)
    8000255c:	00013403          	ld	s0,0(sp)
    80002560:	01010113          	addi	sp,sp,16
    80002564:	00008067          	ret

0000000080002568 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002568:	ff010113          	addi	sp,sp,-16
    8000256c:	00113423          	sd	ra,8(sp)
    80002570:	00813023          	sd	s0,0(sp)
    80002574:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002578:	fffff097          	auipc	ra,0xfffff
    8000257c:	f78080e7          	jalr	-136(ra) # 800014f0 <_Z8mem_freePv>
}
    80002580:	00813083          	ld	ra,8(sp)
    80002584:	00013403          	ld	s0,0(sp)
    80002588:	01010113          	addi	sp,sp,16
    8000258c:	00008067          	ret

0000000080002590 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002590:	ff010113          	addi	sp,sp,-16
    80002594:	00113423          	sd	ra,8(sp)
    80002598:	00813023          	sd	s0,0(sp)
    8000259c:	01010413          	addi	s0,sp,16
    mem_free(p);
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	f50080e7          	jalr	-176(ra) # 800014f0 <_Z8mem_freePv>
}
    800025a8:	00813083          	ld	ra,8(sp)
    800025ac:	00013403          	ld	s0,0(sp)
    800025b0:	01010113          	addi	sp,sp,16
    800025b4:	00008067          	ret

00000000800025b8 <_ZN6Thread3runEv>:

Thread::Thread() {
    thread_create_without_start(&this->myHandle, runWrapper, this);
}

void Thread::run() {
    800025b8:	ff010113          	addi	sp,sp,-16
    800025bc:	00813423          	sd	s0,8(sp)
    800025c0:	01010413          	addi	s0,sp,16
    //todo
}
    800025c4:	00813403          	ld	s0,8(sp)
    800025c8:	01010113          	addi	sp,sp,16
    800025cc:	00008067          	ret

00000000800025d0 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    800025d0:	ff010113          	addi	sp,sp,-16
    800025d4:	00113423          	sd	ra,8(sp)
    800025d8:	00813023          	sd	s0,0(sp)
    800025dc:	01010413          	addi	s0,sp,16
    800025e0:	00009797          	auipc	a5,0x9
    800025e4:	ea878793          	addi	a5,a5,-344 # 8000b488 <_ZTV9Semaphore+0x10>
    800025e8:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    800025ec:	00853503          	ld	a0,8(a0)
    800025f0:	fffff097          	auipc	ra,0xfffff
    800025f4:	058080e7          	jalr	88(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
}
    800025f8:	00813083          	ld	ra,8(sp)
    800025fc:	00013403          	ld	s0,0(sp)
    80002600:	01010113          	addi	sp,sp,16
    80002604:	00008067          	ret

0000000080002608 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002608:	fe010113          	addi	sp,sp,-32
    8000260c:	00113c23          	sd	ra,24(sp)
    80002610:	00813823          	sd	s0,16(sp)
    80002614:	00913423          	sd	s1,8(sp)
    80002618:	02010413          	addi	s0,sp,32
    8000261c:	00050493          	mv	s1,a0
}
    80002620:	00000097          	auipc	ra,0x0
    80002624:	fb0080e7          	jalr	-80(ra) # 800025d0 <_ZN9SemaphoreD1Ev>
    80002628:	00048513          	mv	a0,s1
    8000262c:	00000097          	auipc	ra,0x0
    80002630:	f3c080e7          	jalr	-196(ra) # 80002568 <_ZdlPv>
    80002634:	01813083          	ld	ra,24(sp)
    80002638:	01013403          	ld	s0,16(sp)
    8000263c:	00813483          	ld	s1,8(sp)
    80002640:	02010113          	addi	sp,sp,32
    80002644:	00008067          	ret

0000000080002648 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00113423          	sd	ra,8(sp)
    80002650:	00813023          	sd	s0,0(sp)
    80002654:	01010413          	addi	s0,sp,16
    80002658:	00009797          	auipc	a5,0x9
    8000265c:	e5078793          	addi	a5,a5,-432 # 8000b4a8 <_ZTV6Thread+0x10>
    80002660:	00f53023          	sd	a5,0(a0)
    thread_exit(); //Da li ovo tako treba? Msm da ne
    80002664:	fffff097          	auipc	ra,0xfffff
    80002668:	f44080e7          	jalr	-188(ra) # 800015a8 <_Z11thread_exitv>
}
    8000266c:	00813083          	ld	ra,8(sp)
    80002670:	00013403          	ld	s0,0(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000267c:	fe010113          	addi	sp,sp,-32
    80002680:	00113c23          	sd	ra,24(sp)
    80002684:	00813823          	sd	s0,16(sp)
    80002688:	00913423          	sd	s1,8(sp)
    8000268c:	02010413          	addi	s0,sp,32
    80002690:	00050493          	mv	s1,a0
}
    80002694:	00000097          	auipc	ra,0x0
    80002698:	fb4080e7          	jalr	-76(ra) # 80002648 <_ZN6ThreadD1Ev>
    8000269c:	00048513          	mv	a0,s1
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	ec8080e7          	jalr	-312(ra) # 80002568 <_ZdlPv>
    800026a8:	01813083          	ld	ra,24(sp)
    800026ac:	01013403          	ld	s0,16(sp)
    800026b0:	00813483          	ld	s1,8(sp)
    800026b4:	02010113          	addi	sp,sp,32
    800026b8:	00008067          	ret

00000000800026bc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800026bc:	ff010113          	addi	sp,sp,-16
    800026c0:	00113423          	sd	ra,8(sp)
    800026c4:	00813023          	sd	s0,0(sp)
    800026c8:	01010413          	addi	s0,sp,16
    800026cc:	00009797          	auipc	a5,0x9
    800026d0:	dbc78793          	addi	a5,a5,-580 # 8000b488 <_ZTV9Semaphore+0x10>
    800026d4:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    800026d8:	00850513          	addi	a0,a0,8
    800026dc:	fffff097          	auipc	ra,0xfffff
    800026e0:	f3c080e7          	jalr	-196(ra) # 80001618 <_Z8sem_openPP11MySemaphorej>
}
    800026e4:	00813083          	ld	ra,8(sp)
    800026e8:	00013403          	ld	s0,0(sp)
    800026ec:	01010113          	addi	sp,sp,16
    800026f0:	00008067          	ret

00000000800026f4 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800026f4:	ff010113          	addi	sp,sp,-16
    800026f8:	00113423          	sd	ra,8(sp)
    800026fc:	00813023          	sd	s0,0(sp)
    80002700:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    80002704:	00853503          	ld	a0,8(a0)
    80002708:	fffff097          	auipc	ra,0xfffff
    8000270c:	f6c080e7          	jalr	-148(ra) # 80001674 <_Z8sem_waitP11MySemaphore>
}
    80002710:	00813083          	ld	ra,8(sp)
    80002714:	00013403          	ld	s0,0(sp)
    80002718:	01010113          	addi	sp,sp,16
    8000271c:	00008067          	ret

0000000080002720 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002720:	ff010113          	addi	sp,sp,-16
    80002724:	00113423          	sd	ra,8(sp)
    80002728:	00813023          	sd	s0,0(sp)
    8000272c:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    80002730:	00853503          	ld	a0,8(a0)
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	f6c080e7          	jalr	-148(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>
}
    8000273c:	00813083          	ld	ra,8(sp)
    80002740:	00013403          	ld	s0,0(sp)
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret

000000008000274c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00113423          	sd	ra,8(sp)
    80002754:	00813023          	sd	s0,0(sp)
    80002758:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000275c:	fffff097          	auipc	ra,0xfffff
    80002760:	e78080e7          	jalr	-392(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80002764:	00813083          	ld	ra,8(sp)
    80002768:	00013403          	ld	s0,0(sp)
    8000276c:	01010113          	addi	sp,sp,16
    80002770:	00008067          	ret

0000000080002774 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002774:	ff010113          	addi	sp,sp,-16
    80002778:	00113423          	sd	ra,8(sp)
    8000277c:	00813023          	sd	s0,0(sp)
    80002780:	01010413          	addi	s0,sp,16
    80002784:	00009797          	auipc	a5,0x9
    80002788:	d2478793          	addi	a5,a5,-732 # 8000b4a8 <_ZTV6Thread+0x10>
    8000278c:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    80002790:	00850513          	addi	a0,a0,8
    80002794:	fffff097          	auipc	ra,0xfffff
    80002798:	de0080e7          	jalr	-544(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
}
    8000279c:	00813083          	ld	ra,8(sp)
    800027a0:	00013403          	ld	s0,0(sp)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <_ZN6Thread4joinEv>:
void Thread::join() {
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00113423          	sd	ra,8(sp)
    800027b4:	00813023          	sd	s0,0(sp)
    800027b8:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    800027bc:	00853503          	ld	a0,8(a0)
    800027c0:	fffff097          	auipc	ra,0xfffff
    800027c4:	e34080e7          	jalr	-460(ra) # 800015f4 <_Z11thread_joinP3TCB>
}
    800027c8:	00813083          	ld	ra,8(sp)
    800027cc:	00013403          	ld	s0,0(sp)
    800027d0:	01010113          	addi	sp,sp,16
    800027d4:	00008067          	ret

00000000800027d8 <_ZN6Thread5startEv>:
int Thread::start() {
    800027d8:	ff010113          	addi	sp,sp,-16
    800027dc:	00113423          	sd	ra,8(sp)
    800027e0:	00813023          	sd	s0,0(sp)
    800027e4:	01010413          	addi	s0,sp,16
    thread_start(this->myHandle);
    800027e8:	00853503          	ld	a0,8(a0)
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	d30080e7          	jalr	-720(ra) # 8000151c <_Z12thread_startP3TCB>
}
    800027f4:	00000513          	li	a0,0
    800027f8:	00813083          	ld	ra,8(sp)
    800027fc:	00013403          	ld	s0,0(sp)
    80002800:	01010113          	addi	sp,sp,16
    80002804:	00008067          	ret

0000000080002808 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002808:	ff010113          	addi	sp,sp,-16
    8000280c:	00113423          	sd	ra,8(sp)
    80002810:	00813023          	sd	s0,0(sp)
    80002814:	01010413          	addi	s0,sp,16
    80002818:	00009797          	auipc	a5,0x9
    8000281c:	c9078793          	addi	a5,a5,-880 # 8000b4a8 <_ZTV6Thread+0x10>
    80002820:	00f53023          	sd	a5,0(a0)
    thread_create_without_start(&this->myHandle, runWrapper, this);
    80002824:	00050613          	mv	a2,a0
    80002828:	00000597          	auipc	a1,0x0
    8000282c:	09058593          	addi	a1,a1,144 # 800028b8 <_ZN6Thread10runWrapperEPv>
    80002830:	00850513          	addi	a0,a0,8
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	d0c080e7          	jalr	-756(ra) # 80001540 <_Z27thread_create_without_startPP3TCBPFvPvES2_>
}
    8000283c:	00813083          	ld	ra,8(sp)
    80002840:	00013403          	ld	s0,0(sp)
    80002844:	01010113          	addi	sp,sp,16
    80002848:	00008067          	ret

000000008000284c <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t time) {
    8000284c:	ff010113          	addi	sp,sp,-16
    80002850:	00813423          	sd	s0,8(sp)
    80002854:	01010413          	addi	s0,sp,16
    return 0;
}
    80002858:	00000513          	li	a0,0
    8000285c:	00813403          	ld	s0,8(sp)
    80002860:	01010113          	addi	sp,sp,16
    80002864:	00008067          	ret

0000000080002868 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002868:	ff010113          	addi	sp,sp,-16
    8000286c:	00113423          	sd	ra,8(sp)
    80002870:	00813023          	sd	s0,0(sp)
    80002874:	01010413          	addi	s0,sp,16
    syscall_c::putc(c);
    80002878:	fffff097          	auipc	ra,0xfffff
    8000287c:	e7c080e7          	jalr	-388(ra) # 800016f4 <_Z4putcc>
}
    80002880:	00813083          	ld	ra,8(sp)
    80002884:	00013403          	ld	s0,0(sp)
    80002888:	01010113          	addi	sp,sp,16
    8000288c:	00008067          	ret

0000000080002890 <_ZN7Console4getcEv>:

char Console::getc() {
    80002890:	ff010113          	addi	sp,sp,-16
    80002894:	00113423          	sd	ra,8(sp)
    80002898:	00813023          	sd	s0,0(sp)
    8000289c:	01010413          	addi	s0,sp,16
    return syscall_c::getc();
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	e2c080e7          	jalr	-468(ra) # 800016cc <_Z4getcv>
}
    800028a8:	00813083          	ld	ra,8(sp)
    800028ac:	00013403          	ld	s0,0(sp)
    800028b0:	01010113          	addi	sp,sp,16
    800028b4:	00008067          	ret

00000000800028b8 <_ZN6Thread10runWrapperEPv>:
    void (*body)(void*);
    void* arg;

    //wrapper za poziv run() metode
    static void runWrapper(void* thread) {
        if(thread) {
    800028b8:	02050863          	beqz	a0,800028e8 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread) {
    800028bc:	ff010113          	addi	sp,sp,-16
    800028c0:	00113423          	sd	ra,8(sp)
    800028c4:	00813023          	sd	s0,0(sp)
    800028c8:	01010413          	addi	s0,sp,16
            ((Thread*)thread)->run();
    800028cc:	00053783          	ld	a5,0(a0)
    800028d0:	0107b783          	ld	a5,16(a5)
    800028d4:	000780e7          	jalr	a5
        }
    }
    800028d8:	00813083          	ld	ra,8(sp)
    800028dc:	00013403          	ld	s0,0(sp)
    800028e0:	01010113          	addi	sp,sp,16
    800028e4:	00008067          	ret
    800028e8:	00008067          	ret

00000000800028ec <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"

void Riscv::popSppSpie()
{
    800028ec:	ff010113          	addi	sp,sp,-16
    800028f0:	00813423          	sd	s0,8(sp)
    800028f4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800028f8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800028fc:	10200073          	sret
}
    80002900:	00813403          	ld	s0,8(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void*);

void Riscv::handleSupervisorTrap()
{
    8000290c:	fb010113          	addi	sp,sp,-80
    80002910:	04113423          	sd	ra,72(sp)
    80002914:	04813023          	sd	s0,64(sp)
    80002918:	02913c23          	sd	s1,56(sp)
    8000291c:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002920:	142027f3          	csrr	a5,scause
    80002924:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80002928:	fc043483          	ld	s1,-64(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    8000292c:	ff848713          	addi	a4,s1,-8
    80002930:	00100793          	li	a5,1
    80002934:	22e7ec63          	bltu	a5,a4,80002b6c <_ZN5Riscv20handleSupervisorTrapEv+0x260>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002938:	141027f3          	csrr	a5,sepc
    8000293c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002940:	fd843783          	ld	a5,-40(s0)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 volatile sepc = r_sepc() + 4;
    80002944:	00478793          	addi	a5,a5,4
    80002948:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000294c:	100027f3          	csrr	a5,sstatus
    80002950:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002954:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80002958:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    8000295c:	00050793          	mv	a5,a0
    80002960:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80002964:	fc843783          	ld	a5,-56(s0)

        uint64 codeOperation = Riscv::r_a0();
        int returnValue;
        MySemaphore* semHandlePtr;
        switch (codeOperation) {
    80002968:	04300713          	li	a4,67
    8000296c:	02f76a63          	bltu	a4,a5,800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
    80002970:	00279793          	slli	a5,a5,0x2
    80002974:	00007717          	auipc	a4,0x7
    80002978:	84c70713          	addi	a4,a4,-1972 # 800091c0 <CONSOLE_STATUS+0x1b0>
    8000297c:	00e787b3          	add	a5,a5,a4
    80002980:	0007a783          	lw	a5,0(a5)
    80002984:	00e787b3          	add	a5,a5,a4
    80002988:	00078067          	jr	a5
            case 0x01:
                //mem_alloc(size)

                size_t size;
                void* ptr;
                __asm__ volatile("mv %0, a1" : "=r" (size));
    8000298c:	00058513          	mv	a0,a1
                ptr = MemoryAllocator::mem_alloc(size);
    80002990:	00000097          	auipc	ra,0x0
    80002994:	840080e7          	jalr	-1984(ra) # 800021d0 <_ZN15MemoryAllocator9mem_allocEm>

                __asm__ volatile("mv t0, %0" : : "r"(ptr));
    80002998:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    8000299c:	04542823          	sw	t0,80(s0)
                break;
            default:
                break;
        }

        w_sstatus(sstatus);
    800029a0:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800029a4:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800029a8:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800029ac:	14179073          	csrw	sepc,a5
        // Ovde se ulazi ako se desi neki interrupt tabele
        printString("ERROR! SCAUSE:");
        printInt(scause);
        printString("\n");
    }
}
    800029b0:	04813083          	ld	ra,72(sp)
    800029b4:	04013403          	ld	s0,64(sp)
    800029b8:	03813483          	ld	s1,56(sp)
    800029bc:	05010113          	addi	sp,sp,80
    800029c0:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r" (memptr));
    800029c4:	00058513          	mv	a0,a1
                returnValue = MemoryAllocator::mem_free(memptr);
    800029c8:	00000097          	auipc	ra,0x0
    800029cc:	9f0080e7          	jalr	-1552(ra) # 800023b8 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv t0, %0" : : "r"(returnValue));
    800029d0:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800029d4:	04542823          	sw	t0,80(s0)
                break;
    800029d8:	fc9ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile("mv %0, a1" : "=r" (tcbForStart));
    800029dc:	00058513          	mv	a0,a1
        Scheduler::put(tcbToStart);
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	2b4080e7          	jalr	692(ra) # 80002c94 <_ZN9Scheduler3putEP3TCB>
    }
    800029e8:	fb9ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile ("mv %0, a1" : "=r" (tcbNoStart));
    800029ec:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (bodyNoStart));
    800029f0:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a7" : "=r" (argNoStart));
    800029f4:	00088593          	mv	a1,a7
                *tcbNoStart = TCB::createThreadWithoutStarting(bodyNoStart, argNoStart);
    800029f8:	fffff097          	auipc	ra,0xfffff
    800029fc:	620080e7          	jalr	1568(ra) # 80002018 <_ZN3TCB27createThreadWithoutStartingEPFvPvES0_>
    80002a00:	00a4b023          	sd	a0,0(s1)
                if(*tcbNoStart != nullptr) {
    80002a04:	00050863          	beqz	a0,80002a14 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                    __asm__ volatile ("li t0, 0");
    80002a08:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002a0c:	04542823          	sw	t0,80(s0)
    80002a10:	f91ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                    __asm__ volatile ("li t0, -1");
    80002a14:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002a18:	04542823          	sw	t0,80(s0)
    80002a1c:	f85ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    80002a20:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002a24:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a7" : "=r" (arg));
    80002a28:	00088593          	mv	a1,a7
                *tcb = TCB::createThread(body, arg);
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	518080e7          	jalr	1304(ra) # 80001f44 <_ZN3TCB12createThreadEPFvPvES0_>
    80002a34:	00a4b023          	sd	a0,0(s1)
                if(*tcb != nullptr) {
    80002a38:	00050863          	beqz	a0,80002a48 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
                    __asm__ volatile ("li t0, 0");
    80002a3c:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002a40:	04542823          	sw	t0,80(s0)
    80002a44:	f5dff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                    __asm__ volatile ("li t0, -1");
    80002a48:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002a4c:	04542823          	sw	t0,80(s0)
    80002a50:	f51ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                TCB::running->setFinished(true);
    80002a54:	00009797          	auipc	a5,0x9
    80002a58:	c6c7b783          	ld	a5,-916(a5) # 8000b6c0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002a5c:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002a60:	00100713          	li	a4,1
    80002a64:	02e78023          	sb	a4,32(a5)
                TCB::dispatch();
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	69c080e7          	jalr	1692(ra) # 80002104 <_ZN3TCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    80002a70:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    80002a74:	04542823          	sw	t0,80(s0)
                break;
    80002a78:	f29ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                TCB::dispatch();
    80002a7c:	fffff097          	auipc	ra,0xfffff
    80002a80:	688080e7          	jalr	1672(ra) # 80002104 <_ZN3TCB8dispatchEv>
                break;
    80002a84:	f1dff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002a88:	00058513          	mv	a0,a1
                TCB::join(handle);
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	704080e7          	jalr	1796(ra) # 80002190 <_ZN3TCB4joinEPS_>
                break;
    80002a94:	f0dff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile ("mv %0, a2" : "=r" (init));
    80002a98:	00060513          	mv	a0,a2
    80002a9c:	0005051b          	sext.w	a0,a0
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80002aa0:	00058493          	mv	s1,a1
                *semHandle = MySemaphore::createSemaphore(init);
    80002aa4:	fffff097          	auipc	ra,0xfffff
    80002aa8:	df8080e7          	jalr	-520(ra) # 8000189c <_ZN11MySemaphore15createSemaphoreEj>
    80002aac:	00a4b023          	sd	a0,0(s1)
                if(*semHandle != nullptr) {
    80002ab0:	00050863          	beqz	a0,80002ac0 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                    __asm__ volatile ("li t0, 0");
    80002ab4:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002ab8:	04542823          	sw	t0,80(s0)
    80002abc:	ee5ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                    __asm__ volatile ("li t0, -1");
    80002ac0:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002ac4:	04542823          	sw	t0,80(s0)
    80002ac8:	ed9ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002acc:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    80002ad0:	00050c63          	beqz	a0,80002ae8 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
                    returnValue = semHandlePtr->close();
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	e10080e7          	jalr	-496(ra) # 800018e4 <_ZN11MySemaphore5closeEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002adc:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002ae0:	04542823          	sw	t0,80(s0)
                break;
    80002ae4:	ebdff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                else returnValue = -2;
    80002ae8:	ffe00513          	li	a0,-2
    80002aec:	ff1ff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002af0:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    80002af4:	00050c63          	beqz	a0,80002b0c <_ZN5Riscv20handleSupervisorTrapEv+0x200>
                    returnValue = semHandlePtr->wait();
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	c3c080e7          	jalr	-964(ra) # 80001734 <_ZN11MySemaphore4waitEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002b00:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002b04:	04542823          	sw	t0,80(s0)
                break;
    80002b08:	e99ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                else returnValue = -2;
    80002b0c:	ffe00513          	li	a0,-2
    80002b10:	ff1ff06f          	j	80002b00 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002b14:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr)
    80002b18:	00050c63          	beqz	a0,80002b30 <_ZN5Riscv20handleSupervisorTrapEv+0x224>
                    returnValue = semHandlePtr->signal();
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	ce4080e7          	jalr	-796(ra) # 80001800 <_ZN11MySemaphore6signalEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002b24:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002b28:	04542823          	sw	t0,80(s0)
                break;
    80002b2c:	e75ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                    returnValue = -2;
    80002b30:	ffe00513          	li	a0,-2
    80002b34:	ff1ff06f          	j	80002b24 <_ZN5Riscv20handleSupervisorTrapEv+0x218>
                returnValue = __getc();
    80002b38:	00006097          	auipc	ra,0x6
    80002b3c:	9b0080e7          	jalr	-1616(ra) # 800084e8 <__getc>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002b40:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002b44:	04542823          	sw	t0,80(s0)
                break;
    80002b48:	e59ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                __asm__ volatile ("mv %0, a1" : "=r" (c));
    80002b4c:	00058513          	mv	a0,a1
                __putc(c);
    80002b50:	0ff57513          	andi	a0,a0,255
    80002b54:	00006097          	auipc	ra,0x6
    80002b58:	958080e7          	jalr	-1704(ra) # 800084ac <__putc>
                break;
    80002b5c:	e45ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
                TCB::dispatch();
    80002b60:	fffff097          	auipc	ra,0xfffff
    80002b64:	5a4080e7          	jalr	1444(ra) # 80002104 <_ZN3TCB8dispatchEv>
                break;
    80002b68:	e39ff06f          	j	800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x94>
        printString("ERROR! SCAUSE:");
    80002b6c:	00006517          	auipc	a0,0x6
    80002b70:	64450513          	addi	a0,a0,1604 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80002b74:	00002097          	auipc	ra,0x2
    80002b78:	638080e7          	jalr	1592(ra) # 800051ac <_Z11printStringPKc>
        printInt(scause);
    80002b7c:	00000613          	li	a2,0
    80002b80:	00a00593          	li	a1,10
    80002b84:	0004851b          	sext.w	a0,s1
    80002b88:	00002097          	auipc	ra,0x2
    80002b8c:	7d4080e7          	jalr	2004(ra) # 8000535c <_Z8printIntiii>
        printString("\n");
    80002b90:	00006517          	auipc	a0,0x6
    80002b94:	61850513          	addi	a0,a0,1560 # 800091a8 <CONSOLE_STATUS+0x198>
    80002b98:	00002097          	auipc	ra,0x2
    80002b9c:	614080e7          	jalr	1556(ra) # 800051ac <_Z11printStringPKc>
}
    80002ba0:	e11ff06f          	j	800029b0 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>

0000000080002ba4 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    80002ba4:	ff010113          	addi	sp,sp,-16
    80002ba8:	00113423          	sd	ra,8(sp)
    80002bac:	00813023          	sd	s0,0(sp)
    80002bb0:	01010413          	addi	s0,sp,16
    console_handler();
    80002bb4:	00006097          	auipc	ra,0x6
    80002bb8:	96c080e7          	jalr	-1684(ra) # 80008520 <console_handler>
}
    80002bbc:	00813083          	ld	ra,8(sp)
    80002bc0:	00013403          	ld	s0,0(sp)
    80002bc4:	01010113          	addi	sp,sp,16
    80002bc8:	00008067          	ret

0000000080002bcc <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    80002bcc:	ff010113          	addi	sp,sp,-16
    80002bd0:	00813423          	sd	s0,8(sp)
    80002bd4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002bd8:	00200793          	li	a5,2
    80002bdc:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
    80002be0:	00813403          	ld	s0,8(sp)
    80002be4:	01010113          	addi	sp,sp,16
    80002be8:	00008067          	ret

0000000080002bec <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002bec:	ff010113          	addi	sp,sp,-16
    80002bf0:	00813423          	sd	s0,8(sp)
    80002bf4:	01010413          	addi	s0,sp,16
    80002bf8:	00100793          	li	a5,1
    80002bfc:	00f50863          	beq	a0,a5,80002c0c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002c00:	00813403          	ld	s0,8(sp)
    80002c04:	01010113          	addi	sp,sp,16
    80002c08:	00008067          	ret
    80002c0c:	000107b7          	lui	a5,0x10
    80002c10:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002c14:	fef596e3          	bne	a1,a5,80002c00 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002c18:	00009797          	auipc	a5,0x9
    80002c1c:	b3078793          	addi	a5,a5,-1232 # 8000b748 <_ZN9Scheduler16readyThreadQueueE>
    80002c20:	0007b023          	sd	zero,0(a5)
    80002c24:	0007b423          	sd	zero,8(a5)
    80002c28:	fd9ff06f          	j	80002c00 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002c2c <_ZN9Scheduler3getEv>:
{
    80002c2c:	fe010113          	addi	sp,sp,-32
    80002c30:	00113c23          	sd	ra,24(sp)
    80002c34:	00813823          	sd	s0,16(sp)
    80002c38:	00913423          	sd	s1,8(sp)
    80002c3c:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002c40:	00009517          	auipc	a0,0x9
    80002c44:	b0853503          	ld	a0,-1272(a0) # 8000b748 <_ZN9Scheduler16readyThreadQueueE>
    80002c48:	04050263          	beqz	a0,80002c8c <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002c4c:	00853783          	ld	a5,8(a0)
    80002c50:	00009717          	auipc	a4,0x9
    80002c54:	aef73c23          	sd	a5,-1288(a4) # 8000b748 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002c58:	02078463          	beqz	a5,80002c80 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002c5c:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80002c60:	fffff097          	auipc	ra,0xfffff
    80002c64:	758080e7          	jalr	1880(ra) # 800023b8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002c68:	00048513          	mv	a0,s1
    80002c6c:	01813083          	ld	ra,24(sp)
    80002c70:	01013403          	ld	s0,16(sp)
    80002c74:	00813483          	ld	s1,8(sp)
    80002c78:	02010113          	addi	sp,sp,32
    80002c7c:	00008067          	ret
        if (!head) { tail = 0; }
    80002c80:	00009797          	auipc	a5,0x9
    80002c84:	ac07b823          	sd	zero,-1328(a5) # 8000b750 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002c88:	fd5ff06f          	j	80002c5c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002c8c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002c90:	fd9ff06f          	j	80002c68 <_ZN9Scheduler3getEv+0x3c>

0000000080002c94 <_ZN9Scheduler3putEP3TCB>:
{
    80002c94:	fe010113          	addi	sp,sp,-32
    80002c98:	00113c23          	sd	ra,24(sp)
    80002c9c:	00813823          	sd	s0,16(sp)
    80002ca0:	00913423          	sd	s1,8(sp)
    80002ca4:	02010413          	addi	s0,sp,32
    80002ca8:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(newSize);
    80002cac:	04000513          	li	a0,64
    80002cb0:	fffff097          	auipc	ra,0xfffff
    80002cb4:	520080e7          	jalr	1312(ra) # 800021d0 <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002cb8:	00953023          	sd	s1,0(a0)
    80002cbc:	00053423          	sd	zero,8(a0)
        if (tail)
    80002cc0:	00009797          	auipc	a5,0x9
    80002cc4:	a907b783          	ld	a5,-1392(a5) # 8000b750 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002cc8:	02078263          	beqz	a5,80002cec <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002ccc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002cd0:	00009797          	auipc	a5,0x9
    80002cd4:	a8a7b023          	sd	a0,-1408(a5) # 8000b750 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002cd8:	01813083          	ld	ra,24(sp)
    80002cdc:	01013403          	ld	s0,16(sp)
    80002ce0:	00813483          	ld	s1,8(sp)
    80002ce4:	02010113          	addi	sp,sp,32
    80002ce8:	00008067          	ret
            head = tail = elem;
    80002cec:	00009797          	auipc	a5,0x9
    80002cf0:	a5c78793          	addi	a5,a5,-1444 # 8000b748 <_ZN9Scheduler16readyThreadQueueE>
    80002cf4:	00a7b423          	sd	a0,8(a5)
    80002cf8:	00a7b023          	sd	a0,0(a5)
    80002cfc:	fddff06f          	j	80002cd8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002d00 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002d00:	ff010113          	addi	sp,sp,-16
    80002d04:	00113423          	sd	ra,8(sp)
    80002d08:	00813023          	sd	s0,0(sp)
    80002d0c:	01010413          	addi	s0,sp,16
    80002d10:	000105b7          	lui	a1,0x10
    80002d14:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002d18:	00100513          	li	a0,1
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	ed0080e7          	jalr	-304(ra) # 80002bec <_Z41__static_initialization_and_destruction_0ii>
    80002d24:	00813083          	ld	ra,8(sp)
    80002d28:	00013403          	ld	s0,0(sp)
    80002d2c:	01010113          	addi	sp,sp,16
    80002d30:	00008067          	ret

0000000080002d34 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002d34:	fe010113          	addi	sp,sp,-32
    80002d38:	00113c23          	sd	ra,24(sp)
    80002d3c:	00813823          	sd	s0,16(sp)
    80002d40:	00913423          	sd	s1,8(sp)
    80002d44:	01213023          	sd	s2,0(sp)
    80002d48:	02010413          	addi	s0,sp,32
    80002d4c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002d50:	00000913          	li	s2,0
    80002d54:	00c0006f          	j	80002d60 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002d58:	fffff097          	auipc	ra,0xfffff
    80002d5c:	87c080e7          	jalr	-1924(ra) # 800015d4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002d60:	fffff097          	auipc	ra,0xfffff
    80002d64:	96c080e7          	jalr	-1684(ra) # 800016cc <_Z4getcv>
    80002d68:	0005059b          	sext.w	a1,a0
    80002d6c:	01b00793          	li	a5,27
    80002d70:	02f58a63          	beq	a1,a5,80002da4 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002d74:	0084b503          	ld	a0,8(s1)
    80002d78:	00003097          	auipc	ra,0x3
    80002d7c:	3f4080e7          	jalr	1012(ra) # 8000616c <_ZN6Buffer3putEi>
        i++;
    80002d80:	0019071b          	addiw	a4,s2,1
    80002d84:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002d88:	0004a683          	lw	a3,0(s1)
    80002d8c:	0026979b          	slliw	a5,a3,0x2
    80002d90:	00d787bb          	addw	a5,a5,a3
    80002d94:	0017979b          	slliw	a5,a5,0x1
    80002d98:	02f767bb          	remw	a5,a4,a5
    80002d9c:	fc0792e3          	bnez	a5,80002d60 <_ZL16producerKeyboardPv+0x2c>
    80002da0:	fb9ff06f          	j	80002d58 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002da4:	00100793          	li	a5,1
    80002da8:	00009717          	auipc	a4,0x9
    80002dac:	9af72823          	sw	a5,-1616(a4) # 8000b758 <_ZL9threadEnd>
    data->buffer->put('!');
    80002db0:	02100593          	li	a1,33
    80002db4:	0084b503          	ld	a0,8(s1)
    80002db8:	00003097          	auipc	ra,0x3
    80002dbc:	3b4080e7          	jalr	948(ra) # 8000616c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002dc0:	0104b503          	ld	a0,16(s1)
    80002dc4:	fffff097          	auipc	ra,0xfffff
    80002dc8:	8dc080e7          	jalr	-1828(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>
}
    80002dcc:	01813083          	ld	ra,24(sp)
    80002dd0:	01013403          	ld	s0,16(sp)
    80002dd4:	00813483          	ld	s1,8(sp)
    80002dd8:	00013903          	ld	s2,0(sp)
    80002ddc:	02010113          	addi	sp,sp,32
    80002de0:	00008067          	ret

0000000080002de4 <_ZL8producerPv>:

static void producer(void *arg) {
    80002de4:	fe010113          	addi	sp,sp,-32
    80002de8:	00113c23          	sd	ra,24(sp)
    80002dec:	00813823          	sd	s0,16(sp)
    80002df0:	00913423          	sd	s1,8(sp)
    80002df4:	01213023          	sd	s2,0(sp)
    80002df8:	02010413          	addi	s0,sp,32
    80002dfc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e00:	00000913          	li	s2,0
    80002e04:	00c0006f          	j	80002e10 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e08:	ffffe097          	auipc	ra,0xffffe
    80002e0c:	7cc080e7          	jalr	1996(ra) # 800015d4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002e10:	00009797          	auipc	a5,0x9
    80002e14:	9487a783          	lw	a5,-1720(a5) # 8000b758 <_ZL9threadEnd>
    80002e18:	02079e63          	bnez	a5,80002e54 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002e1c:	0004a583          	lw	a1,0(s1)
    80002e20:	0305859b          	addiw	a1,a1,48
    80002e24:	0084b503          	ld	a0,8(s1)
    80002e28:	00003097          	auipc	ra,0x3
    80002e2c:	344080e7          	jalr	836(ra) # 8000616c <_ZN6Buffer3putEi>
        i++;
    80002e30:	0019071b          	addiw	a4,s2,1
    80002e34:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e38:	0004a683          	lw	a3,0(s1)
    80002e3c:	0026979b          	slliw	a5,a3,0x2
    80002e40:	00d787bb          	addw	a5,a5,a3
    80002e44:	0017979b          	slliw	a5,a5,0x1
    80002e48:	02f767bb          	remw	a5,a4,a5
    80002e4c:	fc0792e3          	bnez	a5,80002e10 <_ZL8producerPv+0x2c>
    80002e50:	fb9ff06f          	j	80002e08 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002e54:	0104b503          	ld	a0,16(s1)
    80002e58:	fffff097          	auipc	ra,0xfffff
    80002e5c:	848080e7          	jalr	-1976(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>
}
    80002e60:	01813083          	ld	ra,24(sp)
    80002e64:	01013403          	ld	s0,16(sp)
    80002e68:	00813483          	ld	s1,8(sp)
    80002e6c:	00013903          	ld	s2,0(sp)
    80002e70:	02010113          	addi	sp,sp,32
    80002e74:	00008067          	ret

0000000080002e78 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002e78:	fd010113          	addi	sp,sp,-48
    80002e7c:	02113423          	sd	ra,40(sp)
    80002e80:	02813023          	sd	s0,32(sp)
    80002e84:	00913c23          	sd	s1,24(sp)
    80002e88:	01213823          	sd	s2,16(sp)
    80002e8c:	01313423          	sd	s3,8(sp)
    80002e90:	03010413          	addi	s0,sp,48
    80002e94:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e98:	00000993          	li	s3,0
    80002e9c:	01c0006f          	j	80002eb8 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002ea0:	ffffe097          	auipc	ra,0xffffe
    80002ea4:	734080e7          	jalr	1844(ra) # 800015d4 <_Z15thread_dispatchv>
    80002ea8:	0500006f          	j	80002ef8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002eac:	00a00513          	li	a0,10
    80002eb0:	fffff097          	auipc	ra,0xfffff
    80002eb4:	844080e7          	jalr	-1980(ra) # 800016f4 <_Z4putcc>
    while (!threadEnd) {
    80002eb8:	00009797          	auipc	a5,0x9
    80002ebc:	8a07a783          	lw	a5,-1888(a5) # 8000b758 <_ZL9threadEnd>
    80002ec0:	06079063          	bnez	a5,80002f20 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002ec4:	00893503          	ld	a0,8(s2)
    80002ec8:	00003097          	auipc	ra,0x3
    80002ecc:	334080e7          	jalr	820(ra) # 800061fc <_ZN6Buffer3getEv>
        i++;
    80002ed0:	0019849b          	addiw	s1,s3,1
    80002ed4:	0004899b          	sext.w	s3,s1
        putc(key);
    80002ed8:	0ff57513          	andi	a0,a0,255
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	818080e7          	jalr	-2024(ra) # 800016f4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002ee4:	00092703          	lw	a4,0(s2)
    80002ee8:	0027179b          	slliw	a5,a4,0x2
    80002eec:	00e787bb          	addw	a5,a5,a4
    80002ef0:	02f4e7bb          	remw	a5,s1,a5
    80002ef4:	fa0786e3          	beqz	a5,80002ea0 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002ef8:	05000793          	li	a5,80
    80002efc:	02f4e4bb          	remw	s1,s1,a5
    80002f00:	fa049ce3          	bnez	s1,80002eb8 <_ZL8consumerPv+0x40>
    80002f04:	fa9ff06f          	j	80002eac <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002f08:	00893503          	ld	a0,8(s2)
    80002f0c:	00003097          	auipc	ra,0x3
    80002f10:	2f0080e7          	jalr	752(ra) # 800061fc <_ZN6Buffer3getEv>
        putc(key);
    80002f14:	0ff57513          	andi	a0,a0,255
    80002f18:	ffffe097          	auipc	ra,0xffffe
    80002f1c:	7dc080e7          	jalr	2012(ra) # 800016f4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002f20:	00893503          	ld	a0,8(s2)
    80002f24:	00003097          	auipc	ra,0x3
    80002f28:	364080e7          	jalr	868(ra) # 80006288 <_ZN6Buffer6getCntEv>
    80002f2c:	fca04ee3          	bgtz	a0,80002f08 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002f30:	01093503          	ld	a0,16(s2)
    80002f34:	ffffe097          	auipc	ra,0xffffe
    80002f38:	76c080e7          	jalr	1900(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>
}
    80002f3c:	02813083          	ld	ra,40(sp)
    80002f40:	02013403          	ld	s0,32(sp)
    80002f44:	01813483          	ld	s1,24(sp)
    80002f48:	01013903          	ld	s2,16(sp)
    80002f4c:	00813983          	ld	s3,8(sp)
    80002f50:	03010113          	addi	sp,sp,48
    80002f54:	00008067          	ret

0000000080002f58 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002f58:	f9010113          	addi	sp,sp,-112
    80002f5c:	06113423          	sd	ra,104(sp)
    80002f60:	06813023          	sd	s0,96(sp)
    80002f64:	04913c23          	sd	s1,88(sp)
    80002f68:	05213823          	sd	s2,80(sp)
    80002f6c:	05313423          	sd	s3,72(sp)
    80002f70:	05413023          	sd	s4,64(sp)
    80002f74:	03513c23          	sd	s5,56(sp)
    80002f78:	03613823          	sd	s6,48(sp)
    80002f7c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002f80:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002f84:	00006517          	auipc	a0,0x6
    80002f88:	34c50513          	addi	a0,a0,844 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80002f8c:	00002097          	auipc	ra,0x2
    80002f90:	220080e7          	jalr	544(ra) # 800051ac <_Z11printStringPKc>
    getString(input, 30);
    80002f94:	01e00593          	li	a1,30
    80002f98:	fa040493          	addi	s1,s0,-96
    80002f9c:	00048513          	mv	a0,s1
    80002fa0:	00002097          	auipc	ra,0x2
    80002fa4:	294080e7          	jalr	660(ra) # 80005234 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002fa8:	00048513          	mv	a0,s1
    80002fac:	00002097          	auipc	ra,0x2
    80002fb0:	360080e7          	jalr	864(ra) # 8000530c <_Z11stringToIntPKc>
    80002fb4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002fb8:	00006517          	auipc	a0,0x6
    80002fbc:	33850513          	addi	a0,a0,824 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80002fc0:	00002097          	auipc	ra,0x2
    80002fc4:	1ec080e7          	jalr	492(ra) # 800051ac <_Z11printStringPKc>
    getString(input, 30);
    80002fc8:	01e00593          	li	a1,30
    80002fcc:	00048513          	mv	a0,s1
    80002fd0:	00002097          	auipc	ra,0x2
    80002fd4:	264080e7          	jalr	612(ra) # 80005234 <_Z9getStringPci>
    n = stringToInt(input);
    80002fd8:	00048513          	mv	a0,s1
    80002fdc:	00002097          	auipc	ra,0x2
    80002fe0:	330080e7          	jalr	816(ra) # 8000530c <_Z11stringToIntPKc>
    80002fe4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002fe8:	00006517          	auipc	a0,0x6
    80002fec:	32850513          	addi	a0,a0,808 # 80009310 <CONSOLE_STATUS+0x300>
    80002ff0:	00002097          	auipc	ra,0x2
    80002ff4:	1bc080e7          	jalr	444(ra) # 800051ac <_Z11printStringPKc>
    80002ff8:	00000613          	li	a2,0
    80002ffc:	00a00593          	li	a1,10
    80003000:	00090513          	mv	a0,s2
    80003004:	00002097          	auipc	ra,0x2
    80003008:	358080e7          	jalr	856(ra) # 8000535c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000300c:	00006517          	auipc	a0,0x6
    80003010:	31c50513          	addi	a0,a0,796 # 80009328 <CONSOLE_STATUS+0x318>
    80003014:	00002097          	auipc	ra,0x2
    80003018:	198080e7          	jalr	408(ra) # 800051ac <_Z11printStringPKc>
    8000301c:	00000613          	li	a2,0
    80003020:	00a00593          	li	a1,10
    80003024:	00048513          	mv	a0,s1
    80003028:	00002097          	auipc	ra,0x2
    8000302c:	334080e7          	jalr	820(ra) # 8000535c <_Z8printIntiii>
    printString(".\n");
    80003030:	00006517          	auipc	a0,0x6
    80003034:	0a050513          	addi	a0,a0,160 # 800090d0 <CONSOLE_STATUS+0xc0>
    80003038:	00002097          	auipc	ra,0x2
    8000303c:	174080e7          	jalr	372(ra) # 800051ac <_Z11printStringPKc>
    if(threadNum > n) {
    80003040:	0324c463          	blt	s1,s2,80003068 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003044:	03205c63          	blez	s2,8000307c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003048:	03800513          	li	a0,56
    8000304c:	fffff097          	auipc	ra,0xfffff
    80003050:	4cc080e7          	jalr	1228(ra) # 80002518 <_Znwm>
    80003054:	00050a13          	mv	s4,a0
    80003058:	00048593          	mv	a1,s1
    8000305c:	00003097          	auipc	ra,0x3
    80003060:	074080e7          	jalr	116(ra) # 800060d0 <_ZN6BufferC1Ei>
    80003064:	0300006f          	j	80003094 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003068:	00006517          	auipc	a0,0x6
    8000306c:	2d850513          	addi	a0,a0,728 # 80009340 <CONSOLE_STATUS+0x330>
    80003070:	00002097          	auipc	ra,0x2
    80003074:	13c080e7          	jalr	316(ra) # 800051ac <_Z11printStringPKc>
        return;
    80003078:	0140006f          	j	8000308c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000307c:	00006517          	auipc	a0,0x6
    80003080:	30450513          	addi	a0,a0,772 # 80009380 <CONSOLE_STATUS+0x370>
    80003084:	00002097          	auipc	ra,0x2
    80003088:	128080e7          	jalr	296(ra) # 800051ac <_Z11printStringPKc>
        return;
    8000308c:	000b0113          	mv	sp,s6
    80003090:	1500006f          	j	800031e0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003094:	00000593          	li	a1,0
    80003098:	00008517          	auipc	a0,0x8
    8000309c:	6c850513          	addi	a0,a0,1736 # 8000b760 <_ZL10waitForAll>
    800030a0:	ffffe097          	auipc	ra,0xffffe
    800030a4:	578080e7          	jalr	1400(ra) # 80001618 <_Z8sem_openPP11MySemaphorej>
    thread_t threads[threadNum];
    800030a8:	00391793          	slli	a5,s2,0x3
    800030ac:	00f78793          	addi	a5,a5,15
    800030b0:	ff07f793          	andi	a5,a5,-16
    800030b4:	40f10133          	sub	sp,sp,a5
    800030b8:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800030bc:	0019071b          	addiw	a4,s2,1
    800030c0:	00171793          	slli	a5,a4,0x1
    800030c4:	00e787b3          	add	a5,a5,a4
    800030c8:	00379793          	slli	a5,a5,0x3
    800030cc:	00f78793          	addi	a5,a5,15
    800030d0:	ff07f793          	andi	a5,a5,-16
    800030d4:	40f10133          	sub	sp,sp,a5
    800030d8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800030dc:	00191613          	slli	a2,s2,0x1
    800030e0:	012607b3          	add	a5,a2,s2
    800030e4:	00379793          	slli	a5,a5,0x3
    800030e8:	00f987b3          	add	a5,s3,a5
    800030ec:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800030f0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800030f4:	00008717          	auipc	a4,0x8
    800030f8:	66c73703          	ld	a4,1644(a4) # 8000b760 <_ZL10waitForAll>
    800030fc:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003100:	00078613          	mv	a2,a5
    80003104:	00000597          	auipc	a1,0x0
    80003108:	d7458593          	addi	a1,a1,-652 # 80002e78 <_ZL8consumerPv>
    8000310c:	f9840513          	addi	a0,s0,-104
    80003110:	ffffe097          	auipc	ra,0xffffe
    80003114:	464080e7          	jalr	1124(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003118:	00000493          	li	s1,0
    8000311c:	0280006f          	j	80003144 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003120:	00000597          	auipc	a1,0x0
    80003124:	c1458593          	addi	a1,a1,-1004 # 80002d34 <_ZL16producerKeyboardPv>
                      data + i);
    80003128:	00179613          	slli	a2,a5,0x1
    8000312c:	00f60633          	add	a2,a2,a5
    80003130:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003134:	00c98633          	add	a2,s3,a2
    80003138:	ffffe097          	auipc	ra,0xffffe
    8000313c:	43c080e7          	jalr	1084(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003140:	0014849b          	addiw	s1,s1,1
    80003144:	0524d263          	bge	s1,s2,80003188 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003148:	00149793          	slli	a5,s1,0x1
    8000314c:	009787b3          	add	a5,a5,s1
    80003150:	00379793          	slli	a5,a5,0x3
    80003154:	00f987b3          	add	a5,s3,a5
    80003158:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000315c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003160:	00008717          	auipc	a4,0x8
    80003164:	60073703          	ld	a4,1536(a4) # 8000b760 <_ZL10waitForAll>
    80003168:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000316c:	00048793          	mv	a5,s1
    80003170:	00349513          	slli	a0,s1,0x3
    80003174:	00aa8533          	add	a0,s5,a0
    80003178:	fa9054e3          	blez	s1,80003120 <_Z22producerConsumer_C_APIv+0x1c8>
    8000317c:	00000597          	auipc	a1,0x0
    80003180:	c6858593          	addi	a1,a1,-920 # 80002de4 <_ZL8producerPv>
    80003184:	fa5ff06f          	j	80003128 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003188:	ffffe097          	auipc	ra,0xffffe
    8000318c:	44c080e7          	jalr	1100(ra) # 800015d4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003190:	00000493          	li	s1,0
    80003194:	00994e63          	blt	s2,s1,800031b0 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003198:	00008517          	auipc	a0,0x8
    8000319c:	5c853503          	ld	a0,1480(a0) # 8000b760 <_ZL10waitForAll>
    800031a0:	ffffe097          	auipc	ra,0xffffe
    800031a4:	4d4080e7          	jalr	1236(ra) # 80001674 <_Z8sem_waitP11MySemaphore>
    for (int i = 0; i <= threadNum; i++) {
    800031a8:	0014849b          	addiw	s1,s1,1
    800031ac:	fe9ff06f          	j	80003194 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800031b0:	00008517          	auipc	a0,0x8
    800031b4:	5b053503          	ld	a0,1456(a0) # 8000b760 <_ZL10waitForAll>
    800031b8:	ffffe097          	auipc	ra,0xffffe
    800031bc:	490080e7          	jalr	1168(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
    delete buffer;
    800031c0:	000a0e63          	beqz	s4,800031dc <_Z22producerConsumer_C_APIv+0x284>
    800031c4:	000a0513          	mv	a0,s4
    800031c8:	00003097          	auipc	ra,0x3
    800031cc:	148080e7          	jalr	328(ra) # 80006310 <_ZN6BufferD1Ev>
    800031d0:	000a0513          	mv	a0,s4
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	394080e7          	jalr	916(ra) # 80002568 <_ZdlPv>
    800031dc:	000b0113          	mv	sp,s6

}
    800031e0:	f9040113          	addi	sp,s0,-112
    800031e4:	06813083          	ld	ra,104(sp)
    800031e8:	06013403          	ld	s0,96(sp)
    800031ec:	05813483          	ld	s1,88(sp)
    800031f0:	05013903          	ld	s2,80(sp)
    800031f4:	04813983          	ld	s3,72(sp)
    800031f8:	04013a03          	ld	s4,64(sp)
    800031fc:	03813a83          	ld	s5,56(sp)
    80003200:	03013b03          	ld	s6,48(sp)
    80003204:	07010113          	addi	sp,sp,112
    80003208:	00008067          	ret
    8000320c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003210:	000a0513          	mv	a0,s4
    80003214:	fffff097          	auipc	ra,0xfffff
    80003218:	354080e7          	jalr	852(ra) # 80002568 <_ZdlPv>
    8000321c:	00048513          	mv	a0,s1
    80003220:	00009097          	auipc	ra,0x9
    80003224:	658080e7          	jalr	1624(ra) # 8000c878 <_Unwind_Resume>

0000000080003228 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003228:	fe010113          	addi	sp,sp,-32
    8000322c:	00113c23          	sd	ra,24(sp)
    80003230:	00813823          	sd	s0,16(sp)
    80003234:	00913423          	sd	s1,8(sp)
    80003238:	01213023          	sd	s2,0(sp)
    8000323c:	02010413          	addi	s0,sp,32
    80003240:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003244:	00100793          	li	a5,1
    80003248:	02a7f863          	bgeu	a5,a0,80003278 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000324c:	00a00793          	li	a5,10
    80003250:	02f577b3          	remu	a5,a0,a5
    80003254:	02078e63          	beqz	a5,80003290 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003258:	fff48513          	addi	a0,s1,-1
    8000325c:	00000097          	auipc	ra,0x0
    80003260:	fcc080e7          	jalr	-52(ra) # 80003228 <_ZL9fibonaccim>
    80003264:	00050913          	mv	s2,a0
    80003268:	ffe48513          	addi	a0,s1,-2
    8000326c:	00000097          	auipc	ra,0x0
    80003270:	fbc080e7          	jalr	-68(ra) # 80003228 <_ZL9fibonaccim>
    80003274:	00a90533          	add	a0,s2,a0
}
    80003278:	01813083          	ld	ra,24(sp)
    8000327c:	01013403          	ld	s0,16(sp)
    80003280:	00813483          	ld	s1,8(sp)
    80003284:	00013903          	ld	s2,0(sp)
    80003288:	02010113          	addi	sp,sp,32
    8000328c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003290:	ffffe097          	auipc	ra,0xffffe
    80003294:	344080e7          	jalr	836(ra) # 800015d4 <_Z15thread_dispatchv>
    80003298:	fc1ff06f          	j	80003258 <_ZL9fibonaccim+0x30>

000000008000329c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000329c:	fe010113          	addi	sp,sp,-32
    800032a0:	00113c23          	sd	ra,24(sp)
    800032a4:	00813823          	sd	s0,16(sp)
    800032a8:	00913423          	sd	s1,8(sp)
    800032ac:	01213023          	sd	s2,0(sp)
    800032b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800032b4:	00000913          	li	s2,0
    800032b8:	0380006f          	j	800032f0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800032bc:	ffffe097          	auipc	ra,0xffffe
    800032c0:	318080e7          	jalr	792(ra) # 800015d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800032c4:	00148493          	addi	s1,s1,1
    800032c8:	000027b7          	lui	a5,0x2
    800032cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800032d0:	0097ee63          	bltu	a5,s1,800032ec <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800032d4:	00000713          	li	a4,0
    800032d8:	000077b7          	lui	a5,0x7
    800032dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800032e0:	fce7eee3          	bltu	a5,a4,800032bc <_ZN7WorkerA11workerBodyAEPv+0x20>
    800032e4:	00170713          	addi	a4,a4,1
    800032e8:	ff1ff06f          	j	800032d8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800032ec:	00190913          	addi	s2,s2,1
    800032f0:	00900793          	li	a5,9
    800032f4:	0527e063          	bltu	a5,s2,80003334 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800032f8:	00006517          	auipc	a0,0x6
    800032fc:	d2850513          	addi	a0,a0,-728 # 80009020 <CONSOLE_STATUS+0x10>
    80003300:	00002097          	auipc	ra,0x2
    80003304:	eac080e7          	jalr	-340(ra) # 800051ac <_Z11printStringPKc>
    80003308:	00000613          	li	a2,0
    8000330c:	00a00593          	li	a1,10
    80003310:	0009051b          	sext.w	a0,s2
    80003314:	00002097          	auipc	ra,0x2
    80003318:	048080e7          	jalr	72(ra) # 8000535c <_Z8printIntiii>
    8000331c:	00006517          	auipc	a0,0x6
    80003320:	e8c50513          	addi	a0,a0,-372 # 800091a8 <CONSOLE_STATUS+0x198>
    80003324:	00002097          	auipc	ra,0x2
    80003328:	e88080e7          	jalr	-376(ra) # 800051ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000332c:	00000493          	li	s1,0
    80003330:	f99ff06f          	j	800032c8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003334:	00006517          	auipc	a0,0x6
    80003338:	07c50513          	addi	a0,a0,124 # 800093b0 <CONSOLE_STATUS+0x3a0>
    8000333c:	00002097          	auipc	ra,0x2
    80003340:	e70080e7          	jalr	-400(ra) # 800051ac <_Z11printStringPKc>
    finishedA = true;
    80003344:	00100793          	li	a5,1
    80003348:	00008717          	auipc	a4,0x8
    8000334c:	42f70023          	sb	a5,1056(a4) # 8000b768 <_ZL9finishedA>
}
    80003350:	01813083          	ld	ra,24(sp)
    80003354:	01013403          	ld	s0,16(sp)
    80003358:	00813483          	ld	s1,8(sp)
    8000335c:	00013903          	ld	s2,0(sp)
    80003360:	02010113          	addi	sp,sp,32
    80003364:	00008067          	ret

0000000080003368 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003368:	fe010113          	addi	sp,sp,-32
    8000336c:	00113c23          	sd	ra,24(sp)
    80003370:	00813823          	sd	s0,16(sp)
    80003374:	00913423          	sd	s1,8(sp)
    80003378:	01213023          	sd	s2,0(sp)
    8000337c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003380:	00000913          	li	s2,0
    80003384:	0380006f          	j	800033bc <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003388:	ffffe097          	auipc	ra,0xffffe
    8000338c:	24c080e7          	jalr	588(ra) # 800015d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003390:	00148493          	addi	s1,s1,1
    80003394:	000027b7          	lui	a5,0x2
    80003398:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000339c:	0097ee63          	bltu	a5,s1,800033b8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800033a0:	00000713          	li	a4,0
    800033a4:	000077b7          	lui	a5,0x7
    800033a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800033ac:	fce7eee3          	bltu	a5,a4,80003388 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800033b0:	00170713          	addi	a4,a4,1
    800033b4:	ff1ff06f          	j	800033a4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800033b8:	00190913          	addi	s2,s2,1
    800033bc:	00f00793          	li	a5,15
    800033c0:	0527e063          	bltu	a5,s2,80003400 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800033c4:	00006517          	auipc	a0,0x6
    800033c8:	c8c50513          	addi	a0,a0,-884 # 80009050 <CONSOLE_STATUS+0x40>
    800033cc:	00002097          	auipc	ra,0x2
    800033d0:	de0080e7          	jalr	-544(ra) # 800051ac <_Z11printStringPKc>
    800033d4:	00000613          	li	a2,0
    800033d8:	00a00593          	li	a1,10
    800033dc:	0009051b          	sext.w	a0,s2
    800033e0:	00002097          	auipc	ra,0x2
    800033e4:	f7c080e7          	jalr	-132(ra) # 8000535c <_Z8printIntiii>
    800033e8:	00006517          	auipc	a0,0x6
    800033ec:	dc050513          	addi	a0,a0,-576 # 800091a8 <CONSOLE_STATUS+0x198>
    800033f0:	00002097          	auipc	ra,0x2
    800033f4:	dbc080e7          	jalr	-580(ra) # 800051ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800033f8:	00000493          	li	s1,0
    800033fc:	f99ff06f          	j	80003394 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003400:	00006517          	auipc	a0,0x6
    80003404:	fc050513          	addi	a0,a0,-64 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80003408:	00002097          	auipc	ra,0x2
    8000340c:	da4080e7          	jalr	-604(ra) # 800051ac <_Z11printStringPKc>
    finishedB = true;
    80003410:	00100793          	li	a5,1
    80003414:	00008717          	auipc	a4,0x8
    80003418:	34f70aa3          	sb	a5,853(a4) # 8000b769 <_ZL9finishedB>
    thread_dispatch();
    8000341c:	ffffe097          	auipc	ra,0xffffe
    80003420:	1b8080e7          	jalr	440(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80003424:	01813083          	ld	ra,24(sp)
    80003428:	01013403          	ld	s0,16(sp)
    8000342c:	00813483          	ld	s1,8(sp)
    80003430:	00013903          	ld	s2,0(sp)
    80003434:	02010113          	addi	sp,sp,32
    80003438:	00008067          	ret

000000008000343c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000343c:	fe010113          	addi	sp,sp,-32
    80003440:	00113c23          	sd	ra,24(sp)
    80003444:	00813823          	sd	s0,16(sp)
    80003448:	00913423          	sd	s1,8(sp)
    8000344c:	01213023          	sd	s2,0(sp)
    80003450:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003454:	00000493          	li	s1,0
    80003458:	0400006f          	j	80003498 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000345c:	00006517          	auipc	a0,0x6
    80003460:	f7450513          	addi	a0,a0,-140 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80003464:	00002097          	auipc	ra,0x2
    80003468:	d48080e7          	jalr	-696(ra) # 800051ac <_Z11printStringPKc>
    8000346c:	00000613          	li	a2,0
    80003470:	00a00593          	li	a1,10
    80003474:	00048513          	mv	a0,s1
    80003478:	00002097          	auipc	ra,0x2
    8000347c:	ee4080e7          	jalr	-284(ra) # 8000535c <_Z8printIntiii>
    80003480:	00006517          	auipc	a0,0x6
    80003484:	d2850513          	addi	a0,a0,-728 # 800091a8 <CONSOLE_STATUS+0x198>
    80003488:	00002097          	auipc	ra,0x2
    8000348c:	d24080e7          	jalr	-732(ra) # 800051ac <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003490:	0014849b          	addiw	s1,s1,1
    80003494:	0ff4f493          	andi	s1,s1,255
    80003498:	00200793          	li	a5,2
    8000349c:	fc97f0e3          	bgeu	a5,s1,8000345c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800034a0:	00006517          	auipc	a0,0x6
    800034a4:	f3850513          	addi	a0,a0,-200 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800034a8:	00002097          	auipc	ra,0x2
    800034ac:	d04080e7          	jalr	-764(ra) # 800051ac <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800034b0:	00700313          	li	t1,7
    thread_dispatch();
    800034b4:	ffffe097          	auipc	ra,0xffffe
    800034b8:	120080e7          	jalr	288(ra) # 800015d4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800034bc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800034c0:	00006517          	auipc	a0,0x6
    800034c4:	f2850513          	addi	a0,a0,-216 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800034c8:	00002097          	auipc	ra,0x2
    800034cc:	ce4080e7          	jalr	-796(ra) # 800051ac <_Z11printStringPKc>
    800034d0:	00000613          	li	a2,0
    800034d4:	00a00593          	li	a1,10
    800034d8:	0009051b          	sext.w	a0,s2
    800034dc:	00002097          	auipc	ra,0x2
    800034e0:	e80080e7          	jalr	-384(ra) # 8000535c <_Z8printIntiii>
    800034e4:	00006517          	auipc	a0,0x6
    800034e8:	cc450513          	addi	a0,a0,-828 # 800091a8 <CONSOLE_STATUS+0x198>
    800034ec:	00002097          	auipc	ra,0x2
    800034f0:	cc0080e7          	jalr	-832(ra) # 800051ac <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800034f4:	00c00513          	li	a0,12
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	d30080e7          	jalr	-720(ra) # 80003228 <_ZL9fibonaccim>
    80003500:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003504:	00006517          	auipc	a0,0x6
    80003508:	eec50513          	addi	a0,a0,-276 # 800093f0 <CONSOLE_STATUS+0x3e0>
    8000350c:	00002097          	auipc	ra,0x2
    80003510:	ca0080e7          	jalr	-864(ra) # 800051ac <_Z11printStringPKc>
    80003514:	00000613          	li	a2,0
    80003518:	00a00593          	li	a1,10
    8000351c:	0009051b          	sext.w	a0,s2
    80003520:	00002097          	auipc	ra,0x2
    80003524:	e3c080e7          	jalr	-452(ra) # 8000535c <_Z8printIntiii>
    80003528:	00006517          	auipc	a0,0x6
    8000352c:	c8050513          	addi	a0,a0,-896 # 800091a8 <CONSOLE_STATUS+0x198>
    80003530:	00002097          	auipc	ra,0x2
    80003534:	c7c080e7          	jalr	-900(ra) # 800051ac <_Z11printStringPKc>
    80003538:	0400006f          	j	80003578 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000353c:	00006517          	auipc	a0,0x6
    80003540:	e9450513          	addi	a0,a0,-364 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80003544:	00002097          	auipc	ra,0x2
    80003548:	c68080e7          	jalr	-920(ra) # 800051ac <_Z11printStringPKc>
    8000354c:	00000613          	li	a2,0
    80003550:	00a00593          	li	a1,10
    80003554:	00048513          	mv	a0,s1
    80003558:	00002097          	auipc	ra,0x2
    8000355c:	e04080e7          	jalr	-508(ra) # 8000535c <_Z8printIntiii>
    80003560:	00006517          	auipc	a0,0x6
    80003564:	c4850513          	addi	a0,a0,-952 # 800091a8 <CONSOLE_STATUS+0x198>
    80003568:	00002097          	auipc	ra,0x2
    8000356c:	c44080e7          	jalr	-956(ra) # 800051ac <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003570:	0014849b          	addiw	s1,s1,1
    80003574:	0ff4f493          	andi	s1,s1,255
    80003578:	00500793          	li	a5,5
    8000357c:	fc97f0e3          	bgeu	a5,s1,8000353c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003580:	00006517          	auipc	a0,0x6
    80003584:	e3050513          	addi	a0,a0,-464 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80003588:	00002097          	auipc	ra,0x2
    8000358c:	c24080e7          	jalr	-988(ra) # 800051ac <_Z11printStringPKc>
    finishedC = true;
    80003590:	00100793          	li	a5,1
    80003594:	00008717          	auipc	a4,0x8
    80003598:	1cf70b23          	sb	a5,470(a4) # 8000b76a <_ZL9finishedC>
    thread_dispatch();
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	038080e7          	jalr	56(ra) # 800015d4 <_Z15thread_dispatchv>
}
    800035a4:	01813083          	ld	ra,24(sp)
    800035a8:	01013403          	ld	s0,16(sp)
    800035ac:	00813483          	ld	s1,8(sp)
    800035b0:	00013903          	ld	s2,0(sp)
    800035b4:	02010113          	addi	sp,sp,32
    800035b8:	00008067          	ret

00000000800035bc <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800035bc:	fe010113          	addi	sp,sp,-32
    800035c0:	00113c23          	sd	ra,24(sp)
    800035c4:	00813823          	sd	s0,16(sp)
    800035c8:	00913423          	sd	s1,8(sp)
    800035cc:	01213023          	sd	s2,0(sp)
    800035d0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800035d4:	00a00493          	li	s1,10
    800035d8:	0400006f          	j	80003618 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800035dc:	00006517          	auipc	a0,0x6
    800035e0:	e2450513          	addi	a0,a0,-476 # 80009400 <CONSOLE_STATUS+0x3f0>
    800035e4:	00002097          	auipc	ra,0x2
    800035e8:	bc8080e7          	jalr	-1080(ra) # 800051ac <_Z11printStringPKc>
    800035ec:	00000613          	li	a2,0
    800035f0:	00a00593          	li	a1,10
    800035f4:	00048513          	mv	a0,s1
    800035f8:	00002097          	auipc	ra,0x2
    800035fc:	d64080e7          	jalr	-668(ra) # 8000535c <_Z8printIntiii>
    80003600:	00006517          	auipc	a0,0x6
    80003604:	ba850513          	addi	a0,a0,-1112 # 800091a8 <CONSOLE_STATUS+0x198>
    80003608:	00002097          	auipc	ra,0x2
    8000360c:	ba4080e7          	jalr	-1116(ra) # 800051ac <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003610:	0014849b          	addiw	s1,s1,1
    80003614:	0ff4f493          	andi	s1,s1,255
    80003618:	00c00793          	li	a5,12
    8000361c:	fc97f0e3          	bgeu	a5,s1,800035dc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003620:	00006517          	auipc	a0,0x6
    80003624:	de850513          	addi	a0,a0,-536 # 80009408 <CONSOLE_STATUS+0x3f8>
    80003628:	00002097          	auipc	ra,0x2
    8000362c:	b84080e7          	jalr	-1148(ra) # 800051ac <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003630:	00500313          	li	t1,5
    thread_dispatch();
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	fa0080e7          	jalr	-96(ra) # 800015d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000363c:	01000513          	li	a0,16
    80003640:	00000097          	auipc	ra,0x0
    80003644:	be8080e7          	jalr	-1048(ra) # 80003228 <_ZL9fibonaccim>
    80003648:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000364c:	00006517          	auipc	a0,0x6
    80003650:	dcc50513          	addi	a0,a0,-564 # 80009418 <CONSOLE_STATUS+0x408>
    80003654:	00002097          	auipc	ra,0x2
    80003658:	b58080e7          	jalr	-1192(ra) # 800051ac <_Z11printStringPKc>
    8000365c:	00000613          	li	a2,0
    80003660:	00a00593          	li	a1,10
    80003664:	0009051b          	sext.w	a0,s2
    80003668:	00002097          	auipc	ra,0x2
    8000366c:	cf4080e7          	jalr	-780(ra) # 8000535c <_Z8printIntiii>
    80003670:	00006517          	auipc	a0,0x6
    80003674:	b3850513          	addi	a0,a0,-1224 # 800091a8 <CONSOLE_STATUS+0x198>
    80003678:	00002097          	auipc	ra,0x2
    8000367c:	b34080e7          	jalr	-1228(ra) # 800051ac <_Z11printStringPKc>
    80003680:	0400006f          	j	800036c0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003684:	00006517          	auipc	a0,0x6
    80003688:	d7c50513          	addi	a0,a0,-644 # 80009400 <CONSOLE_STATUS+0x3f0>
    8000368c:	00002097          	auipc	ra,0x2
    80003690:	b20080e7          	jalr	-1248(ra) # 800051ac <_Z11printStringPKc>
    80003694:	00000613          	li	a2,0
    80003698:	00a00593          	li	a1,10
    8000369c:	00048513          	mv	a0,s1
    800036a0:	00002097          	auipc	ra,0x2
    800036a4:	cbc080e7          	jalr	-836(ra) # 8000535c <_Z8printIntiii>
    800036a8:	00006517          	auipc	a0,0x6
    800036ac:	b0050513          	addi	a0,a0,-1280 # 800091a8 <CONSOLE_STATUS+0x198>
    800036b0:	00002097          	auipc	ra,0x2
    800036b4:	afc080e7          	jalr	-1284(ra) # 800051ac <_Z11printStringPKc>
    for (; i < 16; i++) {
    800036b8:	0014849b          	addiw	s1,s1,1
    800036bc:	0ff4f493          	andi	s1,s1,255
    800036c0:	00f00793          	li	a5,15
    800036c4:	fc97f0e3          	bgeu	a5,s1,80003684 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800036c8:	00006517          	auipc	a0,0x6
    800036cc:	d6050513          	addi	a0,a0,-672 # 80009428 <CONSOLE_STATUS+0x418>
    800036d0:	00002097          	auipc	ra,0x2
    800036d4:	adc080e7          	jalr	-1316(ra) # 800051ac <_Z11printStringPKc>
    finishedD = true;
    800036d8:	00100793          	li	a5,1
    800036dc:	00008717          	auipc	a4,0x8
    800036e0:	08f707a3          	sb	a5,143(a4) # 8000b76b <_ZL9finishedD>
    thread_dispatch();
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	ef0080e7          	jalr	-272(ra) # 800015d4 <_Z15thread_dispatchv>
}
    800036ec:	01813083          	ld	ra,24(sp)
    800036f0:	01013403          	ld	s0,16(sp)
    800036f4:	00813483          	ld	s1,8(sp)
    800036f8:	00013903          	ld	s2,0(sp)
    800036fc:	02010113          	addi	sp,sp,32
    80003700:	00008067          	ret

0000000080003704 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003704:	fc010113          	addi	sp,sp,-64
    80003708:	02113c23          	sd	ra,56(sp)
    8000370c:	02813823          	sd	s0,48(sp)
    80003710:	02913423          	sd	s1,40(sp)
    80003714:	03213023          	sd	s2,32(sp)
    80003718:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000371c:	02000513          	li	a0,32
    80003720:	fffff097          	auipc	ra,0xfffff
    80003724:	df8080e7          	jalr	-520(ra) # 80002518 <_Znwm>
    80003728:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000372c:	fffff097          	auipc	ra,0xfffff
    80003730:	0dc080e7          	jalr	220(ra) # 80002808 <_ZN6ThreadC1Ev>
    80003734:	00008797          	auipc	a5,0x8
    80003738:	d9c78793          	addi	a5,a5,-612 # 8000b4d0 <_ZTV7WorkerA+0x10>
    8000373c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003740:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003744:	00006517          	auipc	a0,0x6
    80003748:	cf450513          	addi	a0,a0,-780 # 80009438 <CONSOLE_STATUS+0x428>
    8000374c:	00002097          	auipc	ra,0x2
    80003750:	a60080e7          	jalr	-1440(ra) # 800051ac <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003754:	02000513          	li	a0,32
    80003758:	fffff097          	auipc	ra,0xfffff
    8000375c:	dc0080e7          	jalr	-576(ra) # 80002518 <_Znwm>
    80003760:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003764:	fffff097          	auipc	ra,0xfffff
    80003768:	0a4080e7          	jalr	164(ra) # 80002808 <_ZN6ThreadC1Ev>
    8000376c:	00008797          	auipc	a5,0x8
    80003770:	d8c78793          	addi	a5,a5,-628 # 8000b4f8 <_ZTV7WorkerB+0x10>
    80003774:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003778:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000377c:	00006517          	auipc	a0,0x6
    80003780:	cd450513          	addi	a0,a0,-812 # 80009450 <CONSOLE_STATUS+0x440>
    80003784:	00002097          	auipc	ra,0x2
    80003788:	a28080e7          	jalr	-1496(ra) # 800051ac <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000378c:	02000513          	li	a0,32
    80003790:	fffff097          	auipc	ra,0xfffff
    80003794:	d88080e7          	jalr	-632(ra) # 80002518 <_Znwm>
    80003798:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000379c:	fffff097          	auipc	ra,0xfffff
    800037a0:	06c080e7          	jalr	108(ra) # 80002808 <_ZN6ThreadC1Ev>
    800037a4:	00008797          	auipc	a5,0x8
    800037a8:	d7c78793          	addi	a5,a5,-644 # 8000b520 <_ZTV7WorkerC+0x10>
    800037ac:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800037b0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800037b4:	00006517          	auipc	a0,0x6
    800037b8:	cb450513          	addi	a0,a0,-844 # 80009468 <CONSOLE_STATUS+0x458>
    800037bc:	00002097          	auipc	ra,0x2
    800037c0:	9f0080e7          	jalr	-1552(ra) # 800051ac <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800037c4:	02000513          	li	a0,32
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	d50080e7          	jalr	-688(ra) # 80002518 <_Znwm>
    800037d0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800037d4:	fffff097          	auipc	ra,0xfffff
    800037d8:	034080e7          	jalr	52(ra) # 80002808 <_ZN6ThreadC1Ev>
    800037dc:	00008797          	auipc	a5,0x8
    800037e0:	d6c78793          	addi	a5,a5,-660 # 8000b548 <_ZTV7WorkerD+0x10>
    800037e4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800037e8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800037ec:	00006517          	auipc	a0,0x6
    800037f0:	c9450513          	addi	a0,a0,-876 # 80009480 <CONSOLE_STATUS+0x470>
    800037f4:	00002097          	auipc	ra,0x2
    800037f8:	9b8080e7          	jalr	-1608(ra) # 800051ac <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800037fc:	00000493          	li	s1,0
    80003800:	00300793          	li	a5,3
    80003804:	0297c663          	blt	a5,s1,80003830 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003808:	00349793          	slli	a5,s1,0x3
    8000380c:	fe040713          	addi	a4,s0,-32
    80003810:	00f707b3          	add	a5,a4,a5
    80003814:	fe07b503          	ld	a0,-32(a5)
    80003818:	fffff097          	auipc	ra,0xfffff
    8000381c:	fc0080e7          	jalr	-64(ra) # 800027d8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003820:	0014849b          	addiw	s1,s1,1
    80003824:	fddff06f          	j	80003800 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	f24080e7          	jalr	-220(ra) # 8000274c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003830:	00008797          	auipc	a5,0x8
    80003834:	f387c783          	lbu	a5,-200(a5) # 8000b768 <_ZL9finishedA>
    80003838:	fe0788e3          	beqz	a5,80003828 <_Z20Threads_CPP_API_testv+0x124>
    8000383c:	00008797          	auipc	a5,0x8
    80003840:	f2d7c783          	lbu	a5,-211(a5) # 8000b769 <_ZL9finishedB>
    80003844:	fe0782e3          	beqz	a5,80003828 <_Z20Threads_CPP_API_testv+0x124>
    80003848:	00008797          	auipc	a5,0x8
    8000384c:	f227c783          	lbu	a5,-222(a5) # 8000b76a <_ZL9finishedC>
    80003850:	fc078ce3          	beqz	a5,80003828 <_Z20Threads_CPP_API_testv+0x124>
    80003854:	00008797          	auipc	a5,0x8
    80003858:	f177c783          	lbu	a5,-233(a5) # 8000b76b <_ZL9finishedD>
    8000385c:	fc0786e3          	beqz	a5,80003828 <_Z20Threads_CPP_API_testv+0x124>
    80003860:	fc040493          	addi	s1,s0,-64
    80003864:	0080006f          	j	8000386c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003868:	00848493          	addi	s1,s1,8
    8000386c:	fe040793          	addi	a5,s0,-32
    80003870:	08f48663          	beq	s1,a5,800038fc <_Z20Threads_CPP_API_testv+0x1f8>
    80003874:	0004b503          	ld	a0,0(s1)
    80003878:	fe0508e3          	beqz	a0,80003868 <_Z20Threads_CPP_API_testv+0x164>
    8000387c:	00053783          	ld	a5,0(a0)
    80003880:	0087b783          	ld	a5,8(a5)
    80003884:	000780e7          	jalr	a5
    80003888:	fe1ff06f          	j	80003868 <_Z20Threads_CPP_API_testv+0x164>
    8000388c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003890:	00048513          	mv	a0,s1
    80003894:	fffff097          	auipc	ra,0xfffff
    80003898:	cd4080e7          	jalr	-812(ra) # 80002568 <_ZdlPv>
    8000389c:	00090513          	mv	a0,s2
    800038a0:	00009097          	auipc	ra,0x9
    800038a4:	fd8080e7          	jalr	-40(ra) # 8000c878 <_Unwind_Resume>
    800038a8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800038ac:	00048513          	mv	a0,s1
    800038b0:	fffff097          	auipc	ra,0xfffff
    800038b4:	cb8080e7          	jalr	-840(ra) # 80002568 <_ZdlPv>
    800038b8:	00090513          	mv	a0,s2
    800038bc:	00009097          	auipc	ra,0x9
    800038c0:	fbc080e7          	jalr	-68(ra) # 8000c878 <_Unwind_Resume>
    800038c4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800038c8:	00048513          	mv	a0,s1
    800038cc:	fffff097          	auipc	ra,0xfffff
    800038d0:	c9c080e7          	jalr	-868(ra) # 80002568 <_ZdlPv>
    800038d4:	00090513          	mv	a0,s2
    800038d8:	00009097          	auipc	ra,0x9
    800038dc:	fa0080e7          	jalr	-96(ra) # 8000c878 <_Unwind_Resume>
    800038e0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800038e4:	00048513          	mv	a0,s1
    800038e8:	fffff097          	auipc	ra,0xfffff
    800038ec:	c80080e7          	jalr	-896(ra) # 80002568 <_ZdlPv>
    800038f0:	00090513          	mv	a0,s2
    800038f4:	00009097          	auipc	ra,0x9
    800038f8:	f84080e7          	jalr	-124(ra) # 8000c878 <_Unwind_Resume>
}
    800038fc:	03813083          	ld	ra,56(sp)
    80003900:	03013403          	ld	s0,48(sp)
    80003904:	02813483          	ld	s1,40(sp)
    80003908:	02013903          	ld	s2,32(sp)
    8000390c:	04010113          	addi	sp,sp,64
    80003910:	00008067          	ret

0000000080003914 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003914:	ff010113          	addi	sp,sp,-16
    80003918:	00113423          	sd	ra,8(sp)
    8000391c:	00813023          	sd	s0,0(sp)
    80003920:	01010413          	addi	s0,sp,16
    80003924:	00008797          	auipc	a5,0x8
    80003928:	bac78793          	addi	a5,a5,-1108 # 8000b4d0 <_ZTV7WorkerA+0x10>
    8000392c:	00f53023          	sd	a5,0(a0)
    80003930:	fffff097          	auipc	ra,0xfffff
    80003934:	d18080e7          	jalr	-744(ra) # 80002648 <_ZN6ThreadD1Ev>
    80003938:	00813083          	ld	ra,8(sp)
    8000393c:	00013403          	ld	s0,0(sp)
    80003940:	01010113          	addi	sp,sp,16
    80003944:	00008067          	ret

0000000080003948 <_ZN7WorkerAD0Ev>:
    80003948:	fe010113          	addi	sp,sp,-32
    8000394c:	00113c23          	sd	ra,24(sp)
    80003950:	00813823          	sd	s0,16(sp)
    80003954:	00913423          	sd	s1,8(sp)
    80003958:	02010413          	addi	s0,sp,32
    8000395c:	00050493          	mv	s1,a0
    80003960:	00008797          	auipc	a5,0x8
    80003964:	b7078793          	addi	a5,a5,-1168 # 8000b4d0 <_ZTV7WorkerA+0x10>
    80003968:	00f53023          	sd	a5,0(a0)
    8000396c:	fffff097          	auipc	ra,0xfffff
    80003970:	cdc080e7          	jalr	-804(ra) # 80002648 <_ZN6ThreadD1Ev>
    80003974:	00048513          	mv	a0,s1
    80003978:	fffff097          	auipc	ra,0xfffff
    8000397c:	bf0080e7          	jalr	-1040(ra) # 80002568 <_ZdlPv>
    80003980:	01813083          	ld	ra,24(sp)
    80003984:	01013403          	ld	s0,16(sp)
    80003988:	00813483          	ld	s1,8(sp)
    8000398c:	02010113          	addi	sp,sp,32
    80003990:	00008067          	ret

0000000080003994 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003994:	ff010113          	addi	sp,sp,-16
    80003998:	00113423          	sd	ra,8(sp)
    8000399c:	00813023          	sd	s0,0(sp)
    800039a0:	01010413          	addi	s0,sp,16
    800039a4:	00008797          	auipc	a5,0x8
    800039a8:	b5478793          	addi	a5,a5,-1196 # 8000b4f8 <_ZTV7WorkerB+0x10>
    800039ac:	00f53023          	sd	a5,0(a0)
    800039b0:	fffff097          	auipc	ra,0xfffff
    800039b4:	c98080e7          	jalr	-872(ra) # 80002648 <_ZN6ThreadD1Ev>
    800039b8:	00813083          	ld	ra,8(sp)
    800039bc:	00013403          	ld	s0,0(sp)
    800039c0:	01010113          	addi	sp,sp,16
    800039c4:	00008067          	ret

00000000800039c8 <_ZN7WorkerBD0Ev>:
    800039c8:	fe010113          	addi	sp,sp,-32
    800039cc:	00113c23          	sd	ra,24(sp)
    800039d0:	00813823          	sd	s0,16(sp)
    800039d4:	00913423          	sd	s1,8(sp)
    800039d8:	02010413          	addi	s0,sp,32
    800039dc:	00050493          	mv	s1,a0
    800039e0:	00008797          	auipc	a5,0x8
    800039e4:	b1878793          	addi	a5,a5,-1256 # 8000b4f8 <_ZTV7WorkerB+0x10>
    800039e8:	00f53023          	sd	a5,0(a0)
    800039ec:	fffff097          	auipc	ra,0xfffff
    800039f0:	c5c080e7          	jalr	-932(ra) # 80002648 <_ZN6ThreadD1Ev>
    800039f4:	00048513          	mv	a0,s1
    800039f8:	fffff097          	auipc	ra,0xfffff
    800039fc:	b70080e7          	jalr	-1168(ra) # 80002568 <_ZdlPv>
    80003a00:	01813083          	ld	ra,24(sp)
    80003a04:	01013403          	ld	s0,16(sp)
    80003a08:	00813483          	ld	s1,8(sp)
    80003a0c:	02010113          	addi	sp,sp,32
    80003a10:	00008067          	ret

0000000080003a14 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003a14:	ff010113          	addi	sp,sp,-16
    80003a18:	00113423          	sd	ra,8(sp)
    80003a1c:	00813023          	sd	s0,0(sp)
    80003a20:	01010413          	addi	s0,sp,16
    80003a24:	00008797          	auipc	a5,0x8
    80003a28:	afc78793          	addi	a5,a5,-1284 # 8000b520 <_ZTV7WorkerC+0x10>
    80003a2c:	00f53023          	sd	a5,0(a0)
    80003a30:	fffff097          	auipc	ra,0xfffff
    80003a34:	c18080e7          	jalr	-1000(ra) # 80002648 <_ZN6ThreadD1Ev>
    80003a38:	00813083          	ld	ra,8(sp)
    80003a3c:	00013403          	ld	s0,0(sp)
    80003a40:	01010113          	addi	sp,sp,16
    80003a44:	00008067          	ret

0000000080003a48 <_ZN7WorkerCD0Ev>:
    80003a48:	fe010113          	addi	sp,sp,-32
    80003a4c:	00113c23          	sd	ra,24(sp)
    80003a50:	00813823          	sd	s0,16(sp)
    80003a54:	00913423          	sd	s1,8(sp)
    80003a58:	02010413          	addi	s0,sp,32
    80003a5c:	00050493          	mv	s1,a0
    80003a60:	00008797          	auipc	a5,0x8
    80003a64:	ac078793          	addi	a5,a5,-1344 # 8000b520 <_ZTV7WorkerC+0x10>
    80003a68:	00f53023          	sd	a5,0(a0)
    80003a6c:	fffff097          	auipc	ra,0xfffff
    80003a70:	bdc080e7          	jalr	-1060(ra) # 80002648 <_ZN6ThreadD1Ev>
    80003a74:	00048513          	mv	a0,s1
    80003a78:	fffff097          	auipc	ra,0xfffff
    80003a7c:	af0080e7          	jalr	-1296(ra) # 80002568 <_ZdlPv>
    80003a80:	01813083          	ld	ra,24(sp)
    80003a84:	01013403          	ld	s0,16(sp)
    80003a88:	00813483          	ld	s1,8(sp)
    80003a8c:	02010113          	addi	sp,sp,32
    80003a90:	00008067          	ret

0000000080003a94 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003a94:	ff010113          	addi	sp,sp,-16
    80003a98:	00113423          	sd	ra,8(sp)
    80003a9c:	00813023          	sd	s0,0(sp)
    80003aa0:	01010413          	addi	s0,sp,16
    80003aa4:	00008797          	auipc	a5,0x8
    80003aa8:	aa478793          	addi	a5,a5,-1372 # 8000b548 <_ZTV7WorkerD+0x10>
    80003aac:	00f53023          	sd	a5,0(a0)
    80003ab0:	fffff097          	auipc	ra,0xfffff
    80003ab4:	b98080e7          	jalr	-1128(ra) # 80002648 <_ZN6ThreadD1Ev>
    80003ab8:	00813083          	ld	ra,8(sp)
    80003abc:	00013403          	ld	s0,0(sp)
    80003ac0:	01010113          	addi	sp,sp,16
    80003ac4:	00008067          	ret

0000000080003ac8 <_ZN7WorkerDD0Ev>:
    80003ac8:	fe010113          	addi	sp,sp,-32
    80003acc:	00113c23          	sd	ra,24(sp)
    80003ad0:	00813823          	sd	s0,16(sp)
    80003ad4:	00913423          	sd	s1,8(sp)
    80003ad8:	02010413          	addi	s0,sp,32
    80003adc:	00050493          	mv	s1,a0
    80003ae0:	00008797          	auipc	a5,0x8
    80003ae4:	a6878793          	addi	a5,a5,-1432 # 8000b548 <_ZTV7WorkerD+0x10>
    80003ae8:	00f53023          	sd	a5,0(a0)
    80003aec:	fffff097          	auipc	ra,0xfffff
    80003af0:	b5c080e7          	jalr	-1188(ra) # 80002648 <_ZN6ThreadD1Ev>
    80003af4:	00048513          	mv	a0,s1
    80003af8:	fffff097          	auipc	ra,0xfffff
    80003afc:	a70080e7          	jalr	-1424(ra) # 80002568 <_ZdlPv>
    80003b00:	01813083          	ld	ra,24(sp)
    80003b04:	01013403          	ld	s0,16(sp)
    80003b08:	00813483          	ld	s1,8(sp)
    80003b0c:	02010113          	addi	sp,sp,32
    80003b10:	00008067          	ret

0000000080003b14 <_ZN7WorkerA3runEv>:
    void run() override {
    80003b14:	ff010113          	addi	sp,sp,-16
    80003b18:	00113423          	sd	ra,8(sp)
    80003b1c:	00813023          	sd	s0,0(sp)
    80003b20:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003b24:	00000593          	li	a1,0
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	774080e7          	jalr	1908(ra) # 8000329c <_ZN7WorkerA11workerBodyAEPv>
    }
    80003b30:	00813083          	ld	ra,8(sp)
    80003b34:	00013403          	ld	s0,0(sp)
    80003b38:	01010113          	addi	sp,sp,16
    80003b3c:	00008067          	ret

0000000080003b40 <_ZN7WorkerB3runEv>:
    void run() override {
    80003b40:	ff010113          	addi	sp,sp,-16
    80003b44:	00113423          	sd	ra,8(sp)
    80003b48:	00813023          	sd	s0,0(sp)
    80003b4c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003b50:	00000593          	li	a1,0
    80003b54:	00000097          	auipc	ra,0x0
    80003b58:	814080e7          	jalr	-2028(ra) # 80003368 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003b5c:	00813083          	ld	ra,8(sp)
    80003b60:	00013403          	ld	s0,0(sp)
    80003b64:	01010113          	addi	sp,sp,16
    80003b68:	00008067          	ret

0000000080003b6c <_ZN7WorkerC3runEv>:
    void run() override {
    80003b6c:	ff010113          	addi	sp,sp,-16
    80003b70:	00113423          	sd	ra,8(sp)
    80003b74:	00813023          	sd	s0,0(sp)
    80003b78:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003b7c:	00000593          	li	a1,0
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	8bc080e7          	jalr	-1860(ra) # 8000343c <_ZN7WorkerC11workerBodyCEPv>
    }
    80003b88:	00813083          	ld	ra,8(sp)
    80003b8c:	00013403          	ld	s0,0(sp)
    80003b90:	01010113          	addi	sp,sp,16
    80003b94:	00008067          	ret

0000000080003b98 <_ZN7WorkerD3runEv>:
    void run() override {
    80003b98:	ff010113          	addi	sp,sp,-16
    80003b9c:	00113423          	sd	ra,8(sp)
    80003ba0:	00813023          	sd	s0,0(sp)
    80003ba4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003ba8:	00000593          	li	a1,0
    80003bac:	00000097          	auipc	ra,0x0
    80003bb0:	a10080e7          	jalr	-1520(ra) # 800035bc <_ZN7WorkerD11workerBodyDEPv>
    }
    80003bb4:	00813083          	ld	ra,8(sp)
    80003bb8:	00013403          	ld	s0,0(sp)
    80003bbc:	01010113          	addi	sp,sp,16
    80003bc0:	00008067          	ret

0000000080003bc4 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003bc4:	f8010113          	addi	sp,sp,-128
    80003bc8:	06113c23          	sd	ra,120(sp)
    80003bcc:	06813823          	sd	s0,112(sp)
    80003bd0:	06913423          	sd	s1,104(sp)
    80003bd4:	07213023          	sd	s2,96(sp)
    80003bd8:	05313c23          	sd	s3,88(sp)
    80003bdc:	05413823          	sd	s4,80(sp)
    80003be0:	05513423          	sd	s5,72(sp)
    80003be4:	05613023          	sd	s6,64(sp)
    80003be8:	03713c23          	sd	s7,56(sp)
    80003bec:	03813823          	sd	s8,48(sp)
    80003bf0:	03913423          	sd	s9,40(sp)
    80003bf4:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003bf8:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003bfc:	00005517          	auipc	a0,0x5
    80003c00:	6d450513          	addi	a0,a0,1748 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003c04:	00001097          	auipc	ra,0x1
    80003c08:	5a8080e7          	jalr	1448(ra) # 800051ac <_Z11printStringPKc>
    getString(input, 30);
    80003c0c:	01e00593          	li	a1,30
    80003c10:	f8040493          	addi	s1,s0,-128
    80003c14:	00048513          	mv	a0,s1
    80003c18:	00001097          	auipc	ra,0x1
    80003c1c:	61c080e7          	jalr	1564(ra) # 80005234 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c20:	00048513          	mv	a0,s1
    80003c24:	00001097          	auipc	ra,0x1
    80003c28:	6e8080e7          	jalr	1768(ra) # 8000530c <_Z11stringToIntPKc>
    80003c2c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003c30:	00005517          	auipc	a0,0x5
    80003c34:	6c050513          	addi	a0,a0,1728 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003c38:	00001097          	auipc	ra,0x1
    80003c3c:	574080e7          	jalr	1396(ra) # 800051ac <_Z11printStringPKc>
    getString(input, 30);
    80003c40:	01e00593          	li	a1,30
    80003c44:	00048513          	mv	a0,s1
    80003c48:	00001097          	auipc	ra,0x1
    80003c4c:	5ec080e7          	jalr	1516(ra) # 80005234 <_Z9getStringPci>
    n = stringToInt(input);
    80003c50:	00048513          	mv	a0,s1
    80003c54:	00001097          	auipc	ra,0x1
    80003c58:	6b8080e7          	jalr	1720(ra) # 8000530c <_Z11stringToIntPKc>
    80003c5c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003c60:	00005517          	auipc	a0,0x5
    80003c64:	6b050513          	addi	a0,a0,1712 # 80009310 <CONSOLE_STATUS+0x300>
    80003c68:	00001097          	auipc	ra,0x1
    80003c6c:	544080e7          	jalr	1348(ra) # 800051ac <_Z11printStringPKc>
    printInt(threadNum);
    80003c70:	00000613          	li	a2,0
    80003c74:	00a00593          	li	a1,10
    80003c78:	00098513          	mv	a0,s3
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	6e0080e7          	jalr	1760(ra) # 8000535c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003c84:	00005517          	auipc	a0,0x5
    80003c88:	6a450513          	addi	a0,a0,1700 # 80009328 <CONSOLE_STATUS+0x318>
    80003c8c:	00001097          	auipc	ra,0x1
    80003c90:	520080e7          	jalr	1312(ra) # 800051ac <_Z11printStringPKc>
    printInt(n);
    80003c94:	00000613          	li	a2,0
    80003c98:	00a00593          	li	a1,10
    80003c9c:	00048513          	mv	a0,s1
    80003ca0:	00001097          	auipc	ra,0x1
    80003ca4:	6bc080e7          	jalr	1724(ra) # 8000535c <_Z8printIntiii>
    printString(".\n");
    80003ca8:	00005517          	auipc	a0,0x5
    80003cac:	42850513          	addi	a0,a0,1064 # 800090d0 <CONSOLE_STATUS+0xc0>
    80003cb0:	00001097          	auipc	ra,0x1
    80003cb4:	4fc080e7          	jalr	1276(ra) # 800051ac <_Z11printStringPKc>
    if (threadNum > n) {
    80003cb8:	0334c463          	blt	s1,s3,80003ce0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003cbc:	03305c63          	blez	s3,80003cf4 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003cc0:	03800513          	li	a0,56
    80003cc4:	fffff097          	auipc	ra,0xfffff
    80003cc8:	854080e7          	jalr	-1964(ra) # 80002518 <_Znwm>
    80003ccc:	00050a93          	mv	s5,a0
    80003cd0:	00048593          	mv	a1,s1
    80003cd4:	00001097          	auipc	ra,0x1
    80003cd8:	7a8080e7          	jalr	1960(ra) # 8000547c <_ZN9BufferCPPC1Ei>
    80003cdc:	0300006f          	j	80003d0c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003ce0:	00005517          	auipc	a0,0x5
    80003ce4:	66050513          	addi	a0,a0,1632 # 80009340 <CONSOLE_STATUS+0x330>
    80003ce8:	00001097          	auipc	ra,0x1
    80003cec:	4c4080e7          	jalr	1220(ra) # 800051ac <_Z11printStringPKc>
        return;
    80003cf0:	0140006f          	j	80003d04 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003cf4:	00005517          	auipc	a0,0x5
    80003cf8:	68c50513          	addi	a0,a0,1676 # 80009380 <CONSOLE_STATUS+0x370>
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	4b0080e7          	jalr	1200(ra) # 800051ac <_Z11printStringPKc>
        return;
    80003d04:	000c0113          	mv	sp,s8
    80003d08:	2140006f          	j	80003f1c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003d0c:	01000513          	li	a0,16
    80003d10:	fffff097          	auipc	ra,0xfffff
    80003d14:	808080e7          	jalr	-2040(ra) # 80002518 <_Znwm>
    80003d18:	00050913          	mv	s2,a0
    80003d1c:	00000593          	li	a1,0
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	99c080e7          	jalr	-1636(ra) # 800026bc <_ZN9SemaphoreC1Ej>
    80003d28:	00008797          	auipc	a5,0x8
    80003d2c:	a527b823          	sd	s2,-1456(a5) # 8000b778 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003d30:	00399793          	slli	a5,s3,0x3
    80003d34:	00f78793          	addi	a5,a5,15
    80003d38:	ff07f793          	andi	a5,a5,-16
    80003d3c:	40f10133          	sub	sp,sp,a5
    80003d40:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003d44:	0019871b          	addiw	a4,s3,1
    80003d48:	00171793          	slli	a5,a4,0x1
    80003d4c:	00e787b3          	add	a5,a5,a4
    80003d50:	00379793          	slli	a5,a5,0x3
    80003d54:	00f78793          	addi	a5,a5,15
    80003d58:	ff07f793          	andi	a5,a5,-16
    80003d5c:	40f10133          	sub	sp,sp,a5
    80003d60:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003d64:	00199493          	slli	s1,s3,0x1
    80003d68:	013484b3          	add	s1,s1,s3
    80003d6c:	00349493          	slli	s1,s1,0x3
    80003d70:	009b04b3          	add	s1,s6,s1
    80003d74:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003d78:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003d7c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003d80:	02800513          	li	a0,40
    80003d84:	ffffe097          	auipc	ra,0xffffe
    80003d88:	794080e7          	jalr	1940(ra) # 80002518 <_Znwm>
    80003d8c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	a78080e7          	jalr	-1416(ra) # 80002808 <_ZN6ThreadC1Ev>
    80003d98:	00008797          	auipc	a5,0x8
    80003d9c:	82878793          	addi	a5,a5,-2008 # 8000b5c0 <_ZTV8Consumer+0x10>
    80003da0:	00fbb023          	sd	a5,0(s7)
    80003da4:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003da8:	000b8513          	mv	a0,s7
    80003dac:	fffff097          	auipc	ra,0xfffff
    80003db0:	a2c080e7          	jalr	-1492(ra) # 800027d8 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003db4:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003db8:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003dbc:	00008797          	auipc	a5,0x8
    80003dc0:	9bc7b783          	ld	a5,-1604(a5) # 8000b778 <_ZL10waitForAll>
    80003dc4:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003dc8:	02800513          	li	a0,40
    80003dcc:	ffffe097          	auipc	ra,0xffffe
    80003dd0:	74c080e7          	jalr	1868(ra) # 80002518 <_Znwm>
    80003dd4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	a30080e7          	jalr	-1488(ra) # 80002808 <_ZN6ThreadC1Ev>
    80003de0:	00007797          	auipc	a5,0x7
    80003de4:	79078793          	addi	a5,a5,1936 # 8000b570 <_ZTV16ProducerKeyborad+0x10>
    80003de8:	00f4b023          	sd	a5,0(s1)
    80003dec:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003df0:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003df4:	00048513          	mv	a0,s1
    80003df8:	fffff097          	auipc	ra,0xfffff
    80003dfc:	9e0080e7          	jalr	-1568(ra) # 800027d8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e00:	00100913          	li	s2,1
    80003e04:	0300006f          	j	80003e34 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e08:	00007797          	auipc	a5,0x7
    80003e0c:	79078793          	addi	a5,a5,1936 # 8000b598 <_ZTV8Producer+0x10>
    80003e10:	00fcb023          	sd	a5,0(s9)
    80003e14:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003e18:	00391793          	slli	a5,s2,0x3
    80003e1c:	00fa07b3          	add	a5,s4,a5
    80003e20:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003e24:	000c8513          	mv	a0,s9
    80003e28:	fffff097          	auipc	ra,0xfffff
    80003e2c:	9b0080e7          	jalr	-1616(ra) # 800027d8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e30:	0019091b          	addiw	s2,s2,1
    80003e34:	05395263          	bge	s2,s3,80003e78 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003e38:	00191493          	slli	s1,s2,0x1
    80003e3c:	012484b3          	add	s1,s1,s2
    80003e40:	00349493          	slli	s1,s1,0x3
    80003e44:	009b04b3          	add	s1,s6,s1
    80003e48:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003e4c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003e50:	00008797          	auipc	a5,0x8
    80003e54:	9287b783          	ld	a5,-1752(a5) # 8000b778 <_ZL10waitForAll>
    80003e58:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003e5c:	02800513          	li	a0,40
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	6b8080e7          	jalr	1720(ra) # 80002518 <_Znwm>
    80003e68:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e6c:	fffff097          	auipc	ra,0xfffff
    80003e70:	99c080e7          	jalr	-1636(ra) # 80002808 <_ZN6ThreadC1Ev>
    80003e74:	f95ff06f          	j	80003e08 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	8d4080e7          	jalr	-1836(ra) # 8000274c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003e80:	00000493          	li	s1,0
    80003e84:	0099ce63          	blt	s3,s1,80003ea0 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003e88:	00008517          	auipc	a0,0x8
    80003e8c:	8f053503          	ld	a0,-1808(a0) # 8000b778 <_ZL10waitForAll>
    80003e90:	fffff097          	auipc	ra,0xfffff
    80003e94:	864080e7          	jalr	-1948(ra) # 800026f4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003e98:	0014849b          	addiw	s1,s1,1
    80003e9c:	fe9ff06f          	j	80003e84 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003ea0:	00008517          	auipc	a0,0x8
    80003ea4:	8d853503          	ld	a0,-1832(a0) # 8000b778 <_ZL10waitForAll>
    80003ea8:	00050863          	beqz	a0,80003eb8 <_Z20testConsumerProducerv+0x2f4>
    80003eac:	00053783          	ld	a5,0(a0)
    80003eb0:	0087b783          	ld	a5,8(a5)
    80003eb4:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003eb8:	00000493          	li	s1,0
    80003ebc:	0080006f          	j	80003ec4 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003ec0:	0014849b          	addiw	s1,s1,1
    80003ec4:	0334d263          	bge	s1,s3,80003ee8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003ec8:	00349793          	slli	a5,s1,0x3
    80003ecc:	00fa07b3          	add	a5,s4,a5
    80003ed0:	0007b503          	ld	a0,0(a5)
    80003ed4:	fe0506e3          	beqz	a0,80003ec0 <_Z20testConsumerProducerv+0x2fc>
    80003ed8:	00053783          	ld	a5,0(a0)
    80003edc:	0087b783          	ld	a5,8(a5)
    80003ee0:	000780e7          	jalr	a5
    80003ee4:	fddff06f          	j	80003ec0 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003ee8:	000b8a63          	beqz	s7,80003efc <_Z20testConsumerProducerv+0x338>
    80003eec:	000bb783          	ld	a5,0(s7)
    80003ef0:	0087b783          	ld	a5,8(a5)
    80003ef4:	000b8513          	mv	a0,s7
    80003ef8:	000780e7          	jalr	a5
    delete buffer;
    80003efc:	000a8e63          	beqz	s5,80003f18 <_Z20testConsumerProducerv+0x354>
    80003f00:	000a8513          	mv	a0,s5
    80003f04:	00002097          	auipc	ra,0x2
    80003f08:	870080e7          	jalr	-1936(ra) # 80005774 <_ZN9BufferCPPD1Ev>
    80003f0c:	000a8513          	mv	a0,s5
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	658080e7          	jalr	1624(ra) # 80002568 <_ZdlPv>
    80003f18:	000c0113          	mv	sp,s8
}
    80003f1c:	f8040113          	addi	sp,s0,-128
    80003f20:	07813083          	ld	ra,120(sp)
    80003f24:	07013403          	ld	s0,112(sp)
    80003f28:	06813483          	ld	s1,104(sp)
    80003f2c:	06013903          	ld	s2,96(sp)
    80003f30:	05813983          	ld	s3,88(sp)
    80003f34:	05013a03          	ld	s4,80(sp)
    80003f38:	04813a83          	ld	s5,72(sp)
    80003f3c:	04013b03          	ld	s6,64(sp)
    80003f40:	03813b83          	ld	s7,56(sp)
    80003f44:	03013c03          	ld	s8,48(sp)
    80003f48:	02813c83          	ld	s9,40(sp)
    80003f4c:	08010113          	addi	sp,sp,128
    80003f50:	00008067          	ret
    80003f54:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003f58:	000a8513          	mv	a0,s5
    80003f5c:	ffffe097          	auipc	ra,0xffffe
    80003f60:	60c080e7          	jalr	1548(ra) # 80002568 <_ZdlPv>
    80003f64:	00048513          	mv	a0,s1
    80003f68:	00009097          	auipc	ra,0x9
    80003f6c:	910080e7          	jalr	-1776(ra) # 8000c878 <_Unwind_Resume>
    80003f70:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003f74:	00090513          	mv	a0,s2
    80003f78:	ffffe097          	auipc	ra,0xffffe
    80003f7c:	5f0080e7          	jalr	1520(ra) # 80002568 <_ZdlPv>
    80003f80:	00048513          	mv	a0,s1
    80003f84:	00009097          	auipc	ra,0x9
    80003f88:	8f4080e7          	jalr	-1804(ra) # 8000c878 <_Unwind_Resume>
    80003f8c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003f90:	000b8513          	mv	a0,s7
    80003f94:	ffffe097          	auipc	ra,0xffffe
    80003f98:	5d4080e7          	jalr	1492(ra) # 80002568 <_ZdlPv>
    80003f9c:	00048513          	mv	a0,s1
    80003fa0:	00009097          	auipc	ra,0x9
    80003fa4:	8d8080e7          	jalr	-1832(ra) # 8000c878 <_Unwind_Resume>
    80003fa8:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003fac:	00048513          	mv	a0,s1
    80003fb0:	ffffe097          	auipc	ra,0xffffe
    80003fb4:	5b8080e7          	jalr	1464(ra) # 80002568 <_ZdlPv>
    80003fb8:	00090513          	mv	a0,s2
    80003fbc:	00009097          	auipc	ra,0x9
    80003fc0:	8bc080e7          	jalr	-1860(ra) # 8000c878 <_Unwind_Resume>
    80003fc4:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003fc8:	000c8513          	mv	a0,s9
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	59c080e7          	jalr	1436(ra) # 80002568 <_ZdlPv>
    80003fd4:	00048513          	mv	a0,s1
    80003fd8:	00009097          	auipc	ra,0x9
    80003fdc:	8a0080e7          	jalr	-1888(ra) # 8000c878 <_Unwind_Resume>

0000000080003fe0 <_ZN8Consumer3runEv>:
    void run() override {
    80003fe0:	fd010113          	addi	sp,sp,-48
    80003fe4:	02113423          	sd	ra,40(sp)
    80003fe8:	02813023          	sd	s0,32(sp)
    80003fec:	00913c23          	sd	s1,24(sp)
    80003ff0:	01213823          	sd	s2,16(sp)
    80003ff4:	01313423          	sd	s3,8(sp)
    80003ff8:	03010413          	addi	s0,sp,48
    80003ffc:	00050913          	mv	s2,a0
        int i = 0;
    80004000:	00000993          	li	s3,0
    80004004:	0100006f          	j	80004014 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004008:	00a00513          	li	a0,10
    8000400c:	fffff097          	auipc	ra,0xfffff
    80004010:	85c080e7          	jalr	-1956(ra) # 80002868 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004014:	00007797          	auipc	a5,0x7
    80004018:	75c7a783          	lw	a5,1884(a5) # 8000b770 <_ZL9threadEnd>
    8000401c:	04079a63          	bnez	a5,80004070 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004020:	02093783          	ld	a5,32(s2)
    80004024:	0087b503          	ld	a0,8(a5)
    80004028:	00001097          	auipc	ra,0x1
    8000402c:	638080e7          	jalr	1592(ra) # 80005660 <_ZN9BufferCPP3getEv>
            i++;
    80004030:	0019849b          	addiw	s1,s3,1
    80004034:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004038:	0ff57513          	andi	a0,a0,255
    8000403c:	fffff097          	auipc	ra,0xfffff
    80004040:	82c080e7          	jalr	-2004(ra) # 80002868 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004044:	05000793          	li	a5,80
    80004048:	02f4e4bb          	remw	s1,s1,a5
    8000404c:	fc0494e3          	bnez	s1,80004014 <_ZN8Consumer3runEv+0x34>
    80004050:	fb9ff06f          	j	80004008 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004054:	02093783          	ld	a5,32(s2)
    80004058:	0087b503          	ld	a0,8(a5)
    8000405c:	00001097          	auipc	ra,0x1
    80004060:	604080e7          	jalr	1540(ra) # 80005660 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004064:	0ff57513          	andi	a0,a0,255
    80004068:	fffff097          	auipc	ra,0xfffff
    8000406c:	800080e7          	jalr	-2048(ra) # 80002868 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004070:	02093783          	ld	a5,32(s2)
    80004074:	0087b503          	ld	a0,8(a5)
    80004078:	00001097          	auipc	ra,0x1
    8000407c:	674080e7          	jalr	1652(ra) # 800056ec <_ZN9BufferCPP6getCntEv>
    80004080:	fca04ae3          	bgtz	a0,80004054 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004084:	02093783          	ld	a5,32(s2)
    80004088:	0107b503          	ld	a0,16(a5)
    8000408c:	ffffe097          	auipc	ra,0xffffe
    80004090:	694080e7          	jalr	1684(ra) # 80002720 <_ZN9Semaphore6signalEv>
    }
    80004094:	02813083          	ld	ra,40(sp)
    80004098:	02013403          	ld	s0,32(sp)
    8000409c:	01813483          	ld	s1,24(sp)
    800040a0:	01013903          	ld	s2,16(sp)
    800040a4:	00813983          	ld	s3,8(sp)
    800040a8:	03010113          	addi	sp,sp,48
    800040ac:	00008067          	ret

00000000800040b0 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800040b0:	ff010113          	addi	sp,sp,-16
    800040b4:	00113423          	sd	ra,8(sp)
    800040b8:	00813023          	sd	s0,0(sp)
    800040bc:	01010413          	addi	s0,sp,16
    800040c0:	00007797          	auipc	a5,0x7
    800040c4:	50078793          	addi	a5,a5,1280 # 8000b5c0 <_ZTV8Consumer+0x10>
    800040c8:	00f53023          	sd	a5,0(a0)
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	57c080e7          	jalr	1404(ra) # 80002648 <_ZN6ThreadD1Ev>
    800040d4:	00813083          	ld	ra,8(sp)
    800040d8:	00013403          	ld	s0,0(sp)
    800040dc:	01010113          	addi	sp,sp,16
    800040e0:	00008067          	ret

00000000800040e4 <_ZN8ConsumerD0Ev>:
    800040e4:	fe010113          	addi	sp,sp,-32
    800040e8:	00113c23          	sd	ra,24(sp)
    800040ec:	00813823          	sd	s0,16(sp)
    800040f0:	00913423          	sd	s1,8(sp)
    800040f4:	02010413          	addi	s0,sp,32
    800040f8:	00050493          	mv	s1,a0
    800040fc:	00007797          	auipc	a5,0x7
    80004100:	4c478793          	addi	a5,a5,1220 # 8000b5c0 <_ZTV8Consumer+0x10>
    80004104:	00f53023          	sd	a5,0(a0)
    80004108:	ffffe097          	auipc	ra,0xffffe
    8000410c:	540080e7          	jalr	1344(ra) # 80002648 <_ZN6ThreadD1Ev>
    80004110:	00048513          	mv	a0,s1
    80004114:	ffffe097          	auipc	ra,0xffffe
    80004118:	454080e7          	jalr	1108(ra) # 80002568 <_ZdlPv>
    8000411c:	01813083          	ld	ra,24(sp)
    80004120:	01013403          	ld	s0,16(sp)
    80004124:	00813483          	ld	s1,8(sp)
    80004128:	02010113          	addi	sp,sp,32
    8000412c:	00008067          	ret

0000000080004130 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004130:	ff010113          	addi	sp,sp,-16
    80004134:	00113423          	sd	ra,8(sp)
    80004138:	00813023          	sd	s0,0(sp)
    8000413c:	01010413          	addi	s0,sp,16
    80004140:	00007797          	auipc	a5,0x7
    80004144:	43078793          	addi	a5,a5,1072 # 8000b570 <_ZTV16ProducerKeyborad+0x10>
    80004148:	00f53023          	sd	a5,0(a0)
    8000414c:	ffffe097          	auipc	ra,0xffffe
    80004150:	4fc080e7          	jalr	1276(ra) # 80002648 <_ZN6ThreadD1Ev>
    80004154:	00813083          	ld	ra,8(sp)
    80004158:	00013403          	ld	s0,0(sp)
    8000415c:	01010113          	addi	sp,sp,16
    80004160:	00008067          	ret

0000000080004164 <_ZN16ProducerKeyboradD0Ev>:
    80004164:	fe010113          	addi	sp,sp,-32
    80004168:	00113c23          	sd	ra,24(sp)
    8000416c:	00813823          	sd	s0,16(sp)
    80004170:	00913423          	sd	s1,8(sp)
    80004174:	02010413          	addi	s0,sp,32
    80004178:	00050493          	mv	s1,a0
    8000417c:	00007797          	auipc	a5,0x7
    80004180:	3f478793          	addi	a5,a5,1012 # 8000b570 <_ZTV16ProducerKeyborad+0x10>
    80004184:	00f53023          	sd	a5,0(a0)
    80004188:	ffffe097          	auipc	ra,0xffffe
    8000418c:	4c0080e7          	jalr	1216(ra) # 80002648 <_ZN6ThreadD1Ev>
    80004190:	00048513          	mv	a0,s1
    80004194:	ffffe097          	auipc	ra,0xffffe
    80004198:	3d4080e7          	jalr	980(ra) # 80002568 <_ZdlPv>
    8000419c:	01813083          	ld	ra,24(sp)
    800041a0:	01013403          	ld	s0,16(sp)
    800041a4:	00813483          	ld	s1,8(sp)
    800041a8:	02010113          	addi	sp,sp,32
    800041ac:	00008067          	ret

00000000800041b0 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800041b0:	ff010113          	addi	sp,sp,-16
    800041b4:	00113423          	sd	ra,8(sp)
    800041b8:	00813023          	sd	s0,0(sp)
    800041bc:	01010413          	addi	s0,sp,16
    800041c0:	00007797          	auipc	a5,0x7
    800041c4:	3d878793          	addi	a5,a5,984 # 8000b598 <_ZTV8Producer+0x10>
    800041c8:	00f53023          	sd	a5,0(a0)
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	47c080e7          	jalr	1148(ra) # 80002648 <_ZN6ThreadD1Ev>
    800041d4:	00813083          	ld	ra,8(sp)
    800041d8:	00013403          	ld	s0,0(sp)
    800041dc:	01010113          	addi	sp,sp,16
    800041e0:	00008067          	ret

00000000800041e4 <_ZN8ProducerD0Ev>:
    800041e4:	fe010113          	addi	sp,sp,-32
    800041e8:	00113c23          	sd	ra,24(sp)
    800041ec:	00813823          	sd	s0,16(sp)
    800041f0:	00913423          	sd	s1,8(sp)
    800041f4:	02010413          	addi	s0,sp,32
    800041f8:	00050493          	mv	s1,a0
    800041fc:	00007797          	auipc	a5,0x7
    80004200:	39c78793          	addi	a5,a5,924 # 8000b598 <_ZTV8Producer+0x10>
    80004204:	00f53023          	sd	a5,0(a0)
    80004208:	ffffe097          	auipc	ra,0xffffe
    8000420c:	440080e7          	jalr	1088(ra) # 80002648 <_ZN6ThreadD1Ev>
    80004210:	00048513          	mv	a0,s1
    80004214:	ffffe097          	auipc	ra,0xffffe
    80004218:	354080e7          	jalr	852(ra) # 80002568 <_ZdlPv>
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	00813483          	ld	s1,8(sp)
    80004228:	02010113          	addi	sp,sp,32
    8000422c:	00008067          	ret

0000000080004230 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004230:	fe010113          	addi	sp,sp,-32
    80004234:	00113c23          	sd	ra,24(sp)
    80004238:	00813823          	sd	s0,16(sp)
    8000423c:	00913423          	sd	s1,8(sp)
    80004240:	02010413          	addi	s0,sp,32
    80004244:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004248:	ffffd097          	auipc	ra,0xffffd
    8000424c:	484080e7          	jalr	1156(ra) # 800016cc <_Z4getcv>
    80004250:	0005059b          	sext.w	a1,a0
    80004254:	01b00793          	li	a5,27
    80004258:	00f58c63          	beq	a1,a5,80004270 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    8000425c:	0204b783          	ld	a5,32(s1)
    80004260:	0087b503          	ld	a0,8(a5)
    80004264:	00001097          	auipc	ra,0x1
    80004268:	36c080e7          	jalr	876(ra) # 800055d0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000426c:	fddff06f          	j	80004248 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004270:	00100793          	li	a5,1
    80004274:	00007717          	auipc	a4,0x7
    80004278:	4ef72e23          	sw	a5,1276(a4) # 8000b770 <_ZL9threadEnd>
        td->buffer->put('!');
    8000427c:	0204b783          	ld	a5,32(s1)
    80004280:	02100593          	li	a1,33
    80004284:	0087b503          	ld	a0,8(a5)
    80004288:	00001097          	auipc	ra,0x1
    8000428c:	348080e7          	jalr	840(ra) # 800055d0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004290:	0204b783          	ld	a5,32(s1)
    80004294:	0107b503          	ld	a0,16(a5)
    80004298:	ffffe097          	auipc	ra,0xffffe
    8000429c:	488080e7          	jalr	1160(ra) # 80002720 <_ZN9Semaphore6signalEv>
    }
    800042a0:	01813083          	ld	ra,24(sp)
    800042a4:	01013403          	ld	s0,16(sp)
    800042a8:	00813483          	ld	s1,8(sp)
    800042ac:	02010113          	addi	sp,sp,32
    800042b0:	00008067          	ret

00000000800042b4 <_ZN8Producer3runEv>:
    void run() override {
    800042b4:	fe010113          	addi	sp,sp,-32
    800042b8:	00113c23          	sd	ra,24(sp)
    800042bc:	00813823          	sd	s0,16(sp)
    800042c0:	00913423          	sd	s1,8(sp)
    800042c4:	01213023          	sd	s2,0(sp)
    800042c8:	02010413          	addi	s0,sp,32
    800042cc:	00050493          	mv	s1,a0
        int i = 0;
    800042d0:	00000913          	li	s2,0
        while (!threadEnd) {
    800042d4:	00007797          	auipc	a5,0x7
    800042d8:	49c7a783          	lw	a5,1180(a5) # 8000b770 <_ZL9threadEnd>
    800042dc:	04079263          	bnez	a5,80004320 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800042e0:	0204b783          	ld	a5,32(s1)
    800042e4:	0007a583          	lw	a1,0(a5)
    800042e8:	0305859b          	addiw	a1,a1,48
    800042ec:	0087b503          	ld	a0,8(a5)
    800042f0:	00001097          	auipc	ra,0x1
    800042f4:	2e0080e7          	jalr	736(ra) # 800055d0 <_ZN9BufferCPP3putEi>
            i++;
    800042f8:	0019071b          	addiw	a4,s2,1
    800042fc:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004300:	0204b783          	ld	a5,32(s1)
    80004304:	0007a783          	lw	a5,0(a5)
    80004308:	00e787bb          	addw	a5,a5,a4
    8000430c:	00500513          	li	a0,5
    80004310:	02a7e53b          	remw	a0,a5,a0
    80004314:	ffffe097          	auipc	ra,0xffffe
    80004318:	538080e7          	jalr	1336(ra) # 8000284c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    8000431c:	fb9ff06f          	j	800042d4 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004320:	0204b783          	ld	a5,32(s1)
    80004324:	0107b503          	ld	a0,16(a5)
    80004328:	ffffe097          	auipc	ra,0xffffe
    8000432c:	3f8080e7          	jalr	1016(ra) # 80002720 <_ZN9Semaphore6signalEv>
    }
    80004330:	01813083          	ld	ra,24(sp)
    80004334:	01013403          	ld	s0,16(sp)
    80004338:	00813483          	ld	s1,8(sp)
    8000433c:	00013903          	ld	s2,0(sp)
    80004340:	02010113          	addi	sp,sp,32
    80004344:	00008067          	ret

0000000080004348 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004348:	fe010113          	addi	sp,sp,-32
    8000434c:	00113c23          	sd	ra,24(sp)
    80004350:	00813823          	sd	s0,16(sp)
    80004354:	00913423          	sd	s1,8(sp)
    80004358:	01213023          	sd	s2,0(sp)
    8000435c:	02010413          	addi	s0,sp,32
    80004360:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004364:	00100793          	li	a5,1
    80004368:	02a7f863          	bgeu	a5,a0,80004398 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000436c:	00a00793          	li	a5,10
    80004370:	02f577b3          	remu	a5,a0,a5
    80004374:	02078e63          	beqz	a5,800043b0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004378:	fff48513          	addi	a0,s1,-1
    8000437c:	00000097          	auipc	ra,0x0
    80004380:	fcc080e7          	jalr	-52(ra) # 80004348 <_ZL9fibonaccim>
    80004384:	00050913          	mv	s2,a0
    80004388:	ffe48513          	addi	a0,s1,-2
    8000438c:	00000097          	auipc	ra,0x0
    80004390:	fbc080e7          	jalr	-68(ra) # 80004348 <_ZL9fibonaccim>
    80004394:	00a90533          	add	a0,s2,a0
}
    80004398:	01813083          	ld	ra,24(sp)
    8000439c:	01013403          	ld	s0,16(sp)
    800043a0:	00813483          	ld	s1,8(sp)
    800043a4:	00013903          	ld	s2,0(sp)
    800043a8:	02010113          	addi	sp,sp,32
    800043ac:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800043b0:	ffffd097          	auipc	ra,0xffffd
    800043b4:	224080e7          	jalr	548(ra) # 800015d4 <_Z15thread_dispatchv>
    800043b8:	fc1ff06f          	j	80004378 <_ZL9fibonaccim+0x30>

00000000800043bc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800043bc:	fe010113          	addi	sp,sp,-32
    800043c0:	00113c23          	sd	ra,24(sp)
    800043c4:	00813823          	sd	s0,16(sp)
    800043c8:	00913423          	sd	s1,8(sp)
    800043cc:	01213023          	sd	s2,0(sp)
    800043d0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800043d4:	00a00493          	li	s1,10
    800043d8:	0400006f          	j	80004418 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800043dc:	00005517          	auipc	a0,0x5
    800043e0:	02450513          	addi	a0,a0,36 # 80009400 <CONSOLE_STATUS+0x3f0>
    800043e4:	00001097          	auipc	ra,0x1
    800043e8:	dc8080e7          	jalr	-568(ra) # 800051ac <_Z11printStringPKc>
    800043ec:	00000613          	li	a2,0
    800043f0:	00a00593          	li	a1,10
    800043f4:	00048513          	mv	a0,s1
    800043f8:	00001097          	auipc	ra,0x1
    800043fc:	f64080e7          	jalr	-156(ra) # 8000535c <_Z8printIntiii>
    80004400:	00005517          	auipc	a0,0x5
    80004404:	da850513          	addi	a0,a0,-600 # 800091a8 <CONSOLE_STATUS+0x198>
    80004408:	00001097          	auipc	ra,0x1
    8000440c:	da4080e7          	jalr	-604(ra) # 800051ac <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004410:	0014849b          	addiw	s1,s1,1
    80004414:	0ff4f493          	andi	s1,s1,255
    80004418:	00c00793          	li	a5,12
    8000441c:	fc97f0e3          	bgeu	a5,s1,800043dc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004420:	00005517          	auipc	a0,0x5
    80004424:	fe850513          	addi	a0,a0,-24 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004428:	00001097          	auipc	ra,0x1
    8000442c:	d84080e7          	jalr	-636(ra) # 800051ac <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004430:	00500313          	li	t1,5
    thread_dispatch();
    80004434:	ffffd097          	auipc	ra,0xffffd
    80004438:	1a0080e7          	jalr	416(ra) # 800015d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000443c:	01000513          	li	a0,16
    80004440:	00000097          	auipc	ra,0x0
    80004444:	f08080e7          	jalr	-248(ra) # 80004348 <_ZL9fibonaccim>
    80004448:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000444c:	00005517          	auipc	a0,0x5
    80004450:	fcc50513          	addi	a0,a0,-52 # 80009418 <CONSOLE_STATUS+0x408>
    80004454:	00001097          	auipc	ra,0x1
    80004458:	d58080e7          	jalr	-680(ra) # 800051ac <_Z11printStringPKc>
    8000445c:	00000613          	li	a2,0
    80004460:	00a00593          	li	a1,10
    80004464:	0009051b          	sext.w	a0,s2
    80004468:	00001097          	auipc	ra,0x1
    8000446c:	ef4080e7          	jalr	-268(ra) # 8000535c <_Z8printIntiii>
    80004470:	00005517          	auipc	a0,0x5
    80004474:	d3850513          	addi	a0,a0,-712 # 800091a8 <CONSOLE_STATUS+0x198>
    80004478:	00001097          	auipc	ra,0x1
    8000447c:	d34080e7          	jalr	-716(ra) # 800051ac <_Z11printStringPKc>
    80004480:	0400006f          	j	800044c0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004484:	00005517          	auipc	a0,0x5
    80004488:	f7c50513          	addi	a0,a0,-132 # 80009400 <CONSOLE_STATUS+0x3f0>
    8000448c:	00001097          	auipc	ra,0x1
    80004490:	d20080e7          	jalr	-736(ra) # 800051ac <_Z11printStringPKc>
    80004494:	00000613          	li	a2,0
    80004498:	00a00593          	li	a1,10
    8000449c:	00048513          	mv	a0,s1
    800044a0:	00001097          	auipc	ra,0x1
    800044a4:	ebc080e7          	jalr	-324(ra) # 8000535c <_Z8printIntiii>
    800044a8:	00005517          	auipc	a0,0x5
    800044ac:	d0050513          	addi	a0,a0,-768 # 800091a8 <CONSOLE_STATUS+0x198>
    800044b0:	00001097          	auipc	ra,0x1
    800044b4:	cfc080e7          	jalr	-772(ra) # 800051ac <_Z11printStringPKc>
    for (; i < 16; i++) {
    800044b8:	0014849b          	addiw	s1,s1,1
    800044bc:	0ff4f493          	andi	s1,s1,255
    800044c0:	00f00793          	li	a5,15
    800044c4:	fc97f0e3          	bgeu	a5,s1,80004484 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800044c8:	00005517          	auipc	a0,0x5
    800044cc:	f6050513          	addi	a0,a0,-160 # 80009428 <CONSOLE_STATUS+0x418>
    800044d0:	00001097          	auipc	ra,0x1
    800044d4:	cdc080e7          	jalr	-804(ra) # 800051ac <_Z11printStringPKc>
    finishedD = true;
    800044d8:	00100793          	li	a5,1
    800044dc:	00007717          	auipc	a4,0x7
    800044e0:	2af70223          	sb	a5,676(a4) # 8000b780 <_ZL9finishedD>
    thread_dispatch();
    800044e4:	ffffd097          	auipc	ra,0xffffd
    800044e8:	0f0080e7          	jalr	240(ra) # 800015d4 <_Z15thread_dispatchv>
}
    800044ec:	01813083          	ld	ra,24(sp)
    800044f0:	01013403          	ld	s0,16(sp)
    800044f4:	00813483          	ld	s1,8(sp)
    800044f8:	00013903          	ld	s2,0(sp)
    800044fc:	02010113          	addi	sp,sp,32
    80004500:	00008067          	ret

0000000080004504 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004504:	fe010113          	addi	sp,sp,-32
    80004508:	00113c23          	sd	ra,24(sp)
    8000450c:	00813823          	sd	s0,16(sp)
    80004510:	00913423          	sd	s1,8(sp)
    80004514:	01213023          	sd	s2,0(sp)
    80004518:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000451c:	00000493          	li	s1,0
    80004520:	0400006f          	j	80004560 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004524:	00005517          	auipc	a0,0x5
    80004528:	eac50513          	addi	a0,a0,-340 # 800093d0 <CONSOLE_STATUS+0x3c0>
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	c80080e7          	jalr	-896(ra) # 800051ac <_Z11printStringPKc>
    80004534:	00000613          	li	a2,0
    80004538:	00a00593          	li	a1,10
    8000453c:	00048513          	mv	a0,s1
    80004540:	00001097          	auipc	ra,0x1
    80004544:	e1c080e7          	jalr	-484(ra) # 8000535c <_Z8printIntiii>
    80004548:	00005517          	auipc	a0,0x5
    8000454c:	c6050513          	addi	a0,a0,-928 # 800091a8 <CONSOLE_STATUS+0x198>
    80004550:	00001097          	auipc	ra,0x1
    80004554:	c5c080e7          	jalr	-932(ra) # 800051ac <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004558:	0014849b          	addiw	s1,s1,1
    8000455c:	0ff4f493          	andi	s1,s1,255
    80004560:	00200793          	li	a5,2
    80004564:	fc97f0e3          	bgeu	a5,s1,80004524 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004568:	00005517          	auipc	a0,0x5
    8000456c:	e7050513          	addi	a0,a0,-400 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80004570:	00001097          	auipc	ra,0x1
    80004574:	c3c080e7          	jalr	-964(ra) # 800051ac <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004578:	00700313          	li	t1,7
    thread_dispatch();
    8000457c:	ffffd097          	auipc	ra,0xffffd
    80004580:	058080e7          	jalr	88(ra) # 800015d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004584:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004588:	00005517          	auipc	a0,0x5
    8000458c:	e6050513          	addi	a0,a0,-416 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004590:	00001097          	auipc	ra,0x1
    80004594:	c1c080e7          	jalr	-996(ra) # 800051ac <_Z11printStringPKc>
    80004598:	00000613          	li	a2,0
    8000459c:	00a00593          	li	a1,10
    800045a0:	0009051b          	sext.w	a0,s2
    800045a4:	00001097          	auipc	ra,0x1
    800045a8:	db8080e7          	jalr	-584(ra) # 8000535c <_Z8printIntiii>
    800045ac:	00005517          	auipc	a0,0x5
    800045b0:	bfc50513          	addi	a0,a0,-1028 # 800091a8 <CONSOLE_STATUS+0x198>
    800045b4:	00001097          	auipc	ra,0x1
    800045b8:	bf8080e7          	jalr	-1032(ra) # 800051ac <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800045bc:	00c00513          	li	a0,12
    800045c0:	00000097          	auipc	ra,0x0
    800045c4:	d88080e7          	jalr	-632(ra) # 80004348 <_ZL9fibonaccim>
    800045c8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800045cc:	00005517          	auipc	a0,0x5
    800045d0:	e2450513          	addi	a0,a0,-476 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800045d4:	00001097          	auipc	ra,0x1
    800045d8:	bd8080e7          	jalr	-1064(ra) # 800051ac <_Z11printStringPKc>
    800045dc:	00000613          	li	a2,0
    800045e0:	00a00593          	li	a1,10
    800045e4:	0009051b          	sext.w	a0,s2
    800045e8:	00001097          	auipc	ra,0x1
    800045ec:	d74080e7          	jalr	-652(ra) # 8000535c <_Z8printIntiii>
    800045f0:	00005517          	auipc	a0,0x5
    800045f4:	bb850513          	addi	a0,a0,-1096 # 800091a8 <CONSOLE_STATUS+0x198>
    800045f8:	00001097          	auipc	ra,0x1
    800045fc:	bb4080e7          	jalr	-1100(ra) # 800051ac <_Z11printStringPKc>
    80004600:	0400006f          	j	80004640 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004604:	00005517          	auipc	a0,0x5
    80004608:	dcc50513          	addi	a0,a0,-564 # 800093d0 <CONSOLE_STATUS+0x3c0>
    8000460c:	00001097          	auipc	ra,0x1
    80004610:	ba0080e7          	jalr	-1120(ra) # 800051ac <_Z11printStringPKc>
    80004614:	00000613          	li	a2,0
    80004618:	00a00593          	li	a1,10
    8000461c:	00048513          	mv	a0,s1
    80004620:	00001097          	auipc	ra,0x1
    80004624:	d3c080e7          	jalr	-708(ra) # 8000535c <_Z8printIntiii>
    80004628:	00005517          	auipc	a0,0x5
    8000462c:	b8050513          	addi	a0,a0,-1152 # 800091a8 <CONSOLE_STATUS+0x198>
    80004630:	00001097          	auipc	ra,0x1
    80004634:	b7c080e7          	jalr	-1156(ra) # 800051ac <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004638:	0014849b          	addiw	s1,s1,1
    8000463c:	0ff4f493          	andi	s1,s1,255
    80004640:	00500793          	li	a5,5
    80004644:	fc97f0e3          	bgeu	a5,s1,80004604 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004648:	00005517          	auipc	a0,0x5
    8000464c:	d6850513          	addi	a0,a0,-664 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80004650:	00001097          	auipc	ra,0x1
    80004654:	b5c080e7          	jalr	-1188(ra) # 800051ac <_Z11printStringPKc>
    finishedC = true;
    80004658:	00100793          	li	a5,1
    8000465c:	00007717          	auipc	a4,0x7
    80004660:	12f702a3          	sb	a5,293(a4) # 8000b781 <_ZL9finishedC>
    thread_dispatch();
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	f70080e7          	jalr	-144(ra) # 800015d4 <_Z15thread_dispatchv>
}
    8000466c:	01813083          	ld	ra,24(sp)
    80004670:	01013403          	ld	s0,16(sp)
    80004674:	00813483          	ld	s1,8(sp)
    80004678:	00013903          	ld	s2,0(sp)
    8000467c:	02010113          	addi	sp,sp,32
    80004680:	00008067          	ret

0000000080004684 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004684:	fe010113          	addi	sp,sp,-32
    80004688:	00113c23          	sd	ra,24(sp)
    8000468c:	00813823          	sd	s0,16(sp)
    80004690:	00913423          	sd	s1,8(sp)
    80004694:	01213023          	sd	s2,0(sp)
    80004698:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000469c:	00000913          	li	s2,0
    800046a0:	0380006f          	j	800046d8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800046a4:	ffffd097          	auipc	ra,0xffffd
    800046a8:	f30080e7          	jalr	-208(ra) # 800015d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800046ac:	00148493          	addi	s1,s1,1
    800046b0:	000027b7          	lui	a5,0x2
    800046b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800046b8:	0097ee63          	bltu	a5,s1,800046d4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800046bc:	00000713          	li	a4,0
    800046c0:	000077b7          	lui	a5,0x7
    800046c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800046c8:	fce7eee3          	bltu	a5,a4,800046a4 <_ZL11workerBodyBPv+0x20>
    800046cc:	00170713          	addi	a4,a4,1
    800046d0:	ff1ff06f          	j	800046c0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800046d4:	00190913          	addi	s2,s2,1
    800046d8:	00f00793          	li	a5,15
    800046dc:	0527e063          	bltu	a5,s2,8000471c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800046e0:	00005517          	auipc	a0,0x5
    800046e4:	97050513          	addi	a0,a0,-1680 # 80009050 <CONSOLE_STATUS+0x40>
    800046e8:	00001097          	auipc	ra,0x1
    800046ec:	ac4080e7          	jalr	-1340(ra) # 800051ac <_Z11printStringPKc>
    800046f0:	00000613          	li	a2,0
    800046f4:	00a00593          	li	a1,10
    800046f8:	0009051b          	sext.w	a0,s2
    800046fc:	00001097          	auipc	ra,0x1
    80004700:	c60080e7          	jalr	-928(ra) # 8000535c <_Z8printIntiii>
    80004704:	00005517          	auipc	a0,0x5
    80004708:	aa450513          	addi	a0,a0,-1372 # 800091a8 <CONSOLE_STATUS+0x198>
    8000470c:	00001097          	auipc	ra,0x1
    80004710:	aa0080e7          	jalr	-1376(ra) # 800051ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004714:	00000493          	li	s1,0
    80004718:	f99ff06f          	j	800046b0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000471c:	00005517          	auipc	a0,0x5
    80004720:	ca450513          	addi	a0,a0,-860 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80004724:	00001097          	auipc	ra,0x1
    80004728:	a88080e7          	jalr	-1400(ra) # 800051ac <_Z11printStringPKc>
    finishedB = true;
    8000472c:	00100793          	li	a5,1
    80004730:	00007717          	auipc	a4,0x7
    80004734:	04f70923          	sb	a5,82(a4) # 8000b782 <_ZL9finishedB>
    thread_dispatch();
    80004738:	ffffd097          	auipc	ra,0xffffd
    8000473c:	e9c080e7          	jalr	-356(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80004740:	01813083          	ld	ra,24(sp)
    80004744:	01013403          	ld	s0,16(sp)
    80004748:	00813483          	ld	s1,8(sp)
    8000474c:	00013903          	ld	s2,0(sp)
    80004750:	02010113          	addi	sp,sp,32
    80004754:	00008067          	ret

0000000080004758 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004758:	fe010113          	addi	sp,sp,-32
    8000475c:	00113c23          	sd	ra,24(sp)
    80004760:	00813823          	sd	s0,16(sp)
    80004764:	00913423          	sd	s1,8(sp)
    80004768:	01213023          	sd	s2,0(sp)
    8000476c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004770:	00000913          	li	s2,0
    80004774:	0380006f          	j	800047ac <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004778:	ffffd097          	auipc	ra,0xffffd
    8000477c:	e5c080e7          	jalr	-420(ra) # 800015d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004780:	00148493          	addi	s1,s1,1
    80004784:	000027b7          	lui	a5,0x2
    80004788:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000478c:	0097ee63          	bltu	a5,s1,800047a8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004790:	00000713          	li	a4,0
    80004794:	000077b7          	lui	a5,0x7
    80004798:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000479c:	fce7eee3          	bltu	a5,a4,80004778 <_ZL11workerBodyAPv+0x20>
    800047a0:	00170713          	addi	a4,a4,1
    800047a4:	ff1ff06f          	j	80004794 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800047a8:	00190913          	addi	s2,s2,1
    800047ac:	00900793          	li	a5,9
    800047b0:	0527e063          	bltu	a5,s2,800047f0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800047b4:	00005517          	auipc	a0,0x5
    800047b8:	86c50513          	addi	a0,a0,-1940 # 80009020 <CONSOLE_STATUS+0x10>
    800047bc:	00001097          	auipc	ra,0x1
    800047c0:	9f0080e7          	jalr	-1552(ra) # 800051ac <_Z11printStringPKc>
    800047c4:	00000613          	li	a2,0
    800047c8:	00a00593          	li	a1,10
    800047cc:	0009051b          	sext.w	a0,s2
    800047d0:	00001097          	auipc	ra,0x1
    800047d4:	b8c080e7          	jalr	-1140(ra) # 8000535c <_Z8printIntiii>
    800047d8:	00005517          	auipc	a0,0x5
    800047dc:	9d050513          	addi	a0,a0,-1584 # 800091a8 <CONSOLE_STATUS+0x198>
    800047e0:	00001097          	auipc	ra,0x1
    800047e4:	9cc080e7          	jalr	-1588(ra) # 800051ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800047e8:	00000493          	li	s1,0
    800047ec:	f99ff06f          	j	80004784 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800047f0:	00005517          	auipc	a0,0x5
    800047f4:	bc050513          	addi	a0,a0,-1088 # 800093b0 <CONSOLE_STATUS+0x3a0>
    800047f8:	00001097          	auipc	ra,0x1
    800047fc:	9b4080e7          	jalr	-1612(ra) # 800051ac <_Z11printStringPKc>
    finishedA = true;
    80004800:	00100793          	li	a5,1
    80004804:	00007717          	auipc	a4,0x7
    80004808:	f6f70fa3          	sb	a5,-129(a4) # 8000b783 <_ZL9finishedA>
}
    8000480c:	01813083          	ld	ra,24(sp)
    80004810:	01013403          	ld	s0,16(sp)
    80004814:	00813483          	ld	s1,8(sp)
    80004818:	00013903          	ld	s2,0(sp)
    8000481c:	02010113          	addi	sp,sp,32
    80004820:	00008067          	ret

0000000080004824 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004824:	fd010113          	addi	sp,sp,-48
    80004828:	02113423          	sd	ra,40(sp)
    8000482c:	02813023          	sd	s0,32(sp)
    80004830:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004834:	00000613          	li	a2,0
    80004838:	00000597          	auipc	a1,0x0
    8000483c:	f2058593          	addi	a1,a1,-224 # 80004758 <_ZL11workerBodyAPv>
    80004840:	fd040513          	addi	a0,s0,-48
    80004844:	ffffd097          	auipc	ra,0xffffd
    80004848:	d30080e7          	jalr	-720(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000484c:	00005517          	auipc	a0,0x5
    80004850:	bec50513          	addi	a0,a0,-1044 # 80009438 <CONSOLE_STATUS+0x428>
    80004854:	00001097          	auipc	ra,0x1
    80004858:	958080e7          	jalr	-1704(ra) # 800051ac <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000485c:	00000613          	li	a2,0
    80004860:	00000597          	auipc	a1,0x0
    80004864:	e2458593          	addi	a1,a1,-476 # 80004684 <_ZL11workerBodyBPv>
    80004868:	fd840513          	addi	a0,s0,-40
    8000486c:	ffffd097          	auipc	ra,0xffffd
    80004870:	d08080e7          	jalr	-760(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004874:	00005517          	auipc	a0,0x5
    80004878:	bdc50513          	addi	a0,a0,-1060 # 80009450 <CONSOLE_STATUS+0x440>
    8000487c:	00001097          	auipc	ra,0x1
    80004880:	930080e7          	jalr	-1744(ra) # 800051ac <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004884:	00000613          	li	a2,0
    80004888:	00000597          	auipc	a1,0x0
    8000488c:	c7c58593          	addi	a1,a1,-900 # 80004504 <_ZL11workerBodyCPv>
    80004890:	fe040513          	addi	a0,s0,-32
    80004894:	ffffd097          	auipc	ra,0xffffd
    80004898:	ce0080e7          	jalr	-800(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000489c:	00005517          	auipc	a0,0x5
    800048a0:	bcc50513          	addi	a0,a0,-1076 # 80009468 <CONSOLE_STATUS+0x458>
    800048a4:	00001097          	auipc	ra,0x1
    800048a8:	908080e7          	jalr	-1784(ra) # 800051ac <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800048ac:	00000613          	li	a2,0
    800048b0:	00000597          	auipc	a1,0x0
    800048b4:	b0c58593          	addi	a1,a1,-1268 # 800043bc <_ZL11workerBodyDPv>
    800048b8:	fe840513          	addi	a0,s0,-24
    800048bc:	ffffd097          	auipc	ra,0xffffd
    800048c0:	cb8080e7          	jalr	-840(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800048c4:	00005517          	auipc	a0,0x5
    800048c8:	bbc50513          	addi	a0,a0,-1092 # 80009480 <CONSOLE_STATUS+0x470>
    800048cc:	00001097          	auipc	ra,0x1
    800048d0:	8e0080e7          	jalr	-1824(ra) # 800051ac <_Z11printStringPKc>
    800048d4:	00c0006f          	j	800048e0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800048d8:	ffffd097          	auipc	ra,0xffffd
    800048dc:	cfc080e7          	jalr	-772(ra) # 800015d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800048e0:	00007797          	auipc	a5,0x7
    800048e4:	ea37c783          	lbu	a5,-349(a5) # 8000b783 <_ZL9finishedA>
    800048e8:	fe0788e3          	beqz	a5,800048d8 <_Z18Threads_C_API_testv+0xb4>
    800048ec:	00007797          	auipc	a5,0x7
    800048f0:	e967c783          	lbu	a5,-362(a5) # 8000b782 <_ZL9finishedB>
    800048f4:	fe0782e3          	beqz	a5,800048d8 <_Z18Threads_C_API_testv+0xb4>
    800048f8:	00007797          	auipc	a5,0x7
    800048fc:	e897c783          	lbu	a5,-375(a5) # 8000b781 <_ZL9finishedC>
    80004900:	fc078ce3          	beqz	a5,800048d8 <_Z18Threads_C_API_testv+0xb4>
    80004904:	00007797          	auipc	a5,0x7
    80004908:	e7c7c783          	lbu	a5,-388(a5) # 8000b780 <_ZL9finishedD>
    8000490c:	fc0786e3          	beqz	a5,800048d8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004910:	02813083          	ld	ra,40(sp)
    80004914:	02013403          	ld	s0,32(sp)
    80004918:	03010113          	addi	sp,sp,48
    8000491c:	00008067          	ret

0000000080004920 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004920:	fd010113          	addi	sp,sp,-48
    80004924:	02113423          	sd	ra,40(sp)
    80004928:	02813023          	sd	s0,32(sp)
    8000492c:	00913c23          	sd	s1,24(sp)
    80004930:	01213823          	sd	s2,16(sp)
    80004934:	01313423          	sd	s3,8(sp)
    80004938:	03010413          	addi	s0,sp,48
    8000493c:	00050993          	mv	s3,a0
    80004940:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004944:	00000913          	li	s2,0
    80004948:	00c0006f          	j	80004954 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000494c:	ffffe097          	auipc	ra,0xffffe
    80004950:	e00080e7          	jalr	-512(ra) # 8000274c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004954:	ffffd097          	auipc	ra,0xffffd
    80004958:	d78080e7          	jalr	-648(ra) # 800016cc <_Z4getcv>
    8000495c:	0005059b          	sext.w	a1,a0
    80004960:	01b00793          	li	a5,27
    80004964:	02f58a63          	beq	a1,a5,80004998 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004968:	0084b503          	ld	a0,8(s1)
    8000496c:	00001097          	auipc	ra,0x1
    80004970:	c64080e7          	jalr	-924(ra) # 800055d0 <_ZN9BufferCPP3putEi>
        i++;
    80004974:	0019071b          	addiw	a4,s2,1
    80004978:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000497c:	0004a683          	lw	a3,0(s1)
    80004980:	0026979b          	slliw	a5,a3,0x2
    80004984:	00d787bb          	addw	a5,a5,a3
    80004988:	0017979b          	slliw	a5,a5,0x1
    8000498c:	02f767bb          	remw	a5,a4,a5
    80004990:	fc0792e3          	bnez	a5,80004954 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004994:	fb9ff06f          	j	8000494c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004998:	00100793          	li	a5,1
    8000499c:	00007717          	auipc	a4,0x7
    800049a0:	def72623          	sw	a5,-532(a4) # 8000b788 <_ZL9threadEnd>
    td->buffer->put('!');
    800049a4:	0209b783          	ld	a5,32(s3)
    800049a8:	02100593          	li	a1,33
    800049ac:	0087b503          	ld	a0,8(a5)
    800049b0:	00001097          	auipc	ra,0x1
    800049b4:	c20080e7          	jalr	-992(ra) # 800055d0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800049b8:	0104b503          	ld	a0,16(s1)
    800049bc:	ffffe097          	auipc	ra,0xffffe
    800049c0:	d64080e7          	jalr	-668(ra) # 80002720 <_ZN9Semaphore6signalEv>
}
    800049c4:	02813083          	ld	ra,40(sp)
    800049c8:	02013403          	ld	s0,32(sp)
    800049cc:	01813483          	ld	s1,24(sp)
    800049d0:	01013903          	ld	s2,16(sp)
    800049d4:	00813983          	ld	s3,8(sp)
    800049d8:	03010113          	addi	sp,sp,48
    800049dc:	00008067          	ret

00000000800049e0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800049e0:	fe010113          	addi	sp,sp,-32
    800049e4:	00113c23          	sd	ra,24(sp)
    800049e8:	00813823          	sd	s0,16(sp)
    800049ec:	00913423          	sd	s1,8(sp)
    800049f0:	01213023          	sd	s2,0(sp)
    800049f4:	02010413          	addi	s0,sp,32
    800049f8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800049fc:	00000913          	li	s2,0
    80004a00:	00c0006f          	j	80004a0c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a04:	ffffe097          	auipc	ra,0xffffe
    80004a08:	d48080e7          	jalr	-696(ra) # 8000274c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004a0c:	00007797          	auipc	a5,0x7
    80004a10:	d7c7a783          	lw	a5,-644(a5) # 8000b788 <_ZL9threadEnd>
    80004a14:	02079e63          	bnez	a5,80004a50 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004a18:	0004a583          	lw	a1,0(s1)
    80004a1c:	0305859b          	addiw	a1,a1,48
    80004a20:	0084b503          	ld	a0,8(s1)
    80004a24:	00001097          	auipc	ra,0x1
    80004a28:	bac080e7          	jalr	-1108(ra) # 800055d0 <_ZN9BufferCPP3putEi>
        i++;
    80004a2c:	0019071b          	addiw	a4,s2,1
    80004a30:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a34:	0004a683          	lw	a3,0(s1)
    80004a38:	0026979b          	slliw	a5,a3,0x2
    80004a3c:	00d787bb          	addw	a5,a5,a3
    80004a40:	0017979b          	slliw	a5,a5,0x1
    80004a44:	02f767bb          	remw	a5,a4,a5
    80004a48:	fc0792e3          	bnez	a5,80004a0c <_ZN12ProducerSync8producerEPv+0x2c>
    80004a4c:	fb9ff06f          	j	80004a04 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004a50:	0104b503          	ld	a0,16(s1)
    80004a54:	ffffe097          	auipc	ra,0xffffe
    80004a58:	ccc080e7          	jalr	-820(ra) # 80002720 <_ZN9Semaphore6signalEv>
}
    80004a5c:	01813083          	ld	ra,24(sp)
    80004a60:	01013403          	ld	s0,16(sp)
    80004a64:	00813483          	ld	s1,8(sp)
    80004a68:	00013903          	ld	s2,0(sp)
    80004a6c:	02010113          	addi	sp,sp,32
    80004a70:	00008067          	ret

0000000080004a74 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004a74:	fd010113          	addi	sp,sp,-48
    80004a78:	02113423          	sd	ra,40(sp)
    80004a7c:	02813023          	sd	s0,32(sp)
    80004a80:	00913c23          	sd	s1,24(sp)
    80004a84:	01213823          	sd	s2,16(sp)
    80004a88:	01313423          	sd	s3,8(sp)
    80004a8c:	01413023          	sd	s4,0(sp)
    80004a90:	03010413          	addi	s0,sp,48
    80004a94:	00050993          	mv	s3,a0
    80004a98:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004a9c:	00000a13          	li	s4,0
    80004aa0:	01c0006f          	j	80004abc <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004aa4:	ffffe097          	auipc	ra,0xffffe
    80004aa8:	ca8080e7          	jalr	-856(ra) # 8000274c <_ZN6Thread8dispatchEv>
    80004aac:	0500006f          	j	80004afc <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004ab0:	00a00513          	li	a0,10
    80004ab4:	ffffd097          	auipc	ra,0xffffd
    80004ab8:	c40080e7          	jalr	-960(ra) # 800016f4 <_Z4putcc>
    while (!threadEnd) {
    80004abc:	00007797          	auipc	a5,0x7
    80004ac0:	ccc7a783          	lw	a5,-820(a5) # 8000b788 <_ZL9threadEnd>
    80004ac4:	06079263          	bnez	a5,80004b28 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004ac8:	00893503          	ld	a0,8(s2)
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	b94080e7          	jalr	-1132(ra) # 80005660 <_ZN9BufferCPP3getEv>
        i++;
    80004ad4:	001a049b          	addiw	s1,s4,1
    80004ad8:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004adc:	0ff57513          	andi	a0,a0,255
    80004ae0:	ffffd097          	auipc	ra,0xffffd
    80004ae4:	c14080e7          	jalr	-1004(ra) # 800016f4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004ae8:	00092703          	lw	a4,0(s2)
    80004aec:	0027179b          	slliw	a5,a4,0x2
    80004af0:	00e787bb          	addw	a5,a5,a4
    80004af4:	02f4e7bb          	remw	a5,s1,a5
    80004af8:	fa0786e3          	beqz	a5,80004aa4 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004afc:	05000793          	li	a5,80
    80004b00:	02f4e4bb          	remw	s1,s1,a5
    80004b04:	fa049ce3          	bnez	s1,80004abc <_ZN12ConsumerSync8consumerEPv+0x48>
    80004b08:	fa9ff06f          	j	80004ab0 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004b0c:	0209b783          	ld	a5,32(s3)
    80004b10:	0087b503          	ld	a0,8(a5)
    80004b14:	00001097          	auipc	ra,0x1
    80004b18:	b4c080e7          	jalr	-1204(ra) # 80005660 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004b1c:	0ff57513          	andi	a0,a0,255
    80004b20:	ffffe097          	auipc	ra,0xffffe
    80004b24:	d48080e7          	jalr	-696(ra) # 80002868 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004b28:	0209b783          	ld	a5,32(s3)
    80004b2c:	0087b503          	ld	a0,8(a5)
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	bbc080e7          	jalr	-1092(ra) # 800056ec <_ZN9BufferCPP6getCntEv>
    80004b38:	fca04ae3          	bgtz	a0,80004b0c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004b3c:	01093503          	ld	a0,16(s2)
    80004b40:	ffffe097          	auipc	ra,0xffffe
    80004b44:	be0080e7          	jalr	-1056(ra) # 80002720 <_ZN9Semaphore6signalEv>
}
    80004b48:	02813083          	ld	ra,40(sp)
    80004b4c:	02013403          	ld	s0,32(sp)
    80004b50:	01813483          	ld	s1,24(sp)
    80004b54:	01013903          	ld	s2,16(sp)
    80004b58:	00813983          	ld	s3,8(sp)
    80004b5c:	00013a03          	ld	s4,0(sp)
    80004b60:	03010113          	addi	sp,sp,48
    80004b64:	00008067          	ret

0000000080004b68 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004b68:	f8010113          	addi	sp,sp,-128
    80004b6c:	06113c23          	sd	ra,120(sp)
    80004b70:	06813823          	sd	s0,112(sp)
    80004b74:	06913423          	sd	s1,104(sp)
    80004b78:	07213023          	sd	s2,96(sp)
    80004b7c:	05313c23          	sd	s3,88(sp)
    80004b80:	05413823          	sd	s4,80(sp)
    80004b84:	05513423          	sd	s5,72(sp)
    80004b88:	05613023          	sd	s6,64(sp)
    80004b8c:	03713c23          	sd	s7,56(sp)
    80004b90:	03813823          	sd	s8,48(sp)
    80004b94:	03913423          	sd	s9,40(sp)
    80004b98:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004b9c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004ba0:	00004517          	auipc	a0,0x4
    80004ba4:	73050513          	addi	a0,a0,1840 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004ba8:	00000097          	auipc	ra,0x0
    80004bac:	604080e7          	jalr	1540(ra) # 800051ac <_Z11printStringPKc>
    getString(input, 30);
    80004bb0:	01e00593          	li	a1,30
    80004bb4:	f8040493          	addi	s1,s0,-128
    80004bb8:	00048513          	mv	a0,s1
    80004bbc:	00000097          	auipc	ra,0x0
    80004bc0:	678080e7          	jalr	1656(ra) # 80005234 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004bc4:	00048513          	mv	a0,s1
    80004bc8:	00000097          	auipc	ra,0x0
    80004bcc:	744080e7          	jalr	1860(ra) # 8000530c <_Z11stringToIntPKc>
    80004bd0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004bd4:	00004517          	auipc	a0,0x4
    80004bd8:	71c50513          	addi	a0,a0,1820 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80004bdc:	00000097          	auipc	ra,0x0
    80004be0:	5d0080e7          	jalr	1488(ra) # 800051ac <_Z11printStringPKc>
    getString(input, 30);
    80004be4:	01e00593          	li	a1,30
    80004be8:	00048513          	mv	a0,s1
    80004bec:	00000097          	auipc	ra,0x0
    80004bf0:	648080e7          	jalr	1608(ra) # 80005234 <_Z9getStringPci>
    n = stringToInt(input);
    80004bf4:	00048513          	mv	a0,s1
    80004bf8:	00000097          	auipc	ra,0x0
    80004bfc:	714080e7          	jalr	1812(ra) # 8000530c <_Z11stringToIntPKc>
    80004c00:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004c04:	00004517          	auipc	a0,0x4
    80004c08:	70c50513          	addi	a0,a0,1804 # 80009310 <CONSOLE_STATUS+0x300>
    80004c0c:	00000097          	auipc	ra,0x0
    80004c10:	5a0080e7          	jalr	1440(ra) # 800051ac <_Z11printStringPKc>
    80004c14:	00000613          	li	a2,0
    80004c18:	00a00593          	li	a1,10
    80004c1c:	00090513          	mv	a0,s2
    80004c20:	00000097          	auipc	ra,0x0
    80004c24:	73c080e7          	jalr	1852(ra) # 8000535c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004c28:	00004517          	auipc	a0,0x4
    80004c2c:	70050513          	addi	a0,a0,1792 # 80009328 <CONSOLE_STATUS+0x318>
    80004c30:	00000097          	auipc	ra,0x0
    80004c34:	57c080e7          	jalr	1404(ra) # 800051ac <_Z11printStringPKc>
    80004c38:	00000613          	li	a2,0
    80004c3c:	00a00593          	li	a1,10
    80004c40:	00048513          	mv	a0,s1
    80004c44:	00000097          	auipc	ra,0x0
    80004c48:	718080e7          	jalr	1816(ra) # 8000535c <_Z8printIntiii>
    printString(".\n");
    80004c4c:	00004517          	auipc	a0,0x4
    80004c50:	48450513          	addi	a0,a0,1156 # 800090d0 <CONSOLE_STATUS+0xc0>
    80004c54:	00000097          	auipc	ra,0x0
    80004c58:	558080e7          	jalr	1368(ra) # 800051ac <_Z11printStringPKc>
    if(threadNum > n) {
    80004c5c:	0324c463          	blt	s1,s2,80004c84 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004c60:	03205c63          	blez	s2,80004c98 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004c64:	03800513          	li	a0,56
    80004c68:	ffffe097          	auipc	ra,0xffffe
    80004c6c:	8b0080e7          	jalr	-1872(ra) # 80002518 <_Znwm>
    80004c70:	00050a93          	mv	s5,a0
    80004c74:	00048593          	mv	a1,s1
    80004c78:	00001097          	auipc	ra,0x1
    80004c7c:	804080e7          	jalr	-2044(ra) # 8000547c <_ZN9BufferCPPC1Ei>
    80004c80:	0300006f          	j	80004cb0 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004c84:	00004517          	auipc	a0,0x4
    80004c88:	6bc50513          	addi	a0,a0,1724 # 80009340 <CONSOLE_STATUS+0x330>
    80004c8c:	00000097          	auipc	ra,0x0
    80004c90:	520080e7          	jalr	1312(ra) # 800051ac <_Z11printStringPKc>
        return;
    80004c94:	0140006f          	j	80004ca8 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004c98:	00004517          	auipc	a0,0x4
    80004c9c:	6e850513          	addi	a0,a0,1768 # 80009380 <CONSOLE_STATUS+0x370>
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	50c080e7          	jalr	1292(ra) # 800051ac <_Z11printStringPKc>
        return;
    80004ca8:	000b8113          	mv	sp,s7
    80004cac:	2380006f          	j	80004ee4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004cb0:	01000513          	li	a0,16
    80004cb4:	ffffe097          	auipc	ra,0xffffe
    80004cb8:	864080e7          	jalr	-1948(ra) # 80002518 <_Znwm>
    80004cbc:	00050493          	mv	s1,a0
    80004cc0:	00000593          	li	a1,0
    80004cc4:	ffffe097          	auipc	ra,0xffffe
    80004cc8:	9f8080e7          	jalr	-1544(ra) # 800026bc <_ZN9SemaphoreC1Ej>
    80004ccc:	00007797          	auipc	a5,0x7
    80004cd0:	ac97b223          	sd	s1,-1340(a5) # 8000b790 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004cd4:	00391793          	slli	a5,s2,0x3
    80004cd8:	00f78793          	addi	a5,a5,15
    80004cdc:	ff07f793          	andi	a5,a5,-16
    80004ce0:	40f10133          	sub	sp,sp,a5
    80004ce4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004ce8:	0019071b          	addiw	a4,s2,1
    80004cec:	00171793          	slli	a5,a4,0x1
    80004cf0:	00e787b3          	add	a5,a5,a4
    80004cf4:	00379793          	slli	a5,a5,0x3
    80004cf8:	00f78793          	addi	a5,a5,15
    80004cfc:	ff07f793          	andi	a5,a5,-16
    80004d00:	40f10133          	sub	sp,sp,a5
    80004d04:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004d08:	00191c13          	slli	s8,s2,0x1
    80004d0c:	012c07b3          	add	a5,s8,s2
    80004d10:	00379793          	slli	a5,a5,0x3
    80004d14:	00fa07b3          	add	a5,s4,a5
    80004d18:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004d1c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004d20:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004d24:	02800513          	li	a0,40
    80004d28:	ffffd097          	auipc	ra,0xffffd
    80004d2c:	7f0080e7          	jalr	2032(ra) # 80002518 <_Znwm>
    80004d30:	00050b13          	mv	s6,a0
    80004d34:	012c0c33          	add	s8,s8,s2
    80004d38:	003c1c13          	slli	s8,s8,0x3
    80004d3c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004d40:	ffffe097          	auipc	ra,0xffffe
    80004d44:	ac8080e7          	jalr	-1336(ra) # 80002808 <_ZN6ThreadC1Ev>
    80004d48:	00007797          	auipc	a5,0x7
    80004d4c:	8f078793          	addi	a5,a5,-1808 # 8000b638 <_ZTV12ConsumerSync+0x10>
    80004d50:	00fb3023          	sd	a5,0(s6)
    80004d54:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004d58:	000b0513          	mv	a0,s6
    80004d5c:	ffffe097          	auipc	ra,0xffffe
    80004d60:	a7c080e7          	jalr	-1412(ra) # 800027d8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004d64:	00000493          	li	s1,0
    80004d68:	0380006f          	j	80004da0 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004d6c:	00007797          	auipc	a5,0x7
    80004d70:	8a478793          	addi	a5,a5,-1884 # 8000b610 <_ZTV12ProducerSync+0x10>
    80004d74:	00fcb023          	sd	a5,0(s9)
    80004d78:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004d7c:	00349793          	slli	a5,s1,0x3
    80004d80:	00f987b3          	add	a5,s3,a5
    80004d84:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004d88:	00349793          	slli	a5,s1,0x3
    80004d8c:	00f987b3          	add	a5,s3,a5
    80004d90:	0007b503          	ld	a0,0(a5)
    80004d94:	ffffe097          	auipc	ra,0xffffe
    80004d98:	a44080e7          	jalr	-1468(ra) # 800027d8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004d9c:	0014849b          	addiw	s1,s1,1
    80004da0:	0b24d063          	bge	s1,s2,80004e40 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004da4:	00149793          	slli	a5,s1,0x1
    80004da8:	009787b3          	add	a5,a5,s1
    80004dac:	00379793          	slli	a5,a5,0x3
    80004db0:	00fa07b3          	add	a5,s4,a5
    80004db4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004db8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004dbc:	00007717          	auipc	a4,0x7
    80004dc0:	9d473703          	ld	a4,-1580(a4) # 8000b790 <_ZL10waitForAll>
    80004dc4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004dc8:	02905863          	blez	s1,80004df8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004dcc:	02800513          	li	a0,40
    80004dd0:	ffffd097          	auipc	ra,0xffffd
    80004dd4:	748080e7          	jalr	1864(ra) # 80002518 <_Znwm>
    80004dd8:	00050c93          	mv	s9,a0
    80004ddc:	00149c13          	slli	s8,s1,0x1
    80004de0:	009c0c33          	add	s8,s8,s1
    80004de4:	003c1c13          	slli	s8,s8,0x3
    80004de8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004dec:	ffffe097          	auipc	ra,0xffffe
    80004df0:	a1c080e7          	jalr	-1508(ra) # 80002808 <_ZN6ThreadC1Ev>
    80004df4:	f79ff06f          	j	80004d6c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004df8:	02800513          	li	a0,40
    80004dfc:	ffffd097          	auipc	ra,0xffffd
    80004e00:	71c080e7          	jalr	1820(ra) # 80002518 <_Znwm>
    80004e04:	00050c93          	mv	s9,a0
    80004e08:	00149c13          	slli	s8,s1,0x1
    80004e0c:	009c0c33          	add	s8,s8,s1
    80004e10:	003c1c13          	slli	s8,s8,0x3
    80004e14:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004e18:	ffffe097          	auipc	ra,0xffffe
    80004e1c:	9f0080e7          	jalr	-1552(ra) # 80002808 <_ZN6ThreadC1Ev>
    80004e20:	00006797          	auipc	a5,0x6
    80004e24:	7c878793          	addi	a5,a5,1992 # 8000b5e8 <_ZTV16ProducerKeyboard+0x10>
    80004e28:	00fcb023          	sd	a5,0(s9)
    80004e2c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004e30:	00349793          	slli	a5,s1,0x3
    80004e34:	00f987b3          	add	a5,s3,a5
    80004e38:	0197b023          	sd	s9,0(a5)
    80004e3c:	f4dff06f          	j	80004d88 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004e40:	ffffe097          	auipc	ra,0xffffe
    80004e44:	90c080e7          	jalr	-1780(ra) # 8000274c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e48:	00000493          	li	s1,0
    80004e4c:	00994e63          	blt	s2,s1,80004e68 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004e50:	00007517          	auipc	a0,0x7
    80004e54:	94053503          	ld	a0,-1728(a0) # 8000b790 <_ZL10waitForAll>
    80004e58:	ffffe097          	auipc	ra,0xffffe
    80004e5c:	89c080e7          	jalr	-1892(ra) # 800026f4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e60:	0014849b          	addiw	s1,s1,1
    80004e64:	fe9ff06f          	j	80004e4c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004e68:	00000493          	li	s1,0
    80004e6c:	0080006f          	j	80004e74 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004e70:	0014849b          	addiw	s1,s1,1
    80004e74:	0324d263          	bge	s1,s2,80004e98 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004e78:	00349793          	slli	a5,s1,0x3
    80004e7c:	00f987b3          	add	a5,s3,a5
    80004e80:	0007b503          	ld	a0,0(a5)
    80004e84:	fe0506e3          	beqz	a0,80004e70 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004e88:	00053783          	ld	a5,0(a0)
    80004e8c:	0087b783          	ld	a5,8(a5)
    80004e90:	000780e7          	jalr	a5
    80004e94:	fddff06f          	j	80004e70 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004e98:	000b0a63          	beqz	s6,80004eac <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004e9c:	000b3783          	ld	a5,0(s6)
    80004ea0:	0087b783          	ld	a5,8(a5)
    80004ea4:	000b0513          	mv	a0,s6
    80004ea8:	000780e7          	jalr	a5
    delete waitForAll;
    80004eac:	00007517          	auipc	a0,0x7
    80004eb0:	8e453503          	ld	a0,-1820(a0) # 8000b790 <_ZL10waitForAll>
    80004eb4:	00050863          	beqz	a0,80004ec4 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004eb8:	00053783          	ld	a5,0(a0)
    80004ebc:	0087b783          	ld	a5,8(a5)
    80004ec0:	000780e7          	jalr	a5
    delete buffer;
    80004ec4:	000a8e63          	beqz	s5,80004ee0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004ec8:	000a8513          	mv	a0,s5
    80004ecc:	00001097          	auipc	ra,0x1
    80004ed0:	8a8080e7          	jalr	-1880(ra) # 80005774 <_ZN9BufferCPPD1Ev>
    80004ed4:	000a8513          	mv	a0,s5
    80004ed8:	ffffd097          	auipc	ra,0xffffd
    80004edc:	690080e7          	jalr	1680(ra) # 80002568 <_ZdlPv>
    80004ee0:	000b8113          	mv	sp,s7

}
    80004ee4:	f8040113          	addi	sp,s0,-128
    80004ee8:	07813083          	ld	ra,120(sp)
    80004eec:	07013403          	ld	s0,112(sp)
    80004ef0:	06813483          	ld	s1,104(sp)
    80004ef4:	06013903          	ld	s2,96(sp)
    80004ef8:	05813983          	ld	s3,88(sp)
    80004efc:	05013a03          	ld	s4,80(sp)
    80004f00:	04813a83          	ld	s5,72(sp)
    80004f04:	04013b03          	ld	s6,64(sp)
    80004f08:	03813b83          	ld	s7,56(sp)
    80004f0c:	03013c03          	ld	s8,48(sp)
    80004f10:	02813c83          	ld	s9,40(sp)
    80004f14:	08010113          	addi	sp,sp,128
    80004f18:	00008067          	ret
    80004f1c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004f20:	000a8513          	mv	a0,s5
    80004f24:	ffffd097          	auipc	ra,0xffffd
    80004f28:	644080e7          	jalr	1604(ra) # 80002568 <_ZdlPv>
    80004f2c:	00048513          	mv	a0,s1
    80004f30:	00008097          	auipc	ra,0x8
    80004f34:	948080e7          	jalr	-1720(ra) # 8000c878 <_Unwind_Resume>
    80004f38:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004f3c:	00048513          	mv	a0,s1
    80004f40:	ffffd097          	auipc	ra,0xffffd
    80004f44:	628080e7          	jalr	1576(ra) # 80002568 <_ZdlPv>
    80004f48:	00090513          	mv	a0,s2
    80004f4c:	00008097          	auipc	ra,0x8
    80004f50:	92c080e7          	jalr	-1748(ra) # 8000c878 <_Unwind_Resume>
    80004f54:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004f58:	000b0513          	mv	a0,s6
    80004f5c:	ffffd097          	auipc	ra,0xffffd
    80004f60:	60c080e7          	jalr	1548(ra) # 80002568 <_ZdlPv>
    80004f64:	00048513          	mv	a0,s1
    80004f68:	00008097          	auipc	ra,0x8
    80004f6c:	910080e7          	jalr	-1776(ra) # 8000c878 <_Unwind_Resume>
    80004f70:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004f74:	000c8513          	mv	a0,s9
    80004f78:	ffffd097          	auipc	ra,0xffffd
    80004f7c:	5f0080e7          	jalr	1520(ra) # 80002568 <_ZdlPv>
    80004f80:	00048513          	mv	a0,s1
    80004f84:	00008097          	auipc	ra,0x8
    80004f88:	8f4080e7          	jalr	-1804(ra) # 8000c878 <_Unwind_Resume>
    80004f8c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004f90:	000c8513          	mv	a0,s9
    80004f94:	ffffd097          	auipc	ra,0xffffd
    80004f98:	5d4080e7          	jalr	1492(ra) # 80002568 <_ZdlPv>
    80004f9c:	00048513          	mv	a0,s1
    80004fa0:	00008097          	auipc	ra,0x8
    80004fa4:	8d8080e7          	jalr	-1832(ra) # 8000c878 <_Unwind_Resume>

0000000080004fa8 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004fa8:	ff010113          	addi	sp,sp,-16
    80004fac:	00113423          	sd	ra,8(sp)
    80004fb0:	00813023          	sd	s0,0(sp)
    80004fb4:	01010413          	addi	s0,sp,16
    80004fb8:	00006797          	auipc	a5,0x6
    80004fbc:	68078793          	addi	a5,a5,1664 # 8000b638 <_ZTV12ConsumerSync+0x10>
    80004fc0:	00f53023          	sd	a5,0(a0)
    80004fc4:	ffffd097          	auipc	ra,0xffffd
    80004fc8:	684080e7          	jalr	1668(ra) # 80002648 <_ZN6ThreadD1Ev>
    80004fcc:	00813083          	ld	ra,8(sp)
    80004fd0:	00013403          	ld	s0,0(sp)
    80004fd4:	01010113          	addi	sp,sp,16
    80004fd8:	00008067          	ret

0000000080004fdc <_ZN12ConsumerSyncD0Ev>:
    80004fdc:	fe010113          	addi	sp,sp,-32
    80004fe0:	00113c23          	sd	ra,24(sp)
    80004fe4:	00813823          	sd	s0,16(sp)
    80004fe8:	00913423          	sd	s1,8(sp)
    80004fec:	02010413          	addi	s0,sp,32
    80004ff0:	00050493          	mv	s1,a0
    80004ff4:	00006797          	auipc	a5,0x6
    80004ff8:	64478793          	addi	a5,a5,1604 # 8000b638 <_ZTV12ConsumerSync+0x10>
    80004ffc:	00f53023          	sd	a5,0(a0)
    80005000:	ffffd097          	auipc	ra,0xffffd
    80005004:	648080e7          	jalr	1608(ra) # 80002648 <_ZN6ThreadD1Ev>
    80005008:	00048513          	mv	a0,s1
    8000500c:	ffffd097          	auipc	ra,0xffffd
    80005010:	55c080e7          	jalr	1372(ra) # 80002568 <_ZdlPv>
    80005014:	01813083          	ld	ra,24(sp)
    80005018:	01013403          	ld	s0,16(sp)
    8000501c:	00813483          	ld	s1,8(sp)
    80005020:	02010113          	addi	sp,sp,32
    80005024:	00008067          	ret

0000000080005028 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005028:	ff010113          	addi	sp,sp,-16
    8000502c:	00113423          	sd	ra,8(sp)
    80005030:	00813023          	sd	s0,0(sp)
    80005034:	01010413          	addi	s0,sp,16
    80005038:	00006797          	auipc	a5,0x6
    8000503c:	5d878793          	addi	a5,a5,1496 # 8000b610 <_ZTV12ProducerSync+0x10>
    80005040:	00f53023          	sd	a5,0(a0)
    80005044:	ffffd097          	auipc	ra,0xffffd
    80005048:	604080e7          	jalr	1540(ra) # 80002648 <_ZN6ThreadD1Ev>
    8000504c:	00813083          	ld	ra,8(sp)
    80005050:	00013403          	ld	s0,0(sp)
    80005054:	01010113          	addi	sp,sp,16
    80005058:	00008067          	ret

000000008000505c <_ZN12ProducerSyncD0Ev>:
    8000505c:	fe010113          	addi	sp,sp,-32
    80005060:	00113c23          	sd	ra,24(sp)
    80005064:	00813823          	sd	s0,16(sp)
    80005068:	00913423          	sd	s1,8(sp)
    8000506c:	02010413          	addi	s0,sp,32
    80005070:	00050493          	mv	s1,a0
    80005074:	00006797          	auipc	a5,0x6
    80005078:	59c78793          	addi	a5,a5,1436 # 8000b610 <_ZTV12ProducerSync+0x10>
    8000507c:	00f53023          	sd	a5,0(a0)
    80005080:	ffffd097          	auipc	ra,0xffffd
    80005084:	5c8080e7          	jalr	1480(ra) # 80002648 <_ZN6ThreadD1Ev>
    80005088:	00048513          	mv	a0,s1
    8000508c:	ffffd097          	auipc	ra,0xffffd
    80005090:	4dc080e7          	jalr	1244(ra) # 80002568 <_ZdlPv>
    80005094:	01813083          	ld	ra,24(sp)
    80005098:	01013403          	ld	s0,16(sp)
    8000509c:	00813483          	ld	s1,8(sp)
    800050a0:	02010113          	addi	sp,sp,32
    800050a4:	00008067          	ret

00000000800050a8 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800050a8:	ff010113          	addi	sp,sp,-16
    800050ac:	00113423          	sd	ra,8(sp)
    800050b0:	00813023          	sd	s0,0(sp)
    800050b4:	01010413          	addi	s0,sp,16
    800050b8:	00006797          	auipc	a5,0x6
    800050bc:	53078793          	addi	a5,a5,1328 # 8000b5e8 <_ZTV16ProducerKeyboard+0x10>
    800050c0:	00f53023          	sd	a5,0(a0)
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	584080e7          	jalr	1412(ra) # 80002648 <_ZN6ThreadD1Ev>
    800050cc:	00813083          	ld	ra,8(sp)
    800050d0:	00013403          	ld	s0,0(sp)
    800050d4:	01010113          	addi	sp,sp,16
    800050d8:	00008067          	ret

00000000800050dc <_ZN16ProducerKeyboardD0Ev>:
    800050dc:	fe010113          	addi	sp,sp,-32
    800050e0:	00113c23          	sd	ra,24(sp)
    800050e4:	00813823          	sd	s0,16(sp)
    800050e8:	00913423          	sd	s1,8(sp)
    800050ec:	02010413          	addi	s0,sp,32
    800050f0:	00050493          	mv	s1,a0
    800050f4:	00006797          	auipc	a5,0x6
    800050f8:	4f478793          	addi	a5,a5,1268 # 8000b5e8 <_ZTV16ProducerKeyboard+0x10>
    800050fc:	00f53023          	sd	a5,0(a0)
    80005100:	ffffd097          	auipc	ra,0xffffd
    80005104:	548080e7          	jalr	1352(ra) # 80002648 <_ZN6ThreadD1Ev>
    80005108:	00048513          	mv	a0,s1
    8000510c:	ffffd097          	auipc	ra,0xffffd
    80005110:	45c080e7          	jalr	1116(ra) # 80002568 <_ZdlPv>
    80005114:	01813083          	ld	ra,24(sp)
    80005118:	01013403          	ld	s0,16(sp)
    8000511c:	00813483          	ld	s1,8(sp)
    80005120:	02010113          	addi	sp,sp,32
    80005124:	00008067          	ret

0000000080005128 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005128:	ff010113          	addi	sp,sp,-16
    8000512c:	00113423          	sd	ra,8(sp)
    80005130:	00813023          	sd	s0,0(sp)
    80005134:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005138:	02053583          	ld	a1,32(a0)
    8000513c:	fffff097          	auipc	ra,0xfffff
    80005140:	7e4080e7          	jalr	2020(ra) # 80004920 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005144:	00813083          	ld	ra,8(sp)
    80005148:	00013403          	ld	s0,0(sp)
    8000514c:	01010113          	addi	sp,sp,16
    80005150:	00008067          	ret

0000000080005154 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005154:	ff010113          	addi	sp,sp,-16
    80005158:	00113423          	sd	ra,8(sp)
    8000515c:	00813023          	sd	s0,0(sp)
    80005160:	01010413          	addi	s0,sp,16
        producer(td);
    80005164:	02053583          	ld	a1,32(a0)
    80005168:	00000097          	auipc	ra,0x0
    8000516c:	878080e7          	jalr	-1928(ra) # 800049e0 <_ZN12ProducerSync8producerEPv>
    }
    80005170:	00813083          	ld	ra,8(sp)
    80005174:	00013403          	ld	s0,0(sp)
    80005178:	01010113          	addi	sp,sp,16
    8000517c:	00008067          	ret

0000000080005180 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005180:	ff010113          	addi	sp,sp,-16
    80005184:	00113423          	sd	ra,8(sp)
    80005188:	00813023          	sd	s0,0(sp)
    8000518c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005190:	02053583          	ld	a1,32(a0)
    80005194:	00000097          	auipc	ra,0x0
    80005198:	8e0080e7          	jalr	-1824(ra) # 80004a74 <_ZN12ConsumerSync8consumerEPv>
    }
    8000519c:	00813083          	ld	ra,8(sp)
    800051a0:	00013403          	ld	s0,0(sp)
    800051a4:	01010113          	addi	sp,sp,16
    800051a8:	00008067          	ret

00000000800051ac <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800051ac:	fe010113          	addi	sp,sp,-32
    800051b0:	00113c23          	sd	ra,24(sp)
    800051b4:	00813823          	sd	s0,16(sp)
    800051b8:	00913423          	sd	s1,8(sp)
    800051bc:	02010413          	addi	s0,sp,32
    800051c0:	00050493          	mv	s1,a0
    LOCK();
    800051c4:	00100613          	li	a2,1
    800051c8:	00000593          	li	a1,0
    800051cc:	00006517          	auipc	a0,0x6
    800051d0:	5cc50513          	addi	a0,a0,1484 # 8000b798 <lockPrint>
    800051d4:	ffffc097          	auipc	ra,0xffffc
    800051d8:	2c4080e7          	jalr	708(ra) # 80001498 <copy_and_swap>
    800051dc:	00050863          	beqz	a0,800051ec <_Z11printStringPKc+0x40>
    800051e0:	ffffc097          	auipc	ra,0xffffc
    800051e4:	3f4080e7          	jalr	1012(ra) # 800015d4 <_Z15thread_dispatchv>
    800051e8:	fddff06f          	j	800051c4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800051ec:	0004c503          	lbu	a0,0(s1)
    800051f0:	00050a63          	beqz	a0,80005204 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800051f4:	ffffc097          	auipc	ra,0xffffc
    800051f8:	500080e7          	jalr	1280(ra) # 800016f4 <_Z4putcc>
        string++;
    800051fc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005200:	fedff06f          	j	800051ec <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005204:	00000613          	li	a2,0
    80005208:	00100593          	li	a1,1
    8000520c:	00006517          	auipc	a0,0x6
    80005210:	58c50513          	addi	a0,a0,1420 # 8000b798 <lockPrint>
    80005214:	ffffc097          	auipc	ra,0xffffc
    80005218:	284080e7          	jalr	644(ra) # 80001498 <copy_and_swap>
    8000521c:	fe0514e3          	bnez	a0,80005204 <_Z11printStringPKc+0x58>
}
    80005220:	01813083          	ld	ra,24(sp)
    80005224:	01013403          	ld	s0,16(sp)
    80005228:	00813483          	ld	s1,8(sp)
    8000522c:	02010113          	addi	sp,sp,32
    80005230:	00008067          	ret

0000000080005234 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005234:	fd010113          	addi	sp,sp,-48
    80005238:	02113423          	sd	ra,40(sp)
    8000523c:	02813023          	sd	s0,32(sp)
    80005240:	00913c23          	sd	s1,24(sp)
    80005244:	01213823          	sd	s2,16(sp)
    80005248:	01313423          	sd	s3,8(sp)
    8000524c:	01413023          	sd	s4,0(sp)
    80005250:	03010413          	addi	s0,sp,48
    80005254:	00050993          	mv	s3,a0
    80005258:	00058a13          	mv	s4,a1
    LOCK();
    8000525c:	00100613          	li	a2,1
    80005260:	00000593          	li	a1,0
    80005264:	00006517          	auipc	a0,0x6
    80005268:	53450513          	addi	a0,a0,1332 # 8000b798 <lockPrint>
    8000526c:	ffffc097          	auipc	ra,0xffffc
    80005270:	22c080e7          	jalr	556(ra) # 80001498 <copy_and_swap>
    80005274:	00050863          	beqz	a0,80005284 <_Z9getStringPci+0x50>
    80005278:	ffffc097          	auipc	ra,0xffffc
    8000527c:	35c080e7          	jalr	860(ra) # 800015d4 <_Z15thread_dispatchv>
    80005280:	fddff06f          	j	8000525c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005284:	00000913          	li	s2,0
    80005288:	00090493          	mv	s1,s2
    8000528c:	0019091b          	addiw	s2,s2,1
    80005290:	03495a63          	bge	s2,s4,800052c4 <_Z9getStringPci+0x90>
        cc = getc();
    80005294:	ffffc097          	auipc	ra,0xffffc
    80005298:	438080e7          	jalr	1080(ra) # 800016cc <_Z4getcv>
        if(cc < 1)
    8000529c:	02050463          	beqz	a0,800052c4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800052a0:	009984b3          	add	s1,s3,s1
    800052a4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800052a8:	00a00793          	li	a5,10
    800052ac:	00f50a63          	beq	a0,a5,800052c0 <_Z9getStringPci+0x8c>
    800052b0:	00d00793          	li	a5,13
    800052b4:	fcf51ae3          	bne	a0,a5,80005288 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800052b8:	00090493          	mv	s1,s2
    800052bc:	0080006f          	j	800052c4 <_Z9getStringPci+0x90>
    800052c0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800052c4:	009984b3          	add	s1,s3,s1
    800052c8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800052cc:	00000613          	li	a2,0
    800052d0:	00100593          	li	a1,1
    800052d4:	00006517          	auipc	a0,0x6
    800052d8:	4c450513          	addi	a0,a0,1220 # 8000b798 <lockPrint>
    800052dc:	ffffc097          	auipc	ra,0xffffc
    800052e0:	1bc080e7          	jalr	444(ra) # 80001498 <copy_and_swap>
    800052e4:	fe0514e3          	bnez	a0,800052cc <_Z9getStringPci+0x98>
    return buf;
}
    800052e8:	00098513          	mv	a0,s3
    800052ec:	02813083          	ld	ra,40(sp)
    800052f0:	02013403          	ld	s0,32(sp)
    800052f4:	01813483          	ld	s1,24(sp)
    800052f8:	01013903          	ld	s2,16(sp)
    800052fc:	00813983          	ld	s3,8(sp)
    80005300:	00013a03          	ld	s4,0(sp)
    80005304:	03010113          	addi	sp,sp,48
    80005308:	00008067          	ret

000000008000530c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000530c:	ff010113          	addi	sp,sp,-16
    80005310:	00813423          	sd	s0,8(sp)
    80005314:	01010413          	addi	s0,sp,16
    80005318:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000531c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005320:	0006c603          	lbu	a2,0(a3)
    80005324:	fd06071b          	addiw	a4,a2,-48
    80005328:	0ff77713          	andi	a4,a4,255
    8000532c:	00900793          	li	a5,9
    80005330:	02e7e063          	bltu	a5,a4,80005350 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005334:	0025179b          	slliw	a5,a0,0x2
    80005338:	00a787bb          	addw	a5,a5,a0
    8000533c:	0017979b          	slliw	a5,a5,0x1
    80005340:	00168693          	addi	a3,a3,1
    80005344:	00c787bb          	addw	a5,a5,a2
    80005348:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000534c:	fd5ff06f          	j	80005320 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005350:	00813403          	ld	s0,8(sp)
    80005354:	01010113          	addi	sp,sp,16
    80005358:	00008067          	ret

000000008000535c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000535c:	fc010113          	addi	sp,sp,-64
    80005360:	02113c23          	sd	ra,56(sp)
    80005364:	02813823          	sd	s0,48(sp)
    80005368:	02913423          	sd	s1,40(sp)
    8000536c:	03213023          	sd	s2,32(sp)
    80005370:	01313c23          	sd	s3,24(sp)
    80005374:	04010413          	addi	s0,sp,64
    80005378:	00050493          	mv	s1,a0
    8000537c:	00058913          	mv	s2,a1
    80005380:	00060993          	mv	s3,a2
    LOCK();
    80005384:	00100613          	li	a2,1
    80005388:	00000593          	li	a1,0
    8000538c:	00006517          	auipc	a0,0x6
    80005390:	40c50513          	addi	a0,a0,1036 # 8000b798 <lockPrint>
    80005394:	ffffc097          	auipc	ra,0xffffc
    80005398:	104080e7          	jalr	260(ra) # 80001498 <copy_and_swap>
    8000539c:	00050863          	beqz	a0,800053ac <_Z8printIntiii+0x50>
    800053a0:	ffffc097          	auipc	ra,0xffffc
    800053a4:	234080e7          	jalr	564(ra) # 800015d4 <_Z15thread_dispatchv>
    800053a8:	fddff06f          	j	80005384 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800053ac:	00098463          	beqz	s3,800053b4 <_Z8printIntiii+0x58>
    800053b0:	0804c463          	bltz	s1,80005438 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800053b4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800053b8:	00000593          	li	a1,0
    }

    i = 0;
    800053bc:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800053c0:	0009079b          	sext.w	a5,s2
    800053c4:	0325773b          	remuw	a4,a0,s2
    800053c8:	00048613          	mv	a2,s1
    800053cc:	0014849b          	addiw	s1,s1,1
    800053d0:	02071693          	slli	a3,a4,0x20
    800053d4:	0206d693          	srli	a3,a3,0x20
    800053d8:	00006717          	auipc	a4,0x6
    800053dc:	27870713          	addi	a4,a4,632 # 8000b650 <digits>
    800053e0:	00d70733          	add	a4,a4,a3
    800053e4:	00074683          	lbu	a3,0(a4)
    800053e8:	fd040713          	addi	a4,s0,-48
    800053ec:	00c70733          	add	a4,a4,a2
    800053f0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800053f4:	0005071b          	sext.w	a4,a0
    800053f8:	0325553b          	divuw	a0,a0,s2
    800053fc:	fcf772e3          	bgeu	a4,a5,800053c0 <_Z8printIntiii+0x64>
    if(neg)
    80005400:	00058c63          	beqz	a1,80005418 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005404:	fd040793          	addi	a5,s0,-48
    80005408:	009784b3          	add	s1,a5,s1
    8000540c:	02d00793          	li	a5,45
    80005410:	fef48823          	sb	a5,-16(s1)
    80005414:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005418:	fff4849b          	addiw	s1,s1,-1
    8000541c:	0204c463          	bltz	s1,80005444 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005420:	fd040793          	addi	a5,s0,-48
    80005424:	009787b3          	add	a5,a5,s1
    80005428:	ff07c503          	lbu	a0,-16(a5)
    8000542c:	ffffc097          	auipc	ra,0xffffc
    80005430:	2c8080e7          	jalr	712(ra) # 800016f4 <_Z4putcc>
    80005434:	fe5ff06f          	j	80005418 <_Z8printIntiii+0xbc>
        x = -xx;
    80005438:	4090053b          	negw	a0,s1
        neg = 1;
    8000543c:	00100593          	li	a1,1
        x = -xx;
    80005440:	f7dff06f          	j	800053bc <_Z8printIntiii+0x60>

    UNLOCK();
    80005444:	00000613          	li	a2,0
    80005448:	00100593          	li	a1,1
    8000544c:	00006517          	auipc	a0,0x6
    80005450:	34c50513          	addi	a0,a0,844 # 8000b798 <lockPrint>
    80005454:	ffffc097          	auipc	ra,0xffffc
    80005458:	044080e7          	jalr	68(ra) # 80001498 <copy_and_swap>
    8000545c:	fe0514e3          	bnez	a0,80005444 <_Z8printIntiii+0xe8>
    80005460:	03813083          	ld	ra,56(sp)
    80005464:	03013403          	ld	s0,48(sp)
    80005468:	02813483          	ld	s1,40(sp)
    8000546c:	02013903          	ld	s2,32(sp)
    80005470:	01813983          	ld	s3,24(sp)
    80005474:	04010113          	addi	sp,sp,64
    80005478:	00008067          	ret

000000008000547c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000547c:	fd010113          	addi	sp,sp,-48
    80005480:	02113423          	sd	ra,40(sp)
    80005484:	02813023          	sd	s0,32(sp)
    80005488:	00913c23          	sd	s1,24(sp)
    8000548c:	01213823          	sd	s2,16(sp)
    80005490:	01313423          	sd	s3,8(sp)
    80005494:	03010413          	addi	s0,sp,48
    80005498:	00050493          	mv	s1,a0
    8000549c:	00058913          	mv	s2,a1
    800054a0:	0015879b          	addiw	a5,a1,1
    800054a4:	0007851b          	sext.w	a0,a5
    800054a8:	00f4a023          	sw	a5,0(s1)
    800054ac:	0004a823          	sw	zero,16(s1)
    800054b0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800054b4:	00251513          	slli	a0,a0,0x2
    800054b8:	ffffc097          	auipc	ra,0xffffc
    800054bc:	000080e7          	jalr	ra # 800014b8 <_Z9mem_allocm>
    800054c0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800054c4:	01000513          	li	a0,16
    800054c8:	ffffd097          	auipc	ra,0xffffd
    800054cc:	050080e7          	jalr	80(ra) # 80002518 <_Znwm>
    800054d0:	00050993          	mv	s3,a0
    800054d4:	00000593          	li	a1,0
    800054d8:	ffffd097          	auipc	ra,0xffffd
    800054dc:	1e4080e7          	jalr	484(ra) # 800026bc <_ZN9SemaphoreC1Ej>
    800054e0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800054e4:	01000513          	li	a0,16
    800054e8:	ffffd097          	auipc	ra,0xffffd
    800054ec:	030080e7          	jalr	48(ra) # 80002518 <_Znwm>
    800054f0:	00050993          	mv	s3,a0
    800054f4:	00090593          	mv	a1,s2
    800054f8:	ffffd097          	auipc	ra,0xffffd
    800054fc:	1c4080e7          	jalr	452(ra) # 800026bc <_ZN9SemaphoreC1Ej>
    80005500:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005504:	01000513          	li	a0,16
    80005508:	ffffd097          	auipc	ra,0xffffd
    8000550c:	010080e7          	jalr	16(ra) # 80002518 <_Znwm>
    80005510:	00050913          	mv	s2,a0
    80005514:	00100593          	li	a1,1
    80005518:	ffffd097          	auipc	ra,0xffffd
    8000551c:	1a4080e7          	jalr	420(ra) # 800026bc <_ZN9SemaphoreC1Ej>
    80005520:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005524:	01000513          	li	a0,16
    80005528:	ffffd097          	auipc	ra,0xffffd
    8000552c:	ff0080e7          	jalr	-16(ra) # 80002518 <_Znwm>
    80005530:	00050913          	mv	s2,a0
    80005534:	00100593          	li	a1,1
    80005538:	ffffd097          	auipc	ra,0xffffd
    8000553c:	184080e7          	jalr	388(ra) # 800026bc <_ZN9SemaphoreC1Ej>
    80005540:	0324b823          	sd	s2,48(s1)
}
    80005544:	02813083          	ld	ra,40(sp)
    80005548:	02013403          	ld	s0,32(sp)
    8000554c:	01813483          	ld	s1,24(sp)
    80005550:	01013903          	ld	s2,16(sp)
    80005554:	00813983          	ld	s3,8(sp)
    80005558:	03010113          	addi	sp,sp,48
    8000555c:	00008067          	ret
    80005560:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005564:	00098513          	mv	a0,s3
    80005568:	ffffd097          	auipc	ra,0xffffd
    8000556c:	000080e7          	jalr	ra # 80002568 <_ZdlPv>
    80005570:	00048513          	mv	a0,s1
    80005574:	00007097          	auipc	ra,0x7
    80005578:	304080e7          	jalr	772(ra) # 8000c878 <_Unwind_Resume>
    8000557c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005580:	00098513          	mv	a0,s3
    80005584:	ffffd097          	auipc	ra,0xffffd
    80005588:	fe4080e7          	jalr	-28(ra) # 80002568 <_ZdlPv>
    8000558c:	00048513          	mv	a0,s1
    80005590:	00007097          	auipc	ra,0x7
    80005594:	2e8080e7          	jalr	744(ra) # 8000c878 <_Unwind_Resume>
    80005598:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000559c:	00090513          	mv	a0,s2
    800055a0:	ffffd097          	auipc	ra,0xffffd
    800055a4:	fc8080e7          	jalr	-56(ra) # 80002568 <_ZdlPv>
    800055a8:	00048513          	mv	a0,s1
    800055ac:	00007097          	auipc	ra,0x7
    800055b0:	2cc080e7          	jalr	716(ra) # 8000c878 <_Unwind_Resume>
    800055b4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800055b8:	00090513          	mv	a0,s2
    800055bc:	ffffd097          	auipc	ra,0xffffd
    800055c0:	fac080e7          	jalr	-84(ra) # 80002568 <_ZdlPv>
    800055c4:	00048513          	mv	a0,s1
    800055c8:	00007097          	auipc	ra,0x7
    800055cc:	2b0080e7          	jalr	688(ra) # 8000c878 <_Unwind_Resume>

00000000800055d0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800055d0:	fe010113          	addi	sp,sp,-32
    800055d4:	00113c23          	sd	ra,24(sp)
    800055d8:	00813823          	sd	s0,16(sp)
    800055dc:	00913423          	sd	s1,8(sp)
    800055e0:	01213023          	sd	s2,0(sp)
    800055e4:	02010413          	addi	s0,sp,32
    800055e8:	00050493          	mv	s1,a0
    800055ec:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800055f0:	01853503          	ld	a0,24(a0)
    800055f4:	ffffd097          	auipc	ra,0xffffd
    800055f8:	100080e7          	jalr	256(ra) # 800026f4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800055fc:	0304b503          	ld	a0,48(s1)
    80005600:	ffffd097          	auipc	ra,0xffffd
    80005604:	0f4080e7          	jalr	244(ra) # 800026f4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005608:	0084b783          	ld	a5,8(s1)
    8000560c:	0144a703          	lw	a4,20(s1)
    80005610:	00271713          	slli	a4,a4,0x2
    80005614:	00e787b3          	add	a5,a5,a4
    80005618:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000561c:	0144a783          	lw	a5,20(s1)
    80005620:	0017879b          	addiw	a5,a5,1
    80005624:	0004a703          	lw	a4,0(s1)
    80005628:	02e7e7bb          	remw	a5,a5,a4
    8000562c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005630:	0304b503          	ld	a0,48(s1)
    80005634:	ffffd097          	auipc	ra,0xffffd
    80005638:	0ec080e7          	jalr	236(ra) # 80002720 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000563c:	0204b503          	ld	a0,32(s1)
    80005640:	ffffd097          	auipc	ra,0xffffd
    80005644:	0e0080e7          	jalr	224(ra) # 80002720 <_ZN9Semaphore6signalEv>

}
    80005648:	01813083          	ld	ra,24(sp)
    8000564c:	01013403          	ld	s0,16(sp)
    80005650:	00813483          	ld	s1,8(sp)
    80005654:	00013903          	ld	s2,0(sp)
    80005658:	02010113          	addi	sp,sp,32
    8000565c:	00008067          	ret

0000000080005660 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005660:	fe010113          	addi	sp,sp,-32
    80005664:	00113c23          	sd	ra,24(sp)
    80005668:	00813823          	sd	s0,16(sp)
    8000566c:	00913423          	sd	s1,8(sp)
    80005670:	01213023          	sd	s2,0(sp)
    80005674:	02010413          	addi	s0,sp,32
    80005678:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000567c:	02053503          	ld	a0,32(a0)
    80005680:	ffffd097          	auipc	ra,0xffffd
    80005684:	074080e7          	jalr	116(ra) # 800026f4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005688:	0284b503          	ld	a0,40(s1)
    8000568c:	ffffd097          	auipc	ra,0xffffd
    80005690:	068080e7          	jalr	104(ra) # 800026f4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005694:	0084b703          	ld	a4,8(s1)
    80005698:	0104a783          	lw	a5,16(s1)
    8000569c:	00279693          	slli	a3,a5,0x2
    800056a0:	00d70733          	add	a4,a4,a3
    800056a4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800056a8:	0017879b          	addiw	a5,a5,1
    800056ac:	0004a703          	lw	a4,0(s1)
    800056b0:	02e7e7bb          	remw	a5,a5,a4
    800056b4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800056b8:	0284b503          	ld	a0,40(s1)
    800056bc:	ffffd097          	auipc	ra,0xffffd
    800056c0:	064080e7          	jalr	100(ra) # 80002720 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800056c4:	0184b503          	ld	a0,24(s1)
    800056c8:	ffffd097          	auipc	ra,0xffffd
    800056cc:	058080e7          	jalr	88(ra) # 80002720 <_ZN9Semaphore6signalEv>

    return ret;
}
    800056d0:	00090513          	mv	a0,s2
    800056d4:	01813083          	ld	ra,24(sp)
    800056d8:	01013403          	ld	s0,16(sp)
    800056dc:	00813483          	ld	s1,8(sp)
    800056e0:	00013903          	ld	s2,0(sp)
    800056e4:	02010113          	addi	sp,sp,32
    800056e8:	00008067          	ret

00000000800056ec <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800056ec:	fe010113          	addi	sp,sp,-32
    800056f0:	00113c23          	sd	ra,24(sp)
    800056f4:	00813823          	sd	s0,16(sp)
    800056f8:	00913423          	sd	s1,8(sp)
    800056fc:	01213023          	sd	s2,0(sp)
    80005700:	02010413          	addi	s0,sp,32
    80005704:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005708:	02853503          	ld	a0,40(a0)
    8000570c:	ffffd097          	auipc	ra,0xffffd
    80005710:	fe8080e7          	jalr	-24(ra) # 800026f4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005714:	0304b503          	ld	a0,48(s1)
    80005718:	ffffd097          	auipc	ra,0xffffd
    8000571c:	fdc080e7          	jalr	-36(ra) # 800026f4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005720:	0144a783          	lw	a5,20(s1)
    80005724:	0104a903          	lw	s2,16(s1)
    80005728:	0327ce63          	blt	a5,s2,80005764 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000572c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005730:	0304b503          	ld	a0,48(s1)
    80005734:	ffffd097          	auipc	ra,0xffffd
    80005738:	fec080e7          	jalr	-20(ra) # 80002720 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000573c:	0284b503          	ld	a0,40(s1)
    80005740:	ffffd097          	auipc	ra,0xffffd
    80005744:	fe0080e7          	jalr	-32(ra) # 80002720 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005748:	00090513          	mv	a0,s2
    8000574c:	01813083          	ld	ra,24(sp)
    80005750:	01013403          	ld	s0,16(sp)
    80005754:	00813483          	ld	s1,8(sp)
    80005758:	00013903          	ld	s2,0(sp)
    8000575c:	02010113          	addi	sp,sp,32
    80005760:	00008067          	ret
        ret = cap - head + tail;
    80005764:	0004a703          	lw	a4,0(s1)
    80005768:	4127093b          	subw	s2,a4,s2
    8000576c:	00f9093b          	addw	s2,s2,a5
    80005770:	fc1ff06f          	j	80005730 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005774 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005774:	fe010113          	addi	sp,sp,-32
    80005778:	00113c23          	sd	ra,24(sp)
    8000577c:	00813823          	sd	s0,16(sp)
    80005780:	00913423          	sd	s1,8(sp)
    80005784:	02010413          	addi	s0,sp,32
    80005788:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000578c:	00a00513          	li	a0,10
    80005790:	ffffd097          	auipc	ra,0xffffd
    80005794:	0d8080e7          	jalr	216(ra) # 80002868 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005798:	00004517          	auipc	a0,0x4
    8000579c:	d0050513          	addi	a0,a0,-768 # 80009498 <CONSOLE_STATUS+0x488>
    800057a0:	00000097          	auipc	ra,0x0
    800057a4:	a0c080e7          	jalr	-1524(ra) # 800051ac <_Z11printStringPKc>
    while (getCnt()) {
    800057a8:	00048513          	mv	a0,s1
    800057ac:	00000097          	auipc	ra,0x0
    800057b0:	f40080e7          	jalr	-192(ra) # 800056ec <_ZN9BufferCPP6getCntEv>
    800057b4:	02050c63          	beqz	a0,800057ec <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800057b8:	0084b783          	ld	a5,8(s1)
    800057bc:	0104a703          	lw	a4,16(s1)
    800057c0:	00271713          	slli	a4,a4,0x2
    800057c4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800057c8:	0007c503          	lbu	a0,0(a5)
    800057cc:	ffffd097          	auipc	ra,0xffffd
    800057d0:	09c080e7          	jalr	156(ra) # 80002868 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800057d4:	0104a783          	lw	a5,16(s1)
    800057d8:	0017879b          	addiw	a5,a5,1
    800057dc:	0004a703          	lw	a4,0(s1)
    800057e0:	02e7e7bb          	remw	a5,a5,a4
    800057e4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800057e8:	fc1ff06f          	j	800057a8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800057ec:	02100513          	li	a0,33
    800057f0:	ffffd097          	auipc	ra,0xffffd
    800057f4:	078080e7          	jalr	120(ra) # 80002868 <_ZN7Console4putcEc>
    Console::putc('\n');
    800057f8:	00a00513          	li	a0,10
    800057fc:	ffffd097          	auipc	ra,0xffffd
    80005800:	06c080e7          	jalr	108(ra) # 80002868 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005804:	0084b503          	ld	a0,8(s1)
    80005808:	ffffc097          	auipc	ra,0xffffc
    8000580c:	ce8080e7          	jalr	-792(ra) # 800014f0 <_Z8mem_freePv>
    delete itemAvailable;
    80005810:	0204b503          	ld	a0,32(s1)
    80005814:	00050863          	beqz	a0,80005824 <_ZN9BufferCPPD1Ev+0xb0>
    80005818:	00053783          	ld	a5,0(a0)
    8000581c:	0087b783          	ld	a5,8(a5)
    80005820:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005824:	0184b503          	ld	a0,24(s1)
    80005828:	00050863          	beqz	a0,80005838 <_ZN9BufferCPPD1Ev+0xc4>
    8000582c:	00053783          	ld	a5,0(a0)
    80005830:	0087b783          	ld	a5,8(a5)
    80005834:	000780e7          	jalr	a5
    delete mutexTail;
    80005838:	0304b503          	ld	a0,48(s1)
    8000583c:	00050863          	beqz	a0,8000584c <_ZN9BufferCPPD1Ev+0xd8>
    80005840:	00053783          	ld	a5,0(a0)
    80005844:	0087b783          	ld	a5,8(a5)
    80005848:	000780e7          	jalr	a5
    delete mutexHead;
    8000584c:	0284b503          	ld	a0,40(s1)
    80005850:	00050863          	beqz	a0,80005860 <_ZN9BufferCPPD1Ev+0xec>
    80005854:	00053783          	ld	a5,0(a0)
    80005858:	0087b783          	ld	a5,8(a5)
    8000585c:	000780e7          	jalr	a5
}
    80005860:	01813083          	ld	ra,24(sp)
    80005864:	01013403          	ld	s0,16(sp)
    80005868:	00813483          	ld	s1,8(sp)
    8000586c:	02010113          	addi	sp,sp,32
    80005870:	00008067          	ret

0000000080005874 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005874:	fe010113          	addi	sp,sp,-32
    80005878:	00113c23          	sd	ra,24(sp)
    8000587c:	00813823          	sd	s0,16(sp)
    80005880:	00913423          	sd	s1,8(sp)
    80005884:	01213023          	sd	s2,0(sp)
    80005888:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000588c:	00004517          	auipc	a0,0x4
    80005890:	c2450513          	addi	a0,a0,-988 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005894:	00000097          	auipc	ra,0x0
    80005898:	918080e7          	jalr	-1768(ra) # 800051ac <_Z11printStringPKc>
    int test = getc() - '0';
    8000589c:	ffffc097          	auipc	ra,0xffffc
    800058a0:	e30080e7          	jalr	-464(ra) # 800016cc <_Z4getcv>
    800058a4:	00050913          	mv	s2,a0
    800058a8:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800058ac:	ffffc097          	auipc	ra,0xffffc
    800058b0:	e20080e7          	jalr	-480(ra) # 800016cc <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800058b4:	fcb9091b          	addiw	s2,s2,-53
    800058b8:	00100793          	li	a5,1
    800058bc:	0327f463          	bgeu	a5,s2,800058e4 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800058c0:	00700793          	li	a5,7
    800058c4:	0e97e263          	bltu	a5,s1,800059a8 <_Z8userMainv+0x134>
    800058c8:	00249493          	slli	s1,s1,0x2
    800058cc:	00004717          	auipc	a4,0x4
    800058d0:	dfc70713          	addi	a4,a4,-516 # 800096c8 <CONSOLE_STATUS+0x6b8>
    800058d4:	00e484b3          	add	s1,s1,a4
    800058d8:	0004a783          	lw	a5,0(s1)
    800058dc:	00e787b3          	add	a5,a5,a4
    800058e0:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800058e4:	00004517          	auipc	a0,0x4
    800058e8:	bec50513          	addi	a0,a0,-1044 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800058ec:	00000097          	auipc	ra,0x0
    800058f0:	8c0080e7          	jalr	-1856(ra) # 800051ac <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800058f4:	01813083          	ld	ra,24(sp)
    800058f8:	01013403          	ld	s0,16(sp)
    800058fc:	00813483          	ld	s1,8(sp)
    80005900:	00013903          	ld	s2,0(sp)
    80005904:	02010113          	addi	sp,sp,32
    80005908:	00008067          	ret
            Threads_C_API_test();
    8000590c:	fffff097          	auipc	ra,0xfffff
    80005910:	f18080e7          	jalr	-232(ra) # 80004824 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005914:	00004517          	auipc	a0,0x4
    80005918:	bec50513          	addi	a0,a0,-1044 # 80009500 <CONSOLE_STATUS+0x4f0>
    8000591c:	00000097          	auipc	ra,0x0
    80005920:	890080e7          	jalr	-1904(ra) # 800051ac <_Z11printStringPKc>
            break;
    80005924:	fd1ff06f          	j	800058f4 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005928:	ffffe097          	auipc	ra,0xffffe
    8000592c:	ddc080e7          	jalr	-548(ra) # 80003704 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005930:	00004517          	auipc	a0,0x4
    80005934:	c1050513          	addi	a0,a0,-1008 # 80009540 <CONSOLE_STATUS+0x530>
    80005938:	00000097          	auipc	ra,0x0
    8000593c:	874080e7          	jalr	-1932(ra) # 800051ac <_Z11printStringPKc>
            break;
    80005940:	fb5ff06f          	j	800058f4 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005944:	ffffd097          	auipc	ra,0xffffd
    80005948:	614080e7          	jalr	1556(ra) # 80002f58 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    8000594c:	00004517          	auipc	a0,0x4
    80005950:	c3450513          	addi	a0,a0,-972 # 80009580 <CONSOLE_STATUS+0x570>
    80005954:	00000097          	auipc	ra,0x0
    80005958:	858080e7          	jalr	-1960(ra) # 800051ac <_Z11printStringPKc>
            break;
    8000595c:	f99ff06f          	j	800058f4 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80005960:	fffff097          	auipc	ra,0xfffff
    80005964:	208080e7          	jalr	520(ra) # 80004b68 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005968:	00004517          	auipc	a0,0x4
    8000596c:	c6850513          	addi	a0,a0,-920 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80005970:	00000097          	auipc	ra,0x0
    80005974:	83c080e7          	jalr	-1988(ra) # 800051ac <_Z11printStringPKc>
            break;
    80005978:	f7dff06f          	j	800058f4 <_Z8userMainv+0x80>
            System_Mode_test();
    8000597c:	00000097          	auipc	ra,0x0
    80005980:	658080e7          	jalr	1624(ra) # 80005fd4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005984:	00004517          	auipc	a0,0x4
    80005988:	ca450513          	addi	a0,a0,-860 # 80009628 <CONSOLE_STATUS+0x618>
    8000598c:	00000097          	auipc	ra,0x0
    80005990:	820080e7          	jalr	-2016(ra) # 800051ac <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005994:	00004517          	auipc	a0,0x4
    80005998:	cb450513          	addi	a0,a0,-844 # 80009648 <CONSOLE_STATUS+0x638>
    8000599c:	00000097          	auipc	ra,0x0
    800059a0:	810080e7          	jalr	-2032(ra) # 800051ac <_Z11printStringPKc>
            break;
    800059a4:	f51ff06f          	j	800058f4 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800059a8:	00004517          	auipc	a0,0x4
    800059ac:	cf850513          	addi	a0,a0,-776 # 800096a0 <CONSOLE_STATUS+0x690>
    800059b0:	fffff097          	auipc	ra,0xfffff
    800059b4:	7fc080e7          	jalr	2044(ra) # 800051ac <_Z11printStringPKc>
    800059b8:	f3dff06f          	j	800058f4 <_Z8userMainv+0x80>

00000000800059bc <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800059bc:	fe010113          	addi	sp,sp,-32
    800059c0:	00113c23          	sd	ra,24(sp)
    800059c4:	00813823          	sd	s0,16(sp)
    800059c8:	00913423          	sd	s1,8(sp)
    800059cc:	01213023          	sd	s2,0(sp)
    800059d0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800059d4:	00053903          	ld	s2,0(a0)
    int i = 6;
    800059d8:	00600493          	li	s1,6
    while (--i > 0) {
    800059dc:	fff4849b          	addiw	s1,s1,-1
    800059e0:	04905463          	blez	s1,80005a28 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800059e4:	00004517          	auipc	a0,0x4
    800059e8:	d0450513          	addi	a0,a0,-764 # 800096e8 <CONSOLE_STATUS+0x6d8>
    800059ec:	fffff097          	auipc	ra,0xfffff
    800059f0:	7c0080e7          	jalr	1984(ra) # 800051ac <_Z11printStringPKc>
        printInt(sleep_time);
    800059f4:	00000613          	li	a2,0
    800059f8:	00a00593          	li	a1,10
    800059fc:	0009051b          	sext.w	a0,s2
    80005a00:	00000097          	auipc	ra,0x0
    80005a04:	95c080e7          	jalr	-1700(ra) # 8000535c <_Z8printIntiii>
        printString(" !\n");
    80005a08:	00004517          	auipc	a0,0x4
    80005a0c:	ce850513          	addi	a0,a0,-792 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80005a10:	fffff097          	auipc	ra,0xfffff
    80005a14:	79c080e7          	jalr	1948(ra) # 800051ac <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a18:	00090513          	mv	a0,s2
    80005a1c:	ffffc097          	auipc	ra,0xffffc
    80005a20:	cfc080e7          	jalr	-772(ra) # 80001718 <_Z10time_sleepm>
    while (--i > 0) {
    80005a24:	fb9ff06f          	j	800059dc <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005a28:	00a00793          	li	a5,10
    80005a2c:	02f95933          	divu	s2,s2,a5
    80005a30:	fff90913          	addi	s2,s2,-1
    80005a34:	00006797          	auipc	a5,0x6
    80005a38:	d6c78793          	addi	a5,a5,-660 # 8000b7a0 <_ZL8finished>
    80005a3c:	01278933          	add	s2,a5,s2
    80005a40:	00100793          	li	a5,1
    80005a44:	00f90023          	sb	a5,0(s2)
}
    80005a48:	01813083          	ld	ra,24(sp)
    80005a4c:	01013403          	ld	s0,16(sp)
    80005a50:	00813483          	ld	s1,8(sp)
    80005a54:	00013903          	ld	s2,0(sp)
    80005a58:	02010113          	addi	sp,sp,32
    80005a5c:	00008067          	ret

0000000080005a60 <_Z12testSleepingv>:

void testSleeping() {
    80005a60:	fc010113          	addi	sp,sp,-64
    80005a64:	02113c23          	sd	ra,56(sp)
    80005a68:	02813823          	sd	s0,48(sp)
    80005a6c:	02913423          	sd	s1,40(sp)
    80005a70:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005a74:	00a00793          	li	a5,10
    80005a78:	fcf43823          	sd	a5,-48(s0)
    80005a7c:	01400793          	li	a5,20
    80005a80:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005a84:	00000493          	li	s1,0
    80005a88:	02c0006f          	j	80005ab4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005a8c:	00349793          	slli	a5,s1,0x3
    80005a90:	fd040613          	addi	a2,s0,-48
    80005a94:	00f60633          	add	a2,a2,a5
    80005a98:	00000597          	auipc	a1,0x0
    80005a9c:	f2458593          	addi	a1,a1,-220 # 800059bc <_ZL9sleepyRunPv>
    80005aa0:	fc040513          	addi	a0,s0,-64
    80005aa4:	00f50533          	add	a0,a0,a5
    80005aa8:	ffffc097          	auipc	ra,0xffffc
    80005aac:	acc080e7          	jalr	-1332(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ab0:	0014849b          	addiw	s1,s1,1
    80005ab4:	00100793          	li	a5,1
    80005ab8:	fc97dae3          	bge	a5,s1,80005a8c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005abc:	00006797          	auipc	a5,0x6
    80005ac0:	ce47c783          	lbu	a5,-796(a5) # 8000b7a0 <_ZL8finished>
    80005ac4:	fe078ce3          	beqz	a5,80005abc <_Z12testSleepingv+0x5c>
    80005ac8:	00006797          	auipc	a5,0x6
    80005acc:	cd97c783          	lbu	a5,-807(a5) # 8000b7a1 <_ZL8finished+0x1>
    80005ad0:	fe0786e3          	beqz	a5,80005abc <_Z12testSleepingv+0x5c>
}
    80005ad4:	03813083          	ld	ra,56(sp)
    80005ad8:	03013403          	ld	s0,48(sp)
    80005adc:	02813483          	ld	s1,40(sp)
    80005ae0:	04010113          	addi	sp,sp,64
    80005ae4:	00008067          	ret

0000000080005ae8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005ae8:	fe010113          	addi	sp,sp,-32
    80005aec:	00113c23          	sd	ra,24(sp)
    80005af0:	00813823          	sd	s0,16(sp)
    80005af4:	00913423          	sd	s1,8(sp)
    80005af8:	01213023          	sd	s2,0(sp)
    80005afc:	02010413          	addi	s0,sp,32
    80005b00:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b04:	00100793          	li	a5,1
    80005b08:	02a7f863          	bgeu	a5,a0,80005b38 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b0c:	00a00793          	li	a5,10
    80005b10:	02f577b3          	remu	a5,a0,a5
    80005b14:	02078e63          	beqz	a5,80005b50 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b18:	fff48513          	addi	a0,s1,-1
    80005b1c:	00000097          	auipc	ra,0x0
    80005b20:	fcc080e7          	jalr	-52(ra) # 80005ae8 <_ZL9fibonaccim>
    80005b24:	00050913          	mv	s2,a0
    80005b28:	ffe48513          	addi	a0,s1,-2
    80005b2c:	00000097          	auipc	ra,0x0
    80005b30:	fbc080e7          	jalr	-68(ra) # 80005ae8 <_ZL9fibonaccim>
    80005b34:	00a90533          	add	a0,s2,a0
}
    80005b38:	01813083          	ld	ra,24(sp)
    80005b3c:	01013403          	ld	s0,16(sp)
    80005b40:	00813483          	ld	s1,8(sp)
    80005b44:	00013903          	ld	s2,0(sp)
    80005b48:	02010113          	addi	sp,sp,32
    80005b4c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005b50:	ffffc097          	auipc	ra,0xffffc
    80005b54:	a84080e7          	jalr	-1404(ra) # 800015d4 <_Z15thread_dispatchv>
    80005b58:	fc1ff06f          	j	80005b18 <_ZL9fibonaccim+0x30>

0000000080005b5c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005b5c:	fe010113          	addi	sp,sp,-32
    80005b60:	00113c23          	sd	ra,24(sp)
    80005b64:	00813823          	sd	s0,16(sp)
    80005b68:	00913423          	sd	s1,8(sp)
    80005b6c:	01213023          	sd	s2,0(sp)
    80005b70:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005b74:	00a00493          	li	s1,10
    80005b78:	0400006f          	j	80005bb8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005b7c:	00004517          	auipc	a0,0x4
    80005b80:	88450513          	addi	a0,a0,-1916 # 80009400 <CONSOLE_STATUS+0x3f0>
    80005b84:	fffff097          	auipc	ra,0xfffff
    80005b88:	628080e7          	jalr	1576(ra) # 800051ac <_Z11printStringPKc>
    80005b8c:	00000613          	li	a2,0
    80005b90:	00a00593          	li	a1,10
    80005b94:	00048513          	mv	a0,s1
    80005b98:	fffff097          	auipc	ra,0xfffff
    80005b9c:	7c4080e7          	jalr	1988(ra) # 8000535c <_Z8printIntiii>
    80005ba0:	00003517          	auipc	a0,0x3
    80005ba4:	60850513          	addi	a0,a0,1544 # 800091a8 <CONSOLE_STATUS+0x198>
    80005ba8:	fffff097          	auipc	ra,0xfffff
    80005bac:	604080e7          	jalr	1540(ra) # 800051ac <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005bb0:	0014849b          	addiw	s1,s1,1
    80005bb4:	0ff4f493          	andi	s1,s1,255
    80005bb8:	00c00793          	li	a5,12
    80005bbc:	fc97f0e3          	bgeu	a5,s1,80005b7c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005bc0:	00004517          	auipc	a0,0x4
    80005bc4:	84850513          	addi	a0,a0,-1976 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005bc8:	fffff097          	auipc	ra,0xfffff
    80005bcc:	5e4080e7          	jalr	1508(ra) # 800051ac <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005bd0:	00500313          	li	t1,5
    thread_dispatch();
    80005bd4:	ffffc097          	auipc	ra,0xffffc
    80005bd8:	a00080e7          	jalr	-1536(ra) # 800015d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005bdc:	01000513          	li	a0,16
    80005be0:	00000097          	auipc	ra,0x0
    80005be4:	f08080e7          	jalr	-248(ra) # 80005ae8 <_ZL9fibonaccim>
    80005be8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005bec:	00004517          	auipc	a0,0x4
    80005bf0:	82c50513          	addi	a0,a0,-2004 # 80009418 <CONSOLE_STATUS+0x408>
    80005bf4:	fffff097          	auipc	ra,0xfffff
    80005bf8:	5b8080e7          	jalr	1464(ra) # 800051ac <_Z11printStringPKc>
    80005bfc:	00000613          	li	a2,0
    80005c00:	00a00593          	li	a1,10
    80005c04:	0009051b          	sext.w	a0,s2
    80005c08:	fffff097          	auipc	ra,0xfffff
    80005c0c:	754080e7          	jalr	1876(ra) # 8000535c <_Z8printIntiii>
    80005c10:	00003517          	auipc	a0,0x3
    80005c14:	59850513          	addi	a0,a0,1432 # 800091a8 <CONSOLE_STATUS+0x198>
    80005c18:	fffff097          	auipc	ra,0xfffff
    80005c1c:	594080e7          	jalr	1428(ra) # 800051ac <_Z11printStringPKc>
    80005c20:	0400006f          	j	80005c60 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c24:	00003517          	auipc	a0,0x3
    80005c28:	7dc50513          	addi	a0,a0,2012 # 80009400 <CONSOLE_STATUS+0x3f0>
    80005c2c:	fffff097          	auipc	ra,0xfffff
    80005c30:	580080e7          	jalr	1408(ra) # 800051ac <_Z11printStringPKc>
    80005c34:	00000613          	li	a2,0
    80005c38:	00a00593          	li	a1,10
    80005c3c:	00048513          	mv	a0,s1
    80005c40:	fffff097          	auipc	ra,0xfffff
    80005c44:	71c080e7          	jalr	1820(ra) # 8000535c <_Z8printIntiii>
    80005c48:	00003517          	auipc	a0,0x3
    80005c4c:	56050513          	addi	a0,a0,1376 # 800091a8 <CONSOLE_STATUS+0x198>
    80005c50:	fffff097          	auipc	ra,0xfffff
    80005c54:	55c080e7          	jalr	1372(ra) # 800051ac <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005c58:	0014849b          	addiw	s1,s1,1
    80005c5c:	0ff4f493          	andi	s1,s1,255
    80005c60:	00f00793          	li	a5,15
    80005c64:	fc97f0e3          	bgeu	a5,s1,80005c24 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005c68:	00003517          	auipc	a0,0x3
    80005c6c:	7c050513          	addi	a0,a0,1984 # 80009428 <CONSOLE_STATUS+0x418>
    80005c70:	fffff097          	auipc	ra,0xfffff
    80005c74:	53c080e7          	jalr	1340(ra) # 800051ac <_Z11printStringPKc>
    finishedD = true;
    80005c78:	00100793          	li	a5,1
    80005c7c:	00006717          	auipc	a4,0x6
    80005c80:	b2f70323          	sb	a5,-1242(a4) # 8000b7a2 <_ZL9finishedD>
    thread_dispatch();
    80005c84:	ffffc097          	auipc	ra,0xffffc
    80005c88:	950080e7          	jalr	-1712(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80005c8c:	01813083          	ld	ra,24(sp)
    80005c90:	01013403          	ld	s0,16(sp)
    80005c94:	00813483          	ld	s1,8(sp)
    80005c98:	00013903          	ld	s2,0(sp)
    80005c9c:	02010113          	addi	sp,sp,32
    80005ca0:	00008067          	ret

0000000080005ca4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005ca4:	fe010113          	addi	sp,sp,-32
    80005ca8:	00113c23          	sd	ra,24(sp)
    80005cac:	00813823          	sd	s0,16(sp)
    80005cb0:	00913423          	sd	s1,8(sp)
    80005cb4:	01213023          	sd	s2,0(sp)
    80005cb8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005cbc:	00000493          	li	s1,0
    80005cc0:	0400006f          	j	80005d00 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005cc4:	00003517          	auipc	a0,0x3
    80005cc8:	70c50513          	addi	a0,a0,1804 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80005ccc:	fffff097          	auipc	ra,0xfffff
    80005cd0:	4e0080e7          	jalr	1248(ra) # 800051ac <_Z11printStringPKc>
    80005cd4:	00000613          	li	a2,0
    80005cd8:	00a00593          	li	a1,10
    80005cdc:	00048513          	mv	a0,s1
    80005ce0:	fffff097          	auipc	ra,0xfffff
    80005ce4:	67c080e7          	jalr	1660(ra) # 8000535c <_Z8printIntiii>
    80005ce8:	00003517          	auipc	a0,0x3
    80005cec:	4c050513          	addi	a0,a0,1216 # 800091a8 <CONSOLE_STATUS+0x198>
    80005cf0:	fffff097          	auipc	ra,0xfffff
    80005cf4:	4bc080e7          	jalr	1212(ra) # 800051ac <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005cf8:	0014849b          	addiw	s1,s1,1
    80005cfc:	0ff4f493          	andi	s1,s1,255
    80005d00:	00200793          	li	a5,2
    80005d04:	fc97f0e3          	bgeu	a5,s1,80005cc4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005d08:	00003517          	auipc	a0,0x3
    80005d0c:	6d050513          	addi	a0,a0,1744 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005d10:	fffff097          	auipc	ra,0xfffff
    80005d14:	49c080e7          	jalr	1180(ra) # 800051ac <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d18:	00700313          	li	t1,7
    thread_dispatch();
    80005d1c:	ffffc097          	auipc	ra,0xffffc
    80005d20:	8b8080e7          	jalr	-1864(ra) # 800015d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005d24:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005d28:	00003517          	auipc	a0,0x3
    80005d2c:	6c050513          	addi	a0,a0,1728 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005d30:	fffff097          	auipc	ra,0xfffff
    80005d34:	47c080e7          	jalr	1148(ra) # 800051ac <_Z11printStringPKc>
    80005d38:	00000613          	li	a2,0
    80005d3c:	00a00593          	li	a1,10
    80005d40:	0009051b          	sext.w	a0,s2
    80005d44:	fffff097          	auipc	ra,0xfffff
    80005d48:	618080e7          	jalr	1560(ra) # 8000535c <_Z8printIntiii>
    80005d4c:	00003517          	auipc	a0,0x3
    80005d50:	45c50513          	addi	a0,a0,1116 # 800091a8 <CONSOLE_STATUS+0x198>
    80005d54:	fffff097          	auipc	ra,0xfffff
    80005d58:	458080e7          	jalr	1112(ra) # 800051ac <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005d5c:	00c00513          	li	a0,12
    80005d60:	00000097          	auipc	ra,0x0
    80005d64:	d88080e7          	jalr	-632(ra) # 80005ae8 <_ZL9fibonaccim>
    80005d68:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005d6c:	00003517          	auipc	a0,0x3
    80005d70:	68450513          	addi	a0,a0,1668 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005d74:	fffff097          	auipc	ra,0xfffff
    80005d78:	438080e7          	jalr	1080(ra) # 800051ac <_Z11printStringPKc>
    80005d7c:	00000613          	li	a2,0
    80005d80:	00a00593          	li	a1,10
    80005d84:	0009051b          	sext.w	a0,s2
    80005d88:	fffff097          	auipc	ra,0xfffff
    80005d8c:	5d4080e7          	jalr	1492(ra) # 8000535c <_Z8printIntiii>
    80005d90:	00003517          	auipc	a0,0x3
    80005d94:	41850513          	addi	a0,a0,1048 # 800091a8 <CONSOLE_STATUS+0x198>
    80005d98:	fffff097          	auipc	ra,0xfffff
    80005d9c:	414080e7          	jalr	1044(ra) # 800051ac <_Z11printStringPKc>
    80005da0:	0400006f          	j	80005de0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005da4:	00003517          	auipc	a0,0x3
    80005da8:	62c50513          	addi	a0,a0,1580 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80005dac:	fffff097          	auipc	ra,0xfffff
    80005db0:	400080e7          	jalr	1024(ra) # 800051ac <_Z11printStringPKc>
    80005db4:	00000613          	li	a2,0
    80005db8:	00a00593          	li	a1,10
    80005dbc:	00048513          	mv	a0,s1
    80005dc0:	fffff097          	auipc	ra,0xfffff
    80005dc4:	59c080e7          	jalr	1436(ra) # 8000535c <_Z8printIntiii>
    80005dc8:	00003517          	auipc	a0,0x3
    80005dcc:	3e050513          	addi	a0,a0,992 # 800091a8 <CONSOLE_STATUS+0x198>
    80005dd0:	fffff097          	auipc	ra,0xfffff
    80005dd4:	3dc080e7          	jalr	988(ra) # 800051ac <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005dd8:	0014849b          	addiw	s1,s1,1
    80005ddc:	0ff4f493          	andi	s1,s1,255
    80005de0:	00500793          	li	a5,5
    80005de4:	fc97f0e3          	bgeu	a5,s1,80005da4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005de8:	00003517          	auipc	a0,0x3
    80005dec:	5c850513          	addi	a0,a0,1480 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80005df0:	fffff097          	auipc	ra,0xfffff
    80005df4:	3bc080e7          	jalr	956(ra) # 800051ac <_Z11printStringPKc>
    finishedC = true;
    80005df8:	00100793          	li	a5,1
    80005dfc:	00006717          	auipc	a4,0x6
    80005e00:	9af703a3          	sb	a5,-1625(a4) # 8000b7a3 <_ZL9finishedC>
    thread_dispatch();
    80005e04:	ffffb097          	auipc	ra,0xffffb
    80005e08:	7d0080e7          	jalr	2000(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80005e0c:	01813083          	ld	ra,24(sp)
    80005e10:	01013403          	ld	s0,16(sp)
    80005e14:	00813483          	ld	s1,8(sp)
    80005e18:	00013903          	ld	s2,0(sp)
    80005e1c:	02010113          	addi	sp,sp,32
    80005e20:	00008067          	ret

0000000080005e24 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005e24:	fe010113          	addi	sp,sp,-32
    80005e28:	00113c23          	sd	ra,24(sp)
    80005e2c:	00813823          	sd	s0,16(sp)
    80005e30:	00913423          	sd	s1,8(sp)
    80005e34:	01213023          	sd	s2,0(sp)
    80005e38:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005e3c:	00000913          	li	s2,0
    80005e40:	0400006f          	j	80005e80 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005e44:	ffffb097          	auipc	ra,0xffffb
    80005e48:	790080e7          	jalr	1936(ra) # 800015d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005e4c:	00148493          	addi	s1,s1,1
    80005e50:	000027b7          	lui	a5,0x2
    80005e54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005e58:	0097ee63          	bltu	a5,s1,80005e74 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005e5c:	00000713          	li	a4,0
    80005e60:	000077b7          	lui	a5,0x7
    80005e64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005e68:	fce7eee3          	bltu	a5,a4,80005e44 <_ZL11workerBodyBPv+0x20>
    80005e6c:	00170713          	addi	a4,a4,1
    80005e70:	ff1ff06f          	j	80005e60 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005e74:	00a00793          	li	a5,10
    80005e78:	04f90663          	beq	s2,a5,80005ec4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005e7c:	00190913          	addi	s2,s2,1
    80005e80:	00f00793          	li	a5,15
    80005e84:	0527e463          	bltu	a5,s2,80005ecc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005e88:	00003517          	auipc	a0,0x3
    80005e8c:	1c850513          	addi	a0,a0,456 # 80009050 <CONSOLE_STATUS+0x40>
    80005e90:	fffff097          	auipc	ra,0xfffff
    80005e94:	31c080e7          	jalr	796(ra) # 800051ac <_Z11printStringPKc>
    80005e98:	00000613          	li	a2,0
    80005e9c:	00a00593          	li	a1,10
    80005ea0:	0009051b          	sext.w	a0,s2
    80005ea4:	fffff097          	auipc	ra,0xfffff
    80005ea8:	4b8080e7          	jalr	1208(ra) # 8000535c <_Z8printIntiii>
    80005eac:	00003517          	auipc	a0,0x3
    80005eb0:	2fc50513          	addi	a0,a0,764 # 800091a8 <CONSOLE_STATUS+0x198>
    80005eb4:	fffff097          	auipc	ra,0xfffff
    80005eb8:	2f8080e7          	jalr	760(ra) # 800051ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005ebc:	00000493          	li	s1,0
    80005ec0:	f91ff06f          	j	80005e50 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005ec4:	14102ff3          	csrr	t6,sepc
    80005ec8:	fb5ff06f          	j	80005e7c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005ecc:	00003517          	auipc	a0,0x3
    80005ed0:	4f450513          	addi	a0,a0,1268 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80005ed4:	fffff097          	auipc	ra,0xfffff
    80005ed8:	2d8080e7          	jalr	728(ra) # 800051ac <_Z11printStringPKc>
    finishedB = true;
    80005edc:	00100793          	li	a5,1
    80005ee0:	00006717          	auipc	a4,0x6
    80005ee4:	8cf70223          	sb	a5,-1852(a4) # 8000b7a4 <_ZL9finishedB>
    thread_dispatch();
    80005ee8:	ffffb097          	auipc	ra,0xffffb
    80005eec:	6ec080e7          	jalr	1772(ra) # 800015d4 <_Z15thread_dispatchv>
}
    80005ef0:	01813083          	ld	ra,24(sp)
    80005ef4:	01013403          	ld	s0,16(sp)
    80005ef8:	00813483          	ld	s1,8(sp)
    80005efc:	00013903          	ld	s2,0(sp)
    80005f00:	02010113          	addi	sp,sp,32
    80005f04:	00008067          	ret

0000000080005f08 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005f08:	fe010113          	addi	sp,sp,-32
    80005f0c:	00113c23          	sd	ra,24(sp)
    80005f10:	00813823          	sd	s0,16(sp)
    80005f14:	00913423          	sd	s1,8(sp)
    80005f18:	01213023          	sd	s2,0(sp)
    80005f1c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f20:	00000913          	li	s2,0
    80005f24:	0380006f          	j	80005f5c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005f28:	ffffb097          	auipc	ra,0xffffb
    80005f2c:	6ac080e7          	jalr	1708(ra) # 800015d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f30:	00148493          	addi	s1,s1,1
    80005f34:	000027b7          	lui	a5,0x2
    80005f38:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f3c:	0097ee63          	bltu	a5,s1,80005f58 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005f40:	00000713          	li	a4,0
    80005f44:	000077b7          	lui	a5,0x7
    80005f48:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005f4c:	fce7eee3          	bltu	a5,a4,80005f28 <_ZL11workerBodyAPv+0x20>
    80005f50:	00170713          	addi	a4,a4,1
    80005f54:	ff1ff06f          	j	80005f44 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005f58:	00190913          	addi	s2,s2,1
    80005f5c:	00900793          	li	a5,9
    80005f60:	0527e063          	bltu	a5,s2,80005fa0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005f64:	00003517          	auipc	a0,0x3
    80005f68:	0bc50513          	addi	a0,a0,188 # 80009020 <CONSOLE_STATUS+0x10>
    80005f6c:	fffff097          	auipc	ra,0xfffff
    80005f70:	240080e7          	jalr	576(ra) # 800051ac <_Z11printStringPKc>
    80005f74:	00000613          	li	a2,0
    80005f78:	00a00593          	li	a1,10
    80005f7c:	0009051b          	sext.w	a0,s2
    80005f80:	fffff097          	auipc	ra,0xfffff
    80005f84:	3dc080e7          	jalr	988(ra) # 8000535c <_Z8printIntiii>
    80005f88:	00003517          	auipc	a0,0x3
    80005f8c:	22050513          	addi	a0,a0,544 # 800091a8 <CONSOLE_STATUS+0x198>
    80005f90:	fffff097          	auipc	ra,0xfffff
    80005f94:	21c080e7          	jalr	540(ra) # 800051ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005f98:	00000493          	li	s1,0
    80005f9c:	f99ff06f          	j	80005f34 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005fa0:	00003517          	auipc	a0,0x3
    80005fa4:	41050513          	addi	a0,a0,1040 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80005fa8:	fffff097          	auipc	ra,0xfffff
    80005fac:	204080e7          	jalr	516(ra) # 800051ac <_Z11printStringPKc>
    finishedA = true;
    80005fb0:	00100793          	li	a5,1
    80005fb4:	00005717          	auipc	a4,0x5
    80005fb8:	7ef708a3          	sb	a5,2033(a4) # 8000b7a5 <_ZL9finishedA>
}
    80005fbc:	01813083          	ld	ra,24(sp)
    80005fc0:	01013403          	ld	s0,16(sp)
    80005fc4:	00813483          	ld	s1,8(sp)
    80005fc8:	00013903          	ld	s2,0(sp)
    80005fcc:	02010113          	addi	sp,sp,32
    80005fd0:	00008067          	ret

0000000080005fd4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005fd4:	fd010113          	addi	sp,sp,-48
    80005fd8:	02113423          	sd	ra,40(sp)
    80005fdc:	02813023          	sd	s0,32(sp)
    80005fe0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005fe4:	00000613          	li	a2,0
    80005fe8:	00000597          	auipc	a1,0x0
    80005fec:	f2058593          	addi	a1,a1,-224 # 80005f08 <_ZL11workerBodyAPv>
    80005ff0:	fd040513          	addi	a0,s0,-48
    80005ff4:	ffffb097          	auipc	ra,0xffffb
    80005ff8:	580080e7          	jalr	1408(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005ffc:	00003517          	auipc	a0,0x3
    80006000:	43c50513          	addi	a0,a0,1084 # 80009438 <CONSOLE_STATUS+0x428>
    80006004:	fffff097          	auipc	ra,0xfffff
    80006008:	1a8080e7          	jalr	424(ra) # 800051ac <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000600c:	00000613          	li	a2,0
    80006010:	00000597          	auipc	a1,0x0
    80006014:	e1458593          	addi	a1,a1,-492 # 80005e24 <_ZL11workerBodyBPv>
    80006018:	fd840513          	addi	a0,s0,-40
    8000601c:	ffffb097          	auipc	ra,0xffffb
    80006020:	558080e7          	jalr	1368(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006024:	00003517          	auipc	a0,0x3
    80006028:	42c50513          	addi	a0,a0,1068 # 80009450 <CONSOLE_STATUS+0x440>
    8000602c:	fffff097          	auipc	ra,0xfffff
    80006030:	180080e7          	jalr	384(ra) # 800051ac <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006034:	00000613          	li	a2,0
    80006038:	00000597          	auipc	a1,0x0
    8000603c:	c6c58593          	addi	a1,a1,-916 # 80005ca4 <_ZL11workerBodyCPv>
    80006040:	fe040513          	addi	a0,s0,-32
    80006044:	ffffb097          	auipc	ra,0xffffb
    80006048:	530080e7          	jalr	1328(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000604c:	00003517          	auipc	a0,0x3
    80006050:	41c50513          	addi	a0,a0,1052 # 80009468 <CONSOLE_STATUS+0x458>
    80006054:	fffff097          	auipc	ra,0xfffff
    80006058:	158080e7          	jalr	344(ra) # 800051ac <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000605c:	00000613          	li	a2,0
    80006060:	00000597          	auipc	a1,0x0
    80006064:	afc58593          	addi	a1,a1,-1284 # 80005b5c <_ZL11workerBodyDPv>
    80006068:	fe840513          	addi	a0,s0,-24
    8000606c:	ffffb097          	auipc	ra,0xffffb
    80006070:	508080e7          	jalr	1288(ra) # 80001574 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006074:	00003517          	auipc	a0,0x3
    80006078:	40c50513          	addi	a0,a0,1036 # 80009480 <CONSOLE_STATUS+0x470>
    8000607c:	fffff097          	auipc	ra,0xfffff
    80006080:	130080e7          	jalr	304(ra) # 800051ac <_Z11printStringPKc>
    80006084:	00c0006f          	j	80006090 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006088:	ffffb097          	auipc	ra,0xffffb
    8000608c:	54c080e7          	jalr	1356(ra) # 800015d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006090:	00005797          	auipc	a5,0x5
    80006094:	7157c783          	lbu	a5,1813(a5) # 8000b7a5 <_ZL9finishedA>
    80006098:	fe0788e3          	beqz	a5,80006088 <_Z16System_Mode_testv+0xb4>
    8000609c:	00005797          	auipc	a5,0x5
    800060a0:	7087c783          	lbu	a5,1800(a5) # 8000b7a4 <_ZL9finishedB>
    800060a4:	fe0782e3          	beqz	a5,80006088 <_Z16System_Mode_testv+0xb4>
    800060a8:	00005797          	auipc	a5,0x5
    800060ac:	6fb7c783          	lbu	a5,1787(a5) # 8000b7a3 <_ZL9finishedC>
    800060b0:	fc078ce3          	beqz	a5,80006088 <_Z16System_Mode_testv+0xb4>
    800060b4:	00005797          	auipc	a5,0x5
    800060b8:	6ee7c783          	lbu	a5,1774(a5) # 8000b7a2 <_ZL9finishedD>
    800060bc:	fc0786e3          	beqz	a5,80006088 <_Z16System_Mode_testv+0xb4>
    }

}
    800060c0:	02813083          	ld	ra,40(sp)
    800060c4:	02013403          	ld	s0,32(sp)
    800060c8:	03010113          	addi	sp,sp,48
    800060cc:	00008067          	ret

00000000800060d0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800060d0:	fe010113          	addi	sp,sp,-32
    800060d4:	00113c23          	sd	ra,24(sp)
    800060d8:	00813823          	sd	s0,16(sp)
    800060dc:	00913423          	sd	s1,8(sp)
    800060e0:	01213023          	sd	s2,0(sp)
    800060e4:	02010413          	addi	s0,sp,32
    800060e8:	00050493          	mv	s1,a0
    800060ec:	00058913          	mv	s2,a1
    800060f0:	0015879b          	addiw	a5,a1,1
    800060f4:	0007851b          	sext.w	a0,a5
    800060f8:	00f4a023          	sw	a5,0(s1)
    800060fc:	0004a823          	sw	zero,16(s1)
    80006100:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006104:	00251513          	slli	a0,a0,0x2
    80006108:	ffffb097          	auipc	ra,0xffffb
    8000610c:	3b0080e7          	jalr	944(ra) # 800014b8 <_Z9mem_allocm>
    80006110:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006114:	00000593          	li	a1,0
    80006118:	02048513          	addi	a0,s1,32
    8000611c:	ffffb097          	auipc	ra,0xffffb
    80006120:	4fc080e7          	jalr	1276(ra) # 80001618 <_Z8sem_openPP11MySemaphorej>
    sem_open(&spaceAvailable, _cap);
    80006124:	00090593          	mv	a1,s2
    80006128:	01848513          	addi	a0,s1,24
    8000612c:	ffffb097          	auipc	ra,0xffffb
    80006130:	4ec080e7          	jalr	1260(ra) # 80001618 <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutexHead, 1);
    80006134:	00100593          	li	a1,1
    80006138:	02848513          	addi	a0,s1,40
    8000613c:	ffffb097          	auipc	ra,0xffffb
    80006140:	4dc080e7          	jalr	1244(ra) # 80001618 <_Z8sem_openPP11MySemaphorej>
    sem_open(&mutexTail, 1);
    80006144:	00100593          	li	a1,1
    80006148:	03048513          	addi	a0,s1,48
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	4cc080e7          	jalr	1228(ra) # 80001618 <_Z8sem_openPP11MySemaphorej>
}
    80006154:	01813083          	ld	ra,24(sp)
    80006158:	01013403          	ld	s0,16(sp)
    8000615c:	00813483          	ld	s1,8(sp)
    80006160:	00013903          	ld	s2,0(sp)
    80006164:	02010113          	addi	sp,sp,32
    80006168:	00008067          	ret

000000008000616c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000616c:	fe010113          	addi	sp,sp,-32
    80006170:	00113c23          	sd	ra,24(sp)
    80006174:	00813823          	sd	s0,16(sp)
    80006178:	00913423          	sd	s1,8(sp)
    8000617c:	01213023          	sd	s2,0(sp)
    80006180:	02010413          	addi	s0,sp,32
    80006184:	00050493          	mv	s1,a0
    80006188:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000618c:	01853503          	ld	a0,24(a0)
    80006190:	ffffb097          	auipc	ra,0xffffb
    80006194:	4e4080e7          	jalr	1252(ra) # 80001674 <_Z8sem_waitP11MySemaphore>

    sem_wait(mutexTail);
    80006198:	0304b503          	ld	a0,48(s1)
    8000619c:	ffffb097          	auipc	ra,0xffffb
    800061a0:	4d8080e7          	jalr	1240(ra) # 80001674 <_Z8sem_waitP11MySemaphore>
    buffer[tail] = val;
    800061a4:	0084b783          	ld	a5,8(s1)
    800061a8:	0144a703          	lw	a4,20(s1)
    800061ac:	00271713          	slli	a4,a4,0x2
    800061b0:	00e787b3          	add	a5,a5,a4
    800061b4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800061b8:	0144a783          	lw	a5,20(s1)
    800061bc:	0017879b          	addiw	a5,a5,1
    800061c0:	0004a703          	lw	a4,0(s1)
    800061c4:	02e7e7bb          	remw	a5,a5,a4
    800061c8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800061cc:	0304b503          	ld	a0,48(s1)
    800061d0:	ffffb097          	auipc	ra,0xffffb
    800061d4:	4d0080e7          	jalr	1232(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>

    sem_signal(itemAvailable);
    800061d8:	0204b503          	ld	a0,32(s1)
    800061dc:	ffffb097          	auipc	ra,0xffffb
    800061e0:	4c4080e7          	jalr	1220(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>

}
    800061e4:	01813083          	ld	ra,24(sp)
    800061e8:	01013403          	ld	s0,16(sp)
    800061ec:	00813483          	ld	s1,8(sp)
    800061f0:	00013903          	ld	s2,0(sp)
    800061f4:	02010113          	addi	sp,sp,32
    800061f8:	00008067          	ret

00000000800061fc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800061fc:	fe010113          	addi	sp,sp,-32
    80006200:	00113c23          	sd	ra,24(sp)
    80006204:	00813823          	sd	s0,16(sp)
    80006208:	00913423          	sd	s1,8(sp)
    8000620c:	01213023          	sd	s2,0(sp)
    80006210:	02010413          	addi	s0,sp,32
    80006214:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006218:	02053503          	ld	a0,32(a0)
    8000621c:	ffffb097          	auipc	ra,0xffffb
    80006220:	458080e7          	jalr	1112(ra) # 80001674 <_Z8sem_waitP11MySemaphore>

    sem_wait(mutexHead);
    80006224:	0284b503          	ld	a0,40(s1)
    80006228:	ffffb097          	auipc	ra,0xffffb
    8000622c:	44c080e7          	jalr	1100(ra) # 80001674 <_Z8sem_waitP11MySemaphore>

    int ret = buffer[head];
    80006230:	0084b703          	ld	a4,8(s1)
    80006234:	0104a783          	lw	a5,16(s1)
    80006238:	00279693          	slli	a3,a5,0x2
    8000623c:	00d70733          	add	a4,a4,a3
    80006240:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006244:	0017879b          	addiw	a5,a5,1
    80006248:	0004a703          	lw	a4,0(s1)
    8000624c:	02e7e7bb          	remw	a5,a5,a4
    80006250:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006254:	0284b503          	ld	a0,40(s1)
    80006258:	ffffb097          	auipc	ra,0xffffb
    8000625c:	448080e7          	jalr	1096(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>

    sem_signal(spaceAvailable);
    80006260:	0184b503          	ld	a0,24(s1)
    80006264:	ffffb097          	auipc	ra,0xffffb
    80006268:	43c080e7          	jalr	1084(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>

    return ret;
}
    8000626c:	00090513          	mv	a0,s2
    80006270:	01813083          	ld	ra,24(sp)
    80006274:	01013403          	ld	s0,16(sp)
    80006278:	00813483          	ld	s1,8(sp)
    8000627c:	00013903          	ld	s2,0(sp)
    80006280:	02010113          	addi	sp,sp,32
    80006284:	00008067          	ret

0000000080006288 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006288:	fe010113          	addi	sp,sp,-32
    8000628c:	00113c23          	sd	ra,24(sp)
    80006290:	00813823          	sd	s0,16(sp)
    80006294:	00913423          	sd	s1,8(sp)
    80006298:	01213023          	sd	s2,0(sp)
    8000629c:	02010413          	addi	s0,sp,32
    800062a0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800062a4:	02853503          	ld	a0,40(a0)
    800062a8:	ffffb097          	auipc	ra,0xffffb
    800062ac:	3cc080e7          	jalr	972(ra) # 80001674 <_Z8sem_waitP11MySemaphore>
    sem_wait(mutexTail);
    800062b0:	0304b503          	ld	a0,48(s1)
    800062b4:	ffffb097          	auipc	ra,0xffffb
    800062b8:	3c0080e7          	jalr	960(ra) # 80001674 <_Z8sem_waitP11MySemaphore>

    if (tail >= head) {
    800062bc:	0144a783          	lw	a5,20(s1)
    800062c0:	0104a903          	lw	s2,16(s1)
    800062c4:	0327ce63          	blt	a5,s2,80006300 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800062c8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800062cc:	0304b503          	ld	a0,48(s1)
    800062d0:	ffffb097          	auipc	ra,0xffffb
    800062d4:	3d0080e7          	jalr	976(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>
    sem_signal(mutexHead);
    800062d8:	0284b503          	ld	a0,40(s1)
    800062dc:	ffffb097          	auipc	ra,0xffffb
    800062e0:	3c4080e7          	jalr	964(ra) # 800016a0 <_Z10sem_signalP11MySemaphore>

    return ret;
}
    800062e4:	00090513          	mv	a0,s2
    800062e8:	01813083          	ld	ra,24(sp)
    800062ec:	01013403          	ld	s0,16(sp)
    800062f0:	00813483          	ld	s1,8(sp)
    800062f4:	00013903          	ld	s2,0(sp)
    800062f8:	02010113          	addi	sp,sp,32
    800062fc:	00008067          	ret
        ret = cap - head + tail;
    80006300:	0004a703          	lw	a4,0(s1)
    80006304:	4127093b          	subw	s2,a4,s2
    80006308:	00f9093b          	addw	s2,s2,a5
    8000630c:	fc1ff06f          	j	800062cc <_ZN6Buffer6getCntEv+0x44>

0000000080006310 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006310:	fe010113          	addi	sp,sp,-32
    80006314:	00113c23          	sd	ra,24(sp)
    80006318:	00813823          	sd	s0,16(sp)
    8000631c:	00913423          	sd	s1,8(sp)
    80006320:	02010413          	addi	s0,sp,32
    80006324:	00050493          	mv	s1,a0
    putc('\n');
    80006328:	00a00513          	li	a0,10
    8000632c:	ffffb097          	auipc	ra,0xffffb
    80006330:	3c8080e7          	jalr	968(ra) # 800016f4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006334:	00003517          	auipc	a0,0x3
    80006338:	16450513          	addi	a0,a0,356 # 80009498 <CONSOLE_STATUS+0x488>
    8000633c:	fffff097          	auipc	ra,0xfffff
    80006340:	e70080e7          	jalr	-400(ra) # 800051ac <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006344:	00048513          	mv	a0,s1
    80006348:	00000097          	auipc	ra,0x0
    8000634c:	f40080e7          	jalr	-192(ra) # 80006288 <_ZN6Buffer6getCntEv>
    80006350:	02a05c63          	blez	a0,80006388 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006354:	0084b783          	ld	a5,8(s1)
    80006358:	0104a703          	lw	a4,16(s1)
    8000635c:	00271713          	slli	a4,a4,0x2
    80006360:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006364:	0007c503          	lbu	a0,0(a5)
    80006368:	ffffb097          	auipc	ra,0xffffb
    8000636c:	38c080e7          	jalr	908(ra) # 800016f4 <_Z4putcc>
        head = (head + 1) % cap;
    80006370:	0104a783          	lw	a5,16(s1)
    80006374:	0017879b          	addiw	a5,a5,1
    80006378:	0004a703          	lw	a4,0(s1)
    8000637c:	02e7e7bb          	remw	a5,a5,a4
    80006380:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006384:	fc1ff06f          	j	80006344 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006388:	02100513          	li	a0,33
    8000638c:	ffffb097          	auipc	ra,0xffffb
    80006390:	368080e7          	jalr	872(ra) # 800016f4 <_Z4putcc>
    putc('\n');
    80006394:	00a00513          	li	a0,10
    80006398:	ffffb097          	auipc	ra,0xffffb
    8000639c:	35c080e7          	jalr	860(ra) # 800016f4 <_Z4putcc>
    mem_free(buffer);
    800063a0:	0084b503          	ld	a0,8(s1)
    800063a4:	ffffb097          	auipc	ra,0xffffb
    800063a8:	14c080e7          	jalr	332(ra) # 800014f0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800063ac:	0204b503          	ld	a0,32(s1)
    800063b0:	ffffb097          	auipc	ra,0xffffb
    800063b4:	298080e7          	jalr	664(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
    sem_close(spaceAvailable);
    800063b8:	0184b503          	ld	a0,24(s1)
    800063bc:	ffffb097          	auipc	ra,0xffffb
    800063c0:	28c080e7          	jalr	652(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
    sem_close(mutexTail);
    800063c4:	0304b503          	ld	a0,48(s1)
    800063c8:	ffffb097          	auipc	ra,0xffffb
    800063cc:	280080e7          	jalr	640(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
    sem_close(mutexHead);
    800063d0:	0284b503          	ld	a0,40(s1)
    800063d4:	ffffb097          	auipc	ra,0xffffb
    800063d8:	274080e7          	jalr	628(ra) # 80001648 <_Z9sem_closeP11MySemaphore>
}
    800063dc:	01813083          	ld	ra,24(sp)
    800063e0:	01013403          	ld	s0,16(sp)
    800063e4:	00813483          	ld	s1,8(sp)
    800063e8:	02010113          	addi	sp,sp,32
    800063ec:	00008067          	ret

00000000800063f0 <start>:
    800063f0:	ff010113          	addi	sp,sp,-16
    800063f4:	00813423          	sd	s0,8(sp)
    800063f8:	01010413          	addi	s0,sp,16
    800063fc:	300027f3          	csrr	a5,mstatus
    80006400:	ffffe737          	lui	a4,0xffffe
    80006404:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1def>
    80006408:	00e7f7b3          	and	a5,a5,a4
    8000640c:	00001737          	lui	a4,0x1
    80006410:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006414:	00e7e7b3          	or	a5,a5,a4
    80006418:	30079073          	csrw	mstatus,a5
    8000641c:	00000797          	auipc	a5,0x0
    80006420:	16078793          	addi	a5,a5,352 # 8000657c <system_main>
    80006424:	34179073          	csrw	mepc,a5
    80006428:	00000793          	li	a5,0
    8000642c:	18079073          	csrw	satp,a5
    80006430:	000107b7          	lui	a5,0x10
    80006434:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006438:	30279073          	csrw	medeleg,a5
    8000643c:	30379073          	csrw	mideleg,a5
    80006440:	104027f3          	csrr	a5,sie
    80006444:	2227e793          	ori	a5,a5,546
    80006448:	10479073          	csrw	sie,a5
    8000644c:	fff00793          	li	a5,-1
    80006450:	00a7d793          	srli	a5,a5,0xa
    80006454:	3b079073          	csrw	pmpaddr0,a5
    80006458:	00f00793          	li	a5,15
    8000645c:	3a079073          	csrw	pmpcfg0,a5
    80006460:	f14027f3          	csrr	a5,mhartid
    80006464:	0200c737          	lui	a4,0x200c
    80006468:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000646c:	0007869b          	sext.w	a3,a5
    80006470:	00269713          	slli	a4,a3,0x2
    80006474:	000f4637          	lui	a2,0xf4
    80006478:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000647c:	00d70733          	add	a4,a4,a3
    80006480:	0037979b          	slliw	a5,a5,0x3
    80006484:	020046b7          	lui	a3,0x2004
    80006488:	00d787b3          	add	a5,a5,a3
    8000648c:	00c585b3          	add	a1,a1,a2
    80006490:	00371693          	slli	a3,a4,0x3
    80006494:	00005717          	auipc	a4,0x5
    80006498:	31c70713          	addi	a4,a4,796 # 8000b7b0 <timer_scratch>
    8000649c:	00b7b023          	sd	a1,0(a5)
    800064a0:	00d70733          	add	a4,a4,a3
    800064a4:	00f73c23          	sd	a5,24(a4)
    800064a8:	02c73023          	sd	a2,32(a4)
    800064ac:	34071073          	csrw	mscratch,a4
    800064b0:	00000797          	auipc	a5,0x0
    800064b4:	6e078793          	addi	a5,a5,1760 # 80006b90 <timervec>
    800064b8:	30579073          	csrw	mtvec,a5
    800064bc:	300027f3          	csrr	a5,mstatus
    800064c0:	0087e793          	ori	a5,a5,8
    800064c4:	30079073          	csrw	mstatus,a5
    800064c8:	304027f3          	csrr	a5,mie
    800064cc:	0807e793          	ori	a5,a5,128
    800064d0:	30479073          	csrw	mie,a5
    800064d4:	f14027f3          	csrr	a5,mhartid
    800064d8:	0007879b          	sext.w	a5,a5
    800064dc:	00078213          	mv	tp,a5
    800064e0:	30200073          	mret
    800064e4:	00813403          	ld	s0,8(sp)
    800064e8:	01010113          	addi	sp,sp,16
    800064ec:	00008067          	ret

00000000800064f0 <timerinit>:
    800064f0:	ff010113          	addi	sp,sp,-16
    800064f4:	00813423          	sd	s0,8(sp)
    800064f8:	01010413          	addi	s0,sp,16
    800064fc:	f14027f3          	csrr	a5,mhartid
    80006500:	0200c737          	lui	a4,0x200c
    80006504:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006508:	0007869b          	sext.w	a3,a5
    8000650c:	00269713          	slli	a4,a3,0x2
    80006510:	000f4637          	lui	a2,0xf4
    80006514:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006518:	00d70733          	add	a4,a4,a3
    8000651c:	0037979b          	slliw	a5,a5,0x3
    80006520:	020046b7          	lui	a3,0x2004
    80006524:	00d787b3          	add	a5,a5,a3
    80006528:	00c585b3          	add	a1,a1,a2
    8000652c:	00371693          	slli	a3,a4,0x3
    80006530:	00005717          	auipc	a4,0x5
    80006534:	28070713          	addi	a4,a4,640 # 8000b7b0 <timer_scratch>
    80006538:	00b7b023          	sd	a1,0(a5)
    8000653c:	00d70733          	add	a4,a4,a3
    80006540:	00f73c23          	sd	a5,24(a4)
    80006544:	02c73023          	sd	a2,32(a4)
    80006548:	34071073          	csrw	mscratch,a4
    8000654c:	00000797          	auipc	a5,0x0
    80006550:	64478793          	addi	a5,a5,1604 # 80006b90 <timervec>
    80006554:	30579073          	csrw	mtvec,a5
    80006558:	300027f3          	csrr	a5,mstatus
    8000655c:	0087e793          	ori	a5,a5,8
    80006560:	30079073          	csrw	mstatus,a5
    80006564:	304027f3          	csrr	a5,mie
    80006568:	0807e793          	ori	a5,a5,128
    8000656c:	30479073          	csrw	mie,a5
    80006570:	00813403          	ld	s0,8(sp)
    80006574:	01010113          	addi	sp,sp,16
    80006578:	00008067          	ret

000000008000657c <system_main>:
    8000657c:	fe010113          	addi	sp,sp,-32
    80006580:	00813823          	sd	s0,16(sp)
    80006584:	00913423          	sd	s1,8(sp)
    80006588:	00113c23          	sd	ra,24(sp)
    8000658c:	02010413          	addi	s0,sp,32
    80006590:	00000097          	auipc	ra,0x0
    80006594:	0c4080e7          	jalr	196(ra) # 80006654 <cpuid>
    80006598:	00005497          	auipc	s1,0x5
    8000659c:	15848493          	addi	s1,s1,344 # 8000b6f0 <started>
    800065a0:	02050263          	beqz	a0,800065c4 <system_main+0x48>
    800065a4:	0004a783          	lw	a5,0(s1)
    800065a8:	0007879b          	sext.w	a5,a5
    800065ac:	fe078ce3          	beqz	a5,800065a4 <system_main+0x28>
    800065b0:	0ff0000f          	fence
    800065b4:	00003517          	auipc	a0,0x3
    800065b8:	17450513          	addi	a0,a0,372 # 80009728 <CONSOLE_STATUS+0x718>
    800065bc:	00001097          	auipc	ra,0x1
    800065c0:	a70080e7          	jalr	-1424(ra) # 8000702c <panic>
    800065c4:	00001097          	auipc	ra,0x1
    800065c8:	9c4080e7          	jalr	-1596(ra) # 80006f88 <consoleinit>
    800065cc:	00001097          	auipc	ra,0x1
    800065d0:	150080e7          	jalr	336(ra) # 8000771c <printfinit>
    800065d4:	00003517          	auipc	a0,0x3
    800065d8:	bd450513          	addi	a0,a0,-1068 # 800091a8 <CONSOLE_STATUS+0x198>
    800065dc:	00001097          	auipc	ra,0x1
    800065e0:	aac080e7          	jalr	-1364(ra) # 80007088 <__printf>
    800065e4:	00003517          	auipc	a0,0x3
    800065e8:	11450513          	addi	a0,a0,276 # 800096f8 <CONSOLE_STATUS+0x6e8>
    800065ec:	00001097          	auipc	ra,0x1
    800065f0:	a9c080e7          	jalr	-1380(ra) # 80007088 <__printf>
    800065f4:	00003517          	auipc	a0,0x3
    800065f8:	bb450513          	addi	a0,a0,-1100 # 800091a8 <CONSOLE_STATUS+0x198>
    800065fc:	00001097          	auipc	ra,0x1
    80006600:	a8c080e7          	jalr	-1396(ra) # 80007088 <__printf>
    80006604:	00001097          	auipc	ra,0x1
    80006608:	4a4080e7          	jalr	1188(ra) # 80007aa8 <kinit>
    8000660c:	00000097          	auipc	ra,0x0
    80006610:	148080e7          	jalr	328(ra) # 80006754 <trapinit>
    80006614:	00000097          	auipc	ra,0x0
    80006618:	16c080e7          	jalr	364(ra) # 80006780 <trapinithart>
    8000661c:	00000097          	auipc	ra,0x0
    80006620:	5b4080e7          	jalr	1460(ra) # 80006bd0 <plicinit>
    80006624:	00000097          	auipc	ra,0x0
    80006628:	5d4080e7          	jalr	1492(ra) # 80006bf8 <plicinithart>
    8000662c:	00000097          	auipc	ra,0x0
    80006630:	078080e7          	jalr	120(ra) # 800066a4 <userinit>
    80006634:	0ff0000f          	fence
    80006638:	00100793          	li	a5,1
    8000663c:	00003517          	auipc	a0,0x3
    80006640:	0d450513          	addi	a0,a0,212 # 80009710 <CONSOLE_STATUS+0x700>
    80006644:	00f4a023          	sw	a5,0(s1)
    80006648:	00001097          	auipc	ra,0x1
    8000664c:	a40080e7          	jalr	-1472(ra) # 80007088 <__printf>
    80006650:	0000006f          	j	80006650 <system_main+0xd4>

0000000080006654 <cpuid>:
    80006654:	ff010113          	addi	sp,sp,-16
    80006658:	00813423          	sd	s0,8(sp)
    8000665c:	01010413          	addi	s0,sp,16
    80006660:	00020513          	mv	a0,tp
    80006664:	00813403          	ld	s0,8(sp)
    80006668:	0005051b          	sext.w	a0,a0
    8000666c:	01010113          	addi	sp,sp,16
    80006670:	00008067          	ret

0000000080006674 <mycpu>:
    80006674:	ff010113          	addi	sp,sp,-16
    80006678:	00813423          	sd	s0,8(sp)
    8000667c:	01010413          	addi	s0,sp,16
    80006680:	00020793          	mv	a5,tp
    80006684:	00813403          	ld	s0,8(sp)
    80006688:	0007879b          	sext.w	a5,a5
    8000668c:	00779793          	slli	a5,a5,0x7
    80006690:	00006517          	auipc	a0,0x6
    80006694:	15050513          	addi	a0,a0,336 # 8000c7e0 <cpus>
    80006698:	00f50533          	add	a0,a0,a5
    8000669c:	01010113          	addi	sp,sp,16
    800066a0:	00008067          	ret

00000000800066a4 <userinit>:
    800066a4:	ff010113          	addi	sp,sp,-16
    800066a8:	00813423          	sd	s0,8(sp)
    800066ac:	01010413          	addi	s0,sp,16
    800066b0:	00813403          	ld	s0,8(sp)
    800066b4:	01010113          	addi	sp,sp,16
    800066b8:	ffffb317          	auipc	t1,0xffffb
    800066bc:	72830067          	jr	1832(t1) # 80001de0 <main>

00000000800066c0 <either_copyout>:
    800066c0:	ff010113          	addi	sp,sp,-16
    800066c4:	00813023          	sd	s0,0(sp)
    800066c8:	00113423          	sd	ra,8(sp)
    800066cc:	01010413          	addi	s0,sp,16
    800066d0:	02051663          	bnez	a0,800066fc <either_copyout+0x3c>
    800066d4:	00058513          	mv	a0,a1
    800066d8:	00060593          	mv	a1,a2
    800066dc:	0006861b          	sext.w	a2,a3
    800066e0:	00002097          	auipc	ra,0x2
    800066e4:	c54080e7          	jalr	-940(ra) # 80008334 <__memmove>
    800066e8:	00813083          	ld	ra,8(sp)
    800066ec:	00013403          	ld	s0,0(sp)
    800066f0:	00000513          	li	a0,0
    800066f4:	01010113          	addi	sp,sp,16
    800066f8:	00008067          	ret
    800066fc:	00003517          	auipc	a0,0x3
    80006700:	05450513          	addi	a0,a0,84 # 80009750 <CONSOLE_STATUS+0x740>
    80006704:	00001097          	auipc	ra,0x1
    80006708:	928080e7          	jalr	-1752(ra) # 8000702c <panic>

000000008000670c <either_copyin>:
    8000670c:	ff010113          	addi	sp,sp,-16
    80006710:	00813023          	sd	s0,0(sp)
    80006714:	00113423          	sd	ra,8(sp)
    80006718:	01010413          	addi	s0,sp,16
    8000671c:	02059463          	bnez	a1,80006744 <either_copyin+0x38>
    80006720:	00060593          	mv	a1,a2
    80006724:	0006861b          	sext.w	a2,a3
    80006728:	00002097          	auipc	ra,0x2
    8000672c:	c0c080e7          	jalr	-1012(ra) # 80008334 <__memmove>
    80006730:	00813083          	ld	ra,8(sp)
    80006734:	00013403          	ld	s0,0(sp)
    80006738:	00000513          	li	a0,0
    8000673c:	01010113          	addi	sp,sp,16
    80006740:	00008067          	ret
    80006744:	00003517          	auipc	a0,0x3
    80006748:	03450513          	addi	a0,a0,52 # 80009778 <CONSOLE_STATUS+0x768>
    8000674c:	00001097          	auipc	ra,0x1
    80006750:	8e0080e7          	jalr	-1824(ra) # 8000702c <panic>

0000000080006754 <trapinit>:
    80006754:	ff010113          	addi	sp,sp,-16
    80006758:	00813423          	sd	s0,8(sp)
    8000675c:	01010413          	addi	s0,sp,16
    80006760:	00813403          	ld	s0,8(sp)
    80006764:	00003597          	auipc	a1,0x3
    80006768:	03c58593          	addi	a1,a1,60 # 800097a0 <CONSOLE_STATUS+0x790>
    8000676c:	00006517          	auipc	a0,0x6
    80006770:	0f450513          	addi	a0,a0,244 # 8000c860 <tickslock>
    80006774:	01010113          	addi	sp,sp,16
    80006778:	00001317          	auipc	t1,0x1
    8000677c:	5c030067          	jr	1472(t1) # 80007d38 <initlock>

0000000080006780 <trapinithart>:
    80006780:	ff010113          	addi	sp,sp,-16
    80006784:	00813423          	sd	s0,8(sp)
    80006788:	01010413          	addi	s0,sp,16
    8000678c:	00000797          	auipc	a5,0x0
    80006790:	2f478793          	addi	a5,a5,756 # 80006a80 <kernelvec>
    80006794:	10579073          	csrw	stvec,a5
    80006798:	00813403          	ld	s0,8(sp)
    8000679c:	01010113          	addi	sp,sp,16
    800067a0:	00008067          	ret

00000000800067a4 <usertrap>:
    800067a4:	ff010113          	addi	sp,sp,-16
    800067a8:	00813423          	sd	s0,8(sp)
    800067ac:	01010413          	addi	s0,sp,16
    800067b0:	00813403          	ld	s0,8(sp)
    800067b4:	01010113          	addi	sp,sp,16
    800067b8:	00008067          	ret

00000000800067bc <usertrapret>:
    800067bc:	ff010113          	addi	sp,sp,-16
    800067c0:	00813423          	sd	s0,8(sp)
    800067c4:	01010413          	addi	s0,sp,16
    800067c8:	00813403          	ld	s0,8(sp)
    800067cc:	01010113          	addi	sp,sp,16
    800067d0:	00008067          	ret

00000000800067d4 <kerneltrap>:
    800067d4:	fe010113          	addi	sp,sp,-32
    800067d8:	00813823          	sd	s0,16(sp)
    800067dc:	00113c23          	sd	ra,24(sp)
    800067e0:	00913423          	sd	s1,8(sp)
    800067e4:	02010413          	addi	s0,sp,32
    800067e8:	142025f3          	csrr	a1,scause
    800067ec:	100027f3          	csrr	a5,sstatus
    800067f0:	0027f793          	andi	a5,a5,2
    800067f4:	10079c63          	bnez	a5,8000690c <kerneltrap+0x138>
    800067f8:	142027f3          	csrr	a5,scause
    800067fc:	0207ce63          	bltz	a5,80006838 <kerneltrap+0x64>
    80006800:	00003517          	auipc	a0,0x3
    80006804:	fe850513          	addi	a0,a0,-24 # 800097e8 <CONSOLE_STATUS+0x7d8>
    80006808:	00001097          	auipc	ra,0x1
    8000680c:	880080e7          	jalr	-1920(ra) # 80007088 <__printf>
    80006810:	141025f3          	csrr	a1,sepc
    80006814:	14302673          	csrr	a2,stval
    80006818:	00003517          	auipc	a0,0x3
    8000681c:	fe050513          	addi	a0,a0,-32 # 800097f8 <CONSOLE_STATUS+0x7e8>
    80006820:	00001097          	auipc	ra,0x1
    80006824:	868080e7          	jalr	-1944(ra) # 80007088 <__printf>
    80006828:	00003517          	auipc	a0,0x3
    8000682c:	fe850513          	addi	a0,a0,-24 # 80009810 <CONSOLE_STATUS+0x800>
    80006830:	00000097          	auipc	ra,0x0
    80006834:	7fc080e7          	jalr	2044(ra) # 8000702c <panic>
    80006838:	0ff7f713          	andi	a4,a5,255
    8000683c:	00900693          	li	a3,9
    80006840:	04d70063          	beq	a4,a3,80006880 <kerneltrap+0xac>
    80006844:	fff00713          	li	a4,-1
    80006848:	03f71713          	slli	a4,a4,0x3f
    8000684c:	00170713          	addi	a4,a4,1
    80006850:	fae798e3          	bne	a5,a4,80006800 <kerneltrap+0x2c>
    80006854:	00000097          	auipc	ra,0x0
    80006858:	e00080e7          	jalr	-512(ra) # 80006654 <cpuid>
    8000685c:	06050663          	beqz	a0,800068c8 <kerneltrap+0xf4>
    80006860:	144027f3          	csrr	a5,sip
    80006864:	ffd7f793          	andi	a5,a5,-3
    80006868:	14479073          	csrw	sip,a5
    8000686c:	01813083          	ld	ra,24(sp)
    80006870:	01013403          	ld	s0,16(sp)
    80006874:	00813483          	ld	s1,8(sp)
    80006878:	02010113          	addi	sp,sp,32
    8000687c:	00008067          	ret
    80006880:	00000097          	auipc	ra,0x0
    80006884:	3c4080e7          	jalr	964(ra) # 80006c44 <plic_claim>
    80006888:	00a00793          	li	a5,10
    8000688c:	00050493          	mv	s1,a0
    80006890:	06f50863          	beq	a0,a5,80006900 <kerneltrap+0x12c>
    80006894:	fc050ce3          	beqz	a0,8000686c <kerneltrap+0x98>
    80006898:	00050593          	mv	a1,a0
    8000689c:	00003517          	auipc	a0,0x3
    800068a0:	f2c50513          	addi	a0,a0,-212 # 800097c8 <CONSOLE_STATUS+0x7b8>
    800068a4:	00000097          	auipc	ra,0x0
    800068a8:	7e4080e7          	jalr	2020(ra) # 80007088 <__printf>
    800068ac:	01013403          	ld	s0,16(sp)
    800068b0:	01813083          	ld	ra,24(sp)
    800068b4:	00048513          	mv	a0,s1
    800068b8:	00813483          	ld	s1,8(sp)
    800068bc:	02010113          	addi	sp,sp,32
    800068c0:	00000317          	auipc	t1,0x0
    800068c4:	3bc30067          	jr	956(t1) # 80006c7c <plic_complete>
    800068c8:	00006517          	auipc	a0,0x6
    800068cc:	f9850513          	addi	a0,a0,-104 # 8000c860 <tickslock>
    800068d0:	00001097          	auipc	ra,0x1
    800068d4:	48c080e7          	jalr	1164(ra) # 80007d5c <acquire>
    800068d8:	00005717          	auipc	a4,0x5
    800068dc:	e1c70713          	addi	a4,a4,-484 # 8000b6f4 <ticks>
    800068e0:	00072783          	lw	a5,0(a4)
    800068e4:	00006517          	auipc	a0,0x6
    800068e8:	f7c50513          	addi	a0,a0,-132 # 8000c860 <tickslock>
    800068ec:	0017879b          	addiw	a5,a5,1
    800068f0:	00f72023          	sw	a5,0(a4)
    800068f4:	00001097          	auipc	ra,0x1
    800068f8:	534080e7          	jalr	1332(ra) # 80007e28 <release>
    800068fc:	f65ff06f          	j	80006860 <kerneltrap+0x8c>
    80006900:	00001097          	auipc	ra,0x1
    80006904:	090080e7          	jalr	144(ra) # 80007990 <uartintr>
    80006908:	fa5ff06f          	j	800068ac <kerneltrap+0xd8>
    8000690c:	00003517          	auipc	a0,0x3
    80006910:	e9c50513          	addi	a0,a0,-356 # 800097a8 <CONSOLE_STATUS+0x798>
    80006914:	00000097          	auipc	ra,0x0
    80006918:	718080e7          	jalr	1816(ra) # 8000702c <panic>

000000008000691c <clockintr>:
    8000691c:	fe010113          	addi	sp,sp,-32
    80006920:	00813823          	sd	s0,16(sp)
    80006924:	00913423          	sd	s1,8(sp)
    80006928:	00113c23          	sd	ra,24(sp)
    8000692c:	02010413          	addi	s0,sp,32
    80006930:	00006497          	auipc	s1,0x6
    80006934:	f3048493          	addi	s1,s1,-208 # 8000c860 <tickslock>
    80006938:	00048513          	mv	a0,s1
    8000693c:	00001097          	auipc	ra,0x1
    80006940:	420080e7          	jalr	1056(ra) # 80007d5c <acquire>
    80006944:	00005717          	auipc	a4,0x5
    80006948:	db070713          	addi	a4,a4,-592 # 8000b6f4 <ticks>
    8000694c:	00072783          	lw	a5,0(a4)
    80006950:	01013403          	ld	s0,16(sp)
    80006954:	01813083          	ld	ra,24(sp)
    80006958:	00048513          	mv	a0,s1
    8000695c:	0017879b          	addiw	a5,a5,1
    80006960:	00813483          	ld	s1,8(sp)
    80006964:	00f72023          	sw	a5,0(a4)
    80006968:	02010113          	addi	sp,sp,32
    8000696c:	00001317          	auipc	t1,0x1
    80006970:	4bc30067          	jr	1212(t1) # 80007e28 <release>

0000000080006974 <devintr>:
    80006974:	142027f3          	csrr	a5,scause
    80006978:	00000513          	li	a0,0
    8000697c:	0007c463          	bltz	a5,80006984 <devintr+0x10>
    80006980:	00008067          	ret
    80006984:	fe010113          	addi	sp,sp,-32
    80006988:	00813823          	sd	s0,16(sp)
    8000698c:	00113c23          	sd	ra,24(sp)
    80006990:	00913423          	sd	s1,8(sp)
    80006994:	02010413          	addi	s0,sp,32
    80006998:	0ff7f713          	andi	a4,a5,255
    8000699c:	00900693          	li	a3,9
    800069a0:	04d70c63          	beq	a4,a3,800069f8 <devintr+0x84>
    800069a4:	fff00713          	li	a4,-1
    800069a8:	03f71713          	slli	a4,a4,0x3f
    800069ac:	00170713          	addi	a4,a4,1
    800069b0:	00e78c63          	beq	a5,a4,800069c8 <devintr+0x54>
    800069b4:	01813083          	ld	ra,24(sp)
    800069b8:	01013403          	ld	s0,16(sp)
    800069bc:	00813483          	ld	s1,8(sp)
    800069c0:	02010113          	addi	sp,sp,32
    800069c4:	00008067          	ret
    800069c8:	00000097          	auipc	ra,0x0
    800069cc:	c8c080e7          	jalr	-884(ra) # 80006654 <cpuid>
    800069d0:	06050663          	beqz	a0,80006a3c <devintr+0xc8>
    800069d4:	144027f3          	csrr	a5,sip
    800069d8:	ffd7f793          	andi	a5,a5,-3
    800069dc:	14479073          	csrw	sip,a5
    800069e0:	01813083          	ld	ra,24(sp)
    800069e4:	01013403          	ld	s0,16(sp)
    800069e8:	00813483          	ld	s1,8(sp)
    800069ec:	00200513          	li	a0,2
    800069f0:	02010113          	addi	sp,sp,32
    800069f4:	00008067          	ret
    800069f8:	00000097          	auipc	ra,0x0
    800069fc:	24c080e7          	jalr	588(ra) # 80006c44 <plic_claim>
    80006a00:	00a00793          	li	a5,10
    80006a04:	00050493          	mv	s1,a0
    80006a08:	06f50663          	beq	a0,a5,80006a74 <devintr+0x100>
    80006a0c:	00100513          	li	a0,1
    80006a10:	fa0482e3          	beqz	s1,800069b4 <devintr+0x40>
    80006a14:	00048593          	mv	a1,s1
    80006a18:	00003517          	auipc	a0,0x3
    80006a1c:	db050513          	addi	a0,a0,-592 # 800097c8 <CONSOLE_STATUS+0x7b8>
    80006a20:	00000097          	auipc	ra,0x0
    80006a24:	668080e7          	jalr	1640(ra) # 80007088 <__printf>
    80006a28:	00048513          	mv	a0,s1
    80006a2c:	00000097          	auipc	ra,0x0
    80006a30:	250080e7          	jalr	592(ra) # 80006c7c <plic_complete>
    80006a34:	00100513          	li	a0,1
    80006a38:	f7dff06f          	j	800069b4 <devintr+0x40>
    80006a3c:	00006517          	auipc	a0,0x6
    80006a40:	e2450513          	addi	a0,a0,-476 # 8000c860 <tickslock>
    80006a44:	00001097          	auipc	ra,0x1
    80006a48:	318080e7          	jalr	792(ra) # 80007d5c <acquire>
    80006a4c:	00005717          	auipc	a4,0x5
    80006a50:	ca870713          	addi	a4,a4,-856 # 8000b6f4 <ticks>
    80006a54:	00072783          	lw	a5,0(a4)
    80006a58:	00006517          	auipc	a0,0x6
    80006a5c:	e0850513          	addi	a0,a0,-504 # 8000c860 <tickslock>
    80006a60:	0017879b          	addiw	a5,a5,1
    80006a64:	00f72023          	sw	a5,0(a4)
    80006a68:	00001097          	auipc	ra,0x1
    80006a6c:	3c0080e7          	jalr	960(ra) # 80007e28 <release>
    80006a70:	f65ff06f          	j	800069d4 <devintr+0x60>
    80006a74:	00001097          	auipc	ra,0x1
    80006a78:	f1c080e7          	jalr	-228(ra) # 80007990 <uartintr>
    80006a7c:	fadff06f          	j	80006a28 <devintr+0xb4>

0000000080006a80 <kernelvec>:
    80006a80:	f0010113          	addi	sp,sp,-256
    80006a84:	00113023          	sd	ra,0(sp)
    80006a88:	00213423          	sd	sp,8(sp)
    80006a8c:	00313823          	sd	gp,16(sp)
    80006a90:	00413c23          	sd	tp,24(sp)
    80006a94:	02513023          	sd	t0,32(sp)
    80006a98:	02613423          	sd	t1,40(sp)
    80006a9c:	02713823          	sd	t2,48(sp)
    80006aa0:	02813c23          	sd	s0,56(sp)
    80006aa4:	04913023          	sd	s1,64(sp)
    80006aa8:	04a13423          	sd	a0,72(sp)
    80006aac:	04b13823          	sd	a1,80(sp)
    80006ab0:	04c13c23          	sd	a2,88(sp)
    80006ab4:	06d13023          	sd	a3,96(sp)
    80006ab8:	06e13423          	sd	a4,104(sp)
    80006abc:	06f13823          	sd	a5,112(sp)
    80006ac0:	07013c23          	sd	a6,120(sp)
    80006ac4:	09113023          	sd	a7,128(sp)
    80006ac8:	09213423          	sd	s2,136(sp)
    80006acc:	09313823          	sd	s3,144(sp)
    80006ad0:	09413c23          	sd	s4,152(sp)
    80006ad4:	0b513023          	sd	s5,160(sp)
    80006ad8:	0b613423          	sd	s6,168(sp)
    80006adc:	0b713823          	sd	s7,176(sp)
    80006ae0:	0b813c23          	sd	s8,184(sp)
    80006ae4:	0d913023          	sd	s9,192(sp)
    80006ae8:	0da13423          	sd	s10,200(sp)
    80006aec:	0db13823          	sd	s11,208(sp)
    80006af0:	0dc13c23          	sd	t3,216(sp)
    80006af4:	0fd13023          	sd	t4,224(sp)
    80006af8:	0fe13423          	sd	t5,232(sp)
    80006afc:	0ff13823          	sd	t6,240(sp)
    80006b00:	cd5ff0ef          	jal	ra,800067d4 <kerneltrap>
    80006b04:	00013083          	ld	ra,0(sp)
    80006b08:	00813103          	ld	sp,8(sp)
    80006b0c:	01013183          	ld	gp,16(sp)
    80006b10:	02013283          	ld	t0,32(sp)
    80006b14:	02813303          	ld	t1,40(sp)
    80006b18:	03013383          	ld	t2,48(sp)
    80006b1c:	03813403          	ld	s0,56(sp)
    80006b20:	04013483          	ld	s1,64(sp)
    80006b24:	04813503          	ld	a0,72(sp)
    80006b28:	05013583          	ld	a1,80(sp)
    80006b2c:	05813603          	ld	a2,88(sp)
    80006b30:	06013683          	ld	a3,96(sp)
    80006b34:	06813703          	ld	a4,104(sp)
    80006b38:	07013783          	ld	a5,112(sp)
    80006b3c:	07813803          	ld	a6,120(sp)
    80006b40:	08013883          	ld	a7,128(sp)
    80006b44:	08813903          	ld	s2,136(sp)
    80006b48:	09013983          	ld	s3,144(sp)
    80006b4c:	09813a03          	ld	s4,152(sp)
    80006b50:	0a013a83          	ld	s5,160(sp)
    80006b54:	0a813b03          	ld	s6,168(sp)
    80006b58:	0b013b83          	ld	s7,176(sp)
    80006b5c:	0b813c03          	ld	s8,184(sp)
    80006b60:	0c013c83          	ld	s9,192(sp)
    80006b64:	0c813d03          	ld	s10,200(sp)
    80006b68:	0d013d83          	ld	s11,208(sp)
    80006b6c:	0d813e03          	ld	t3,216(sp)
    80006b70:	0e013e83          	ld	t4,224(sp)
    80006b74:	0e813f03          	ld	t5,232(sp)
    80006b78:	0f013f83          	ld	t6,240(sp)
    80006b7c:	10010113          	addi	sp,sp,256
    80006b80:	10200073          	sret
    80006b84:	00000013          	nop
    80006b88:	00000013          	nop
    80006b8c:	00000013          	nop

0000000080006b90 <timervec>:
    80006b90:	34051573          	csrrw	a0,mscratch,a0
    80006b94:	00b53023          	sd	a1,0(a0)
    80006b98:	00c53423          	sd	a2,8(a0)
    80006b9c:	00d53823          	sd	a3,16(a0)
    80006ba0:	01853583          	ld	a1,24(a0)
    80006ba4:	02053603          	ld	a2,32(a0)
    80006ba8:	0005b683          	ld	a3,0(a1)
    80006bac:	00c686b3          	add	a3,a3,a2
    80006bb0:	00d5b023          	sd	a3,0(a1)
    80006bb4:	00200593          	li	a1,2
    80006bb8:	14459073          	csrw	sip,a1
    80006bbc:	01053683          	ld	a3,16(a0)
    80006bc0:	00853603          	ld	a2,8(a0)
    80006bc4:	00053583          	ld	a1,0(a0)
    80006bc8:	34051573          	csrrw	a0,mscratch,a0
    80006bcc:	30200073          	mret

0000000080006bd0 <plicinit>:
    80006bd0:	ff010113          	addi	sp,sp,-16
    80006bd4:	00813423          	sd	s0,8(sp)
    80006bd8:	01010413          	addi	s0,sp,16
    80006bdc:	00813403          	ld	s0,8(sp)
    80006be0:	0c0007b7          	lui	a5,0xc000
    80006be4:	00100713          	li	a4,1
    80006be8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006bec:	00e7a223          	sw	a4,4(a5)
    80006bf0:	01010113          	addi	sp,sp,16
    80006bf4:	00008067          	ret

0000000080006bf8 <plicinithart>:
    80006bf8:	ff010113          	addi	sp,sp,-16
    80006bfc:	00813023          	sd	s0,0(sp)
    80006c00:	00113423          	sd	ra,8(sp)
    80006c04:	01010413          	addi	s0,sp,16
    80006c08:	00000097          	auipc	ra,0x0
    80006c0c:	a4c080e7          	jalr	-1460(ra) # 80006654 <cpuid>
    80006c10:	0085171b          	slliw	a4,a0,0x8
    80006c14:	0c0027b7          	lui	a5,0xc002
    80006c18:	00e787b3          	add	a5,a5,a4
    80006c1c:	40200713          	li	a4,1026
    80006c20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006c24:	00813083          	ld	ra,8(sp)
    80006c28:	00013403          	ld	s0,0(sp)
    80006c2c:	00d5151b          	slliw	a0,a0,0xd
    80006c30:	0c2017b7          	lui	a5,0xc201
    80006c34:	00a78533          	add	a0,a5,a0
    80006c38:	00052023          	sw	zero,0(a0)
    80006c3c:	01010113          	addi	sp,sp,16
    80006c40:	00008067          	ret

0000000080006c44 <plic_claim>:
    80006c44:	ff010113          	addi	sp,sp,-16
    80006c48:	00813023          	sd	s0,0(sp)
    80006c4c:	00113423          	sd	ra,8(sp)
    80006c50:	01010413          	addi	s0,sp,16
    80006c54:	00000097          	auipc	ra,0x0
    80006c58:	a00080e7          	jalr	-1536(ra) # 80006654 <cpuid>
    80006c5c:	00813083          	ld	ra,8(sp)
    80006c60:	00013403          	ld	s0,0(sp)
    80006c64:	00d5151b          	slliw	a0,a0,0xd
    80006c68:	0c2017b7          	lui	a5,0xc201
    80006c6c:	00a78533          	add	a0,a5,a0
    80006c70:	00452503          	lw	a0,4(a0)
    80006c74:	01010113          	addi	sp,sp,16
    80006c78:	00008067          	ret

0000000080006c7c <plic_complete>:
    80006c7c:	fe010113          	addi	sp,sp,-32
    80006c80:	00813823          	sd	s0,16(sp)
    80006c84:	00913423          	sd	s1,8(sp)
    80006c88:	00113c23          	sd	ra,24(sp)
    80006c8c:	02010413          	addi	s0,sp,32
    80006c90:	00050493          	mv	s1,a0
    80006c94:	00000097          	auipc	ra,0x0
    80006c98:	9c0080e7          	jalr	-1600(ra) # 80006654 <cpuid>
    80006c9c:	01813083          	ld	ra,24(sp)
    80006ca0:	01013403          	ld	s0,16(sp)
    80006ca4:	00d5179b          	slliw	a5,a0,0xd
    80006ca8:	0c201737          	lui	a4,0xc201
    80006cac:	00f707b3          	add	a5,a4,a5
    80006cb0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006cb4:	00813483          	ld	s1,8(sp)
    80006cb8:	02010113          	addi	sp,sp,32
    80006cbc:	00008067          	ret

0000000080006cc0 <consolewrite>:
    80006cc0:	fb010113          	addi	sp,sp,-80
    80006cc4:	04813023          	sd	s0,64(sp)
    80006cc8:	04113423          	sd	ra,72(sp)
    80006ccc:	02913c23          	sd	s1,56(sp)
    80006cd0:	03213823          	sd	s2,48(sp)
    80006cd4:	03313423          	sd	s3,40(sp)
    80006cd8:	03413023          	sd	s4,32(sp)
    80006cdc:	01513c23          	sd	s5,24(sp)
    80006ce0:	05010413          	addi	s0,sp,80
    80006ce4:	06c05c63          	blez	a2,80006d5c <consolewrite+0x9c>
    80006ce8:	00060993          	mv	s3,a2
    80006cec:	00050a13          	mv	s4,a0
    80006cf0:	00058493          	mv	s1,a1
    80006cf4:	00000913          	li	s2,0
    80006cf8:	fff00a93          	li	s5,-1
    80006cfc:	01c0006f          	j	80006d18 <consolewrite+0x58>
    80006d00:	fbf44503          	lbu	a0,-65(s0)
    80006d04:	0019091b          	addiw	s2,s2,1
    80006d08:	00148493          	addi	s1,s1,1
    80006d0c:	00001097          	auipc	ra,0x1
    80006d10:	a9c080e7          	jalr	-1380(ra) # 800077a8 <uartputc>
    80006d14:	03298063          	beq	s3,s2,80006d34 <consolewrite+0x74>
    80006d18:	00048613          	mv	a2,s1
    80006d1c:	00100693          	li	a3,1
    80006d20:	000a0593          	mv	a1,s4
    80006d24:	fbf40513          	addi	a0,s0,-65
    80006d28:	00000097          	auipc	ra,0x0
    80006d2c:	9e4080e7          	jalr	-1564(ra) # 8000670c <either_copyin>
    80006d30:	fd5518e3          	bne	a0,s5,80006d00 <consolewrite+0x40>
    80006d34:	04813083          	ld	ra,72(sp)
    80006d38:	04013403          	ld	s0,64(sp)
    80006d3c:	03813483          	ld	s1,56(sp)
    80006d40:	02813983          	ld	s3,40(sp)
    80006d44:	02013a03          	ld	s4,32(sp)
    80006d48:	01813a83          	ld	s5,24(sp)
    80006d4c:	00090513          	mv	a0,s2
    80006d50:	03013903          	ld	s2,48(sp)
    80006d54:	05010113          	addi	sp,sp,80
    80006d58:	00008067          	ret
    80006d5c:	00000913          	li	s2,0
    80006d60:	fd5ff06f          	j	80006d34 <consolewrite+0x74>

0000000080006d64 <consoleread>:
    80006d64:	f9010113          	addi	sp,sp,-112
    80006d68:	06813023          	sd	s0,96(sp)
    80006d6c:	04913c23          	sd	s1,88(sp)
    80006d70:	05213823          	sd	s2,80(sp)
    80006d74:	05313423          	sd	s3,72(sp)
    80006d78:	05413023          	sd	s4,64(sp)
    80006d7c:	03513c23          	sd	s5,56(sp)
    80006d80:	03613823          	sd	s6,48(sp)
    80006d84:	03713423          	sd	s7,40(sp)
    80006d88:	03813023          	sd	s8,32(sp)
    80006d8c:	06113423          	sd	ra,104(sp)
    80006d90:	01913c23          	sd	s9,24(sp)
    80006d94:	07010413          	addi	s0,sp,112
    80006d98:	00060b93          	mv	s7,a2
    80006d9c:	00050913          	mv	s2,a0
    80006da0:	00058c13          	mv	s8,a1
    80006da4:	00060b1b          	sext.w	s6,a2
    80006da8:	00006497          	auipc	s1,0x6
    80006dac:	ae048493          	addi	s1,s1,-1312 # 8000c888 <cons>
    80006db0:	00400993          	li	s3,4
    80006db4:	fff00a13          	li	s4,-1
    80006db8:	00a00a93          	li	s5,10
    80006dbc:	05705e63          	blez	s7,80006e18 <consoleread+0xb4>
    80006dc0:	09c4a703          	lw	a4,156(s1)
    80006dc4:	0984a783          	lw	a5,152(s1)
    80006dc8:	0007071b          	sext.w	a4,a4
    80006dcc:	08e78463          	beq	a5,a4,80006e54 <consoleread+0xf0>
    80006dd0:	07f7f713          	andi	a4,a5,127
    80006dd4:	00e48733          	add	a4,s1,a4
    80006dd8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006ddc:	0017869b          	addiw	a3,a5,1
    80006de0:	08d4ac23          	sw	a3,152(s1)
    80006de4:	00070c9b          	sext.w	s9,a4
    80006de8:	0b370663          	beq	a4,s3,80006e94 <consoleread+0x130>
    80006dec:	00100693          	li	a3,1
    80006df0:	f9f40613          	addi	a2,s0,-97
    80006df4:	000c0593          	mv	a1,s8
    80006df8:	00090513          	mv	a0,s2
    80006dfc:	f8e40fa3          	sb	a4,-97(s0)
    80006e00:	00000097          	auipc	ra,0x0
    80006e04:	8c0080e7          	jalr	-1856(ra) # 800066c0 <either_copyout>
    80006e08:	01450863          	beq	a0,s4,80006e18 <consoleread+0xb4>
    80006e0c:	001c0c13          	addi	s8,s8,1
    80006e10:	fffb8b9b          	addiw	s7,s7,-1
    80006e14:	fb5c94e3          	bne	s9,s5,80006dbc <consoleread+0x58>
    80006e18:	000b851b          	sext.w	a0,s7
    80006e1c:	06813083          	ld	ra,104(sp)
    80006e20:	06013403          	ld	s0,96(sp)
    80006e24:	05813483          	ld	s1,88(sp)
    80006e28:	05013903          	ld	s2,80(sp)
    80006e2c:	04813983          	ld	s3,72(sp)
    80006e30:	04013a03          	ld	s4,64(sp)
    80006e34:	03813a83          	ld	s5,56(sp)
    80006e38:	02813b83          	ld	s7,40(sp)
    80006e3c:	02013c03          	ld	s8,32(sp)
    80006e40:	01813c83          	ld	s9,24(sp)
    80006e44:	40ab053b          	subw	a0,s6,a0
    80006e48:	03013b03          	ld	s6,48(sp)
    80006e4c:	07010113          	addi	sp,sp,112
    80006e50:	00008067          	ret
    80006e54:	00001097          	auipc	ra,0x1
    80006e58:	1d8080e7          	jalr	472(ra) # 8000802c <push_on>
    80006e5c:	0984a703          	lw	a4,152(s1)
    80006e60:	09c4a783          	lw	a5,156(s1)
    80006e64:	0007879b          	sext.w	a5,a5
    80006e68:	fef70ce3          	beq	a4,a5,80006e60 <consoleread+0xfc>
    80006e6c:	00001097          	auipc	ra,0x1
    80006e70:	234080e7          	jalr	564(ra) # 800080a0 <pop_on>
    80006e74:	0984a783          	lw	a5,152(s1)
    80006e78:	07f7f713          	andi	a4,a5,127
    80006e7c:	00e48733          	add	a4,s1,a4
    80006e80:	01874703          	lbu	a4,24(a4)
    80006e84:	0017869b          	addiw	a3,a5,1
    80006e88:	08d4ac23          	sw	a3,152(s1)
    80006e8c:	00070c9b          	sext.w	s9,a4
    80006e90:	f5371ee3          	bne	a4,s3,80006dec <consoleread+0x88>
    80006e94:	000b851b          	sext.w	a0,s7
    80006e98:	f96bf2e3          	bgeu	s7,s6,80006e1c <consoleread+0xb8>
    80006e9c:	08f4ac23          	sw	a5,152(s1)
    80006ea0:	f7dff06f          	j	80006e1c <consoleread+0xb8>

0000000080006ea4 <consputc>:
    80006ea4:	10000793          	li	a5,256
    80006ea8:	00f50663          	beq	a0,a5,80006eb4 <consputc+0x10>
    80006eac:	00001317          	auipc	t1,0x1
    80006eb0:	9f430067          	jr	-1548(t1) # 800078a0 <uartputc_sync>
    80006eb4:	ff010113          	addi	sp,sp,-16
    80006eb8:	00113423          	sd	ra,8(sp)
    80006ebc:	00813023          	sd	s0,0(sp)
    80006ec0:	01010413          	addi	s0,sp,16
    80006ec4:	00800513          	li	a0,8
    80006ec8:	00001097          	auipc	ra,0x1
    80006ecc:	9d8080e7          	jalr	-1576(ra) # 800078a0 <uartputc_sync>
    80006ed0:	02000513          	li	a0,32
    80006ed4:	00001097          	auipc	ra,0x1
    80006ed8:	9cc080e7          	jalr	-1588(ra) # 800078a0 <uartputc_sync>
    80006edc:	00013403          	ld	s0,0(sp)
    80006ee0:	00813083          	ld	ra,8(sp)
    80006ee4:	00800513          	li	a0,8
    80006ee8:	01010113          	addi	sp,sp,16
    80006eec:	00001317          	auipc	t1,0x1
    80006ef0:	9b430067          	jr	-1612(t1) # 800078a0 <uartputc_sync>

0000000080006ef4 <consoleintr>:
    80006ef4:	fe010113          	addi	sp,sp,-32
    80006ef8:	00813823          	sd	s0,16(sp)
    80006efc:	00913423          	sd	s1,8(sp)
    80006f00:	01213023          	sd	s2,0(sp)
    80006f04:	00113c23          	sd	ra,24(sp)
    80006f08:	02010413          	addi	s0,sp,32
    80006f0c:	00006917          	auipc	s2,0x6
    80006f10:	97c90913          	addi	s2,s2,-1668 # 8000c888 <cons>
    80006f14:	00050493          	mv	s1,a0
    80006f18:	00090513          	mv	a0,s2
    80006f1c:	00001097          	auipc	ra,0x1
    80006f20:	e40080e7          	jalr	-448(ra) # 80007d5c <acquire>
    80006f24:	02048c63          	beqz	s1,80006f5c <consoleintr+0x68>
    80006f28:	0a092783          	lw	a5,160(s2)
    80006f2c:	09892703          	lw	a4,152(s2)
    80006f30:	07f00693          	li	a3,127
    80006f34:	40e7873b          	subw	a4,a5,a4
    80006f38:	02e6e263          	bltu	a3,a4,80006f5c <consoleintr+0x68>
    80006f3c:	00d00713          	li	a4,13
    80006f40:	04e48063          	beq	s1,a4,80006f80 <consoleintr+0x8c>
    80006f44:	07f7f713          	andi	a4,a5,127
    80006f48:	00e90733          	add	a4,s2,a4
    80006f4c:	0017879b          	addiw	a5,a5,1
    80006f50:	0af92023          	sw	a5,160(s2)
    80006f54:	00970c23          	sb	s1,24(a4)
    80006f58:	08f92e23          	sw	a5,156(s2)
    80006f5c:	01013403          	ld	s0,16(sp)
    80006f60:	01813083          	ld	ra,24(sp)
    80006f64:	00813483          	ld	s1,8(sp)
    80006f68:	00013903          	ld	s2,0(sp)
    80006f6c:	00006517          	auipc	a0,0x6
    80006f70:	91c50513          	addi	a0,a0,-1764 # 8000c888 <cons>
    80006f74:	02010113          	addi	sp,sp,32
    80006f78:	00001317          	auipc	t1,0x1
    80006f7c:	eb030067          	jr	-336(t1) # 80007e28 <release>
    80006f80:	00a00493          	li	s1,10
    80006f84:	fc1ff06f          	j	80006f44 <consoleintr+0x50>

0000000080006f88 <consoleinit>:
    80006f88:	fe010113          	addi	sp,sp,-32
    80006f8c:	00113c23          	sd	ra,24(sp)
    80006f90:	00813823          	sd	s0,16(sp)
    80006f94:	00913423          	sd	s1,8(sp)
    80006f98:	02010413          	addi	s0,sp,32
    80006f9c:	00006497          	auipc	s1,0x6
    80006fa0:	8ec48493          	addi	s1,s1,-1812 # 8000c888 <cons>
    80006fa4:	00048513          	mv	a0,s1
    80006fa8:	00003597          	auipc	a1,0x3
    80006fac:	87858593          	addi	a1,a1,-1928 # 80009820 <CONSOLE_STATUS+0x810>
    80006fb0:	00001097          	auipc	ra,0x1
    80006fb4:	d88080e7          	jalr	-632(ra) # 80007d38 <initlock>
    80006fb8:	00000097          	auipc	ra,0x0
    80006fbc:	7ac080e7          	jalr	1964(ra) # 80007764 <uartinit>
    80006fc0:	01813083          	ld	ra,24(sp)
    80006fc4:	01013403          	ld	s0,16(sp)
    80006fc8:	00000797          	auipc	a5,0x0
    80006fcc:	d9c78793          	addi	a5,a5,-612 # 80006d64 <consoleread>
    80006fd0:	0af4bc23          	sd	a5,184(s1)
    80006fd4:	00000797          	auipc	a5,0x0
    80006fd8:	cec78793          	addi	a5,a5,-788 # 80006cc0 <consolewrite>
    80006fdc:	0cf4b023          	sd	a5,192(s1)
    80006fe0:	00813483          	ld	s1,8(sp)
    80006fe4:	02010113          	addi	sp,sp,32
    80006fe8:	00008067          	ret

0000000080006fec <console_read>:
    80006fec:	ff010113          	addi	sp,sp,-16
    80006ff0:	00813423          	sd	s0,8(sp)
    80006ff4:	01010413          	addi	s0,sp,16
    80006ff8:	00813403          	ld	s0,8(sp)
    80006ffc:	00006317          	auipc	t1,0x6
    80007000:	94433303          	ld	t1,-1724(t1) # 8000c940 <devsw+0x10>
    80007004:	01010113          	addi	sp,sp,16
    80007008:	00030067          	jr	t1

000000008000700c <console_write>:
    8000700c:	ff010113          	addi	sp,sp,-16
    80007010:	00813423          	sd	s0,8(sp)
    80007014:	01010413          	addi	s0,sp,16
    80007018:	00813403          	ld	s0,8(sp)
    8000701c:	00006317          	auipc	t1,0x6
    80007020:	92c33303          	ld	t1,-1748(t1) # 8000c948 <devsw+0x18>
    80007024:	01010113          	addi	sp,sp,16
    80007028:	00030067          	jr	t1

000000008000702c <panic>:
    8000702c:	fe010113          	addi	sp,sp,-32
    80007030:	00113c23          	sd	ra,24(sp)
    80007034:	00813823          	sd	s0,16(sp)
    80007038:	00913423          	sd	s1,8(sp)
    8000703c:	02010413          	addi	s0,sp,32
    80007040:	00050493          	mv	s1,a0
    80007044:	00002517          	auipc	a0,0x2
    80007048:	7e450513          	addi	a0,a0,2020 # 80009828 <CONSOLE_STATUS+0x818>
    8000704c:	00006797          	auipc	a5,0x6
    80007050:	9807ae23          	sw	zero,-1636(a5) # 8000c9e8 <pr+0x18>
    80007054:	00000097          	auipc	ra,0x0
    80007058:	034080e7          	jalr	52(ra) # 80007088 <__printf>
    8000705c:	00048513          	mv	a0,s1
    80007060:	00000097          	auipc	ra,0x0
    80007064:	028080e7          	jalr	40(ra) # 80007088 <__printf>
    80007068:	00002517          	auipc	a0,0x2
    8000706c:	14050513          	addi	a0,a0,320 # 800091a8 <CONSOLE_STATUS+0x198>
    80007070:	00000097          	auipc	ra,0x0
    80007074:	018080e7          	jalr	24(ra) # 80007088 <__printf>
    80007078:	00100793          	li	a5,1
    8000707c:	00004717          	auipc	a4,0x4
    80007080:	66f72e23          	sw	a5,1660(a4) # 8000b6f8 <panicked>
    80007084:	0000006f          	j	80007084 <panic+0x58>

0000000080007088 <__printf>:
    80007088:	f3010113          	addi	sp,sp,-208
    8000708c:	08813023          	sd	s0,128(sp)
    80007090:	07313423          	sd	s3,104(sp)
    80007094:	09010413          	addi	s0,sp,144
    80007098:	05813023          	sd	s8,64(sp)
    8000709c:	08113423          	sd	ra,136(sp)
    800070a0:	06913c23          	sd	s1,120(sp)
    800070a4:	07213823          	sd	s2,112(sp)
    800070a8:	07413023          	sd	s4,96(sp)
    800070ac:	05513c23          	sd	s5,88(sp)
    800070b0:	05613823          	sd	s6,80(sp)
    800070b4:	05713423          	sd	s7,72(sp)
    800070b8:	03913c23          	sd	s9,56(sp)
    800070bc:	03a13823          	sd	s10,48(sp)
    800070c0:	03b13423          	sd	s11,40(sp)
    800070c4:	00006317          	auipc	t1,0x6
    800070c8:	90c30313          	addi	t1,t1,-1780 # 8000c9d0 <pr>
    800070cc:	01832c03          	lw	s8,24(t1)
    800070d0:	00b43423          	sd	a1,8(s0)
    800070d4:	00c43823          	sd	a2,16(s0)
    800070d8:	00d43c23          	sd	a3,24(s0)
    800070dc:	02e43023          	sd	a4,32(s0)
    800070e0:	02f43423          	sd	a5,40(s0)
    800070e4:	03043823          	sd	a6,48(s0)
    800070e8:	03143c23          	sd	a7,56(s0)
    800070ec:	00050993          	mv	s3,a0
    800070f0:	4a0c1663          	bnez	s8,8000759c <__printf+0x514>
    800070f4:	60098c63          	beqz	s3,8000770c <__printf+0x684>
    800070f8:	0009c503          	lbu	a0,0(s3)
    800070fc:	00840793          	addi	a5,s0,8
    80007100:	f6f43c23          	sd	a5,-136(s0)
    80007104:	00000493          	li	s1,0
    80007108:	22050063          	beqz	a0,80007328 <__printf+0x2a0>
    8000710c:	00002a37          	lui	s4,0x2
    80007110:	00018ab7          	lui	s5,0x18
    80007114:	000f4b37          	lui	s6,0xf4
    80007118:	00989bb7          	lui	s7,0x989
    8000711c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007120:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007124:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007128:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000712c:	00148c9b          	addiw	s9,s1,1
    80007130:	02500793          	li	a5,37
    80007134:	01998933          	add	s2,s3,s9
    80007138:	38f51263          	bne	a0,a5,800074bc <__printf+0x434>
    8000713c:	00094783          	lbu	a5,0(s2)
    80007140:	00078c9b          	sext.w	s9,a5
    80007144:	1e078263          	beqz	a5,80007328 <__printf+0x2a0>
    80007148:	0024849b          	addiw	s1,s1,2
    8000714c:	07000713          	li	a4,112
    80007150:	00998933          	add	s2,s3,s1
    80007154:	38e78a63          	beq	a5,a4,800074e8 <__printf+0x460>
    80007158:	20f76863          	bltu	a4,a5,80007368 <__printf+0x2e0>
    8000715c:	42a78863          	beq	a5,a0,8000758c <__printf+0x504>
    80007160:	06400713          	li	a4,100
    80007164:	40e79663          	bne	a5,a4,80007570 <__printf+0x4e8>
    80007168:	f7843783          	ld	a5,-136(s0)
    8000716c:	0007a603          	lw	a2,0(a5)
    80007170:	00878793          	addi	a5,a5,8
    80007174:	f6f43c23          	sd	a5,-136(s0)
    80007178:	42064a63          	bltz	a2,800075ac <__printf+0x524>
    8000717c:	00a00713          	li	a4,10
    80007180:	02e677bb          	remuw	a5,a2,a4
    80007184:	00002d97          	auipc	s11,0x2
    80007188:	6ccd8d93          	addi	s11,s11,1740 # 80009850 <digits>
    8000718c:	00900593          	li	a1,9
    80007190:	0006051b          	sext.w	a0,a2
    80007194:	00000c93          	li	s9,0
    80007198:	02079793          	slli	a5,a5,0x20
    8000719c:	0207d793          	srli	a5,a5,0x20
    800071a0:	00fd87b3          	add	a5,s11,a5
    800071a4:	0007c783          	lbu	a5,0(a5)
    800071a8:	02e656bb          	divuw	a3,a2,a4
    800071ac:	f8f40023          	sb	a5,-128(s0)
    800071b0:	14c5d863          	bge	a1,a2,80007300 <__printf+0x278>
    800071b4:	06300593          	li	a1,99
    800071b8:	00100c93          	li	s9,1
    800071bc:	02e6f7bb          	remuw	a5,a3,a4
    800071c0:	02079793          	slli	a5,a5,0x20
    800071c4:	0207d793          	srli	a5,a5,0x20
    800071c8:	00fd87b3          	add	a5,s11,a5
    800071cc:	0007c783          	lbu	a5,0(a5)
    800071d0:	02e6d73b          	divuw	a4,a3,a4
    800071d4:	f8f400a3          	sb	a5,-127(s0)
    800071d8:	12a5f463          	bgeu	a1,a0,80007300 <__printf+0x278>
    800071dc:	00a00693          	li	a3,10
    800071e0:	00900593          	li	a1,9
    800071e4:	02d777bb          	remuw	a5,a4,a3
    800071e8:	02079793          	slli	a5,a5,0x20
    800071ec:	0207d793          	srli	a5,a5,0x20
    800071f0:	00fd87b3          	add	a5,s11,a5
    800071f4:	0007c503          	lbu	a0,0(a5)
    800071f8:	02d757bb          	divuw	a5,a4,a3
    800071fc:	f8a40123          	sb	a0,-126(s0)
    80007200:	48e5f263          	bgeu	a1,a4,80007684 <__printf+0x5fc>
    80007204:	06300513          	li	a0,99
    80007208:	02d7f5bb          	remuw	a1,a5,a3
    8000720c:	02059593          	slli	a1,a1,0x20
    80007210:	0205d593          	srli	a1,a1,0x20
    80007214:	00bd85b3          	add	a1,s11,a1
    80007218:	0005c583          	lbu	a1,0(a1)
    8000721c:	02d7d7bb          	divuw	a5,a5,a3
    80007220:	f8b401a3          	sb	a1,-125(s0)
    80007224:	48e57263          	bgeu	a0,a4,800076a8 <__printf+0x620>
    80007228:	3e700513          	li	a0,999
    8000722c:	02d7f5bb          	remuw	a1,a5,a3
    80007230:	02059593          	slli	a1,a1,0x20
    80007234:	0205d593          	srli	a1,a1,0x20
    80007238:	00bd85b3          	add	a1,s11,a1
    8000723c:	0005c583          	lbu	a1,0(a1)
    80007240:	02d7d7bb          	divuw	a5,a5,a3
    80007244:	f8b40223          	sb	a1,-124(s0)
    80007248:	46e57663          	bgeu	a0,a4,800076b4 <__printf+0x62c>
    8000724c:	02d7f5bb          	remuw	a1,a5,a3
    80007250:	02059593          	slli	a1,a1,0x20
    80007254:	0205d593          	srli	a1,a1,0x20
    80007258:	00bd85b3          	add	a1,s11,a1
    8000725c:	0005c583          	lbu	a1,0(a1)
    80007260:	02d7d7bb          	divuw	a5,a5,a3
    80007264:	f8b402a3          	sb	a1,-123(s0)
    80007268:	46ea7863          	bgeu	s4,a4,800076d8 <__printf+0x650>
    8000726c:	02d7f5bb          	remuw	a1,a5,a3
    80007270:	02059593          	slli	a1,a1,0x20
    80007274:	0205d593          	srli	a1,a1,0x20
    80007278:	00bd85b3          	add	a1,s11,a1
    8000727c:	0005c583          	lbu	a1,0(a1)
    80007280:	02d7d7bb          	divuw	a5,a5,a3
    80007284:	f8b40323          	sb	a1,-122(s0)
    80007288:	3eeaf863          	bgeu	s5,a4,80007678 <__printf+0x5f0>
    8000728c:	02d7f5bb          	remuw	a1,a5,a3
    80007290:	02059593          	slli	a1,a1,0x20
    80007294:	0205d593          	srli	a1,a1,0x20
    80007298:	00bd85b3          	add	a1,s11,a1
    8000729c:	0005c583          	lbu	a1,0(a1)
    800072a0:	02d7d7bb          	divuw	a5,a5,a3
    800072a4:	f8b403a3          	sb	a1,-121(s0)
    800072a8:	42eb7e63          	bgeu	s6,a4,800076e4 <__printf+0x65c>
    800072ac:	02d7f5bb          	remuw	a1,a5,a3
    800072b0:	02059593          	slli	a1,a1,0x20
    800072b4:	0205d593          	srli	a1,a1,0x20
    800072b8:	00bd85b3          	add	a1,s11,a1
    800072bc:	0005c583          	lbu	a1,0(a1)
    800072c0:	02d7d7bb          	divuw	a5,a5,a3
    800072c4:	f8b40423          	sb	a1,-120(s0)
    800072c8:	42ebfc63          	bgeu	s7,a4,80007700 <__printf+0x678>
    800072cc:	02079793          	slli	a5,a5,0x20
    800072d0:	0207d793          	srli	a5,a5,0x20
    800072d4:	00fd8db3          	add	s11,s11,a5
    800072d8:	000dc703          	lbu	a4,0(s11)
    800072dc:	00a00793          	li	a5,10
    800072e0:	00900c93          	li	s9,9
    800072e4:	f8e404a3          	sb	a4,-119(s0)
    800072e8:	00065c63          	bgez	a2,80007300 <__printf+0x278>
    800072ec:	f9040713          	addi	a4,s0,-112
    800072f0:	00f70733          	add	a4,a4,a5
    800072f4:	02d00693          	li	a3,45
    800072f8:	fed70823          	sb	a3,-16(a4)
    800072fc:	00078c93          	mv	s9,a5
    80007300:	f8040793          	addi	a5,s0,-128
    80007304:	01978cb3          	add	s9,a5,s9
    80007308:	f7f40d13          	addi	s10,s0,-129
    8000730c:	000cc503          	lbu	a0,0(s9)
    80007310:	fffc8c93          	addi	s9,s9,-1
    80007314:	00000097          	auipc	ra,0x0
    80007318:	b90080e7          	jalr	-1136(ra) # 80006ea4 <consputc>
    8000731c:	ffac98e3          	bne	s9,s10,8000730c <__printf+0x284>
    80007320:	00094503          	lbu	a0,0(s2)
    80007324:	e00514e3          	bnez	a0,8000712c <__printf+0xa4>
    80007328:	1a0c1663          	bnez	s8,800074d4 <__printf+0x44c>
    8000732c:	08813083          	ld	ra,136(sp)
    80007330:	08013403          	ld	s0,128(sp)
    80007334:	07813483          	ld	s1,120(sp)
    80007338:	07013903          	ld	s2,112(sp)
    8000733c:	06813983          	ld	s3,104(sp)
    80007340:	06013a03          	ld	s4,96(sp)
    80007344:	05813a83          	ld	s5,88(sp)
    80007348:	05013b03          	ld	s6,80(sp)
    8000734c:	04813b83          	ld	s7,72(sp)
    80007350:	04013c03          	ld	s8,64(sp)
    80007354:	03813c83          	ld	s9,56(sp)
    80007358:	03013d03          	ld	s10,48(sp)
    8000735c:	02813d83          	ld	s11,40(sp)
    80007360:	0d010113          	addi	sp,sp,208
    80007364:	00008067          	ret
    80007368:	07300713          	li	a4,115
    8000736c:	1ce78a63          	beq	a5,a4,80007540 <__printf+0x4b8>
    80007370:	07800713          	li	a4,120
    80007374:	1ee79e63          	bne	a5,a4,80007570 <__printf+0x4e8>
    80007378:	f7843783          	ld	a5,-136(s0)
    8000737c:	0007a703          	lw	a4,0(a5)
    80007380:	00878793          	addi	a5,a5,8
    80007384:	f6f43c23          	sd	a5,-136(s0)
    80007388:	28074263          	bltz	a4,8000760c <__printf+0x584>
    8000738c:	00002d97          	auipc	s11,0x2
    80007390:	4c4d8d93          	addi	s11,s11,1220 # 80009850 <digits>
    80007394:	00f77793          	andi	a5,a4,15
    80007398:	00fd87b3          	add	a5,s11,a5
    8000739c:	0007c683          	lbu	a3,0(a5)
    800073a0:	00f00613          	li	a2,15
    800073a4:	0007079b          	sext.w	a5,a4
    800073a8:	f8d40023          	sb	a3,-128(s0)
    800073ac:	0047559b          	srliw	a1,a4,0x4
    800073b0:	0047569b          	srliw	a3,a4,0x4
    800073b4:	00000c93          	li	s9,0
    800073b8:	0ee65063          	bge	a2,a4,80007498 <__printf+0x410>
    800073bc:	00f6f693          	andi	a3,a3,15
    800073c0:	00dd86b3          	add	a3,s11,a3
    800073c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800073c8:	0087d79b          	srliw	a5,a5,0x8
    800073cc:	00100c93          	li	s9,1
    800073d0:	f8d400a3          	sb	a3,-127(s0)
    800073d4:	0cb67263          	bgeu	a2,a1,80007498 <__printf+0x410>
    800073d8:	00f7f693          	andi	a3,a5,15
    800073dc:	00dd86b3          	add	a3,s11,a3
    800073e0:	0006c583          	lbu	a1,0(a3)
    800073e4:	00f00613          	li	a2,15
    800073e8:	0047d69b          	srliw	a3,a5,0x4
    800073ec:	f8b40123          	sb	a1,-126(s0)
    800073f0:	0047d593          	srli	a1,a5,0x4
    800073f4:	28f67e63          	bgeu	a2,a5,80007690 <__printf+0x608>
    800073f8:	00f6f693          	andi	a3,a3,15
    800073fc:	00dd86b3          	add	a3,s11,a3
    80007400:	0006c503          	lbu	a0,0(a3)
    80007404:	0087d813          	srli	a6,a5,0x8
    80007408:	0087d69b          	srliw	a3,a5,0x8
    8000740c:	f8a401a3          	sb	a0,-125(s0)
    80007410:	28b67663          	bgeu	a2,a1,8000769c <__printf+0x614>
    80007414:	00f6f693          	andi	a3,a3,15
    80007418:	00dd86b3          	add	a3,s11,a3
    8000741c:	0006c583          	lbu	a1,0(a3)
    80007420:	00c7d513          	srli	a0,a5,0xc
    80007424:	00c7d69b          	srliw	a3,a5,0xc
    80007428:	f8b40223          	sb	a1,-124(s0)
    8000742c:	29067a63          	bgeu	a2,a6,800076c0 <__printf+0x638>
    80007430:	00f6f693          	andi	a3,a3,15
    80007434:	00dd86b3          	add	a3,s11,a3
    80007438:	0006c583          	lbu	a1,0(a3)
    8000743c:	0107d813          	srli	a6,a5,0x10
    80007440:	0107d69b          	srliw	a3,a5,0x10
    80007444:	f8b402a3          	sb	a1,-123(s0)
    80007448:	28a67263          	bgeu	a2,a0,800076cc <__printf+0x644>
    8000744c:	00f6f693          	andi	a3,a3,15
    80007450:	00dd86b3          	add	a3,s11,a3
    80007454:	0006c683          	lbu	a3,0(a3)
    80007458:	0147d79b          	srliw	a5,a5,0x14
    8000745c:	f8d40323          	sb	a3,-122(s0)
    80007460:	21067663          	bgeu	a2,a6,8000766c <__printf+0x5e4>
    80007464:	02079793          	slli	a5,a5,0x20
    80007468:	0207d793          	srli	a5,a5,0x20
    8000746c:	00fd8db3          	add	s11,s11,a5
    80007470:	000dc683          	lbu	a3,0(s11)
    80007474:	00800793          	li	a5,8
    80007478:	00700c93          	li	s9,7
    8000747c:	f8d403a3          	sb	a3,-121(s0)
    80007480:	00075c63          	bgez	a4,80007498 <__printf+0x410>
    80007484:	f9040713          	addi	a4,s0,-112
    80007488:	00f70733          	add	a4,a4,a5
    8000748c:	02d00693          	li	a3,45
    80007490:	fed70823          	sb	a3,-16(a4)
    80007494:	00078c93          	mv	s9,a5
    80007498:	f8040793          	addi	a5,s0,-128
    8000749c:	01978cb3          	add	s9,a5,s9
    800074a0:	f7f40d13          	addi	s10,s0,-129
    800074a4:	000cc503          	lbu	a0,0(s9)
    800074a8:	fffc8c93          	addi	s9,s9,-1
    800074ac:	00000097          	auipc	ra,0x0
    800074b0:	9f8080e7          	jalr	-1544(ra) # 80006ea4 <consputc>
    800074b4:	ff9d18e3          	bne	s10,s9,800074a4 <__printf+0x41c>
    800074b8:	0100006f          	j	800074c8 <__printf+0x440>
    800074bc:	00000097          	auipc	ra,0x0
    800074c0:	9e8080e7          	jalr	-1560(ra) # 80006ea4 <consputc>
    800074c4:	000c8493          	mv	s1,s9
    800074c8:	00094503          	lbu	a0,0(s2)
    800074cc:	c60510e3          	bnez	a0,8000712c <__printf+0xa4>
    800074d0:	e40c0ee3          	beqz	s8,8000732c <__printf+0x2a4>
    800074d4:	00005517          	auipc	a0,0x5
    800074d8:	4fc50513          	addi	a0,a0,1276 # 8000c9d0 <pr>
    800074dc:	00001097          	auipc	ra,0x1
    800074e0:	94c080e7          	jalr	-1716(ra) # 80007e28 <release>
    800074e4:	e49ff06f          	j	8000732c <__printf+0x2a4>
    800074e8:	f7843783          	ld	a5,-136(s0)
    800074ec:	03000513          	li	a0,48
    800074f0:	01000d13          	li	s10,16
    800074f4:	00878713          	addi	a4,a5,8
    800074f8:	0007bc83          	ld	s9,0(a5)
    800074fc:	f6e43c23          	sd	a4,-136(s0)
    80007500:	00000097          	auipc	ra,0x0
    80007504:	9a4080e7          	jalr	-1628(ra) # 80006ea4 <consputc>
    80007508:	07800513          	li	a0,120
    8000750c:	00000097          	auipc	ra,0x0
    80007510:	998080e7          	jalr	-1640(ra) # 80006ea4 <consputc>
    80007514:	00002d97          	auipc	s11,0x2
    80007518:	33cd8d93          	addi	s11,s11,828 # 80009850 <digits>
    8000751c:	03ccd793          	srli	a5,s9,0x3c
    80007520:	00fd87b3          	add	a5,s11,a5
    80007524:	0007c503          	lbu	a0,0(a5)
    80007528:	fffd0d1b          	addiw	s10,s10,-1
    8000752c:	004c9c93          	slli	s9,s9,0x4
    80007530:	00000097          	auipc	ra,0x0
    80007534:	974080e7          	jalr	-1676(ra) # 80006ea4 <consputc>
    80007538:	fe0d12e3          	bnez	s10,8000751c <__printf+0x494>
    8000753c:	f8dff06f          	j	800074c8 <__printf+0x440>
    80007540:	f7843783          	ld	a5,-136(s0)
    80007544:	0007bc83          	ld	s9,0(a5)
    80007548:	00878793          	addi	a5,a5,8
    8000754c:	f6f43c23          	sd	a5,-136(s0)
    80007550:	000c9a63          	bnez	s9,80007564 <__printf+0x4dc>
    80007554:	1080006f          	j	8000765c <__printf+0x5d4>
    80007558:	001c8c93          	addi	s9,s9,1
    8000755c:	00000097          	auipc	ra,0x0
    80007560:	948080e7          	jalr	-1720(ra) # 80006ea4 <consputc>
    80007564:	000cc503          	lbu	a0,0(s9)
    80007568:	fe0518e3          	bnez	a0,80007558 <__printf+0x4d0>
    8000756c:	f5dff06f          	j	800074c8 <__printf+0x440>
    80007570:	02500513          	li	a0,37
    80007574:	00000097          	auipc	ra,0x0
    80007578:	930080e7          	jalr	-1744(ra) # 80006ea4 <consputc>
    8000757c:	000c8513          	mv	a0,s9
    80007580:	00000097          	auipc	ra,0x0
    80007584:	924080e7          	jalr	-1756(ra) # 80006ea4 <consputc>
    80007588:	f41ff06f          	j	800074c8 <__printf+0x440>
    8000758c:	02500513          	li	a0,37
    80007590:	00000097          	auipc	ra,0x0
    80007594:	914080e7          	jalr	-1772(ra) # 80006ea4 <consputc>
    80007598:	f31ff06f          	j	800074c8 <__printf+0x440>
    8000759c:	00030513          	mv	a0,t1
    800075a0:	00000097          	auipc	ra,0x0
    800075a4:	7bc080e7          	jalr	1980(ra) # 80007d5c <acquire>
    800075a8:	b4dff06f          	j	800070f4 <__printf+0x6c>
    800075ac:	40c0053b          	negw	a0,a2
    800075b0:	00a00713          	li	a4,10
    800075b4:	02e576bb          	remuw	a3,a0,a4
    800075b8:	00002d97          	auipc	s11,0x2
    800075bc:	298d8d93          	addi	s11,s11,664 # 80009850 <digits>
    800075c0:	ff700593          	li	a1,-9
    800075c4:	02069693          	slli	a3,a3,0x20
    800075c8:	0206d693          	srli	a3,a3,0x20
    800075cc:	00dd86b3          	add	a3,s11,a3
    800075d0:	0006c683          	lbu	a3,0(a3)
    800075d4:	02e557bb          	divuw	a5,a0,a4
    800075d8:	f8d40023          	sb	a3,-128(s0)
    800075dc:	10b65e63          	bge	a2,a1,800076f8 <__printf+0x670>
    800075e0:	06300593          	li	a1,99
    800075e4:	02e7f6bb          	remuw	a3,a5,a4
    800075e8:	02069693          	slli	a3,a3,0x20
    800075ec:	0206d693          	srli	a3,a3,0x20
    800075f0:	00dd86b3          	add	a3,s11,a3
    800075f4:	0006c683          	lbu	a3,0(a3)
    800075f8:	02e7d73b          	divuw	a4,a5,a4
    800075fc:	00200793          	li	a5,2
    80007600:	f8d400a3          	sb	a3,-127(s0)
    80007604:	bca5ece3          	bltu	a1,a0,800071dc <__printf+0x154>
    80007608:	ce5ff06f          	j	800072ec <__printf+0x264>
    8000760c:	40e007bb          	negw	a5,a4
    80007610:	00002d97          	auipc	s11,0x2
    80007614:	240d8d93          	addi	s11,s11,576 # 80009850 <digits>
    80007618:	00f7f693          	andi	a3,a5,15
    8000761c:	00dd86b3          	add	a3,s11,a3
    80007620:	0006c583          	lbu	a1,0(a3)
    80007624:	ff100613          	li	a2,-15
    80007628:	0047d69b          	srliw	a3,a5,0x4
    8000762c:	f8b40023          	sb	a1,-128(s0)
    80007630:	0047d59b          	srliw	a1,a5,0x4
    80007634:	0ac75e63          	bge	a4,a2,800076f0 <__printf+0x668>
    80007638:	00f6f693          	andi	a3,a3,15
    8000763c:	00dd86b3          	add	a3,s11,a3
    80007640:	0006c603          	lbu	a2,0(a3)
    80007644:	00f00693          	li	a3,15
    80007648:	0087d79b          	srliw	a5,a5,0x8
    8000764c:	f8c400a3          	sb	a2,-127(s0)
    80007650:	d8b6e4e3          	bltu	a3,a1,800073d8 <__printf+0x350>
    80007654:	00200793          	li	a5,2
    80007658:	e2dff06f          	j	80007484 <__printf+0x3fc>
    8000765c:	00002c97          	auipc	s9,0x2
    80007660:	1d4c8c93          	addi	s9,s9,468 # 80009830 <CONSOLE_STATUS+0x820>
    80007664:	02800513          	li	a0,40
    80007668:	ef1ff06f          	j	80007558 <__printf+0x4d0>
    8000766c:	00700793          	li	a5,7
    80007670:	00600c93          	li	s9,6
    80007674:	e0dff06f          	j	80007480 <__printf+0x3f8>
    80007678:	00700793          	li	a5,7
    8000767c:	00600c93          	li	s9,6
    80007680:	c69ff06f          	j	800072e8 <__printf+0x260>
    80007684:	00300793          	li	a5,3
    80007688:	00200c93          	li	s9,2
    8000768c:	c5dff06f          	j	800072e8 <__printf+0x260>
    80007690:	00300793          	li	a5,3
    80007694:	00200c93          	li	s9,2
    80007698:	de9ff06f          	j	80007480 <__printf+0x3f8>
    8000769c:	00400793          	li	a5,4
    800076a0:	00300c93          	li	s9,3
    800076a4:	dddff06f          	j	80007480 <__printf+0x3f8>
    800076a8:	00400793          	li	a5,4
    800076ac:	00300c93          	li	s9,3
    800076b0:	c39ff06f          	j	800072e8 <__printf+0x260>
    800076b4:	00500793          	li	a5,5
    800076b8:	00400c93          	li	s9,4
    800076bc:	c2dff06f          	j	800072e8 <__printf+0x260>
    800076c0:	00500793          	li	a5,5
    800076c4:	00400c93          	li	s9,4
    800076c8:	db9ff06f          	j	80007480 <__printf+0x3f8>
    800076cc:	00600793          	li	a5,6
    800076d0:	00500c93          	li	s9,5
    800076d4:	dadff06f          	j	80007480 <__printf+0x3f8>
    800076d8:	00600793          	li	a5,6
    800076dc:	00500c93          	li	s9,5
    800076e0:	c09ff06f          	j	800072e8 <__printf+0x260>
    800076e4:	00800793          	li	a5,8
    800076e8:	00700c93          	li	s9,7
    800076ec:	bfdff06f          	j	800072e8 <__printf+0x260>
    800076f0:	00100793          	li	a5,1
    800076f4:	d91ff06f          	j	80007484 <__printf+0x3fc>
    800076f8:	00100793          	li	a5,1
    800076fc:	bf1ff06f          	j	800072ec <__printf+0x264>
    80007700:	00900793          	li	a5,9
    80007704:	00800c93          	li	s9,8
    80007708:	be1ff06f          	j	800072e8 <__printf+0x260>
    8000770c:	00002517          	auipc	a0,0x2
    80007710:	12c50513          	addi	a0,a0,300 # 80009838 <CONSOLE_STATUS+0x828>
    80007714:	00000097          	auipc	ra,0x0
    80007718:	918080e7          	jalr	-1768(ra) # 8000702c <panic>

000000008000771c <printfinit>:
    8000771c:	fe010113          	addi	sp,sp,-32
    80007720:	00813823          	sd	s0,16(sp)
    80007724:	00913423          	sd	s1,8(sp)
    80007728:	00113c23          	sd	ra,24(sp)
    8000772c:	02010413          	addi	s0,sp,32
    80007730:	00005497          	auipc	s1,0x5
    80007734:	2a048493          	addi	s1,s1,672 # 8000c9d0 <pr>
    80007738:	00048513          	mv	a0,s1
    8000773c:	00002597          	auipc	a1,0x2
    80007740:	10c58593          	addi	a1,a1,268 # 80009848 <CONSOLE_STATUS+0x838>
    80007744:	00000097          	auipc	ra,0x0
    80007748:	5f4080e7          	jalr	1524(ra) # 80007d38 <initlock>
    8000774c:	01813083          	ld	ra,24(sp)
    80007750:	01013403          	ld	s0,16(sp)
    80007754:	0004ac23          	sw	zero,24(s1)
    80007758:	00813483          	ld	s1,8(sp)
    8000775c:	02010113          	addi	sp,sp,32
    80007760:	00008067          	ret

0000000080007764 <uartinit>:
    80007764:	ff010113          	addi	sp,sp,-16
    80007768:	00813423          	sd	s0,8(sp)
    8000776c:	01010413          	addi	s0,sp,16
    80007770:	100007b7          	lui	a5,0x10000
    80007774:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007778:	f8000713          	li	a4,-128
    8000777c:	00e781a3          	sb	a4,3(a5)
    80007780:	00300713          	li	a4,3
    80007784:	00e78023          	sb	a4,0(a5)
    80007788:	000780a3          	sb	zero,1(a5)
    8000778c:	00e781a3          	sb	a4,3(a5)
    80007790:	00700693          	li	a3,7
    80007794:	00d78123          	sb	a3,2(a5)
    80007798:	00e780a3          	sb	a4,1(a5)
    8000779c:	00813403          	ld	s0,8(sp)
    800077a0:	01010113          	addi	sp,sp,16
    800077a4:	00008067          	ret

00000000800077a8 <uartputc>:
    800077a8:	00004797          	auipc	a5,0x4
    800077ac:	f507a783          	lw	a5,-176(a5) # 8000b6f8 <panicked>
    800077b0:	00078463          	beqz	a5,800077b8 <uartputc+0x10>
    800077b4:	0000006f          	j	800077b4 <uartputc+0xc>
    800077b8:	fd010113          	addi	sp,sp,-48
    800077bc:	02813023          	sd	s0,32(sp)
    800077c0:	00913c23          	sd	s1,24(sp)
    800077c4:	01213823          	sd	s2,16(sp)
    800077c8:	01313423          	sd	s3,8(sp)
    800077cc:	02113423          	sd	ra,40(sp)
    800077d0:	03010413          	addi	s0,sp,48
    800077d4:	00004917          	auipc	s2,0x4
    800077d8:	f2c90913          	addi	s2,s2,-212 # 8000b700 <uart_tx_r>
    800077dc:	00093783          	ld	a5,0(s2)
    800077e0:	00004497          	auipc	s1,0x4
    800077e4:	f2848493          	addi	s1,s1,-216 # 8000b708 <uart_tx_w>
    800077e8:	0004b703          	ld	a4,0(s1)
    800077ec:	02078693          	addi	a3,a5,32
    800077f0:	00050993          	mv	s3,a0
    800077f4:	02e69c63          	bne	a3,a4,8000782c <uartputc+0x84>
    800077f8:	00001097          	auipc	ra,0x1
    800077fc:	834080e7          	jalr	-1996(ra) # 8000802c <push_on>
    80007800:	00093783          	ld	a5,0(s2)
    80007804:	0004b703          	ld	a4,0(s1)
    80007808:	02078793          	addi	a5,a5,32
    8000780c:	00e79463          	bne	a5,a4,80007814 <uartputc+0x6c>
    80007810:	0000006f          	j	80007810 <uartputc+0x68>
    80007814:	00001097          	auipc	ra,0x1
    80007818:	88c080e7          	jalr	-1908(ra) # 800080a0 <pop_on>
    8000781c:	00093783          	ld	a5,0(s2)
    80007820:	0004b703          	ld	a4,0(s1)
    80007824:	02078693          	addi	a3,a5,32
    80007828:	fce688e3          	beq	a3,a4,800077f8 <uartputc+0x50>
    8000782c:	01f77693          	andi	a3,a4,31
    80007830:	00005597          	auipc	a1,0x5
    80007834:	1c058593          	addi	a1,a1,448 # 8000c9f0 <uart_tx_buf>
    80007838:	00d586b3          	add	a3,a1,a3
    8000783c:	00170713          	addi	a4,a4,1
    80007840:	01368023          	sb	s3,0(a3)
    80007844:	00e4b023          	sd	a4,0(s1)
    80007848:	10000637          	lui	a2,0x10000
    8000784c:	02f71063          	bne	a4,a5,8000786c <uartputc+0xc4>
    80007850:	0340006f          	j	80007884 <uartputc+0xdc>
    80007854:	00074703          	lbu	a4,0(a4)
    80007858:	00f93023          	sd	a5,0(s2)
    8000785c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007860:	00093783          	ld	a5,0(s2)
    80007864:	0004b703          	ld	a4,0(s1)
    80007868:	00f70e63          	beq	a4,a5,80007884 <uartputc+0xdc>
    8000786c:	00564683          	lbu	a3,5(a2)
    80007870:	01f7f713          	andi	a4,a5,31
    80007874:	00e58733          	add	a4,a1,a4
    80007878:	0206f693          	andi	a3,a3,32
    8000787c:	00178793          	addi	a5,a5,1
    80007880:	fc069ae3          	bnez	a3,80007854 <uartputc+0xac>
    80007884:	02813083          	ld	ra,40(sp)
    80007888:	02013403          	ld	s0,32(sp)
    8000788c:	01813483          	ld	s1,24(sp)
    80007890:	01013903          	ld	s2,16(sp)
    80007894:	00813983          	ld	s3,8(sp)
    80007898:	03010113          	addi	sp,sp,48
    8000789c:	00008067          	ret

00000000800078a0 <uartputc_sync>:
    800078a0:	ff010113          	addi	sp,sp,-16
    800078a4:	00813423          	sd	s0,8(sp)
    800078a8:	01010413          	addi	s0,sp,16
    800078ac:	00004717          	auipc	a4,0x4
    800078b0:	e4c72703          	lw	a4,-436(a4) # 8000b6f8 <panicked>
    800078b4:	02071663          	bnez	a4,800078e0 <uartputc_sync+0x40>
    800078b8:	00050793          	mv	a5,a0
    800078bc:	100006b7          	lui	a3,0x10000
    800078c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800078c4:	02077713          	andi	a4,a4,32
    800078c8:	fe070ce3          	beqz	a4,800078c0 <uartputc_sync+0x20>
    800078cc:	0ff7f793          	andi	a5,a5,255
    800078d0:	00f68023          	sb	a5,0(a3)
    800078d4:	00813403          	ld	s0,8(sp)
    800078d8:	01010113          	addi	sp,sp,16
    800078dc:	00008067          	ret
    800078e0:	0000006f          	j	800078e0 <uartputc_sync+0x40>

00000000800078e4 <uartstart>:
    800078e4:	ff010113          	addi	sp,sp,-16
    800078e8:	00813423          	sd	s0,8(sp)
    800078ec:	01010413          	addi	s0,sp,16
    800078f0:	00004617          	auipc	a2,0x4
    800078f4:	e1060613          	addi	a2,a2,-496 # 8000b700 <uart_tx_r>
    800078f8:	00004517          	auipc	a0,0x4
    800078fc:	e1050513          	addi	a0,a0,-496 # 8000b708 <uart_tx_w>
    80007900:	00063783          	ld	a5,0(a2)
    80007904:	00053703          	ld	a4,0(a0)
    80007908:	04f70263          	beq	a4,a5,8000794c <uartstart+0x68>
    8000790c:	100005b7          	lui	a1,0x10000
    80007910:	00005817          	auipc	a6,0x5
    80007914:	0e080813          	addi	a6,a6,224 # 8000c9f0 <uart_tx_buf>
    80007918:	01c0006f          	j	80007934 <uartstart+0x50>
    8000791c:	0006c703          	lbu	a4,0(a3)
    80007920:	00f63023          	sd	a5,0(a2)
    80007924:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007928:	00063783          	ld	a5,0(a2)
    8000792c:	00053703          	ld	a4,0(a0)
    80007930:	00f70e63          	beq	a4,a5,8000794c <uartstart+0x68>
    80007934:	01f7f713          	andi	a4,a5,31
    80007938:	00e806b3          	add	a3,a6,a4
    8000793c:	0055c703          	lbu	a4,5(a1)
    80007940:	00178793          	addi	a5,a5,1
    80007944:	02077713          	andi	a4,a4,32
    80007948:	fc071ae3          	bnez	a4,8000791c <uartstart+0x38>
    8000794c:	00813403          	ld	s0,8(sp)
    80007950:	01010113          	addi	sp,sp,16
    80007954:	00008067          	ret

0000000080007958 <uartgetc>:
    80007958:	ff010113          	addi	sp,sp,-16
    8000795c:	00813423          	sd	s0,8(sp)
    80007960:	01010413          	addi	s0,sp,16
    80007964:	10000737          	lui	a4,0x10000
    80007968:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000796c:	0017f793          	andi	a5,a5,1
    80007970:	00078c63          	beqz	a5,80007988 <uartgetc+0x30>
    80007974:	00074503          	lbu	a0,0(a4)
    80007978:	0ff57513          	andi	a0,a0,255
    8000797c:	00813403          	ld	s0,8(sp)
    80007980:	01010113          	addi	sp,sp,16
    80007984:	00008067          	ret
    80007988:	fff00513          	li	a0,-1
    8000798c:	ff1ff06f          	j	8000797c <uartgetc+0x24>

0000000080007990 <uartintr>:
    80007990:	100007b7          	lui	a5,0x10000
    80007994:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007998:	0017f793          	andi	a5,a5,1
    8000799c:	0a078463          	beqz	a5,80007a44 <uartintr+0xb4>
    800079a0:	fe010113          	addi	sp,sp,-32
    800079a4:	00813823          	sd	s0,16(sp)
    800079a8:	00913423          	sd	s1,8(sp)
    800079ac:	00113c23          	sd	ra,24(sp)
    800079b0:	02010413          	addi	s0,sp,32
    800079b4:	100004b7          	lui	s1,0x10000
    800079b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800079bc:	0ff57513          	andi	a0,a0,255
    800079c0:	fffff097          	auipc	ra,0xfffff
    800079c4:	534080e7          	jalr	1332(ra) # 80006ef4 <consoleintr>
    800079c8:	0054c783          	lbu	a5,5(s1)
    800079cc:	0017f793          	andi	a5,a5,1
    800079d0:	fe0794e3          	bnez	a5,800079b8 <uartintr+0x28>
    800079d4:	00004617          	auipc	a2,0x4
    800079d8:	d2c60613          	addi	a2,a2,-724 # 8000b700 <uart_tx_r>
    800079dc:	00004517          	auipc	a0,0x4
    800079e0:	d2c50513          	addi	a0,a0,-724 # 8000b708 <uart_tx_w>
    800079e4:	00063783          	ld	a5,0(a2)
    800079e8:	00053703          	ld	a4,0(a0)
    800079ec:	04f70263          	beq	a4,a5,80007a30 <uartintr+0xa0>
    800079f0:	100005b7          	lui	a1,0x10000
    800079f4:	00005817          	auipc	a6,0x5
    800079f8:	ffc80813          	addi	a6,a6,-4 # 8000c9f0 <uart_tx_buf>
    800079fc:	01c0006f          	j	80007a18 <uartintr+0x88>
    80007a00:	0006c703          	lbu	a4,0(a3)
    80007a04:	00f63023          	sd	a5,0(a2)
    80007a08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a0c:	00063783          	ld	a5,0(a2)
    80007a10:	00053703          	ld	a4,0(a0)
    80007a14:	00f70e63          	beq	a4,a5,80007a30 <uartintr+0xa0>
    80007a18:	01f7f713          	andi	a4,a5,31
    80007a1c:	00e806b3          	add	a3,a6,a4
    80007a20:	0055c703          	lbu	a4,5(a1)
    80007a24:	00178793          	addi	a5,a5,1
    80007a28:	02077713          	andi	a4,a4,32
    80007a2c:	fc071ae3          	bnez	a4,80007a00 <uartintr+0x70>
    80007a30:	01813083          	ld	ra,24(sp)
    80007a34:	01013403          	ld	s0,16(sp)
    80007a38:	00813483          	ld	s1,8(sp)
    80007a3c:	02010113          	addi	sp,sp,32
    80007a40:	00008067          	ret
    80007a44:	00004617          	auipc	a2,0x4
    80007a48:	cbc60613          	addi	a2,a2,-836 # 8000b700 <uart_tx_r>
    80007a4c:	00004517          	auipc	a0,0x4
    80007a50:	cbc50513          	addi	a0,a0,-836 # 8000b708 <uart_tx_w>
    80007a54:	00063783          	ld	a5,0(a2)
    80007a58:	00053703          	ld	a4,0(a0)
    80007a5c:	04f70263          	beq	a4,a5,80007aa0 <uartintr+0x110>
    80007a60:	100005b7          	lui	a1,0x10000
    80007a64:	00005817          	auipc	a6,0x5
    80007a68:	f8c80813          	addi	a6,a6,-116 # 8000c9f0 <uart_tx_buf>
    80007a6c:	01c0006f          	j	80007a88 <uartintr+0xf8>
    80007a70:	0006c703          	lbu	a4,0(a3)
    80007a74:	00f63023          	sd	a5,0(a2)
    80007a78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a7c:	00063783          	ld	a5,0(a2)
    80007a80:	00053703          	ld	a4,0(a0)
    80007a84:	02f70063          	beq	a4,a5,80007aa4 <uartintr+0x114>
    80007a88:	01f7f713          	andi	a4,a5,31
    80007a8c:	00e806b3          	add	a3,a6,a4
    80007a90:	0055c703          	lbu	a4,5(a1)
    80007a94:	00178793          	addi	a5,a5,1
    80007a98:	02077713          	andi	a4,a4,32
    80007a9c:	fc071ae3          	bnez	a4,80007a70 <uartintr+0xe0>
    80007aa0:	00008067          	ret
    80007aa4:	00008067          	ret

0000000080007aa8 <kinit>:
    80007aa8:	fc010113          	addi	sp,sp,-64
    80007aac:	02913423          	sd	s1,40(sp)
    80007ab0:	fffff7b7          	lui	a5,0xfffff
    80007ab4:	00006497          	auipc	s1,0x6
    80007ab8:	f5b48493          	addi	s1,s1,-165 # 8000da0f <end+0xfff>
    80007abc:	02813823          	sd	s0,48(sp)
    80007ac0:	01313c23          	sd	s3,24(sp)
    80007ac4:	00f4f4b3          	and	s1,s1,a5
    80007ac8:	02113c23          	sd	ra,56(sp)
    80007acc:	03213023          	sd	s2,32(sp)
    80007ad0:	01413823          	sd	s4,16(sp)
    80007ad4:	01513423          	sd	s5,8(sp)
    80007ad8:	04010413          	addi	s0,sp,64
    80007adc:	000017b7          	lui	a5,0x1
    80007ae0:	01100993          	li	s3,17
    80007ae4:	00f487b3          	add	a5,s1,a5
    80007ae8:	01b99993          	slli	s3,s3,0x1b
    80007aec:	06f9e063          	bltu	s3,a5,80007b4c <kinit+0xa4>
    80007af0:	00005a97          	auipc	s5,0x5
    80007af4:	f20a8a93          	addi	s5,s5,-224 # 8000ca10 <end>
    80007af8:	0754ec63          	bltu	s1,s5,80007b70 <kinit+0xc8>
    80007afc:	0734fa63          	bgeu	s1,s3,80007b70 <kinit+0xc8>
    80007b00:	00088a37          	lui	s4,0x88
    80007b04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b08:	00004917          	auipc	s2,0x4
    80007b0c:	c0890913          	addi	s2,s2,-1016 # 8000b710 <kmem>
    80007b10:	00ca1a13          	slli	s4,s4,0xc
    80007b14:	0140006f          	j	80007b28 <kinit+0x80>
    80007b18:	000017b7          	lui	a5,0x1
    80007b1c:	00f484b3          	add	s1,s1,a5
    80007b20:	0554e863          	bltu	s1,s5,80007b70 <kinit+0xc8>
    80007b24:	0534f663          	bgeu	s1,s3,80007b70 <kinit+0xc8>
    80007b28:	00001637          	lui	a2,0x1
    80007b2c:	00100593          	li	a1,1
    80007b30:	00048513          	mv	a0,s1
    80007b34:	00000097          	auipc	ra,0x0
    80007b38:	5e4080e7          	jalr	1508(ra) # 80008118 <__memset>
    80007b3c:	00093783          	ld	a5,0(s2)
    80007b40:	00f4b023          	sd	a5,0(s1)
    80007b44:	00993023          	sd	s1,0(s2)
    80007b48:	fd4498e3          	bne	s1,s4,80007b18 <kinit+0x70>
    80007b4c:	03813083          	ld	ra,56(sp)
    80007b50:	03013403          	ld	s0,48(sp)
    80007b54:	02813483          	ld	s1,40(sp)
    80007b58:	02013903          	ld	s2,32(sp)
    80007b5c:	01813983          	ld	s3,24(sp)
    80007b60:	01013a03          	ld	s4,16(sp)
    80007b64:	00813a83          	ld	s5,8(sp)
    80007b68:	04010113          	addi	sp,sp,64
    80007b6c:	00008067          	ret
    80007b70:	00002517          	auipc	a0,0x2
    80007b74:	cf850513          	addi	a0,a0,-776 # 80009868 <digits+0x18>
    80007b78:	fffff097          	auipc	ra,0xfffff
    80007b7c:	4b4080e7          	jalr	1204(ra) # 8000702c <panic>

0000000080007b80 <freerange>:
    80007b80:	fc010113          	addi	sp,sp,-64
    80007b84:	000017b7          	lui	a5,0x1
    80007b88:	02913423          	sd	s1,40(sp)
    80007b8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007b90:	009504b3          	add	s1,a0,s1
    80007b94:	fffff537          	lui	a0,0xfffff
    80007b98:	02813823          	sd	s0,48(sp)
    80007b9c:	02113c23          	sd	ra,56(sp)
    80007ba0:	03213023          	sd	s2,32(sp)
    80007ba4:	01313c23          	sd	s3,24(sp)
    80007ba8:	01413823          	sd	s4,16(sp)
    80007bac:	01513423          	sd	s5,8(sp)
    80007bb0:	01613023          	sd	s6,0(sp)
    80007bb4:	04010413          	addi	s0,sp,64
    80007bb8:	00a4f4b3          	and	s1,s1,a0
    80007bbc:	00f487b3          	add	a5,s1,a5
    80007bc0:	06f5e463          	bltu	a1,a5,80007c28 <freerange+0xa8>
    80007bc4:	00005a97          	auipc	s5,0x5
    80007bc8:	e4ca8a93          	addi	s5,s5,-436 # 8000ca10 <end>
    80007bcc:	0954e263          	bltu	s1,s5,80007c50 <freerange+0xd0>
    80007bd0:	01100993          	li	s3,17
    80007bd4:	01b99993          	slli	s3,s3,0x1b
    80007bd8:	0734fc63          	bgeu	s1,s3,80007c50 <freerange+0xd0>
    80007bdc:	00058a13          	mv	s4,a1
    80007be0:	00004917          	auipc	s2,0x4
    80007be4:	b3090913          	addi	s2,s2,-1232 # 8000b710 <kmem>
    80007be8:	00002b37          	lui	s6,0x2
    80007bec:	0140006f          	j	80007c00 <freerange+0x80>
    80007bf0:	000017b7          	lui	a5,0x1
    80007bf4:	00f484b3          	add	s1,s1,a5
    80007bf8:	0554ec63          	bltu	s1,s5,80007c50 <freerange+0xd0>
    80007bfc:	0534fa63          	bgeu	s1,s3,80007c50 <freerange+0xd0>
    80007c00:	00001637          	lui	a2,0x1
    80007c04:	00100593          	li	a1,1
    80007c08:	00048513          	mv	a0,s1
    80007c0c:	00000097          	auipc	ra,0x0
    80007c10:	50c080e7          	jalr	1292(ra) # 80008118 <__memset>
    80007c14:	00093703          	ld	a4,0(s2)
    80007c18:	016487b3          	add	a5,s1,s6
    80007c1c:	00e4b023          	sd	a4,0(s1)
    80007c20:	00993023          	sd	s1,0(s2)
    80007c24:	fcfa76e3          	bgeu	s4,a5,80007bf0 <freerange+0x70>
    80007c28:	03813083          	ld	ra,56(sp)
    80007c2c:	03013403          	ld	s0,48(sp)
    80007c30:	02813483          	ld	s1,40(sp)
    80007c34:	02013903          	ld	s2,32(sp)
    80007c38:	01813983          	ld	s3,24(sp)
    80007c3c:	01013a03          	ld	s4,16(sp)
    80007c40:	00813a83          	ld	s5,8(sp)
    80007c44:	00013b03          	ld	s6,0(sp)
    80007c48:	04010113          	addi	sp,sp,64
    80007c4c:	00008067          	ret
    80007c50:	00002517          	auipc	a0,0x2
    80007c54:	c1850513          	addi	a0,a0,-1000 # 80009868 <digits+0x18>
    80007c58:	fffff097          	auipc	ra,0xfffff
    80007c5c:	3d4080e7          	jalr	980(ra) # 8000702c <panic>

0000000080007c60 <kfree>:
    80007c60:	fe010113          	addi	sp,sp,-32
    80007c64:	00813823          	sd	s0,16(sp)
    80007c68:	00113c23          	sd	ra,24(sp)
    80007c6c:	00913423          	sd	s1,8(sp)
    80007c70:	02010413          	addi	s0,sp,32
    80007c74:	03451793          	slli	a5,a0,0x34
    80007c78:	04079c63          	bnez	a5,80007cd0 <kfree+0x70>
    80007c7c:	00005797          	auipc	a5,0x5
    80007c80:	d9478793          	addi	a5,a5,-620 # 8000ca10 <end>
    80007c84:	00050493          	mv	s1,a0
    80007c88:	04f56463          	bltu	a0,a5,80007cd0 <kfree+0x70>
    80007c8c:	01100793          	li	a5,17
    80007c90:	01b79793          	slli	a5,a5,0x1b
    80007c94:	02f57e63          	bgeu	a0,a5,80007cd0 <kfree+0x70>
    80007c98:	00001637          	lui	a2,0x1
    80007c9c:	00100593          	li	a1,1
    80007ca0:	00000097          	auipc	ra,0x0
    80007ca4:	478080e7          	jalr	1144(ra) # 80008118 <__memset>
    80007ca8:	00004797          	auipc	a5,0x4
    80007cac:	a6878793          	addi	a5,a5,-1432 # 8000b710 <kmem>
    80007cb0:	0007b703          	ld	a4,0(a5)
    80007cb4:	01813083          	ld	ra,24(sp)
    80007cb8:	01013403          	ld	s0,16(sp)
    80007cbc:	00e4b023          	sd	a4,0(s1)
    80007cc0:	0097b023          	sd	s1,0(a5)
    80007cc4:	00813483          	ld	s1,8(sp)
    80007cc8:	02010113          	addi	sp,sp,32
    80007ccc:	00008067          	ret
    80007cd0:	00002517          	auipc	a0,0x2
    80007cd4:	b9850513          	addi	a0,a0,-1128 # 80009868 <digits+0x18>
    80007cd8:	fffff097          	auipc	ra,0xfffff
    80007cdc:	354080e7          	jalr	852(ra) # 8000702c <panic>

0000000080007ce0 <kalloc>:
    80007ce0:	fe010113          	addi	sp,sp,-32
    80007ce4:	00813823          	sd	s0,16(sp)
    80007ce8:	00913423          	sd	s1,8(sp)
    80007cec:	00113c23          	sd	ra,24(sp)
    80007cf0:	02010413          	addi	s0,sp,32
    80007cf4:	00004797          	auipc	a5,0x4
    80007cf8:	a1c78793          	addi	a5,a5,-1508 # 8000b710 <kmem>
    80007cfc:	0007b483          	ld	s1,0(a5)
    80007d00:	02048063          	beqz	s1,80007d20 <kalloc+0x40>
    80007d04:	0004b703          	ld	a4,0(s1)
    80007d08:	00001637          	lui	a2,0x1
    80007d0c:	00500593          	li	a1,5
    80007d10:	00048513          	mv	a0,s1
    80007d14:	00e7b023          	sd	a4,0(a5)
    80007d18:	00000097          	auipc	ra,0x0
    80007d1c:	400080e7          	jalr	1024(ra) # 80008118 <__memset>
    80007d20:	01813083          	ld	ra,24(sp)
    80007d24:	01013403          	ld	s0,16(sp)
    80007d28:	00048513          	mv	a0,s1
    80007d2c:	00813483          	ld	s1,8(sp)
    80007d30:	02010113          	addi	sp,sp,32
    80007d34:	00008067          	ret

0000000080007d38 <initlock>:
    80007d38:	ff010113          	addi	sp,sp,-16
    80007d3c:	00813423          	sd	s0,8(sp)
    80007d40:	01010413          	addi	s0,sp,16
    80007d44:	00813403          	ld	s0,8(sp)
    80007d48:	00b53423          	sd	a1,8(a0)
    80007d4c:	00052023          	sw	zero,0(a0)
    80007d50:	00053823          	sd	zero,16(a0)
    80007d54:	01010113          	addi	sp,sp,16
    80007d58:	00008067          	ret

0000000080007d5c <acquire>:
    80007d5c:	fe010113          	addi	sp,sp,-32
    80007d60:	00813823          	sd	s0,16(sp)
    80007d64:	00913423          	sd	s1,8(sp)
    80007d68:	00113c23          	sd	ra,24(sp)
    80007d6c:	01213023          	sd	s2,0(sp)
    80007d70:	02010413          	addi	s0,sp,32
    80007d74:	00050493          	mv	s1,a0
    80007d78:	10002973          	csrr	s2,sstatus
    80007d7c:	100027f3          	csrr	a5,sstatus
    80007d80:	ffd7f793          	andi	a5,a5,-3
    80007d84:	10079073          	csrw	sstatus,a5
    80007d88:	fffff097          	auipc	ra,0xfffff
    80007d8c:	8ec080e7          	jalr	-1812(ra) # 80006674 <mycpu>
    80007d90:	07852783          	lw	a5,120(a0)
    80007d94:	06078e63          	beqz	a5,80007e10 <acquire+0xb4>
    80007d98:	fffff097          	auipc	ra,0xfffff
    80007d9c:	8dc080e7          	jalr	-1828(ra) # 80006674 <mycpu>
    80007da0:	07852783          	lw	a5,120(a0)
    80007da4:	0004a703          	lw	a4,0(s1)
    80007da8:	0017879b          	addiw	a5,a5,1
    80007dac:	06f52c23          	sw	a5,120(a0)
    80007db0:	04071063          	bnez	a4,80007df0 <acquire+0x94>
    80007db4:	00100713          	li	a4,1
    80007db8:	00070793          	mv	a5,a4
    80007dbc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007dc0:	0007879b          	sext.w	a5,a5
    80007dc4:	fe079ae3          	bnez	a5,80007db8 <acquire+0x5c>
    80007dc8:	0ff0000f          	fence
    80007dcc:	fffff097          	auipc	ra,0xfffff
    80007dd0:	8a8080e7          	jalr	-1880(ra) # 80006674 <mycpu>
    80007dd4:	01813083          	ld	ra,24(sp)
    80007dd8:	01013403          	ld	s0,16(sp)
    80007ddc:	00a4b823          	sd	a0,16(s1)
    80007de0:	00013903          	ld	s2,0(sp)
    80007de4:	00813483          	ld	s1,8(sp)
    80007de8:	02010113          	addi	sp,sp,32
    80007dec:	00008067          	ret
    80007df0:	0104b903          	ld	s2,16(s1)
    80007df4:	fffff097          	auipc	ra,0xfffff
    80007df8:	880080e7          	jalr	-1920(ra) # 80006674 <mycpu>
    80007dfc:	faa91ce3          	bne	s2,a0,80007db4 <acquire+0x58>
    80007e00:	00002517          	auipc	a0,0x2
    80007e04:	a7050513          	addi	a0,a0,-1424 # 80009870 <digits+0x20>
    80007e08:	fffff097          	auipc	ra,0xfffff
    80007e0c:	224080e7          	jalr	548(ra) # 8000702c <panic>
    80007e10:	00195913          	srli	s2,s2,0x1
    80007e14:	fffff097          	auipc	ra,0xfffff
    80007e18:	860080e7          	jalr	-1952(ra) # 80006674 <mycpu>
    80007e1c:	00197913          	andi	s2,s2,1
    80007e20:	07252e23          	sw	s2,124(a0)
    80007e24:	f75ff06f          	j	80007d98 <acquire+0x3c>

0000000080007e28 <release>:
    80007e28:	fe010113          	addi	sp,sp,-32
    80007e2c:	00813823          	sd	s0,16(sp)
    80007e30:	00113c23          	sd	ra,24(sp)
    80007e34:	00913423          	sd	s1,8(sp)
    80007e38:	01213023          	sd	s2,0(sp)
    80007e3c:	02010413          	addi	s0,sp,32
    80007e40:	00052783          	lw	a5,0(a0)
    80007e44:	00079a63          	bnez	a5,80007e58 <release+0x30>
    80007e48:	00002517          	auipc	a0,0x2
    80007e4c:	a3050513          	addi	a0,a0,-1488 # 80009878 <digits+0x28>
    80007e50:	fffff097          	auipc	ra,0xfffff
    80007e54:	1dc080e7          	jalr	476(ra) # 8000702c <panic>
    80007e58:	01053903          	ld	s2,16(a0)
    80007e5c:	00050493          	mv	s1,a0
    80007e60:	fffff097          	auipc	ra,0xfffff
    80007e64:	814080e7          	jalr	-2028(ra) # 80006674 <mycpu>
    80007e68:	fea910e3          	bne	s2,a0,80007e48 <release+0x20>
    80007e6c:	0004b823          	sd	zero,16(s1)
    80007e70:	0ff0000f          	fence
    80007e74:	0f50000f          	fence	iorw,ow
    80007e78:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007e7c:	ffffe097          	auipc	ra,0xffffe
    80007e80:	7f8080e7          	jalr	2040(ra) # 80006674 <mycpu>
    80007e84:	100027f3          	csrr	a5,sstatus
    80007e88:	0027f793          	andi	a5,a5,2
    80007e8c:	04079a63          	bnez	a5,80007ee0 <release+0xb8>
    80007e90:	07852783          	lw	a5,120(a0)
    80007e94:	02f05e63          	blez	a5,80007ed0 <release+0xa8>
    80007e98:	fff7871b          	addiw	a4,a5,-1
    80007e9c:	06e52c23          	sw	a4,120(a0)
    80007ea0:	00071c63          	bnez	a4,80007eb8 <release+0x90>
    80007ea4:	07c52783          	lw	a5,124(a0)
    80007ea8:	00078863          	beqz	a5,80007eb8 <release+0x90>
    80007eac:	100027f3          	csrr	a5,sstatus
    80007eb0:	0027e793          	ori	a5,a5,2
    80007eb4:	10079073          	csrw	sstatus,a5
    80007eb8:	01813083          	ld	ra,24(sp)
    80007ebc:	01013403          	ld	s0,16(sp)
    80007ec0:	00813483          	ld	s1,8(sp)
    80007ec4:	00013903          	ld	s2,0(sp)
    80007ec8:	02010113          	addi	sp,sp,32
    80007ecc:	00008067          	ret
    80007ed0:	00002517          	auipc	a0,0x2
    80007ed4:	9c850513          	addi	a0,a0,-1592 # 80009898 <digits+0x48>
    80007ed8:	fffff097          	auipc	ra,0xfffff
    80007edc:	154080e7          	jalr	340(ra) # 8000702c <panic>
    80007ee0:	00002517          	auipc	a0,0x2
    80007ee4:	9a050513          	addi	a0,a0,-1632 # 80009880 <digits+0x30>
    80007ee8:	fffff097          	auipc	ra,0xfffff
    80007eec:	144080e7          	jalr	324(ra) # 8000702c <panic>

0000000080007ef0 <holding>:
    80007ef0:	00052783          	lw	a5,0(a0)
    80007ef4:	00079663          	bnez	a5,80007f00 <holding+0x10>
    80007ef8:	00000513          	li	a0,0
    80007efc:	00008067          	ret
    80007f00:	fe010113          	addi	sp,sp,-32
    80007f04:	00813823          	sd	s0,16(sp)
    80007f08:	00913423          	sd	s1,8(sp)
    80007f0c:	00113c23          	sd	ra,24(sp)
    80007f10:	02010413          	addi	s0,sp,32
    80007f14:	01053483          	ld	s1,16(a0)
    80007f18:	ffffe097          	auipc	ra,0xffffe
    80007f1c:	75c080e7          	jalr	1884(ra) # 80006674 <mycpu>
    80007f20:	01813083          	ld	ra,24(sp)
    80007f24:	01013403          	ld	s0,16(sp)
    80007f28:	40a48533          	sub	a0,s1,a0
    80007f2c:	00153513          	seqz	a0,a0
    80007f30:	00813483          	ld	s1,8(sp)
    80007f34:	02010113          	addi	sp,sp,32
    80007f38:	00008067          	ret

0000000080007f3c <push_off>:
    80007f3c:	fe010113          	addi	sp,sp,-32
    80007f40:	00813823          	sd	s0,16(sp)
    80007f44:	00113c23          	sd	ra,24(sp)
    80007f48:	00913423          	sd	s1,8(sp)
    80007f4c:	02010413          	addi	s0,sp,32
    80007f50:	100024f3          	csrr	s1,sstatus
    80007f54:	100027f3          	csrr	a5,sstatus
    80007f58:	ffd7f793          	andi	a5,a5,-3
    80007f5c:	10079073          	csrw	sstatus,a5
    80007f60:	ffffe097          	auipc	ra,0xffffe
    80007f64:	714080e7          	jalr	1812(ra) # 80006674 <mycpu>
    80007f68:	07852783          	lw	a5,120(a0)
    80007f6c:	02078663          	beqz	a5,80007f98 <push_off+0x5c>
    80007f70:	ffffe097          	auipc	ra,0xffffe
    80007f74:	704080e7          	jalr	1796(ra) # 80006674 <mycpu>
    80007f78:	07852783          	lw	a5,120(a0)
    80007f7c:	01813083          	ld	ra,24(sp)
    80007f80:	01013403          	ld	s0,16(sp)
    80007f84:	0017879b          	addiw	a5,a5,1
    80007f88:	06f52c23          	sw	a5,120(a0)
    80007f8c:	00813483          	ld	s1,8(sp)
    80007f90:	02010113          	addi	sp,sp,32
    80007f94:	00008067          	ret
    80007f98:	0014d493          	srli	s1,s1,0x1
    80007f9c:	ffffe097          	auipc	ra,0xffffe
    80007fa0:	6d8080e7          	jalr	1752(ra) # 80006674 <mycpu>
    80007fa4:	0014f493          	andi	s1,s1,1
    80007fa8:	06952e23          	sw	s1,124(a0)
    80007fac:	fc5ff06f          	j	80007f70 <push_off+0x34>

0000000080007fb0 <pop_off>:
    80007fb0:	ff010113          	addi	sp,sp,-16
    80007fb4:	00813023          	sd	s0,0(sp)
    80007fb8:	00113423          	sd	ra,8(sp)
    80007fbc:	01010413          	addi	s0,sp,16
    80007fc0:	ffffe097          	auipc	ra,0xffffe
    80007fc4:	6b4080e7          	jalr	1716(ra) # 80006674 <mycpu>
    80007fc8:	100027f3          	csrr	a5,sstatus
    80007fcc:	0027f793          	andi	a5,a5,2
    80007fd0:	04079663          	bnez	a5,8000801c <pop_off+0x6c>
    80007fd4:	07852783          	lw	a5,120(a0)
    80007fd8:	02f05a63          	blez	a5,8000800c <pop_off+0x5c>
    80007fdc:	fff7871b          	addiw	a4,a5,-1
    80007fe0:	06e52c23          	sw	a4,120(a0)
    80007fe4:	00071c63          	bnez	a4,80007ffc <pop_off+0x4c>
    80007fe8:	07c52783          	lw	a5,124(a0)
    80007fec:	00078863          	beqz	a5,80007ffc <pop_off+0x4c>
    80007ff0:	100027f3          	csrr	a5,sstatus
    80007ff4:	0027e793          	ori	a5,a5,2
    80007ff8:	10079073          	csrw	sstatus,a5
    80007ffc:	00813083          	ld	ra,8(sp)
    80008000:	00013403          	ld	s0,0(sp)
    80008004:	01010113          	addi	sp,sp,16
    80008008:	00008067          	ret
    8000800c:	00002517          	auipc	a0,0x2
    80008010:	88c50513          	addi	a0,a0,-1908 # 80009898 <digits+0x48>
    80008014:	fffff097          	auipc	ra,0xfffff
    80008018:	018080e7          	jalr	24(ra) # 8000702c <panic>
    8000801c:	00002517          	auipc	a0,0x2
    80008020:	86450513          	addi	a0,a0,-1948 # 80009880 <digits+0x30>
    80008024:	fffff097          	auipc	ra,0xfffff
    80008028:	008080e7          	jalr	8(ra) # 8000702c <panic>

000000008000802c <push_on>:
    8000802c:	fe010113          	addi	sp,sp,-32
    80008030:	00813823          	sd	s0,16(sp)
    80008034:	00113c23          	sd	ra,24(sp)
    80008038:	00913423          	sd	s1,8(sp)
    8000803c:	02010413          	addi	s0,sp,32
    80008040:	100024f3          	csrr	s1,sstatus
    80008044:	100027f3          	csrr	a5,sstatus
    80008048:	0027e793          	ori	a5,a5,2
    8000804c:	10079073          	csrw	sstatus,a5
    80008050:	ffffe097          	auipc	ra,0xffffe
    80008054:	624080e7          	jalr	1572(ra) # 80006674 <mycpu>
    80008058:	07852783          	lw	a5,120(a0)
    8000805c:	02078663          	beqz	a5,80008088 <push_on+0x5c>
    80008060:	ffffe097          	auipc	ra,0xffffe
    80008064:	614080e7          	jalr	1556(ra) # 80006674 <mycpu>
    80008068:	07852783          	lw	a5,120(a0)
    8000806c:	01813083          	ld	ra,24(sp)
    80008070:	01013403          	ld	s0,16(sp)
    80008074:	0017879b          	addiw	a5,a5,1
    80008078:	06f52c23          	sw	a5,120(a0)
    8000807c:	00813483          	ld	s1,8(sp)
    80008080:	02010113          	addi	sp,sp,32
    80008084:	00008067          	ret
    80008088:	0014d493          	srli	s1,s1,0x1
    8000808c:	ffffe097          	auipc	ra,0xffffe
    80008090:	5e8080e7          	jalr	1512(ra) # 80006674 <mycpu>
    80008094:	0014f493          	andi	s1,s1,1
    80008098:	06952e23          	sw	s1,124(a0)
    8000809c:	fc5ff06f          	j	80008060 <push_on+0x34>

00000000800080a0 <pop_on>:
    800080a0:	ff010113          	addi	sp,sp,-16
    800080a4:	00813023          	sd	s0,0(sp)
    800080a8:	00113423          	sd	ra,8(sp)
    800080ac:	01010413          	addi	s0,sp,16
    800080b0:	ffffe097          	auipc	ra,0xffffe
    800080b4:	5c4080e7          	jalr	1476(ra) # 80006674 <mycpu>
    800080b8:	100027f3          	csrr	a5,sstatus
    800080bc:	0027f793          	andi	a5,a5,2
    800080c0:	04078463          	beqz	a5,80008108 <pop_on+0x68>
    800080c4:	07852783          	lw	a5,120(a0)
    800080c8:	02f05863          	blez	a5,800080f8 <pop_on+0x58>
    800080cc:	fff7879b          	addiw	a5,a5,-1
    800080d0:	06f52c23          	sw	a5,120(a0)
    800080d4:	07853783          	ld	a5,120(a0)
    800080d8:	00079863          	bnez	a5,800080e8 <pop_on+0x48>
    800080dc:	100027f3          	csrr	a5,sstatus
    800080e0:	ffd7f793          	andi	a5,a5,-3
    800080e4:	10079073          	csrw	sstatus,a5
    800080e8:	00813083          	ld	ra,8(sp)
    800080ec:	00013403          	ld	s0,0(sp)
    800080f0:	01010113          	addi	sp,sp,16
    800080f4:	00008067          	ret
    800080f8:	00001517          	auipc	a0,0x1
    800080fc:	7c850513          	addi	a0,a0,1992 # 800098c0 <digits+0x70>
    80008100:	fffff097          	auipc	ra,0xfffff
    80008104:	f2c080e7          	jalr	-212(ra) # 8000702c <panic>
    80008108:	00001517          	auipc	a0,0x1
    8000810c:	79850513          	addi	a0,a0,1944 # 800098a0 <digits+0x50>
    80008110:	fffff097          	auipc	ra,0xfffff
    80008114:	f1c080e7          	jalr	-228(ra) # 8000702c <panic>

0000000080008118 <__memset>:
    80008118:	ff010113          	addi	sp,sp,-16
    8000811c:	00813423          	sd	s0,8(sp)
    80008120:	01010413          	addi	s0,sp,16
    80008124:	1a060e63          	beqz	a2,800082e0 <__memset+0x1c8>
    80008128:	40a007b3          	neg	a5,a0
    8000812c:	0077f793          	andi	a5,a5,7
    80008130:	00778693          	addi	a3,a5,7
    80008134:	00b00813          	li	a6,11
    80008138:	0ff5f593          	andi	a1,a1,255
    8000813c:	fff6071b          	addiw	a4,a2,-1
    80008140:	1b06e663          	bltu	a3,a6,800082ec <__memset+0x1d4>
    80008144:	1cd76463          	bltu	a4,a3,8000830c <__memset+0x1f4>
    80008148:	1a078e63          	beqz	a5,80008304 <__memset+0x1ec>
    8000814c:	00b50023          	sb	a1,0(a0)
    80008150:	00100713          	li	a4,1
    80008154:	1ae78463          	beq	a5,a4,800082fc <__memset+0x1e4>
    80008158:	00b500a3          	sb	a1,1(a0)
    8000815c:	00200713          	li	a4,2
    80008160:	1ae78a63          	beq	a5,a4,80008314 <__memset+0x1fc>
    80008164:	00b50123          	sb	a1,2(a0)
    80008168:	00300713          	li	a4,3
    8000816c:	18e78463          	beq	a5,a4,800082f4 <__memset+0x1dc>
    80008170:	00b501a3          	sb	a1,3(a0)
    80008174:	00400713          	li	a4,4
    80008178:	1ae78263          	beq	a5,a4,8000831c <__memset+0x204>
    8000817c:	00b50223          	sb	a1,4(a0)
    80008180:	00500713          	li	a4,5
    80008184:	1ae78063          	beq	a5,a4,80008324 <__memset+0x20c>
    80008188:	00b502a3          	sb	a1,5(a0)
    8000818c:	00700713          	li	a4,7
    80008190:	18e79e63          	bne	a5,a4,8000832c <__memset+0x214>
    80008194:	00b50323          	sb	a1,6(a0)
    80008198:	00700e93          	li	t4,7
    8000819c:	00859713          	slli	a4,a1,0x8
    800081a0:	00e5e733          	or	a4,a1,a4
    800081a4:	01059e13          	slli	t3,a1,0x10
    800081a8:	01c76e33          	or	t3,a4,t3
    800081ac:	01859313          	slli	t1,a1,0x18
    800081b0:	006e6333          	or	t1,t3,t1
    800081b4:	02059893          	slli	a7,a1,0x20
    800081b8:	40f60e3b          	subw	t3,a2,a5
    800081bc:	011368b3          	or	a7,t1,a7
    800081c0:	02859813          	slli	a6,a1,0x28
    800081c4:	0108e833          	or	a6,a7,a6
    800081c8:	03059693          	slli	a3,a1,0x30
    800081cc:	003e589b          	srliw	a7,t3,0x3
    800081d0:	00d866b3          	or	a3,a6,a3
    800081d4:	03859713          	slli	a4,a1,0x38
    800081d8:	00389813          	slli	a6,a7,0x3
    800081dc:	00f507b3          	add	a5,a0,a5
    800081e0:	00e6e733          	or	a4,a3,a4
    800081e4:	000e089b          	sext.w	a7,t3
    800081e8:	00f806b3          	add	a3,a6,a5
    800081ec:	00e7b023          	sd	a4,0(a5)
    800081f0:	00878793          	addi	a5,a5,8
    800081f4:	fed79ce3          	bne	a5,a3,800081ec <__memset+0xd4>
    800081f8:	ff8e7793          	andi	a5,t3,-8
    800081fc:	0007871b          	sext.w	a4,a5
    80008200:	01d787bb          	addw	a5,a5,t4
    80008204:	0ce88e63          	beq	a7,a4,800082e0 <__memset+0x1c8>
    80008208:	00f50733          	add	a4,a0,a5
    8000820c:	00b70023          	sb	a1,0(a4)
    80008210:	0017871b          	addiw	a4,a5,1
    80008214:	0cc77663          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008218:	00e50733          	add	a4,a0,a4
    8000821c:	00b70023          	sb	a1,0(a4)
    80008220:	0027871b          	addiw	a4,a5,2
    80008224:	0ac77e63          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008228:	00e50733          	add	a4,a0,a4
    8000822c:	00b70023          	sb	a1,0(a4)
    80008230:	0037871b          	addiw	a4,a5,3
    80008234:	0ac77663          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008238:	00e50733          	add	a4,a0,a4
    8000823c:	00b70023          	sb	a1,0(a4)
    80008240:	0047871b          	addiw	a4,a5,4
    80008244:	08c77e63          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008248:	00e50733          	add	a4,a0,a4
    8000824c:	00b70023          	sb	a1,0(a4)
    80008250:	0057871b          	addiw	a4,a5,5
    80008254:	08c77663          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008258:	00e50733          	add	a4,a0,a4
    8000825c:	00b70023          	sb	a1,0(a4)
    80008260:	0067871b          	addiw	a4,a5,6
    80008264:	06c77e63          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008268:	00e50733          	add	a4,a0,a4
    8000826c:	00b70023          	sb	a1,0(a4)
    80008270:	0077871b          	addiw	a4,a5,7
    80008274:	06c77663          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008278:	00e50733          	add	a4,a0,a4
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	0087871b          	addiw	a4,a5,8
    80008284:	04c77e63          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0097871b          	addiw	a4,a5,9
    80008294:	04c77663          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	00a7871b          	addiw	a4,a5,10
    800082a4:	02c77e63          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	00b7871b          	addiw	a4,a5,11
    800082b4:	02c77663          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	00c7871b          	addiw	a4,a5,12
    800082c4:	00c77e63          	bgeu	a4,a2,800082e0 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	00d7879b          	addiw	a5,a5,13
    800082d4:	00c7f663          	bgeu	a5,a2,800082e0 <__memset+0x1c8>
    800082d8:	00f507b3          	add	a5,a0,a5
    800082dc:	00b78023          	sb	a1,0(a5)
    800082e0:	00813403          	ld	s0,8(sp)
    800082e4:	01010113          	addi	sp,sp,16
    800082e8:	00008067          	ret
    800082ec:	00b00693          	li	a3,11
    800082f0:	e55ff06f          	j	80008144 <__memset+0x2c>
    800082f4:	00300e93          	li	t4,3
    800082f8:	ea5ff06f          	j	8000819c <__memset+0x84>
    800082fc:	00100e93          	li	t4,1
    80008300:	e9dff06f          	j	8000819c <__memset+0x84>
    80008304:	00000e93          	li	t4,0
    80008308:	e95ff06f          	j	8000819c <__memset+0x84>
    8000830c:	00000793          	li	a5,0
    80008310:	ef9ff06f          	j	80008208 <__memset+0xf0>
    80008314:	00200e93          	li	t4,2
    80008318:	e85ff06f          	j	8000819c <__memset+0x84>
    8000831c:	00400e93          	li	t4,4
    80008320:	e7dff06f          	j	8000819c <__memset+0x84>
    80008324:	00500e93          	li	t4,5
    80008328:	e75ff06f          	j	8000819c <__memset+0x84>
    8000832c:	00600e93          	li	t4,6
    80008330:	e6dff06f          	j	8000819c <__memset+0x84>

0000000080008334 <__memmove>:
    80008334:	ff010113          	addi	sp,sp,-16
    80008338:	00813423          	sd	s0,8(sp)
    8000833c:	01010413          	addi	s0,sp,16
    80008340:	0e060863          	beqz	a2,80008430 <__memmove+0xfc>
    80008344:	fff6069b          	addiw	a3,a2,-1
    80008348:	0006881b          	sext.w	a6,a3
    8000834c:	0ea5e863          	bltu	a1,a0,8000843c <__memmove+0x108>
    80008350:	00758713          	addi	a4,a1,7
    80008354:	00a5e7b3          	or	a5,a1,a0
    80008358:	40a70733          	sub	a4,a4,a0
    8000835c:	0077f793          	andi	a5,a5,7
    80008360:	00f73713          	sltiu	a4,a4,15
    80008364:	00174713          	xori	a4,a4,1
    80008368:	0017b793          	seqz	a5,a5
    8000836c:	00e7f7b3          	and	a5,a5,a4
    80008370:	10078863          	beqz	a5,80008480 <__memmove+0x14c>
    80008374:	00900793          	li	a5,9
    80008378:	1107f463          	bgeu	a5,a6,80008480 <__memmove+0x14c>
    8000837c:	0036581b          	srliw	a6,a2,0x3
    80008380:	fff8081b          	addiw	a6,a6,-1
    80008384:	02081813          	slli	a6,a6,0x20
    80008388:	01d85893          	srli	a7,a6,0x1d
    8000838c:	00858813          	addi	a6,a1,8
    80008390:	00058793          	mv	a5,a1
    80008394:	00050713          	mv	a4,a0
    80008398:	01088833          	add	a6,a7,a6
    8000839c:	0007b883          	ld	a7,0(a5)
    800083a0:	00878793          	addi	a5,a5,8
    800083a4:	00870713          	addi	a4,a4,8
    800083a8:	ff173c23          	sd	a7,-8(a4)
    800083ac:	ff0798e3          	bne	a5,a6,8000839c <__memmove+0x68>
    800083b0:	ff867713          	andi	a4,a2,-8
    800083b4:	02071793          	slli	a5,a4,0x20
    800083b8:	0207d793          	srli	a5,a5,0x20
    800083bc:	00f585b3          	add	a1,a1,a5
    800083c0:	40e686bb          	subw	a3,a3,a4
    800083c4:	00f507b3          	add	a5,a0,a5
    800083c8:	06e60463          	beq	a2,a4,80008430 <__memmove+0xfc>
    800083cc:	0005c703          	lbu	a4,0(a1)
    800083d0:	00e78023          	sb	a4,0(a5)
    800083d4:	04068e63          	beqz	a3,80008430 <__memmove+0xfc>
    800083d8:	0015c603          	lbu	a2,1(a1)
    800083dc:	00100713          	li	a4,1
    800083e0:	00c780a3          	sb	a2,1(a5)
    800083e4:	04e68663          	beq	a3,a4,80008430 <__memmove+0xfc>
    800083e8:	0025c603          	lbu	a2,2(a1)
    800083ec:	00200713          	li	a4,2
    800083f0:	00c78123          	sb	a2,2(a5)
    800083f4:	02e68e63          	beq	a3,a4,80008430 <__memmove+0xfc>
    800083f8:	0035c603          	lbu	a2,3(a1)
    800083fc:	00300713          	li	a4,3
    80008400:	00c781a3          	sb	a2,3(a5)
    80008404:	02e68663          	beq	a3,a4,80008430 <__memmove+0xfc>
    80008408:	0045c603          	lbu	a2,4(a1)
    8000840c:	00400713          	li	a4,4
    80008410:	00c78223          	sb	a2,4(a5)
    80008414:	00e68e63          	beq	a3,a4,80008430 <__memmove+0xfc>
    80008418:	0055c603          	lbu	a2,5(a1)
    8000841c:	00500713          	li	a4,5
    80008420:	00c782a3          	sb	a2,5(a5)
    80008424:	00e68663          	beq	a3,a4,80008430 <__memmove+0xfc>
    80008428:	0065c703          	lbu	a4,6(a1)
    8000842c:	00e78323          	sb	a4,6(a5)
    80008430:	00813403          	ld	s0,8(sp)
    80008434:	01010113          	addi	sp,sp,16
    80008438:	00008067          	ret
    8000843c:	02061713          	slli	a4,a2,0x20
    80008440:	02075713          	srli	a4,a4,0x20
    80008444:	00e587b3          	add	a5,a1,a4
    80008448:	f0f574e3          	bgeu	a0,a5,80008350 <__memmove+0x1c>
    8000844c:	02069613          	slli	a2,a3,0x20
    80008450:	02065613          	srli	a2,a2,0x20
    80008454:	fff64613          	not	a2,a2
    80008458:	00e50733          	add	a4,a0,a4
    8000845c:	00c78633          	add	a2,a5,a2
    80008460:	fff7c683          	lbu	a3,-1(a5)
    80008464:	fff78793          	addi	a5,a5,-1
    80008468:	fff70713          	addi	a4,a4,-1
    8000846c:	00d70023          	sb	a3,0(a4)
    80008470:	fec798e3          	bne	a5,a2,80008460 <__memmove+0x12c>
    80008474:	00813403          	ld	s0,8(sp)
    80008478:	01010113          	addi	sp,sp,16
    8000847c:	00008067          	ret
    80008480:	02069713          	slli	a4,a3,0x20
    80008484:	02075713          	srli	a4,a4,0x20
    80008488:	00170713          	addi	a4,a4,1
    8000848c:	00e50733          	add	a4,a0,a4
    80008490:	00050793          	mv	a5,a0
    80008494:	0005c683          	lbu	a3,0(a1)
    80008498:	00178793          	addi	a5,a5,1
    8000849c:	00158593          	addi	a1,a1,1
    800084a0:	fed78fa3          	sb	a3,-1(a5)
    800084a4:	fee798e3          	bne	a5,a4,80008494 <__memmove+0x160>
    800084a8:	f89ff06f          	j	80008430 <__memmove+0xfc>

00000000800084ac <__putc>:
    800084ac:	fe010113          	addi	sp,sp,-32
    800084b0:	00813823          	sd	s0,16(sp)
    800084b4:	00113c23          	sd	ra,24(sp)
    800084b8:	02010413          	addi	s0,sp,32
    800084bc:	00050793          	mv	a5,a0
    800084c0:	fef40593          	addi	a1,s0,-17
    800084c4:	00100613          	li	a2,1
    800084c8:	00000513          	li	a0,0
    800084cc:	fef407a3          	sb	a5,-17(s0)
    800084d0:	fffff097          	auipc	ra,0xfffff
    800084d4:	b3c080e7          	jalr	-1220(ra) # 8000700c <console_write>
    800084d8:	01813083          	ld	ra,24(sp)
    800084dc:	01013403          	ld	s0,16(sp)
    800084e0:	02010113          	addi	sp,sp,32
    800084e4:	00008067          	ret

00000000800084e8 <__getc>:
    800084e8:	fe010113          	addi	sp,sp,-32
    800084ec:	00813823          	sd	s0,16(sp)
    800084f0:	00113c23          	sd	ra,24(sp)
    800084f4:	02010413          	addi	s0,sp,32
    800084f8:	fe840593          	addi	a1,s0,-24
    800084fc:	00100613          	li	a2,1
    80008500:	00000513          	li	a0,0
    80008504:	fffff097          	auipc	ra,0xfffff
    80008508:	ae8080e7          	jalr	-1304(ra) # 80006fec <console_read>
    8000850c:	fe844503          	lbu	a0,-24(s0)
    80008510:	01813083          	ld	ra,24(sp)
    80008514:	01013403          	ld	s0,16(sp)
    80008518:	02010113          	addi	sp,sp,32
    8000851c:	00008067          	ret

0000000080008520 <console_handler>:
    80008520:	fe010113          	addi	sp,sp,-32
    80008524:	00813823          	sd	s0,16(sp)
    80008528:	00113c23          	sd	ra,24(sp)
    8000852c:	00913423          	sd	s1,8(sp)
    80008530:	02010413          	addi	s0,sp,32
    80008534:	14202773          	csrr	a4,scause
    80008538:	100027f3          	csrr	a5,sstatus
    8000853c:	0027f793          	andi	a5,a5,2
    80008540:	06079e63          	bnez	a5,800085bc <console_handler+0x9c>
    80008544:	00074c63          	bltz	a4,8000855c <console_handler+0x3c>
    80008548:	01813083          	ld	ra,24(sp)
    8000854c:	01013403          	ld	s0,16(sp)
    80008550:	00813483          	ld	s1,8(sp)
    80008554:	02010113          	addi	sp,sp,32
    80008558:	00008067          	ret
    8000855c:	0ff77713          	andi	a4,a4,255
    80008560:	00900793          	li	a5,9
    80008564:	fef712e3          	bne	a4,a5,80008548 <console_handler+0x28>
    80008568:	ffffe097          	auipc	ra,0xffffe
    8000856c:	6dc080e7          	jalr	1756(ra) # 80006c44 <plic_claim>
    80008570:	00a00793          	li	a5,10
    80008574:	00050493          	mv	s1,a0
    80008578:	02f50c63          	beq	a0,a5,800085b0 <console_handler+0x90>
    8000857c:	fc0506e3          	beqz	a0,80008548 <console_handler+0x28>
    80008580:	00050593          	mv	a1,a0
    80008584:	00001517          	auipc	a0,0x1
    80008588:	24450513          	addi	a0,a0,580 # 800097c8 <CONSOLE_STATUS+0x7b8>
    8000858c:	fffff097          	auipc	ra,0xfffff
    80008590:	afc080e7          	jalr	-1284(ra) # 80007088 <__printf>
    80008594:	01013403          	ld	s0,16(sp)
    80008598:	01813083          	ld	ra,24(sp)
    8000859c:	00048513          	mv	a0,s1
    800085a0:	00813483          	ld	s1,8(sp)
    800085a4:	02010113          	addi	sp,sp,32
    800085a8:	ffffe317          	auipc	t1,0xffffe
    800085ac:	6d430067          	jr	1748(t1) # 80006c7c <plic_complete>
    800085b0:	fffff097          	auipc	ra,0xfffff
    800085b4:	3e0080e7          	jalr	992(ra) # 80007990 <uartintr>
    800085b8:	fddff06f          	j	80008594 <console_handler+0x74>
    800085bc:	00001517          	auipc	a0,0x1
    800085c0:	30c50513          	addi	a0,a0,780 # 800098c8 <digits+0x78>
    800085c4:	fffff097          	auipc	ra,0xfffff
    800085c8:	a68080e7          	jalr	-1432(ra) # 8000702c <panic>
	...

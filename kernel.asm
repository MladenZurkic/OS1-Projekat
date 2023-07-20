
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	ca013103          	ld	sp,-864(sp) # 80005ca0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	658020ef          	jal	ra,80002674 <start>

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
    80001084:	168010ef          	jal	ra,800021ec <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011e0:	00c010ef          	jal	ra,800021ec <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012f0:	0f0010ef          	jal	ra,800023e0 <_ZN5Riscv20handleTimerInterruptEv>

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
    80001400:	7b9000ef          	jal	ra,800023b8 <_ZN5Riscv22handleConsoleInterruptEv>

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

0000000080001498 <_Z13thread_createPP3TCBPFvPvES2_>:
//    __asm__ volatile("ecall");
//}



int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    80001498:	ff010113          	addi	sp,sp,-16
    8000149c:	00813423          	sd	s0,8(sp)
    800014a0:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a3, %0" : : "r"(arg));
    800014a4:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    800014a8:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    800014ac:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x11");
    800014b0:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    800014b4:	00000073          	ecall

    uint64 returnValue; //bio je uint64 ali vrednosti mogu da budu i negativne
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800014b8:	00050513          	mv	a0,a0
    //if(returnValue == (uint32)4294967295) { //maxint
      //  return -1;
    //} //Ne mora izgleda da se ovo radi
    return (int)returnValue;
}
    800014bc:	0005051b          	sext.w	a0,a0
    800014c0:	00813403          	ld	s0,8(sp)
    800014c4:	01010113          	addi	sp,sp,16
    800014c8:	00008067          	ret

00000000800014cc <_Z11thread_exitv>:

int thread_exit() {
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00813423          	sd	s0,8(sp)
    800014d4:	01010413          	addi	s0,sp,16
    return a0;
}


inline void Riscv::w_a0(uint64 writeValue) {
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    800014d8:	01200793          	li	a5,18
    800014dc:	00078513          	mv	a0,a5
    Riscv::w_a0(0x12);
    __asm__ volatile ("ecall");
    800014e0:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800014e4:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800014e8:	0005051b          	sext.w	a0,a0
    800014ec:	00813403          	ld	s0,8(sp)
    800014f0:	01010113          	addi	sp,sp,16
    800014f4:	00008067          	ret

00000000800014f8 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800014f8:	ff010113          	addi	sp,sp,-16
    800014fc:	00813423          	sd	s0,8(sp)
    80001500:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001504:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    80001508:	00000073          	ecall

}
    8000150c:	00813403          	ld	s0,8(sp)
    80001510:	01010113          	addi	sp,sp,16
    80001514:	00008067          	ret

0000000080001518 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    80001518:	ff010113          	addi	sp,sp,-16
    8000151c:	00813423          	sd	s0,8(sp)
    80001520:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001524:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x14");
    80001528:	01400513          	li	a0,20
    __asm__ volatile ("ecall");
    8000152c:	00000073          	ecall
}
    80001530:	00813403          	ld	s0,8(sp)
    80001534:	01010113          	addi	sp,sp,16
    80001538:	00008067          	ret

000000008000153c <_Z8sem_openPP11MySemaphorej>:


int sem_open(sem_t* handle, unsigned init) {
    8000153c:	ff010113          	addi	sp,sp,-16
    80001540:	00813423          	sd	s0,8(sp)
    80001544:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    80001548:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    8000154c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001550:	02100513          	li	a0,33
    __asm__ volatile ("ecall");
    80001554:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001558:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    8000155c:	0005051b          	sext.w	a0,a0
    80001560:	00813403          	ld	s0,8(sp)
    80001564:	01010113          	addi	sp,sp,16
    80001568:	00008067          	ret

000000008000156c <_Z9sem_closeP11MySemaphore>:

int sem_close(sem_t handle) {
    8000156c:	ff010113          	addi	sp,sp,-16
    80001570:	00813423          	sd	s0,8(sp)
    80001574:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001578:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    8000157c:	02200513          	li	a0,34
    __asm__ volatile ("ecall");
    80001580:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001584:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001588:	0005051b          	sext.w	a0,a0
    8000158c:	00813403          	ld	s0,8(sp)
    80001590:	01010113          	addi	sp,sp,16
    80001594:	00008067          	ret

0000000080001598 <_Z8sem_waitP11MySemaphore>:

int sem_wait(sem_t id) {
    80001598:	ff010113          	addi	sp,sp,-16
    8000159c:	00813423          	sd	s0,8(sp)
    800015a0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800015a4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800015a8:	02300513          	li	a0,35
    __asm__ volatile ("ecall");
    800015ac:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800015b0:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800015b4:	0005051b          	sext.w	a0,a0
    800015b8:	00813403          	ld	s0,8(sp)
    800015bc:	01010113          	addi	sp,sp,16
    800015c0:	00008067          	ret

00000000800015c4 <_Z10sem_signalP11MySemaphore>:

int sem_signal(sem_t id) {
    800015c4:	ff010113          	addi	sp,sp,-16
    800015c8:	00813423          	sd	s0,8(sp)
    800015cc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800015d0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800015d4:	02400513          	li	a0,36
    __asm__ volatile ("ecall");
    800015d8:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800015dc:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800015e0:	0005051b          	sext.w	a0,a0
    800015e4:	00813403          	ld	s0,8(sp)
    800015e8:	01010113          	addi	sp,sp,16
    800015ec:	00008067          	ret

00000000800015f0 <_ZN11MySemaphore4waitEv>:
#include "../h/mySemaphore.hpp"
#include "../h/syscall_c.hpp"

int MySemaphore::wait() {
    if(this->closed) {
    800015f0:	00054783          	lbu	a5,0(a0)
    800015f4:	0a079c63          	bnez	a5,800016ac <_ZN11MySemaphore4waitEv+0xbc>
int MySemaphore::wait() {
    800015f8:	fe010113          	addi	sp,sp,-32
    800015fc:	00113c23          	sd	ra,24(sp)
    80001600:	00813823          	sd	s0,16(sp)
    80001604:	00913423          	sd	s1,8(sp)
    80001608:	01213023          	sd	s2,0(sp)
    8000160c:	02010413          	addi	s0,sp,32
    80001610:	00050493          	mv	s1,a0
        return -1;
    }

    if((int)--this->value < 0) {
    80001614:	00452783          	lw	a5,4(a0)
    80001618:	fff7879b          	addiw	a5,a5,-1
    8000161c:	00f52223          	sw	a5,4(a0)
    80001620:	02079713          	slli	a4,a5,0x20
    80001624:	02074063          	bltz	a4,80001644 <_ZN11MySemaphore4waitEv+0x54>
        //Provera da li smo se vratili jer je bio signal() ili je bio close()
        if(this->closed) {
            return -1;
        }
    }
    return 0;
    80001628:	00000513          	li	a0,0
}
    8000162c:	01813083          	ld	ra,24(sp)
    80001630:	01013403          	ld	s0,16(sp)
    80001634:	00813483          	ld	s1,8(sp)
    80001638:	00013903          	ld	s2,0(sp)
    8000163c:	02010113          	addi	sp,sp,32
    80001640:	00008067          	ret
        this->blocked.addLast(TCB::running);
    80001644:	00004797          	auipc	a5,0x4
    80001648:	66c7b783          	ld	a5,1644(a5) # 80005cb0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000164c:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001650:	01000513          	li	a0,16
    80001654:	00001097          	auipc	ra,0x1
    80001658:	9d0080e7          	jalr	-1584(ra) # 80002024 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000165c:	01253023          	sd	s2,0(a0)
    80001660:	00053423          	sd	zero,8(a0)
        if (tail)
    80001664:	0104b783          	ld	a5,16(s1)
    80001668:	02078c63          	beqz	a5,800016a0 <_ZN11MySemaphore4waitEv+0xb0>
        {
            tail->next = elem;
    8000166c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001670:	00a4b823          	sd	a0,16(s1)
        TCB::running->setBlocked(true);
    80001674:	00004797          	auipc	a5,0x4
    80001678:	63c7b783          	ld	a5,1596(a5) # 80005cb0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000167c:	0007b783          	ld	a5,0(a5)

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return this->blocked; }

    void setBlocked(bool value) { this->blocked = value; }
    80001680:	00100713          	li	a4,1
    80001684:	02e780a3          	sb	a4,33(a5)
        thread_dispatch();
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	e70080e7          	jalr	-400(ra) # 800014f8 <_Z15thread_dispatchv>
        if(this->closed) {
    80001690:	0004c783          	lbu	a5,0(s1)
    80001694:	02079063          	bnez	a5,800016b4 <_ZN11MySemaphore4waitEv+0xc4>
    return 0;
    80001698:	00000513          	li	a0,0
    8000169c:	f91ff06f          	j	8000162c <_ZN11MySemaphore4waitEv+0x3c>
        } else
        {
            head = tail = elem;
    800016a0:	00a4b823          	sd	a0,16(s1)
    800016a4:	00a4b423          	sd	a0,8(s1)
    800016a8:	fcdff06f          	j	80001674 <_ZN11MySemaphore4waitEv+0x84>
        return -1;
    800016ac:	fff00513          	li	a0,-1
}
    800016b0:	00008067          	ret
            return -1;
    800016b4:	fff00513          	li	a0,-1
    800016b8:	f75ff06f          	j	8000162c <_ZN11MySemaphore4waitEv+0x3c>

00000000800016bc <_ZN11MySemaphore6signalEv>:

int MySemaphore::signal() {
    if(this->closed) {
    800016bc:	00054783          	lbu	a5,0(a0)
    800016c0:	08079863          	bnez	a5,80001750 <_ZN11MySemaphore6signalEv+0x94>
    800016c4:	00050713          	mv	a4,a0
        return -1;
    }
    if((int)++this->value <= 0) {
    800016c8:	00452783          	lw	a5,4(a0)
    800016cc:	0017879b          	addiw	a5,a5,1
    800016d0:	00f52223          	sw	a5,4(a0)
    800016d4:	0007879b          	sext.w	a5,a5
    800016d8:	00f05663          	blez	a5,800016e4 <_ZN11MySemaphore6signalEv+0x28>
        TCB* tcb;
        tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    }
    return 0;
    800016dc:	00000513          	li	a0,0
}
    800016e0:	00008067          	ret
int MySemaphore::signal() {
    800016e4:	fe010113          	addi	sp,sp,-32
    800016e8:	00113c23          	sd	ra,24(sp)
    800016ec:	00813823          	sd	s0,16(sp)
    800016f0:	00913423          	sd	s1,8(sp)
    800016f4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800016f8:	00853503          	ld	a0,8(a0)
    800016fc:	04050663          	beqz	a0,80001748 <_ZN11MySemaphore6signalEv+0x8c>

        Elem *elem = head;
        head = head->next;
    80001700:	00853783          	ld	a5,8(a0)
    80001704:	00f73423          	sd	a5,8(a4)
        if (!head) { tail = 0; }
    80001708:	02078c63          	beqz	a5,80001740 <_ZN11MySemaphore6signalEv+0x84>

        T *ret = elem->data;
    8000170c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001710:	00001097          	auipc	ra,0x1
    80001714:	964080e7          	jalr	-1692(ra) # 80002074 <_ZdlPv>
    80001718:	020480a3          	sb	zero,33(s1)
        Scheduler::put(tcb);
    8000171c:	00048513          	mv	a0,s1
    80001720:	00001097          	auipc	ra,0x1
    80001724:	d88080e7          	jalr	-632(ra) # 800024a8 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80001728:	00000513          	li	a0,0
}
    8000172c:	01813083          	ld	ra,24(sp)
    80001730:	01013403          	ld	s0,16(sp)
    80001734:	00813483          	ld	s1,8(sp)
    80001738:	02010113          	addi	sp,sp,32
    8000173c:	00008067          	ret
        if (!head) { tail = 0; }
    80001740:	00073823          	sd	zero,16(a4)
    80001744:	fc9ff06f          	j	8000170c <_ZN11MySemaphore6signalEv+0x50>
        if (!head) { return 0; }
    80001748:	00050493          	mv	s1,a0
    8000174c:	fcdff06f          	j	80001718 <_ZN11MySemaphore6signalEv+0x5c>
        return -1;
    80001750:	fff00513          	li	a0,-1
    80001754:	00008067          	ret

0000000080001758 <_ZN11MySemaphore15createSemaphoreEj>:

MySemaphore *MySemaphore::createSemaphore(unsigned int init) {
    80001758:	fe010113          	addi	sp,sp,-32
    8000175c:	00113c23          	sd	ra,24(sp)
    80001760:	00813823          	sd	s0,16(sp)
    80001764:	00913423          	sd	s1,8(sp)
    80001768:	02010413          	addi	s0,sp,32
    8000176c:	00050493          	mv	s1,a0
    return new MySemaphore(init);
    80001770:	01800513          	li	a0,24
    80001774:	00001097          	auipc	ra,0x1
    80001778:	8b0080e7          	jalr	-1872(ra) # 80002024 <_Znwm>
    List() : head(0), tail(0) {}
    8000177c:	00053423          	sd	zero,8(a0)
    80001780:	00053823          	sd	zero,16(a0)

class MySemaphore {
public:
    //check this -> explicit
    explicit MySemaphore(unsigned init = 1) {
        this->value = init;
    80001784:	00952223          	sw	s1,4(a0)
        this->closed = false;
    80001788:	00050023          	sb	zero,0(a0)
}
    8000178c:	01813083          	ld	ra,24(sp)
    80001790:	01013403          	ld	s0,16(sp)
    80001794:	00813483          	ld	s1,8(sp)
    80001798:	02010113          	addi	sp,sp,32
    8000179c:	00008067          	ret

00000000800017a0 <_ZN11MySemaphore5closeEv>:

int MySemaphore::close() {
    if (closed) {
    800017a0:	00054783          	lbu	a5,0(a0)
    800017a4:	06079663          	bnez	a5,80001810 <_ZN11MySemaphore5closeEv+0x70>
int MySemaphore::close() {
    800017a8:	fe010113          	addi	sp,sp,-32
    800017ac:	00113c23          	sd	ra,24(sp)
    800017b0:	00813823          	sd	s0,16(sp)
    800017b4:	00913423          	sd	s1,8(sp)
    800017b8:	01213023          	sd	s2,0(sp)
    800017bc:	02010413          	addi	s0,sp,32
    800017c0:	00050493          	mv	s1,a0
        return -1;
    }
    closed = true;
    800017c4:	00100793          	li	a5,1
    800017c8:	00f50023          	sb	a5,0(a0)
    800017cc:	0240006f          	j	800017f0 <_ZN11MySemaphore5closeEv+0x50>
        if (!head) { tail = 0; }
    800017d0:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    800017d4:	00053903          	ld	s2,0(a0)
        delete elem;
    800017d8:	00001097          	auipc	ra,0x1
    800017dc:	89c080e7          	jalr	-1892(ra) # 80002074 <_ZdlPv>
    800017e0:	020900a3          	sb	zero,33(s2)

    while (this->blocked.peekFirst()) {
        TCB* tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    800017e4:	00090513          	mv	a0,s2
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	cc0080e7          	jalr	-832(ra) # 800024a8 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    800017f0:	0084b503          	ld	a0,8(s1)
    800017f4:	02050263          	beqz	a0,80001818 <_ZN11MySemaphore5closeEv+0x78>
        return head->data;
    800017f8:	00053783          	ld	a5,0(a0)
    while (this->blocked.peekFirst()) {
    800017fc:	02078c63          	beqz	a5,80001834 <_ZN11MySemaphore5closeEv+0x94>
        head = head->next;
    80001800:	00853783          	ld	a5,8(a0)
    80001804:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001808:	fc0796e3          	bnez	a5,800017d4 <_ZN11MySemaphore5closeEv+0x34>
    8000180c:	fc5ff06f          	j	800017d0 <_ZN11MySemaphore5closeEv+0x30>
        return -1;
    80001810:	fff00513          	li	a0,-1
    }
    return 0;
}
    80001814:	00008067          	ret
    return 0;
    80001818:	00000513          	li	a0,0
}
    8000181c:	01813083          	ld	ra,24(sp)
    80001820:	01013403          	ld	s0,16(sp)
    80001824:	00813483          	ld	s1,8(sp)
    80001828:	00013903          	ld	s2,0(sp)
    8000182c:	02010113          	addi	sp,sp,32
    80001830:	00008067          	ret
    return 0;
    80001834:	00000513          	li	a0,0
    80001838:	fe5ff06f          	j	8000181c <_ZN11MySemaphore5closeEv+0x7c>

000000008000183c <_ZL9fibonaccim>:
#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

static uint64 fibonacci(uint64 n)
{
    8000183c:	fe010113          	addi	sp,sp,-32
    80001840:	00113c23          	sd	ra,24(sp)
    80001844:	00813823          	sd	s0,16(sp)
    80001848:	00913423          	sd	s1,8(sp)
    8000184c:	01213023          	sd	s2,0(sp)
    80001850:	02010413          	addi	s0,sp,32
    80001854:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001858:	00100793          	li	a5,1
    8000185c:	02a7f663          	bgeu	a5,a0,80001888 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) {
    80001860:	00357793          	andi	a5,a0,3
    80001864:	02078e63          	beqz	a5,800018a0 <_ZL9fibonaccim+0x64>
        //printString("fibonacci yield\n");
        thread_dispatch();
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001868:	fff48513          	addi	a0,s1,-1
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	fd0080e7          	jalr	-48(ra) # 8000183c <_ZL9fibonaccim>
    80001874:	00050913          	mv	s2,a0
    80001878:	ffe48513          	addi	a0,s1,-2
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	fc0080e7          	jalr	-64(ra) # 8000183c <_ZL9fibonaccim>
    80001884:	00a90533          	add	a0,s2,a0
}
    80001888:	01813083          	ld	ra,24(sp)
    8000188c:	01013403          	ld	s0,16(sp)
    80001890:	00813483          	ld	s1,8(sp)
    80001894:	00013903          	ld	s2,0(sp)
    80001898:	02010113          	addi	sp,sp,32
    8000189c:	00008067          	ret
        thread_dispatch();
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	c58080e7          	jalr	-936(ra) # 800014f8 <_Z15thread_dispatchv>
    800018a8:	fc1ff06f          	j	80001868 <_ZL9fibonaccim+0x2c>

00000000800018ac <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    800018ac:	fe010113          	addi	sp,sp,-32
    800018b0:	00113c23          	sd	ra,24(sp)
    800018b4:	00813823          	sd	s0,16(sp)
    800018b8:	00913423          	sd	s1,8(sp)
    800018bc:	01213023          	sd	s2,0(sp)
    800018c0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800018c4:	00000493          	li	s1,0
    800018c8:	0380006f          	j	80001900 <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800018cc:	00003517          	auipc	a0,0x3
    800018d0:	73450513          	addi	a0,a0,1844 # 80005000 <kvmincrease+0x580>
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	c74080e7          	jalr	-908(ra) # 80002548 <_Z11printStringPKc>
        printInteger(i);
    800018dc:	00048513          	mv	a0,s1
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	cd8080e7          	jalr	-808(ra) # 800025b8 <_Z12printIntegerm>
        printString("\n");
    800018e8:	00004517          	auipc	a0,0x4
    800018ec:	8a050513          	addi	a0,a0,-1888 # 80005188 <kvmincrease+0x708>
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	c58080e7          	jalr	-936(ra) # 80002548 <_Z11printStringPKc>
    for (; i < 3; i++)
    800018f8:	0014849b          	addiw	s1,s1,1
    800018fc:	0ff4f493          	andi	s1,s1,255
    80001900:	00200793          	li	a5,2
    80001904:	fc97f4e3          	bgeu	a5,s1,800018cc <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001908:	00003517          	auipc	a0,0x3
    8000190c:	70050513          	addi	a0,a0,1792 # 80005008 <kvmincrease+0x588>
    80001910:	00001097          	auipc	ra,0x1
    80001914:	c38080e7          	jalr	-968(ra) # 80002548 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001918:	00700313          	li	t1,7
    thread_dispatch();
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	bdc080e7          	jalr	-1060(ra) # 800014f8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001924:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001928:	00003517          	auipc	a0,0x3
    8000192c:	6f050513          	addi	a0,a0,1776 # 80005018 <kvmincrease+0x598>
    80001930:	00001097          	auipc	ra,0x1
    80001934:	c18080e7          	jalr	-1000(ra) # 80002548 <_Z11printStringPKc>
    printInteger(t1);
    80001938:	00090513          	mv	a0,s2
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	c7c080e7          	jalr	-900(ra) # 800025b8 <_Z12printIntegerm>
    printString("\n");
    80001944:	00004517          	auipc	a0,0x4
    80001948:	84450513          	addi	a0,a0,-1980 # 80005188 <kvmincrease+0x708>
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	bfc080e7          	jalr	-1028(ra) # 80002548 <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    80001954:	01400513          	li	a0,20
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	ee4080e7          	jalr	-284(ra) # 8000183c <_ZL9fibonaccim>
    80001960:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001964:	00003517          	auipc	a0,0x3
    80001968:	6bc50513          	addi	a0,a0,1724 # 80005020 <kvmincrease+0x5a0>
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	bdc080e7          	jalr	-1060(ra) # 80002548 <_Z11printStringPKc>
    printInteger(result);
    80001974:	00090513          	mv	a0,s2
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	c40080e7          	jalr	-960(ra) # 800025b8 <_Z12printIntegerm>
    printString("\n");
    80001980:	00004517          	auipc	a0,0x4
    80001984:	80850513          	addi	a0,a0,-2040 # 80005188 <kvmincrease+0x708>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	bc0080e7          	jalr	-1088(ra) # 80002548 <_Z11printStringPKc>
    80001990:	0380006f          	j	800019c8 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001994:	00003517          	auipc	a0,0x3
    80001998:	66c50513          	addi	a0,a0,1644 # 80005000 <kvmincrease+0x580>
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	bac080e7          	jalr	-1108(ra) # 80002548 <_Z11printStringPKc>
        printInteger(i);
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	c10080e7          	jalr	-1008(ra) # 800025b8 <_Z12printIntegerm>
        printString("\n");
    800019b0:	00003517          	auipc	a0,0x3
    800019b4:	7d850513          	addi	a0,a0,2008 # 80005188 <kvmincrease+0x708>
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	b90080e7          	jalr	-1136(ra) # 80002548 <_Z11printStringPKc>
    for (; i < 6; i++)
    800019c0:	0014849b          	addiw	s1,s1,1
    800019c4:	0ff4f493          	andi	s1,s1,255
    800019c8:	00500793          	li	a5,5
    800019cc:	fc97f4e3          	bgeu	a5,s1,80001994 <_Z11workerBodyAPv+0xe8>
    }

    thread_dispatch();
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	b28080e7          	jalr	-1240(ra) # 800014f8 <_Z15thread_dispatchv>
}
    800019d8:	01813083          	ld	ra,24(sp)
    800019dc:	01013403          	ld	s0,16(sp)
    800019e0:	00813483          	ld	s1,8(sp)
    800019e4:	00013903          	ld	s2,0(sp)
    800019e8:	02010113          	addi	sp,sp,32
    800019ec:	00008067          	ret

00000000800019f0 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800019f0:	fe010113          	addi	sp,sp,-32
    800019f4:	00113c23          	sd	ra,24(sp)
    800019f8:	00813823          	sd	s0,16(sp)
    800019fc:	00913423          	sd	s1,8(sp)
    80001a00:	01213023          	sd	s2,0(sp)
    80001a04:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    thread_join((thread_t) arg);
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	b10080e7          	jalr	-1264(ra) # 80001518 <_Z11thread_joinP3TCB>
    uint8 i = 10;
    80001a10:	00a00493          	li	s1,10
    80001a14:	0380006f          	j	80001a4c <_Z11workerBodyBPv+0x5c>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001a18:	00003517          	auipc	a0,0x3
    80001a1c:	61850513          	addi	a0,a0,1560 # 80005030 <kvmincrease+0x5b0>
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	b28080e7          	jalr	-1240(ra) # 80002548 <_Z11printStringPKc>
        printInteger(i);
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	b8c080e7          	jalr	-1140(ra) # 800025b8 <_Z12printIntegerm>
        printString("\n");
    80001a34:	00003517          	auipc	a0,0x3
    80001a38:	75450513          	addi	a0,a0,1876 # 80005188 <kvmincrease+0x708>
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	b0c080e7          	jalr	-1268(ra) # 80002548 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a44:	0014849b          	addiw	s1,s1,1
    80001a48:	0ff4f493          	andi	s1,s1,255
    80001a4c:	00c00793          	li	a5,12
    80001a50:	fc97f4e3          	bgeu	a5,s1,80001a18 <_Z11workerBodyBPv+0x28>
    }

    printString("B: yield\n");
    80001a54:	00003517          	auipc	a0,0x3
    80001a58:	5e450513          	addi	a0,a0,1508 # 80005038 <kvmincrease+0x5b8>
    80001a5c:	00001097          	auipc	ra,0x1
    80001a60:	aec080e7          	jalr	-1300(ra) # 80002548 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001a64:	00500313          	li	t1,5
    thread_dispatch();
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	a90080e7          	jalr	-1392(ra) # 800014f8 <_Z15thread_dispatchv>


    uint64 result = fibonacci(23);
    80001a70:	01700513          	li	a0,23
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	dc8080e7          	jalr	-568(ra) # 8000183c <_ZL9fibonaccim>
    80001a7c:	00050913          	mv	s2,a0
    printString("B: fibonaci=");
    80001a80:	00003517          	auipc	a0,0x3
    80001a84:	5c850513          	addi	a0,a0,1480 # 80005048 <kvmincrease+0x5c8>
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	ac0080e7          	jalr	-1344(ra) # 80002548 <_Z11printStringPKc>
    printInteger(result);
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	b24080e7          	jalr	-1244(ra) # 800025b8 <_Z12printIntegerm>
    printString("\n");
    80001a9c:	00003517          	auipc	a0,0x3
    80001aa0:	6ec50513          	addi	a0,a0,1772 # 80005188 <kvmincrease+0x708>
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	aa4080e7          	jalr	-1372(ra) # 80002548 <_Z11printStringPKc>
    80001aac:	0380006f          	j	80001ae4 <_Z11workerBodyBPv+0xf4>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001ab0:	00003517          	auipc	a0,0x3
    80001ab4:	58050513          	addi	a0,a0,1408 # 80005030 <kvmincrease+0x5b0>
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	a90080e7          	jalr	-1392(ra) # 80002548 <_Z11printStringPKc>
        printInteger(i);
    80001ac0:	00048513          	mv	a0,s1
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	af4080e7          	jalr	-1292(ra) # 800025b8 <_Z12printIntegerm>
        printString("\n");
    80001acc:	00003517          	auipc	a0,0x3
    80001ad0:	6bc50513          	addi	a0,a0,1724 # 80005188 <kvmincrease+0x708>
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	a74080e7          	jalr	-1420(ra) # 80002548 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001adc:	0014849b          	addiw	s1,s1,1
    80001ae0:	0ff4f493          	andi	s1,s1,255
    80001ae4:	00f00793          	li	a5,15
    80001ae8:	fc97f4e3          	bgeu	a5,s1,80001ab0 <_Z11workerBodyBPv+0xc0>
    }

    thread_dispatch();
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	a0c080e7          	jalr	-1524(ra) # 800014f8 <_Z15thread_dispatchv>
}
    80001af4:	01813083          	ld	ra,24(sp)
    80001af8:	01013403          	ld	s0,16(sp)
    80001afc:	00813483          	ld	s1,8(sp)
    80001b00:	00013903          	ld	s2,0(sp)
    80001b04:	02010113          	addi	sp,sp,32
    80001b08:	00008067          	ret

0000000080001b0c <_Z11workerBodyCPv>:

//test semafora
void workerBodyC(void* arg) {
    80001b0c:	fe010113          	addi	sp,sp,-32
    80001b10:	00113c23          	sd	ra,24(sp)
    80001b14:	00813823          	sd	s0,16(sp)
    80001b18:	00913423          	sd	s1,8(sp)
    80001b1c:	02010413          	addi	s0,sp,32
    80001b20:	00050493          	mv	s1,a0
    printString("C: poziva se dispatch1.\n");
    80001b24:	00003517          	auipc	a0,0x3
    80001b28:	53450513          	addi	a0,a0,1332 # 80005058 <kvmincrease+0x5d8>
    80001b2c:	00001097          	auipc	ra,0x1
    80001b30:	a1c080e7          	jalr	-1508(ra) # 80002548 <_Z11printStringPKc>
    thread_dispatch();
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	9c4080e7          	jalr	-1596(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch2..\n");
    80001b3c:	00003517          	auipc	a0,0x3
    80001b40:	53c50513          	addi	a0,a0,1340 # 80005078 <kvmincrease+0x5f8>
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	a04080e7          	jalr	-1532(ra) # 80002548 <_Z11printStringPKc>
    thread_dispatch();
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	9ac080e7          	jalr	-1620(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch3...\n");
    80001b54:	00003517          	auipc	a0,0x3
    80001b58:	54450513          	addi	a0,a0,1348 # 80005098 <kvmincrease+0x618>
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	9ec080e7          	jalr	-1556(ra) # 80002548 <_Z11printStringPKc>
    thread_dispatch();
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	994080e7          	jalr	-1644(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch4....\n");
    80001b6c:	00003517          	auipc	a0,0x3
    80001b70:	54c50513          	addi	a0,a0,1356 # 800050b8 <kvmincrease+0x638>
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	9d4080e7          	jalr	-1580(ra) # 80002548 <_Z11printStringPKc>
    printString("C: Signal semafora!\n");
    80001b7c:	00003517          	auipc	a0,0x3
    80001b80:	55c50513          	addi	a0,a0,1372 # 800050d8 <kvmincrease+0x658>
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	9c4080e7          	jalr	-1596(ra) # 80002548 <_Z11printStringPKc>
    sem_close((sem_t) arg);
    80001b8c:	00048513          	mv	a0,s1
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	9dc080e7          	jalr	-1572(ra) # 8000156c <_Z9sem_closeP11MySemaphore>
    thread_dispatch();
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	960080e7          	jalr	-1696(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: posle signala..\n");
    80001ba0:	00003517          	auipc	a0,0x3
    80001ba4:	55050513          	addi	a0,a0,1360 # 800050f0 <kvmincrease+0x670>
    80001ba8:	00001097          	auipc	ra,0x1
    80001bac:	9a0080e7          	jalr	-1632(ra) # 80002548 <_Z11printStringPKc>
    printString("C: posle signala.2.\n");
    80001bb0:	00003517          	auipc	a0,0x3
    80001bb4:	55850513          	addi	a0,a0,1368 # 80005108 <kvmincrease+0x688>
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	990080e7          	jalr	-1648(ra) # 80002548 <_Z11printStringPKc>
}
    80001bc0:	01813083          	ld	ra,24(sp)
    80001bc4:	01013403          	ld	s0,16(sp)
    80001bc8:	00813483          	ld	s1,8(sp)
    80001bcc:	02010113          	addi	sp,sp,32
    80001bd0:	00008067          	ret

0000000080001bd4 <_Z11workerBodyDPv>:


void workerBodyD(void *arg) {
    80001bd4:	fe010113          	addi	sp,sp,-32
    80001bd8:	00113c23          	sd	ra,24(sp)
    80001bdc:	00813823          	sd	s0,16(sp)
    80001be0:	00913423          	sd	s1,8(sp)
    80001be4:	02010413          	addi	s0,sp,32
    80001be8:	00050493          	mv	s1,a0
    printString("D: Usli smo u D 1. put\n");
    80001bec:	00003517          	auipc	a0,0x3
    80001bf0:	53450513          	addi	a0,a0,1332 # 80005120 <kvmincrease+0x6a0>
    80001bf4:	00001097          	auipc	ra,0x1
    80001bf8:	954080e7          	jalr	-1708(ra) # 80002548 <_Z11printStringPKc>
    printString("D: Cekamo na semaforu..\n");
    80001bfc:	00003517          	auipc	a0,0x3
    80001c00:	53c50513          	addi	a0,a0,1340 # 80005138 <kvmincrease+0x6b8>
    80001c04:	00001097          	auipc	ra,0x1
    80001c08:	944080e7          	jalr	-1724(ra) # 80002548 <_Z11printStringPKc>

    int returnValue = sem_wait((sem_t) arg);
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	988080e7          	jalr	-1656(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
    80001c18:	00050493          	mv	s1,a0

    printString("D: rezultat: ");
    80001c1c:	00003517          	auipc	a0,0x3
    80001c20:	53c50513          	addi	a0,a0,1340 # 80005158 <kvmincrease+0x6d8>
    80001c24:	00001097          	auipc	ra,0x1
    80001c28:	924080e7          	jalr	-1756(ra) # 80002548 <_Z11printStringPKc>
    printInteger(returnValue);
    80001c2c:	00048513          	mv	a0,s1
    80001c30:	00001097          	auipc	ra,0x1
    80001c34:	988080e7          	jalr	-1656(ra) # 800025b8 <_Z12printIntegerm>
    printString("\nD: izlazim automatski, pozdrav!\n");
    80001c38:	00003517          	auipc	a0,0x3
    80001c3c:	53050513          	addi	a0,a0,1328 # 80005168 <kvmincrease+0x6e8>
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	908080e7          	jalr	-1784(ra) # 80002548 <_Z11printStringPKc>
    80001c48:	01813083          	ld	ra,24(sp)
    80001c4c:	01013403          	ld	s0,16(sp)
    80001c50:	00813483          	ld	s1,8(sp)
    80001c54:	02010113          	addi	sp,sp,32
    80001c58:	00008067          	ret

0000000080001c5c <main>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

int main()
{
    80001c5c:	fa010113          	addi	sp,sp,-96
    80001c60:	04113c23          	sd	ra,88(sp)
    80001c64:	04813823          	sd	s0,80(sp)
    80001c68:	04913423          	sd	s1,72(sp)
    80001c6c:	05213023          	sd	s2,64(sp)
    80001c70:	06010413          	addi	s0,sp,96
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr,nullptr);
    80001c74:	00000593          	li	a1,0
    80001c78:	00000513          	li	a0,0
    80001c7c:	00000097          	auipc	ra,0x0
    80001c80:	200080e7          	jalr	512(ra) # 80001e7c <_ZN3TCB12createThreadEPFvPvES0_>
    80001c84:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001c88:	00004797          	auipc	a5,0x4
    80001c8c:	0287b783          	ld	a5,40(a5) # 80005cb0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c90:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    80001c94:	00004797          	auipc	a5,0x4
    80001c98:	0047b783          	ld	a5,4(a5) # 80005c98 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c9c:	0017e793          	ori	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001ca0:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ca4:	00200793          	li	a5,2
    80001ca8:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    int return1 = thread_create(&threads[1], workerBodyA, nullptr);
    80001cac:	00000613          	li	a2,0
    80001cb0:	00004597          	auipc	a1,0x4
    80001cb4:	ff85b583          	ld	a1,-8(a1) # 80005ca8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001cb8:	fc040513          	addi	a0,s0,-64
    80001cbc:	fffff097          	auipc	ra,0xfffff
    80001cc0:	7dc080e7          	jalr	2012(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001cc4:	00050493          	mv	s1,a0
    printString("ThreadA created\n");
    80001cc8:	00003517          	auipc	a0,0x3
    80001ccc:	4c850513          	addi	a0,a0,1224 # 80005190 <kvmincrease+0x710>
    80001cd0:	00001097          	auipc	ra,0x1
    80001cd4:	878080e7          	jalr	-1928(ra) # 80002548 <_Z11printStringPKc>
    printInteger(return1);
    80001cd8:	00048513          	mv	a0,s1
    80001cdc:	00001097          	auipc	ra,0x1
    80001ce0:	8dc080e7          	jalr	-1828(ra) # 800025b8 <_Z12printIntegerm>
    int return2 = thread_create(&threads[2], workerBodyB, threads[1]);
    80001ce4:	fc043603          	ld	a2,-64(s0)
    80001ce8:	00004597          	auipc	a1,0x4
    80001cec:	fd05b583          	ld	a1,-48(a1) # 80005cb8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cf0:	fc840513          	addi	a0,s0,-56
    80001cf4:	fffff097          	auipc	ra,0xfffff
    80001cf8:	7a4080e7          	jalr	1956(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001cfc:	00050493          	mv	s1,a0
    printString("ThreadB created\n");
    80001d00:	00003517          	auipc	a0,0x3
    80001d04:	4a850513          	addi	a0,a0,1192 # 800051a8 <kvmincrease+0x728>
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	840080e7          	jalr	-1984(ra) # 80002548 <_Z11printStringPKc>
    printInteger(return2);
    80001d10:	00048513          	mv	a0,s1
    80001d14:	00001097          	auipc	ra,0x1
    80001d18:	8a4080e7          	jalr	-1884(ra) # 800025b8 <_Z12printIntegerm>

    MySemaphore* semaphore[2];
    sem_open(&semaphore[0], 0);
    80001d1c:	00000593          	li	a1,0
    80001d20:	fa840513          	addi	a0,s0,-88
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	818080e7          	jalr	-2024(ra) # 8000153c <_Z8sem_openPP11MySemaphorej>
    80001d2c:	00c0006f          	j	80001d38 <main+0xdc>


    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        thread_dispatch();
    80001d30:	fffff097          	auipc	ra,0xfffff
    80001d34:	7c8080e7          	jalr	1992(ra) # 800014f8 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    80001d38:	fc043783          	ld	a5,-64(s0)
    bool isFinished() const { return finished; }
    80001d3c:	0207c783          	lbu	a5,32(a5)
    80001d40:	fe0788e3          	beqz	a5,80001d30 <main+0xd4>
             threads[2]->isFinished()))
    80001d44:	fc843783          	ld	a5,-56(s0)
    80001d48:	0207c783          	lbu	a5,32(a5)
    while (!(threads[1]->isFinished() &&
    80001d4c:	fe0782e3          	beqz	a5,80001d30 <main+0xd4>
    }



    thread_create(&threads[3], workerBodyC, semaphore[0]);
    80001d50:	fa843603          	ld	a2,-88(s0)
    80001d54:	00004597          	auipc	a1,0x4
    80001d58:	f3c5b583          	ld	a1,-196(a1) # 80005c90 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d5c:	fd040493          	addi	s1,s0,-48
    80001d60:	00048513          	mv	a0,s1
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	734080e7          	jalr	1844(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[3], workerBodyD, semaphore[0]);
    80001d6c:	fa843603          	ld	a2,-88(s0)
    80001d70:	00004597          	auipc	a1,0x4
    80001d74:	f505b583          	ld	a1,-176(a1) # 80005cc0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001d78:	00048513          	mv	a0,s1
    80001d7c:	fffff097          	auipc	ra,0xfffff
    80001d80:	71c080e7          	jalr	1820(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    //thread_dispatch();
    int returnValue = sem_wait(semaphore[0]);
    80001d84:	fa843503          	ld	a0,-88(s0)
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	810080e7          	jalr	-2032(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
    80001d90:	00050493          	mv	s1,a0

    printString("Finished\nReturn value: ");
    80001d94:	00003517          	auipc	a0,0x3
    80001d98:	42c50513          	addi	a0,a0,1068 # 800051c0 <kvmincrease+0x740>
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	7ac080e7          	jalr	1964(ra) # 80002548 <_Z11printStringPKc>
    printInteger(returnValue);
    80001da4:	00048513          	mv	a0,s1
    80001da8:	00001097          	auipc	ra,0x1
    80001dac:	810080e7          	jalr	-2032(ra) # 800025b8 <_Z12printIntegerm>
    printString("\n");
    80001db0:	00003517          	auipc	a0,0x3
    80001db4:	3d850513          	addi	a0,a0,984 # 80005188 <kvmincrease+0x708>
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	790080e7          	jalr	1936(ra) # 80002548 <_Z11printStringPKc>

    thread_dispatch();
    80001dc0:	fffff097          	auipc	ra,0xfffff
    80001dc4:	738080e7          	jalr	1848(ra) # 800014f8 <_Z15thread_dispatchv>
    for (auto &thread: threads) {
    80001dc8:	fb840493          	addi	s1,s0,-72
    80001dcc:	0140006f          	j	80001de0 <main+0x184>
        delete thread;
    80001dd0:	00090513          	mv	a0,s2
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	2a0080e7          	jalr	672(ra) # 80002074 <_ZdlPv>
    for (auto &thread: threads) {
    80001ddc:	00848493          	addi	s1,s1,8
    80001de0:	fe040793          	addi	a5,s0,-32
    80001de4:	02f48063          	beq	s1,a5,80001e04 <main+0x1a8>
        delete thread;
    80001de8:	0004b903          	ld	s2,0(s1)
    80001dec:	fe0908e3          	beqz	s2,80001ddc <main+0x180>
    ~TCB() { delete[] stack; }
    80001df0:	00893503          	ld	a0,8(s2)
    80001df4:	fc050ee3          	beqz	a0,80001dd0 <main+0x174>
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	2a4080e7          	jalr	676(ra) # 8000209c <_ZdaPv>
    80001e00:	fd1ff06f          	j	80001dd0 <main+0x174>
    }
    return 0;
}
    80001e04:	00000513          	li	a0,0
    80001e08:	05813083          	ld	ra,88(sp)
    80001e0c:	05013403          	ld	s0,80(sp)
    80001e10:	04813483          	ld	s1,72(sp)
    80001e14:	04013903          	ld	s2,64(sp)
    80001e18:	06010113          	addi	sp,sp,96
    80001e1c:	00008067          	ret

0000000080001e20 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001e20:	fe010113          	addi	sp,sp,-32
    80001e24:	00113c23          	sd	ra,24(sp)
    80001e28:	00813823          	sd	s0,16(sp)
    80001e2c:	00913423          	sd	s1,8(sp)
    80001e30:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001e34:	00000097          	auipc	ra,0x0
    80001e38:	398080e7          	jalr	920(ra) # 800021cc <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001e3c:	00004497          	auipc	s1,0x4
    80001e40:	ed448493          	addi	s1,s1,-300 # 80005d10 <_ZN3TCB7runningE>
    80001e44:	0004b783          	ld	a5,0(s1)
    80001e48:	0007b703          	ld	a4,0(a5)
    80001e4c:	0287b503          	ld	a0,40(a5)
    80001e50:	000700e7          	jalr	a4
    running->setFinished(true);
    80001e54:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001e58:	00100713          	li	a4,1
    80001e5c:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	698080e7          	jalr	1688(ra) # 800014f8 <_Z15thread_dispatchv>

}
    80001e68:	01813083          	ld	ra,24(sp)
    80001e6c:	01013403          	ld	s0,16(sp)
    80001e70:	00813483          	ld	s1,8(sp)
    80001e74:	02010113          	addi	sp,sp,32
    80001e78:	00008067          	ret

0000000080001e7c <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80001e7c:	fd010113          	addi	sp,sp,-48
    80001e80:	02113423          	sd	ra,40(sp)
    80001e84:	02813023          	sd	s0,32(sp)
    80001e88:	00913c23          	sd	s1,24(sp)
    80001e8c:	01213823          	sd	s2,16(sp)
    80001e90:	01313423          	sd	s3,8(sp)
    80001e94:	03010413          	addi	s0,sp,48
    80001e98:	00050913          	mv	s2,a0
    80001e9c:	00058993          	mv	s3,a1
    return new TCB(body, arg);
    80001ea0:	03000513          	li	a0,48
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	180080e7          	jalr	384(ra) # 80002024 <_Znwm>
    80001eac:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            arg(arg)
    80001eb0:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001eb4:	00090a63          	beqz	s2,80001ec8 <_ZN3TCB12createThreadEPFvPvES0_+0x4c>
    80001eb8:	00002537          	lui	a0,0x2
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	190080e7          	jalr	400(ra) # 8000204c <_Znam>
    80001ec4:	0080006f          	j	80001ecc <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001ec8:	00000513          	li	a0,0
            arg(arg)
    80001ecc:	00a4b423          	sd	a0,8(s1)
    80001ed0:	00000797          	auipc	a5,0x0
    80001ed4:	f5078793          	addi	a5,a5,-176 # 80001e20 <_ZN3TCB13threadWrapperEv>
    80001ed8:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001edc:	02050863          	beqz	a0,80001f0c <_ZN3TCB12createThreadEPFvPvES0_+0x90>
    80001ee0:	000027b7          	lui	a5,0x2
    80001ee4:	00f507b3          	add	a5,a0,a5
            arg(arg)
    80001ee8:	00f4bc23          	sd	a5,24(s1)
    80001eec:	02048023          	sb	zero,32(s1)
    80001ef0:	020480a3          	sb	zero,33(s1)
    80001ef4:	0334b423          	sd	s3,40(s1)

    {
        if (body != nullptr) { Scheduler::put(this); }
    80001ef8:	02090c63          	beqz	s2,80001f30 <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
    80001efc:	00048513          	mv	a0,s1
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	5a8080e7          	jalr	1448(ra) # 800024a8 <_ZN9Scheduler3putEP3TCB>
    80001f08:	0280006f          	j	80001f30 <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001f0c:	00000793          	li	a5,0
    80001f10:	fd9ff06f          	j	80001ee8 <_ZN3TCB12createThreadEPFvPvES0_+0x6c>
    80001f14:	00050913          	mv	s2,a0
    80001f18:	00048513          	mv	a0,s1
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	158080e7          	jalr	344(ra) # 80002074 <_ZdlPv>
    80001f24:	00090513          	mv	a0,s2
    80001f28:	00005097          	auipc	ra,0x5
    80001f2c:	ed0080e7          	jalr	-304(ra) # 80006df8 <_Unwind_Resume>
}
    80001f30:	00048513          	mv	a0,s1
    80001f34:	02813083          	ld	ra,40(sp)
    80001f38:	02013403          	ld	s0,32(sp)
    80001f3c:	01813483          	ld	s1,24(sp)
    80001f40:	01013903          	ld	s2,16(sp)
    80001f44:	00813983          	ld	s3,8(sp)
    80001f48:	03010113          	addi	sp,sp,48
    80001f4c:	00008067          	ret

0000000080001f50 <_ZN3TCB5yieldEv>:
{
    80001f50:	ff010113          	addi	sp,sp,-16
    80001f54:	00813423          	sd	s0,8(sp)
    80001f58:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    80001f5c:	01300793          	li	a5,19
    80001f60:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001f64:	00000073          	ecall
}
    80001f68:	00813403          	ld	s0,8(sp)
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret

0000000080001f74 <_ZN3TCB8dispatchEv>:
{
    80001f74:	fe010113          	addi	sp,sp,-32
    80001f78:	00113c23          	sd	ra,24(sp)
    80001f7c:	00813823          	sd	s0,16(sp)
    80001f80:	00913423          	sd	s1,8(sp)
    80001f84:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001f88:	00004497          	auipc	s1,0x4
    80001f8c:	d884b483          	ld	s1,-632(s1) # 80005d10 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001f90:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001f94:	00079663          	bnez	a5,80001fa0 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return this->blocked; }
    80001f98:	0214c783          	lbu	a5,33(s1)
    80001f9c:	02078c63          	beqz	a5,80001fd4 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001fa0:	00000097          	auipc	ra,0x0
    80001fa4:	4a0080e7          	jalr	1184(ra) # 80002440 <_ZN9Scheduler3getEv>
    80001fa8:	00004797          	auipc	a5,0x4
    80001fac:	d6a7b423          	sd	a0,-664(a5) # 80005d10 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001fb0:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001fb4:	01048513          	addi	a0,s1,16
    80001fb8:	fffff097          	auipc	ra,0xfffff
    80001fbc:	158080e7          	jalr	344(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001fc0:	01813083          	ld	ra,24(sp)
    80001fc4:	01013403          	ld	s0,16(sp)
    80001fc8:	00813483          	ld	s1,8(sp)
    80001fcc:	02010113          	addi	sp,sp,32
    80001fd0:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001fd4:	00048513          	mv	a0,s1
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	4d0080e7          	jalr	1232(ra) # 800024a8 <_ZN9Scheduler3putEP3TCB>
    80001fe0:	fc1ff06f          	j	80001fa0 <_ZN3TCB8dispatchEv+0x2c>

0000000080001fe4 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB* handle) {
    80001fe4:	fe010113          	addi	sp,sp,-32
    80001fe8:	00113c23          	sd	ra,24(sp)
    80001fec:	00813823          	sd	s0,16(sp)
    80001ff0:	00913423          	sd	s1,8(sp)
    80001ff4:	02010413          	addi	s0,sp,32
    80001ff8:	00050493          	mv	s1,a0
    bool isFinished() const { return finished; }
    80001ffc:	0204c783          	lbu	a5,32(s1)
    while(!handle->isFinished()) {
    80002000:	00079863          	bnez	a5,80002010 <_ZN3TCB4joinEPS_+0x2c>
        TCB::dispatch();
    80002004:	00000097          	auipc	ra,0x0
    80002008:	f70080e7          	jalr	-144(ra) # 80001f74 <_ZN3TCB8dispatchEv>
    while(!handle->isFinished()) {
    8000200c:	ff1ff06f          	j	80001ffc <_ZN3TCB4joinEPS_+0x18>
    }
    80002010:	01813083          	ld	ra,24(sp)
    80002014:	01013403          	ld	s0,16(sp)
    80002018:	00813483          	ld	s1,8(sp)
    8000201c:	02010113          	addi	sp,sp,32
    80002020:	00008067          	ret

0000000080002024 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80002024:	ff010113          	addi	sp,sp,-16
    80002028:	00113423          	sd	ra,8(sp)
    8000202c:	00813023          	sd	s0,0(sp)
    80002030:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002034:	00002097          	auipc	ra,0x2
    80002038:	7d4080e7          	jalr	2004(ra) # 80004808 <__mem_alloc>
}
    8000203c:	00813083          	ld	ra,8(sp)
    80002040:	00013403          	ld	s0,0(sp)
    80002044:	01010113          	addi	sp,sp,16
    80002048:	00008067          	ret

000000008000204c <_Znam>:

void *operator new[](size_t n)
{
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00113423          	sd	ra,8(sp)
    80002054:	00813023          	sd	s0,0(sp)
    80002058:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    8000205c:	00002097          	auipc	ra,0x2
    80002060:	7ac080e7          	jalr	1964(ra) # 80004808 <__mem_alloc>
}
    80002064:	00813083          	ld	ra,8(sp)
    80002068:	00013403          	ld	s0,0(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret

0000000080002074 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002074:	ff010113          	addi	sp,sp,-16
    80002078:	00113423          	sd	ra,8(sp)
    8000207c:	00813023          	sd	s0,0(sp)
    80002080:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80002084:	00002097          	auipc	ra,0x2
    80002088:	6b8080e7          	jalr	1720(ra) # 8000473c <__mem_free>
}
    8000208c:	00813083          	ld	ra,8(sp)
    80002090:	00013403          	ld	s0,0(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret

000000008000209c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00113423          	sd	ra,8(sp)
    800020a4:	00813023          	sd	s0,0(sp)
    800020a8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800020ac:	00002097          	auipc	ra,0x2
    800020b0:	690080e7          	jalr	1680(ra) # 8000473c <__mem_free>
}
    800020b4:	00813083          	ld	ra,8(sp)
    800020b8:	00013403          	ld	s0,0(sp)
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret

00000000800020c4 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00113423          	sd	ra,8(sp)
    800020cc:	00813023          	sd	s0,0(sp)
    800020d0:	01010413          	addi	s0,sp,16
    800020d4:	00004797          	auipc	a5,0x4
    800020d8:	ba478793          	addi	a5,a5,-1116 # 80005c78 <_ZTV9Semaphore+0x10>
    800020dc:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    800020e0:	00853503          	ld	a0,8(a0)
    800020e4:	fffff097          	auipc	ra,0xfffff
    800020e8:	488080e7          	jalr	1160(ra) # 8000156c <_Z9sem_closeP11MySemaphore>
}
    800020ec:	00813083          	ld	ra,8(sp)
    800020f0:	00013403          	ld	s0,0(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret

00000000800020fc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800020fc:	fe010113          	addi	sp,sp,-32
    80002100:	00113c23          	sd	ra,24(sp)
    80002104:	00813823          	sd	s0,16(sp)
    80002108:	00913423          	sd	s1,8(sp)
    8000210c:	02010413          	addi	s0,sp,32
    80002110:	00050493          	mv	s1,a0
}
    80002114:	00000097          	auipc	ra,0x0
    80002118:	fb0080e7          	jalr	-80(ra) # 800020c4 <_ZN9SemaphoreD1Ev>
    8000211c:	00048513          	mv	a0,s1
    80002120:	00000097          	auipc	ra,0x0
    80002124:	f54080e7          	jalr	-172(ra) # 80002074 <_ZdlPv>
    80002128:	01813083          	ld	ra,24(sp)
    8000212c:	01013403          	ld	s0,16(sp)
    80002130:	00813483          	ld	s1,8(sp)
    80002134:	02010113          	addi	sp,sp,32
    80002138:	00008067          	ret

000000008000213c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00113423          	sd	ra,8(sp)
    80002144:	00813023          	sd	s0,0(sp)
    80002148:	01010413          	addi	s0,sp,16
    8000214c:	00004797          	auipc	a5,0x4
    80002150:	b2c78793          	addi	a5,a5,-1236 # 80005c78 <_ZTV9Semaphore+0x10>
    80002154:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    80002158:	00850513          	addi	a0,a0,8
    8000215c:	fffff097          	auipc	ra,0xfffff
    80002160:	3e0080e7          	jalr	992(ra) # 8000153c <_Z8sem_openPP11MySemaphorej>
}
    80002164:	00813083          	ld	ra,8(sp)
    80002168:	00013403          	ld	s0,0(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00113423          	sd	ra,8(sp)
    8000217c:	00813023          	sd	s0,0(sp)
    80002180:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    80002184:	00853503          	ld	a0,8(a0)
    80002188:	fffff097          	auipc	ra,0xfffff
    8000218c:	410080e7          	jalr	1040(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
}
    80002190:	00813083          	ld	ra,8(sp)
    80002194:	00013403          	ld	s0,0(sp)
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret

00000000800021a0 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800021a0:	ff010113          	addi	sp,sp,-16
    800021a4:	00113423          	sd	ra,8(sp)
    800021a8:	00813023          	sd	s0,0(sp)
    800021ac:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    800021b0:	00853503          	ld	a0,8(a0)
    800021b4:	fffff097          	auipc	ra,0xfffff
    800021b8:	410080e7          	jalr	1040(ra) # 800015c4 <_Z10sem_signalP11MySemaphore>
}
    800021bc:	00813083          	ld	ra,8(sp)
    800021c0:	00013403          	ld	s0,0(sp)
    800021c4:	01010113          	addi	sp,sp,16
    800021c8:	00008067          	ret

00000000800021cc <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    800021cc:	ff010113          	addi	sp,sp,-16
    800021d0:	00813423          	sd	s0,8(sp)
    800021d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800021d8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800021dc:	10200073          	sret
}
    800021e0:	00813403          	ld	s0,8(sp)
    800021e4:	01010113          	addi	sp,sp,16
    800021e8:	00008067          	ret

00000000800021ec <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void*);

void Riscv::handleSupervisorTrap()
{
    800021ec:	fb010113          	addi	sp,sp,-80
    800021f0:	04113423          	sd	ra,72(sp)
    800021f4:	04813023          	sd	s0,64(sp)
    800021f8:	02913c23          	sd	s1,56(sp)
    800021fc:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002200:	142027f3          	csrr	a5,scause
    80002204:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80002208:	fc043783          	ld	a5,-64(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    8000220c:	ff878793          	addi	a5,a5,-8
    80002210:	00100713          	li	a4,1
    80002214:	00f77c63          	bgeu	a4,a5,8000222c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    else
    {
        // unexpected trap cause
        // Ovde se ulazi ako se desi neki interrupt tabele
    }
}
    80002218:	04813083          	ld	ra,72(sp)
    8000221c:	04013403          	ld	s0,64(sp)
    80002220:	03813483          	ld	s1,56(sp)
    80002224:	05010113          	addi	sp,sp,80
    80002228:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000222c:	141027f3          	csrr	a5,sepc
    80002230:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002234:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002238:	00478793          	addi	a5,a5,4
    8000223c:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002240:	100027f3          	csrr	a5,sstatus
    80002244:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002248:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    8000224c:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80002250:	00050793          	mv	a5,a0
    80002254:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80002258:	fc843783          	ld	a5,-56(s0)
        switch (codeOperation) {
    8000225c:	fef78793          	addi	a5,a5,-17
    80002260:	03200713          	li	a4,50
    80002264:	06f76c63          	bltu	a4,a5,800022dc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    80002268:	00279793          	slli	a5,a5,0x2
    8000226c:	00003717          	auipc	a4,0x3
    80002270:	f6c70713          	addi	a4,a4,-148 # 800051d8 <kvmincrease+0x758>
    80002274:	00e787b3          	add	a5,a5,a4
    80002278:	0007a783          	lw	a5,0(a5)
    8000227c:	00e787b3          	add	a5,a5,a4
    80002280:	00078067          	jr	a5
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    80002284:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002288:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    8000228c:	00068593          	mv	a1,a3
                *tcb = TCB::createThread(body, arg);
    80002290:	00000097          	auipc	ra,0x0
    80002294:	bec080e7          	jalr	-1044(ra) # 80001e7c <_ZN3TCB12createThreadEPFvPvES0_>
    80002298:	00a4b023          	sd	a0,0(s1)
                if(*tcb != nullptr) {
    8000229c:	00050863          	beqz	a0,800022ac <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                    __asm__ volatile ("li t0, 0");
    800022a0:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    800022a4:	04542823          	sw	t0,80(s0)
    800022a8:	0340006f          	j	800022dc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    __asm__ volatile ("li t0, -1");
    800022ac:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    800022b0:	04542823          	sw	t0,80(s0)
    800022b4:	0280006f          	j	800022dc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                TCB::running->setFinished(true);
    800022b8:	00004797          	auipc	a5,0x4
    800022bc:	9f87b783          	ld	a5,-1544(a5) # 80005cb0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022c0:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    800022c4:	00100713          	li	a4,1
    800022c8:	02e78023          	sb	a4,32(a5)
                TCB::dispatch();
    800022cc:	00000097          	auipc	ra,0x0
    800022d0:	ca8080e7          	jalr	-856(ra) # 80001f74 <_ZN3TCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    800022d4:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    800022d8:	04542823          	sw	t0,80(s0)
        w_sstatus(sstatus);
    800022dc:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800022e0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800022e4:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800022e8:	14179073          	csrw	sepc,a5
}
    800022ec:	f2dff06f          	j	80002218 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                TCB::dispatch();
    800022f0:	00000097          	auipc	ra,0x0
    800022f4:	c84080e7          	jalr	-892(ra) # 80001f74 <_ZN3TCB8dispatchEv>
                break;
    800022f8:	fe5ff06f          	j	800022dc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    800022fc:	00058513          	mv	a0,a1
                TCB::join(handle);
    80002300:	00000097          	auipc	ra,0x0
    80002304:	ce4080e7          	jalr	-796(ra) # 80001fe4 <_ZN3TCB4joinEPS_>
                break;
    80002308:	fd5ff06f          	j	800022dc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a2" : "=r" (init));
    8000230c:	00060513          	mv	a0,a2
    80002310:	0005051b          	sext.w	a0,a0
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80002314:	00058493          	mv	s1,a1
                *semHandle = MySemaphore::createSemaphore(init);
    80002318:	fffff097          	auipc	ra,0xfffff
    8000231c:	440080e7          	jalr	1088(ra) # 80001758 <_ZN11MySemaphore15createSemaphoreEj>
    80002320:	00a4b023          	sd	a0,0(s1)
                if(*semHandle != nullptr) {
    80002324:	00050863          	beqz	a0,80002334 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    __asm__ volatile ("li t0, 0");
    80002328:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    8000232c:	04542823          	sw	t0,80(s0)
    80002330:	fadff06f          	j	800022dc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    __asm__ volatile ("li t0, -1");
    80002334:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002338:	04542823          	sw	t0,80(s0)
    8000233c:	fa1ff06f          	j	800022dc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002340:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    80002344:	00050c63          	beqz	a0,8000235c <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    returnValue = semHandlePtr->close();
    80002348:	fffff097          	auipc	ra,0xfffff
    8000234c:	458080e7          	jalr	1112(ra) # 800017a0 <_ZN11MySemaphore5closeEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002350:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002354:	04542823          	sw	t0,80(s0)
                break;
    80002358:	f85ff06f          	j	800022dc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                else returnValue = -2;
    8000235c:	ffe00513          	li	a0,-2
    80002360:	ff1ff06f          	j	80002350 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002364:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    80002368:	00050c63          	beqz	a0,80002380 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                    returnValue = semHandlePtr->wait();
    8000236c:	fffff097          	auipc	ra,0xfffff
    80002370:	284080e7          	jalr	644(ra) # 800015f0 <_ZN11MySemaphore4waitEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002374:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002378:	04542823          	sw	t0,80(s0)
                break;
    8000237c:	f61ff06f          	j	800022dc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                else returnValue = -2;
    80002380:	ffe00513          	li	a0,-2
    80002384:	ff1ff06f          	j	80002374 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002388:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr)
    8000238c:	00050c63          	beqz	a0,800023a4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    returnValue = semHandlePtr->signal();
    80002390:	fffff097          	auipc	ra,0xfffff
    80002394:	32c080e7          	jalr	812(ra) # 800016bc <_ZN11MySemaphore6signalEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002398:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    8000239c:	04542823          	sw	t0,80(s0)
                break;
    800023a0:	f3dff06f          	j	800022dc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    returnValue = -2;
    800023a4:	ffe00513          	li	a0,-2
    800023a8:	ff1ff06f          	j	80002398 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                TCB::dispatch();
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	bc8080e7          	jalr	-1080(ra) # 80001f74 <_ZN3TCB8dispatchEv>
                break;
    800023b4:	f29ff06f          	j	800022dc <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

00000000800023b8 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    800023b8:	ff010113          	addi	sp,sp,-16
    800023bc:	00113423          	sd	ra,8(sp)
    800023c0:	00813023          	sd	s0,0(sp)
    800023c4:	01010413          	addi	s0,sp,16
    console_handler();
    800023c8:	00002097          	auipc	ra,0x2
    800023cc:	60c080e7          	jalr	1548(ra) # 800049d4 <console_handler>
}
    800023d0:	00813083          	ld	ra,8(sp)
    800023d4:	00013403          	ld	s0,0(sp)
    800023d8:	01010113          	addi	sp,sp,16
    800023dc:	00008067          	ret

00000000800023e0 <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    800023e0:	ff010113          	addi	sp,sp,-16
    800023e4:	00813423          	sd	s0,8(sp)
    800023e8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800023ec:	00200793          	li	a5,2
    800023f0:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
    800023f4:	00813403          	ld	s0,8(sp)
    800023f8:	01010113          	addi	sp,sp,16
    800023fc:	00008067          	ret

0000000080002400 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00813423          	sd	s0,8(sp)
    80002408:	01010413          	addi	s0,sp,16
    8000240c:	00100793          	li	a5,1
    80002410:	00f50863          	beq	a0,a5,80002420 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002414:	00813403          	ld	s0,8(sp)
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00008067          	ret
    80002420:	000107b7          	lui	a5,0x10
    80002424:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002428:	fef596e3          	bne	a1,a5,80002414 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    8000242c:	00004797          	auipc	a5,0x4
    80002430:	8ec78793          	addi	a5,a5,-1812 # 80005d18 <_ZN9Scheduler16readyThreadQueueE>
    80002434:	0007b023          	sd	zero,0(a5)
    80002438:	0007b423          	sd	zero,8(a5)
    8000243c:	fd9ff06f          	j	80002414 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002440 <_ZN9Scheduler3getEv>:
{
    80002440:	fe010113          	addi	sp,sp,-32
    80002444:	00113c23          	sd	ra,24(sp)
    80002448:	00813823          	sd	s0,16(sp)
    8000244c:	00913423          	sd	s1,8(sp)
    80002450:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002454:	00004517          	auipc	a0,0x4
    80002458:	8c453503          	ld	a0,-1852(a0) # 80005d18 <_ZN9Scheduler16readyThreadQueueE>
    8000245c:	04050263          	beqz	a0,800024a0 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002460:	00853783          	ld	a5,8(a0)
    80002464:	00004717          	auipc	a4,0x4
    80002468:	8af73a23          	sd	a5,-1868(a4) # 80005d18 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    8000246c:	02078463          	beqz	a5,80002494 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002470:	00053483          	ld	s1,0(a0)
        delete elem;
    80002474:	00000097          	auipc	ra,0x0
    80002478:	c00080e7          	jalr	-1024(ra) # 80002074 <_ZdlPv>
}
    8000247c:	00048513          	mv	a0,s1
    80002480:	01813083          	ld	ra,24(sp)
    80002484:	01013403          	ld	s0,16(sp)
    80002488:	00813483          	ld	s1,8(sp)
    8000248c:	02010113          	addi	sp,sp,32
    80002490:	00008067          	ret
        if (!head) { tail = 0; }
    80002494:	00004797          	auipc	a5,0x4
    80002498:	8807b623          	sd	zero,-1908(a5) # 80005d20 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000249c:	fd5ff06f          	j	80002470 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800024a0:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800024a4:	fd9ff06f          	j	8000247c <_ZN9Scheduler3getEv+0x3c>

00000000800024a8 <_ZN9Scheduler3putEP3TCB>:
{
    800024a8:	fe010113          	addi	sp,sp,-32
    800024ac:	00113c23          	sd	ra,24(sp)
    800024b0:	00813823          	sd	s0,16(sp)
    800024b4:	00913423          	sd	s1,8(sp)
    800024b8:	02010413          	addi	s0,sp,32
    800024bc:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800024c0:	01000513          	li	a0,16
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	b60080e7          	jalr	-1184(ra) # 80002024 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800024cc:	00953023          	sd	s1,0(a0)
    800024d0:	00053423          	sd	zero,8(a0)
        if (tail)
    800024d4:	00004797          	auipc	a5,0x4
    800024d8:	84c7b783          	ld	a5,-1972(a5) # 80005d20 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024dc:	02078263          	beqz	a5,80002500 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800024e0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800024e4:	00004797          	auipc	a5,0x4
    800024e8:	82a7be23          	sd	a0,-1988(a5) # 80005d20 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024ec:	01813083          	ld	ra,24(sp)
    800024f0:	01013403          	ld	s0,16(sp)
    800024f4:	00813483          	ld	s1,8(sp)
    800024f8:	02010113          	addi	sp,sp,32
    800024fc:	00008067          	ret
            head = tail = elem;
    80002500:	00004797          	auipc	a5,0x4
    80002504:	81878793          	addi	a5,a5,-2024 # 80005d18 <_ZN9Scheduler16readyThreadQueueE>
    80002508:	00a7b423          	sd	a0,8(a5)
    8000250c:	00a7b023          	sd	a0,0(a5)
    80002510:	fddff06f          	j	800024ec <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002514 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002514:	ff010113          	addi	sp,sp,-16
    80002518:	00113423          	sd	ra,8(sp)
    8000251c:	00813023          	sd	s0,0(sp)
    80002520:	01010413          	addi	s0,sp,16
    80002524:	000105b7          	lui	a1,0x10
    80002528:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000252c:	00100513          	li	a0,1
    80002530:	00000097          	auipc	ra,0x0
    80002534:	ed0080e7          	jalr	-304(ra) # 80002400 <_Z41__static_initialization_and_destruction_0ii>
    80002538:	00813083          	ld	ra,8(sp)
    8000253c:	00013403          	ld	s0,0(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80002548:	fd010113          	addi	sp,sp,-48
    8000254c:	02113423          	sd	ra,40(sp)
    80002550:	02813023          	sd	s0,32(sp)
    80002554:	00913c23          	sd	s1,24(sp)
    80002558:	01213823          	sd	s2,16(sp)
    8000255c:	03010413          	addi	s0,sp,48
    80002560:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002564:	100027f3          	csrr	a5,sstatus
    80002568:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000256c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002570:	00200793          	li	a5,2
    80002574:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002578:	0004c503          	lbu	a0,0(s1)
    8000257c:	00050a63          	beqz	a0,80002590 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80002580:	00002097          	auipc	ra,0x2
    80002584:	3e0080e7          	jalr	992(ra) # 80004960 <__putc>
        string++;
    80002588:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000258c:	fedff06f          	j	80002578 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002590:	0009091b          	sext.w	s2,s2
    80002594:	00297913          	andi	s2,s2,2
    80002598:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000259c:	10092073          	csrs	sstatus,s2
}
    800025a0:	02813083          	ld	ra,40(sp)
    800025a4:	02013403          	ld	s0,32(sp)
    800025a8:	01813483          	ld	s1,24(sp)
    800025ac:	01013903          	ld	s2,16(sp)
    800025b0:	03010113          	addi	sp,sp,48
    800025b4:	00008067          	ret

00000000800025b8 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800025b8:	fc010113          	addi	sp,sp,-64
    800025bc:	02113c23          	sd	ra,56(sp)
    800025c0:	02813823          	sd	s0,48(sp)
    800025c4:	02913423          	sd	s1,40(sp)
    800025c8:	03213023          	sd	s2,32(sp)
    800025cc:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800025d0:	100027f3          	csrr	a5,sstatus
    800025d4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800025d8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800025dc:	00200793          	li	a5,2
    800025e0:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800025e4:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800025e8:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800025ec:	00a00613          	li	a2,10
    800025f0:	02c5773b          	remuw	a4,a0,a2
    800025f4:	02071693          	slli	a3,a4,0x20
    800025f8:	0206d693          	srli	a3,a3,0x20
    800025fc:	00003717          	auipc	a4,0x3
    80002600:	cac70713          	addi	a4,a4,-852 # 800052a8 <_ZZ12printIntegermE6digits>
    80002604:	00d70733          	add	a4,a4,a3
    80002608:	00074703          	lbu	a4,0(a4)
    8000260c:	fe040693          	addi	a3,s0,-32
    80002610:	009687b3          	add	a5,a3,s1
    80002614:	0014849b          	addiw	s1,s1,1
    80002618:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    8000261c:	0005071b          	sext.w	a4,a0
    80002620:	02c5553b          	divuw	a0,a0,a2
    80002624:	00900793          	li	a5,9
    80002628:	fce7e2e3          	bltu	a5,a4,800025ec <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    8000262c:	fff4849b          	addiw	s1,s1,-1
    80002630:	0004ce63          	bltz	s1,8000264c <_Z12printIntegerm+0x94>
    80002634:	fe040793          	addi	a5,s0,-32
    80002638:	009787b3          	add	a5,a5,s1
    8000263c:	ff07c503          	lbu	a0,-16(a5)
    80002640:	00002097          	auipc	ra,0x2
    80002644:	320080e7          	jalr	800(ra) # 80004960 <__putc>
    80002648:	fe5ff06f          	j	8000262c <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000264c:	0009091b          	sext.w	s2,s2
    80002650:	00297913          	andi	s2,s2,2
    80002654:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002658:	10092073          	csrs	sstatus,s2
    8000265c:	03813083          	ld	ra,56(sp)
    80002660:	03013403          	ld	s0,48(sp)
    80002664:	02813483          	ld	s1,40(sp)
    80002668:	02013903          	ld	s2,32(sp)
    8000266c:	04010113          	addi	sp,sp,64
    80002670:	00008067          	ret

0000000080002674 <start>:
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00813423          	sd	s0,8(sp)
    8000267c:	01010413          	addi	s0,sp,16
    80002680:	300027f3          	csrr	a5,mstatus
    80002684:	ffffe737          	lui	a4,0xffffe
    80002688:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff785f>
    8000268c:	00e7f7b3          	and	a5,a5,a4
    80002690:	00001737          	lui	a4,0x1
    80002694:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002698:	00e7e7b3          	or	a5,a5,a4
    8000269c:	30079073          	csrw	mstatus,a5
    800026a0:	00000797          	auipc	a5,0x0
    800026a4:	16078793          	addi	a5,a5,352 # 80002800 <system_main>
    800026a8:	34179073          	csrw	mepc,a5
    800026ac:	00000793          	li	a5,0
    800026b0:	18079073          	csrw	satp,a5
    800026b4:	000107b7          	lui	a5,0x10
    800026b8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800026bc:	30279073          	csrw	medeleg,a5
    800026c0:	30379073          	csrw	mideleg,a5
    800026c4:	104027f3          	csrr	a5,sie
    800026c8:	2227e793          	ori	a5,a5,546
    800026cc:	10479073          	csrw	sie,a5
    800026d0:	fff00793          	li	a5,-1
    800026d4:	00a7d793          	srli	a5,a5,0xa
    800026d8:	3b079073          	csrw	pmpaddr0,a5
    800026dc:	00f00793          	li	a5,15
    800026e0:	3a079073          	csrw	pmpcfg0,a5
    800026e4:	f14027f3          	csrr	a5,mhartid
    800026e8:	0200c737          	lui	a4,0x200c
    800026ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800026f0:	0007869b          	sext.w	a3,a5
    800026f4:	00269713          	slli	a4,a3,0x2
    800026f8:	000f4637          	lui	a2,0xf4
    800026fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002700:	00d70733          	add	a4,a4,a3
    80002704:	0037979b          	slliw	a5,a5,0x3
    80002708:	020046b7          	lui	a3,0x2004
    8000270c:	00d787b3          	add	a5,a5,a3
    80002710:	00c585b3          	add	a1,a1,a2
    80002714:	00371693          	slli	a3,a4,0x3
    80002718:	00003717          	auipc	a4,0x3
    8000271c:	61870713          	addi	a4,a4,1560 # 80005d30 <timer_scratch>
    80002720:	00b7b023          	sd	a1,0(a5)
    80002724:	00d70733          	add	a4,a4,a3
    80002728:	00f73c23          	sd	a5,24(a4)
    8000272c:	02c73023          	sd	a2,32(a4)
    80002730:	34071073          	csrw	mscratch,a4
    80002734:	00000797          	auipc	a5,0x0
    80002738:	6ec78793          	addi	a5,a5,1772 # 80002e20 <timervec>
    8000273c:	30579073          	csrw	mtvec,a5
    80002740:	300027f3          	csrr	a5,mstatus
    80002744:	0087e793          	ori	a5,a5,8
    80002748:	30079073          	csrw	mstatus,a5
    8000274c:	304027f3          	csrr	a5,mie
    80002750:	0807e793          	ori	a5,a5,128
    80002754:	30479073          	csrw	mie,a5
    80002758:	f14027f3          	csrr	a5,mhartid
    8000275c:	0007879b          	sext.w	a5,a5
    80002760:	00078213          	mv	tp,a5
    80002764:	30200073          	mret
    80002768:	00813403          	ld	s0,8(sp)
    8000276c:	01010113          	addi	sp,sp,16
    80002770:	00008067          	ret

0000000080002774 <timerinit>:
    80002774:	ff010113          	addi	sp,sp,-16
    80002778:	00813423          	sd	s0,8(sp)
    8000277c:	01010413          	addi	s0,sp,16
    80002780:	f14027f3          	csrr	a5,mhartid
    80002784:	0200c737          	lui	a4,0x200c
    80002788:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000278c:	0007869b          	sext.w	a3,a5
    80002790:	00269713          	slli	a4,a3,0x2
    80002794:	000f4637          	lui	a2,0xf4
    80002798:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000279c:	00d70733          	add	a4,a4,a3
    800027a0:	0037979b          	slliw	a5,a5,0x3
    800027a4:	020046b7          	lui	a3,0x2004
    800027a8:	00d787b3          	add	a5,a5,a3
    800027ac:	00c585b3          	add	a1,a1,a2
    800027b0:	00371693          	slli	a3,a4,0x3
    800027b4:	00003717          	auipc	a4,0x3
    800027b8:	57c70713          	addi	a4,a4,1404 # 80005d30 <timer_scratch>
    800027bc:	00b7b023          	sd	a1,0(a5)
    800027c0:	00d70733          	add	a4,a4,a3
    800027c4:	00f73c23          	sd	a5,24(a4)
    800027c8:	02c73023          	sd	a2,32(a4)
    800027cc:	34071073          	csrw	mscratch,a4
    800027d0:	00000797          	auipc	a5,0x0
    800027d4:	65078793          	addi	a5,a5,1616 # 80002e20 <timervec>
    800027d8:	30579073          	csrw	mtvec,a5
    800027dc:	300027f3          	csrr	a5,mstatus
    800027e0:	0087e793          	ori	a5,a5,8
    800027e4:	30079073          	csrw	mstatus,a5
    800027e8:	304027f3          	csrr	a5,mie
    800027ec:	0807e793          	ori	a5,a5,128
    800027f0:	30479073          	csrw	mie,a5
    800027f4:	00813403          	ld	s0,8(sp)
    800027f8:	01010113          	addi	sp,sp,16
    800027fc:	00008067          	ret

0000000080002800 <system_main>:
    80002800:	fe010113          	addi	sp,sp,-32
    80002804:	00813823          	sd	s0,16(sp)
    80002808:	00913423          	sd	s1,8(sp)
    8000280c:	00113c23          	sd	ra,24(sp)
    80002810:	02010413          	addi	s0,sp,32
    80002814:	00000097          	auipc	ra,0x0
    80002818:	0c4080e7          	jalr	196(ra) # 800028d8 <cpuid>
    8000281c:	00003497          	auipc	s1,0x3
    80002820:	4c448493          	addi	s1,s1,1220 # 80005ce0 <started>
    80002824:	02050263          	beqz	a0,80002848 <system_main+0x48>
    80002828:	0004a783          	lw	a5,0(s1)
    8000282c:	0007879b          	sext.w	a5,a5
    80002830:	fe078ce3          	beqz	a5,80002828 <system_main+0x28>
    80002834:	0ff0000f          	fence
    80002838:	00003517          	auipc	a0,0x3
    8000283c:	ab050513          	addi	a0,a0,-1360 # 800052e8 <_ZZ12printIntegermE6digits+0x40>
    80002840:	00001097          	auipc	ra,0x1
    80002844:	a7c080e7          	jalr	-1412(ra) # 800032bc <panic>
    80002848:	00001097          	auipc	ra,0x1
    8000284c:	9d0080e7          	jalr	-1584(ra) # 80003218 <consoleinit>
    80002850:	00001097          	auipc	ra,0x1
    80002854:	15c080e7          	jalr	348(ra) # 800039ac <printfinit>
    80002858:	00003517          	auipc	a0,0x3
    8000285c:	93050513          	addi	a0,a0,-1744 # 80005188 <kvmincrease+0x708>
    80002860:	00001097          	auipc	ra,0x1
    80002864:	ab8080e7          	jalr	-1352(ra) # 80003318 <__printf>
    80002868:	00003517          	auipc	a0,0x3
    8000286c:	a5050513          	addi	a0,a0,-1456 # 800052b8 <_ZZ12printIntegermE6digits+0x10>
    80002870:	00001097          	auipc	ra,0x1
    80002874:	aa8080e7          	jalr	-1368(ra) # 80003318 <__printf>
    80002878:	00003517          	auipc	a0,0x3
    8000287c:	91050513          	addi	a0,a0,-1776 # 80005188 <kvmincrease+0x708>
    80002880:	00001097          	auipc	ra,0x1
    80002884:	a98080e7          	jalr	-1384(ra) # 80003318 <__printf>
    80002888:	00001097          	auipc	ra,0x1
    8000288c:	4b0080e7          	jalr	1200(ra) # 80003d38 <kinit>
    80002890:	00000097          	auipc	ra,0x0
    80002894:	148080e7          	jalr	328(ra) # 800029d8 <trapinit>
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	16c080e7          	jalr	364(ra) # 80002a04 <trapinithart>
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	5c0080e7          	jalr	1472(ra) # 80002e60 <plicinit>
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	5e0080e7          	jalr	1504(ra) # 80002e88 <plicinithart>
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	078080e7          	jalr	120(ra) # 80002928 <userinit>
    800028b8:	0ff0000f          	fence
    800028bc:	00100793          	li	a5,1
    800028c0:	00003517          	auipc	a0,0x3
    800028c4:	a1050513          	addi	a0,a0,-1520 # 800052d0 <_ZZ12printIntegermE6digits+0x28>
    800028c8:	00f4a023          	sw	a5,0(s1)
    800028cc:	00001097          	auipc	ra,0x1
    800028d0:	a4c080e7          	jalr	-1460(ra) # 80003318 <__printf>
    800028d4:	0000006f          	j	800028d4 <system_main+0xd4>

00000000800028d8 <cpuid>:
    800028d8:	ff010113          	addi	sp,sp,-16
    800028dc:	00813423          	sd	s0,8(sp)
    800028e0:	01010413          	addi	s0,sp,16
    800028e4:	00020513          	mv	a0,tp
    800028e8:	00813403          	ld	s0,8(sp)
    800028ec:	0005051b          	sext.w	a0,a0
    800028f0:	01010113          	addi	sp,sp,16
    800028f4:	00008067          	ret

00000000800028f8 <mycpu>:
    800028f8:	ff010113          	addi	sp,sp,-16
    800028fc:	00813423          	sd	s0,8(sp)
    80002900:	01010413          	addi	s0,sp,16
    80002904:	00020793          	mv	a5,tp
    80002908:	00813403          	ld	s0,8(sp)
    8000290c:	0007879b          	sext.w	a5,a5
    80002910:	00779793          	slli	a5,a5,0x7
    80002914:	00004517          	auipc	a0,0x4
    80002918:	44c50513          	addi	a0,a0,1100 # 80006d60 <cpus>
    8000291c:	00f50533          	add	a0,a0,a5
    80002920:	01010113          	addi	sp,sp,16
    80002924:	00008067          	ret

0000000080002928 <userinit>:
    80002928:	ff010113          	addi	sp,sp,-16
    8000292c:	00813423          	sd	s0,8(sp)
    80002930:	01010413          	addi	s0,sp,16
    80002934:	00813403          	ld	s0,8(sp)
    80002938:	01010113          	addi	sp,sp,16
    8000293c:	fffff317          	auipc	t1,0xfffff
    80002940:	32030067          	jr	800(t1) # 80001c5c <main>

0000000080002944 <either_copyout>:
    80002944:	ff010113          	addi	sp,sp,-16
    80002948:	00813023          	sd	s0,0(sp)
    8000294c:	00113423          	sd	ra,8(sp)
    80002950:	01010413          	addi	s0,sp,16
    80002954:	02051663          	bnez	a0,80002980 <either_copyout+0x3c>
    80002958:	00058513          	mv	a0,a1
    8000295c:	00060593          	mv	a1,a2
    80002960:	0006861b          	sext.w	a2,a3
    80002964:	00002097          	auipc	ra,0x2
    80002968:	c60080e7          	jalr	-928(ra) # 800045c4 <__memmove>
    8000296c:	00813083          	ld	ra,8(sp)
    80002970:	00013403          	ld	s0,0(sp)
    80002974:	00000513          	li	a0,0
    80002978:	01010113          	addi	sp,sp,16
    8000297c:	00008067          	ret
    80002980:	00003517          	auipc	a0,0x3
    80002984:	99050513          	addi	a0,a0,-1648 # 80005310 <_ZZ12printIntegermE6digits+0x68>
    80002988:	00001097          	auipc	ra,0x1
    8000298c:	934080e7          	jalr	-1740(ra) # 800032bc <panic>

0000000080002990 <either_copyin>:
    80002990:	ff010113          	addi	sp,sp,-16
    80002994:	00813023          	sd	s0,0(sp)
    80002998:	00113423          	sd	ra,8(sp)
    8000299c:	01010413          	addi	s0,sp,16
    800029a0:	02059463          	bnez	a1,800029c8 <either_copyin+0x38>
    800029a4:	00060593          	mv	a1,a2
    800029a8:	0006861b          	sext.w	a2,a3
    800029ac:	00002097          	auipc	ra,0x2
    800029b0:	c18080e7          	jalr	-1000(ra) # 800045c4 <__memmove>
    800029b4:	00813083          	ld	ra,8(sp)
    800029b8:	00013403          	ld	s0,0(sp)
    800029bc:	00000513          	li	a0,0
    800029c0:	01010113          	addi	sp,sp,16
    800029c4:	00008067          	ret
    800029c8:	00003517          	auipc	a0,0x3
    800029cc:	97050513          	addi	a0,a0,-1680 # 80005338 <_ZZ12printIntegermE6digits+0x90>
    800029d0:	00001097          	auipc	ra,0x1
    800029d4:	8ec080e7          	jalr	-1812(ra) # 800032bc <panic>

00000000800029d8 <trapinit>:
    800029d8:	ff010113          	addi	sp,sp,-16
    800029dc:	00813423          	sd	s0,8(sp)
    800029e0:	01010413          	addi	s0,sp,16
    800029e4:	00813403          	ld	s0,8(sp)
    800029e8:	00003597          	auipc	a1,0x3
    800029ec:	97858593          	addi	a1,a1,-1672 # 80005360 <_ZZ12printIntegermE6digits+0xb8>
    800029f0:	00004517          	auipc	a0,0x4
    800029f4:	3f050513          	addi	a0,a0,1008 # 80006de0 <tickslock>
    800029f8:	01010113          	addi	sp,sp,16
    800029fc:	00001317          	auipc	t1,0x1
    80002a00:	5cc30067          	jr	1484(t1) # 80003fc8 <initlock>

0000000080002a04 <trapinithart>:
    80002a04:	ff010113          	addi	sp,sp,-16
    80002a08:	00813423          	sd	s0,8(sp)
    80002a0c:	01010413          	addi	s0,sp,16
    80002a10:	00000797          	auipc	a5,0x0
    80002a14:	30078793          	addi	a5,a5,768 # 80002d10 <kernelvec>
    80002a18:	10579073          	csrw	stvec,a5
    80002a1c:	00813403          	ld	s0,8(sp)
    80002a20:	01010113          	addi	sp,sp,16
    80002a24:	00008067          	ret

0000000080002a28 <usertrap>:
    80002a28:	ff010113          	addi	sp,sp,-16
    80002a2c:	00813423          	sd	s0,8(sp)
    80002a30:	01010413          	addi	s0,sp,16
    80002a34:	00813403          	ld	s0,8(sp)
    80002a38:	01010113          	addi	sp,sp,16
    80002a3c:	00008067          	ret

0000000080002a40 <usertrapret>:
    80002a40:	ff010113          	addi	sp,sp,-16
    80002a44:	00813423          	sd	s0,8(sp)
    80002a48:	01010413          	addi	s0,sp,16
    80002a4c:	00813403          	ld	s0,8(sp)
    80002a50:	01010113          	addi	sp,sp,16
    80002a54:	00008067          	ret

0000000080002a58 <kerneltrap>:
    80002a58:	fe010113          	addi	sp,sp,-32
    80002a5c:	00813823          	sd	s0,16(sp)
    80002a60:	00113c23          	sd	ra,24(sp)
    80002a64:	00913423          	sd	s1,8(sp)
    80002a68:	02010413          	addi	s0,sp,32
    80002a6c:	142025f3          	csrr	a1,scause
    80002a70:	100027f3          	csrr	a5,sstatus
    80002a74:	0027f793          	andi	a5,a5,2
    80002a78:	10079c63          	bnez	a5,80002b90 <kerneltrap+0x138>
    80002a7c:	142027f3          	csrr	a5,scause
    80002a80:	0207ce63          	bltz	a5,80002abc <kerneltrap+0x64>
    80002a84:	00003517          	auipc	a0,0x3
    80002a88:	92450513          	addi	a0,a0,-1756 # 800053a8 <_ZZ12printIntegermE6digits+0x100>
    80002a8c:	00001097          	auipc	ra,0x1
    80002a90:	88c080e7          	jalr	-1908(ra) # 80003318 <__printf>
    80002a94:	141025f3          	csrr	a1,sepc
    80002a98:	14302673          	csrr	a2,stval
    80002a9c:	00003517          	auipc	a0,0x3
    80002aa0:	91c50513          	addi	a0,a0,-1764 # 800053b8 <_ZZ12printIntegermE6digits+0x110>
    80002aa4:	00001097          	auipc	ra,0x1
    80002aa8:	874080e7          	jalr	-1932(ra) # 80003318 <__printf>
    80002aac:	00003517          	auipc	a0,0x3
    80002ab0:	92450513          	addi	a0,a0,-1756 # 800053d0 <_ZZ12printIntegermE6digits+0x128>
    80002ab4:	00001097          	auipc	ra,0x1
    80002ab8:	808080e7          	jalr	-2040(ra) # 800032bc <panic>
    80002abc:	0ff7f713          	andi	a4,a5,255
    80002ac0:	00900693          	li	a3,9
    80002ac4:	04d70063          	beq	a4,a3,80002b04 <kerneltrap+0xac>
    80002ac8:	fff00713          	li	a4,-1
    80002acc:	03f71713          	slli	a4,a4,0x3f
    80002ad0:	00170713          	addi	a4,a4,1
    80002ad4:	fae798e3          	bne	a5,a4,80002a84 <kerneltrap+0x2c>
    80002ad8:	00000097          	auipc	ra,0x0
    80002adc:	e00080e7          	jalr	-512(ra) # 800028d8 <cpuid>
    80002ae0:	06050663          	beqz	a0,80002b4c <kerneltrap+0xf4>
    80002ae4:	144027f3          	csrr	a5,sip
    80002ae8:	ffd7f793          	andi	a5,a5,-3
    80002aec:	14479073          	csrw	sip,a5
    80002af0:	01813083          	ld	ra,24(sp)
    80002af4:	01013403          	ld	s0,16(sp)
    80002af8:	00813483          	ld	s1,8(sp)
    80002afc:	02010113          	addi	sp,sp,32
    80002b00:	00008067          	ret
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	3d0080e7          	jalr	976(ra) # 80002ed4 <plic_claim>
    80002b0c:	00a00793          	li	a5,10
    80002b10:	00050493          	mv	s1,a0
    80002b14:	06f50863          	beq	a0,a5,80002b84 <kerneltrap+0x12c>
    80002b18:	fc050ce3          	beqz	a0,80002af0 <kerneltrap+0x98>
    80002b1c:	00050593          	mv	a1,a0
    80002b20:	00003517          	auipc	a0,0x3
    80002b24:	86850513          	addi	a0,a0,-1944 # 80005388 <_ZZ12printIntegermE6digits+0xe0>
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	7f0080e7          	jalr	2032(ra) # 80003318 <__printf>
    80002b30:	01013403          	ld	s0,16(sp)
    80002b34:	01813083          	ld	ra,24(sp)
    80002b38:	00048513          	mv	a0,s1
    80002b3c:	00813483          	ld	s1,8(sp)
    80002b40:	02010113          	addi	sp,sp,32
    80002b44:	00000317          	auipc	t1,0x0
    80002b48:	3c830067          	jr	968(t1) # 80002f0c <plic_complete>
    80002b4c:	00004517          	auipc	a0,0x4
    80002b50:	29450513          	addi	a0,a0,660 # 80006de0 <tickslock>
    80002b54:	00001097          	auipc	ra,0x1
    80002b58:	498080e7          	jalr	1176(ra) # 80003fec <acquire>
    80002b5c:	00003717          	auipc	a4,0x3
    80002b60:	18870713          	addi	a4,a4,392 # 80005ce4 <ticks>
    80002b64:	00072783          	lw	a5,0(a4)
    80002b68:	00004517          	auipc	a0,0x4
    80002b6c:	27850513          	addi	a0,a0,632 # 80006de0 <tickslock>
    80002b70:	0017879b          	addiw	a5,a5,1
    80002b74:	00f72023          	sw	a5,0(a4)
    80002b78:	00001097          	auipc	ra,0x1
    80002b7c:	540080e7          	jalr	1344(ra) # 800040b8 <release>
    80002b80:	f65ff06f          	j	80002ae4 <kerneltrap+0x8c>
    80002b84:	00001097          	auipc	ra,0x1
    80002b88:	09c080e7          	jalr	156(ra) # 80003c20 <uartintr>
    80002b8c:	fa5ff06f          	j	80002b30 <kerneltrap+0xd8>
    80002b90:	00002517          	auipc	a0,0x2
    80002b94:	7d850513          	addi	a0,a0,2008 # 80005368 <_ZZ12printIntegermE6digits+0xc0>
    80002b98:	00000097          	auipc	ra,0x0
    80002b9c:	724080e7          	jalr	1828(ra) # 800032bc <panic>

0000000080002ba0 <clockintr>:
    80002ba0:	fe010113          	addi	sp,sp,-32
    80002ba4:	00813823          	sd	s0,16(sp)
    80002ba8:	00913423          	sd	s1,8(sp)
    80002bac:	00113c23          	sd	ra,24(sp)
    80002bb0:	02010413          	addi	s0,sp,32
    80002bb4:	00004497          	auipc	s1,0x4
    80002bb8:	22c48493          	addi	s1,s1,556 # 80006de0 <tickslock>
    80002bbc:	00048513          	mv	a0,s1
    80002bc0:	00001097          	auipc	ra,0x1
    80002bc4:	42c080e7          	jalr	1068(ra) # 80003fec <acquire>
    80002bc8:	00003717          	auipc	a4,0x3
    80002bcc:	11c70713          	addi	a4,a4,284 # 80005ce4 <ticks>
    80002bd0:	00072783          	lw	a5,0(a4)
    80002bd4:	01013403          	ld	s0,16(sp)
    80002bd8:	01813083          	ld	ra,24(sp)
    80002bdc:	00048513          	mv	a0,s1
    80002be0:	0017879b          	addiw	a5,a5,1
    80002be4:	00813483          	ld	s1,8(sp)
    80002be8:	00f72023          	sw	a5,0(a4)
    80002bec:	02010113          	addi	sp,sp,32
    80002bf0:	00001317          	auipc	t1,0x1
    80002bf4:	4c830067          	jr	1224(t1) # 800040b8 <release>

0000000080002bf8 <devintr>:
    80002bf8:	142027f3          	csrr	a5,scause
    80002bfc:	00000513          	li	a0,0
    80002c00:	0007c463          	bltz	a5,80002c08 <devintr+0x10>
    80002c04:	00008067          	ret
    80002c08:	fe010113          	addi	sp,sp,-32
    80002c0c:	00813823          	sd	s0,16(sp)
    80002c10:	00113c23          	sd	ra,24(sp)
    80002c14:	00913423          	sd	s1,8(sp)
    80002c18:	02010413          	addi	s0,sp,32
    80002c1c:	0ff7f713          	andi	a4,a5,255
    80002c20:	00900693          	li	a3,9
    80002c24:	04d70c63          	beq	a4,a3,80002c7c <devintr+0x84>
    80002c28:	fff00713          	li	a4,-1
    80002c2c:	03f71713          	slli	a4,a4,0x3f
    80002c30:	00170713          	addi	a4,a4,1
    80002c34:	00e78c63          	beq	a5,a4,80002c4c <devintr+0x54>
    80002c38:	01813083          	ld	ra,24(sp)
    80002c3c:	01013403          	ld	s0,16(sp)
    80002c40:	00813483          	ld	s1,8(sp)
    80002c44:	02010113          	addi	sp,sp,32
    80002c48:	00008067          	ret
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	c8c080e7          	jalr	-884(ra) # 800028d8 <cpuid>
    80002c54:	06050663          	beqz	a0,80002cc0 <devintr+0xc8>
    80002c58:	144027f3          	csrr	a5,sip
    80002c5c:	ffd7f793          	andi	a5,a5,-3
    80002c60:	14479073          	csrw	sip,a5
    80002c64:	01813083          	ld	ra,24(sp)
    80002c68:	01013403          	ld	s0,16(sp)
    80002c6c:	00813483          	ld	s1,8(sp)
    80002c70:	00200513          	li	a0,2
    80002c74:	02010113          	addi	sp,sp,32
    80002c78:	00008067          	ret
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	258080e7          	jalr	600(ra) # 80002ed4 <plic_claim>
    80002c84:	00a00793          	li	a5,10
    80002c88:	00050493          	mv	s1,a0
    80002c8c:	06f50663          	beq	a0,a5,80002cf8 <devintr+0x100>
    80002c90:	00100513          	li	a0,1
    80002c94:	fa0482e3          	beqz	s1,80002c38 <devintr+0x40>
    80002c98:	00048593          	mv	a1,s1
    80002c9c:	00002517          	auipc	a0,0x2
    80002ca0:	6ec50513          	addi	a0,a0,1772 # 80005388 <_ZZ12printIntegermE6digits+0xe0>
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	674080e7          	jalr	1652(ra) # 80003318 <__printf>
    80002cac:	00048513          	mv	a0,s1
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	25c080e7          	jalr	604(ra) # 80002f0c <plic_complete>
    80002cb8:	00100513          	li	a0,1
    80002cbc:	f7dff06f          	j	80002c38 <devintr+0x40>
    80002cc0:	00004517          	auipc	a0,0x4
    80002cc4:	12050513          	addi	a0,a0,288 # 80006de0 <tickslock>
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	324080e7          	jalr	804(ra) # 80003fec <acquire>
    80002cd0:	00003717          	auipc	a4,0x3
    80002cd4:	01470713          	addi	a4,a4,20 # 80005ce4 <ticks>
    80002cd8:	00072783          	lw	a5,0(a4)
    80002cdc:	00004517          	auipc	a0,0x4
    80002ce0:	10450513          	addi	a0,a0,260 # 80006de0 <tickslock>
    80002ce4:	0017879b          	addiw	a5,a5,1
    80002ce8:	00f72023          	sw	a5,0(a4)
    80002cec:	00001097          	auipc	ra,0x1
    80002cf0:	3cc080e7          	jalr	972(ra) # 800040b8 <release>
    80002cf4:	f65ff06f          	j	80002c58 <devintr+0x60>
    80002cf8:	00001097          	auipc	ra,0x1
    80002cfc:	f28080e7          	jalr	-216(ra) # 80003c20 <uartintr>
    80002d00:	fadff06f          	j	80002cac <devintr+0xb4>
	...

0000000080002d10 <kernelvec>:
    80002d10:	f0010113          	addi	sp,sp,-256
    80002d14:	00113023          	sd	ra,0(sp)
    80002d18:	00213423          	sd	sp,8(sp)
    80002d1c:	00313823          	sd	gp,16(sp)
    80002d20:	00413c23          	sd	tp,24(sp)
    80002d24:	02513023          	sd	t0,32(sp)
    80002d28:	02613423          	sd	t1,40(sp)
    80002d2c:	02713823          	sd	t2,48(sp)
    80002d30:	02813c23          	sd	s0,56(sp)
    80002d34:	04913023          	sd	s1,64(sp)
    80002d38:	04a13423          	sd	a0,72(sp)
    80002d3c:	04b13823          	sd	a1,80(sp)
    80002d40:	04c13c23          	sd	a2,88(sp)
    80002d44:	06d13023          	sd	a3,96(sp)
    80002d48:	06e13423          	sd	a4,104(sp)
    80002d4c:	06f13823          	sd	a5,112(sp)
    80002d50:	07013c23          	sd	a6,120(sp)
    80002d54:	09113023          	sd	a7,128(sp)
    80002d58:	09213423          	sd	s2,136(sp)
    80002d5c:	09313823          	sd	s3,144(sp)
    80002d60:	09413c23          	sd	s4,152(sp)
    80002d64:	0b513023          	sd	s5,160(sp)
    80002d68:	0b613423          	sd	s6,168(sp)
    80002d6c:	0b713823          	sd	s7,176(sp)
    80002d70:	0b813c23          	sd	s8,184(sp)
    80002d74:	0d913023          	sd	s9,192(sp)
    80002d78:	0da13423          	sd	s10,200(sp)
    80002d7c:	0db13823          	sd	s11,208(sp)
    80002d80:	0dc13c23          	sd	t3,216(sp)
    80002d84:	0fd13023          	sd	t4,224(sp)
    80002d88:	0fe13423          	sd	t5,232(sp)
    80002d8c:	0ff13823          	sd	t6,240(sp)
    80002d90:	cc9ff0ef          	jal	ra,80002a58 <kerneltrap>
    80002d94:	00013083          	ld	ra,0(sp)
    80002d98:	00813103          	ld	sp,8(sp)
    80002d9c:	01013183          	ld	gp,16(sp)
    80002da0:	02013283          	ld	t0,32(sp)
    80002da4:	02813303          	ld	t1,40(sp)
    80002da8:	03013383          	ld	t2,48(sp)
    80002dac:	03813403          	ld	s0,56(sp)
    80002db0:	04013483          	ld	s1,64(sp)
    80002db4:	04813503          	ld	a0,72(sp)
    80002db8:	05013583          	ld	a1,80(sp)
    80002dbc:	05813603          	ld	a2,88(sp)
    80002dc0:	06013683          	ld	a3,96(sp)
    80002dc4:	06813703          	ld	a4,104(sp)
    80002dc8:	07013783          	ld	a5,112(sp)
    80002dcc:	07813803          	ld	a6,120(sp)
    80002dd0:	08013883          	ld	a7,128(sp)
    80002dd4:	08813903          	ld	s2,136(sp)
    80002dd8:	09013983          	ld	s3,144(sp)
    80002ddc:	09813a03          	ld	s4,152(sp)
    80002de0:	0a013a83          	ld	s5,160(sp)
    80002de4:	0a813b03          	ld	s6,168(sp)
    80002de8:	0b013b83          	ld	s7,176(sp)
    80002dec:	0b813c03          	ld	s8,184(sp)
    80002df0:	0c013c83          	ld	s9,192(sp)
    80002df4:	0c813d03          	ld	s10,200(sp)
    80002df8:	0d013d83          	ld	s11,208(sp)
    80002dfc:	0d813e03          	ld	t3,216(sp)
    80002e00:	0e013e83          	ld	t4,224(sp)
    80002e04:	0e813f03          	ld	t5,232(sp)
    80002e08:	0f013f83          	ld	t6,240(sp)
    80002e0c:	10010113          	addi	sp,sp,256
    80002e10:	10200073          	sret
    80002e14:	00000013          	nop
    80002e18:	00000013          	nop
    80002e1c:	00000013          	nop

0000000080002e20 <timervec>:
    80002e20:	34051573          	csrrw	a0,mscratch,a0
    80002e24:	00b53023          	sd	a1,0(a0)
    80002e28:	00c53423          	sd	a2,8(a0)
    80002e2c:	00d53823          	sd	a3,16(a0)
    80002e30:	01853583          	ld	a1,24(a0)
    80002e34:	02053603          	ld	a2,32(a0)
    80002e38:	0005b683          	ld	a3,0(a1)
    80002e3c:	00c686b3          	add	a3,a3,a2
    80002e40:	00d5b023          	sd	a3,0(a1)
    80002e44:	00200593          	li	a1,2
    80002e48:	14459073          	csrw	sip,a1
    80002e4c:	01053683          	ld	a3,16(a0)
    80002e50:	00853603          	ld	a2,8(a0)
    80002e54:	00053583          	ld	a1,0(a0)
    80002e58:	34051573          	csrrw	a0,mscratch,a0
    80002e5c:	30200073          	mret

0000000080002e60 <plicinit>:
    80002e60:	ff010113          	addi	sp,sp,-16
    80002e64:	00813423          	sd	s0,8(sp)
    80002e68:	01010413          	addi	s0,sp,16
    80002e6c:	00813403          	ld	s0,8(sp)
    80002e70:	0c0007b7          	lui	a5,0xc000
    80002e74:	00100713          	li	a4,1
    80002e78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002e7c:	00e7a223          	sw	a4,4(a5)
    80002e80:	01010113          	addi	sp,sp,16
    80002e84:	00008067          	ret

0000000080002e88 <plicinithart>:
    80002e88:	ff010113          	addi	sp,sp,-16
    80002e8c:	00813023          	sd	s0,0(sp)
    80002e90:	00113423          	sd	ra,8(sp)
    80002e94:	01010413          	addi	s0,sp,16
    80002e98:	00000097          	auipc	ra,0x0
    80002e9c:	a40080e7          	jalr	-1472(ra) # 800028d8 <cpuid>
    80002ea0:	0085171b          	slliw	a4,a0,0x8
    80002ea4:	0c0027b7          	lui	a5,0xc002
    80002ea8:	00e787b3          	add	a5,a5,a4
    80002eac:	40200713          	li	a4,1026
    80002eb0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002eb4:	00813083          	ld	ra,8(sp)
    80002eb8:	00013403          	ld	s0,0(sp)
    80002ebc:	00d5151b          	slliw	a0,a0,0xd
    80002ec0:	0c2017b7          	lui	a5,0xc201
    80002ec4:	00a78533          	add	a0,a5,a0
    80002ec8:	00052023          	sw	zero,0(a0)
    80002ecc:	01010113          	addi	sp,sp,16
    80002ed0:	00008067          	ret

0000000080002ed4 <plic_claim>:
    80002ed4:	ff010113          	addi	sp,sp,-16
    80002ed8:	00813023          	sd	s0,0(sp)
    80002edc:	00113423          	sd	ra,8(sp)
    80002ee0:	01010413          	addi	s0,sp,16
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	9f4080e7          	jalr	-1548(ra) # 800028d8 <cpuid>
    80002eec:	00813083          	ld	ra,8(sp)
    80002ef0:	00013403          	ld	s0,0(sp)
    80002ef4:	00d5151b          	slliw	a0,a0,0xd
    80002ef8:	0c2017b7          	lui	a5,0xc201
    80002efc:	00a78533          	add	a0,a5,a0
    80002f00:	00452503          	lw	a0,4(a0)
    80002f04:	01010113          	addi	sp,sp,16
    80002f08:	00008067          	ret

0000000080002f0c <plic_complete>:
    80002f0c:	fe010113          	addi	sp,sp,-32
    80002f10:	00813823          	sd	s0,16(sp)
    80002f14:	00913423          	sd	s1,8(sp)
    80002f18:	00113c23          	sd	ra,24(sp)
    80002f1c:	02010413          	addi	s0,sp,32
    80002f20:	00050493          	mv	s1,a0
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	9b4080e7          	jalr	-1612(ra) # 800028d8 <cpuid>
    80002f2c:	01813083          	ld	ra,24(sp)
    80002f30:	01013403          	ld	s0,16(sp)
    80002f34:	00d5179b          	slliw	a5,a0,0xd
    80002f38:	0c201737          	lui	a4,0xc201
    80002f3c:	00f707b3          	add	a5,a4,a5
    80002f40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002f44:	00813483          	ld	s1,8(sp)
    80002f48:	02010113          	addi	sp,sp,32
    80002f4c:	00008067          	ret

0000000080002f50 <consolewrite>:
    80002f50:	fb010113          	addi	sp,sp,-80
    80002f54:	04813023          	sd	s0,64(sp)
    80002f58:	04113423          	sd	ra,72(sp)
    80002f5c:	02913c23          	sd	s1,56(sp)
    80002f60:	03213823          	sd	s2,48(sp)
    80002f64:	03313423          	sd	s3,40(sp)
    80002f68:	03413023          	sd	s4,32(sp)
    80002f6c:	01513c23          	sd	s5,24(sp)
    80002f70:	05010413          	addi	s0,sp,80
    80002f74:	06c05c63          	blez	a2,80002fec <consolewrite+0x9c>
    80002f78:	00060993          	mv	s3,a2
    80002f7c:	00050a13          	mv	s4,a0
    80002f80:	00058493          	mv	s1,a1
    80002f84:	00000913          	li	s2,0
    80002f88:	fff00a93          	li	s5,-1
    80002f8c:	01c0006f          	j	80002fa8 <consolewrite+0x58>
    80002f90:	fbf44503          	lbu	a0,-65(s0)
    80002f94:	0019091b          	addiw	s2,s2,1
    80002f98:	00148493          	addi	s1,s1,1
    80002f9c:	00001097          	auipc	ra,0x1
    80002fa0:	a9c080e7          	jalr	-1380(ra) # 80003a38 <uartputc>
    80002fa4:	03298063          	beq	s3,s2,80002fc4 <consolewrite+0x74>
    80002fa8:	00048613          	mv	a2,s1
    80002fac:	00100693          	li	a3,1
    80002fb0:	000a0593          	mv	a1,s4
    80002fb4:	fbf40513          	addi	a0,s0,-65
    80002fb8:	00000097          	auipc	ra,0x0
    80002fbc:	9d8080e7          	jalr	-1576(ra) # 80002990 <either_copyin>
    80002fc0:	fd5518e3          	bne	a0,s5,80002f90 <consolewrite+0x40>
    80002fc4:	04813083          	ld	ra,72(sp)
    80002fc8:	04013403          	ld	s0,64(sp)
    80002fcc:	03813483          	ld	s1,56(sp)
    80002fd0:	02813983          	ld	s3,40(sp)
    80002fd4:	02013a03          	ld	s4,32(sp)
    80002fd8:	01813a83          	ld	s5,24(sp)
    80002fdc:	00090513          	mv	a0,s2
    80002fe0:	03013903          	ld	s2,48(sp)
    80002fe4:	05010113          	addi	sp,sp,80
    80002fe8:	00008067          	ret
    80002fec:	00000913          	li	s2,0
    80002ff0:	fd5ff06f          	j	80002fc4 <consolewrite+0x74>

0000000080002ff4 <consoleread>:
    80002ff4:	f9010113          	addi	sp,sp,-112
    80002ff8:	06813023          	sd	s0,96(sp)
    80002ffc:	04913c23          	sd	s1,88(sp)
    80003000:	05213823          	sd	s2,80(sp)
    80003004:	05313423          	sd	s3,72(sp)
    80003008:	05413023          	sd	s4,64(sp)
    8000300c:	03513c23          	sd	s5,56(sp)
    80003010:	03613823          	sd	s6,48(sp)
    80003014:	03713423          	sd	s7,40(sp)
    80003018:	03813023          	sd	s8,32(sp)
    8000301c:	06113423          	sd	ra,104(sp)
    80003020:	01913c23          	sd	s9,24(sp)
    80003024:	07010413          	addi	s0,sp,112
    80003028:	00060b93          	mv	s7,a2
    8000302c:	00050913          	mv	s2,a0
    80003030:	00058c13          	mv	s8,a1
    80003034:	00060b1b          	sext.w	s6,a2
    80003038:	00004497          	auipc	s1,0x4
    8000303c:	dd048493          	addi	s1,s1,-560 # 80006e08 <cons>
    80003040:	00400993          	li	s3,4
    80003044:	fff00a13          	li	s4,-1
    80003048:	00a00a93          	li	s5,10
    8000304c:	05705e63          	blez	s7,800030a8 <consoleread+0xb4>
    80003050:	09c4a703          	lw	a4,156(s1)
    80003054:	0984a783          	lw	a5,152(s1)
    80003058:	0007071b          	sext.w	a4,a4
    8000305c:	08e78463          	beq	a5,a4,800030e4 <consoleread+0xf0>
    80003060:	07f7f713          	andi	a4,a5,127
    80003064:	00e48733          	add	a4,s1,a4
    80003068:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000306c:	0017869b          	addiw	a3,a5,1
    80003070:	08d4ac23          	sw	a3,152(s1)
    80003074:	00070c9b          	sext.w	s9,a4
    80003078:	0b370663          	beq	a4,s3,80003124 <consoleread+0x130>
    8000307c:	00100693          	li	a3,1
    80003080:	f9f40613          	addi	a2,s0,-97
    80003084:	000c0593          	mv	a1,s8
    80003088:	00090513          	mv	a0,s2
    8000308c:	f8e40fa3          	sb	a4,-97(s0)
    80003090:	00000097          	auipc	ra,0x0
    80003094:	8b4080e7          	jalr	-1868(ra) # 80002944 <either_copyout>
    80003098:	01450863          	beq	a0,s4,800030a8 <consoleread+0xb4>
    8000309c:	001c0c13          	addi	s8,s8,1
    800030a0:	fffb8b9b          	addiw	s7,s7,-1
    800030a4:	fb5c94e3          	bne	s9,s5,8000304c <consoleread+0x58>
    800030a8:	000b851b          	sext.w	a0,s7
    800030ac:	06813083          	ld	ra,104(sp)
    800030b0:	06013403          	ld	s0,96(sp)
    800030b4:	05813483          	ld	s1,88(sp)
    800030b8:	05013903          	ld	s2,80(sp)
    800030bc:	04813983          	ld	s3,72(sp)
    800030c0:	04013a03          	ld	s4,64(sp)
    800030c4:	03813a83          	ld	s5,56(sp)
    800030c8:	02813b83          	ld	s7,40(sp)
    800030cc:	02013c03          	ld	s8,32(sp)
    800030d0:	01813c83          	ld	s9,24(sp)
    800030d4:	40ab053b          	subw	a0,s6,a0
    800030d8:	03013b03          	ld	s6,48(sp)
    800030dc:	07010113          	addi	sp,sp,112
    800030e0:	00008067          	ret
    800030e4:	00001097          	auipc	ra,0x1
    800030e8:	1d8080e7          	jalr	472(ra) # 800042bc <push_on>
    800030ec:	0984a703          	lw	a4,152(s1)
    800030f0:	09c4a783          	lw	a5,156(s1)
    800030f4:	0007879b          	sext.w	a5,a5
    800030f8:	fef70ce3          	beq	a4,a5,800030f0 <consoleread+0xfc>
    800030fc:	00001097          	auipc	ra,0x1
    80003100:	234080e7          	jalr	564(ra) # 80004330 <pop_on>
    80003104:	0984a783          	lw	a5,152(s1)
    80003108:	07f7f713          	andi	a4,a5,127
    8000310c:	00e48733          	add	a4,s1,a4
    80003110:	01874703          	lbu	a4,24(a4)
    80003114:	0017869b          	addiw	a3,a5,1
    80003118:	08d4ac23          	sw	a3,152(s1)
    8000311c:	00070c9b          	sext.w	s9,a4
    80003120:	f5371ee3          	bne	a4,s3,8000307c <consoleread+0x88>
    80003124:	000b851b          	sext.w	a0,s7
    80003128:	f96bf2e3          	bgeu	s7,s6,800030ac <consoleread+0xb8>
    8000312c:	08f4ac23          	sw	a5,152(s1)
    80003130:	f7dff06f          	j	800030ac <consoleread+0xb8>

0000000080003134 <consputc>:
    80003134:	10000793          	li	a5,256
    80003138:	00f50663          	beq	a0,a5,80003144 <consputc+0x10>
    8000313c:	00001317          	auipc	t1,0x1
    80003140:	9f430067          	jr	-1548(t1) # 80003b30 <uartputc_sync>
    80003144:	ff010113          	addi	sp,sp,-16
    80003148:	00113423          	sd	ra,8(sp)
    8000314c:	00813023          	sd	s0,0(sp)
    80003150:	01010413          	addi	s0,sp,16
    80003154:	00800513          	li	a0,8
    80003158:	00001097          	auipc	ra,0x1
    8000315c:	9d8080e7          	jalr	-1576(ra) # 80003b30 <uartputc_sync>
    80003160:	02000513          	li	a0,32
    80003164:	00001097          	auipc	ra,0x1
    80003168:	9cc080e7          	jalr	-1588(ra) # 80003b30 <uartputc_sync>
    8000316c:	00013403          	ld	s0,0(sp)
    80003170:	00813083          	ld	ra,8(sp)
    80003174:	00800513          	li	a0,8
    80003178:	01010113          	addi	sp,sp,16
    8000317c:	00001317          	auipc	t1,0x1
    80003180:	9b430067          	jr	-1612(t1) # 80003b30 <uartputc_sync>

0000000080003184 <consoleintr>:
    80003184:	fe010113          	addi	sp,sp,-32
    80003188:	00813823          	sd	s0,16(sp)
    8000318c:	00913423          	sd	s1,8(sp)
    80003190:	01213023          	sd	s2,0(sp)
    80003194:	00113c23          	sd	ra,24(sp)
    80003198:	02010413          	addi	s0,sp,32
    8000319c:	00004917          	auipc	s2,0x4
    800031a0:	c6c90913          	addi	s2,s2,-916 # 80006e08 <cons>
    800031a4:	00050493          	mv	s1,a0
    800031a8:	00090513          	mv	a0,s2
    800031ac:	00001097          	auipc	ra,0x1
    800031b0:	e40080e7          	jalr	-448(ra) # 80003fec <acquire>
    800031b4:	02048c63          	beqz	s1,800031ec <consoleintr+0x68>
    800031b8:	0a092783          	lw	a5,160(s2)
    800031bc:	09892703          	lw	a4,152(s2)
    800031c0:	07f00693          	li	a3,127
    800031c4:	40e7873b          	subw	a4,a5,a4
    800031c8:	02e6e263          	bltu	a3,a4,800031ec <consoleintr+0x68>
    800031cc:	00d00713          	li	a4,13
    800031d0:	04e48063          	beq	s1,a4,80003210 <consoleintr+0x8c>
    800031d4:	07f7f713          	andi	a4,a5,127
    800031d8:	00e90733          	add	a4,s2,a4
    800031dc:	0017879b          	addiw	a5,a5,1
    800031e0:	0af92023          	sw	a5,160(s2)
    800031e4:	00970c23          	sb	s1,24(a4)
    800031e8:	08f92e23          	sw	a5,156(s2)
    800031ec:	01013403          	ld	s0,16(sp)
    800031f0:	01813083          	ld	ra,24(sp)
    800031f4:	00813483          	ld	s1,8(sp)
    800031f8:	00013903          	ld	s2,0(sp)
    800031fc:	00004517          	auipc	a0,0x4
    80003200:	c0c50513          	addi	a0,a0,-1012 # 80006e08 <cons>
    80003204:	02010113          	addi	sp,sp,32
    80003208:	00001317          	auipc	t1,0x1
    8000320c:	eb030067          	jr	-336(t1) # 800040b8 <release>
    80003210:	00a00493          	li	s1,10
    80003214:	fc1ff06f          	j	800031d4 <consoleintr+0x50>

0000000080003218 <consoleinit>:
    80003218:	fe010113          	addi	sp,sp,-32
    8000321c:	00113c23          	sd	ra,24(sp)
    80003220:	00813823          	sd	s0,16(sp)
    80003224:	00913423          	sd	s1,8(sp)
    80003228:	02010413          	addi	s0,sp,32
    8000322c:	00004497          	auipc	s1,0x4
    80003230:	bdc48493          	addi	s1,s1,-1060 # 80006e08 <cons>
    80003234:	00048513          	mv	a0,s1
    80003238:	00002597          	auipc	a1,0x2
    8000323c:	1a858593          	addi	a1,a1,424 # 800053e0 <_ZZ12printIntegermE6digits+0x138>
    80003240:	00001097          	auipc	ra,0x1
    80003244:	d88080e7          	jalr	-632(ra) # 80003fc8 <initlock>
    80003248:	00000097          	auipc	ra,0x0
    8000324c:	7ac080e7          	jalr	1964(ra) # 800039f4 <uartinit>
    80003250:	01813083          	ld	ra,24(sp)
    80003254:	01013403          	ld	s0,16(sp)
    80003258:	00000797          	auipc	a5,0x0
    8000325c:	d9c78793          	addi	a5,a5,-612 # 80002ff4 <consoleread>
    80003260:	0af4bc23          	sd	a5,184(s1)
    80003264:	00000797          	auipc	a5,0x0
    80003268:	cec78793          	addi	a5,a5,-788 # 80002f50 <consolewrite>
    8000326c:	0cf4b023          	sd	a5,192(s1)
    80003270:	00813483          	ld	s1,8(sp)
    80003274:	02010113          	addi	sp,sp,32
    80003278:	00008067          	ret

000000008000327c <console_read>:
    8000327c:	ff010113          	addi	sp,sp,-16
    80003280:	00813423          	sd	s0,8(sp)
    80003284:	01010413          	addi	s0,sp,16
    80003288:	00813403          	ld	s0,8(sp)
    8000328c:	00004317          	auipc	t1,0x4
    80003290:	c3433303          	ld	t1,-972(t1) # 80006ec0 <devsw+0x10>
    80003294:	01010113          	addi	sp,sp,16
    80003298:	00030067          	jr	t1

000000008000329c <console_write>:
    8000329c:	ff010113          	addi	sp,sp,-16
    800032a0:	00813423          	sd	s0,8(sp)
    800032a4:	01010413          	addi	s0,sp,16
    800032a8:	00813403          	ld	s0,8(sp)
    800032ac:	00004317          	auipc	t1,0x4
    800032b0:	c1c33303          	ld	t1,-996(t1) # 80006ec8 <devsw+0x18>
    800032b4:	01010113          	addi	sp,sp,16
    800032b8:	00030067          	jr	t1

00000000800032bc <panic>:
    800032bc:	fe010113          	addi	sp,sp,-32
    800032c0:	00113c23          	sd	ra,24(sp)
    800032c4:	00813823          	sd	s0,16(sp)
    800032c8:	00913423          	sd	s1,8(sp)
    800032cc:	02010413          	addi	s0,sp,32
    800032d0:	00050493          	mv	s1,a0
    800032d4:	00002517          	auipc	a0,0x2
    800032d8:	11450513          	addi	a0,a0,276 # 800053e8 <_ZZ12printIntegermE6digits+0x140>
    800032dc:	00004797          	auipc	a5,0x4
    800032e0:	c807a623          	sw	zero,-884(a5) # 80006f68 <pr+0x18>
    800032e4:	00000097          	auipc	ra,0x0
    800032e8:	034080e7          	jalr	52(ra) # 80003318 <__printf>
    800032ec:	00048513          	mv	a0,s1
    800032f0:	00000097          	auipc	ra,0x0
    800032f4:	028080e7          	jalr	40(ra) # 80003318 <__printf>
    800032f8:	00002517          	auipc	a0,0x2
    800032fc:	e9050513          	addi	a0,a0,-368 # 80005188 <kvmincrease+0x708>
    80003300:	00000097          	auipc	ra,0x0
    80003304:	018080e7          	jalr	24(ra) # 80003318 <__printf>
    80003308:	00100793          	li	a5,1
    8000330c:	00003717          	auipc	a4,0x3
    80003310:	9cf72e23          	sw	a5,-1572(a4) # 80005ce8 <panicked>
    80003314:	0000006f          	j	80003314 <panic+0x58>

0000000080003318 <__printf>:
    80003318:	f3010113          	addi	sp,sp,-208
    8000331c:	08813023          	sd	s0,128(sp)
    80003320:	07313423          	sd	s3,104(sp)
    80003324:	09010413          	addi	s0,sp,144
    80003328:	05813023          	sd	s8,64(sp)
    8000332c:	08113423          	sd	ra,136(sp)
    80003330:	06913c23          	sd	s1,120(sp)
    80003334:	07213823          	sd	s2,112(sp)
    80003338:	07413023          	sd	s4,96(sp)
    8000333c:	05513c23          	sd	s5,88(sp)
    80003340:	05613823          	sd	s6,80(sp)
    80003344:	05713423          	sd	s7,72(sp)
    80003348:	03913c23          	sd	s9,56(sp)
    8000334c:	03a13823          	sd	s10,48(sp)
    80003350:	03b13423          	sd	s11,40(sp)
    80003354:	00004317          	auipc	t1,0x4
    80003358:	bfc30313          	addi	t1,t1,-1028 # 80006f50 <pr>
    8000335c:	01832c03          	lw	s8,24(t1)
    80003360:	00b43423          	sd	a1,8(s0)
    80003364:	00c43823          	sd	a2,16(s0)
    80003368:	00d43c23          	sd	a3,24(s0)
    8000336c:	02e43023          	sd	a4,32(s0)
    80003370:	02f43423          	sd	a5,40(s0)
    80003374:	03043823          	sd	a6,48(s0)
    80003378:	03143c23          	sd	a7,56(s0)
    8000337c:	00050993          	mv	s3,a0
    80003380:	4a0c1663          	bnez	s8,8000382c <__printf+0x514>
    80003384:	60098c63          	beqz	s3,8000399c <__printf+0x684>
    80003388:	0009c503          	lbu	a0,0(s3)
    8000338c:	00840793          	addi	a5,s0,8
    80003390:	f6f43c23          	sd	a5,-136(s0)
    80003394:	00000493          	li	s1,0
    80003398:	22050063          	beqz	a0,800035b8 <__printf+0x2a0>
    8000339c:	00002a37          	lui	s4,0x2
    800033a0:	00018ab7          	lui	s5,0x18
    800033a4:	000f4b37          	lui	s6,0xf4
    800033a8:	00989bb7          	lui	s7,0x989
    800033ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800033b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800033b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800033b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800033bc:	00148c9b          	addiw	s9,s1,1
    800033c0:	02500793          	li	a5,37
    800033c4:	01998933          	add	s2,s3,s9
    800033c8:	38f51263          	bne	a0,a5,8000374c <__printf+0x434>
    800033cc:	00094783          	lbu	a5,0(s2)
    800033d0:	00078c9b          	sext.w	s9,a5
    800033d4:	1e078263          	beqz	a5,800035b8 <__printf+0x2a0>
    800033d8:	0024849b          	addiw	s1,s1,2
    800033dc:	07000713          	li	a4,112
    800033e0:	00998933          	add	s2,s3,s1
    800033e4:	38e78a63          	beq	a5,a4,80003778 <__printf+0x460>
    800033e8:	20f76863          	bltu	a4,a5,800035f8 <__printf+0x2e0>
    800033ec:	42a78863          	beq	a5,a0,8000381c <__printf+0x504>
    800033f0:	06400713          	li	a4,100
    800033f4:	40e79663          	bne	a5,a4,80003800 <__printf+0x4e8>
    800033f8:	f7843783          	ld	a5,-136(s0)
    800033fc:	0007a603          	lw	a2,0(a5)
    80003400:	00878793          	addi	a5,a5,8
    80003404:	f6f43c23          	sd	a5,-136(s0)
    80003408:	42064a63          	bltz	a2,8000383c <__printf+0x524>
    8000340c:	00a00713          	li	a4,10
    80003410:	02e677bb          	remuw	a5,a2,a4
    80003414:	00002d97          	auipc	s11,0x2
    80003418:	ffcd8d93          	addi	s11,s11,-4 # 80005410 <digits>
    8000341c:	00900593          	li	a1,9
    80003420:	0006051b          	sext.w	a0,a2
    80003424:	00000c93          	li	s9,0
    80003428:	02079793          	slli	a5,a5,0x20
    8000342c:	0207d793          	srli	a5,a5,0x20
    80003430:	00fd87b3          	add	a5,s11,a5
    80003434:	0007c783          	lbu	a5,0(a5)
    80003438:	02e656bb          	divuw	a3,a2,a4
    8000343c:	f8f40023          	sb	a5,-128(s0)
    80003440:	14c5d863          	bge	a1,a2,80003590 <__printf+0x278>
    80003444:	06300593          	li	a1,99
    80003448:	00100c93          	li	s9,1
    8000344c:	02e6f7bb          	remuw	a5,a3,a4
    80003450:	02079793          	slli	a5,a5,0x20
    80003454:	0207d793          	srli	a5,a5,0x20
    80003458:	00fd87b3          	add	a5,s11,a5
    8000345c:	0007c783          	lbu	a5,0(a5)
    80003460:	02e6d73b          	divuw	a4,a3,a4
    80003464:	f8f400a3          	sb	a5,-127(s0)
    80003468:	12a5f463          	bgeu	a1,a0,80003590 <__printf+0x278>
    8000346c:	00a00693          	li	a3,10
    80003470:	00900593          	li	a1,9
    80003474:	02d777bb          	remuw	a5,a4,a3
    80003478:	02079793          	slli	a5,a5,0x20
    8000347c:	0207d793          	srli	a5,a5,0x20
    80003480:	00fd87b3          	add	a5,s11,a5
    80003484:	0007c503          	lbu	a0,0(a5)
    80003488:	02d757bb          	divuw	a5,a4,a3
    8000348c:	f8a40123          	sb	a0,-126(s0)
    80003490:	48e5f263          	bgeu	a1,a4,80003914 <__printf+0x5fc>
    80003494:	06300513          	li	a0,99
    80003498:	02d7f5bb          	remuw	a1,a5,a3
    8000349c:	02059593          	slli	a1,a1,0x20
    800034a0:	0205d593          	srli	a1,a1,0x20
    800034a4:	00bd85b3          	add	a1,s11,a1
    800034a8:	0005c583          	lbu	a1,0(a1)
    800034ac:	02d7d7bb          	divuw	a5,a5,a3
    800034b0:	f8b401a3          	sb	a1,-125(s0)
    800034b4:	48e57263          	bgeu	a0,a4,80003938 <__printf+0x620>
    800034b8:	3e700513          	li	a0,999
    800034bc:	02d7f5bb          	remuw	a1,a5,a3
    800034c0:	02059593          	slli	a1,a1,0x20
    800034c4:	0205d593          	srli	a1,a1,0x20
    800034c8:	00bd85b3          	add	a1,s11,a1
    800034cc:	0005c583          	lbu	a1,0(a1)
    800034d0:	02d7d7bb          	divuw	a5,a5,a3
    800034d4:	f8b40223          	sb	a1,-124(s0)
    800034d8:	46e57663          	bgeu	a0,a4,80003944 <__printf+0x62c>
    800034dc:	02d7f5bb          	remuw	a1,a5,a3
    800034e0:	02059593          	slli	a1,a1,0x20
    800034e4:	0205d593          	srli	a1,a1,0x20
    800034e8:	00bd85b3          	add	a1,s11,a1
    800034ec:	0005c583          	lbu	a1,0(a1)
    800034f0:	02d7d7bb          	divuw	a5,a5,a3
    800034f4:	f8b402a3          	sb	a1,-123(s0)
    800034f8:	46ea7863          	bgeu	s4,a4,80003968 <__printf+0x650>
    800034fc:	02d7f5bb          	remuw	a1,a5,a3
    80003500:	02059593          	slli	a1,a1,0x20
    80003504:	0205d593          	srli	a1,a1,0x20
    80003508:	00bd85b3          	add	a1,s11,a1
    8000350c:	0005c583          	lbu	a1,0(a1)
    80003510:	02d7d7bb          	divuw	a5,a5,a3
    80003514:	f8b40323          	sb	a1,-122(s0)
    80003518:	3eeaf863          	bgeu	s5,a4,80003908 <__printf+0x5f0>
    8000351c:	02d7f5bb          	remuw	a1,a5,a3
    80003520:	02059593          	slli	a1,a1,0x20
    80003524:	0205d593          	srli	a1,a1,0x20
    80003528:	00bd85b3          	add	a1,s11,a1
    8000352c:	0005c583          	lbu	a1,0(a1)
    80003530:	02d7d7bb          	divuw	a5,a5,a3
    80003534:	f8b403a3          	sb	a1,-121(s0)
    80003538:	42eb7e63          	bgeu	s6,a4,80003974 <__printf+0x65c>
    8000353c:	02d7f5bb          	remuw	a1,a5,a3
    80003540:	02059593          	slli	a1,a1,0x20
    80003544:	0205d593          	srli	a1,a1,0x20
    80003548:	00bd85b3          	add	a1,s11,a1
    8000354c:	0005c583          	lbu	a1,0(a1)
    80003550:	02d7d7bb          	divuw	a5,a5,a3
    80003554:	f8b40423          	sb	a1,-120(s0)
    80003558:	42ebfc63          	bgeu	s7,a4,80003990 <__printf+0x678>
    8000355c:	02079793          	slli	a5,a5,0x20
    80003560:	0207d793          	srli	a5,a5,0x20
    80003564:	00fd8db3          	add	s11,s11,a5
    80003568:	000dc703          	lbu	a4,0(s11)
    8000356c:	00a00793          	li	a5,10
    80003570:	00900c93          	li	s9,9
    80003574:	f8e404a3          	sb	a4,-119(s0)
    80003578:	00065c63          	bgez	a2,80003590 <__printf+0x278>
    8000357c:	f9040713          	addi	a4,s0,-112
    80003580:	00f70733          	add	a4,a4,a5
    80003584:	02d00693          	li	a3,45
    80003588:	fed70823          	sb	a3,-16(a4)
    8000358c:	00078c93          	mv	s9,a5
    80003590:	f8040793          	addi	a5,s0,-128
    80003594:	01978cb3          	add	s9,a5,s9
    80003598:	f7f40d13          	addi	s10,s0,-129
    8000359c:	000cc503          	lbu	a0,0(s9)
    800035a0:	fffc8c93          	addi	s9,s9,-1
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	b90080e7          	jalr	-1136(ra) # 80003134 <consputc>
    800035ac:	ffac98e3          	bne	s9,s10,8000359c <__printf+0x284>
    800035b0:	00094503          	lbu	a0,0(s2)
    800035b4:	e00514e3          	bnez	a0,800033bc <__printf+0xa4>
    800035b8:	1a0c1663          	bnez	s8,80003764 <__printf+0x44c>
    800035bc:	08813083          	ld	ra,136(sp)
    800035c0:	08013403          	ld	s0,128(sp)
    800035c4:	07813483          	ld	s1,120(sp)
    800035c8:	07013903          	ld	s2,112(sp)
    800035cc:	06813983          	ld	s3,104(sp)
    800035d0:	06013a03          	ld	s4,96(sp)
    800035d4:	05813a83          	ld	s5,88(sp)
    800035d8:	05013b03          	ld	s6,80(sp)
    800035dc:	04813b83          	ld	s7,72(sp)
    800035e0:	04013c03          	ld	s8,64(sp)
    800035e4:	03813c83          	ld	s9,56(sp)
    800035e8:	03013d03          	ld	s10,48(sp)
    800035ec:	02813d83          	ld	s11,40(sp)
    800035f0:	0d010113          	addi	sp,sp,208
    800035f4:	00008067          	ret
    800035f8:	07300713          	li	a4,115
    800035fc:	1ce78a63          	beq	a5,a4,800037d0 <__printf+0x4b8>
    80003600:	07800713          	li	a4,120
    80003604:	1ee79e63          	bne	a5,a4,80003800 <__printf+0x4e8>
    80003608:	f7843783          	ld	a5,-136(s0)
    8000360c:	0007a703          	lw	a4,0(a5)
    80003610:	00878793          	addi	a5,a5,8
    80003614:	f6f43c23          	sd	a5,-136(s0)
    80003618:	28074263          	bltz	a4,8000389c <__printf+0x584>
    8000361c:	00002d97          	auipc	s11,0x2
    80003620:	df4d8d93          	addi	s11,s11,-524 # 80005410 <digits>
    80003624:	00f77793          	andi	a5,a4,15
    80003628:	00fd87b3          	add	a5,s11,a5
    8000362c:	0007c683          	lbu	a3,0(a5)
    80003630:	00f00613          	li	a2,15
    80003634:	0007079b          	sext.w	a5,a4
    80003638:	f8d40023          	sb	a3,-128(s0)
    8000363c:	0047559b          	srliw	a1,a4,0x4
    80003640:	0047569b          	srliw	a3,a4,0x4
    80003644:	00000c93          	li	s9,0
    80003648:	0ee65063          	bge	a2,a4,80003728 <__printf+0x410>
    8000364c:	00f6f693          	andi	a3,a3,15
    80003650:	00dd86b3          	add	a3,s11,a3
    80003654:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003658:	0087d79b          	srliw	a5,a5,0x8
    8000365c:	00100c93          	li	s9,1
    80003660:	f8d400a3          	sb	a3,-127(s0)
    80003664:	0cb67263          	bgeu	a2,a1,80003728 <__printf+0x410>
    80003668:	00f7f693          	andi	a3,a5,15
    8000366c:	00dd86b3          	add	a3,s11,a3
    80003670:	0006c583          	lbu	a1,0(a3)
    80003674:	00f00613          	li	a2,15
    80003678:	0047d69b          	srliw	a3,a5,0x4
    8000367c:	f8b40123          	sb	a1,-126(s0)
    80003680:	0047d593          	srli	a1,a5,0x4
    80003684:	28f67e63          	bgeu	a2,a5,80003920 <__printf+0x608>
    80003688:	00f6f693          	andi	a3,a3,15
    8000368c:	00dd86b3          	add	a3,s11,a3
    80003690:	0006c503          	lbu	a0,0(a3)
    80003694:	0087d813          	srli	a6,a5,0x8
    80003698:	0087d69b          	srliw	a3,a5,0x8
    8000369c:	f8a401a3          	sb	a0,-125(s0)
    800036a0:	28b67663          	bgeu	a2,a1,8000392c <__printf+0x614>
    800036a4:	00f6f693          	andi	a3,a3,15
    800036a8:	00dd86b3          	add	a3,s11,a3
    800036ac:	0006c583          	lbu	a1,0(a3)
    800036b0:	00c7d513          	srli	a0,a5,0xc
    800036b4:	00c7d69b          	srliw	a3,a5,0xc
    800036b8:	f8b40223          	sb	a1,-124(s0)
    800036bc:	29067a63          	bgeu	a2,a6,80003950 <__printf+0x638>
    800036c0:	00f6f693          	andi	a3,a3,15
    800036c4:	00dd86b3          	add	a3,s11,a3
    800036c8:	0006c583          	lbu	a1,0(a3)
    800036cc:	0107d813          	srli	a6,a5,0x10
    800036d0:	0107d69b          	srliw	a3,a5,0x10
    800036d4:	f8b402a3          	sb	a1,-123(s0)
    800036d8:	28a67263          	bgeu	a2,a0,8000395c <__printf+0x644>
    800036dc:	00f6f693          	andi	a3,a3,15
    800036e0:	00dd86b3          	add	a3,s11,a3
    800036e4:	0006c683          	lbu	a3,0(a3)
    800036e8:	0147d79b          	srliw	a5,a5,0x14
    800036ec:	f8d40323          	sb	a3,-122(s0)
    800036f0:	21067663          	bgeu	a2,a6,800038fc <__printf+0x5e4>
    800036f4:	02079793          	slli	a5,a5,0x20
    800036f8:	0207d793          	srli	a5,a5,0x20
    800036fc:	00fd8db3          	add	s11,s11,a5
    80003700:	000dc683          	lbu	a3,0(s11)
    80003704:	00800793          	li	a5,8
    80003708:	00700c93          	li	s9,7
    8000370c:	f8d403a3          	sb	a3,-121(s0)
    80003710:	00075c63          	bgez	a4,80003728 <__printf+0x410>
    80003714:	f9040713          	addi	a4,s0,-112
    80003718:	00f70733          	add	a4,a4,a5
    8000371c:	02d00693          	li	a3,45
    80003720:	fed70823          	sb	a3,-16(a4)
    80003724:	00078c93          	mv	s9,a5
    80003728:	f8040793          	addi	a5,s0,-128
    8000372c:	01978cb3          	add	s9,a5,s9
    80003730:	f7f40d13          	addi	s10,s0,-129
    80003734:	000cc503          	lbu	a0,0(s9)
    80003738:	fffc8c93          	addi	s9,s9,-1
    8000373c:	00000097          	auipc	ra,0x0
    80003740:	9f8080e7          	jalr	-1544(ra) # 80003134 <consputc>
    80003744:	ff9d18e3          	bne	s10,s9,80003734 <__printf+0x41c>
    80003748:	0100006f          	j	80003758 <__printf+0x440>
    8000374c:	00000097          	auipc	ra,0x0
    80003750:	9e8080e7          	jalr	-1560(ra) # 80003134 <consputc>
    80003754:	000c8493          	mv	s1,s9
    80003758:	00094503          	lbu	a0,0(s2)
    8000375c:	c60510e3          	bnez	a0,800033bc <__printf+0xa4>
    80003760:	e40c0ee3          	beqz	s8,800035bc <__printf+0x2a4>
    80003764:	00003517          	auipc	a0,0x3
    80003768:	7ec50513          	addi	a0,a0,2028 # 80006f50 <pr>
    8000376c:	00001097          	auipc	ra,0x1
    80003770:	94c080e7          	jalr	-1716(ra) # 800040b8 <release>
    80003774:	e49ff06f          	j	800035bc <__printf+0x2a4>
    80003778:	f7843783          	ld	a5,-136(s0)
    8000377c:	03000513          	li	a0,48
    80003780:	01000d13          	li	s10,16
    80003784:	00878713          	addi	a4,a5,8
    80003788:	0007bc83          	ld	s9,0(a5)
    8000378c:	f6e43c23          	sd	a4,-136(s0)
    80003790:	00000097          	auipc	ra,0x0
    80003794:	9a4080e7          	jalr	-1628(ra) # 80003134 <consputc>
    80003798:	07800513          	li	a0,120
    8000379c:	00000097          	auipc	ra,0x0
    800037a0:	998080e7          	jalr	-1640(ra) # 80003134 <consputc>
    800037a4:	00002d97          	auipc	s11,0x2
    800037a8:	c6cd8d93          	addi	s11,s11,-916 # 80005410 <digits>
    800037ac:	03ccd793          	srli	a5,s9,0x3c
    800037b0:	00fd87b3          	add	a5,s11,a5
    800037b4:	0007c503          	lbu	a0,0(a5)
    800037b8:	fffd0d1b          	addiw	s10,s10,-1
    800037bc:	004c9c93          	slli	s9,s9,0x4
    800037c0:	00000097          	auipc	ra,0x0
    800037c4:	974080e7          	jalr	-1676(ra) # 80003134 <consputc>
    800037c8:	fe0d12e3          	bnez	s10,800037ac <__printf+0x494>
    800037cc:	f8dff06f          	j	80003758 <__printf+0x440>
    800037d0:	f7843783          	ld	a5,-136(s0)
    800037d4:	0007bc83          	ld	s9,0(a5)
    800037d8:	00878793          	addi	a5,a5,8
    800037dc:	f6f43c23          	sd	a5,-136(s0)
    800037e0:	000c9a63          	bnez	s9,800037f4 <__printf+0x4dc>
    800037e4:	1080006f          	j	800038ec <__printf+0x5d4>
    800037e8:	001c8c93          	addi	s9,s9,1
    800037ec:	00000097          	auipc	ra,0x0
    800037f0:	948080e7          	jalr	-1720(ra) # 80003134 <consputc>
    800037f4:	000cc503          	lbu	a0,0(s9)
    800037f8:	fe0518e3          	bnez	a0,800037e8 <__printf+0x4d0>
    800037fc:	f5dff06f          	j	80003758 <__printf+0x440>
    80003800:	02500513          	li	a0,37
    80003804:	00000097          	auipc	ra,0x0
    80003808:	930080e7          	jalr	-1744(ra) # 80003134 <consputc>
    8000380c:	000c8513          	mv	a0,s9
    80003810:	00000097          	auipc	ra,0x0
    80003814:	924080e7          	jalr	-1756(ra) # 80003134 <consputc>
    80003818:	f41ff06f          	j	80003758 <__printf+0x440>
    8000381c:	02500513          	li	a0,37
    80003820:	00000097          	auipc	ra,0x0
    80003824:	914080e7          	jalr	-1772(ra) # 80003134 <consputc>
    80003828:	f31ff06f          	j	80003758 <__printf+0x440>
    8000382c:	00030513          	mv	a0,t1
    80003830:	00000097          	auipc	ra,0x0
    80003834:	7bc080e7          	jalr	1980(ra) # 80003fec <acquire>
    80003838:	b4dff06f          	j	80003384 <__printf+0x6c>
    8000383c:	40c0053b          	negw	a0,a2
    80003840:	00a00713          	li	a4,10
    80003844:	02e576bb          	remuw	a3,a0,a4
    80003848:	00002d97          	auipc	s11,0x2
    8000384c:	bc8d8d93          	addi	s11,s11,-1080 # 80005410 <digits>
    80003850:	ff700593          	li	a1,-9
    80003854:	02069693          	slli	a3,a3,0x20
    80003858:	0206d693          	srli	a3,a3,0x20
    8000385c:	00dd86b3          	add	a3,s11,a3
    80003860:	0006c683          	lbu	a3,0(a3)
    80003864:	02e557bb          	divuw	a5,a0,a4
    80003868:	f8d40023          	sb	a3,-128(s0)
    8000386c:	10b65e63          	bge	a2,a1,80003988 <__printf+0x670>
    80003870:	06300593          	li	a1,99
    80003874:	02e7f6bb          	remuw	a3,a5,a4
    80003878:	02069693          	slli	a3,a3,0x20
    8000387c:	0206d693          	srli	a3,a3,0x20
    80003880:	00dd86b3          	add	a3,s11,a3
    80003884:	0006c683          	lbu	a3,0(a3)
    80003888:	02e7d73b          	divuw	a4,a5,a4
    8000388c:	00200793          	li	a5,2
    80003890:	f8d400a3          	sb	a3,-127(s0)
    80003894:	bca5ece3          	bltu	a1,a0,8000346c <__printf+0x154>
    80003898:	ce5ff06f          	j	8000357c <__printf+0x264>
    8000389c:	40e007bb          	negw	a5,a4
    800038a0:	00002d97          	auipc	s11,0x2
    800038a4:	b70d8d93          	addi	s11,s11,-1168 # 80005410 <digits>
    800038a8:	00f7f693          	andi	a3,a5,15
    800038ac:	00dd86b3          	add	a3,s11,a3
    800038b0:	0006c583          	lbu	a1,0(a3)
    800038b4:	ff100613          	li	a2,-15
    800038b8:	0047d69b          	srliw	a3,a5,0x4
    800038bc:	f8b40023          	sb	a1,-128(s0)
    800038c0:	0047d59b          	srliw	a1,a5,0x4
    800038c4:	0ac75e63          	bge	a4,a2,80003980 <__printf+0x668>
    800038c8:	00f6f693          	andi	a3,a3,15
    800038cc:	00dd86b3          	add	a3,s11,a3
    800038d0:	0006c603          	lbu	a2,0(a3)
    800038d4:	00f00693          	li	a3,15
    800038d8:	0087d79b          	srliw	a5,a5,0x8
    800038dc:	f8c400a3          	sb	a2,-127(s0)
    800038e0:	d8b6e4e3          	bltu	a3,a1,80003668 <__printf+0x350>
    800038e4:	00200793          	li	a5,2
    800038e8:	e2dff06f          	j	80003714 <__printf+0x3fc>
    800038ec:	00002c97          	auipc	s9,0x2
    800038f0:	b04c8c93          	addi	s9,s9,-1276 # 800053f0 <_ZZ12printIntegermE6digits+0x148>
    800038f4:	02800513          	li	a0,40
    800038f8:	ef1ff06f          	j	800037e8 <__printf+0x4d0>
    800038fc:	00700793          	li	a5,7
    80003900:	00600c93          	li	s9,6
    80003904:	e0dff06f          	j	80003710 <__printf+0x3f8>
    80003908:	00700793          	li	a5,7
    8000390c:	00600c93          	li	s9,6
    80003910:	c69ff06f          	j	80003578 <__printf+0x260>
    80003914:	00300793          	li	a5,3
    80003918:	00200c93          	li	s9,2
    8000391c:	c5dff06f          	j	80003578 <__printf+0x260>
    80003920:	00300793          	li	a5,3
    80003924:	00200c93          	li	s9,2
    80003928:	de9ff06f          	j	80003710 <__printf+0x3f8>
    8000392c:	00400793          	li	a5,4
    80003930:	00300c93          	li	s9,3
    80003934:	dddff06f          	j	80003710 <__printf+0x3f8>
    80003938:	00400793          	li	a5,4
    8000393c:	00300c93          	li	s9,3
    80003940:	c39ff06f          	j	80003578 <__printf+0x260>
    80003944:	00500793          	li	a5,5
    80003948:	00400c93          	li	s9,4
    8000394c:	c2dff06f          	j	80003578 <__printf+0x260>
    80003950:	00500793          	li	a5,5
    80003954:	00400c93          	li	s9,4
    80003958:	db9ff06f          	j	80003710 <__printf+0x3f8>
    8000395c:	00600793          	li	a5,6
    80003960:	00500c93          	li	s9,5
    80003964:	dadff06f          	j	80003710 <__printf+0x3f8>
    80003968:	00600793          	li	a5,6
    8000396c:	00500c93          	li	s9,5
    80003970:	c09ff06f          	j	80003578 <__printf+0x260>
    80003974:	00800793          	li	a5,8
    80003978:	00700c93          	li	s9,7
    8000397c:	bfdff06f          	j	80003578 <__printf+0x260>
    80003980:	00100793          	li	a5,1
    80003984:	d91ff06f          	j	80003714 <__printf+0x3fc>
    80003988:	00100793          	li	a5,1
    8000398c:	bf1ff06f          	j	8000357c <__printf+0x264>
    80003990:	00900793          	li	a5,9
    80003994:	00800c93          	li	s9,8
    80003998:	be1ff06f          	j	80003578 <__printf+0x260>
    8000399c:	00002517          	auipc	a0,0x2
    800039a0:	a5c50513          	addi	a0,a0,-1444 # 800053f8 <_ZZ12printIntegermE6digits+0x150>
    800039a4:	00000097          	auipc	ra,0x0
    800039a8:	918080e7          	jalr	-1768(ra) # 800032bc <panic>

00000000800039ac <printfinit>:
    800039ac:	fe010113          	addi	sp,sp,-32
    800039b0:	00813823          	sd	s0,16(sp)
    800039b4:	00913423          	sd	s1,8(sp)
    800039b8:	00113c23          	sd	ra,24(sp)
    800039bc:	02010413          	addi	s0,sp,32
    800039c0:	00003497          	auipc	s1,0x3
    800039c4:	59048493          	addi	s1,s1,1424 # 80006f50 <pr>
    800039c8:	00048513          	mv	a0,s1
    800039cc:	00002597          	auipc	a1,0x2
    800039d0:	a3c58593          	addi	a1,a1,-1476 # 80005408 <_ZZ12printIntegermE6digits+0x160>
    800039d4:	00000097          	auipc	ra,0x0
    800039d8:	5f4080e7          	jalr	1524(ra) # 80003fc8 <initlock>
    800039dc:	01813083          	ld	ra,24(sp)
    800039e0:	01013403          	ld	s0,16(sp)
    800039e4:	0004ac23          	sw	zero,24(s1)
    800039e8:	00813483          	ld	s1,8(sp)
    800039ec:	02010113          	addi	sp,sp,32
    800039f0:	00008067          	ret

00000000800039f4 <uartinit>:
    800039f4:	ff010113          	addi	sp,sp,-16
    800039f8:	00813423          	sd	s0,8(sp)
    800039fc:	01010413          	addi	s0,sp,16
    80003a00:	100007b7          	lui	a5,0x10000
    80003a04:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003a08:	f8000713          	li	a4,-128
    80003a0c:	00e781a3          	sb	a4,3(a5)
    80003a10:	00300713          	li	a4,3
    80003a14:	00e78023          	sb	a4,0(a5)
    80003a18:	000780a3          	sb	zero,1(a5)
    80003a1c:	00e781a3          	sb	a4,3(a5)
    80003a20:	00700693          	li	a3,7
    80003a24:	00d78123          	sb	a3,2(a5)
    80003a28:	00e780a3          	sb	a4,1(a5)
    80003a2c:	00813403          	ld	s0,8(sp)
    80003a30:	01010113          	addi	sp,sp,16
    80003a34:	00008067          	ret

0000000080003a38 <uartputc>:
    80003a38:	00002797          	auipc	a5,0x2
    80003a3c:	2b07a783          	lw	a5,688(a5) # 80005ce8 <panicked>
    80003a40:	00078463          	beqz	a5,80003a48 <uartputc+0x10>
    80003a44:	0000006f          	j	80003a44 <uartputc+0xc>
    80003a48:	fd010113          	addi	sp,sp,-48
    80003a4c:	02813023          	sd	s0,32(sp)
    80003a50:	00913c23          	sd	s1,24(sp)
    80003a54:	01213823          	sd	s2,16(sp)
    80003a58:	01313423          	sd	s3,8(sp)
    80003a5c:	02113423          	sd	ra,40(sp)
    80003a60:	03010413          	addi	s0,sp,48
    80003a64:	00002917          	auipc	s2,0x2
    80003a68:	28c90913          	addi	s2,s2,652 # 80005cf0 <uart_tx_r>
    80003a6c:	00093783          	ld	a5,0(s2)
    80003a70:	00002497          	auipc	s1,0x2
    80003a74:	28848493          	addi	s1,s1,648 # 80005cf8 <uart_tx_w>
    80003a78:	0004b703          	ld	a4,0(s1)
    80003a7c:	02078693          	addi	a3,a5,32
    80003a80:	00050993          	mv	s3,a0
    80003a84:	02e69c63          	bne	a3,a4,80003abc <uartputc+0x84>
    80003a88:	00001097          	auipc	ra,0x1
    80003a8c:	834080e7          	jalr	-1996(ra) # 800042bc <push_on>
    80003a90:	00093783          	ld	a5,0(s2)
    80003a94:	0004b703          	ld	a4,0(s1)
    80003a98:	02078793          	addi	a5,a5,32
    80003a9c:	00e79463          	bne	a5,a4,80003aa4 <uartputc+0x6c>
    80003aa0:	0000006f          	j	80003aa0 <uartputc+0x68>
    80003aa4:	00001097          	auipc	ra,0x1
    80003aa8:	88c080e7          	jalr	-1908(ra) # 80004330 <pop_on>
    80003aac:	00093783          	ld	a5,0(s2)
    80003ab0:	0004b703          	ld	a4,0(s1)
    80003ab4:	02078693          	addi	a3,a5,32
    80003ab8:	fce688e3          	beq	a3,a4,80003a88 <uartputc+0x50>
    80003abc:	01f77693          	andi	a3,a4,31
    80003ac0:	00003597          	auipc	a1,0x3
    80003ac4:	4b058593          	addi	a1,a1,1200 # 80006f70 <uart_tx_buf>
    80003ac8:	00d586b3          	add	a3,a1,a3
    80003acc:	00170713          	addi	a4,a4,1
    80003ad0:	01368023          	sb	s3,0(a3)
    80003ad4:	00e4b023          	sd	a4,0(s1)
    80003ad8:	10000637          	lui	a2,0x10000
    80003adc:	02f71063          	bne	a4,a5,80003afc <uartputc+0xc4>
    80003ae0:	0340006f          	j	80003b14 <uartputc+0xdc>
    80003ae4:	00074703          	lbu	a4,0(a4)
    80003ae8:	00f93023          	sd	a5,0(s2)
    80003aec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003af0:	00093783          	ld	a5,0(s2)
    80003af4:	0004b703          	ld	a4,0(s1)
    80003af8:	00f70e63          	beq	a4,a5,80003b14 <uartputc+0xdc>
    80003afc:	00564683          	lbu	a3,5(a2)
    80003b00:	01f7f713          	andi	a4,a5,31
    80003b04:	00e58733          	add	a4,a1,a4
    80003b08:	0206f693          	andi	a3,a3,32
    80003b0c:	00178793          	addi	a5,a5,1
    80003b10:	fc069ae3          	bnez	a3,80003ae4 <uartputc+0xac>
    80003b14:	02813083          	ld	ra,40(sp)
    80003b18:	02013403          	ld	s0,32(sp)
    80003b1c:	01813483          	ld	s1,24(sp)
    80003b20:	01013903          	ld	s2,16(sp)
    80003b24:	00813983          	ld	s3,8(sp)
    80003b28:	03010113          	addi	sp,sp,48
    80003b2c:	00008067          	ret

0000000080003b30 <uartputc_sync>:
    80003b30:	ff010113          	addi	sp,sp,-16
    80003b34:	00813423          	sd	s0,8(sp)
    80003b38:	01010413          	addi	s0,sp,16
    80003b3c:	00002717          	auipc	a4,0x2
    80003b40:	1ac72703          	lw	a4,428(a4) # 80005ce8 <panicked>
    80003b44:	02071663          	bnez	a4,80003b70 <uartputc_sync+0x40>
    80003b48:	00050793          	mv	a5,a0
    80003b4c:	100006b7          	lui	a3,0x10000
    80003b50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003b54:	02077713          	andi	a4,a4,32
    80003b58:	fe070ce3          	beqz	a4,80003b50 <uartputc_sync+0x20>
    80003b5c:	0ff7f793          	andi	a5,a5,255
    80003b60:	00f68023          	sb	a5,0(a3)
    80003b64:	00813403          	ld	s0,8(sp)
    80003b68:	01010113          	addi	sp,sp,16
    80003b6c:	00008067          	ret
    80003b70:	0000006f          	j	80003b70 <uartputc_sync+0x40>

0000000080003b74 <uartstart>:
    80003b74:	ff010113          	addi	sp,sp,-16
    80003b78:	00813423          	sd	s0,8(sp)
    80003b7c:	01010413          	addi	s0,sp,16
    80003b80:	00002617          	auipc	a2,0x2
    80003b84:	17060613          	addi	a2,a2,368 # 80005cf0 <uart_tx_r>
    80003b88:	00002517          	auipc	a0,0x2
    80003b8c:	17050513          	addi	a0,a0,368 # 80005cf8 <uart_tx_w>
    80003b90:	00063783          	ld	a5,0(a2)
    80003b94:	00053703          	ld	a4,0(a0)
    80003b98:	04f70263          	beq	a4,a5,80003bdc <uartstart+0x68>
    80003b9c:	100005b7          	lui	a1,0x10000
    80003ba0:	00003817          	auipc	a6,0x3
    80003ba4:	3d080813          	addi	a6,a6,976 # 80006f70 <uart_tx_buf>
    80003ba8:	01c0006f          	j	80003bc4 <uartstart+0x50>
    80003bac:	0006c703          	lbu	a4,0(a3)
    80003bb0:	00f63023          	sd	a5,0(a2)
    80003bb4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003bb8:	00063783          	ld	a5,0(a2)
    80003bbc:	00053703          	ld	a4,0(a0)
    80003bc0:	00f70e63          	beq	a4,a5,80003bdc <uartstart+0x68>
    80003bc4:	01f7f713          	andi	a4,a5,31
    80003bc8:	00e806b3          	add	a3,a6,a4
    80003bcc:	0055c703          	lbu	a4,5(a1)
    80003bd0:	00178793          	addi	a5,a5,1
    80003bd4:	02077713          	andi	a4,a4,32
    80003bd8:	fc071ae3          	bnez	a4,80003bac <uartstart+0x38>
    80003bdc:	00813403          	ld	s0,8(sp)
    80003be0:	01010113          	addi	sp,sp,16
    80003be4:	00008067          	ret

0000000080003be8 <uartgetc>:
    80003be8:	ff010113          	addi	sp,sp,-16
    80003bec:	00813423          	sd	s0,8(sp)
    80003bf0:	01010413          	addi	s0,sp,16
    80003bf4:	10000737          	lui	a4,0x10000
    80003bf8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003bfc:	0017f793          	andi	a5,a5,1
    80003c00:	00078c63          	beqz	a5,80003c18 <uartgetc+0x30>
    80003c04:	00074503          	lbu	a0,0(a4)
    80003c08:	0ff57513          	andi	a0,a0,255
    80003c0c:	00813403          	ld	s0,8(sp)
    80003c10:	01010113          	addi	sp,sp,16
    80003c14:	00008067          	ret
    80003c18:	fff00513          	li	a0,-1
    80003c1c:	ff1ff06f          	j	80003c0c <uartgetc+0x24>

0000000080003c20 <uartintr>:
    80003c20:	100007b7          	lui	a5,0x10000
    80003c24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003c28:	0017f793          	andi	a5,a5,1
    80003c2c:	0a078463          	beqz	a5,80003cd4 <uartintr+0xb4>
    80003c30:	fe010113          	addi	sp,sp,-32
    80003c34:	00813823          	sd	s0,16(sp)
    80003c38:	00913423          	sd	s1,8(sp)
    80003c3c:	00113c23          	sd	ra,24(sp)
    80003c40:	02010413          	addi	s0,sp,32
    80003c44:	100004b7          	lui	s1,0x10000
    80003c48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003c4c:	0ff57513          	andi	a0,a0,255
    80003c50:	fffff097          	auipc	ra,0xfffff
    80003c54:	534080e7          	jalr	1332(ra) # 80003184 <consoleintr>
    80003c58:	0054c783          	lbu	a5,5(s1)
    80003c5c:	0017f793          	andi	a5,a5,1
    80003c60:	fe0794e3          	bnez	a5,80003c48 <uartintr+0x28>
    80003c64:	00002617          	auipc	a2,0x2
    80003c68:	08c60613          	addi	a2,a2,140 # 80005cf0 <uart_tx_r>
    80003c6c:	00002517          	auipc	a0,0x2
    80003c70:	08c50513          	addi	a0,a0,140 # 80005cf8 <uart_tx_w>
    80003c74:	00063783          	ld	a5,0(a2)
    80003c78:	00053703          	ld	a4,0(a0)
    80003c7c:	04f70263          	beq	a4,a5,80003cc0 <uartintr+0xa0>
    80003c80:	100005b7          	lui	a1,0x10000
    80003c84:	00003817          	auipc	a6,0x3
    80003c88:	2ec80813          	addi	a6,a6,748 # 80006f70 <uart_tx_buf>
    80003c8c:	01c0006f          	j	80003ca8 <uartintr+0x88>
    80003c90:	0006c703          	lbu	a4,0(a3)
    80003c94:	00f63023          	sd	a5,0(a2)
    80003c98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003c9c:	00063783          	ld	a5,0(a2)
    80003ca0:	00053703          	ld	a4,0(a0)
    80003ca4:	00f70e63          	beq	a4,a5,80003cc0 <uartintr+0xa0>
    80003ca8:	01f7f713          	andi	a4,a5,31
    80003cac:	00e806b3          	add	a3,a6,a4
    80003cb0:	0055c703          	lbu	a4,5(a1)
    80003cb4:	00178793          	addi	a5,a5,1
    80003cb8:	02077713          	andi	a4,a4,32
    80003cbc:	fc071ae3          	bnez	a4,80003c90 <uartintr+0x70>
    80003cc0:	01813083          	ld	ra,24(sp)
    80003cc4:	01013403          	ld	s0,16(sp)
    80003cc8:	00813483          	ld	s1,8(sp)
    80003ccc:	02010113          	addi	sp,sp,32
    80003cd0:	00008067          	ret
    80003cd4:	00002617          	auipc	a2,0x2
    80003cd8:	01c60613          	addi	a2,a2,28 # 80005cf0 <uart_tx_r>
    80003cdc:	00002517          	auipc	a0,0x2
    80003ce0:	01c50513          	addi	a0,a0,28 # 80005cf8 <uart_tx_w>
    80003ce4:	00063783          	ld	a5,0(a2)
    80003ce8:	00053703          	ld	a4,0(a0)
    80003cec:	04f70263          	beq	a4,a5,80003d30 <uartintr+0x110>
    80003cf0:	100005b7          	lui	a1,0x10000
    80003cf4:	00003817          	auipc	a6,0x3
    80003cf8:	27c80813          	addi	a6,a6,636 # 80006f70 <uart_tx_buf>
    80003cfc:	01c0006f          	j	80003d18 <uartintr+0xf8>
    80003d00:	0006c703          	lbu	a4,0(a3)
    80003d04:	00f63023          	sd	a5,0(a2)
    80003d08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d0c:	00063783          	ld	a5,0(a2)
    80003d10:	00053703          	ld	a4,0(a0)
    80003d14:	02f70063          	beq	a4,a5,80003d34 <uartintr+0x114>
    80003d18:	01f7f713          	andi	a4,a5,31
    80003d1c:	00e806b3          	add	a3,a6,a4
    80003d20:	0055c703          	lbu	a4,5(a1)
    80003d24:	00178793          	addi	a5,a5,1
    80003d28:	02077713          	andi	a4,a4,32
    80003d2c:	fc071ae3          	bnez	a4,80003d00 <uartintr+0xe0>
    80003d30:	00008067          	ret
    80003d34:	00008067          	ret

0000000080003d38 <kinit>:
    80003d38:	fc010113          	addi	sp,sp,-64
    80003d3c:	02913423          	sd	s1,40(sp)
    80003d40:	fffff7b7          	lui	a5,0xfffff
    80003d44:	00004497          	auipc	s1,0x4
    80003d48:	25b48493          	addi	s1,s1,603 # 80007f9f <end+0xfff>
    80003d4c:	02813823          	sd	s0,48(sp)
    80003d50:	01313c23          	sd	s3,24(sp)
    80003d54:	00f4f4b3          	and	s1,s1,a5
    80003d58:	02113c23          	sd	ra,56(sp)
    80003d5c:	03213023          	sd	s2,32(sp)
    80003d60:	01413823          	sd	s4,16(sp)
    80003d64:	01513423          	sd	s5,8(sp)
    80003d68:	04010413          	addi	s0,sp,64
    80003d6c:	000017b7          	lui	a5,0x1
    80003d70:	01100993          	li	s3,17
    80003d74:	00f487b3          	add	a5,s1,a5
    80003d78:	01b99993          	slli	s3,s3,0x1b
    80003d7c:	06f9e063          	bltu	s3,a5,80003ddc <kinit+0xa4>
    80003d80:	00003a97          	auipc	s5,0x3
    80003d84:	220a8a93          	addi	s5,s5,544 # 80006fa0 <end>
    80003d88:	0754ec63          	bltu	s1,s5,80003e00 <kinit+0xc8>
    80003d8c:	0734fa63          	bgeu	s1,s3,80003e00 <kinit+0xc8>
    80003d90:	00088a37          	lui	s4,0x88
    80003d94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003d98:	00002917          	auipc	s2,0x2
    80003d9c:	f6890913          	addi	s2,s2,-152 # 80005d00 <kmem>
    80003da0:	00ca1a13          	slli	s4,s4,0xc
    80003da4:	0140006f          	j	80003db8 <kinit+0x80>
    80003da8:	000017b7          	lui	a5,0x1
    80003dac:	00f484b3          	add	s1,s1,a5
    80003db0:	0554e863          	bltu	s1,s5,80003e00 <kinit+0xc8>
    80003db4:	0534f663          	bgeu	s1,s3,80003e00 <kinit+0xc8>
    80003db8:	00001637          	lui	a2,0x1
    80003dbc:	00100593          	li	a1,1
    80003dc0:	00048513          	mv	a0,s1
    80003dc4:	00000097          	auipc	ra,0x0
    80003dc8:	5e4080e7          	jalr	1508(ra) # 800043a8 <__memset>
    80003dcc:	00093783          	ld	a5,0(s2)
    80003dd0:	00f4b023          	sd	a5,0(s1)
    80003dd4:	00993023          	sd	s1,0(s2)
    80003dd8:	fd4498e3          	bne	s1,s4,80003da8 <kinit+0x70>
    80003ddc:	03813083          	ld	ra,56(sp)
    80003de0:	03013403          	ld	s0,48(sp)
    80003de4:	02813483          	ld	s1,40(sp)
    80003de8:	02013903          	ld	s2,32(sp)
    80003dec:	01813983          	ld	s3,24(sp)
    80003df0:	01013a03          	ld	s4,16(sp)
    80003df4:	00813a83          	ld	s5,8(sp)
    80003df8:	04010113          	addi	sp,sp,64
    80003dfc:	00008067          	ret
    80003e00:	00001517          	auipc	a0,0x1
    80003e04:	62850513          	addi	a0,a0,1576 # 80005428 <digits+0x18>
    80003e08:	fffff097          	auipc	ra,0xfffff
    80003e0c:	4b4080e7          	jalr	1204(ra) # 800032bc <panic>

0000000080003e10 <freerange>:
    80003e10:	fc010113          	addi	sp,sp,-64
    80003e14:	000017b7          	lui	a5,0x1
    80003e18:	02913423          	sd	s1,40(sp)
    80003e1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003e20:	009504b3          	add	s1,a0,s1
    80003e24:	fffff537          	lui	a0,0xfffff
    80003e28:	02813823          	sd	s0,48(sp)
    80003e2c:	02113c23          	sd	ra,56(sp)
    80003e30:	03213023          	sd	s2,32(sp)
    80003e34:	01313c23          	sd	s3,24(sp)
    80003e38:	01413823          	sd	s4,16(sp)
    80003e3c:	01513423          	sd	s5,8(sp)
    80003e40:	01613023          	sd	s6,0(sp)
    80003e44:	04010413          	addi	s0,sp,64
    80003e48:	00a4f4b3          	and	s1,s1,a0
    80003e4c:	00f487b3          	add	a5,s1,a5
    80003e50:	06f5e463          	bltu	a1,a5,80003eb8 <freerange+0xa8>
    80003e54:	00003a97          	auipc	s5,0x3
    80003e58:	14ca8a93          	addi	s5,s5,332 # 80006fa0 <end>
    80003e5c:	0954e263          	bltu	s1,s5,80003ee0 <freerange+0xd0>
    80003e60:	01100993          	li	s3,17
    80003e64:	01b99993          	slli	s3,s3,0x1b
    80003e68:	0734fc63          	bgeu	s1,s3,80003ee0 <freerange+0xd0>
    80003e6c:	00058a13          	mv	s4,a1
    80003e70:	00002917          	auipc	s2,0x2
    80003e74:	e9090913          	addi	s2,s2,-368 # 80005d00 <kmem>
    80003e78:	00002b37          	lui	s6,0x2
    80003e7c:	0140006f          	j	80003e90 <freerange+0x80>
    80003e80:	000017b7          	lui	a5,0x1
    80003e84:	00f484b3          	add	s1,s1,a5
    80003e88:	0554ec63          	bltu	s1,s5,80003ee0 <freerange+0xd0>
    80003e8c:	0534fa63          	bgeu	s1,s3,80003ee0 <freerange+0xd0>
    80003e90:	00001637          	lui	a2,0x1
    80003e94:	00100593          	li	a1,1
    80003e98:	00048513          	mv	a0,s1
    80003e9c:	00000097          	auipc	ra,0x0
    80003ea0:	50c080e7          	jalr	1292(ra) # 800043a8 <__memset>
    80003ea4:	00093703          	ld	a4,0(s2)
    80003ea8:	016487b3          	add	a5,s1,s6
    80003eac:	00e4b023          	sd	a4,0(s1)
    80003eb0:	00993023          	sd	s1,0(s2)
    80003eb4:	fcfa76e3          	bgeu	s4,a5,80003e80 <freerange+0x70>
    80003eb8:	03813083          	ld	ra,56(sp)
    80003ebc:	03013403          	ld	s0,48(sp)
    80003ec0:	02813483          	ld	s1,40(sp)
    80003ec4:	02013903          	ld	s2,32(sp)
    80003ec8:	01813983          	ld	s3,24(sp)
    80003ecc:	01013a03          	ld	s4,16(sp)
    80003ed0:	00813a83          	ld	s5,8(sp)
    80003ed4:	00013b03          	ld	s6,0(sp)
    80003ed8:	04010113          	addi	sp,sp,64
    80003edc:	00008067          	ret
    80003ee0:	00001517          	auipc	a0,0x1
    80003ee4:	54850513          	addi	a0,a0,1352 # 80005428 <digits+0x18>
    80003ee8:	fffff097          	auipc	ra,0xfffff
    80003eec:	3d4080e7          	jalr	980(ra) # 800032bc <panic>

0000000080003ef0 <kfree>:
    80003ef0:	fe010113          	addi	sp,sp,-32
    80003ef4:	00813823          	sd	s0,16(sp)
    80003ef8:	00113c23          	sd	ra,24(sp)
    80003efc:	00913423          	sd	s1,8(sp)
    80003f00:	02010413          	addi	s0,sp,32
    80003f04:	03451793          	slli	a5,a0,0x34
    80003f08:	04079c63          	bnez	a5,80003f60 <kfree+0x70>
    80003f0c:	00003797          	auipc	a5,0x3
    80003f10:	09478793          	addi	a5,a5,148 # 80006fa0 <end>
    80003f14:	00050493          	mv	s1,a0
    80003f18:	04f56463          	bltu	a0,a5,80003f60 <kfree+0x70>
    80003f1c:	01100793          	li	a5,17
    80003f20:	01b79793          	slli	a5,a5,0x1b
    80003f24:	02f57e63          	bgeu	a0,a5,80003f60 <kfree+0x70>
    80003f28:	00001637          	lui	a2,0x1
    80003f2c:	00100593          	li	a1,1
    80003f30:	00000097          	auipc	ra,0x0
    80003f34:	478080e7          	jalr	1144(ra) # 800043a8 <__memset>
    80003f38:	00002797          	auipc	a5,0x2
    80003f3c:	dc878793          	addi	a5,a5,-568 # 80005d00 <kmem>
    80003f40:	0007b703          	ld	a4,0(a5)
    80003f44:	01813083          	ld	ra,24(sp)
    80003f48:	01013403          	ld	s0,16(sp)
    80003f4c:	00e4b023          	sd	a4,0(s1)
    80003f50:	0097b023          	sd	s1,0(a5)
    80003f54:	00813483          	ld	s1,8(sp)
    80003f58:	02010113          	addi	sp,sp,32
    80003f5c:	00008067          	ret
    80003f60:	00001517          	auipc	a0,0x1
    80003f64:	4c850513          	addi	a0,a0,1224 # 80005428 <digits+0x18>
    80003f68:	fffff097          	auipc	ra,0xfffff
    80003f6c:	354080e7          	jalr	852(ra) # 800032bc <panic>

0000000080003f70 <kalloc>:
    80003f70:	fe010113          	addi	sp,sp,-32
    80003f74:	00813823          	sd	s0,16(sp)
    80003f78:	00913423          	sd	s1,8(sp)
    80003f7c:	00113c23          	sd	ra,24(sp)
    80003f80:	02010413          	addi	s0,sp,32
    80003f84:	00002797          	auipc	a5,0x2
    80003f88:	d7c78793          	addi	a5,a5,-644 # 80005d00 <kmem>
    80003f8c:	0007b483          	ld	s1,0(a5)
    80003f90:	02048063          	beqz	s1,80003fb0 <kalloc+0x40>
    80003f94:	0004b703          	ld	a4,0(s1)
    80003f98:	00001637          	lui	a2,0x1
    80003f9c:	00500593          	li	a1,5
    80003fa0:	00048513          	mv	a0,s1
    80003fa4:	00e7b023          	sd	a4,0(a5)
    80003fa8:	00000097          	auipc	ra,0x0
    80003fac:	400080e7          	jalr	1024(ra) # 800043a8 <__memset>
    80003fb0:	01813083          	ld	ra,24(sp)
    80003fb4:	01013403          	ld	s0,16(sp)
    80003fb8:	00048513          	mv	a0,s1
    80003fbc:	00813483          	ld	s1,8(sp)
    80003fc0:	02010113          	addi	sp,sp,32
    80003fc4:	00008067          	ret

0000000080003fc8 <initlock>:
    80003fc8:	ff010113          	addi	sp,sp,-16
    80003fcc:	00813423          	sd	s0,8(sp)
    80003fd0:	01010413          	addi	s0,sp,16
    80003fd4:	00813403          	ld	s0,8(sp)
    80003fd8:	00b53423          	sd	a1,8(a0)
    80003fdc:	00052023          	sw	zero,0(a0)
    80003fe0:	00053823          	sd	zero,16(a0)
    80003fe4:	01010113          	addi	sp,sp,16
    80003fe8:	00008067          	ret

0000000080003fec <acquire>:
    80003fec:	fe010113          	addi	sp,sp,-32
    80003ff0:	00813823          	sd	s0,16(sp)
    80003ff4:	00913423          	sd	s1,8(sp)
    80003ff8:	00113c23          	sd	ra,24(sp)
    80003ffc:	01213023          	sd	s2,0(sp)
    80004000:	02010413          	addi	s0,sp,32
    80004004:	00050493          	mv	s1,a0
    80004008:	10002973          	csrr	s2,sstatus
    8000400c:	100027f3          	csrr	a5,sstatus
    80004010:	ffd7f793          	andi	a5,a5,-3
    80004014:	10079073          	csrw	sstatus,a5
    80004018:	fffff097          	auipc	ra,0xfffff
    8000401c:	8e0080e7          	jalr	-1824(ra) # 800028f8 <mycpu>
    80004020:	07852783          	lw	a5,120(a0)
    80004024:	06078e63          	beqz	a5,800040a0 <acquire+0xb4>
    80004028:	fffff097          	auipc	ra,0xfffff
    8000402c:	8d0080e7          	jalr	-1840(ra) # 800028f8 <mycpu>
    80004030:	07852783          	lw	a5,120(a0)
    80004034:	0004a703          	lw	a4,0(s1)
    80004038:	0017879b          	addiw	a5,a5,1
    8000403c:	06f52c23          	sw	a5,120(a0)
    80004040:	04071063          	bnez	a4,80004080 <acquire+0x94>
    80004044:	00100713          	li	a4,1
    80004048:	00070793          	mv	a5,a4
    8000404c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004050:	0007879b          	sext.w	a5,a5
    80004054:	fe079ae3          	bnez	a5,80004048 <acquire+0x5c>
    80004058:	0ff0000f          	fence
    8000405c:	fffff097          	auipc	ra,0xfffff
    80004060:	89c080e7          	jalr	-1892(ra) # 800028f8 <mycpu>
    80004064:	01813083          	ld	ra,24(sp)
    80004068:	01013403          	ld	s0,16(sp)
    8000406c:	00a4b823          	sd	a0,16(s1)
    80004070:	00013903          	ld	s2,0(sp)
    80004074:	00813483          	ld	s1,8(sp)
    80004078:	02010113          	addi	sp,sp,32
    8000407c:	00008067          	ret
    80004080:	0104b903          	ld	s2,16(s1)
    80004084:	fffff097          	auipc	ra,0xfffff
    80004088:	874080e7          	jalr	-1932(ra) # 800028f8 <mycpu>
    8000408c:	faa91ce3          	bne	s2,a0,80004044 <acquire+0x58>
    80004090:	00001517          	auipc	a0,0x1
    80004094:	3a050513          	addi	a0,a0,928 # 80005430 <digits+0x20>
    80004098:	fffff097          	auipc	ra,0xfffff
    8000409c:	224080e7          	jalr	548(ra) # 800032bc <panic>
    800040a0:	00195913          	srli	s2,s2,0x1
    800040a4:	fffff097          	auipc	ra,0xfffff
    800040a8:	854080e7          	jalr	-1964(ra) # 800028f8 <mycpu>
    800040ac:	00197913          	andi	s2,s2,1
    800040b0:	07252e23          	sw	s2,124(a0)
    800040b4:	f75ff06f          	j	80004028 <acquire+0x3c>

00000000800040b8 <release>:
    800040b8:	fe010113          	addi	sp,sp,-32
    800040bc:	00813823          	sd	s0,16(sp)
    800040c0:	00113c23          	sd	ra,24(sp)
    800040c4:	00913423          	sd	s1,8(sp)
    800040c8:	01213023          	sd	s2,0(sp)
    800040cc:	02010413          	addi	s0,sp,32
    800040d0:	00052783          	lw	a5,0(a0)
    800040d4:	00079a63          	bnez	a5,800040e8 <release+0x30>
    800040d8:	00001517          	auipc	a0,0x1
    800040dc:	36050513          	addi	a0,a0,864 # 80005438 <digits+0x28>
    800040e0:	fffff097          	auipc	ra,0xfffff
    800040e4:	1dc080e7          	jalr	476(ra) # 800032bc <panic>
    800040e8:	01053903          	ld	s2,16(a0)
    800040ec:	00050493          	mv	s1,a0
    800040f0:	fffff097          	auipc	ra,0xfffff
    800040f4:	808080e7          	jalr	-2040(ra) # 800028f8 <mycpu>
    800040f8:	fea910e3          	bne	s2,a0,800040d8 <release+0x20>
    800040fc:	0004b823          	sd	zero,16(s1)
    80004100:	0ff0000f          	fence
    80004104:	0f50000f          	fence	iorw,ow
    80004108:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000410c:	ffffe097          	auipc	ra,0xffffe
    80004110:	7ec080e7          	jalr	2028(ra) # 800028f8 <mycpu>
    80004114:	100027f3          	csrr	a5,sstatus
    80004118:	0027f793          	andi	a5,a5,2
    8000411c:	04079a63          	bnez	a5,80004170 <release+0xb8>
    80004120:	07852783          	lw	a5,120(a0)
    80004124:	02f05e63          	blez	a5,80004160 <release+0xa8>
    80004128:	fff7871b          	addiw	a4,a5,-1
    8000412c:	06e52c23          	sw	a4,120(a0)
    80004130:	00071c63          	bnez	a4,80004148 <release+0x90>
    80004134:	07c52783          	lw	a5,124(a0)
    80004138:	00078863          	beqz	a5,80004148 <release+0x90>
    8000413c:	100027f3          	csrr	a5,sstatus
    80004140:	0027e793          	ori	a5,a5,2
    80004144:	10079073          	csrw	sstatus,a5
    80004148:	01813083          	ld	ra,24(sp)
    8000414c:	01013403          	ld	s0,16(sp)
    80004150:	00813483          	ld	s1,8(sp)
    80004154:	00013903          	ld	s2,0(sp)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	00008067          	ret
    80004160:	00001517          	auipc	a0,0x1
    80004164:	2f850513          	addi	a0,a0,760 # 80005458 <digits+0x48>
    80004168:	fffff097          	auipc	ra,0xfffff
    8000416c:	154080e7          	jalr	340(ra) # 800032bc <panic>
    80004170:	00001517          	auipc	a0,0x1
    80004174:	2d050513          	addi	a0,a0,720 # 80005440 <digits+0x30>
    80004178:	fffff097          	auipc	ra,0xfffff
    8000417c:	144080e7          	jalr	324(ra) # 800032bc <panic>

0000000080004180 <holding>:
    80004180:	00052783          	lw	a5,0(a0)
    80004184:	00079663          	bnez	a5,80004190 <holding+0x10>
    80004188:	00000513          	li	a0,0
    8000418c:	00008067          	ret
    80004190:	fe010113          	addi	sp,sp,-32
    80004194:	00813823          	sd	s0,16(sp)
    80004198:	00913423          	sd	s1,8(sp)
    8000419c:	00113c23          	sd	ra,24(sp)
    800041a0:	02010413          	addi	s0,sp,32
    800041a4:	01053483          	ld	s1,16(a0)
    800041a8:	ffffe097          	auipc	ra,0xffffe
    800041ac:	750080e7          	jalr	1872(ra) # 800028f8 <mycpu>
    800041b0:	01813083          	ld	ra,24(sp)
    800041b4:	01013403          	ld	s0,16(sp)
    800041b8:	40a48533          	sub	a0,s1,a0
    800041bc:	00153513          	seqz	a0,a0
    800041c0:	00813483          	ld	s1,8(sp)
    800041c4:	02010113          	addi	sp,sp,32
    800041c8:	00008067          	ret

00000000800041cc <push_off>:
    800041cc:	fe010113          	addi	sp,sp,-32
    800041d0:	00813823          	sd	s0,16(sp)
    800041d4:	00113c23          	sd	ra,24(sp)
    800041d8:	00913423          	sd	s1,8(sp)
    800041dc:	02010413          	addi	s0,sp,32
    800041e0:	100024f3          	csrr	s1,sstatus
    800041e4:	100027f3          	csrr	a5,sstatus
    800041e8:	ffd7f793          	andi	a5,a5,-3
    800041ec:	10079073          	csrw	sstatus,a5
    800041f0:	ffffe097          	auipc	ra,0xffffe
    800041f4:	708080e7          	jalr	1800(ra) # 800028f8 <mycpu>
    800041f8:	07852783          	lw	a5,120(a0)
    800041fc:	02078663          	beqz	a5,80004228 <push_off+0x5c>
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	6f8080e7          	jalr	1784(ra) # 800028f8 <mycpu>
    80004208:	07852783          	lw	a5,120(a0)
    8000420c:	01813083          	ld	ra,24(sp)
    80004210:	01013403          	ld	s0,16(sp)
    80004214:	0017879b          	addiw	a5,a5,1
    80004218:	06f52c23          	sw	a5,120(a0)
    8000421c:	00813483          	ld	s1,8(sp)
    80004220:	02010113          	addi	sp,sp,32
    80004224:	00008067          	ret
    80004228:	0014d493          	srli	s1,s1,0x1
    8000422c:	ffffe097          	auipc	ra,0xffffe
    80004230:	6cc080e7          	jalr	1740(ra) # 800028f8 <mycpu>
    80004234:	0014f493          	andi	s1,s1,1
    80004238:	06952e23          	sw	s1,124(a0)
    8000423c:	fc5ff06f          	j	80004200 <push_off+0x34>

0000000080004240 <pop_off>:
    80004240:	ff010113          	addi	sp,sp,-16
    80004244:	00813023          	sd	s0,0(sp)
    80004248:	00113423          	sd	ra,8(sp)
    8000424c:	01010413          	addi	s0,sp,16
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	6a8080e7          	jalr	1704(ra) # 800028f8 <mycpu>
    80004258:	100027f3          	csrr	a5,sstatus
    8000425c:	0027f793          	andi	a5,a5,2
    80004260:	04079663          	bnez	a5,800042ac <pop_off+0x6c>
    80004264:	07852783          	lw	a5,120(a0)
    80004268:	02f05a63          	blez	a5,8000429c <pop_off+0x5c>
    8000426c:	fff7871b          	addiw	a4,a5,-1
    80004270:	06e52c23          	sw	a4,120(a0)
    80004274:	00071c63          	bnez	a4,8000428c <pop_off+0x4c>
    80004278:	07c52783          	lw	a5,124(a0)
    8000427c:	00078863          	beqz	a5,8000428c <pop_off+0x4c>
    80004280:	100027f3          	csrr	a5,sstatus
    80004284:	0027e793          	ori	a5,a5,2
    80004288:	10079073          	csrw	sstatus,a5
    8000428c:	00813083          	ld	ra,8(sp)
    80004290:	00013403          	ld	s0,0(sp)
    80004294:	01010113          	addi	sp,sp,16
    80004298:	00008067          	ret
    8000429c:	00001517          	auipc	a0,0x1
    800042a0:	1bc50513          	addi	a0,a0,444 # 80005458 <digits+0x48>
    800042a4:	fffff097          	auipc	ra,0xfffff
    800042a8:	018080e7          	jalr	24(ra) # 800032bc <panic>
    800042ac:	00001517          	auipc	a0,0x1
    800042b0:	19450513          	addi	a0,a0,404 # 80005440 <digits+0x30>
    800042b4:	fffff097          	auipc	ra,0xfffff
    800042b8:	008080e7          	jalr	8(ra) # 800032bc <panic>

00000000800042bc <push_on>:
    800042bc:	fe010113          	addi	sp,sp,-32
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00113c23          	sd	ra,24(sp)
    800042c8:	00913423          	sd	s1,8(sp)
    800042cc:	02010413          	addi	s0,sp,32
    800042d0:	100024f3          	csrr	s1,sstatus
    800042d4:	100027f3          	csrr	a5,sstatus
    800042d8:	0027e793          	ori	a5,a5,2
    800042dc:	10079073          	csrw	sstatus,a5
    800042e0:	ffffe097          	auipc	ra,0xffffe
    800042e4:	618080e7          	jalr	1560(ra) # 800028f8 <mycpu>
    800042e8:	07852783          	lw	a5,120(a0)
    800042ec:	02078663          	beqz	a5,80004318 <push_on+0x5c>
    800042f0:	ffffe097          	auipc	ra,0xffffe
    800042f4:	608080e7          	jalr	1544(ra) # 800028f8 <mycpu>
    800042f8:	07852783          	lw	a5,120(a0)
    800042fc:	01813083          	ld	ra,24(sp)
    80004300:	01013403          	ld	s0,16(sp)
    80004304:	0017879b          	addiw	a5,a5,1
    80004308:	06f52c23          	sw	a5,120(a0)
    8000430c:	00813483          	ld	s1,8(sp)
    80004310:	02010113          	addi	sp,sp,32
    80004314:	00008067          	ret
    80004318:	0014d493          	srli	s1,s1,0x1
    8000431c:	ffffe097          	auipc	ra,0xffffe
    80004320:	5dc080e7          	jalr	1500(ra) # 800028f8 <mycpu>
    80004324:	0014f493          	andi	s1,s1,1
    80004328:	06952e23          	sw	s1,124(a0)
    8000432c:	fc5ff06f          	j	800042f0 <push_on+0x34>

0000000080004330 <pop_on>:
    80004330:	ff010113          	addi	sp,sp,-16
    80004334:	00813023          	sd	s0,0(sp)
    80004338:	00113423          	sd	ra,8(sp)
    8000433c:	01010413          	addi	s0,sp,16
    80004340:	ffffe097          	auipc	ra,0xffffe
    80004344:	5b8080e7          	jalr	1464(ra) # 800028f8 <mycpu>
    80004348:	100027f3          	csrr	a5,sstatus
    8000434c:	0027f793          	andi	a5,a5,2
    80004350:	04078463          	beqz	a5,80004398 <pop_on+0x68>
    80004354:	07852783          	lw	a5,120(a0)
    80004358:	02f05863          	blez	a5,80004388 <pop_on+0x58>
    8000435c:	fff7879b          	addiw	a5,a5,-1
    80004360:	06f52c23          	sw	a5,120(a0)
    80004364:	07853783          	ld	a5,120(a0)
    80004368:	00079863          	bnez	a5,80004378 <pop_on+0x48>
    8000436c:	100027f3          	csrr	a5,sstatus
    80004370:	ffd7f793          	andi	a5,a5,-3
    80004374:	10079073          	csrw	sstatus,a5
    80004378:	00813083          	ld	ra,8(sp)
    8000437c:	00013403          	ld	s0,0(sp)
    80004380:	01010113          	addi	sp,sp,16
    80004384:	00008067          	ret
    80004388:	00001517          	auipc	a0,0x1
    8000438c:	0f850513          	addi	a0,a0,248 # 80005480 <digits+0x70>
    80004390:	fffff097          	auipc	ra,0xfffff
    80004394:	f2c080e7          	jalr	-212(ra) # 800032bc <panic>
    80004398:	00001517          	auipc	a0,0x1
    8000439c:	0c850513          	addi	a0,a0,200 # 80005460 <digits+0x50>
    800043a0:	fffff097          	auipc	ra,0xfffff
    800043a4:	f1c080e7          	jalr	-228(ra) # 800032bc <panic>

00000000800043a8 <__memset>:
    800043a8:	ff010113          	addi	sp,sp,-16
    800043ac:	00813423          	sd	s0,8(sp)
    800043b0:	01010413          	addi	s0,sp,16
    800043b4:	1a060e63          	beqz	a2,80004570 <__memset+0x1c8>
    800043b8:	40a007b3          	neg	a5,a0
    800043bc:	0077f793          	andi	a5,a5,7
    800043c0:	00778693          	addi	a3,a5,7
    800043c4:	00b00813          	li	a6,11
    800043c8:	0ff5f593          	andi	a1,a1,255
    800043cc:	fff6071b          	addiw	a4,a2,-1
    800043d0:	1b06e663          	bltu	a3,a6,8000457c <__memset+0x1d4>
    800043d4:	1cd76463          	bltu	a4,a3,8000459c <__memset+0x1f4>
    800043d8:	1a078e63          	beqz	a5,80004594 <__memset+0x1ec>
    800043dc:	00b50023          	sb	a1,0(a0)
    800043e0:	00100713          	li	a4,1
    800043e4:	1ae78463          	beq	a5,a4,8000458c <__memset+0x1e4>
    800043e8:	00b500a3          	sb	a1,1(a0)
    800043ec:	00200713          	li	a4,2
    800043f0:	1ae78a63          	beq	a5,a4,800045a4 <__memset+0x1fc>
    800043f4:	00b50123          	sb	a1,2(a0)
    800043f8:	00300713          	li	a4,3
    800043fc:	18e78463          	beq	a5,a4,80004584 <__memset+0x1dc>
    80004400:	00b501a3          	sb	a1,3(a0)
    80004404:	00400713          	li	a4,4
    80004408:	1ae78263          	beq	a5,a4,800045ac <__memset+0x204>
    8000440c:	00b50223          	sb	a1,4(a0)
    80004410:	00500713          	li	a4,5
    80004414:	1ae78063          	beq	a5,a4,800045b4 <__memset+0x20c>
    80004418:	00b502a3          	sb	a1,5(a0)
    8000441c:	00700713          	li	a4,7
    80004420:	18e79e63          	bne	a5,a4,800045bc <__memset+0x214>
    80004424:	00b50323          	sb	a1,6(a0)
    80004428:	00700e93          	li	t4,7
    8000442c:	00859713          	slli	a4,a1,0x8
    80004430:	00e5e733          	or	a4,a1,a4
    80004434:	01059e13          	slli	t3,a1,0x10
    80004438:	01c76e33          	or	t3,a4,t3
    8000443c:	01859313          	slli	t1,a1,0x18
    80004440:	006e6333          	or	t1,t3,t1
    80004444:	02059893          	slli	a7,a1,0x20
    80004448:	40f60e3b          	subw	t3,a2,a5
    8000444c:	011368b3          	or	a7,t1,a7
    80004450:	02859813          	slli	a6,a1,0x28
    80004454:	0108e833          	or	a6,a7,a6
    80004458:	03059693          	slli	a3,a1,0x30
    8000445c:	003e589b          	srliw	a7,t3,0x3
    80004460:	00d866b3          	or	a3,a6,a3
    80004464:	03859713          	slli	a4,a1,0x38
    80004468:	00389813          	slli	a6,a7,0x3
    8000446c:	00f507b3          	add	a5,a0,a5
    80004470:	00e6e733          	or	a4,a3,a4
    80004474:	000e089b          	sext.w	a7,t3
    80004478:	00f806b3          	add	a3,a6,a5
    8000447c:	00e7b023          	sd	a4,0(a5)
    80004480:	00878793          	addi	a5,a5,8
    80004484:	fed79ce3          	bne	a5,a3,8000447c <__memset+0xd4>
    80004488:	ff8e7793          	andi	a5,t3,-8
    8000448c:	0007871b          	sext.w	a4,a5
    80004490:	01d787bb          	addw	a5,a5,t4
    80004494:	0ce88e63          	beq	a7,a4,80004570 <__memset+0x1c8>
    80004498:	00f50733          	add	a4,a0,a5
    8000449c:	00b70023          	sb	a1,0(a4)
    800044a0:	0017871b          	addiw	a4,a5,1
    800044a4:	0cc77663          	bgeu	a4,a2,80004570 <__memset+0x1c8>
    800044a8:	00e50733          	add	a4,a0,a4
    800044ac:	00b70023          	sb	a1,0(a4)
    800044b0:	0027871b          	addiw	a4,a5,2
    800044b4:	0ac77e63          	bgeu	a4,a2,80004570 <__memset+0x1c8>
    800044b8:	00e50733          	add	a4,a0,a4
    800044bc:	00b70023          	sb	a1,0(a4)
    800044c0:	0037871b          	addiw	a4,a5,3
    800044c4:	0ac77663          	bgeu	a4,a2,80004570 <__memset+0x1c8>
    800044c8:	00e50733          	add	a4,a0,a4
    800044cc:	00b70023          	sb	a1,0(a4)
    800044d0:	0047871b          	addiw	a4,a5,4
    800044d4:	08c77e63          	bgeu	a4,a2,80004570 <__memset+0x1c8>
    800044d8:	00e50733          	add	a4,a0,a4
    800044dc:	00b70023          	sb	a1,0(a4)
    800044e0:	0057871b          	addiw	a4,a5,5
    800044e4:	08c77663          	bgeu	a4,a2,80004570 <__memset+0x1c8>
    800044e8:	00e50733          	add	a4,a0,a4
    800044ec:	00b70023          	sb	a1,0(a4)
    800044f0:	0067871b          	addiw	a4,a5,6
    800044f4:	06c77e63          	bgeu	a4,a2,80004570 <__memset+0x1c8>
    800044f8:	00e50733          	add	a4,a0,a4
    800044fc:	00b70023          	sb	a1,0(a4)
    80004500:	0077871b          	addiw	a4,a5,7
    80004504:	06c77663          	bgeu	a4,a2,80004570 <__memset+0x1c8>
    80004508:	00e50733          	add	a4,a0,a4
    8000450c:	00b70023          	sb	a1,0(a4)
    80004510:	0087871b          	addiw	a4,a5,8
    80004514:	04c77e63          	bgeu	a4,a2,80004570 <__memset+0x1c8>
    80004518:	00e50733          	add	a4,a0,a4
    8000451c:	00b70023          	sb	a1,0(a4)
    80004520:	0097871b          	addiw	a4,a5,9
    80004524:	04c77663          	bgeu	a4,a2,80004570 <__memset+0x1c8>
    80004528:	00e50733          	add	a4,a0,a4
    8000452c:	00b70023          	sb	a1,0(a4)
    80004530:	00a7871b          	addiw	a4,a5,10
    80004534:	02c77e63          	bgeu	a4,a2,80004570 <__memset+0x1c8>
    80004538:	00e50733          	add	a4,a0,a4
    8000453c:	00b70023          	sb	a1,0(a4)
    80004540:	00b7871b          	addiw	a4,a5,11
    80004544:	02c77663          	bgeu	a4,a2,80004570 <__memset+0x1c8>
    80004548:	00e50733          	add	a4,a0,a4
    8000454c:	00b70023          	sb	a1,0(a4)
    80004550:	00c7871b          	addiw	a4,a5,12
    80004554:	00c77e63          	bgeu	a4,a2,80004570 <__memset+0x1c8>
    80004558:	00e50733          	add	a4,a0,a4
    8000455c:	00b70023          	sb	a1,0(a4)
    80004560:	00d7879b          	addiw	a5,a5,13
    80004564:	00c7f663          	bgeu	a5,a2,80004570 <__memset+0x1c8>
    80004568:	00f507b3          	add	a5,a0,a5
    8000456c:	00b78023          	sb	a1,0(a5)
    80004570:	00813403          	ld	s0,8(sp)
    80004574:	01010113          	addi	sp,sp,16
    80004578:	00008067          	ret
    8000457c:	00b00693          	li	a3,11
    80004580:	e55ff06f          	j	800043d4 <__memset+0x2c>
    80004584:	00300e93          	li	t4,3
    80004588:	ea5ff06f          	j	8000442c <__memset+0x84>
    8000458c:	00100e93          	li	t4,1
    80004590:	e9dff06f          	j	8000442c <__memset+0x84>
    80004594:	00000e93          	li	t4,0
    80004598:	e95ff06f          	j	8000442c <__memset+0x84>
    8000459c:	00000793          	li	a5,0
    800045a0:	ef9ff06f          	j	80004498 <__memset+0xf0>
    800045a4:	00200e93          	li	t4,2
    800045a8:	e85ff06f          	j	8000442c <__memset+0x84>
    800045ac:	00400e93          	li	t4,4
    800045b0:	e7dff06f          	j	8000442c <__memset+0x84>
    800045b4:	00500e93          	li	t4,5
    800045b8:	e75ff06f          	j	8000442c <__memset+0x84>
    800045bc:	00600e93          	li	t4,6
    800045c0:	e6dff06f          	j	8000442c <__memset+0x84>

00000000800045c4 <__memmove>:
    800045c4:	ff010113          	addi	sp,sp,-16
    800045c8:	00813423          	sd	s0,8(sp)
    800045cc:	01010413          	addi	s0,sp,16
    800045d0:	0e060863          	beqz	a2,800046c0 <__memmove+0xfc>
    800045d4:	fff6069b          	addiw	a3,a2,-1
    800045d8:	0006881b          	sext.w	a6,a3
    800045dc:	0ea5e863          	bltu	a1,a0,800046cc <__memmove+0x108>
    800045e0:	00758713          	addi	a4,a1,7
    800045e4:	00a5e7b3          	or	a5,a1,a0
    800045e8:	40a70733          	sub	a4,a4,a0
    800045ec:	0077f793          	andi	a5,a5,7
    800045f0:	00f73713          	sltiu	a4,a4,15
    800045f4:	00174713          	xori	a4,a4,1
    800045f8:	0017b793          	seqz	a5,a5
    800045fc:	00e7f7b3          	and	a5,a5,a4
    80004600:	10078863          	beqz	a5,80004710 <__memmove+0x14c>
    80004604:	00900793          	li	a5,9
    80004608:	1107f463          	bgeu	a5,a6,80004710 <__memmove+0x14c>
    8000460c:	0036581b          	srliw	a6,a2,0x3
    80004610:	fff8081b          	addiw	a6,a6,-1
    80004614:	02081813          	slli	a6,a6,0x20
    80004618:	01d85893          	srli	a7,a6,0x1d
    8000461c:	00858813          	addi	a6,a1,8
    80004620:	00058793          	mv	a5,a1
    80004624:	00050713          	mv	a4,a0
    80004628:	01088833          	add	a6,a7,a6
    8000462c:	0007b883          	ld	a7,0(a5)
    80004630:	00878793          	addi	a5,a5,8
    80004634:	00870713          	addi	a4,a4,8
    80004638:	ff173c23          	sd	a7,-8(a4)
    8000463c:	ff0798e3          	bne	a5,a6,8000462c <__memmove+0x68>
    80004640:	ff867713          	andi	a4,a2,-8
    80004644:	02071793          	slli	a5,a4,0x20
    80004648:	0207d793          	srli	a5,a5,0x20
    8000464c:	00f585b3          	add	a1,a1,a5
    80004650:	40e686bb          	subw	a3,a3,a4
    80004654:	00f507b3          	add	a5,a0,a5
    80004658:	06e60463          	beq	a2,a4,800046c0 <__memmove+0xfc>
    8000465c:	0005c703          	lbu	a4,0(a1)
    80004660:	00e78023          	sb	a4,0(a5)
    80004664:	04068e63          	beqz	a3,800046c0 <__memmove+0xfc>
    80004668:	0015c603          	lbu	a2,1(a1)
    8000466c:	00100713          	li	a4,1
    80004670:	00c780a3          	sb	a2,1(a5)
    80004674:	04e68663          	beq	a3,a4,800046c0 <__memmove+0xfc>
    80004678:	0025c603          	lbu	a2,2(a1)
    8000467c:	00200713          	li	a4,2
    80004680:	00c78123          	sb	a2,2(a5)
    80004684:	02e68e63          	beq	a3,a4,800046c0 <__memmove+0xfc>
    80004688:	0035c603          	lbu	a2,3(a1)
    8000468c:	00300713          	li	a4,3
    80004690:	00c781a3          	sb	a2,3(a5)
    80004694:	02e68663          	beq	a3,a4,800046c0 <__memmove+0xfc>
    80004698:	0045c603          	lbu	a2,4(a1)
    8000469c:	00400713          	li	a4,4
    800046a0:	00c78223          	sb	a2,4(a5)
    800046a4:	00e68e63          	beq	a3,a4,800046c0 <__memmove+0xfc>
    800046a8:	0055c603          	lbu	a2,5(a1)
    800046ac:	00500713          	li	a4,5
    800046b0:	00c782a3          	sb	a2,5(a5)
    800046b4:	00e68663          	beq	a3,a4,800046c0 <__memmove+0xfc>
    800046b8:	0065c703          	lbu	a4,6(a1)
    800046bc:	00e78323          	sb	a4,6(a5)
    800046c0:	00813403          	ld	s0,8(sp)
    800046c4:	01010113          	addi	sp,sp,16
    800046c8:	00008067          	ret
    800046cc:	02061713          	slli	a4,a2,0x20
    800046d0:	02075713          	srli	a4,a4,0x20
    800046d4:	00e587b3          	add	a5,a1,a4
    800046d8:	f0f574e3          	bgeu	a0,a5,800045e0 <__memmove+0x1c>
    800046dc:	02069613          	slli	a2,a3,0x20
    800046e0:	02065613          	srli	a2,a2,0x20
    800046e4:	fff64613          	not	a2,a2
    800046e8:	00e50733          	add	a4,a0,a4
    800046ec:	00c78633          	add	a2,a5,a2
    800046f0:	fff7c683          	lbu	a3,-1(a5)
    800046f4:	fff78793          	addi	a5,a5,-1
    800046f8:	fff70713          	addi	a4,a4,-1
    800046fc:	00d70023          	sb	a3,0(a4)
    80004700:	fec798e3          	bne	a5,a2,800046f0 <__memmove+0x12c>
    80004704:	00813403          	ld	s0,8(sp)
    80004708:	01010113          	addi	sp,sp,16
    8000470c:	00008067          	ret
    80004710:	02069713          	slli	a4,a3,0x20
    80004714:	02075713          	srli	a4,a4,0x20
    80004718:	00170713          	addi	a4,a4,1
    8000471c:	00e50733          	add	a4,a0,a4
    80004720:	00050793          	mv	a5,a0
    80004724:	0005c683          	lbu	a3,0(a1)
    80004728:	00178793          	addi	a5,a5,1
    8000472c:	00158593          	addi	a1,a1,1
    80004730:	fed78fa3          	sb	a3,-1(a5)
    80004734:	fee798e3          	bne	a5,a4,80004724 <__memmove+0x160>
    80004738:	f89ff06f          	j	800046c0 <__memmove+0xfc>

000000008000473c <__mem_free>:
    8000473c:	ff010113          	addi	sp,sp,-16
    80004740:	00813423          	sd	s0,8(sp)
    80004744:	01010413          	addi	s0,sp,16
    80004748:	00001597          	auipc	a1,0x1
    8000474c:	5c058593          	addi	a1,a1,1472 # 80005d08 <freep>
    80004750:	0005b783          	ld	a5,0(a1)
    80004754:	ff050693          	addi	a3,a0,-16
    80004758:	0007b703          	ld	a4,0(a5)
    8000475c:	00d7fc63          	bgeu	a5,a3,80004774 <__mem_free+0x38>
    80004760:	00e6ee63          	bltu	a3,a4,8000477c <__mem_free+0x40>
    80004764:	00e7fc63          	bgeu	a5,a4,8000477c <__mem_free+0x40>
    80004768:	00070793          	mv	a5,a4
    8000476c:	0007b703          	ld	a4,0(a5)
    80004770:	fed7e8e3          	bltu	a5,a3,80004760 <__mem_free+0x24>
    80004774:	fee7eae3          	bltu	a5,a4,80004768 <__mem_free+0x2c>
    80004778:	fee6f8e3          	bgeu	a3,a4,80004768 <__mem_free+0x2c>
    8000477c:	ff852803          	lw	a6,-8(a0)
    80004780:	02081613          	slli	a2,a6,0x20
    80004784:	01c65613          	srli	a2,a2,0x1c
    80004788:	00c68633          	add	a2,a3,a2
    8000478c:	02c70a63          	beq	a4,a2,800047c0 <__mem_free+0x84>
    80004790:	fee53823          	sd	a4,-16(a0)
    80004794:	0087a503          	lw	a0,8(a5)
    80004798:	02051613          	slli	a2,a0,0x20
    8000479c:	01c65613          	srli	a2,a2,0x1c
    800047a0:	00c78633          	add	a2,a5,a2
    800047a4:	04c68263          	beq	a3,a2,800047e8 <__mem_free+0xac>
    800047a8:	00813403          	ld	s0,8(sp)
    800047ac:	00d7b023          	sd	a3,0(a5)
    800047b0:	00f5b023          	sd	a5,0(a1)
    800047b4:	00000513          	li	a0,0
    800047b8:	01010113          	addi	sp,sp,16
    800047bc:	00008067          	ret
    800047c0:	00872603          	lw	a2,8(a4)
    800047c4:	00073703          	ld	a4,0(a4)
    800047c8:	0106083b          	addw	a6,a2,a6
    800047cc:	ff052c23          	sw	a6,-8(a0)
    800047d0:	fee53823          	sd	a4,-16(a0)
    800047d4:	0087a503          	lw	a0,8(a5)
    800047d8:	02051613          	slli	a2,a0,0x20
    800047dc:	01c65613          	srli	a2,a2,0x1c
    800047e0:	00c78633          	add	a2,a5,a2
    800047e4:	fcc692e3          	bne	a3,a2,800047a8 <__mem_free+0x6c>
    800047e8:	00813403          	ld	s0,8(sp)
    800047ec:	0105053b          	addw	a0,a0,a6
    800047f0:	00a7a423          	sw	a0,8(a5)
    800047f4:	00e7b023          	sd	a4,0(a5)
    800047f8:	00f5b023          	sd	a5,0(a1)
    800047fc:	00000513          	li	a0,0
    80004800:	01010113          	addi	sp,sp,16
    80004804:	00008067          	ret

0000000080004808 <__mem_alloc>:
    80004808:	fc010113          	addi	sp,sp,-64
    8000480c:	02813823          	sd	s0,48(sp)
    80004810:	02913423          	sd	s1,40(sp)
    80004814:	03213023          	sd	s2,32(sp)
    80004818:	01513423          	sd	s5,8(sp)
    8000481c:	02113c23          	sd	ra,56(sp)
    80004820:	01313c23          	sd	s3,24(sp)
    80004824:	01413823          	sd	s4,16(sp)
    80004828:	01613023          	sd	s6,0(sp)
    8000482c:	04010413          	addi	s0,sp,64
    80004830:	00001a97          	auipc	s5,0x1
    80004834:	4d8a8a93          	addi	s5,s5,1240 # 80005d08 <freep>
    80004838:	00f50913          	addi	s2,a0,15
    8000483c:	000ab683          	ld	a3,0(s5)
    80004840:	00495913          	srli	s2,s2,0x4
    80004844:	0019049b          	addiw	s1,s2,1
    80004848:	00048913          	mv	s2,s1
    8000484c:	0c068c63          	beqz	a3,80004924 <__mem_alloc+0x11c>
    80004850:	0006b503          	ld	a0,0(a3)
    80004854:	00852703          	lw	a4,8(a0)
    80004858:	10977063          	bgeu	a4,s1,80004958 <__mem_alloc+0x150>
    8000485c:	000017b7          	lui	a5,0x1
    80004860:	0009099b          	sext.w	s3,s2
    80004864:	0af4e863          	bltu	s1,a5,80004914 <__mem_alloc+0x10c>
    80004868:	02099a13          	slli	s4,s3,0x20
    8000486c:	01ca5a13          	srli	s4,s4,0x1c
    80004870:	fff00b13          	li	s6,-1
    80004874:	0100006f          	j	80004884 <__mem_alloc+0x7c>
    80004878:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000487c:	00852703          	lw	a4,8(a0)
    80004880:	04977463          	bgeu	a4,s1,800048c8 <__mem_alloc+0xc0>
    80004884:	00050793          	mv	a5,a0
    80004888:	fea698e3          	bne	a3,a0,80004878 <__mem_alloc+0x70>
    8000488c:	000a0513          	mv	a0,s4
    80004890:	00000097          	auipc	ra,0x0
    80004894:	1f0080e7          	jalr	496(ra) # 80004a80 <kvmincrease>
    80004898:	00050793          	mv	a5,a0
    8000489c:	01050513          	addi	a0,a0,16
    800048a0:	07678e63          	beq	a5,s6,8000491c <__mem_alloc+0x114>
    800048a4:	0137a423          	sw	s3,8(a5)
    800048a8:	00000097          	auipc	ra,0x0
    800048ac:	e94080e7          	jalr	-364(ra) # 8000473c <__mem_free>
    800048b0:	000ab783          	ld	a5,0(s5)
    800048b4:	06078463          	beqz	a5,8000491c <__mem_alloc+0x114>
    800048b8:	0007b503          	ld	a0,0(a5)
    800048bc:	00078693          	mv	a3,a5
    800048c0:	00852703          	lw	a4,8(a0)
    800048c4:	fc9760e3          	bltu	a4,s1,80004884 <__mem_alloc+0x7c>
    800048c8:	08e48263          	beq	s1,a4,8000494c <__mem_alloc+0x144>
    800048cc:	4127073b          	subw	a4,a4,s2
    800048d0:	02071693          	slli	a3,a4,0x20
    800048d4:	01c6d693          	srli	a3,a3,0x1c
    800048d8:	00e52423          	sw	a4,8(a0)
    800048dc:	00d50533          	add	a0,a0,a3
    800048e0:	01252423          	sw	s2,8(a0)
    800048e4:	00fab023          	sd	a5,0(s5)
    800048e8:	01050513          	addi	a0,a0,16
    800048ec:	03813083          	ld	ra,56(sp)
    800048f0:	03013403          	ld	s0,48(sp)
    800048f4:	02813483          	ld	s1,40(sp)
    800048f8:	02013903          	ld	s2,32(sp)
    800048fc:	01813983          	ld	s3,24(sp)
    80004900:	01013a03          	ld	s4,16(sp)
    80004904:	00813a83          	ld	s5,8(sp)
    80004908:	00013b03          	ld	s6,0(sp)
    8000490c:	04010113          	addi	sp,sp,64
    80004910:	00008067          	ret
    80004914:	000019b7          	lui	s3,0x1
    80004918:	f51ff06f          	j	80004868 <__mem_alloc+0x60>
    8000491c:	00000513          	li	a0,0
    80004920:	fcdff06f          	j	800048ec <__mem_alloc+0xe4>
    80004924:	00002797          	auipc	a5,0x2
    80004928:	66c78793          	addi	a5,a5,1644 # 80006f90 <base>
    8000492c:	00078513          	mv	a0,a5
    80004930:	00fab023          	sd	a5,0(s5)
    80004934:	00f7b023          	sd	a5,0(a5)
    80004938:	00000713          	li	a4,0
    8000493c:	00002797          	auipc	a5,0x2
    80004940:	6407ae23          	sw	zero,1628(a5) # 80006f98 <base+0x8>
    80004944:	00050693          	mv	a3,a0
    80004948:	f11ff06f          	j	80004858 <__mem_alloc+0x50>
    8000494c:	00053703          	ld	a4,0(a0)
    80004950:	00e7b023          	sd	a4,0(a5)
    80004954:	f91ff06f          	j	800048e4 <__mem_alloc+0xdc>
    80004958:	00068793          	mv	a5,a3
    8000495c:	f6dff06f          	j	800048c8 <__mem_alloc+0xc0>

0000000080004960 <__putc>:
    80004960:	fe010113          	addi	sp,sp,-32
    80004964:	00813823          	sd	s0,16(sp)
    80004968:	00113c23          	sd	ra,24(sp)
    8000496c:	02010413          	addi	s0,sp,32
    80004970:	00050793          	mv	a5,a0
    80004974:	fef40593          	addi	a1,s0,-17
    80004978:	00100613          	li	a2,1
    8000497c:	00000513          	li	a0,0
    80004980:	fef407a3          	sb	a5,-17(s0)
    80004984:	fffff097          	auipc	ra,0xfffff
    80004988:	918080e7          	jalr	-1768(ra) # 8000329c <console_write>
    8000498c:	01813083          	ld	ra,24(sp)
    80004990:	01013403          	ld	s0,16(sp)
    80004994:	02010113          	addi	sp,sp,32
    80004998:	00008067          	ret

000000008000499c <__getc>:
    8000499c:	fe010113          	addi	sp,sp,-32
    800049a0:	00813823          	sd	s0,16(sp)
    800049a4:	00113c23          	sd	ra,24(sp)
    800049a8:	02010413          	addi	s0,sp,32
    800049ac:	fe840593          	addi	a1,s0,-24
    800049b0:	00100613          	li	a2,1
    800049b4:	00000513          	li	a0,0
    800049b8:	fffff097          	auipc	ra,0xfffff
    800049bc:	8c4080e7          	jalr	-1852(ra) # 8000327c <console_read>
    800049c0:	fe844503          	lbu	a0,-24(s0)
    800049c4:	01813083          	ld	ra,24(sp)
    800049c8:	01013403          	ld	s0,16(sp)
    800049cc:	02010113          	addi	sp,sp,32
    800049d0:	00008067          	ret

00000000800049d4 <console_handler>:
    800049d4:	fe010113          	addi	sp,sp,-32
    800049d8:	00813823          	sd	s0,16(sp)
    800049dc:	00113c23          	sd	ra,24(sp)
    800049e0:	00913423          	sd	s1,8(sp)
    800049e4:	02010413          	addi	s0,sp,32
    800049e8:	14202773          	csrr	a4,scause
    800049ec:	100027f3          	csrr	a5,sstatus
    800049f0:	0027f793          	andi	a5,a5,2
    800049f4:	06079e63          	bnez	a5,80004a70 <console_handler+0x9c>
    800049f8:	00074c63          	bltz	a4,80004a10 <console_handler+0x3c>
    800049fc:	01813083          	ld	ra,24(sp)
    80004a00:	01013403          	ld	s0,16(sp)
    80004a04:	00813483          	ld	s1,8(sp)
    80004a08:	02010113          	addi	sp,sp,32
    80004a0c:	00008067          	ret
    80004a10:	0ff77713          	andi	a4,a4,255
    80004a14:	00900793          	li	a5,9
    80004a18:	fef712e3          	bne	a4,a5,800049fc <console_handler+0x28>
    80004a1c:	ffffe097          	auipc	ra,0xffffe
    80004a20:	4b8080e7          	jalr	1208(ra) # 80002ed4 <plic_claim>
    80004a24:	00a00793          	li	a5,10
    80004a28:	00050493          	mv	s1,a0
    80004a2c:	02f50c63          	beq	a0,a5,80004a64 <console_handler+0x90>
    80004a30:	fc0506e3          	beqz	a0,800049fc <console_handler+0x28>
    80004a34:	00050593          	mv	a1,a0
    80004a38:	00001517          	auipc	a0,0x1
    80004a3c:	95050513          	addi	a0,a0,-1712 # 80005388 <_ZZ12printIntegermE6digits+0xe0>
    80004a40:	fffff097          	auipc	ra,0xfffff
    80004a44:	8d8080e7          	jalr	-1832(ra) # 80003318 <__printf>
    80004a48:	01013403          	ld	s0,16(sp)
    80004a4c:	01813083          	ld	ra,24(sp)
    80004a50:	00048513          	mv	a0,s1
    80004a54:	00813483          	ld	s1,8(sp)
    80004a58:	02010113          	addi	sp,sp,32
    80004a5c:	ffffe317          	auipc	t1,0xffffe
    80004a60:	4b030067          	jr	1200(t1) # 80002f0c <plic_complete>
    80004a64:	fffff097          	auipc	ra,0xfffff
    80004a68:	1bc080e7          	jalr	444(ra) # 80003c20 <uartintr>
    80004a6c:	fddff06f          	j	80004a48 <console_handler+0x74>
    80004a70:	00001517          	auipc	a0,0x1
    80004a74:	a1850513          	addi	a0,a0,-1512 # 80005488 <digits+0x78>
    80004a78:	fffff097          	auipc	ra,0xfffff
    80004a7c:	844080e7          	jalr	-1980(ra) # 800032bc <panic>

0000000080004a80 <kvmincrease>:
    80004a80:	fe010113          	addi	sp,sp,-32
    80004a84:	01213023          	sd	s2,0(sp)
    80004a88:	00001937          	lui	s2,0x1
    80004a8c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004a90:	00813823          	sd	s0,16(sp)
    80004a94:	00113c23          	sd	ra,24(sp)
    80004a98:	00913423          	sd	s1,8(sp)
    80004a9c:	02010413          	addi	s0,sp,32
    80004aa0:	01250933          	add	s2,a0,s2
    80004aa4:	00c95913          	srli	s2,s2,0xc
    80004aa8:	02090863          	beqz	s2,80004ad8 <kvmincrease+0x58>
    80004aac:	00000493          	li	s1,0
    80004ab0:	00148493          	addi	s1,s1,1
    80004ab4:	fffff097          	auipc	ra,0xfffff
    80004ab8:	4bc080e7          	jalr	1212(ra) # 80003f70 <kalloc>
    80004abc:	fe991ae3          	bne	s2,s1,80004ab0 <kvmincrease+0x30>
    80004ac0:	01813083          	ld	ra,24(sp)
    80004ac4:	01013403          	ld	s0,16(sp)
    80004ac8:	00813483          	ld	s1,8(sp)
    80004acc:	00013903          	ld	s2,0(sp)
    80004ad0:	02010113          	addi	sp,sp,32
    80004ad4:	00008067          	ret
    80004ad8:	01813083          	ld	ra,24(sp)
    80004adc:	01013403          	ld	s0,16(sp)
    80004ae0:	00813483          	ld	s1,8(sp)
    80004ae4:	00013903          	ld	s2,0(sp)
    80004ae8:	00000513          	li	a0,0
    80004aec:	02010113          	addi	sp,sp,32
    80004af0:	00008067          	ret
	...

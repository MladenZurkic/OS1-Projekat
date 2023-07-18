
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	80813103          	ld	sp,-2040(sp) # 80005808 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0a8020ef          	jal	ra,800020c4 <start>

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
    80001084:	499000ef          	jal	ra,80001d1c <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011e0:	33d000ef          	jal	ra,80001d1c <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012f0:	341000ef          	jal	ra,80001e30 <_ZN5Riscv20handleTimerInterruptEv>

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
    80001400:	209000ef          	jal	ra,80001e08 <_ZN5Riscv22handleConsoleInterruptEv>

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
    if(returnValue == (uint64)4294967295) { //maxint
    800014bc:	fff00793          	li	a5,-1
    800014c0:	0207d793          	srli	a5,a5,0x20
    800014c4:	00f50a63          	beq	a0,a5,800014d8 <_Z13thread_createPP3TCBPFvPvES2_+0x40>
        return -1;
    }
    return (int)returnValue;
    800014c8:	0005051b          	sext.w	a0,a0
}
    800014cc:	00813403          	ld	s0,8(sp)
    800014d0:	01010113          	addi	sp,sp,16
    800014d4:	00008067          	ret
        return -1;
    800014d8:	fff00513          	li	a0,-1
    800014dc:	ff1ff06f          	j	800014cc <_Z13thread_createPP3TCBPFvPvES2_+0x34>

00000000800014e0 <_Z15thread_dispatchv>:


void thread_dispatch() {
    800014e0:	ff010113          	addi	sp,sp,-16
    800014e4:	00813423          	sd	s0,8(sp)
    800014e8:	01010413          	addi	s0,sp,16
    return a0;
}


inline void Riscv::w_a0(uint64 writeValue) {
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    800014ec:	01300793          	li	a5,19
    800014f0:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    800014f4:	00000073          	ecall

}
    800014f8:	00813403          	ld	s0,8(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret

0000000080001504 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    80001504:	ff010113          	addi	sp,sp,-16
    80001508:	00813423          	sd	s0,8(sp)
    8000150c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001510:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x14");
    80001514:	01400513          	li	a0,20
    __asm__ volatile ("ecall");
    80001518:	00000073          	ecall
    8000151c:	00813403          	ld	s0,8(sp)
    80001520:	01010113          	addi	sp,sp,16
    80001524:	00008067          	ret

0000000080001528 <_ZN11MySemaphore4waitEv>:
#include "../h/mySemaphore.hpp"
#include "../h/syscall_c.hpp"

int MySemaphore::wait() {
    if(--this->value < 0) {
    80001528:	00052783          	lw	a5,0(a0)
    8000152c:	fff7879b          	addiw	a5,a5,-1
    80001530:	00f52023          	sw	a5,0(a0)
    80001534:	02079713          	slli	a4,a5,0x20
    80001538:	00074663          	bltz	a4,80001544 <_ZN11MySemaphore4waitEv+0x1c>
        this->blocked.addLast(TCB::running);
        thread_dispatch(); //Ovde treba da se promeni kontekst
        return 0;
    }
    return 1;
    8000153c:	00100513          	li	a0,1
}
    80001540:	00008067          	ret
int MySemaphore::wait() {
    80001544:	fe010113          	addi	sp,sp,-32
    80001548:	00113c23          	sd	ra,24(sp)
    8000154c:	00813823          	sd	s0,16(sp)
    80001550:	00913423          	sd	s1,8(sp)
    80001554:	01213023          	sd	s2,0(sp)
    80001558:	02010413          	addi	s0,sp,32
    8000155c:	00050493          	mv	s1,a0
        this->blocked.addLast(TCB::running);
    80001560:	00004797          	auipc	a5,0x4
    80001564:	2b87b783          	ld	a5,696(a5) # 80005818 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001568:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    8000156c:	01000513          	li	a0,16
    80001570:	00000097          	auipc	ra,0x0
    80001574:	6ec080e7          	jalr	1772(ra) # 80001c5c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001578:	01253023          	sd	s2,0(a0)
    8000157c:	00053423          	sd	zero,8(a0)
        if (tail)
    80001580:	0104b783          	ld	a5,16(s1)
    80001584:	02078863          	beqz	a5,800015b4 <_ZN11MySemaphore4waitEv+0x8c>
        {
            tail->next = elem;
    80001588:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000158c:	00a4b823          	sd	a0,16(s1)
        thread_dispatch(); //Ovde treba da se promeni kontekst
    80001590:	00000097          	auipc	ra,0x0
    80001594:	f50080e7          	jalr	-176(ra) # 800014e0 <_Z15thread_dispatchv>
        return 0;
    80001598:	00000513          	li	a0,0
}
    8000159c:	01813083          	ld	ra,24(sp)
    800015a0:	01013403          	ld	s0,16(sp)
    800015a4:	00813483          	ld	s1,8(sp)
    800015a8:	00013903          	ld	s2,0(sp)
    800015ac:	02010113          	addi	sp,sp,32
    800015b0:	00008067          	ret
        } else
        {
            head = tail = elem;
    800015b4:	00a4b823          	sd	a0,16(s1)
    800015b8:	00a4b423          	sd	a0,8(s1)
    800015bc:	fd5ff06f          	j	80001590 <_ZN11MySemaphore4waitEv+0x68>

00000000800015c0 <_ZN11MySemaphore6signalEv>:

int MySemaphore::signal() {
    if(++this->value <= 0) {
    800015c0:	00052783          	lw	a5,0(a0)
    800015c4:	0017879b          	addiw	a5,a5,1
    800015c8:	0007871b          	sext.w	a4,a5
    800015cc:	00f52023          	sw	a5,0(a0)
    800015d0:	00e05663          	blez	a4,800015dc <_ZN11MySemaphore6signalEv+0x1c>
        TCB *tcb = this->blocked.removeFirst();
        Scheduler::put(tcb);
        return 0;
    }
    return 1;
    800015d4:	00100513          	li	a0,1
    800015d8:	00008067          	ret
int MySemaphore::signal() {
    800015dc:	fe010113          	addi	sp,sp,-32
    800015e0:	00113c23          	sd	ra,24(sp)
    800015e4:	00813823          	sd	s0,16(sp)
    800015e8:	00913423          	sd	s1,8(sp)
    800015ec:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800015f0:	00853783          	ld	a5,8(a0)
    800015f4:	04078663          	beqz	a5,80001640 <_ZN11MySemaphore6signalEv+0x80>

        Elem *elem = head;
        head = head->next;
    800015f8:	0087b703          	ld	a4,8(a5)
    800015fc:	00e53423          	sd	a4,8(a0)
        if (!head) { tail = 0; }
    80001600:	02070c63          	beqz	a4,80001638 <_ZN11MySemaphore6signalEv+0x78>

        T *ret = elem->data;
    80001604:	0007b483          	ld	s1,0(a5)
        delete elem;
    80001608:	00078513          	mv	a0,a5
    8000160c:	00000097          	auipc	ra,0x0
    80001610:	6a0080e7          	jalr	1696(ra) # 80001cac <_ZdlPv>
        Scheduler::put(tcb);
    80001614:	00048513          	mv	a0,s1
    80001618:	00001097          	auipc	ra,0x1
    8000161c:	8e0080e7          	jalr	-1824(ra) # 80001ef8 <_ZN9Scheduler3putEP3TCB>
        return 0;
    80001620:	00000513          	li	a0,0
    80001624:	01813083          	ld	ra,24(sp)
    80001628:	01013403          	ld	s0,16(sp)
    8000162c:	00813483          	ld	s1,8(sp)
    80001630:	02010113          	addi	sp,sp,32
    80001634:	00008067          	ret
        if (!head) { tail = 0; }
    80001638:	00053823          	sd	zero,16(a0)
    8000163c:	fc9ff06f          	j	80001604 <_ZN11MySemaphore6signalEv+0x44>
        if (!head) { return 0; }
    80001640:	00078493          	mv	s1,a5
    80001644:	fd1ff06f          	j	80001614 <_ZN11MySemaphore6signalEv+0x54>

0000000080001648 <_ZL9fibonaccim>:
#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

static uint64 fibonacci(uint64 n)
{
    80001648:	fe010113          	addi	sp,sp,-32
    8000164c:	00113c23          	sd	ra,24(sp)
    80001650:	00813823          	sd	s0,16(sp)
    80001654:	00913423          	sd	s1,8(sp)
    80001658:	01213023          	sd	s2,0(sp)
    8000165c:	02010413          	addi	s0,sp,32
    80001660:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001664:	00100793          	li	a5,1
    80001668:	02a7f663          	bgeu	a5,a0,80001694 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) {
    8000166c:	00357793          	andi	a5,a0,3
    80001670:	02078e63          	beqz	a5,800016ac <_ZL9fibonaccim+0x64>
        //printString("fibonacci yield\n");
        thread_dispatch();
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001674:	fff48513          	addi	a0,s1,-1
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	fd0080e7          	jalr	-48(ra) # 80001648 <_ZL9fibonaccim>
    80001680:	00050913          	mv	s2,a0
    80001684:	ffe48513          	addi	a0,s1,-2
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	fc0080e7          	jalr	-64(ra) # 80001648 <_ZL9fibonaccim>
    80001690:	00a90533          	add	a0,s2,a0
}
    80001694:	01813083          	ld	ra,24(sp)
    80001698:	01013403          	ld	s0,16(sp)
    8000169c:	00813483          	ld	s1,8(sp)
    800016a0:	00013903          	ld	s2,0(sp)
    800016a4:	02010113          	addi	sp,sp,32
    800016a8:	00008067          	ret
        thread_dispatch();
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	e34080e7          	jalr	-460(ra) # 800014e0 <_Z15thread_dispatchv>
    800016b4:	fc1ff06f          	j	80001674 <_ZL9fibonaccim+0x2c>

00000000800016b8 <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    800016b8:	fe010113          	addi	sp,sp,-32
    800016bc:	00113c23          	sd	ra,24(sp)
    800016c0:	00813823          	sd	s0,16(sp)
    800016c4:	00913423          	sd	s1,8(sp)
    800016c8:	01213023          	sd	s2,0(sp)
    800016cc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800016d0:	00000493          	li	s1,0
    800016d4:	0380006f          	j	8000170c <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800016d8:	00004517          	auipc	a0,0x4
    800016dc:	92850513          	addi	a0,a0,-1752 # 80005000 <kvmincrease+0xb30>
    800016e0:	00001097          	auipc	ra,0x1
    800016e4:	8b8080e7          	jalr	-1864(ra) # 80001f98 <_Z11printStringPKc>
        printInteger(i);
    800016e8:	00048513          	mv	a0,s1
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	91c080e7          	jalr	-1764(ra) # 80002008 <_Z12printIntegerm>
        printString("\n");
    800016f4:	00004517          	auipc	a0,0x4
    800016f8:	99c50513          	addi	a0,a0,-1636 # 80005090 <kvmincrease+0xbc0>
    800016fc:	00001097          	auipc	ra,0x1
    80001700:	89c080e7          	jalr	-1892(ra) # 80001f98 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001704:	0014849b          	addiw	s1,s1,1
    80001708:	0ff4f493          	andi	s1,s1,255
    8000170c:	00200793          	li	a5,2
    80001710:	fc97f4e3          	bgeu	a5,s1,800016d8 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001714:	00004517          	auipc	a0,0x4
    80001718:	8f450513          	addi	a0,a0,-1804 # 80005008 <kvmincrease+0xb38>
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	87c080e7          	jalr	-1924(ra) # 80001f98 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001724:	00700313          	li	t1,7
    thread_dispatch();
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	db8080e7          	jalr	-584(ra) # 800014e0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001730:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001734:	00004517          	auipc	a0,0x4
    80001738:	8e450513          	addi	a0,a0,-1820 # 80005018 <kvmincrease+0xb48>
    8000173c:	00001097          	auipc	ra,0x1
    80001740:	85c080e7          	jalr	-1956(ra) # 80001f98 <_Z11printStringPKc>
    printInteger(t1);
    80001744:	00090513          	mv	a0,s2
    80001748:	00001097          	auipc	ra,0x1
    8000174c:	8c0080e7          	jalr	-1856(ra) # 80002008 <_Z12printIntegerm>
    printString("\n");
    80001750:	00004517          	auipc	a0,0x4
    80001754:	94050513          	addi	a0,a0,-1728 # 80005090 <kvmincrease+0xbc0>
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	840080e7          	jalr	-1984(ra) # 80001f98 <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    80001760:	01400513          	li	a0,20
    80001764:	00000097          	auipc	ra,0x0
    80001768:	ee4080e7          	jalr	-284(ra) # 80001648 <_ZL9fibonaccim>
    8000176c:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001770:	00004517          	auipc	a0,0x4
    80001774:	8b050513          	addi	a0,a0,-1872 # 80005020 <kvmincrease+0xb50>
    80001778:	00001097          	auipc	ra,0x1
    8000177c:	820080e7          	jalr	-2016(ra) # 80001f98 <_Z11printStringPKc>
    printInteger(result);
    80001780:	00090513          	mv	a0,s2
    80001784:	00001097          	auipc	ra,0x1
    80001788:	884080e7          	jalr	-1916(ra) # 80002008 <_Z12printIntegerm>
    printString("\n");
    8000178c:	00004517          	auipc	a0,0x4
    80001790:	90450513          	addi	a0,a0,-1788 # 80005090 <kvmincrease+0xbc0>
    80001794:	00001097          	auipc	ra,0x1
    80001798:	804080e7          	jalr	-2044(ra) # 80001f98 <_Z11printStringPKc>
    8000179c:	0380006f          	j	800017d4 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    800017a0:	00004517          	auipc	a0,0x4
    800017a4:	86050513          	addi	a0,a0,-1952 # 80005000 <kvmincrease+0xb30>
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	7f0080e7          	jalr	2032(ra) # 80001f98 <_Z11printStringPKc>
        printInteger(i);
    800017b0:	00048513          	mv	a0,s1
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	854080e7          	jalr	-1964(ra) # 80002008 <_Z12printIntegerm>
        printString("\n");
    800017bc:	00004517          	auipc	a0,0x4
    800017c0:	8d450513          	addi	a0,a0,-1836 # 80005090 <kvmincrease+0xbc0>
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	7d4080e7          	jalr	2004(ra) # 80001f98 <_Z11printStringPKc>
    for (; i < 6; i++)
    800017cc:	0014849b          	addiw	s1,s1,1
    800017d0:	0ff4f493          	andi	s1,s1,255
    800017d4:	00500793          	li	a5,5
    800017d8:	fc97f4e3          	bgeu	a5,s1,800017a0 <_Z11workerBodyAPv+0xe8>
    }

    thread_dispatch();
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	d04080e7          	jalr	-764(ra) # 800014e0 <_Z15thread_dispatchv>
}
    800017e4:	01813083          	ld	ra,24(sp)
    800017e8:	01013403          	ld	s0,16(sp)
    800017ec:	00813483          	ld	s1,8(sp)
    800017f0:	00013903          	ld	s2,0(sp)
    800017f4:	02010113          	addi	sp,sp,32
    800017f8:	00008067          	ret

00000000800017fc <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800017fc:	fe010113          	addi	sp,sp,-32
    80001800:	00113c23          	sd	ra,24(sp)
    80001804:	00813823          	sd	s0,16(sp)
    80001808:	00913423          	sd	s1,8(sp)
    8000180c:	01213023          	sd	s2,0(sp)
    80001810:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    thread_join((thread_t) arg);
    80001814:	00000097          	auipc	ra,0x0
    80001818:	cf0080e7          	jalr	-784(ra) # 80001504 <_Z11thread_joinP3TCB>
    uint8 i = 10;
    8000181c:	00a00493          	li	s1,10
    80001820:	0380006f          	j	80001858 <_Z11workerBodyBPv+0x5c>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001824:	00004517          	auipc	a0,0x4
    80001828:	80c50513          	addi	a0,a0,-2036 # 80005030 <kvmincrease+0xb60>
    8000182c:	00000097          	auipc	ra,0x0
    80001830:	76c080e7          	jalr	1900(ra) # 80001f98 <_Z11printStringPKc>
        printInteger(i);
    80001834:	00048513          	mv	a0,s1
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	7d0080e7          	jalr	2000(ra) # 80002008 <_Z12printIntegerm>
        printString("\n");
    80001840:	00004517          	auipc	a0,0x4
    80001844:	85050513          	addi	a0,a0,-1968 # 80005090 <kvmincrease+0xbc0>
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	750080e7          	jalr	1872(ra) # 80001f98 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001850:	0014849b          	addiw	s1,s1,1
    80001854:	0ff4f493          	andi	s1,s1,255
    80001858:	00c00793          	li	a5,12
    8000185c:	fc97f4e3          	bgeu	a5,s1,80001824 <_Z11workerBodyBPv+0x28>
    }

    printString("B: yield\n");
    80001860:	00003517          	auipc	a0,0x3
    80001864:	7d850513          	addi	a0,a0,2008 # 80005038 <kvmincrease+0xb68>
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	730080e7          	jalr	1840(ra) # 80001f98 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001870:	00500313          	li	t1,5
    thread_dispatch();
    80001874:	00000097          	auipc	ra,0x0
    80001878:	c6c080e7          	jalr	-916(ra) # 800014e0 <_Z15thread_dispatchv>


    uint64 result = fibonacci(23);
    8000187c:	01700513          	li	a0,23
    80001880:	00000097          	auipc	ra,0x0
    80001884:	dc8080e7          	jalr	-568(ra) # 80001648 <_ZL9fibonaccim>
    80001888:	00050913          	mv	s2,a0
    printString("B: fibonaci=");
    8000188c:	00003517          	auipc	a0,0x3
    80001890:	7bc50513          	addi	a0,a0,1980 # 80005048 <kvmincrease+0xb78>
    80001894:	00000097          	auipc	ra,0x0
    80001898:	704080e7          	jalr	1796(ra) # 80001f98 <_Z11printStringPKc>
    printInteger(result);
    8000189c:	00090513          	mv	a0,s2
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	768080e7          	jalr	1896(ra) # 80002008 <_Z12printIntegerm>
    printString("\n");
    800018a8:	00003517          	auipc	a0,0x3
    800018ac:	7e850513          	addi	a0,a0,2024 # 80005090 <kvmincrease+0xbc0>
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	6e8080e7          	jalr	1768(ra) # 80001f98 <_Z11printStringPKc>
    800018b8:	0380006f          	j	800018f0 <_Z11workerBodyBPv+0xf4>

    for (; i < 16; i++)
    {
        printString("B: i=");
    800018bc:	00003517          	auipc	a0,0x3
    800018c0:	77450513          	addi	a0,a0,1908 # 80005030 <kvmincrease+0xb60>
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	6d4080e7          	jalr	1748(ra) # 80001f98 <_Z11printStringPKc>
        printInteger(i);
    800018cc:	00048513          	mv	a0,s1
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	738080e7          	jalr	1848(ra) # 80002008 <_Z12printIntegerm>
        printString("\n");
    800018d8:	00003517          	auipc	a0,0x3
    800018dc:	7b850513          	addi	a0,a0,1976 # 80005090 <kvmincrease+0xbc0>
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	6b8080e7          	jalr	1720(ra) # 80001f98 <_Z11printStringPKc>
    for (; i < 16; i++)
    800018e8:	0014849b          	addiw	s1,s1,1
    800018ec:	0ff4f493          	andi	s1,s1,255
    800018f0:	00f00793          	li	a5,15
    800018f4:	fc97f4e3          	bgeu	a5,s1,800018bc <_Z11workerBodyBPv+0xc0>
    }

    thread_dispatch();
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	be8080e7          	jalr	-1048(ra) # 800014e0 <_Z15thread_dispatchv>
    80001900:	01813083          	ld	ra,24(sp)
    80001904:	01013403          	ld	s0,16(sp)
    80001908:	00813483          	ld	s1,8(sp)
    8000190c:	00013903          	ld	s2,0(sp)
    80001910:	02010113          	addi	sp,sp,32
    80001914:	00008067          	ret

0000000080001918 <main>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

int main()
{
    80001918:	fb010113          	addi	sp,sp,-80
    8000191c:	04113423          	sd	ra,72(sp)
    80001920:	04813023          	sd	s0,64(sp)
    80001924:	02913c23          	sd	s1,56(sp)
    80001928:	03213823          	sd	s2,48(sp)
    8000192c:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr,nullptr);
    80001930:	00000593          	li	a1,0
    80001934:	00000513          	li	a0,0
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	12c080e7          	jalr	300(ra) # 80001a64 <_ZN3TCB12createThreadEPFvPvES0_>
    80001940:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001944:	00004797          	auipc	a5,0x4
    80001948:	ed47b783          	ld	a5,-300(a5) # 80005818 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000194c:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    80001950:	00004797          	auipc	a5,0x4
    80001954:	eb07b783          	ld	a5,-336(a5) # 80005800 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001958:	0017e793          	ori	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000195c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001960:	00200793          	li	a5,2
    80001964:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    int return1 = thread_create(&threads[1], workerBodyA, nullptr);
    80001968:	00000613          	li	a2,0
    8000196c:	00004597          	auipc	a1,0x4
    80001970:	ea45b583          	ld	a1,-348(a1) # 80005810 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001974:	fc040513          	addi	a0,s0,-64
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	b20080e7          	jalr	-1248(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001980:	00050493          	mv	s1,a0
    printString("ThreadA created\n");
    80001984:	00003517          	auipc	a0,0x3
    80001988:	6d450513          	addi	a0,a0,1748 # 80005058 <kvmincrease+0xb88>
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	60c080e7          	jalr	1548(ra) # 80001f98 <_Z11printStringPKc>
    printInteger(return1);
    80001994:	00048513          	mv	a0,s1
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	670080e7          	jalr	1648(ra) # 80002008 <_Z12printIntegerm>
    int return2 = thread_create(&threads[2], workerBodyB, threads[1]);
    800019a0:	fc043603          	ld	a2,-64(s0)
    800019a4:	00004597          	auipc	a1,0x4
    800019a8:	e7c5b583          	ld	a1,-388(a1) # 80005820 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019ac:	fc840513          	addi	a0,s0,-56
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	ae8080e7          	jalr	-1304(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    800019b8:	00050493          	mv	s1,a0
    printString("ThreadB created\n");
    800019bc:	00003517          	auipc	a0,0x3
    800019c0:	6b450513          	addi	a0,a0,1716 # 80005070 <kvmincrease+0xba0>
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	5d4080e7          	jalr	1492(ra) # 80001f98 <_Z11printStringPKc>
    printInteger(return2);
    800019cc:	00048513          	mv	a0,s1
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	638080e7          	jalr	1592(ra) # 80002008 <_Z12printIntegerm>
    800019d8:	00c0006f          	j	800019e4 <main+0xcc>


    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        thread_dispatch();
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	b04080e7          	jalr	-1276(ra) # 800014e0 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    800019e4:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    800019e8:	0207c783          	lbu	a5,32(a5)
    800019ec:	fe0788e3          	beqz	a5,800019dc <main+0xc4>
             threads[2]->isFinished()))
    800019f0:	fc843783          	ld	a5,-56(s0)
    800019f4:	0207c783          	lbu	a5,32(a5)
    while (!(threads[1]->isFinished() &&
    800019f8:	fe0782e3          	beqz	a5,800019dc <main+0xc4>
    800019fc:	fb840493          	addi	s1,s0,-72
    80001a00:	0140006f          	j	80001a14 <main+0xfc>
    }

    for (auto &thread: threads)
    {
        delete thread;
    80001a04:	00090513          	mv	a0,s2
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	2a4080e7          	jalr	676(ra) # 80001cac <_ZdlPv>
    for (auto &thread: threads)
    80001a10:	00848493          	addi	s1,s1,8
    80001a14:	fe040793          	addi	a5,s0,-32
    80001a18:	02f48063          	beq	s1,a5,80001a38 <main+0x120>
        delete thread;
    80001a1c:	0004b903          	ld	s2,0(s1)
    80001a20:	fe0908e3          	beqz	s2,80001a10 <main+0xf8>
    ~TCB() { delete[] stack; }
    80001a24:	00893503          	ld	a0,8(s2)
    80001a28:	fc050ee3          	beqz	a0,80001a04 <main+0xec>
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	2a8080e7          	jalr	680(ra) # 80001cd4 <_ZdaPv>
    80001a34:	fd1ff06f          	j	80001a04 <main+0xec>
    }
    printString("Finished\n");
    80001a38:	00003517          	auipc	a0,0x3
    80001a3c:	65050513          	addi	a0,a0,1616 # 80005088 <kvmincrease+0xbb8>
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	558080e7          	jalr	1368(ra) # 80001f98 <_Z11printStringPKc>

    return 0;
}
    80001a48:	00000513          	li	a0,0
    80001a4c:	04813083          	ld	ra,72(sp)
    80001a50:	04013403          	ld	s0,64(sp)
    80001a54:	03813483          	ld	s1,56(sp)
    80001a58:	03013903          	ld	s2,48(sp)
    80001a5c:	05010113          	addi	sp,sp,80
    80001a60:	00008067          	ret

0000000080001a64 <_ZN3TCB12createThreadEPFvPvES0_>:

//uint64 TCB::timeSliceCounter = 0;
//uint64 TCB::timeSliceCounterTest = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    80001a64:	fd010113          	addi	sp,sp,-48
    80001a68:	02113423          	sd	ra,40(sp)
    80001a6c:	02813023          	sd	s0,32(sp)
    80001a70:	00913c23          	sd	s1,24(sp)
    80001a74:	01213823          	sd	s2,16(sp)
    80001a78:	01313423          	sd	s3,8(sp)
    80001a7c:	03010413          	addi	s0,sp,48
    80001a80:	00050913          	mv	s2,a0
    80001a84:	00058993          	mv	s3,a1
    return new TCB(body, arg);
    80001a88:	03000513          	li	a0,48
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	1d0080e7          	jalr	464(ra) # 80001c5c <_Znwm>
    80001a94:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            arg(arg)
    80001a98:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001a9c:	00090a63          	beqz	s2,80001ab0 <_ZN3TCB12createThreadEPFvPvES0_+0x4c>
    80001aa0:	00002537          	lui	a0,0x2
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	1e0080e7          	jalr	480(ra) # 80001c84 <_Znam>
    80001aac:	0080006f          	j	80001ab4 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001ab0:	00000513          	li	a0,0
            arg(arg)
    80001ab4:	00a4b423          	sd	a0,8(s1)
    80001ab8:	00000797          	auipc	a5,0x0
    80001abc:	0a078793          	addi	a5,a5,160 # 80001b58 <_ZN3TCB13threadWrapperEv>
    80001ac0:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001ac4:	02050663          	beqz	a0,80001af0 <_ZN3TCB12createThreadEPFvPvES0_+0x8c>
    80001ac8:	000027b7          	lui	a5,0x2
    80001acc:	00f507b3          	add	a5,a0,a5
            arg(arg)
    80001ad0:	00f4bc23          	sd	a5,24(s1)
    80001ad4:	02048023          	sb	zero,32(s1)
    80001ad8:	0334b423          	sd	s3,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001adc:	02090c63          	beqz	s2,80001b14 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    80001ae0:	00048513          	mv	a0,s1
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	414080e7          	jalr	1044(ra) # 80001ef8 <_ZN9Scheduler3putEP3TCB>
    80001aec:	0280006f          	j	80001b14 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001af0:	00000793          	li	a5,0
    80001af4:	fddff06f          	j	80001ad0 <_ZN3TCB12createThreadEPFvPvES0_+0x6c>
    80001af8:	00050913          	mv	s2,a0
    80001afc:	00048513          	mv	a0,s1
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	1ac080e7          	jalr	428(ra) # 80001cac <_ZdlPv>
    80001b08:	00090513          	mv	a0,s2
    80001b0c:	00005097          	auipc	ra,0x5
    80001b10:	e4c080e7          	jalr	-436(ra) # 80006958 <_Unwind_Resume>
}
    80001b14:	00048513          	mv	a0,s1
    80001b18:	02813083          	ld	ra,40(sp)
    80001b1c:	02013403          	ld	s0,32(sp)
    80001b20:	01813483          	ld	s1,24(sp)
    80001b24:	01013903          	ld	s2,16(sp)
    80001b28:	00813983          	ld	s3,8(sp)
    80001b2c:	03010113          	addi	sp,sp,48
    80001b30:	00008067          	ret

0000000080001b34 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001b34:	ff010113          	addi	sp,sp,-16
    80001b38:	00813423          	sd	s0,8(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    80001b40:	01300793          	li	a5,19
    80001b44:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    80001b48:	00000073          	ecall
}
    80001b4c:	00813403          	ld	s0,8(sp)
    80001b50:	01010113          	addi	sp,sp,16
    80001b54:	00008067          	ret

0000000080001b58 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001b58:	fe010113          	addi	sp,sp,-32
    80001b5c:	00113c23          	sd	ra,24(sp)
    80001b60:	00813823          	sd	s0,16(sp)
    80001b64:	00913423          	sd	s1,8(sp)
    80001b68:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	190080e7          	jalr	400(ra) # 80001cfc <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001b74:	00004497          	auipc	s1,0x4
    80001b78:	cfc48493          	addi	s1,s1,-772 # 80005870 <_ZN3TCB7runningE>
    80001b7c:	0004b783          	ld	a5,0(s1)
    80001b80:	0007b703          	ld	a4,0(a5) # 2000 <_entry-0x7fffe000>
    80001b84:	0287b503          	ld	a0,40(a5)
    80001b88:	000700e7          	jalr	a4
    running->setFinished(true);
    80001b8c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001b90:	00100713          	li	a4,1
    80001b94:	02e78023          	sb	a4,32(a5)
    TCB::yield();
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	f9c080e7          	jalr	-100(ra) # 80001b34 <_ZN3TCB5yieldEv>
}
    80001ba0:	01813083          	ld	ra,24(sp)
    80001ba4:	01013403          	ld	s0,16(sp)
    80001ba8:	00813483          	ld	s1,8(sp)
    80001bac:	02010113          	addi	sp,sp,32
    80001bb0:	00008067          	ret

0000000080001bb4 <_ZN3TCB8dispatchEv>:
{
    80001bb4:	fe010113          	addi	sp,sp,-32
    80001bb8:	00113c23          	sd	ra,24(sp)
    80001bbc:	00813823          	sd	s0,16(sp)
    80001bc0:	00913423          	sd	s1,8(sp)
    80001bc4:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001bc8:	00004497          	auipc	s1,0x4
    80001bcc:	ca84b483          	ld	s1,-856(s1) # 80005870 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001bd0:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001bd4:	02078c63          	beqz	a5,80001c0c <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	2b8080e7          	jalr	696(ra) # 80001e90 <_ZN9Scheduler3getEv>
    80001be0:	00004797          	auipc	a5,0x4
    80001be4:	c8a7b823          	sd	a0,-880(a5) # 80005870 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001be8:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001bec:	01048513          	addi	a0,s1,16
    80001bf0:	fffff097          	auipc	ra,0xfffff
    80001bf4:	520080e7          	jalr	1312(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001bf8:	01813083          	ld	ra,24(sp)
    80001bfc:	01013403          	ld	s0,16(sp)
    80001c00:	00813483          	ld	s1,8(sp)
    80001c04:	02010113          	addi	sp,sp,32
    80001c08:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	2e8080e7          	jalr	744(ra) # 80001ef8 <_ZN9Scheduler3putEP3TCB>
    80001c18:	fc1ff06f          	j	80001bd8 <_ZN3TCB8dispatchEv+0x24>

0000000080001c1c <_ZN3TCB4joinEPS_>:

void TCB::join(TCB* handle) {
    80001c1c:	fe010113          	addi	sp,sp,-32
    80001c20:	00113c23          	sd	ra,24(sp)
    80001c24:	00813823          	sd	s0,16(sp)
    80001c28:	00913423          	sd	s1,8(sp)
    80001c2c:	02010413          	addi	s0,sp,32
    80001c30:	00050493          	mv	s1,a0
    80001c34:	0204c783          	lbu	a5,32(s1)
    while(!handle->isFinished()) {
    80001c38:	00079863          	bnez	a5,80001c48 <_ZN3TCB4joinEPS_+0x2c>
        TCB::dispatch();
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	f78080e7          	jalr	-136(ra) # 80001bb4 <_ZN3TCB8dispatchEv>
    while(!handle->isFinished()) {
    80001c44:	ff1ff06f          	j	80001c34 <_ZN3TCB4joinEPS_+0x18>
    }
}
    80001c48:	01813083          	ld	ra,24(sp)
    80001c4c:	01013403          	ld	s0,16(sp)
    80001c50:	00813483          	ld	s1,8(sp)
    80001c54:	02010113          	addi	sp,sp,32
    80001c58:	00008067          	ret

0000000080001c5c <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001c5c:	ff010113          	addi	sp,sp,-16
    80001c60:	00113423          	sd	ra,8(sp)
    80001c64:	00813023          	sd	s0,0(sp)
    80001c68:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001c6c:	00002097          	auipc	ra,0x2
    80001c70:	5ec080e7          	jalr	1516(ra) # 80004258 <__mem_alloc>
}
    80001c74:	00813083          	ld	ra,8(sp)
    80001c78:	00013403          	ld	s0,0(sp)
    80001c7c:	01010113          	addi	sp,sp,16
    80001c80:	00008067          	ret

0000000080001c84 <_Znam>:

void *operator new[](size_t n)
{
    80001c84:	ff010113          	addi	sp,sp,-16
    80001c88:	00113423          	sd	ra,8(sp)
    80001c8c:	00813023          	sd	s0,0(sp)
    80001c90:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001c94:	00002097          	auipc	ra,0x2
    80001c98:	5c4080e7          	jalr	1476(ra) # 80004258 <__mem_alloc>
}
    80001c9c:	00813083          	ld	ra,8(sp)
    80001ca0:	00013403          	ld	s0,0(sp)
    80001ca4:	01010113          	addi	sp,sp,16
    80001ca8:	00008067          	ret

0000000080001cac <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00113423          	sd	ra,8(sp)
    80001cb4:	00813023          	sd	s0,0(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001cbc:	00002097          	auipc	ra,0x2
    80001cc0:	4d0080e7          	jalr	1232(ra) # 8000418c <__mem_free>
}
    80001cc4:	00813083          	ld	ra,8(sp)
    80001cc8:	00013403          	ld	s0,0(sp)
    80001ccc:	01010113          	addi	sp,sp,16
    80001cd0:	00008067          	ret

0000000080001cd4 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001cd4:	ff010113          	addi	sp,sp,-16
    80001cd8:	00113423          	sd	ra,8(sp)
    80001cdc:	00813023          	sd	s0,0(sp)
    80001ce0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001ce4:	00002097          	auipc	ra,0x2
    80001ce8:	4a8080e7          	jalr	1192(ra) # 8000418c <__mem_free>
    80001cec:	00813083          	ld	ra,8(sp)
    80001cf0:	00013403          	ld	s0,0(sp)
    80001cf4:	01010113          	addi	sp,sp,16
    80001cf8:	00008067          	ret

0000000080001cfc <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    80001cfc:	ff010113          	addi	sp,sp,-16
    80001d00:	00813423          	sd	s0,8(sp)
    80001d04:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001d08:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001d0c:	10200073          	sret
}
    80001d10:	00813403          	ld	s0,8(sp)
    80001d14:	01010113          	addi	sp,sp,16
    80001d18:	00008067          	ret

0000000080001d1c <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void*);

void Riscv::handleSupervisorTrap()
{
    80001d1c:	fb010113          	addi	sp,sp,-80
    80001d20:	04113423          	sd	ra,72(sp)
    80001d24:	04813023          	sd	s0,64(sp)
    80001d28:	02913c23          	sd	s1,56(sp)
    80001d2c:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001d30:	142027f3          	csrr	a5,scause
    80001d34:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001d38:	fc043783          	ld	a5,-64(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001d3c:	ff878793          	addi	a5,a5,-8
    80001d40:	00100713          	li	a4,1
    80001d44:	00f77c63          	bgeu	a4,a5,80001d5c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    else
    {
        // unexpected trap cause
        // Ovde se ulazi ako se desi neki interrupt tabele
    }
}
    80001d48:	04813083          	ld	ra,72(sp)
    80001d4c:	04013403          	ld	s0,64(sp)
    80001d50:	03813483          	ld	s1,56(sp)
    80001d54:	05010113          	addi	sp,sp,80
    80001d58:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d5c:	141027f3          	csrr	a5,sepc
    80001d60:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001d64:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001d68:	00478793          	addi	a5,a5,4
    80001d6c:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d70:	100027f3          	csrr	a5,sstatus
    80001d74:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001d78:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80001d7c:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001d80:	00050793          	mv	a5,a0
    80001d84:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80001d88:	fc843783          	ld	a5,-56(s0)
        switch (codeOperation) {
    80001d8c:	01300713          	li	a4,19
    80001d90:	04e78e63          	beq	a5,a4,80001dec <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    80001d94:	01400713          	li	a4,20
    80001d98:	06e78063          	beq	a5,a4,80001df8 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    80001d9c:	01100713          	li	a4,17
    80001da0:	00e78c63          	beq	a5,a4,80001db8 <_ZN5Riscv20handleSupervisorTrapEv+0x9c>
        w_sstatus(sstatus);
    80001da4:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001da8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001dac:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001db0:	14179073          	csrw	sepc,a5
}
    80001db4:	f95ff06f          	j	80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    80001db8:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    80001dbc:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    80001dc0:	00068593          	mv	a1,a3
                *tcb = TCB::createThread(body, arg);
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	ca0080e7          	jalr	-864(ra) # 80001a64 <_ZN3TCB12createThreadEPFvPvES0_>
    80001dcc:	00a4b023          	sd	a0,0(s1)
                if(*tcb == nullptr) {
    80001dd0:	00050863          	beqz	a0,80001de0 <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                    __asm__ volatile ("li t0, -1");
    80001dd4:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80001dd8:	04542823          	sw	t0,80(s0)
    80001ddc:	fc9ff06f          	j	80001da4 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
                    __asm__ volatile ("li t0, 0");
    80001de0:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80001de4:	04542823          	sw	t0,80(s0)
    80001de8:	fbdff06f          	j	80001da4 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
                TCB::dispatch();
    80001dec:	00000097          	auipc	ra,0x0
    80001df0:	dc8080e7          	jalr	-568(ra) # 80001bb4 <_ZN3TCB8dispatchEv>
                break;
    80001df4:	fb1ff06f          	j	80001da4 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80001df8:	00058513          	mv	a0,a1
                TCB::join(handle);
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	e20080e7          	jalr	-480(ra) # 80001c1c <_ZN3TCB4joinEPS_>
                break;
    80001e04:	fa1ff06f          	j	80001da4 <_ZN5Riscv20handleSupervisorTrapEv+0x88>

0000000080001e08 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00113423          	sd	ra,8(sp)
    80001e10:	00813023          	sd	s0,0(sp)
    80001e14:	01010413          	addi	s0,sp,16
    console_handler();
    80001e18:	00002097          	auipc	ra,0x2
    80001e1c:	60c080e7          	jalr	1548(ra) # 80004424 <console_handler>
}
    80001e20:	00813083          	ld	ra,8(sp)
    80001e24:	00013403          	ld	s0,0(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret

0000000080001e30 <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    80001e30:	ff010113          	addi	sp,sp,-16
    80001e34:	00813423          	sd	s0,8(sp)
    80001e38:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001e3c:	00200793          	li	a5,2
    80001e40:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
    80001e44:	00813403          	ld	s0,8(sp)
    80001e48:	01010113          	addi	sp,sp,16
    80001e4c:	00008067          	ret

0000000080001e50 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00813423          	sd	s0,8(sp)
    80001e58:	01010413          	addi	s0,sp,16
    80001e5c:	00100793          	li	a5,1
    80001e60:	00f50863          	beq	a0,a5,80001e70 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001e64:	00813403          	ld	s0,8(sp)
    80001e68:	01010113          	addi	sp,sp,16
    80001e6c:	00008067          	ret
    80001e70:	000107b7          	lui	a5,0x10
    80001e74:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e78:	fef596e3          	bne	a1,a5,80001e64 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80001e7c:	00004797          	auipc	a5,0x4
    80001e80:	9fc78793          	addi	a5,a5,-1540 # 80005878 <_ZN9Scheduler16readyThreadQueueE>
    80001e84:	0007b023          	sd	zero,0(a5)
    80001e88:	0007b423          	sd	zero,8(a5)
    80001e8c:	fd9ff06f          	j	80001e64 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001e90 <_ZN9Scheduler3getEv>:
{
    80001e90:	fe010113          	addi	sp,sp,-32
    80001e94:	00113c23          	sd	ra,24(sp)
    80001e98:	00813823          	sd	s0,16(sp)
    80001e9c:	00913423          	sd	s1,8(sp)
    80001ea0:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80001ea4:	00004517          	auipc	a0,0x4
    80001ea8:	9d453503          	ld	a0,-1580(a0) # 80005878 <_ZN9Scheduler16readyThreadQueueE>
    80001eac:	04050263          	beqz	a0,80001ef0 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001eb0:	00853783          	ld	a5,8(a0)
    80001eb4:	00004717          	auipc	a4,0x4
    80001eb8:	9cf73223          	sd	a5,-1596(a4) # 80005878 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001ebc:	02078463          	beqz	a5,80001ee4 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80001ec0:	00053483          	ld	s1,0(a0)
        delete elem;
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	de8080e7          	jalr	-536(ra) # 80001cac <_ZdlPv>
}
    80001ecc:	00048513          	mv	a0,s1
    80001ed0:	01813083          	ld	ra,24(sp)
    80001ed4:	01013403          	ld	s0,16(sp)
    80001ed8:	00813483          	ld	s1,8(sp)
    80001edc:	02010113          	addi	sp,sp,32
    80001ee0:	00008067          	ret
        if (!head) { tail = 0; }
    80001ee4:	00004797          	auipc	a5,0x4
    80001ee8:	9807be23          	sd	zero,-1636(a5) # 80005880 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001eec:	fd5ff06f          	j	80001ec0 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001ef0:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001ef4:	fd9ff06f          	j	80001ecc <_ZN9Scheduler3getEv+0x3c>

0000000080001ef8 <_ZN9Scheduler3putEP3TCB>:
{
    80001ef8:	fe010113          	addi	sp,sp,-32
    80001efc:	00113c23          	sd	ra,24(sp)
    80001f00:	00813823          	sd	s0,16(sp)
    80001f04:	00913423          	sd	s1,8(sp)
    80001f08:	02010413          	addi	s0,sp,32
    80001f0c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001f10:	01000513          	li	a0,16
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	d48080e7          	jalr	-696(ra) # 80001c5c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001f1c:	00953023          	sd	s1,0(a0)
    80001f20:	00053423          	sd	zero,8(a0)
        if (tail)
    80001f24:	00004797          	auipc	a5,0x4
    80001f28:	95c7b783          	ld	a5,-1700(a5) # 80005880 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001f2c:	02078263          	beqz	a5,80001f50 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001f30:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001f34:	00004797          	auipc	a5,0x4
    80001f38:	94a7b623          	sd	a0,-1716(a5) # 80005880 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001f3c:	01813083          	ld	ra,24(sp)
    80001f40:	01013403          	ld	s0,16(sp)
    80001f44:	00813483          	ld	s1,8(sp)
    80001f48:	02010113          	addi	sp,sp,32
    80001f4c:	00008067          	ret
            head = tail = elem;
    80001f50:	00004797          	auipc	a5,0x4
    80001f54:	92878793          	addi	a5,a5,-1752 # 80005878 <_ZN9Scheduler16readyThreadQueueE>
    80001f58:	00a7b423          	sd	a0,8(a5)
    80001f5c:	00a7b023          	sd	a0,0(a5)
    80001f60:	fddff06f          	j	80001f3c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001f64 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001f64:	ff010113          	addi	sp,sp,-16
    80001f68:	00113423          	sd	ra,8(sp)
    80001f6c:	00813023          	sd	s0,0(sp)
    80001f70:	01010413          	addi	s0,sp,16
    80001f74:	000105b7          	lui	a1,0x10
    80001f78:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001f7c:	00100513          	li	a0,1
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	ed0080e7          	jalr	-304(ra) # 80001e50 <_Z41__static_initialization_and_destruction_0ii>
    80001f88:	00813083          	ld	ra,8(sp)
    80001f8c:	00013403          	ld	s0,0(sp)
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret

0000000080001f98 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001f98:	fd010113          	addi	sp,sp,-48
    80001f9c:	02113423          	sd	ra,40(sp)
    80001fa0:	02813023          	sd	s0,32(sp)
    80001fa4:	00913c23          	sd	s1,24(sp)
    80001fa8:	01213823          	sd	s2,16(sp)
    80001fac:	03010413          	addi	s0,sp,48
    80001fb0:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001fb4:	100027f3          	csrr	a5,sstatus
    80001fb8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001fbc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001fc0:	00200793          	li	a5,2
    80001fc4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001fc8:	0004c503          	lbu	a0,0(s1)
    80001fcc:	00050a63          	beqz	a0,80001fe0 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001fd0:	00002097          	auipc	ra,0x2
    80001fd4:	3e0080e7          	jalr	992(ra) # 800043b0 <__putc>
        string++;
    80001fd8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001fdc:	fedff06f          	j	80001fc8 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001fe0:	0009091b          	sext.w	s2,s2
    80001fe4:	00297913          	andi	s2,s2,2
    80001fe8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001fec:	10092073          	csrs	sstatus,s2
}
    80001ff0:	02813083          	ld	ra,40(sp)
    80001ff4:	02013403          	ld	s0,32(sp)
    80001ff8:	01813483          	ld	s1,24(sp)
    80001ffc:	01013903          	ld	s2,16(sp)
    80002000:	03010113          	addi	sp,sp,48
    80002004:	00008067          	ret

0000000080002008 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002008:	fc010113          	addi	sp,sp,-64
    8000200c:	02113c23          	sd	ra,56(sp)
    80002010:	02813823          	sd	s0,48(sp)
    80002014:	02913423          	sd	s1,40(sp)
    80002018:	03213023          	sd	s2,32(sp)
    8000201c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002020:	100027f3          	csrr	a5,sstatus
    80002024:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002028:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000202c:	00200793          	li	a5,2
    80002030:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002034:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002038:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    8000203c:	00a00613          	li	a2,10
    80002040:	02c5773b          	remuw	a4,a0,a2
    80002044:	02071693          	slli	a3,a4,0x20
    80002048:	0206d693          	srli	a3,a3,0x20
    8000204c:	00003717          	auipc	a4,0x3
    80002050:	04c70713          	addi	a4,a4,76 # 80005098 <_ZZ12printIntegermE6digits>
    80002054:	00d70733          	add	a4,a4,a3
    80002058:	00074703          	lbu	a4,0(a4)
    8000205c:	fe040693          	addi	a3,s0,-32
    80002060:	009687b3          	add	a5,a3,s1
    80002064:	0014849b          	addiw	s1,s1,1
    80002068:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    8000206c:	0005071b          	sext.w	a4,a0
    80002070:	02c5553b          	divuw	a0,a0,a2
    80002074:	00900793          	li	a5,9
    80002078:	fce7e2e3          	bltu	a5,a4,8000203c <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    8000207c:	fff4849b          	addiw	s1,s1,-1
    80002080:	0004ce63          	bltz	s1,8000209c <_Z12printIntegerm+0x94>
    80002084:	fe040793          	addi	a5,s0,-32
    80002088:	009787b3          	add	a5,a5,s1
    8000208c:	ff07c503          	lbu	a0,-16(a5)
    80002090:	00002097          	auipc	ra,0x2
    80002094:	320080e7          	jalr	800(ra) # 800043b0 <__putc>
    80002098:	fe5ff06f          	j	8000207c <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000209c:	0009091b          	sext.w	s2,s2
    800020a0:	00297913          	andi	s2,s2,2
    800020a4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800020a8:	10092073          	csrs	sstatus,s2
    800020ac:	03813083          	ld	ra,56(sp)
    800020b0:	03013403          	ld	s0,48(sp)
    800020b4:	02813483          	ld	s1,40(sp)
    800020b8:	02013903          	ld	s2,32(sp)
    800020bc:	04010113          	addi	sp,sp,64
    800020c0:	00008067          	ret

00000000800020c4 <start>:
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00813423          	sd	s0,8(sp)
    800020cc:	01010413          	addi	s0,sp,16
    800020d0:	300027f3          	csrr	a5,mstatus
    800020d4:	ffffe737          	lui	a4,0xffffe
    800020d8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7cff>
    800020dc:	00e7f7b3          	and	a5,a5,a4
    800020e0:	00001737          	lui	a4,0x1
    800020e4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800020e8:	00e7e7b3          	or	a5,a5,a4
    800020ec:	30079073          	csrw	mstatus,a5
    800020f0:	00000797          	auipc	a5,0x0
    800020f4:	16078793          	addi	a5,a5,352 # 80002250 <system_main>
    800020f8:	34179073          	csrw	mepc,a5
    800020fc:	00000793          	li	a5,0
    80002100:	18079073          	csrw	satp,a5
    80002104:	000107b7          	lui	a5,0x10
    80002108:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000210c:	30279073          	csrw	medeleg,a5
    80002110:	30379073          	csrw	mideleg,a5
    80002114:	104027f3          	csrr	a5,sie
    80002118:	2227e793          	ori	a5,a5,546
    8000211c:	10479073          	csrw	sie,a5
    80002120:	fff00793          	li	a5,-1
    80002124:	00a7d793          	srli	a5,a5,0xa
    80002128:	3b079073          	csrw	pmpaddr0,a5
    8000212c:	00f00793          	li	a5,15
    80002130:	3a079073          	csrw	pmpcfg0,a5
    80002134:	f14027f3          	csrr	a5,mhartid
    80002138:	0200c737          	lui	a4,0x200c
    8000213c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002140:	0007869b          	sext.w	a3,a5
    80002144:	00269713          	slli	a4,a3,0x2
    80002148:	000f4637          	lui	a2,0xf4
    8000214c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002150:	00d70733          	add	a4,a4,a3
    80002154:	0037979b          	slliw	a5,a5,0x3
    80002158:	020046b7          	lui	a3,0x2004
    8000215c:	00d787b3          	add	a5,a5,a3
    80002160:	00c585b3          	add	a1,a1,a2
    80002164:	00371693          	slli	a3,a4,0x3
    80002168:	00003717          	auipc	a4,0x3
    8000216c:	72870713          	addi	a4,a4,1832 # 80005890 <timer_scratch>
    80002170:	00b7b023          	sd	a1,0(a5)
    80002174:	00d70733          	add	a4,a4,a3
    80002178:	00f73c23          	sd	a5,24(a4)
    8000217c:	02c73023          	sd	a2,32(a4)
    80002180:	34071073          	csrw	mscratch,a4
    80002184:	00000797          	auipc	a5,0x0
    80002188:	6ec78793          	addi	a5,a5,1772 # 80002870 <timervec>
    8000218c:	30579073          	csrw	mtvec,a5
    80002190:	300027f3          	csrr	a5,mstatus
    80002194:	0087e793          	ori	a5,a5,8
    80002198:	30079073          	csrw	mstatus,a5
    8000219c:	304027f3          	csrr	a5,mie
    800021a0:	0807e793          	ori	a5,a5,128
    800021a4:	30479073          	csrw	mie,a5
    800021a8:	f14027f3          	csrr	a5,mhartid
    800021ac:	0007879b          	sext.w	a5,a5
    800021b0:	00078213          	mv	tp,a5
    800021b4:	30200073          	mret
    800021b8:	00813403          	ld	s0,8(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <timerinit>:
    800021c4:	ff010113          	addi	sp,sp,-16
    800021c8:	00813423          	sd	s0,8(sp)
    800021cc:	01010413          	addi	s0,sp,16
    800021d0:	f14027f3          	csrr	a5,mhartid
    800021d4:	0200c737          	lui	a4,0x200c
    800021d8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800021dc:	0007869b          	sext.w	a3,a5
    800021e0:	00269713          	slli	a4,a3,0x2
    800021e4:	000f4637          	lui	a2,0xf4
    800021e8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800021ec:	00d70733          	add	a4,a4,a3
    800021f0:	0037979b          	slliw	a5,a5,0x3
    800021f4:	020046b7          	lui	a3,0x2004
    800021f8:	00d787b3          	add	a5,a5,a3
    800021fc:	00c585b3          	add	a1,a1,a2
    80002200:	00371693          	slli	a3,a4,0x3
    80002204:	00003717          	auipc	a4,0x3
    80002208:	68c70713          	addi	a4,a4,1676 # 80005890 <timer_scratch>
    8000220c:	00b7b023          	sd	a1,0(a5)
    80002210:	00d70733          	add	a4,a4,a3
    80002214:	00f73c23          	sd	a5,24(a4)
    80002218:	02c73023          	sd	a2,32(a4)
    8000221c:	34071073          	csrw	mscratch,a4
    80002220:	00000797          	auipc	a5,0x0
    80002224:	65078793          	addi	a5,a5,1616 # 80002870 <timervec>
    80002228:	30579073          	csrw	mtvec,a5
    8000222c:	300027f3          	csrr	a5,mstatus
    80002230:	0087e793          	ori	a5,a5,8
    80002234:	30079073          	csrw	mstatus,a5
    80002238:	304027f3          	csrr	a5,mie
    8000223c:	0807e793          	ori	a5,a5,128
    80002240:	30479073          	csrw	mie,a5
    80002244:	00813403          	ld	s0,8(sp)
    80002248:	01010113          	addi	sp,sp,16
    8000224c:	00008067          	ret

0000000080002250 <system_main>:
    80002250:	fe010113          	addi	sp,sp,-32
    80002254:	00813823          	sd	s0,16(sp)
    80002258:	00913423          	sd	s1,8(sp)
    8000225c:	00113c23          	sd	ra,24(sp)
    80002260:	02010413          	addi	s0,sp,32
    80002264:	00000097          	auipc	ra,0x0
    80002268:	0c4080e7          	jalr	196(ra) # 80002328 <cpuid>
    8000226c:	00003497          	auipc	s1,0x3
    80002270:	5d448493          	addi	s1,s1,1492 # 80005840 <started>
    80002274:	02050263          	beqz	a0,80002298 <system_main+0x48>
    80002278:	0004a783          	lw	a5,0(s1)
    8000227c:	0007879b          	sext.w	a5,a5
    80002280:	fe078ce3          	beqz	a5,80002278 <system_main+0x28>
    80002284:	0ff0000f          	fence
    80002288:	00003517          	auipc	a0,0x3
    8000228c:	e5050513          	addi	a0,a0,-432 # 800050d8 <_ZZ12printIntegermE6digits+0x40>
    80002290:	00001097          	auipc	ra,0x1
    80002294:	a7c080e7          	jalr	-1412(ra) # 80002d0c <panic>
    80002298:	00001097          	auipc	ra,0x1
    8000229c:	9d0080e7          	jalr	-1584(ra) # 80002c68 <consoleinit>
    800022a0:	00001097          	auipc	ra,0x1
    800022a4:	15c080e7          	jalr	348(ra) # 800033fc <printfinit>
    800022a8:	00003517          	auipc	a0,0x3
    800022ac:	de850513          	addi	a0,a0,-536 # 80005090 <kvmincrease+0xbc0>
    800022b0:	00001097          	auipc	ra,0x1
    800022b4:	ab8080e7          	jalr	-1352(ra) # 80002d68 <__printf>
    800022b8:	00003517          	auipc	a0,0x3
    800022bc:	df050513          	addi	a0,a0,-528 # 800050a8 <_ZZ12printIntegermE6digits+0x10>
    800022c0:	00001097          	auipc	ra,0x1
    800022c4:	aa8080e7          	jalr	-1368(ra) # 80002d68 <__printf>
    800022c8:	00003517          	auipc	a0,0x3
    800022cc:	dc850513          	addi	a0,a0,-568 # 80005090 <kvmincrease+0xbc0>
    800022d0:	00001097          	auipc	ra,0x1
    800022d4:	a98080e7          	jalr	-1384(ra) # 80002d68 <__printf>
    800022d8:	00001097          	auipc	ra,0x1
    800022dc:	4b0080e7          	jalr	1200(ra) # 80003788 <kinit>
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	148080e7          	jalr	328(ra) # 80002428 <trapinit>
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	16c080e7          	jalr	364(ra) # 80002454 <trapinithart>
    800022f0:	00000097          	auipc	ra,0x0
    800022f4:	5c0080e7          	jalr	1472(ra) # 800028b0 <plicinit>
    800022f8:	00000097          	auipc	ra,0x0
    800022fc:	5e0080e7          	jalr	1504(ra) # 800028d8 <plicinithart>
    80002300:	00000097          	auipc	ra,0x0
    80002304:	078080e7          	jalr	120(ra) # 80002378 <userinit>
    80002308:	0ff0000f          	fence
    8000230c:	00100793          	li	a5,1
    80002310:	00003517          	auipc	a0,0x3
    80002314:	db050513          	addi	a0,a0,-592 # 800050c0 <_ZZ12printIntegermE6digits+0x28>
    80002318:	00f4a023          	sw	a5,0(s1)
    8000231c:	00001097          	auipc	ra,0x1
    80002320:	a4c080e7          	jalr	-1460(ra) # 80002d68 <__printf>
    80002324:	0000006f          	j	80002324 <system_main+0xd4>

0000000080002328 <cpuid>:
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00813423          	sd	s0,8(sp)
    80002330:	01010413          	addi	s0,sp,16
    80002334:	00020513          	mv	a0,tp
    80002338:	00813403          	ld	s0,8(sp)
    8000233c:	0005051b          	sext.w	a0,a0
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <mycpu>:
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00813423          	sd	s0,8(sp)
    80002350:	01010413          	addi	s0,sp,16
    80002354:	00020793          	mv	a5,tp
    80002358:	00813403          	ld	s0,8(sp)
    8000235c:	0007879b          	sext.w	a5,a5
    80002360:	00779793          	slli	a5,a5,0x7
    80002364:	00004517          	auipc	a0,0x4
    80002368:	55c50513          	addi	a0,a0,1372 # 800068c0 <cpus>
    8000236c:	00f50533          	add	a0,a0,a5
    80002370:	01010113          	addi	sp,sp,16
    80002374:	00008067          	ret

0000000080002378 <userinit>:
    80002378:	ff010113          	addi	sp,sp,-16
    8000237c:	00813423          	sd	s0,8(sp)
    80002380:	01010413          	addi	s0,sp,16
    80002384:	00813403          	ld	s0,8(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	fffff317          	auipc	t1,0xfffff
    80002390:	58c30067          	jr	1420(t1) # 80001918 <main>

0000000080002394 <either_copyout>:
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00813023          	sd	s0,0(sp)
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	01010413          	addi	s0,sp,16
    800023a4:	02051663          	bnez	a0,800023d0 <either_copyout+0x3c>
    800023a8:	00058513          	mv	a0,a1
    800023ac:	00060593          	mv	a1,a2
    800023b0:	0006861b          	sext.w	a2,a3
    800023b4:	00002097          	auipc	ra,0x2
    800023b8:	c60080e7          	jalr	-928(ra) # 80004014 <__memmove>
    800023bc:	00813083          	ld	ra,8(sp)
    800023c0:	00013403          	ld	s0,0(sp)
    800023c4:	00000513          	li	a0,0
    800023c8:	01010113          	addi	sp,sp,16
    800023cc:	00008067          	ret
    800023d0:	00003517          	auipc	a0,0x3
    800023d4:	d3050513          	addi	a0,a0,-720 # 80005100 <_ZZ12printIntegermE6digits+0x68>
    800023d8:	00001097          	auipc	ra,0x1
    800023dc:	934080e7          	jalr	-1740(ra) # 80002d0c <panic>

00000000800023e0 <either_copyin>:
    800023e0:	ff010113          	addi	sp,sp,-16
    800023e4:	00813023          	sd	s0,0(sp)
    800023e8:	00113423          	sd	ra,8(sp)
    800023ec:	01010413          	addi	s0,sp,16
    800023f0:	02059463          	bnez	a1,80002418 <either_copyin+0x38>
    800023f4:	00060593          	mv	a1,a2
    800023f8:	0006861b          	sext.w	a2,a3
    800023fc:	00002097          	auipc	ra,0x2
    80002400:	c18080e7          	jalr	-1000(ra) # 80004014 <__memmove>
    80002404:	00813083          	ld	ra,8(sp)
    80002408:	00013403          	ld	s0,0(sp)
    8000240c:	00000513          	li	a0,0
    80002410:	01010113          	addi	sp,sp,16
    80002414:	00008067          	ret
    80002418:	00003517          	auipc	a0,0x3
    8000241c:	d1050513          	addi	a0,a0,-752 # 80005128 <_ZZ12printIntegermE6digits+0x90>
    80002420:	00001097          	auipc	ra,0x1
    80002424:	8ec080e7          	jalr	-1812(ra) # 80002d0c <panic>

0000000080002428 <trapinit>:
    80002428:	ff010113          	addi	sp,sp,-16
    8000242c:	00813423          	sd	s0,8(sp)
    80002430:	01010413          	addi	s0,sp,16
    80002434:	00813403          	ld	s0,8(sp)
    80002438:	00003597          	auipc	a1,0x3
    8000243c:	d1858593          	addi	a1,a1,-744 # 80005150 <_ZZ12printIntegermE6digits+0xb8>
    80002440:	00004517          	auipc	a0,0x4
    80002444:	50050513          	addi	a0,a0,1280 # 80006940 <tickslock>
    80002448:	01010113          	addi	sp,sp,16
    8000244c:	00001317          	auipc	t1,0x1
    80002450:	5cc30067          	jr	1484(t1) # 80003a18 <initlock>

0000000080002454 <trapinithart>:
    80002454:	ff010113          	addi	sp,sp,-16
    80002458:	00813423          	sd	s0,8(sp)
    8000245c:	01010413          	addi	s0,sp,16
    80002460:	00000797          	auipc	a5,0x0
    80002464:	30078793          	addi	a5,a5,768 # 80002760 <kernelvec>
    80002468:	10579073          	csrw	stvec,a5
    8000246c:	00813403          	ld	s0,8(sp)
    80002470:	01010113          	addi	sp,sp,16
    80002474:	00008067          	ret

0000000080002478 <usertrap>:
    80002478:	ff010113          	addi	sp,sp,-16
    8000247c:	00813423          	sd	s0,8(sp)
    80002480:	01010413          	addi	s0,sp,16
    80002484:	00813403          	ld	s0,8(sp)
    80002488:	01010113          	addi	sp,sp,16
    8000248c:	00008067          	ret

0000000080002490 <usertrapret>:
    80002490:	ff010113          	addi	sp,sp,-16
    80002494:	00813423          	sd	s0,8(sp)
    80002498:	01010413          	addi	s0,sp,16
    8000249c:	00813403          	ld	s0,8(sp)
    800024a0:	01010113          	addi	sp,sp,16
    800024a4:	00008067          	ret

00000000800024a8 <kerneltrap>:
    800024a8:	fe010113          	addi	sp,sp,-32
    800024ac:	00813823          	sd	s0,16(sp)
    800024b0:	00113c23          	sd	ra,24(sp)
    800024b4:	00913423          	sd	s1,8(sp)
    800024b8:	02010413          	addi	s0,sp,32
    800024bc:	142025f3          	csrr	a1,scause
    800024c0:	100027f3          	csrr	a5,sstatus
    800024c4:	0027f793          	andi	a5,a5,2
    800024c8:	10079c63          	bnez	a5,800025e0 <kerneltrap+0x138>
    800024cc:	142027f3          	csrr	a5,scause
    800024d0:	0207ce63          	bltz	a5,8000250c <kerneltrap+0x64>
    800024d4:	00003517          	auipc	a0,0x3
    800024d8:	cc450513          	addi	a0,a0,-828 # 80005198 <_ZZ12printIntegermE6digits+0x100>
    800024dc:	00001097          	auipc	ra,0x1
    800024e0:	88c080e7          	jalr	-1908(ra) # 80002d68 <__printf>
    800024e4:	141025f3          	csrr	a1,sepc
    800024e8:	14302673          	csrr	a2,stval
    800024ec:	00003517          	auipc	a0,0x3
    800024f0:	cbc50513          	addi	a0,a0,-836 # 800051a8 <_ZZ12printIntegermE6digits+0x110>
    800024f4:	00001097          	auipc	ra,0x1
    800024f8:	874080e7          	jalr	-1932(ra) # 80002d68 <__printf>
    800024fc:	00003517          	auipc	a0,0x3
    80002500:	cc450513          	addi	a0,a0,-828 # 800051c0 <_ZZ12printIntegermE6digits+0x128>
    80002504:	00001097          	auipc	ra,0x1
    80002508:	808080e7          	jalr	-2040(ra) # 80002d0c <panic>
    8000250c:	0ff7f713          	andi	a4,a5,255
    80002510:	00900693          	li	a3,9
    80002514:	04d70063          	beq	a4,a3,80002554 <kerneltrap+0xac>
    80002518:	fff00713          	li	a4,-1
    8000251c:	03f71713          	slli	a4,a4,0x3f
    80002520:	00170713          	addi	a4,a4,1
    80002524:	fae798e3          	bne	a5,a4,800024d4 <kerneltrap+0x2c>
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	e00080e7          	jalr	-512(ra) # 80002328 <cpuid>
    80002530:	06050663          	beqz	a0,8000259c <kerneltrap+0xf4>
    80002534:	144027f3          	csrr	a5,sip
    80002538:	ffd7f793          	andi	a5,a5,-3
    8000253c:	14479073          	csrw	sip,a5
    80002540:	01813083          	ld	ra,24(sp)
    80002544:	01013403          	ld	s0,16(sp)
    80002548:	00813483          	ld	s1,8(sp)
    8000254c:	02010113          	addi	sp,sp,32
    80002550:	00008067          	ret
    80002554:	00000097          	auipc	ra,0x0
    80002558:	3d0080e7          	jalr	976(ra) # 80002924 <plic_claim>
    8000255c:	00a00793          	li	a5,10
    80002560:	00050493          	mv	s1,a0
    80002564:	06f50863          	beq	a0,a5,800025d4 <kerneltrap+0x12c>
    80002568:	fc050ce3          	beqz	a0,80002540 <kerneltrap+0x98>
    8000256c:	00050593          	mv	a1,a0
    80002570:	00003517          	auipc	a0,0x3
    80002574:	c0850513          	addi	a0,a0,-1016 # 80005178 <_ZZ12printIntegermE6digits+0xe0>
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	7f0080e7          	jalr	2032(ra) # 80002d68 <__printf>
    80002580:	01013403          	ld	s0,16(sp)
    80002584:	01813083          	ld	ra,24(sp)
    80002588:	00048513          	mv	a0,s1
    8000258c:	00813483          	ld	s1,8(sp)
    80002590:	02010113          	addi	sp,sp,32
    80002594:	00000317          	auipc	t1,0x0
    80002598:	3c830067          	jr	968(t1) # 8000295c <plic_complete>
    8000259c:	00004517          	auipc	a0,0x4
    800025a0:	3a450513          	addi	a0,a0,932 # 80006940 <tickslock>
    800025a4:	00001097          	auipc	ra,0x1
    800025a8:	498080e7          	jalr	1176(ra) # 80003a3c <acquire>
    800025ac:	00003717          	auipc	a4,0x3
    800025b0:	29870713          	addi	a4,a4,664 # 80005844 <ticks>
    800025b4:	00072783          	lw	a5,0(a4)
    800025b8:	00004517          	auipc	a0,0x4
    800025bc:	38850513          	addi	a0,a0,904 # 80006940 <tickslock>
    800025c0:	0017879b          	addiw	a5,a5,1
    800025c4:	00f72023          	sw	a5,0(a4)
    800025c8:	00001097          	auipc	ra,0x1
    800025cc:	540080e7          	jalr	1344(ra) # 80003b08 <release>
    800025d0:	f65ff06f          	j	80002534 <kerneltrap+0x8c>
    800025d4:	00001097          	auipc	ra,0x1
    800025d8:	09c080e7          	jalr	156(ra) # 80003670 <uartintr>
    800025dc:	fa5ff06f          	j	80002580 <kerneltrap+0xd8>
    800025e0:	00003517          	auipc	a0,0x3
    800025e4:	b7850513          	addi	a0,a0,-1160 # 80005158 <_ZZ12printIntegermE6digits+0xc0>
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	724080e7          	jalr	1828(ra) # 80002d0c <panic>

00000000800025f0 <clockintr>:
    800025f0:	fe010113          	addi	sp,sp,-32
    800025f4:	00813823          	sd	s0,16(sp)
    800025f8:	00913423          	sd	s1,8(sp)
    800025fc:	00113c23          	sd	ra,24(sp)
    80002600:	02010413          	addi	s0,sp,32
    80002604:	00004497          	auipc	s1,0x4
    80002608:	33c48493          	addi	s1,s1,828 # 80006940 <tickslock>
    8000260c:	00048513          	mv	a0,s1
    80002610:	00001097          	auipc	ra,0x1
    80002614:	42c080e7          	jalr	1068(ra) # 80003a3c <acquire>
    80002618:	00003717          	auipc	a4,0x3
    8000261c:	22c70713          	addi	a4,a4,556 # 80005844 <ticks>
    80002620:	00072783          	lw	a5,0(a4)
    80002624:	01013403          	ld	s0,16(sp)
    80002628:	01813083          	ld	ra,24(sp)
    8000262c:	00048513          	mv	a0,s1
    80002630:	0017879b          	addiw	a5,a5,1
    80002634:	00813483          	ld	s1,8(sp)
    80002638:	00f72023          	sw	a5,0(a4)
    8000263c:	02010113          	addi	sp,sp,32
    80002640:	00001317          	auipc	t1,0x1
    80002644:	4c830067          	jr	1224(t1) # 80003b08 <release>

0000000080002648 <devintr>:
    80002648:	142027f3          	csrr	a5,scause
    8000264c:	00000513          	li	a0,0
    80002650:	0007c463          	bltz	a5,80002658 <devintr+0x10>
    80002654:	00008067          	ret
    80002658:	fe010113          	addi	sp,sp,-32
    8000265c:	00813823          	sd	s0,16(sp)
    80002660:	00113c23          	sd	ra,24(sp)
    80002664:	00913423          	sd	s1,8(sp)
    80002668:	02010413          	addi	s0,sp,32
    8000266c:	0ff7f713          	andi	a4,a5,255
    80002670:	00900693          	li	a3,9
    80002674:	04d70c63          	beq	a4,a3,800026cc <devintr+0x84>
    80002678:	fff00713          	li	a4,-1
    8000267c:	03f71713          	slli	a4,a4,0x3f
    80002680:	00170713          	addi	a4,a4,1
    80002684:	00e78c63          	beq	a5,a4,8000269c <devintr+0x54>
    80002688:	01813083          	ld	ra,24(sp)
    8000268c:	01013403          	ld	s0,16(sp)
    80002690:	00813483          	ld	s1,8(sp)
    80002694:	02010113          	addi	sp,sp,32
    80002698:	00008067          	ret
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	c8c080e7          	jalr	-884(ra) # 80002328 <cpuid>
    800026a4:	06050663          	beqz	a0,80002710 <devintr+0xc8>
    800026a8:	144027f3          	csrr	a5,sip
    800026ac:	ffd7f793          	andi	a5,a5,-3
    800026b0:	14479073          	csrw	sip,a5
    800026b4:	01813083          	ld	ra,24(sp)
    800026b8:	01013403          	ld	s0,16(sp)
    800026bc:	00813483          	ld	s1,8(sp)
    800026c0:	00200513          	li	a0,2
    800026c4:	02010113          	addi	sp,sp,32
    800026c8:	00008067          	ret
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	258080e7          	jalr	600(ra) # 80002924 <plic_claim>
    800026d4:	00a00793          	li	a5,10
    800026d8:	00050493          	mv	s1,a0
    800026dc:	06f50663          	beq	a0,a5,80002748 <devintr+0x100>
    800026e0:	00100513          	li	a0,1
    800026e4:	fa0482e3          	beqz	s1,80002688 <devintr+0x40>
    800026e8:	00048593          	mv	a1,s1
    800026ec:	00003517          	auipc	a0,0x3
    800026f0:	a8c50513          	addi	a0,a0,-1396 # 80005178 <_ZZ12printIntegermE6digits+0xe0>
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	674080e7          	jalr	1652(ra) # 80002d68 <__printf>
    800026fc:	00048513          	mv	a0,s1
    80002700:	00000097          	auipc	ra,0x0
    80002704:	25c080e7          	jalr	604(ra) # 8000295c <plic_complete>
    80002708:	00100513          	li	a0,1
    8000270c:	f7dff06f          	j	80002688 <devintr+0x40>
    80002710:	00004517          	auipc	a0,0x4
    80002714:	23050513          	addi	a0,a0,560 # 80006940 <tickslock>
    80002718:	00001097          	auipc	ra,0x1
    8000271c:	324080e7          	jalr	804(ra) # 80003a3c <acquire>
    80002720:	00003717          	auipc	a4,0x3
    80002724:	12470713          	addi	a4,a4,292 # 80005844 <ticks>
    80002728:	00072783          	lw	a5,0(a4)
    8000272c:	00004517          	auipc	a0,0x4
    80002730:	21450513          	addi	a0,a0,532 # 80006940 <tickslock>
    80002734:	0017879b          	addiw	a5,a5,1
    80002738:	00f72023          	sw	a5,0(a4)
    8000273c:	00001097          	auipc	ra,0x1
    80002740:	3cc080e7          	jalr	972(ra) # 80003b08 <release>
    80002744:	f65ff06f          	j	800026a8 <devintr+0x60>
    80002748:	00001097          	auipc	ra,0x1
    8000274c:	f28080e7          	jalr	-216(ra) # 80003670 <uartintr>
    80002750:	fadff06f          	j	800026fc <devintr+0xb4>
	...

0000000080002760 <kernelvec>:
    80002760:	f0010113          	addi	sp,sp,-256
    80002764:	00113023          	sd	ra,0(sp)
    80002768:	00213423          	sd	sp,8(sp)
    8000276c:	00313823          	sd	gp,16(sp)
    80002770:	00413c23          	sd	tp,24(sp)
    80002774:	02513023          	sd	t0,32(sp)
    80002778:	02613423          	sd	t1,40(sp)
    8000277c:	02713823          	sd	t2,48(sp)
    80002780:	02813c23          	sd	s0,56(sp)
    80002784:	04913023          	sd	s1,64(sp)
    80002788:	04a13423          	sd	a0,72(sp)
    8000278c:	04b13823          	sd	a1,80(sp)
    80002790:	04c13c23          	sd	a2,88(sp)
    80002794:	06d13023          	sd	a3,96(sp)
    80002798:	06e13423          	sd	a4,104(sp)
    8000279c:	06f13823          	sd	a5,112(sp)
    800027a0:	07013c23          	sd	a6,120(sp)
    800027a4:	09113023          	sd	a7,128(sp)
    800027a8:	09213423          	sd	s2,136(sp)
    800027ac:	09313823          	sd	s3,144(sp)
    800027b0:	09413c23          	sd	s4,152(sp)
    800027b4:	0b513023          	sd	s5,160(sp)
    800027b8:	0b613423          	sd	s6,168(sp)
    800027bc:	0b713823          	sd	s7,176(sp)
    800027c0:	0b813c23          	sd	s8,184(sp)
    800027c4:	0d913023          	sd	s9,192(sp)
    800027c8:	0da13423          	sd	s10,200(sp)
    800027cc:	0db13823          	sd	s11,208(sp)
    800027d0:	0dc13c23          	sd	t3,216(sp)
    800027d4:	0fd13023          	sd	t4,224(sp)
    800027d8:	0fe13423          	sd	t5,232(sp)
    800027dc:	0ff13823          	sd	t6,240(sp)
    800027e0:	cc9ff0ef          	jal	ra,800024a8 <kerneltrap>
    800027e4:	00013083          	ld	ra,0(sp)
    800027e8:	00813103          	ld	sp,8(sp)
    800027ec:	01013183          	ld	gp,16(sp)
    800027f0:	02013283          	ld	t0,32(sp)
    800027f4:	02813303          	ld	t1,40(sp)
    800027f8:	03013383          	ld	t2,48(sp)
    800027fc:	03813403          	ld	s0,56(sp)
    80002800:	04013483          	ld	s1,64(sp)
    80002804:	04813503          	ld	a0,72(sp)
    80002808:	05013583          	ld	a1,80(sp)
    8000280c:	05813603          	ld	a2,88(sp)
    80002810:	06013683          	ld	a3,96(sp)
    80002814:	06813703          	ld	a4,104(sp)
    80002818:	07013783          	ld	a5,112(sp)
    8000281c:	07813803          	ld	a6,120(sp)
    80002820:	08013883          	ld	a7,128(sp)
    80002824:	08813903          	ld	s2,136(sp)
    80002828:	09013983          	ld	s3,144(sp)
    8000282c:	09813a03          	ld	s4,152(sp)
    80002830:	0a013a83          	ld	s5,160(sp)
    80002834:	0a813b03          	ld	s6,168(sp)
    80002838:	0b013b83          	ld	s7,176(sp)
    8000283c:	0b813c03          	ld	s8,184(sp)
    80002840:	0c013c83          	ld	s9,192(sp)
    80002844:	0c813d03          	ld	s10,200(sp)
    80002848:	0d013d83          	ld	s11,208(sp)
    8000284c:	0d813e03          	ld	t3,216(sp)
    80002850:	0e013e83          	ld	t4,224(sp)
    80002854:	0e813f03          	ld	t5,232(sp)
    80002858:	0f013f83          	ld	t6,240(sp)
    8000285c:	10010113          	addi	sp,sp,256
    80002860:	10200073          	sret
    80002864:	00000013          	nop
    80002868:	00000013          	nop
    8000286c:	00000013          	nop

0000000080002870 <timervec>:
    80002870:	34051573          	csrrw	a0,mscratch,a0
    80002874:	00b53023          	sd	a1,0(a0)
    80002878:	00c53423          	sd	a2,8(a0)
    8000287c:	00d53823          	sd	a3,16(a0)
    80002880:	01853583          	ld	a1,24(a0)
    80002884:	02053603          	ld	a2,32(a0)
    80002888:	0005b683          	ld	a3,0(a1)
    8000288c:	00c686b3          	add	a3,a3,a2
    80002890:	00d5b023          	sd	a3,0(a1)
    80002894:	00200593          	li	a1,2
    80002898:	14459073          	csrw	sip,a1
    8000289c:	01053683          	ld	a3,16(a0)
    800028a0:	00853603          	ld	a2,8(a0)
    800028a4:	00053583          	ld	a1,0(a0)
    800028a8:	34051573          	csrrw	a0,mscratch,a0
    800028ac:	30200073          	mret

00000000800028b0 <plicinit>:
    800028b0:	ff010113          	addi	sp,sp,-16
    800028b4:	00813423          	sd	s0,8(sp)
    800028b8:	01010413          	addi	s0,sp,16
    800028bc:	00813403          	ld	s0,8(sp)
    800028c0:	0c0007b7          	lui	a5,0xc000
    800028c4:	00100713          	li	a4,1
    800028c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800028cc:	00e7a223          	sw	a4,4(a5)
    800028d0:	01010113          	addi	sp,sp,16
    800028d4:	00008067          	ret

00000000800028d8 <plicinithart>:
    800028d8:	ff010113          	addi	sp,sp,-16
    800028dc:	00813023          	sd	s0,0(sp)
    800028e0:	00113423          	sd	ra,8(sp)
    800028e4:	01010413          	addi	s0,sp,16
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	a40080e7          	jalr	-1472(ra) # 80002328 <cpuid>
    800028f0:	0085171b          	slliw	a4,a0,0x8
    800028f4:	0c0027b7          	lui	a5,0xc002
    800028f8:	00e787b3          	add	a5,a5,a4
    800028fc:	40200713          	li	a4,1026
    80002900:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002904:	00813083          	ld	ra,8(sp)
    80002908:	00013403          	ld	s0,0(sp)
    8000290c:	00d5151b          	slliw	a0,a0,0xd
    80002910:	0c2017b7          	lui	a5,0xc201
    80002914:	00a78533          	add	a0,a5,a0
    80002918:	00052023          	sw	zero,0(a0)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret

0000000080002924 <plic_claim>:
    80002924:	ff010113          	addi	sp,sp,-16
    80002928:	00813023          	sd	s0,0(sp)
    8000292c:	00113423          	sd	ra,8(sp)
    80002930:	01010413          	addi	s0,sp,16
    80002934:	00000097          	auipc	ra,0x0
    80002938:	9f4080e7          	jalr	-1548(ra) # 80002328 <cpuid>
    8000293c:	00813083          	ld	ra,8(sp)
    80002940:	00013403          	ld	s0,0(sp)
    80002944:	00d5151b          	slliw	a0,a0,0xd
    80002948:	0c2017b7          	lui	a5,0xc201
    8000294c:	00a78533          	add	a0,a5,a0
    80002950:	00452503          	lw	a0,4(a0)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <plic_complete>:
    8000295c:	fe010113          	addi	sp,sp,-32
    80002960:	00813823          	sd	s0,16(sp)
    80002964:	00913423          	sd	s1,8(sp)
    80002968:	00113c23          	sd	ra,24(sp)
    8000296c:	02010413          	addi	s0,sp,32
    80002970:	00050493          	mv	s1,a0
    80002974:	00000097          	auipc	ra,0x0
    80002978:	9b4080e7          	jalr	-1612(ra) # 80002328 <cpuid>
    8000297c:	01813083          	ld	ra,24(sp)
    80002980:	01013403          	ld	s0,16(sp)
    80002984:	00d5179b          	slliw	a5,a0,0xd
    80002988:	0c201737          	lui	a4,0xc201
    8000298c:	00f707b3          	add	a5,a4,a5
    80002990:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002994:	00813483          	ld	s1,8(sp)
    80002998:	02010113          	addi	sp,sp,32
    8000299c:	00008067          	ret

00000000800029a0 <consolewrite>:
    800029a0:	fb010113          	addi	sp,sp,-80
    800029a4:	04813023          	sd	s0,64(sp)
    800029a8:	04113423          	sd	ra,72(sp)
    800029ac:	02913c23          	sd	s1,56(sp)
    800029b0:	03213823          	sd	s2,48(sp)
    800029b4:	03313423          	sd	s3,40(sp)
    800029b8:	03413023          	sd	s4,32(sp)
    800029bc:	01513c23          	sd	s5,24(sp)
    800029c0:	05010413          	addi	s0,sp,80
    800029c4:	06c05c63          	blez	a2,80002a3c <consolewrite+0x9c>
    800029c8:	00060993          	mv	s3,a2
    800029cc:	00050a13          	mv	s4,a0
    800029d0:	00058493          	mv	s1,a1
    800029d4:	00000913          	li	s2,0
    800029d8:	fff00a93          	li	s5,-1
    800029dc:	01c0006f          	j	800029f8 <consolewrite+0x58>
    800029e0:	fbf44503          	lbu	a0,-65(s0)
    800029e4:	0019091b          	addiw	s2,s2,1
    800029e8:	00148493          	addi	s1,s1,1
    800029ec:	00001097          	auipc	ra,0x1
    800029f0:	a9c080e7          	jalr	-1380(ra) # 80003488 <uartputc>
    800029f4:	03298063          	beq	s3,s2,80002a14 <consolewrite+0x74>
    800029f8:	00048613          	mv	a2,s1
    800029fc:	00100693          	li	a3,1
    80002a00:	000a0593          	mv	a1,s4
    80002a04:	fbf40513          	addi	a0,s0,-65
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	9d8080e7          	jalr	-1576(ra) # 800023e0 <either_copyin>
    80002a10:	fd5518e3          	bne	a0,s5,800029e0 <consolewrite+0x40>
    80002a14:	04813083          	ld	ra,72(sp)
    80002a18:	04013403          	ld	s0,64(sp)
    80002a1c:	03813483          	ld	s1,56(sp)
    80002a20:	02813983          	ld	s3,40(sp)
    80002a24:	02013a03          	ld	s4,32(sp)
    80002a28:	01813a83          	ld	s5,24(sp)
    80002a2c:	00090513          	mv	a0,s2
    80002a30:	03013903          	ld	s2,48(sp)
    80002a34:	05010113          	addi	sp,sp,80
    80002a38:	00008067          	ret
    80002a3c:	00000913          	li	s2,0
    80002a40:	fd5ff06f          	j	80002a14 <consolewrite+0x74>

0000000080002a44 <consoleread>:
    80002a44:	f9010113          	addi	sp,sp,-112
    80002a48:	06813023          	sd	s0,96(sp)
    80002a4c:	04913c23          	sd	s1,88(sp)
    80002a50:	05213823          	sd	s2,80(sp)
    80002a54:	05313423          	sd	s3,72(sp)
    80002a58:	05413023          	sd	s4,64(sp)
    80002a5c:	03513c23          	sd	s5,56(sp)
    80002a60:	03613823          	sd	s6,48(sp)
    80002a64:	03713423          	sd	s7,40(sp)
    80002a68:	03813023          	sd	s8,32(sp)
    80002a6c:	06113423          	sd	ra,104(sp)
    80002a70:	01913c23          	sd	s9,24(sp)
    80002a74:	07010413          	addi	s0,sp,112
    80002a78:	00060b93          	mv	s7,a2
    80002a7c:	00050913          	mv	s2,a0
    80002a80:	00058c13          	mv	s8,a1
    80002a84:	00060b1b          	sext.w	s6,a2
    80002a88:	00004497          	auipc	s1,0x4
    80002a8c:	ee048493          	addi	s1,s1,-288 # 80006968 <cons>
    80002a90:	00400993          	li	s3,4
    80002a94:	fff00a13          	li	s4,-1
    80002a98:	00a00a93          	li	s5,10
    80002a9c:	05705e63          	blez	s7,80002af8 <consoleread+0xb4>
    80002aa0:	09c4a703          	lw	a4,156(s1)
    80002aa4:	0984a783          	lw	a5,152(s1)
    80002aa8:	0007071b          	sext.w	a4,a4
    80002aac:	08e78463          	beq	a5,a4,80002b34 <consoleread+0xf0>
    80002ab0:	07f7f713          	andi	a4,a5,127
    80002ab4:	00e48733          	add	a4,s1,a4
    80002ab8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002abc:	0017869b          	addiw	a3,a5,1
    80002ac0:	08d4ac23          	sw	a3,152(s1)
    80002ac4:	00070c9b          	sext.w	s9,a4
    80002ac8:	0b370663          	beq	a4,s3,80002b74 <consoleread+0x130>
    80002acc:	00100693          	li	a3,1
    80002ad0:	f9f40613          	addi	a2,s0,-97
    80002ad4:	000c0593          	mv	a1,s8
    80002ad8:	00090513          	mv	a0,s2
    80002adc:	f8e40fa3          	sb	a4,-97(s0)
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	8b4080e7          	jalr	-1868(ra) # 80002394 <either_copyout>
    80002ae8:	01450863          	beq	a0,s4,80002af8 <consoleread+0xb4>
    80002aec:	001c0c13          	addi	s8,s8,1
    80002af0:	fffb8b9b          	addiw	s7,s7,-1
    80002af4:	fb5c94e3          	bne	s9,s5,80002a9c <consoleread+0x58>
    80002af8:	000b851b          	sext.w	a0,s7
    80002afc:	06813083          	ld	ra,104(sp)
    80002b00:	06013403          	ld	s0,96(sp)
    80002b04:	05813483          	ld	s1,88(sp)
    80002b08:	05013903          	ld	s2,80(sp)
    80002b0c:	04813983          	ld	s3,72(sp)
    80002b10:	04013a03          	ld	s4,64(sp)
    80002b14:	03813a83          	ld	s5,56(sp)
    80002b18:	02813b83          	ld	s7,40(sp)
    80002b1c:	02013c03          	ld	s8,32(sp)
    80002b20:	01813c83          	ld	s9,24(sp)
    80002b24:	40ab053b          	subw	a0,s6,a0
    80002b28:	03013b03          	ld	s6,48(sp)
    80002b2c:	07010113          	addi	sp,sp,112
    80002b30:	00008067          	ret
    80002b34:	00001097          	auipc	ra,0x1
    80002b38:	1d8080e7          	jalr	472(ra) # 80003d0c <push_on>
    80002b3c:	0984a703          	lw	a4,152(s1)
    80002b40:	09c4a783          	lw	a5,156(s1)
    80002b44:	0007879b          	sext.w	a5,a5
    80002b48:	fef70ce3          	beq	a4,a5,80002b40 <consoleread+0xfc>
    80002b4c:	00001097          	auipc	ra,0x1
    80002b50:	234080e7          	jalr	564(ra) # 80003d80 <pop_on>
    80002b54:	0984a783          	lw	a5,152(s1)
    80002b58:	07f7f713          	andi	a4,a5,127
    80002b5c:	00e48733          	add	a4,s1,a4
    80002b60:	01874703          	lbu	a4,24(a4)
    80002b64:	0017869b          	addiw	a3,a5,1
    80002b68:	08d4ac23          	sw	a3,152(s1)
    80002b6c:	00070c9b          	sext.w	s9,a4
    80002b70:	f5371ee3          	bne	a4,s3,80002acc <consoleread+0x88>
    80002b74:	000b851b          	sext.w	a0,s7
    80002b78:	f96bf2e3          	bgeu	s7,s6,80002afc <consoleread+0xb8>
    80002b7c:	08f4ac23          	sw	a5,152(s1)
    80002b80:	f7dff06f          	j	80002afc <consoleread+0xb8>

0000000080002b84 <consputc>:
    80002b84:	10000793          	li	a5,256
    80002b88:	00f50663          	beq	a0,a5,80002b94 <consputc+0x10>
    80002b8c:	00001317          	auipc	t1,0x1
    80002b90:	9f430067          	jr	-1548(t1) # 80003580 <uartputc_sync>
    80002b94:	ff010113          	addi	sp,sp,-16
    80002b98:	00113423          	sd	ra,8(sp)
    80002b9c:	00813023          	sd	s0,0(sp)
    80002ba0:	01010413          	addi	s0,sp,16
    80002ba4:	00800513          	li	a0,8
    80002ba8:	00001097          	auipc	ra,0x1
    80002bac:	9d8080e7          	jalr	-1576(ra) # 80003580 <uartputc_sync>
    80002bb0:	02000513          	li	a0,32
    80002bb4:	00001097          	auipc	ra,0x1
    80002bb8:	9cc080e7          	jalr	-1588(ra) # 80003580 <uartputc_sync>
    80002bbc:	00013403          	ld	s0,0(sp)
    80002bc0:	00813083          	ld	ra,8(sp)
    80002bc4:	00800513          	li	a0,8
    80002bc8:	01010113          	addi	sp,sp,16
    80002bcc:	00001317          	auipc	t1,0x1
    80002bd0:	9b430067          	jr	-1612(t1) # 80003580 <uartputc_sync>

0000000080002bd4 <consoleintr>:
    80002bd4:	fe010113          	addi	sp,sp,-32
    80002bd8:	00813823          	sd	s0,16(sp)
    80002bdc:	00913423          	sd	s1,8(sp)
    80002be0:	01213023          	sd	s2,0(sp)
    80002be4:	00113c23          	sd	ra,24(sp)
    80002be8:	02010413          	addi	s0,sp,32
    80002bec:	00004917          	auipc	s2,0x4
    80002bf0:	d7c90913          	addi	s2,s2,-644 # 80006968 <cons>
    80002bf4:	00050493          	mv	s1,a0
    80002bf8:	00090513          	mv	a0,s2
    80002bfc:	00001097          	auipc	ra,0x1
    80002c00:	e40080e7          	jalr	-448(ra) # 80003a3c <acquire>
    80002c04:	02048c63          	beqz	s1,80002c3c <consoleintr+0x68>
    80002c08:	0a092783          	lw	a5,160(s2)
    80002c0c:	09892703          	lw	a4,152(s2)
    80002c10:	07f00693          	li	a3,127
    80002c14:	40e7873b          	subw	a4,a5,a4
    80002c18:	02e6e263          	bltu	a3,a4,80002c3c <consoleintr+0x68>
    80002c1c:	00d00713          	li	a4,13
    80002c20:	04e48063          	beq	s1,a4,80002c60 <consoleintr+0x8c>
    80002c24:	07f7f713          	andi	a4,a5,127
    80002c28:	00e90733          	add	a4,s2,a4
    80002c2c:	0017879b          	addiw	a5,a5,1
    80002c30:	0af92023          	sw	a5,160(s2)
    80002c34:	00970c23          	sb	s1,24(a4)
    80002c38:	08f92e23          	sw	a5,156(s2)
    80002c3c:	01013403          	ld	s0,16(sp)
    80002c40:	01813083          	ld	ra,24(sp)
    80002c44:	00813483          	ld	s1,8(sp)
    80002c48:	00013903          	ld	s2,0(sp)
    80002c4c:	00004517          	auipc	a0,0x4
    80002c50:	d1c50513          	addi	a0,a0,-740 # 80006968 <cons>
    80002c54:	02010113          	addi	sp,sp,32
    80002c58:	00001317          	auipc	t1,0x1
    80002c5c:	eb030067          	jr	-336(t1) # 80003b08 <release>
    80002c60:	00a00493          	li	s1,10
    80002c64:	fc1ff06f          	j	80002c24 <consoleintr+0x50>

0000000080002c68 <consoleinit>:
    80002c68:	fe010113          	addi	sp,sp,-32
    80002c6c:	00113c23          	sd	ra,24(sp)
    80002c70:	00813823          	sd	s0,16(sp)
    80002c74:	00913423          	sd	s1,8(sp)
    80002c78:	02010413          	addi	s0,sp,32
    80002c7c:	00004497          	auipc	s1,0x4
    80002c80:	cec48493          	addi	s1,s1,-788 # 80006968 <cons>
    80002c84:	00048513          	mv	a0,s1
    80002c88:	00002597          	auipc	a1,0x2
    80002c8c:	54858593          	addi	a1,a1,1352 # 800051d0 <_ZZ12printIntegermE6digits+0x138>
    80002c90:	00001097          	auipc	ra,0x1
    80002c94:	d88080e7          	jalr	-632(ra) # 80003a18 <initlock>
    80002c98:	00000097          	auipc	ra,0x0
    80002c9c:	7ac080e7          	jalr	1964(ra) # 80003444 <uartinit>
    80002ca0:	01813083          	ld	ra,24(sp)
    80002ca4:	01013403          	ld	s0,16(sp)
    80002ca8:	00000797          	auipc	a5,0x0
    80002cac:	d9c78793          	addi	a5,a5,-612 # 80002a44 <consoleread>
    80002cb0:	0af4bc23          	sd	a5,184(s1)
    80002cb4:	00000797          	auipc	a5,0x0
    80002cb8:	cec78793          	addi	a5,a5,-788 # 800029a0 <consolewrite>
    80002cbc:	0cf4b023          	sd	a5,192(s1)
    80002cc0:	00813483          	ld	s1,8(sp)
    80002cc4:	02010113          	addi	sp,sp,32
    80002cc8:	00008067          	ret

0000000080002ccc <console_read>:
    80002ccc:	ff010113          	addi	sp,sp,-16
    80002cd0:	00813423          	sd	s0,8(sp)
    80002cd4:	01010413          	addi	s0,sp,16
    80002cd8:	00813403          	ld	s0,8(sp)
    80002cdc:	00004317          	auipc	t1,0x4
    80002ce0:	d4433303          	ld	t1,-700(t1) # 80006a20 <devsw+0x10>
    80002ce4:	01010113          	addi	sp,sp,16
    80002ce8:	00030067          	jr	t1

0000000080002cec <console_write>:
    80002cec:	ff010113          	addi	sp,sp,-16
    80002cf0:	00813423          	sd	s0,8(sp)
    80002cf4:	01010413          	addi	s0,sp,16
    80002cf8:	00813403          	ld	s0,8(sp)
    80002cfc:	00004317          	auipc	t1,0x4
    80002d00:	d2c33303          	ld	t1,-724(t1) # 80006a28 <devsw+0x18>
    80002d04:	01010113          	addi	sp,sp,16
    80002d08:	00030067          	jr	t1

0000000080002d0c <panic>:
    80002d0c:	fe010113          	addi	sp,sp,-32
    80002d10:	00113c23          	sd	ra,24(sp)
    80002d14:	00813823          	sd	s0,16(sp)
    80002d18:	00913423          	sd	s1,8(sp)
    80002d1c:	02010413          	addi	s0,sp,32
    80002d20:	00050493          	mv	s1,a0
    80002d24:	00002517          	auipc	a0,0x2
    80002d28:	4b450513          	addi	a0,a0,1204 # 800051d8 <_ZZ12printIntegermE6digits+0x140>
    80002d2c:	00004797          	auipc	a5,0x4
    80002d30:	d807ae23          	sw	zero,-612(a5) # 80006ac8 <pr+0x18>
    80002d34:	00000097          	auipc	ra,0x0
    80002d38:	034080e7          	jalr	52(ra) # 80002d68 <__printf>
    80002d3c:	00048513          	mv	a0,s1
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	028080e7          	jalr	40(ra) # 80002d68 <__printf>
    80002d48:	00002517          	auipc	a0,0x2
    80002d4c:	34850513          	addi	a0,a0,840 # 80005090 <kvmincrease+0xbc0>
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	018080e7          	jalr	24(ra) # 80002d68 <__printf>
    80002d58:	00100793          	li	a5,1
    80002d5c:	00003717          	auipc	a4,0x3
    80002d60:	aef72623          	sw	a5,-1300(a4) # 80005848 <panicked>
    80002d64:	0000006f          	j	80002d64 <panic+0x58>

0000000080002d68 <__printf>:
    80002d68:	f3010113          	addi	sp,sp,-208
    80002d6c:	08813023          	sd	s0,128(sp)
    80002d70:	07313423          	sd	s3,104(sp)
    80002d74:	09010413          	addi	s0,sp,144
    80002d78:	05813023          	sd	s8,64(sp)
    80002d7c:	08113423          	sd	ra,136(sp)
    80002d80:	06913c23          	sd	s1,120(sp)
    80002d84:	07213823          	sd	s2,112(sp)
    80002d88:	07413023          	sd	s4,96(sp)
    80002d8c:	05513c23          	sd	s5,88(sp)
    80002d90:	05613823          	sd	s6,80(sp)
    80002d94:	05713423          	sd	s7,72(sp)
    80002d98:	03913c23          	sd	s9,56(sp)
    80002d9c:	03a13823          	sd	s10,48(sp)
    80002da0:	03b13423          	sd	s11,40(sp)
    80002da4:	00004317          	auipc	t1,0x4
    80002da8:	d0c30313          	addi	t1,t1,-756 # 80006ab0 <pr>
    80002dac:	01832c03          	lw	s8,24(t1)
    80002db0:	00b43423          	sd	a1,8(s0)
    80002db4:	00c43823          	sd	a2,16(s0)
    80002db8:	00d43c23          	sd	a3,24(s0)
    80002dbc:	02e43023          	sd	a4,32(s0)
    80002dc0:	02f43423          	sd	a5,40(s0)
    80002dc4:	03043823          	sd	a6,48(s0)
    80002dc8:	03143c23          	sd	a7,56(s0)
    80002dcc:	00050993          	mv	s3,a0
    80002dd0:	4a0c1663          	bnez	s8,8000327c <__printf+0x514>
    80002dd4:	60098c63          	beqz	s3,800033ec <__printf+0x684>
    80002dd8:	0009c503          	lbu	a0,0(s3)
    80002ddc:	00840793          	addi	a5,s0,8
    80002de0:	f6f43c23          	sd	a5,-136(s0)
    80002de4:	00000493          	li	s1,0
    80002de8:	22050063          	beqz	a0,80003008 <__printf+0x2a0>
    80002dec:	00002a37          	lui	s4,0x2
    80002df0:	00018ab7          	lui	s5,0x18
    80002df4:	000f4b37          	lui	s6,0xf4
    80002df8:	00989bb7          	lui	s7,0x989
    80002dfc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002e00:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002e04:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002e08:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002e0c:	00148c9b          	addiw	s9,s1,1
    80002e10:	02500793          	li	a5,37
    80002e14:	01998933          	add	s2,s3,s9
    80002e18:	38f51263          	bne	a0,a5,8000319c <__printf+0x434>
    80002e1c:	00094783          	lbu	a5,0(s2)
    80002e20:	00078c9b          	sext.w	s9,a5
    80002e24:	1e078263          	beqz	a5,80003008 <__printf+0x2a0>
    80002e28:	0024849b          	addiw	s1,s1,2
    80002e2c:	07000713          	li	a4,112
    80002e30:	00998933          	add	s2,s3,s1
    80002e34:	38e78a63          	beq	a5,a4,800031c8 <__printf+0x460>
    80002e38:	20f76863          	bltu	a4,a5,80003048 <__printf+0x2e0>
    80002e3c:	42a78863          	beq	a5,a0,8000326c <__printf+0x504>
    80002e40:	06400713          	li	a4,100
    80002e44:	40e79663          	bne	a5,a4,80003250 <__printf+0x4e8>
    80002e48:	f7843783          	ld	a5,-136(s0)
    80002e4c:	0007a603          	lw	a2,0(a5)
    80002e50:	00878793          	addi	a5,a5,8
    80002e54:	f6f43c23          	sd	a5,-136(s0)
    80002e58:	42064a63          	bltz	a2,8000328c <__printf+0x524>
    80002e5c:	00a00713          	li	a4,10
    80002e60:	02e677bb          	remuw	a5,a2,a4
    80002e64:	00002d97          	auipc	s11,0x2
    80002e68:	39cd8d93          	addi	s11,s11,924 # 80005200 <digits>
    80002e6c:	00900593          	li	a1,9
    80002e70:	0006051b          	sext.w	a0,a2
    80002e74:	00000c93          	li	s9,0
    80002e78:	02079793          	slli	a5,a5,0x20
    80002e7c:	0207d793          	srli	a5,a5,0x20
    80002e80:	00fd87b3          	add	a5,s11,a5
    80002e84:	0007c783          	lbu	a5,0(a5)
    80002e88:	02e656bb          	divuw	a3,a2,a4
    80002e8c:	f8f40023          	sb	a5,-128(s0)
    80002e90:	14c5d863          	bge	a1,a2,80002fe0 <__printf+0x278>
    80002e94:	06300593          	li	a1,99
    80002e98:	00100c93          	li	s9,1
    80002e9c:	02e6f7bb          	remuw	a5,a3,a4
    80002ea0:	02079793          	slli	a5,a5,0x20
    80002ea4:	0207d793          	srli	a5,a5,0x20
    80002ea8:	00fd87b3          	add	a5,s11,a5
    80002eac:	0007c783          	lbu	a5,0(a5)
    80002eb0:	02e6d73b          	divuw	a4,a3,a4
    80002eb4:	f8f400a3          	sb	a5,-127(s0)
    80002eb8:	12a5f463          	bgeu	a1,a0,80002fe0 <__printf+0x278>
    80002ebc:	00a00693          	li	a3,10
    80002ec0:	00900593          	li	a1,9
    80002ec4:	02d777bb          	remuw	a5,a4,a3
    80002ec8:	02079793          	slli	a5,a5,0x20
    80002ecc:	0207d793          	srli	a5,a5,0x20
    80002ed0:	00fd87b3          	add	a5,s11,a5
    80002ed4:	0007c503          	lbu	a0,0(a5)
    80002ed8:	02d757bb          	divuw	a5,a4,a3
    80002edc:	f8a40123          	sb	a0,-126(s0)
    80002ee0:	48e5f263          	bgeu	a1,a4,80003364 <__printf+0x5fc>
    80002ee4:	06300513          	li	a0,99
    80002ee8:	02d7f5bb          	remuw	a1,a5,a3
    80002eec:	02059593          	slli	a1,a1,0x20
    80002ef0:	0205d593          	srli	a1,a1,0x20
    80002ef4:	00bd85b3          	add	a1,s11,a1
    80002ef8:	0005c583          	lbu	a1,0(a1)
    80002efc:	02d7d7bb          	divuw	a5,a5,a3
    80002f00:	f8b401a3          	sb	a1,-125(s0)
    80002f04:	48e57263          	bgeu	a0,a4,80003388 <__printf+0x620>
    80002f08:	3e700513          	li	a0,999
    80002f0c:	02d7f5bb          	remuw	a1,a5,a3
    80002f10:	02059593          	slli	a1,a1,0x20
    80002f14:	0205d593          	srli	a1,a1,0x20
    80002f18:	00bd85b3          	add	a1,s11,a1
    80002f1c:	0005c583          	lbu	a1,0(a1)
    80002f20:	02d7d7bb          	divuw	a5,a5,a3
    80002f24:	f8b40223          	sb	a1,-124(s0)
    80002f28:	46e57663          	bgeu	a0,a4,80003394 <__printf+0x62c>
    80002f2c:	02d7f5bb          	remuw	a1,a5,a3
    80002f30:	02059593          	slli	a1,a1,0x20
    80002f34:	0205d593          	srli	a1,a1,0x20
    80002f38:	00bd85b3          	add	a1,s11,a1
    80002f3c:	0005c583          	lbu	a1,0(a1)
    80002f40:	02d7d7bb          	divuw	a5,a5,a3
    80002f44:	f8b402a3          	sb	a1,-123(s0)
    80002f48:	46ea7863          	bgeu	s4,a4,800033b8 <__printf+0x650>
    80002f4c:	02d7f5bb          	remuw	a1,a5,a3
    80002f50:	02059593          	slli	a1,a1,0x20
    80002f54:	0205d593          	srli	a1,a1,0x20
    80002f58:	00bd85b3          	add	a1,s11,a1
    80002f5c:	0005c583          	lbu	a1,0(a1)
    80002f60:	02d7d7bb          	divuw	a5,a5,a3
    80002f64:	f8b40323          	sb	a1,-122(s0)
    80002f68:	3eeaf863          	bgeu	s5,a4,80003358 <__printf+0x5f0>
    80002f6c:	02d7f5bb          	remuw	a1,a5,a3
    80002f70:	02059593          	slli	a1,a1,0x20
    80002f74:	0205d593          	srli	a1,a1,0x20
    80002f78:	00bd85b3          	add	a1,s11,a1
    80002f7c:	0005c583          	lbu	a1,0(a1)
    80002f80:	02d7d7bb          	divuw	a5,a5,a3
    80002f84:	f8b403a3          	sb	a1,-121(s0)
    80002f88:	42eb7e63          	bgeu	s6,a4,800033c4 <__printf+0x65c>
    80002f8c:	02d7f5bb          	remuw	a1,a5,a3
    80002f90:	02059593          	slli	a1,a1,0x20
    80002f94:	0205d593          	srli	a1,a1,0x20
    80002f98:	00bd85b3          	add	a1,s11,a1
    80002f9c:	0005c583          	lbu	a1,0(a1)
    80002fa0:	02d7d7bb          	divuw	a5,a5,a3
    80002fa4:	f8b40423          	sb	a1,-120(s0)
    80002fa8:	42ebfc63          	bgeu	s7,a4,800033e0 <__printf+0x678>
    80002fac:	02079793          	slli	a5,a5,0x20
    80002fb0:	0207d793          	srli	a5,a5,0x20
    80002fb4:	00fd8db3          	add	s11,s11,a5
    80002fb8:	000dc703          	lbu	a4,0(s11)
    80002fbc:	00a00793          	li	a5,10
    80002fc0:	00900c93          	li	s9,9
    80002fc4:	f8e404a3          	sb	a4,-119(s0)
    80002fc8:	00065c63          	bgez	a2,80002fe0 <__printf+0x278>
    80002fcc:	f9040713          	addi	a4,s0,-112
    80002fd0:	00f70733          	add	a4,a4,a5
    80002fd4:	02d00693          	li	a3,45
    80002fd8:	fed70823          	sb	a3,-16(a4)
    80002fdc:	00078c93          	mv	s9,a5
    80002fe0:	f8040793          	addi	a5,s0,-128
    80002fe4:	01978cb3          	add	s9,a5,s9
    80002fe8:	f7f40d13          	addi	s10,s0,-129
    80002fec:	000cc503          	lbu	a0,0(s9)
    80002ff0:	fffc8c93          	addi	s9,s9,-1
    80002ff4:	00000097          	auipc	ra,0x0
    80002ff8:	b90080e7          	jalr	-1136(ra) # 80002b84 <consputc>
    80002ffc:	ffac98e3          	bne	s9,s10,80002fec <__printf+0x284>
    80003000:	00094503          	lbu	a0,0(s2)
    80003004:	e00514e3          	bnez	a0,80002e0c <__printf+0xa4>
    80003008:	1a0c1663          	bnez	s8,800031b4 <__printf+0x44c>
    8000300c:	08813083          	ld	ra,136(sp)
    80003010:	08013403          	ld	s0,128(sp)
    80003014:	07813483          	ld	s1,120(sp)
    80003018:	07013903          	ld	s2,112(sp)
    8000301c:	06813983          	ld	s3,104(sp)
    80003020:	06013a03          	ld	s4,96(sp)
    80003024:	05813a83          	ld	s5,88(sp)
    80003028:	05013b03          	ld	s6,80(sp)
    8000302c:	04813b83          	ld	s7,72(sp)
    80003030:	04013c03          	ld	s8,64(sp)
    80003034:	03813c83          	ld	s9,56(sp)
    80003038:	03013d03          	ld	s10,48(sp)
    8000303c:	02813d83          	ld	s11,40(sp)
    80003040:	0d010113          	addi	sp,sp,208
    80003044:	00008067          	ret
    80003048:	07300713          	li	a4,115
    8000304c:	1ce78a63          	beq	a5,a4,80003220 <__printf+0x4b8>
    80003050:	07800713          	li	a4,120
    80003054:	1ee79e63          	bne	a5,a4,80003250 <__printf+0x4e8>
    80003058:	f7843783          	ld	a5,-136(s0)
    8000305c:	0007a703          	lw	a4,0(a5)
    80003060:	00878793          	addi	a5,a5,8
    80003064:	f6f43c23          	sd	a5,-136(s0)
    80003068:	28074263          	bltz	a4,800032ec <__printf+0x584>
    8000306c:	00002d97          	auipc	s11,0x2
    80003070:	194d8d93          	addi	s11,s11,404 # 80005200 <digits>
    80003074:	00f77793          	andi	a5,a4,15
    80003078:	00fd87b3          	add	a5,s11,a5
    8000307c:	0007c683          	lbu	a3,0(a5)
    80003080:	00f00613          	li	a2,15
    80003084:	0007079b          	sext.w	a5,a4
    80003088:	f8d40023          	sb	a3,-128(s0)
    8000308c:	0047559b          	srliw	a1,a4,0x4
    80003090:	0047569b          	srliw	a3,a4,0x4
    80003094:	00000c93          	li	s9,0
    80003098:	0ee65063          	bge	a2,a4,80003178 <__printf+0x410>
    8000309c:	00f6f693          	andi	a3,a3,15
    800030a0:	00dd86b3          	add	a3,s11,a3
    800030a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800030a8:	0087d79b          	srliw	a5,a5,0x8
    800030ac:	00100c93          	li	s9,1
    800030b0:	f8d400a3          	sb	a3,-127(s0)
    800030b4:	0cb67263          	bgeu	a2,a1,80003178 <__printf+0x410>
    800030b8:	00f7f693          	andi	a3,a5,15
    800030bc:	00dd86b3          	add	a3,s11,a3
    800030c0:	0006c583          	lbu	a1,0(a3)
    800030c4:	00f00613          	li	a2,15
    800030c8:	0047d69b          	srliw	a3,a5,0x4
    800030cc:	f8b40123          	sb	a1,-126(s0)
    800030d0:	0047d593          	srli	a1,a5,0x4
    800030d4:	28f67e63          	bgeu	a2,a5,80003370 <__printf+0x608>
    800030d8:	00f6f693          	andi	a3,a3,15
    800030dc:	00dd86b3          	add	a3,s11,a3
    800030e0:	0006c503          	lbu	a0,0(a3)
    800030e4:	0087d813          	srli	a6,a5,0x8
    800030e8:	0087d69b          	srliw	a3,a5,0x8
    800030ec:	f8a401a3          	sb	a0,-125(s0)
    800030f0:	28b67663          	bgeu	a2,a1,8000337c <__printf+0x614>
    800030f4:	00f6f693          	andi	a3,a3,15
    800030f8:	00dd86b3          	add	a3,s11,a3
    800030fc:	0006c583          	lbu	a1,0(a3)
    80003100:	00c7d513          	srli	a0,a5,0xc
    80003104:	00c7d69b          	srliw	a3,a5,0xc
    80003108:	f8b40223          	sb	a1,-124(s0)
    8000310c:	29067a63          	bgeu	a2,a6,800033a0 <__printf+0x638>
    80003110:	00f6f693          	andi	a3,a3,15
    80003114:	00dd86b3          	add	a3,s11,a3
    80003118:	0006c583          	lbu	a1,0(a3)
    8000311c:	0107d813          	srli	a6,a5,0x10
    80003120:	0107d69b          	srliw	a3,a5,0x10
    80003124:	f8b402a3          	sb	a1,-123(s0)
    80003128:	28a67263          	bgeu	a2,a0,800033ac <__printf+0x644>
    8000312c:	00f6f693          	andi	a3,a3,15
    80003130:	00dd86b3          	add	a3,s11,a3
    80003134:	0006c683          	lbu	a3,0(a3)
    80003138:	0147d79b          	srliw	a5,a5,0x14
    8000313c:	f8d40323          	sb	a3,-122(s0)
    80003140:	21067663          	bgeu	a2,a6,8000334c <__printf+0x5e4>
    80003144:	02079793          	slli	a5,a5,0x20
    80003148:	0207d793          	srli	a5,a5,0x20
    8000314c:	00fd8db3          	add	s11,s11,a5
    80003150:	000dc683          	lbu	a3,0(s11)
    80003154:	00800793          	li	a5,8
    80003158:	00700c93          	li	s9,7
    8000315c:	f8d403a3          	sb	a3,-121(s0)
    80003160:	00075c63          	bgez	a4,80003178 <__printf+0x410>
    80003164:	f9040713          	addi	a4,s0,-112
    80003168:	00f70733          	add	a4,a4,a5
    8000316c:	02d00693          	li	a3,45
    80003170:	fed70823          	sb	a3,-16(a4)
    80003174:	00078c93          	mv	s9,a5
    80003178:	f8040793          	addi	a5,s0,-128
    8000317c:	01978cb3          	add	s9,a5,s9
    80003180:	f7f40d13          	addi	s10,s0,-129
    80003184:	000cc503          	lbu	a0,0(s9)
    80003188:	fffc8c93          	addi	s9,s9,-1
    8000318c:	00000097          	auipc	ra,0x0
    80003190:	9f8080e7          	jalr	-1544(ra) # 80002b84 <consputc>
    80003194:	ff9d18e3          	bne	s10,s9,80003184 <__printf+0x41c>
    80003198:	0100006f          	j	800031a8 <__printf+0x440>
    8000319c:	00000097          	auipc	ra,0x0
    800031a0:	9e8080e7          	jalr	-1560(ra) # 80002b84 <consputc>
    800031a4:	000c8493          	mv	s1,s9
    800031a8:	00094503          	lbu	a0,0(s2)
    800031ac:	c60510e3          	bnez	a0,80002e0c <__printf+0xa4>
    800031b0:	e40c0ee3          	beqz	s8,8000300c <__printf+0x2a4>
    800031b4:	00004517          	auipc	a0,0x4
    800031b8:	8fc50513          	addi	a0,a0,-1796 # 80006ab0 <pr>
    800031bc:	00001097          	auipc	ra,0x1
    800031c0:	94c080e7          	jalr	-1716(ra) # 80003b08 <release>
    800031c4:	e49ff06f          	j	8000300c <__printf+0x2a4>
    800031c8:	f7843783          	ld	a5,-136(s0)
    800031cc:	03000513          	li	a0,48
    800031d0:	01000d13          	li	s10,16
    800031d4:	00878713          	addi	a4,a5,8
    800031d8:	0007bc83          	ld	s9,0(a5)
    800031dc:	f6e43c23          	sd	a4,-136(s0)
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	9a4080e7          	jalr	-1628(ra) # 80002b84 <consputc>
    800031e8:	07800513          	li	a0,120
    800031ec:	00000097          	auipc	ra,0x0
    800031f0:	998080e7          	jalr	-1640(ra) # 80002b84 <consputc>
    800031f4:	00002d97          	auipc	s11,0x2
    800031f8:	00cd8d93          	addi	s11,s11,12 # 80005200 <digits>
    800031fc:	03ccd793          	srli	a5,s9,0x3c
    80003200:	00fd87b3          	add	a5,s11,a5
    80003204:	0007c503          	lbu	a0,0(a5)
    80003208:	fffd0d1b          	addiw	s10,s10,-1
    8000320c:	004c9c93          	slli	s9,s9,0x4
    80003210:	00000097          	auipc	ra,0x0
    80003214:	974080e7          	jalr	-1676(ra) # 80002b84 <consputc>
    80003218:	fe0d12e3          	bnez	s10,800031fc <__printf+0x494>
    8000321c:	f8dff06f          	j	800031a8 <__printf+0x440>
    80003220:	f7843783          	ld	a5,-136(s0)
    80003224:	0007bc83          	ld	s9,0(a5)
    80003228:	00878793          	addi	a5,a5,8
    8000322c:	f6f43c23          	sd	a5,-136(s0)
    80003230:	000c9a63          	bnez	s9,80003244 <__printf+0x4dc>
    80003234:	1080006f          	j	8000333c <__printf+0x5d4>
    80003238:	001c8c93          	addi	s9,s9,1
    8000323c:	00000097          	auipc	ra,0x0
    80003240:	948080e7          	jalr	-1720(ra) # 80002b84 <consputc>
    80003244:	000cc503          	lbu	a0,0(s9)
    80003248:	fe0518e3          	bnez	a0,80003238 <__printf+0x4d0>
    8000324c:	f5dff06f          	j	800031a8 <__printf+0x440>
    80003250:	02500513          	li	a0,37
    80003254:	00000097          	auipc	ra,0x0
    80003258:	930080e7          	jalr	-1744(ra) # 80002b84 <consputc>
    8000325c:	000c8513          	mv	a0,s9
    80003260:	00000097          	auipc	ra,0x0
    80003264:	924080e7          	jalr	-1756(ra) # 80002b84 <consputc>
    80003268:	f41ff06f          	j	800031a8 <__printf+0x440>
    8000326c:	02500513          	li	a0,37
    80003270:	00000097          	auipc	ra,0x0
    80003274:	914080e7          	jalr	-1772(ra) # 80002b84 <consputc>
    80003278:	f31ff06f          	j	800031a8 <__printf+0x440>
    8000327c:	00030513          	mv	a0,t1
    80003280:	00000097          	auipc	ra,0x0
    80003284:	7bc080e7          	jalr	1980(ra) # 80003a3c <acquire>
    80003288:	b4dff06f          	j	80002dd4 <__printf+0x6c>
    8000328c:	40c0053b          	negw	a0,a2
    80003290:	00a00713          	li	a4,10
    80003294:	02e576bb          	remuw	a3,a0,a4
    80003298:	00002d97          	auipc	s11,0x2
    8000329c:	f68d8d93          	addi	s11,s11,-152 # 80005200 <digits>
    800032a0:	ff700593          	li	a1,-9
    800032a4:	02069693          	slli	a3,a3,0x20
    800032a8:	0206d693          	srli	a3,a3,0x20
    800032ac:	00dd86b3          	add	a3,s11,a3
    800032b0:	0006c683          	lbu	a3,0(a3)
    800032b4:	02e557bb          	divuw	a5,a0,a4
    800032b8:	f8d40023          	sb	a3,-128(s0)
    800032bc:	10b65e63          	bge	a2,a1,800033d8 <__printf+0x670>
    800032c0:	06300593          	li	a1,99
    800032c4:	02e7f6bb          	remuw	a3,a5,a4
    800032c8:	02069693          	slli	a3,a3,0x20
    800032cc:	0206d693          	srli	a3,a3,0x20
    800032d0:	00dd86b3          	add	a3,s11,a3
    800032d4:	0006c683          	lbu	a3,0(a3)
    800032d8:	02e7d73b          	divuw	a4,a5,a4
    800032dc:	00200793          	li	a5,2
    800032e0:	f8d400a3          	sb	a3,-127(s0)
    800032e4:	bca5ece3          	bltu	a1,a0,80002ebc <__printf+0x154>
    800032e8:	ce5ff06f          	j	80002fcc <__printf+0x264>
    800032ec:	40e007bb          	negw	a5,a4
    800032f0:	00002d97          	auipc	s11,0x2
    800032f4:	f10d8d93          	addi	s11,s11,-240 # 80005200 <digits>
    800032f8:	00f7f693          	andi	a3,a5,15
    800032fc:	00dd86b3          	add	a3,s11,a3
    80003300:	0006c583          	lbu	a1,0(a3)
    80003304:	ff100613          	li	a2,-15
    80003308:	0047d69b          	srliw	a3,a5,0x4
    8000330c:	f8b40023          	sb	a1,-128(s0)
    80003310:	0047d59b          	srliw	a1,a5,0x4
    80003314:	0ac75e63          	bge	a4,a2,800033d0 <__printf+0x668>
    80003318:	00f6f693          	andi	a3,a3,15
    8000331c:	00dd86b3          	add	a3,s11,a3
    80003320:	0006c603          	lbu	a2,0(a3)
    80003324:	00f00693          	li	a3,15
    80003328:	0087d79b          	srliw	a5,a5,0x8
    8000332c:	f8c400a3          	sb	a2,-127(s0)
    80003330:	d8b6e4e3          	bltu	a3,a1,800030b8 <__printf+0x350>
    80003334:	00200793          	li	a5,2
    80003338:	e2dff06f          	j	80003164 <__printf+0x3fc>
    8000333c:	00002c97          	auipc	s9,0x2
    80003340:	ea4c8c93          	addi	s9,s9,-348 # 800051e0 <_ZZ12printIntegermE6digits+0x148>
    80003344:	02800513          	li	a0,40
    80003348:	ef1ff06f          	j	80003238 <__printf+0x4d0>
    8000334c:	00700793          	li	a5,7
    80003350:	00600c93          	li	s9,6
    80003354:	e0dff06f          	j	80003160 <__printf+0x3f8>
    80003358:	00700793          	li	a5,7
    8000335c:	00600c93          	li	s9,6
    80003360:	c69ff06f          	j	80002fc8 <__printf+0x260>
    80003364:	00300793          	li	a5,3
    80003368:	00200c93          	li	s9,2
    8000336c:	c5dff06f          	j	80002fc8 <__printf+0x260>
    80003370:	00300793          	li	a5,3
    80003374:	00200c93          	li	s9,2
    80003378:	de9ff06f          	j	80003160 <__printf+0x3f8>
    8000337c:	00400793          	li	a5,4
    80003380:	00300c93          	li	s9,3
    80003384:	dddff06f          	j	80003160 <__printf+0x3f8>
    80003388:	00400793          	li	a5,4
    8000338c:	00300c93          	li	s9,3
    80003390:	c39ff06f          	j	80002fc8 <__printf+0x260>
    80003394:	00500793          	li	a5,5
    80003398:	00400c93          	li	s9,4
    8000339c:	c2dff06f          	j	80002fc8 <__printf+0x260>
    800033a0:	00500793          	li	a5,5
    800033a4:	00400c93          	li	s9,4
    800033a8:	db9ff06f          	j	80003160 <__printf+0x3f8>
    800033ac:	00600793          	li	a5,6
    800033b0:	00500c93          	li	s9,5
    800033b4:	dadff06f          	j	80003160 <__printf+0x3f8>
    800033b8:	00600793          	li	a5,6
    800033bc:	00500c93          	li	s9,5
    800033c0:	c09ff06f          	j	80002fc8 <__printf+0x260>
    800033c4:	00800793          	li	a5,8
    800033c8:	00700c93          	li	s9,7
    800033cc:	bfdff06f          	j	80002fc8 <__printf+0x260>
    800033d0:	00100793          	li	a5,1
    800033d4:	d91ff06f          	j	80003164 <__printf+0x3fc>
    800033d8:	00100793          	li	a5,1
    800033dc:	bf1ff06f          	j	80002fcc <__printf+0x264>
    800033e0:	00900793          	li	a5,9
    800033e4:	00800c93          	li	s9,8
    800033e8:	be1ff06f          	j	80002fc8 <__printf+0x260>
    800033ec:	00002517          	auipc	a0,0x2
    800033f0:	dfc50513          	addi	a0,a0,-516 # 800051e8 <_ZZ12printIntegermE6digits+0x150>
    800033f4:	00000097          	auipc	ra,0x0
    800033f8:	918080e7          	jalr	-1768(ra) # 80002d0c <panic>

00000000800033fc <printfinit>:
    800033fc:	fe010113          	addi	sp,sp,-32
    80003400:	00813823          	sd	s0,16(sp)
    80003404:	00913423          	sd	s1,8(sp)
    80003408:	00113c23          	sd	ra,24(sp)
    8000340c:	02010413          	addi	s0,sp,32
    80003410:	00003497          	auipc	s1,0x3
    80003414:	6a048493          	addi	s1,s1,1696 # 80006ab0 <pr>
    80003418:	00048513          	mv	a0,s1
    8000341c:	00002597          	auipc	a1,0x2
    80003420:	ddc58593          	addi	a1,a1,-548 # 800051f8 <_ZZ12printIntegermE6digits+0x160>
    80003424:	00000097          	auipc	ra,0x0
    80003428:	5f4080e7          	jalr	1524(ra) # 80003a18 <initlock>
    8000342c:	01813083          	ld	ra,24(sp)
    80003430:	01013403          	ld	s0,16(sp)
    80003434:	0004ac23          	sw	zero,24(s1)
    80003438:	00813483          	ld	s1,8(sp)
    8000343c:	02010113          	addi	sp,sp,32
    80003440:	00008067          	ret

0000000080003444 <uartinit>:
    80003444:	ff010113          	addi	sp,sp,-16
    80003448:	00813423          	sd	s0,8(sp)
    8000344c:	01010413          	addi	s0,sp,16
    80003450:	100007b7          	lui	a5,0x10000
    80003454:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003458:	f8000713          	li	a4,-128
    8000345c:	00e781a3          	sb	a4,3(a5)
    80003460:	00300713          	li	a4,3
    80003464:	00e78023          	sb	a4,0(a5)
    80003468:	000780a3          	sb	zero,1(a5)
    8000346c:	00e781a3          	sb	a4,3(a5)
    80003470:	00700693          	li	a3,7
    80003474:	00d78123          	sb	a3,2(a5)
    80003478:	00e780a3          	sb	a4,1(a5)
    8000347c:	00813403          	ld	s0,8(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret

0000000080003488 <uartputc>:
    80003488:	00002797          	auipc	a5,0x2
    8000348c:	3c07a783          	lw	a5,960(a5) # 80005848 <panicked>
    80003490:	00078463          	beqz	a5,80003498 <uartputc+0x10>
    80003494:	0000006f          	j	80003494 <uartputc+0xc>
    80003498:	fd010113          	addi	sp,sp,-48
    8000349c:	02813023          	sd	s0,32(sp)
    800034a0:	00913c23          	sd	s1,24(sp)
    800034a4:	01213823          	sd	s2,16(sp)
    800034a8:	01313423          	sd	s3,8(sp)
    800034ac:	02113423          	sd	ra,40(sp)
    800034b0:	03010413          	addi	s0,sp,48
    800034b4:	00002917          	auipc	s2,0x2
    800034b8:	39c90913          	addi	s2,s2,924 # 80005850 <uart_tx_r>
    800034bc:	00093783          	ld	a5,0(s2)
    800034c0:	00002497          	auipc	s1,0x2
    800034c4:	39848493          	addi	s1,s1,920 # 80005858 <uart_tx_w>
    800034c8:	0004b703          	ld	a4,0(s1)
    800034cc:	02078693          	addi	a3,a5,32
    800034d0:	00050993          	mv	s3,a0
    800034d4:	02e69c63          	bne	a3,a4,8000350c <uartputc+0x84>
    800034d8:	00001097          	auipc	ra,0x1
    800034dc:	834080e7          	jalr	-1996(ra) # 80003d0c <push_on>
    800034e0:	00093783          	ld	a5,0(s2)
    800034e4:	0004b703          	ld	a4,0(s1)
    800034e8:	02078793          	addi	a5,a5,32
    800034ec:	00e79463          	bne	a5,a4,800034f4 <uartputc+0x6c>
    800034f0:	0000006f          	j	800034f0 <uartputc+0x68>
    800034f4:	00001097          	auipc	ra,0x1
    800034f8:	88c080e7          	jalr	-1908(ra) # 80003d80 <pop_on>
    800034fc:	00093783          	ld	a5,0(s2)
    80003500:	0004b703          	ld	a4,0(s1)
    80003504:	02078693          	addi	a3,a5,32
    80003508:	fce688e3          	beq	a3,a4,800034d8 <uartputc+0x50>
    8000350c:	01f77693          	andi	a3,a4,31
    80003510:	00003597          	auipc	a1,0x3
    80003514:	5c058593          	addi	a1,a1,1472 # 80006ad0 <uart_tx_buf>
    80003518:	00d586b3          	add	a3,a1,a3
    8000351c:	00170713          	addi	a4,a4,1
    80003520:	01368023          	sb	s3,0(a3)
    80003524:	00e4b023          	sd	a4,0(s1)
    80003528:	10000637          	lui	a2,0x10000
    8000352c:	02f71063          	bne	a4,a5,8000354c <uartputc+0xc4>
    80003530:	0340006f          	j	80003564 <uartputc+0xdc>
    80003534:	00074703          	lbu	a4,0(a4)
    80003538:	00f93023          	sd	a5,0(s2)
    8000353c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003540:	00093783          	ld	a5,0(s2)
    80003544:	0004b703          	ld	a4,0(s1)
    80003548:	00f70e63          	beq	a4,a5,80003564 <uartputc+0xdc>
    8000354c:	00564683          	lbu	a3,5(a2)
    80003550:	01f7f713          	andi	a4,a5,31
    80003554:	00e58733          	add	a4,a1,a4
    80003558:	0206f693          	andi	a3,a3,32
    8000355c:	00178793          	addi	a5,a5,1
    80003560:	fc069ae3          	bnez	a3,80003534 <uartputc+0xac>
    80003564:	02813083          	ld	ra,40(sp)
    80003568:	02013403          	ld	s0,32(sp)
    8000356c:	01813483          	ld	s1,24(sp)
    80003570:	01013903          	ld	s2,16(sp)
    80003574:	00813983          	ld	s3,8(sp)
    80003578:	03010113          	addi	sp,sp,48
    8000357c:	00008067          	ret

0000000080003580 <uartputc_sync>:
    80003580:	ff010113          	addi	sp,sp,-16
    80003584:	00813423          	sd	s0,8(sp)
    80003588:	01010413          	addi	s0,sp,16
    8000358c:	00002717          	auipc	a4,0x2
    80003590:	2bc72703          	lw	a4,700(a4) # 80005848 <panicked>
    80003594:	02071663          	bnez	a4,800035c0 <uartputc_sync+0x40>
    80003598:	00050793          	mv	a5,a0
    8000359c:	100006b7          	lui	a3,0x10000
    800035a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800035a4:	02077713          	andi	a4,a4,32
    800035a8:	fe070ce3          	beqz	a4,800035a0 <uartputc_sync+0x20>
    800035ac:	0ff7f793          	andi	a5,a5,255
    800035b0:	00f68023          	sb	a5,0(a3)
    800035b4:	00813403          	ld	s0,8(sp)
    800035b8:	01010113          	addi	sp,sp,16
    800035bc:	00008067          	ret
    800035c0:	0000006f          	j	800035c0 <uartputc_sync+0x40>

00000000800035c4 <uartstart>:
    800035c4:	ff010113          	addi	sp,sp,-16
    800035c8:	00813423          	sd	s0,8(sp)
    800035cc:	01010413          	addi	s0,sp,16
    800035d0:	00002617          	auipc	a2,0x2
    800035d4:	28060613          	addi	a2,a2,640 # 80005850 <uart_tx_r>
    800035d8:	00002517          	auipc	a0,0x2
    800035dc:	28050513          	addi	a0,a0,640 # 80005858 <uart_tx_w>
    800035e0:	00063783          	ld	a5,0(a2)
    800035e4:	00053703          	ld	a4,0(a0)
    800035e8:	04f70263          	beq	a4,a5,8000362c <uartstart+0x68>
    800035ec:	100005b7          	lui	a1,0x10000
    800035f0:	00003817          	auipc	a6,0x3
    800035f4:	4e080813          	addi	a6,a6,1248 # 80006ad0 <uart_tx_buf>
    800035f8:	01c0006f          	j	80003614 <uartstart+0x50>
    800035fc:	0006c703          	lbu	a4,0(a3)
    80003600:	00f63023          	sd	a5,0(a2)
    80003604:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003608:	00063783          	ld	a5,0(a2)
    8000360c:	00053703          	ld	a4,0(a0)
    80003610:	00f70e63          	beq	a4,a5,8000362c <uartstart+0x68>
    80003614:	01f7f713          	andi	a4,a5,31
    80003618:	00e806b3          	add	a3,a6,a4
    8000361c:	0055c703          	lbu	a4,5(a1)
    80003620:	00178793          	addi	a5,a5,1
    80003624:	02077713          	andi	a4,a4,32
    80003628:	fc071ae3          	bnez	a4,800035fc <uartstart+0x38>
    8000362c:	00813403          	ld	s0,8(sp)
    80003630:	01010113          	addi	sp,sp,16
    80003634:	00008067          	ret

0000000080003638 <uartgetc>:
    80003638:	ff010113          	addi	sp,sp,-16
    8000363c:	00813423          	sd	s0,8(sp)
    80003640:	01010413          	addi	s0,sp,16
    80003644:	10000737          	lui	a4,0x10000
    80003648:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000364c:	0017f793          	andi	a5,a5,1
    80003650:	00078c63          	beqz	a5,80003668 <uartgetc+0x30>
    80003654:	00074503          	lbu	a0,0(a4)
    80003658:	0ff57513          	andi	a0,a0,255
    8000365c:	00813403          	ld	s0,8(sp)
    80003660:	01010113          	addi	sp,sp,16
    80003664:	00008067          	ret
    80003668:	fff00513          	li	a0,-1
    8000366c:	ff1ff06f          	j	8000365c <uartgetc+0x24>

0000000080003670 <uartintr>:
    80003670:	100007b7          	lui	a5,0x10000
    80003674:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003678:	0017f793          	andi	a5,a5,1
    8000367c:	0a078463          	beqz	a5,80003724 <uartintr+0xb4>
    80003680:	fe010113          	addi	sp,sp,-32
    80003684:	00813823          	sd	s0,16(sp)
    80003688:	00913423          	sd	s1,8(sp)
    8000368c:	00113c23          	sd	ra,24(sp)
    80003690:	02010413          	addi	s0,sp,32
    80003694:	100004b7          	lui	s1,0x10000
    80003698:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000369c:	0ff57513          	andi	a0,a0,255
    800036a0:	fffff097          	auipc	ra,0xfffff
    800036a4:	534080e7          	jalr	1332(ra) # 80002bd4 <consoleintr>
    800036a8:	0054c783          	lbu	a5,5(s1)
    800036ac:	0017f793          	andi	a5,a5,1
    800036b0:	fe0794e3          	bnez	a5,80003698 <uartintr+0x28>
    800036b4:	00002617          	auipc	a2,0x2
    800036b8:	19c60613          	addi	a2,a2,412 # 80005850 <uart_tx_r>
    800036bc:	00002517          	auipc	a0,0x2
    800036c0:	19c50513          	addi	a0,a0,412 # 80005858 <uart_tx_w>
    800036c4:	00063783          	ld	a5,0(a2)
    800036c8:	00053703          	ld	a4,0(a0)
    800036cc:	04f70263          	beq	a4,a5,80003710 <uartintr+0xa0>
    800036d0:	100005b7          	lui	a1,0x10000
    800036d4:	00003817          	auipc	a6,0x3
    800036d8:	3fc80813          	addi	a6,a6,1020 # 80006ad0 <uart_tx_buf>
    800036dc:	01c0006f          	j	800036f8 <uartintr+0x88>
    800036e0:	0006c703          	lbu	a4,0(a3)
    800036e4:	00f63023          	sd	a5,0(a2)
    800036e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036ec:	00063783          	ld	a5,0(a2)
    800036f0:	00053703          	ld	a4,0(a0)
    800036f4:	00f70e63          	beq	a4,a5,80003710 <uartintr+0xa0>
    800036f8:	01f7f713          	andi	a4,a5,31
    800036fc:	00e806b3          	add	a3,a6,a4
    80003700:	0055c703          	lbu	a4,5(a1)
    80003704:	00178793          	addi	a5,a5,1
    80003708:	02077713          	andi	a4,a4,32
    8000370c:	fc071ae3          	bnez	a4,800036e0 <uartintr+0x70>
    80003710:	01813083          	ld	ra,24(sp)
    80003714:	01013403          	ld	s0,16(sp)
    80003718:	00813483          	ld	s1,8(sp)
    8000371c:	02010113          	addi	sp,sp,32
    80003720:	00008067          	ret
    80003724:	00002617          	auipc	a2,0x2
    80003728:	12c60613          	addi	a2,a2,300 # 80005850 <uart_tx_r>
    8000372c:	00002517          	auipc	a0,0x2
    80003730:	12c50513          	addi	a0,a0,300 # 80005858 <uart_tx_w>
    80003734:	00063783          	ld	a5,0(a2)
    80003738:	00053703          	ld	a4,0(a0)
    8000373c:	04f70263          	beq	a4,a5,80003780 <uartintr+0x110>
    80003740:	100005b7          	lui	a1,0x10000
    80003744:	00003817          	auipc	a6,0x3
    80003748:	38c80813          	addi	a6,a6,908 # 80006ad0 <uart_tx_buf>
    8000374c:	01c0006f          	j	80003768 <uartintr+0xf8>
    80003750:	0006c703          	lbu	a4,0(a3)
    80003754:	00f63023          	sd	a5,0(a2)
    80003758:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000375c:	00063783          	ld	a5,0(a2)
    80003760:	00053703          	ld	a4,0(a0)
    80003764:	02f70063          	beq	a4,a5,80003784 <uartintr+0x114>
    80003768:	01f7f713          	andi	a4,a5,31
    8000376c:	00e806b3          	add	a3,a6,a4
    80003770:	0055c703          	lbu	a4,5(a1)
    80003774:	00178793          	addi	a5,a5,1
    80003778:	02077713          	andi	a4,a4,32
    8000377c:	fc071ae3          	bnez	a4,80003750 <uartintr+0xe0>
    80003780:	00008067          	ret
    80003784:	00008067          	ret

0000000080003788 <kinit>:
    80003788:	fc010113          	addi	sp,sp,-64
    8000378c:	02913423          	sd	s1,40(sp)
    80003790:	fffff7b7          	lui	a5,0xfffff
    80003794:	00004497          	auipc	s1,0x4
    80003798:	36b48493          	addi	s1,s1,875 # 80007aff <end+0xfff>
    8000379c:	02813823          	sd	s0,48(sp)
    800037a0:	01313c23          	sd	s3,24(sp)
    800037a4:	00f4f4b3          	and	s1,s1,a5
    800037a8:	02113c23          	sd	ra,56(sp)
    800037ac:	03213023          	sd	s2,32(sp)
    800037b0:	01413823          	sd	s4,16(sp)
    800037b4:	01513423          	sd	s5,8(sp)
    800037b8:	04010413          	addi	s0,sp,64
    800037bc:	000017b7          	lui	a5,0x1
    800037c0:	01100993          	li	s3,17
    800037c4:	00f487b3          	add	a5,s1,a5
    800037c8:	01b99993          	slli	s3,s3,0x1b
    800037cc:	06f9e063          	bltu	s3,a5,8000382c <kinit+0xa4>
    800037d0:	00003a97          	auipc	s5,0x3
    800037d4:	330a8a93          	addi	s5,s5,816 # 80006b00 <end>
    800037d8:	0754ec63          	bltu	s1,s5,80003850 <kinit+0xc8>
    800037dc:	0734fa63          	bgeu	s1,s3,80003850 <kinit+0xc8>
    800037e0:	00088a37          	lui	s4,0x88
    800037e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800037e8:	00002917          	auipc	s2,0x2
    800037ec:	07890913          	addi	s2,s2,120 # 80005860 <kmem>
    800037f0:	00ca1a13          	slli	s4,s4,0xc
    800037f4:	0140006f          	j	80003808 <kinit+0x80>
    800037f8:	000017b7          	lui	a5,0x1
    800037fc:	00f484b3          	add	s1,s1,a5
    80003800:	0554e863          	bltu	s1,s5,80003850 <kinit+0xc8>
    80003804:	0534f663          	bgeu	s1,s3,80003850 <kinit+0xc8>
    80003808:	00001637          	lui	a2,0x1
    8000380c:	00100593          	li	a1,1
    80003810:	00048513          	mv	a0,s1
    80003814:	00000097          	auipc	ra,0x0
    80003818:	5e4080e7          	jalr	1508(ra) # 80003df8 <__memset>
    8000381c:	00093783          	ld	a5,0(s2)
    80003820:	00f4b023          	sd	a5,0(s1)
    80003824:	00993023          	sd	s1,0(s2)
    80003828:	fd4498e3          	bne	s1,s4,800037f8 <kinit+0x70>
    8000382c:	03813083          	ld	ra,56(sp)
    80003830:	03013403          	ld	s0,48(sp)
    80003834:	02813483          	ld	s1,40(sp)
    80003838:	02013903          	ld	s2,32(sp)
    8000383c:	01813983          	ld	s3,24(sp)
    80003840:	01013a03          	ld	s4,16(sp)
    80003844:	00813a83          	ld	s5,8(sp)
    80003848:	04010113          	addi	sp,sp,64
    8000384c:	00008067          	ret
    80003850:	00002517          	auipc	a0,0x2
    80003854:	9c850513          	addi	a0,a0,-1592 # 80005218 <digits+0x18>
    80003858:	fffff097          	auipc	ra,0xfffff
    8000385c:	4b4080e7          	jalr	1204(ra) # 80002d0c <panic>

0000000080003860 <freerange>:
    80003860:	fc010113          	addi	sp,sp,-64
    80003864:	000017b7          	lui	a5,0x1
    80003868:	02913423          	sd	s1,40(sp)
    8000386c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003870:	009504b3          	add	s1,a0,s1
    80003874:	fffff537          	lui	a0,0xfffff
    80003878:	02813823          	sd	s0,48(sp)
    8000387c:	02113c23          	sd	ra,56(sp)
    80003880:	03213023          	sd	s2,32(sp)
    80003884:	01313c23          	sd	s3,24(sp)
    80003888:	01413823          	sd	s4,16(sp)
    8000388c:	01513423          	sd	s5,8(sp)
    80003890:	01613023          	sd	s6,0(sp)
    80003894:	04010413          	addi	s0,sp,64
    80003898:	00a4f4b3          	and	s1,s1,a0
    8000389c:	00f487b3          	add	a5,s1,a5
    800038a0:	06f5e463          	bltu	a1,a5,80003908 <freerange+0xa8>
    800038a4:	00003a97          	auipc	s5,0x3
    800038a8:	25ca8a93          	addi	s5,s5,604 # 80006b00 <end>
    800038ac:	0954e263          	bltu	s1,s5,80003930 <freerange+0xd0>
    800038b0:	01100993          	li	s3,17
    800038b4:	01b99993          	slli	s3,s3,0x1b
    800038b8:	0734fc63          	bgeu	s1,s3,80003930 <freerange+0xd0>
    800038bc:	00058a13          	mv	s4,a1
    800038c0:	00002917          	auipc	s2,0x2
    800038c4:	fa090913          	addi	s2,s2,-96 # 80005860 <kmem>
    800038c8:	00002b37          	lui	s6,0x2
    800038cc:	0140006f          	j	800038e0 <freerange+0x80>
    800038d0:	000017b7          	lui	a5,0x1
    800038d4:	00f484b3          	add	s1,s1,a5
    800038d8:	0554ec63          	bltu	s1,s5,80003930 <freerange+0xd0>
    800038dc:	0534fa63          	bgeu	s1,s3,80003930 <freerange+0xd0>
    800038e0:	00001637          	lui	a2,0x1
    800038e4:	00100593          	li	a1,1
    800038e8:	00048513          	mv	a0,s1
    800038ec:	00000097          	auipc	ra,0x0
    800038f0:	50c080e7          	jalr	1292(ra) # 80003df8 <__memset>
    800038f4:	00093703          	ld	a4,0(s2)
    800038f8:	016487b3          	add	a5,s1,s6
    800038fc:	00e4b023          	sd	a4,0(s1)
    80003900:	00993023          	sd	s1,0(s2)
    80003904:	fcfa76e3          	bgeu	s4,a5,800038d0 <freerange+0x70>
    80003908:	03813083          	ld	ra,56(sp)
    8000390c:	03013403          	ld	s0,48(sp)
    80003910:	02813483          	ld	s1,40(sp)
    80003914:	02013903          	ld	s2,32(sp)
    80003918:	01813983          	ld	s3,24(sp)
    8000391c:	01013a03          	ld	s4,16(sp)
    80003920:	00813a83          	ld	s5,8(sp)
    80003924:	00013b03          	ld	s6,0(sp)
    80003928:	04010113          	addi	sp,sp,64
    8000392c:	00008067          	ret
    80003930:	00002517          	auipc	a0,0x2
    80003934:	8e850513          	addi	a0,a0,-1816 # 80005218 <digits+0x18>
    80003938:	fffff097          	auipc	ra,0xfffff
    8000393c:	3d4080e7          	jalr	980(ra) # 80002d0c <panic>

0000000080003940 <kfree>:
    80003940:	fe010113          	addi	sp,sp,-32
    80003944:	00813823          	sd	s0,16(sp)
    80003948:	00113c23          	sd	ra,24(sp)
    8000394c:	00913423          	sd	s1,8(sp)
    80003950:	02010413          	addi	s0,sp,32
    80003954:	03451793          	slli	a5,a0,0x34
    80003958:	04079c63          	bnez	a5,800039b0 <kfree+0x70>
    8000395c:	00003797          	auipc	a5,0x3
    80003960:	1a478793          	addi	a5,a5,420 # 80006b00 <end>
    80003964:	00050493          	mv	s1,a0
    80003968:	04f56463          	bltu	a0,a5,800039b0 <kfree+0x70>
    8000396c:	01100793          	li	a5,17
    80003970:	01b79793          	slli	a5,a5,0x1b
    80003974:	02f57e63          	bgeu	a0,a5,800039b0 <kfree+0x70>
    80003978:	00001637          	lui	a2,0x1
    8000397c:	00100593          	li	a1,1
    80003980:	00000097          	auipc	ra,0x0
    80003984:	478080e7          	jalr	1144(ra) # 80003df8 <__memset>
    80003988:	00002797          	auipc	a5,0x2
    8000398c:	ed878793          	addi	a5,a5,-296 # 80005860 <kmem>
    80003990:	0007b703          	ld	a4,0(a5)
    80003994:	01813083          	ld	ra,24(sp)
    80003998:	01013403          	ld	s0,16(sp)
    8000399c:	00e4b023          	sd	a4,0(s1)
    800039a0:	0097b023          	sd	s1,0(a5)
    800039a4:	00813483          	ld	s1,8(sp)
    800039a8:	02010113          	addi	sp,sp,32
    800039ac:	00008067          	ret
    800039b0:	00002517          	auipc	a0,0x2
    800039b4:	86850513          	addi	a0,a0,-1944 # 80005218 <digits+0x18>
    800039b8:	fffff097          	auipc	ra,0xfffff
    800039bc:	354080e7          	jalr	852(ra) # 80002d0c <panic>

00000000800039c0 <kalloc>:
    800039c0:	fe010113          	addi	sp,sp,-32
    800039c4:	00813823          	sd	s0,16(sp)
    800039c8:	00913423          	sd	s1,8(sp)
    800039cc:	00113c23          	sd	ra,24(sp)
    800039d0:	02010413          	addi	s0,sp,32
    800039d4:	00002797          	auipc	a5,0x2
    800039d8:	e8c78793          	addi	a5,a5,-372 # 80005860 <kmem>
    800039dc:	0007b483          	ld	s1,0(a5)
    800039e0:	02048063          	beqz	s1,80003a00 <kalloc+0x40>
    800039e4:	0004b703          	ld	a4,0(s1)
    800039e8:	00001637          	lui	a2,0x1
    800039ec:	00500593          	li	a1,5
    800039f0:	00048513          	mv	a0,s1
    800039f4:	00e7b023          	sd	a4,0(a5)
    800039f8:	00000097          	auipc	ra,0x0
    800039fc:	400080e7          	jalr	1024(ra) # 80003df8 <__memset>
    80003a00:	01813083          	ld	ra,24(sp)
    80003a04:	01013403          	ld	s0,16(sp)
    80003a08:	00048513          	mv	a0,s1
    80003a0c:	00813483          	ld	s1,8(sp)
    80003a10:	02010113          	addi	sp,sp,32
    80003a14:	00008067          	ret

0000000080003a18 <initlock>:
    80003a18:	ff010113          	addi	sp,sp,-16
    80003a1c:	00813423          	sd	s0,8(sp)
    80003a20:	01010413          	addi	s0,sp,16
    80003a24:	00813403          	ld	s0,8(sp)
    80003a28:	00b53423          	sd	a1,8(a0)
    80003a2c:	00052023          	sw	zero,0(a0)
    80003a30:	00053823          	sd	zero,16(a0)
    80003a34:	01010113          	addi	sp,sp,16
    80003a38:	00008067          	ret

0000000080003a3c <acquire>:
    80003a3c:	fe010113          	addi	sp,sp,-32
    80003a40:	00813823          	sd	s0,16(sp)
    80003a44:	00913423          	sd	s1,8(sp)
    80003a48:	00113c23          	sd	ra,24(sp)
    80003a4c:	01213023          	sd	s2,0(sp)
    80003a50:	02010413          	addi	s0,sp,32
    80003a54:	00050493          	mv	s1,a0
    80003a58:	10002973          	csrr	s2,sstatus
    80003a5c:	100027f3          	csrr	a5,sstatus
    80003a60:	ffd7f793          	andi	a5,a5,-3
    80003a64:	10079073          	csrw	sstatus,a5
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	8e0080e7          	jalr	-1824(ra) # 80002348 <mycpu>
    80003a70:	07852783          	lw	a5,120(a0)
    80003a74:	06078e63          	beqz	a5,80003af0 <acquire+0xb4>
    80003a78:	fffff097          	auipc	ra,0xfffff
    80003a7c:	8d0080e7          	jalr	-1840(ra) # 80002348 <mycpu>
    80003a80:	07852783          	lw	a5,120(a0)
    80003a84:	0004a703          	lw	a4,0(s1)
    80003a88:	0017879b          	addiw	a5,a5,1
    80003a8c:	06f52c23          	sw	a5,120(a0)
    80003a90:	04071063          	bnez	a4,80003ad0 <acquire+0x94>
    80003a94:	00100713          	li	a4,1
    80003a98:	00070793          	mv	a5,a4
    80003a9c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003aa0:	0007879b          	sext.w	a5,a5
    80003aa4:	fe079ae3          	bnez	a5,80003a98 <acquire+0x5c>
    80003aa8:	0ff0000f          	fence
    80003aac:	fffff097          	auipc	ra,0xfffff
    80003ab0:	89c080e7          	jalr	-1892(ra) # 80002348 <mycpu>
    80003ab4:	01813083          	ld	ra,24(sp)
    80003ab8:	01013403          	ld	s0,16(sp)
    80003abc:	00a4b823          	sd	a0,16(s1)
    80003ac0:	00013903          	ld	s2,0(sp)
    80003ac4:	00813483          	ld	s1,8(sp)
    80003ac8:	02010113          	addi	sp,sp,32
    80003acc:	00008067          	ret
    80003ad0:	0104b903          	ld	s2,16(s1)
    80003ad4:	fffff097          	auipc	ra,0xfffff
    80003ad8:	874080e7          	jalr	-1932(ra) # 80002348 <mycpu>
    80003adc:	faa91ce3          	bne	s2,a0,80003a94 <acquire+0x58>
    80003ae0:	00001517          	auipc	a0,0x1
    80003ae4:	74050513          	addi	a0,a0,1856 # 80005220 <digits+0x20>
    80003ae8:	fffff097          	auipc	ra,0xfffff
    80003aec:	224080e7          	jalr	548(ra) # 80002d0c <panic>
    80003af0:	00195913          	srli	s2,s2,0x1
    80003af4:	fffff097          	auipc	ra,0xfffff
    80003af8:	854080e7          	jalr	-1964(ra) # 80002348 <mycpu>
    80003afc:	00197913          	andi	s2,s2,1
    80003b00:	07252e23          	sw	s2,124(a0)
    80003b04:	f75ff06f          	j	80003a78 <acquire+0x3c>

0000000080003b08 <release>:
    80003b08:	fe010113          	addi	sp,sp,-32
    80003b0c:	00813823          	sd	s0,16(sp)
    80003b10:	00113c23          	sd	ra,24(sp)
    80003b14:	00913423          	sd	s1,8(sp)
    80003b18:	01213023          	sd	s2,0(sp)
    80003b1c:	02010413          	addi	s0,sp,32
    80003b20:	00052783          	lw	a5,0(a0)
    80003b24:	00079a63          	bnez	a5,80003b38 <release+0x30>
    80003b28:	00001517          	auipc	a0,0x1
    80003b2c:	70050513          	addi	a0,a0,1792 # 80005228 <digits+0x28>
    80003b30:	fffff097          	auipc	ra,0xfffff
    80003b34:	1dc080e7          	jalr	476(ra) # 80002d0c <panic>
    80003b38:	01053903          	ld	s2,16(a0)
    80003b3c:	00050493          	mv	s1,a0
    80003b40:	fffff097          	auipc	ra,0xfffff
    80003b44:	808080e7          	jalr	-2040(ra) # 80002348 <mycpu>
    80003b48:	fea910e3          	bne	s2,a0,80003b28 <release+0x20>
    80003b4c:	0004b823          	sd	zero,16(s1)
    80003b50:	0ff0000f          	fence
    80003b54:	0f50000f          	fence	iorw,ow
    80003b58:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	7ec080e7          	jalr	2028(ra) # 80002348 <mycpu>
    80003b64:	100027f3          	csrr	a5,sstatus
    80003b68:	0027f793          	andi	a5,a5,2
    80003b6c:	04079a63          	bnez	a5,80003bc0 <release+0xb8>
    80003b70:	07852783          	lw	a5,120(a0)
    80003b74:	02f05e63          	blez	a5,80003bb0 <release+0xa8>
    80003b78:	fff7871b          	addiw	a4,a5,-1
    80003b7c:	06e52c23          	sw	a4,120(a0)
    80003b80:	00071c63          	bnez	a4,80003b98 <release+0x90>
    80003b84:	07c52783          	lw	a5,124(a0)
    80003b88:	00078863          	beqz	a5,80003b98 <release+0x90>
    80003b8c:	100027f3          	csrr	a5,sstatus
    80003b90:	0027e793          	ori	a5,a5,2
    80003b94:	10079073          	csrw	sstatus,a5
    80003b98:	01813083          	ld	ra,24(sp)
    80003b9c:	01013403          	ld	s0,16(sp)
    80003ba0:	00813483          	ld	s1,8(sp)
    80003ba4:	00013903          	ld	s2,0(sp)
    80003ba8:	02010113          	addi	sp,sp,32
    80003bac:	00008067          	ret
    80003bb0:	00001517          	auipc	a0,0x1
    80003bb4:	69850513          	addi	a0,a0,1688 # 80005248 <digits+0x48>
    80003bb8:	fffff097          	auipc	ra,0xfffff
    80003bbc:	154080e7          	jalr	340(ra) # 80002d0c <panic>
    80003bc0:	00001517          	auipc	a0,0x1
    80003bc4:	67050513          	addi	a0,a0,1648 # 80005230 <digits+0x30>
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	144080e7          	jalr	324(ra) # 80002d0c <panic>

0000000080003bd0 <holding>:
    80003bd0:	00052783          	lw	a5,0(a0)
    80003bd4:	00079663          	bnez	a5,80003be0 <holding+0x10>
    80003bd8:	00000513          	li	a0,0
    80003bdc:	00008067          	ret
    80003be0:	fe010113          	addi	sp,sp,-32
    80003be4:	00813823          	sd	s0,16(sp)
    80003be8:	00913423          	sd	s1,8(sp)
    80003bec:	00113c23          	sd	ra,24(sp)
    80003bf0:	02010413          	addi	s0,sp,32
    80003bf4:	01053483          	ld	s1,16(a0)
    80003bf8:	ffffe097          	auipc	ra,0xffffe
    80003bfc:	750080e7          	jalr	1872(ra) # 80002348 <mycpu>
    80003c00:	01813083          	ld	ra,24(sp)
    80003c04:	01013403          	ld	s0,16(sp)
    80003c08:	40a48533          	sub	a0,s1,a0
    80003c0c:	00153513          	seqz	a0,a0
    80003c10:	00813483          	ld	s1,8(sp)
    80003c14:	02010113          	addi	sp,sp,32
    80003c18:	00008067          	ret

0000000080003c1c <push_off>:
    80003c1c:	fe010113          	addi	sp,sp,-32
    80003c20:	00813823          	sd	s0,16(sp)
    80003c24:	00113c23          	sd	ra,24(sp)
    80003c28:	00913423          	sd	s1,8(sp)
    80003c2c:	02010413          	addi	s0,sp,32
    80003c30:	100024f3          	csrr	s1,sstatus
    80003c34:	100027f3          	csrr	a5,sstatus
    80003c38:	ffd7f793          	andi	a5,a5,-3
    80003c3c:	10079073          	csrw	sstatus,a5
    80003c40:	ffffe097          	auipc	ra,0xffffe
    80003c44:	708080e7          	jalr	1800(ra) # 80002348 <mycpu>
    80003c48:	07852783          	lw	a5,120(a0)
    80003c4c:	02078663          	beqz	a5,80003c78 <push_off+0x5c>
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	6f8080e7          	jalr	1784(ra) # 80002348 <mycpu>
    80003c58:	07852783          	lw	a5,120(a0)
    80003c5c:	01813083          	ld	ra,24(sp)
    80003c60:	01013403          	ld	s0,16(sp)
    80003c64:	0017879b          	addiw	a5,a5,1
    80003c68:	06f52c23          	sw	a5,120(a0)
    80003c6c:	00813483          	ld	s1,8(sp)
    80003c70:	02010113          	addi	sp,sp,32
    80003c74:	00008067          	ret
    80003c78:	0014d493          	srli	s1,s1,0x1
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	6cc080e7          	jalr	1740(ra) # 80002348 <mycpu>
    80003c84:	0014f493          	andi	s1,s1,1
    80003c88:	06952e23          	sw	s1,124(a0)
    80003c8c:	fc5ff06f          	j	80003c50 <push_off+0x34>

0000000080003c90 <pop_off>:
    80003c90:	ff010113          	addi	sp,sp,-16
    80003c94:	00813023          	sd	s0,0(sp)
    80003c98:	00113423          	sd	ra,8(sp)
    80003c9c:	01010413          	addi	s0,sp,16
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	6a8080e7          	jalr	1704(ra) # 80002348 <mycpu>
    80003ca8:	100027f3          	csrr	a5,sstatus
    80003cac:	0027f793          	andi	a5,a5,2
    80003cb0:	04079663          	bnez	a5,80003cfc <pop_off+0x6c>
    80003cb4:	07852783          	lw	a5,120(a0)
    80003cb8:	02f05a63          	blez	a5,80003cec <pop_off+0x5c>
    80003cbc:	fff7871b          	addiw	a4,a5,-1
    80003cc0:	06e52c23          	sw	a4,120(a0)
    80003cc4:	00071c63          	bnez	a4,80003cdc <pop_off+0x4c>
    80003cc8:	07c52783          	lw	a5,124(a0)
    80003ccc:	00078863          	beqz	a5,80003cdc <pop_off+0x4c>
    80003cd0:	100027f3          	csrr	a5,sstatus
    80003cd4:	0027e793          	ori	a5,a5,2
    80003cd8:	10079073          	csrw	sstatus,a5
    80003cdc:	00813083          	ld	ra,8(sp)
    80003ce0:	00013403          	ld	s0,0(sp)
    80003ce4:	01010113          	addi	sp,sp,16
    80003ce8:	00008067          	ret
    80003cec:	00001517          	auipc	a0,0x1
    80003cf0:	55c50513          	addi	a0,a0,1372 # 80005248 <digits+0x48>
    80003cf4:	fffff097          	auipc	ra,0xfffff
    80003cf8:	018080e7          	jalr	24(ra) # 80002d0c <panic>
    80003cfc:	00001517          	auipc	a0,0x1
    80003d00:	53450513          	addi	a0,a0,1332 # 80005230 <digits+0x30>
    80003d04:	fffff097          	auipc	ra,0xfffff
    80003d08:	008080e7          	jalr	8(ra) # 80002d0c <panic>

0000000080003d0c <push_on>:
    80003d0c:	fe010113          	addi	sp,sp,-32
    80003d10:	00813823          	sd	s0,16(sp)
    80003d14:	00113c23          	sd	ra,24(sp)
    80003d18:	00913423          	sd	s1,8(sp)
    80003d1c:	02010413          	addi	s0,sp,32
    80003d20:	100024f3          	csrr	s1,sstatus
    80003d24:	100027f3          	csrr	a5,sstatus
    80003d28:	0027e793          	ori	a5,a5,2
    80003d2c:	10079073          	csrw	sstatus,a5
    80003d30:	ffffe097          	auipc	ra,0xffffe
    80003d34:	618080e7          	jalr	1560(ra) # 80002348 <mycpu>
    80003d38:	07852783          	lw	a5,120(a0)
    80003d3c:	02078663          	beqz	a5,80003d68 <push_on+0x5c>
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	608080e7          	jalr	1544(ra) # 80002348 <mycpu>
    80003d48:	07852783          	lw	a5,120(a0)
    80003d4c:	01813083          	ld	ra,24(sp)
    80003d50:	01013403          	ld	s0,16(sp)
    80003d54:	0017879b          	addiw	a5,a5,1
    80003d58:	06f52c23          	sw	a5,120(a0)
    80003d5c:	00813483          	ld	s1,8(sp)
    80003d60:	02010113          	addi	sp,sp,32
    80003d64:	00008067          	ret
    80003d68:	0014d493          	srli	s1,s1,0x1
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	5dc080e7          	jalr	1500(ra) # 80002348 <mycpu>
    80003d74:	0014f493          	andi	s1,s1,1
    80003d78:	06952e23          	sw	s1,124(a0)
    80003d7c:	fc5ff06f          	j	80003d40 <push_on+0x34>

0000000080003d80 <pop_on>:
    80003d80:	ff010113          	addi	sp,sp,-16
    80003d84:	00813023          	sd	s0,0(sp)
    80003d88:	00113423          	sd	ra,8(sp)
    80003d8c:	01010413          	addi	s0,sp,16
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	5b8080e7          	jalr	1464(ra) # 80002348 <mycpu>
    80003d98:	100027f3          	csrr	a5,sstatus
    80003d9c:	0027f793          	andi	a5,a5,2
    80003da0:	04078463          	beqz	a5,80003de8 <pop_on+0x68>
    80003da4:	07852783          	lw	a5,120(a0)
    80003da8:	02f05863          	blez	a5,80003dd8 <pop_on+0x58>
    80003dac:	fff7879b          	addiw	a5,a5,-1
    80003db0:	06f52c23          	sw	a5,120(a0)
    80003db4:	07853783          	ld	a5,120(a0)
    80003db8:	00079863          	bnez	a5,80003dc8 <pop_on+0x48>
    80003dbc:	100027f3          	csrr	a5,sstatus
    80003dc0:	ffd7f793          	andi	a5,a5,-3
    80003dc4:	10079073          	csrw	sstatus,a5
    80003dc8:	00813083          	ld	ra,8(sp)
    80003dcc:	00013403          	ld	s0,0(sp)
    80003dd0:	01010113          	addi	sp,sp,16
    80003dd4:	00008067          	ret
    80003dd8:	00001517          	auipc	a0,0x1
    80003ddc:	49850513          	addi	a0,a0,1176 # 80005270 <digits+0x70>
    80003de0:	fffff097          	auipc	ra,0xfffff
    80003de4:	f2c080e7          	jalr	-212(ra) # 80002d0c <panic>
    80003de8:	00001517          	auipc	a0,0x1
    80003dec:	46850513          	addi	a0,a0,1128 # 80005250 <digits+0x50>
    80003df0:	fffff097          	auipc	ra,0xfffff
    80003df4:	f1c080e7          	jalr	-228(ra) # 80002d0c <panic>

0000000080003df8 <__memset>:
    80003df8:	ff010113          	addi	sp,sp,-16
    80003dfc:	00813423          	sd	s0,8(sp)
    80003e00:	01010413          	addi	s0,sp,16
    80003e04:	1a060e63          	beqz	a2,80003fc0 <__memset+0x1c8>
    80003e08:	40a007b3          	neg	a5,a0
    80003e0c:	0077f793          	andi	a5,a5,7
    80003e10:	00778693          	addi	a3,a5,7
    80003e14:	00b00813          	li	a6,11
    80003e18:	0ff5f593          	andi	a1,a1,255
    80003e1c:	fff6071b          	addiw	a4,a2,-1
    80003e20:	1b06e663          	bltu	a3,a6,80003fcc <__memset+0x1d4>
    80003e24:	1cd76463          	bltu	a4,a3,80003fec <__memset+0x1f4>
    80003e28:	1a078e63          	beqz	a5,80003fe4 <__memset+0x1ec>
    80003e2c:	00b50023          	sb	a1,0(a0)
    80003e30:	00100713          	li	a4,1
    80003e34:	1ae78463          	beq	a5,a4,80003fdc <__memset+0x1e4>
    80003e38:	00b500a3          	sb	a1,1(a0)
    80003e3c:	00200713          	li	a4,2
    80003e40:	1ae78a63          	beq	a5,a4,80003ff4 <__memset+0x1fc>
    80003e44:	00b50123          	sb	a1,2(a0)
    80003e48:	00300713          	li	a4,3
    80003e4c:	18e78463          	beq	a5,a4,80003fd4 <__memset+0x1dc>
    80003e50:	00b501a3          	sb	a1,3(a0)
    80003e54:	00400713          	li	a4,4
    80003e58:	1ae78263          	beq	a5,a4,80003ffc <__memset+0x204>
    80003e5c:	00b50223          	sb	a1,4(a0)
    80003e60:	00500713          	li	a4,5
    80003e64:	1ae78063          	beq	a5,a4,80004004 <__memset+0x20c>
    80003e68:	00b502a3          	sb	a1,5(a0)
    80003e6c:	00700713          	li	a4,7
    80003e70:	18e79e63          	bne	a5,a4,8000400c <__memset+0x214>
    80003e74:	00b50323          	sb	a1,6(a0)
    80003e78:	00700e93          	li	t4,7
    80003e7c:	00859713          	slli	a4,a1,0x8
    80003e80:	00e5e733          	or	a4,a1,a4
    80003e84:	01059e13          	slli	t3,a1,0x10
    80003e88:	01c76e33          	or	t3,a4,t3
    80003e8c:	01859313          	slli	t1,a1,0x18
    80003e90:	006e6333          	or	t1,t3,t1
    80003e94:	02059893          	slli	a7,a1,0x20
    80003e98:	40f60e3b          	subw	t3,a2,a5
    80003e9c:	011368b3          	or	a7,t1,a7
    80003ea0:	02859813          	slli	a6,a1,0x28
    80003ea4:	0108e833          	or	a6,a7,a6
    80003ea8:	03059693          	slli	a3,a1,0x30
    80003eac:	003e589b          	srliw	a7,t3,0x3
    80003eb0:	00d866b3          	or	a3,a6,a3
    80003eb4:	03859713          	slli	a4,a1,0x38
    80003eb8:	00389813          	slli	a6,a7,0x3
    80003ebc:	00f507b3          	add	a5,a0,a5
    80003ec0:	00e6e733          	or	a4,a3,a4
    80003ec4:	000e089b          	sext.w	a7,t3
    80003ec8:	00f806b3          	add	a3,a6,a5
    80003ecc:	00e7b023          	sd	a4,0(a5)
    80003ed0:	00878793          	addi	a5,a5,8
    80003ed4:	fed79ce3          	bne	a5,a3,80003ecc <__memset+0xd4>
    80003ed8:	ff8e7793          	andi	a5,t3,-8
    80003edc:	0007871b          	sext.w	a4,a5
    80003ee0:	01d787bb          	addw	a5,a5,t4
    80003ee4:	0ce88e63          	beq	a7,a4,80003fc0 <__memset+0x1c8>
    80003ee8:	00f50733          	add	a4,a0,a5
    80003eec:	00b70023          	sb	a1,0(a4)
    80003ef0:	0017871b          	addiw	a4,a5,1
    80003ef4:	0cc77663          	bgeu	a4,a2,80003fc0 <__memset+0x1c8>
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00b70023          	sb	a1,0(a4)
    80003f00:	0027871b          	addiw	a4,a5,2
    80003f04:	0ac77e63          	bgeu	a4,a2,80003fc0 <__memset+0x1c8>
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00b70023          	sb	a1,0(a4)
    80003f10:	0037871b          	addiw	a4,a5,3
    80003f14:	0ac77663          	bgeu	a4,a2,80003fc0 <__memset+0x1c8>
    80003f18:	00e50733          	add	a4,a0,a4
    80003f1c:	00b70023          	sb	a1,0(a4)
    80003f20:	0047871b          	addiw	a4,a5,4
    80003f24:	08c77e63          	bgeu	a4,a2,80003fc0 <__memset+0x1c8>
    80003f28:	00e50733          	add	a4,a0,a4
    80003f2c:	00b70023          	sb	a1,0(a4)
    80003f30:	0057871b          	addiw	a4,a5,5
    80003f34:	08c77663          	bgeu	a4,a2,80003fc0 <__memset+0x1c8>
    80003f38:	00e50733          	add	a4,a0,a4
    80003f3c:	00b70023          	sb	a1,0(a4)
    80003f40:	0067871b          	addiw	a4,a5,6
    80003f44:	06c77e63          	bgeu	a4,a2,80003fc0 <__memset+0x1c8>
    80003f48:	00e50733          	add	a4,a0,a4
    80003f4c:	00b70023          	sb	a1,0(a4)
    80003f50:	0077871b          	addiw	a4,a5,7
    80003f54:	06c77663          	bgeu	a4,a2,80003fc0 <__memset+0x1c8>
    80003f58:	00e50733          	add	a4,a0,a4
    80003f5c:	00b70023          	sb	a1,0(a4)
    80003f60:	0087871b          	addiw	a4,a5,8
    80003f64:	04c77e63          	bgeu	a4,a2,80003fc0 <__memset+0x1c8>
    80003f68:	00e50733          	add	a4,a0,a4
    80003f6c:	00b70023          	sb	a1,0(a4)
    80003f70:	0097871b          	addiw	a4,a5,9
    80003f74:	04c77663          	bgeu	a4,a2,80003fc0 <__memset+0x1c8>
    80003f78:	00e50733          	add	a4,a0,a4
    80003f7c:	00b70023          	sb	a1,0(a4)
    80003f80:	00a7871b          	addiw	a4,a5,10
    80003f84:	02c77e63          	bgeu	a4,a2,80003fc0 <__memset+0x1c8>
    80003f88:	00e50733          	add	a4,a0,a4
    80003f8c:	00b70023          	sb	a1,0(a4)
    80003f90:	00b7871b          	addiw	a4,a5,11
    80003f94:	02c77663          	bgeu	a4,a2,80003fc0 <__memset+0x1c8>
    80003f98:	00e50733          	add	a4,a0,a4
    80003f9c:	00b70023          	sb	a1,0(a4)
    80003fa0:	00c7871b          	addiw	a4,a5,12
    80003fa4:	00c77e63          	bgeu	a4,a2,80003fc0 <__memset+0x1c8>
    80003fa8:	00e50733          	add	a4,a0,a4
    80003fac:	00b70023          	sb	a1,0(a4)
    80003fb0:	00d7879b          	addiw	a5,a5,13
    80003fb4:	00c7f663          	bgeu	a5,a2,80003fc0 <__memset+0x1c8>
    80003fb8:	00f507b3          	add	a5,a0,a5
    80003fbc:	00b78023          	sb	a1,0(a5)
    80003fc0:	00813403          	ld	s0,8(sp)
    80003fc4:	01010113          	addi	sp,sp,16
    80003fc8:	00008067          	ret
    80003fcc:	00b00693          	li	a3,11
    80003fd0:	e55ff06f          	j	80003e24 <__memset+0x2c>
    80003fd4:	00300e93          	li	t4,3
    80003fd8:	ea5ff06f          	j	80003e7c <__memset+0x84>
    80003fdc:	00100e93          	li	t4,1
    80003fe0:	e9dff06f          	j	80003e7c <__memset+0x84>
    80003fe4:	00000e93          	li	t4,0
    80003fe8:	e95ff06f          	j	80003e7c <__memset+0x84>
    80003fec:	00000793          	li	a5,0
    80003ff0:	ef9ff06f          	j	80003ee8 <__memset+0xf0>
    80003ff4:	00200e93          	li	t4,2
    80003ff8:	e85ff06f          	j	80003e7c <__memset+0x84>
    80003ffc:	00400e93          	li	t4,4
    80004000:	e7dff06f          	j	80003e7c <__memset+0x84>
    80004004:	00500e93          	li	t4,5
    80004008:	e75ff06f          	j	80003e7c <__memset+0x84>
    8000400c:	00600e93          	li	t4,6
    80004010:	e6dff06f          	j	80003e7c <__memset+0x84>

0000000080004014 <__memmove>:
    80004014:	ff010113          	addi	sp,sp,-16
    80004018:	00813423          	sd	s0,8(sp)
    8000401c:	01010413          	addi	s0,sp,16
    80004020:	0e060863          	beqz	a2,80004110 <__memmove+0xfc>
    80004024:	fff6069b          	addiw	a3,a2,-1
    80004028:	0006881b          	sext.w	a6,a3
    8000402c:	0ea5e863          	bltu	a1,a0,8000411c <__memmove+0x108>
    80004030:	00758713          	addi	a4,a1,7
    80004034:	00a5e7b3          	or	a5,a1,a0
    80004038:	40a70733          	sub	a4,a4,a0
    8000403c:	0077f793          	andi	a5,a5,7
    80004040:	00f73713          	sltiu	a4,a4,15
    80004044:	00174713          	xori	a4,a4,1
    80004048:	0017b793          	seqz	a5,a5
    8000404c:	00e7f7b3          	and	a5,a5,a4
    80004050:	10078863          	beqz	a5,80004160 <__memmove+0x14c>
    80004054:	00900793          	li	a5,9
    80004058:	1107f463          	bgeu	a5,a6,80004160 <__memmove+0x14c>
    8000405c:	0036581b          	srliw	a6,a2,0x3
    80004060:	fff8081b          	addiw	a6,a6,-1
    80004064:	02081813          	slli	a6,a6,0x20
    80004068:	01d85893          	srli	a7,a6,0x1d
    8000406c:	00858813          	addi	a6,a1,8
    80004070:	00058793          	mv	a5,a1
    80004074:	00050713          	mv	a4,a0
    80004078:	01088833          	add	a6,a7,a6
    8000407c:	0007b883          	ld	a7,0(a5)
    80004080:	00878793          	addi	a5,a5,8
    80004084:	00870713          	addi	a4,a4,8
    80004088:	ff173c23          	sd	a7,-8(a4)
    8000408c:	ff0798e3          	bne	a5,a6,8000407c <__memmove+0x68>
    80004090:	ff867713          	andi	a4,a2,-8
    80004094:	02071793          	slli	a5,a4,0x20
    80004098:	0207d793          	srli	a5,a5,0x20
    8000409c:	00f585b3          	add	a1,a1,a5
    800040a0:	40e686bb          	subw	a3,a3,a4
    800040a4:	00f507b3          	add	a5,a0,a5
    800040a8:	06e60463          	beq	a2,a4,80004110 <__memmove+0xfc>
    800040ac:	0005c703          	lbu	a4,0(a1)
    800040b0:	00e78023          	sb	a4,0(a5)
    800040b4:	04068e63          	beqz	a3,80004110 <__memmove+0xfc>
    800040b8:	0015c603          	lbu	a2,1(a1)
    800040bc:	00100713          	li	a4,1
    800040c0:	00c780a3          	sb	a2,1(a5)
    800040c4:	04e68663          	beq	a3,a4,80004110 <__memmove+0xfc>
    800040c8:	0025c603          	lbu	a2,2(a1)
    800040cc:	00200713          	li	a4,2
    800040d0:	00c78123          	sb	a2,2(a5)
    800040d4:	02e68e63          	beq	a3,a4,80004110 <__memmove+0xfc>
    800040d8:	0035c603          	lbu	a2,3(a1)
    800040dc:	00300713          	li	a4,3
    800040e0:	00c781a3          	sb	a2,3(a5)
    800040e4:	02e68663          	beq	a3,a4,80004110 <__memmove+0xfc>
    800040e8:	0045c603          	lbu	a2,4(a1)
    800040ec:	00400713          	li	a4,4
    800040f0:	00c78223          	sb	a2,4(a5)
    800040f4:	00e68e63          	beq	a3,a4,80004110 <__memmove+0xfc>
    800040f8:	0055c603          	lbu	a2,5(a1)
    800040fc:	00500713          	li	a4,5
    80004100:	00c782a3          	sb	a2,5(a5)
    80004104:	00e68663          	beq	a3,a4,80004110 <__memmove+0xfc>
    80004108:	0065c703          	lbu	a4,6(a1)
    8000410c:	00e78323          	sb	a4,6(a5)
    80004110:	00813403          	ld	s0,8(sp)
    80004114:	01010113          	addi	sp,sp,16
    80004118:	00008067          	ret
    8000411c:	02061713          	slli	a4,a2,0x20
    80004120:	02075713          	srli	a4,a4,0x20
    80004124:	00e587b3          	add	a5,a1,a4
    80004128:	f0f574e3          	bgeu	a0,a5,80004030 <__memmove+0x1c>
    8000412c:	02069613          	slli	a2,a3,0x20
    80004130:	02065613          	srli	a2,a2,0x20
    80004134:	fff64613          	not	a2,a2
    80004138:	00e50733          	add	a4,a0,a4
    8000413c:	00c78633          	add	a2,a5,a2
    80004140:	fff7c683          	lbu	a3,-1(a5)
    80004144:	fff78793          	addi	a5,a5,-1
    80004148:	fff70713          	addi	a4,a4,-1
    8000414c:	00d70023          	sb	a3,0(a4)
    80004150:	fec798e3          	bne	a5,a2,80004140 <__memmove+0x12c>
    80004154:	00813403          	ld	s0,8(sp)
    80004158:	01010113          	addi	sp,sp,16
    8000415c:	00008067          	ret
    80004160:	02069713          	slli	a4,a3,0x20
    80004164:	02075713          	srli	a4,a4,0x20
    80004168:	00170713          	addi	a4,a4,1
    8000416c:	00e50733          	add	a4,a0,a4
    80004170:	00050793          	mv	a5,a0
    80004174:	0005c683          	lbu	a3,0(a1)
    80004178:	00178793          	addi	a5,a5,1
    8000417c:	00158593          	addi	a1,a1,1
    80004180:	fed78fa3          	sb	a3,-1(a5)
    80004184:	fee798e3          	bne	a5,a4,80004174 <__memmove+0x160>
    80004188:	f89ff06f          	j	80004110 <__memmove+0xfc>

000000008000418c <__mem_free>:
    8000418c:	ff010113          	addi	sp,sp,-16
    80004190:	00813423          	sd	s0,8(sp)
    80004194:	01010413          	addi	s0,sp,16
    80004198:	00001597          	auipc	a1,0x1
    8000419c:	6d058593          	addi	a1,a1,1744 # 80005868 <freep>
    800041a0:	0005b783          	ld	a5,0(a1)
    800041a4:	ff050693          	addi	a3,a0,-16
    800041a8:	0007b703          	ld	a4,0(a5)
    800041ac:	00d7fc63          	bgeu	a5,a3,800041c4 <__mem_free+0x38>
    800041b0:	00e6ee63          	bltu	a3,a4,800041cc <__mem_free+0x40>
    800041b4:	00e7fc63          	bgeu	a5,a4,800041cc <__mem_free+0x40>
    800041b8:	00070793          	mv	a5,a4
    800041bc:	0007b703          	ld	a4,0(a5)
    800041c0:	fed7e8e3          	bltu	a5,a3,800041b0 <__mem_free+0x24>
    800041c4:	fee7eae3          	bltu	a5,a4,800041b8 <__mem_free+0x2c>
    800041c8:	fee6f8e3          	bgeu	a3,a4,800041b8 <__mem_free+0x2c>
    800041cc:	ff852803          	lw	a6,-8(a0)
    800041d0:	02081613          	slli	a2,a6,0x20
    800041d4:	01c65613          	srli	a2,a2,0x1c
    800041d8:	00c68633          	add	a2,a3,a2
    800041dc:	02c70a63          	beq	a4,a2,80004210 <__mem_free+0x84>
    800041e0:	fee53823          	sd	a4,-16(a0)
    800041e4:	0087a503          	lw	a0,8(a5)
    800041e8:	02051613          	slli	a2,a0,0x20
    800041ec:	01c65613          	srli	a2,a2,0x1c
    800041f0:	00c78633          	add	a2,a5,a2
    800041f4:	04c68263          	beq	a3,a2,80004238 <__mem_free+0xac>
    800041f8:	00813403          	ld	s0,8(sp)
    800041fc:	00d7b023          	sd	a3,0(a5)
    80004200:	00f5b023          	sd	a5,0(a1)
    80004204:	00000513          	li	a0,0
    80004208:	01010113          	addi	sp,sp,16
    8000420c:	00008067          	ret
    80004210:	00872603          	lw	a2,8(a4)
    80004214:	00073703          	ld	a4,0(a4)
    80004218:	0106083b          	addw	a6,a2,a6
    8000421c:	ff052c23          	sw	a6,-8(a0)
    80004220:	fee53823          	sd	a4,-16(a0)
    80004224:	0087a503          	lw	a0,8(a5)
    80004228:	02051613          	slli	a2,a0,0x20
    8000422c:	01c65613          	srli	a2,a2,0x1c
    80004230:	00c78633          	add	a2,a5,a2
    80004234:	fcc692e3          	bne	a3,a2,800041f8 <__mem_free+0x6c>
    80004238:	00813403          	ld	s0,8(sp)
    8000423c:	0105053b          	addw	a0,a0,a6
    80004240:	00a7a423          	sw	a0,8(a5)
    80004244:	00e7b023          	sd	a4,0(a5)
    80004248:	00f5b023          	sd	a5,0(a1)
    8000424c:	00000513          	li	a0,0
    80004250:	01010113          	addi	sp,sp,16
    80004254:	00008067          	ret

0000000080004258 <__mem_alloc>:
    80004258:	fc010113          	addi	sp,sp,-64
    8000425c:	02813823          	sd	s0,48(sp)
    80004260:	02913423          	sd	s1,40(sp)
    80004264:	03213023          	sd	s2,32(sp)
    80004268:	01513423          	sd	s5,8(sp)
    8000426c:	02113c23          	sd	ra,56(sp)
    80004270:	01313c23          	sd	s3,24(sp)
    80004274:	01413823          	sd	s4,16(sp)
    80004278:	01613023          	sd	s6,0(sp)
    8000427c:	04010413          	addi	s0,sp,64
    80004280:	00001a97          	auipc	s5,0x1
    80004284:	5e8a8a93          	addi	s5,s5,1512 # 80005868 <freep>
    80004288:	00f50913          	addi	s2,a0,15
    8000428c:	000ab683          	ld	a3,0(s5)
    80004290:	00495913          	srli	s2,s2,0x4
    80004294:	0019049b          	addiw	s1,s2,1
    80004298:	00048913          	mv	s2,s1
    8000429c:	0c068c63          	beqz	a3,80004374 <__mem_alloc+0x11c>
    800042a0:	0006b503          	ld	a0,0(a3)
    800042a4:	00852703          	lw	a4,8(a0)
    800042a8:	10977063          	bgeu	a4,s1,800043a8 <__mem_alloc+0x150>
    800042ac:	000017b7          	lui	a5,0x1
    800042b0:	0009099b          	sext.w	s3,s2
    800042b4:	0af4e863          	bltu	s1,a5,80004364 <__mem_alloc+0x10c>
    800042b8:	02099a13          	slli	s4,s3,0x20
    800042bc:	01ca5a13          	srli	s4,s4,0x1c
    800042c0:	fff00b13          	li	s6,-1
    800042c4:	0100006f          	j	800042d4 <__mem_alloc+0x7c>
    800042c8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800042cc:	00852703          	lw	a4,8(a0)
    800042d0:	04977463          	bgeu	a4,s1,80004318 <__mem_alloc+0xc0>
    800042d4:	00050793          	mv	a5,a0
    800042d8:	fea698e3          	bne	a3,a0,800042c8 <__mem_alloc+0x70>
    800042dc:	000a0513          	mv	a0,s4
    800042e0:	00000097          	auipc	ra,0x0
    800042e4:	1f0080e7          	jalr	496(ra) # 800044d0 <kvmincrease>
    800042e8:	00050793          	mv	a5,a0
    800042ec:	01050513          	addi	a0,a0,16
    800042f0:	07678e63          	beq	a5,s6,8000436c <__mem_alloc+0x114>
    800042f4:	0137a423          	sw	s3,8(a5)
    800042f8:	00000097          	auipc	ra,0x0
    800042fc:	e94080e7          	jalr	-364(ra) # 8000418c <__mem_free>
    80004300:	000ab783          	ld	a5,0(s5)
    80004304:	06078463          	beqz	a5,8000436c <__mem_alloc+0x114>
    80004308:	0007b503          	ld	a0,0(a5)
    8000430c:	00078693          	mv	a3,a5
    80004310:	00852703          	lw	a4,8(a0)
    80004314:	fc9760e3          	bltu	a4,s1,800042d4 <__mem_alloc+0x7c>
    80004318:	08e48263          	beq	s1,a4,8000439c <__mem_alloc+0x144>
    8000431c:	4127073b          	subw	a4,a4,s2
    80004320:	02071693          	slli	a3,a4,0x20
    80004324:	01c6d693          	srli	a3,a3,0x1c
    80004328:	00e52423          	sw	a4,8(a0)
    8000432c:	00d50533          	add	a0,a0,a3
    80004330:	01252423          	sw	s2,8(a0)
    80004334:	00fab023          	sd	a5,0(s5)
    80004338:	01050513          	addi	a0,a0,16
    8000433c:	03813083          	ld	ra,56(sp)
    80004340:	03013403          	ld	s0,48(sp)
    80004344:	02813483          	ld	s1,40(sp)
    80004348:	02013903          	ld	s2,32(sp)
    8000434c:	01813983          	ld	s3,24(sp)
    80004350:	01013a03          	ld	s4,16(sp)
    80004354:	00813a83          	ld	s5,8(sp)
    80004358:	00013b03          	ld	s6,0(sp)
    8000435c:	04010113          	addi	sp,sp,64
    80004360:	00008067          	ret
    80004364:	000019b7          	lui	s3,0x1
    80004368:	f51ff06f          	j	800042b8 <__mem_alloc+0x60>
    8000436c:	00000513          	li	a0,0
    80004370:	fcdff06f          	j	8000433c <__mem_alloc+0xe4>
    80004374:	00002797          	auipc	a5,0x2
    80004378:	77c78793          	addi	a5,a5,1916 # 80006af0 <base>
    8000437c:	00078513          	mv	a0,a5
    80004380:	00fab023          	sd	a5,0(s5)
    80004384:	00f7b023          	sd	a5,0(a5)
    80004388:	00000713          	li	a4,0
    8000438c:	00002797          	auipc	a5,0x2
    80004390:	7607a623          	sw	zero,1900(a5) # 80006af8 <base+0x8>
    80004394:	00050693          	mv	a3,a0
    80004398:	f11ff06f          	j	800042a8 <__mem_alloc+0x50>
    8000439c:	00053703          	ld	a4,0(a0)
    800043a0:	00e7b023          	sd	a4,0(a5)
    800043a4:	f91ff06f          	j	80004334 <__mem_alloc+0xdc>
    800043a8:	00068793          	mv	a5,a3
    800043ac:	f6dff06f          	j	80004318 <__mem_alloc+0xc0>

00000000800043b0 <__putc>:
    800043b0:	fe010113          	addi	sp,sp,-32
    800043b4:	00813823          	sd	s0,16(sp)
    800043b8:	00113c23          	sd	ra,24(sp)
    800043bc:	02010413          	addi	s0,sp,32
    800043c0:	00050793          	mv	a5,a0
    800043c4:	fef40593          	addi	a1,s0,-17
    800043c8:	00100613          	li	a2,1
    800043cc:	00000513          	li	a0,0
    800043d0:	fef407a3          	sb	a5,-17(s0)
    800043d4:	fffff097          	auipc	ra,0xfffff
    800043d8:	918080e7          	jalr	-1768(ra) # 80002cec <console_write>
    800043dc:	01813083          	ld	ra,24(sp)
    800043e0:	01013403          	ld	s0,16(sp)
    800043e4:	02010113          	addi	sp,sp,32
    800043e8:	00008067          	ret

00000000800043ec <__getc>:
    800043ec:	fe010113          	addi	sp,sp,-32
    800043f0:	00813823          	sd	s0,16(sp)
    800043f4:	00113c23          	sd	ra,24(sp)
    800043f8:	02010413          	addi	s0,sp,32
    800043fc:	fe840593          	addi	a1,s0,-24
    80004400:	00100613          	li	a2,1
    80004404:	00000513          	li	a0,0
    80004408:	fffff097          	auipc	ra,0xfffff
    8000440c:	8c4080e7          	jalr	-1852(ra) # 80002ccc <console_read>
    80004410:	fe844503          	lbu	a0,-24(s0)
    80004414:	01813083          	ld	ra,24(sp)
    80004418:	01013403          	ld	s0,16(sp)
    8000441c:	02010113          	addi	sp,sp,32
    80004420:	00008067          	ret

0000000080004424 <console_handler>:
    80004424:	fe010113          	addi	sp,sp,-32
    80004428:	00813823          	sd	s0,16(sp)
    8000442c:	00113c23          	sd	ra,24(sp)
    80004430:	00913423          	sd	s1,8(sp)
    80004434:	02010413          	addi	s0,sp,32
    80004438:	14202773          	csrr	a4,scause
    8000443c:	100027f3          	csrr	a5,sstatus
    80004440:	0027f793          	andi	a5,a5,2
    80004444:	06079e63          	bnez	a5,800044c0 <console_handler+0x9c>
    80004448:	00074c63          	bltz	a4,80004460 <console_handler+0x3c>
    8000444c:	01813083          	ld	ra,24(sp)
    80004450:	01013403          	ld	s0,16(sp)
    80004454:	00813483          	ld	s1,8(sp)
    80004458:	02010113          	addi	sp,sp,32
    8000445c:	00008067          	ret
    80004460:	0ff77713          	andi	a4,a4,255
    80004464:	00900793          	li	a5,9
    80004468:	fef712e3          	bne	a4,a5,8000444c <console_handler+0x28>
    8000446c:	ffffe097          	auipc	ra,0xffffe
    80004470:	4b8080e7          	jalr	1208(ra) # 80002924 <plic_claim>
    80004474:	00a00793          	li	a5,10
    80004478:	00050493          	mv	s1,a0
    8000447c:	02f50c63          	beq	a0,a5,800044b4 <console_handler+0x90>
    80004480:	fc0506e3          	beqz	a0,8000444c <console_handler+0x28>
    80004484:	00050593          	mv	a1,a0
    80004488:	00001517          	auipc	a0,0x1
    8000448c:	cf050513          	addi	a0,a0,-784 # 80005178 <_ZZ12printIntegermE6digits+0xe0>
    80004490:	fffff097          	auipc	ra,0xfffff
    80004494:	8d8080e7          	jalr	-1832(ra) # 80002d68 <__printf>
    80004498:	01013403          	ld	s0,16(sp)
    8000449c:	01813083          	ld	ra,24(sp)
    800044a0:	00048513          	mv	a0,s1
    800044a4:	00813483          	ld	s1,8(sp)
    800044a8:	02010113          	addi	sp,sp,32
    800044ac:	ffffe317          	auipc	t1,0xffffe
    800044b0:	4b030067          	jr	1200(t1) # 8000295c <plic_complete>
    800044b4:	fffff097          	auipc	ra,0xfffff
    800044b8:	1bc080e7          	jalr	444(ra) # 80003670 <uartintr>
    800044bc:	fddff06f          	j	80004498 <console_handler+0x74>
    800044c0:	00001517          	auipc	a0,0x1
    800044c4:	db850513          	addi	a0,a0,-584 # 80005278 <digits+0x78>
    800044c8:	fffff097          	auipc	ra,0xfffff
    800044cc:	844080e7          	jalr	-1980(ra) # 80002d0c <panic>

00000000800044d0 <kvmincrease>:
    800044d0:	fe010113          	addi	sp,sp,-32
    800044d4:	01213023          	sd	s2,0(sp)
    800044d8:	00001937          	lui	s2,0x1
    800044dc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800044e0:	00813823          	sd	s0,16(sp)
    800044e4:	00113c23          	sd	ra,24(sp)
    800044e8:	00913423          	sd	s1,8(sp)
    800044ec:	02010413          	addi	s0,sp,32
    800044f0:	01250933          	add	s2,a0,s2
    800044f4:	00c95913          	srli	s2,s2,0xc
    800044f8:	02090863          	beqz	s2,80004528 <kvmincrease+0x58>
    800044fc:	00000493          	li	s1,0
    80004500:	00148493          	addi	s1,s1,1
    80004504:	fffff097          	auipc	ra,0xfffff
    80004508:	4bc080e7          	jalr	1212(ra) # 800039c0 <kalloc>
    8000450c:	fe991ae3          	bne	s2,s1,80004500 <kvmincrease+0x30>
    80004510:	01813083          	ld	ra,24(sp)
    80004514:	01013403          	ld	s0,16(sp)
    80004518:	00813483          	ld	s1,8(sp)
    8000451c:	00013903          	ld	s2,0(sp)
    80004520:	02010113          	addi	sp,sp,32
    80004524:	00008067          	ret
    80004528:	01813083          	ld	ra,24(sp)
    8000452c:	01013403          	ld	s0,16(sp)
    80004530:	00813483          	ld	s1,8(sp)
    80004534:	00013903          	ld	s2,0(sp)
    80004538:	00000513          	li	a0,0
    8000453c:	02010113          	addi	sp,sp,32
    80004540:	00008067          	ret
	...

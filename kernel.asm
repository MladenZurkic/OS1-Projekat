
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	c5013103          	ld	sp,-944(sp) # 80005c50 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5c8020ef          	jal	ra,800025e4 <start>

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
    80001084:	0d8010ef          	jal	ra,8000215c <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011e0:	77d000ef          	jal	ra,8000215c <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012f0:	060010ef          	jal	ra,80002350 <_ZN5Riscv20handleTimerInterruptEv>

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
    80001400:	729000ef          	jal	ra,80002328 <_ZN5Riscv22handleConsoleInterruptEv>

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
    80001648:	61c7b783          	ld	a5,1564(a5) # 80005c60 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000164c:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001650:	01000513          	li	a0,16
    80001654:	00001097          	auipc	ra,0x1
    80001658:	99c080e7          	jalr	-1636(ra) # 80001ff0 <_Znwm>
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
    80001678:	5ec7b783          	ld	a5,1516(a5) # 80005c60 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800016c0:	04079e63          	bnez	a5,8000171c <_ZN11MySemaphore6signalEv+0x60>
        return -1;
    }
    if((int)++this->value <= 0) {
    800016c4:	00452783          	lw	a5,4(a0)
    800016c8:	0017879b          	addiw	a5,a5,1
    800016cc:	00f52223          	sw	a5,4(a0)
    800016d0:	0007879b          	sext.w	a5,a5
    800016d4:	00f05663          	blez	a5,800016e0 <_ZN11MySemaphore6signalEv+0x24>
        TCB* tcb;
        tcb = this->blocked.peekFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    }
    return 0;
    800016d8:	00000513          	li	a0,0
}
    800016dc:	00008067          	ret
int MySemaphore::signal() {
    800016e0:	ff010113          	addi	sp,sp,-16
    800016e4:	00113423          	sd	ra,8(sp)
    800016e8:	00813023          	sd	s0,0(sp)
    800016ec:	01010413          	addi	s0,sp,16
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    800016f0:	00853503          	ld	a0,8(a0)
    800016f4:	00050463          	beqz	a0,800016fc <_ZN11MySemaphore6signalEv+0x40>
        return head->data;
    800016f8:	00053503          	ld	a0,0(a0)
    800016fc:	020500a3          	sb	zero,33(a0)
        Scheduler::put(tcb);
    80001700:	00001097          	auipc	ra,0x1
    80001704:	d18080e7          	jalr	-744(ra) # 80002418 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80001708:	00000513          	li	a0,0
}
    8000170c:	00813083          	ld	ra,8(sp)
    80001710:	00013403          	ld	s0,0(sp)
    80001714:	01010113          	addi	sp,sp,16
    80001718:	00008067          	ret
        return -1;
    8000171c:	fff00513          	li	a0,-1
    80001720:	00008067          	ret

0000000080001724 <_ZN11MySemaphore15createSemaphoreEj>:

MySemaphore *MySemaphore::createSemaphore(unsigned int init) {
    80001724:	fe010113          	addi	sp,sp,-32
    80001728:	00113c23          	sd	ra,24(sp)
    8000172c:	00813823          	sd	s0,16(sp)
    80001730:	00913423          	sd	s1,8(sp)
    80001734:	02010413          	addi	s0,sp,32
    80001738:	00050493          	mv	s1,a0
    return new MySemaphore(init);
    8000173c:	01800513          	li	a0,24
    80001740:	00001097          	auipc	ra,0x1
    80001744:	8b0080e7          	jalr	-1872(ra) # 80001ff0 <_Znwm>
    List() : head(0), tail(0) {}
    80001748:	00053423          	sd	zero,8(a0)
    8000174c:	00053823          	sd	zero,16(a0)

class MySemaphore {
public:
    //check this -> explicit
    explicit MySemaphore(unsigned init = 1) {
        this->value = init;
    80001750:	00952223          	sw	s1,4(a0)
        this->closed = false;
    80001754:	00050023          	sb	zero,0(a0)
}
    80001758:	01813083          	ld	ra,24(sp)
    8000175c:	01013403          	ld	s0,16(sp)
    80001760:	00813483          	ld	s1,8(sp)
    80001764:	02010113          	addi	sp,sp,32
    80001768:	00008067          	ret

000000008000176c <_ZN11MySemaphore5closeEv>:

int MySemaphore::close() {
    if (closed) {
    8000176c:	00054783          	lbu	a5,0(a0)
    80001770:	06079663          	bnez	a5,800017dc <_ZN11MySemaphore5closeEv+0x70>
int MySemaphore::close() {
    80001774:	fe010113          	addi	sp,sp,-32
    80001778:	00113c23          	sd	ra,24(sp)
    8000177c:	00813823          	sd	s0,16(sp)
    80001780:	00913423          	sd	s1,8(sp)
    80001784:	01213023          	sd	s2,0(sp)
    80001788:	02010413          	addi	s0,sp,32
    8000178c:	00050493          	mv	s1,a0
        return -1;
    }
    closed = true;
    80001790:	00100793          	li	a5,1
    80001794:	00f50023          	sb	a5,0(a0)
    80001798:	0240006f          	j	800017bc <_ZN11MySemaphore5closeEv+0x50>
        if (!head) { tail = 0; }
    8000179c:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    800017a0:	00053903          	ld	s2,0(a0)
        delete elem;
    800017a4:	00001097          	auipc	ra,0x1
    800017a8:	89c080e7          	jalr	-1892(ra) # 80002040 <_ZdlPv>
    800017ac:	020900a3          	sb	zero,33(s2)

    while (this->blocked.peekFirst()) {
        TCB* tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    800017b0:	00090513          	mv	a0,s2
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	c64080e7          	jalr	-924(ra) # 80002418 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    800017bc:	0084b503          	ld	a0,8(s1)
    800017c0:	02050263          	beqz	a0,800017e4 <_ZN11MySemaphore5closeEv+0x78>
        return head->data;
    800017c4:	00053783          	ld	a5,0(a0)
    while (this->blocked.peekFirst()) {
    800017c8:	02078c63          	beqz	a5,80001800 <_ZN11MySemaphore5closeEv+0x94>
        head = head->next;
    800017cc:	00853783          	ld	a5,8(a0)
    800017d0:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    800017d4:	fc0796e3          	bnez	a5,800017a0 <_ZN11MySemaphore5closeEv+0x34>
    800017d8:	fc5ff06f          	j	8000179c <_ZN11MySemaphore5closeEv+0x30>
        return -1;
    800017dc:	fff00513          	li	a0,-1
    }
    return 0;
}
    800017e0:	00008067          	ret
    return 0;
    800017e4:	00000513          	li	a0,0
}
    800017e8:	01813083          	ld	ra,24(sp)
    800017ec:	01013403          	ld	s0,16(sp)
    800017f0:	00813483          	ld	s1,8(sp)
    800017f4:	00013903          	ld	s2,0(sp)
    800017f8:	02010113          	addi	sp,sp,32
    800017fc:	00008067          	ret
    return 0;
    80001800:	00000513          	li	a0,0
    80001804:	fe5ff06f          	j	800017e8 <_ZN11MySemaphore5closeEv+0x7c>

0000000080001808 <_ZL9fibonaccim>:
#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

static uint64 fibonacci(uint64 n)
{
    80001808:	fe010113          	addi	sp,sp,-32
    8000180c:	00113c23          	sd	ra,24(sp)
    80001810:	00813823          	sd	s0,16(sp)
    80001814:	00913423          	sd	s1,8(sp)
    80001818:	01213023          	sd	s2,0(sp)
    8000181c:	02010413          	addi	s0,sp,32
    80001820:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001824:	00100793          	li	a5,1
    80001828:	02a7f663          	bgeu	a5,a0,80001854 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) {
    8000182c:	00357793          	andi	a5,a0,3
    80001830:	02078e63          	beqz	a5,8000186c <_ZL9fibonaccim+0x64>
        //printString("fibonacci yield\n");
        thread_dispatch();
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001834:	fff48513          	addi	a0,s1,-1
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	fd0080e7          	jalr	-48(ra) # 80001808 <_ZL9fibonaccim>
    80001840:	00050913          	mv	s2,a0
    80001844:	ffe48513          	addi	a0,s1,-2
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	fc0080e7          	jalr	-64(ra) # 80001808 <_ZL9fibonaccim>
    80001850:	00a90533          	add	a0,s2,a0
}
    80001854:	01813083          	ld	ra,24(sp)
    80001858:	01013403          	ld	s0,16(sp)
    8000185c:	00813483          	ld	s1,8(sp)
    80001860:	00013903          	ld	s2,0(sp)
    80001864:	02010113          	addi	sp,sp,32
    80001868:	00008067          	ret
        thread_dispatch();
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	c8c080e7          	jalr	-884(ra) # 800014f8 <_Z15thread_dispatchv>
    80001874:	fc1ff06f          	j	80001834 <_ZL9fibonaccim+0x2c>

0000000080001878 <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    80001878:	fe010113          	addi	sp,sp,-32
    8000187c:	00113c23          	sd	ra,24(sp)
    80001880:	00813823          	sd	s0,16(sp)
    80001884:	00913423          	sd	s1,8(sp)
    80001888:	01213023          	sd	s2,0(sp)
    8000188c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001890:	00000493          	li	s1,0
    80001894:	0380006f          	j	800018cc <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    80001898:	00003517          	auipc	a0,0x3
    8000189c:	76850513          	addi	a0,a0,1896 # 80005000 <kvmincrease+0x610>
    800018a0:	00001097          	auipc	ra,0x1
    800018a4:	c18080e7          	jalr	-1000(ra) # 800024b8 <_Z11printStringPKc>
        printInteger(i);
    800018a8:	00048513          	mv	a0,s1
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	c7c080e7          	jalr	-900(ra) # 80002528 <_Z12printIntegerm>
        printString("\n");
    800018b4:	00004517          	auipc	a0,0x4
    800018b8:	8d450513          	addi	a0,a0,-1836 # 80005188 <kvmincrease+0x798>
    800018bc:	00001097          	auipc	ra,0x1
    800018c0:	bfc080e7          	jalr	-1028(ra) # 800024b8 <_Z11printStringPKc>
    for (; i < 3; i++)
    800018c4:	0014849b          	addiw	s1,s1,1
    800018c8:	0ff4f493          	andi	s1,s1,255
    800018cc:	00200793          	li	a5,2
    800018d0:	fc97f4e3          	bgeu	a5,s1,80001898 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    800018d4:	00003517          	auipc	a0,0x3
    800018d8:	73450513          	addi	a0,a0,1844 # 80005008 <kvmincrease+0x618>
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	bdc080e7          	jalr	-1060(ra) # 800024b8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800018e4:	00700313          	li	t1,7
    thread_dispatch();
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	c10080e7          	jalr	-1008(ra) # 800014f8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800018f0:	00030913          	mv	s2,t1

    printString("A: t1=");
    800018f4:	00003517          	auipc	a0,0x3
    800018f8:	72450513          	addi	a0,a0,1828 # 80005018 <kvmincrease+0x628>
    800018fc:	00001097          	auipc	ra,0x1
    80001900:	bbc080e7          	jalr	-1092(ra) # 800024b8 <_Z11printStringPKc>
    printInteger(t1);
    80001904:	00090513          	mv	a0,s2
    80001908:	00001097          	auipc	ra,0x1
    8000190c:	c20080e7          	jalr	-992(ra) # 80002528 <_Z12printIntegerm>
    printString("\n");
    80001910:	00004517          	auipc	a0,0x4
    80001914:	87850513          	addi	a0,a0,-1928 # 80005188 <kvmincrease+0x798>
    80001918:	00001097          	auipc	ra,0x1
    8000191c:	ba0080e7          	jalr	-1120(ra) # 800024b8 <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    80001920:	01400513          	li	a0,20
    80001924:	00000097          	auipc	ra,0x0
    80001928:	ee4080e7          	jalr	-284(ra) # 80001808 <_ZL9fibonaccim>
    8000192c:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001930:	00003517          	auipc	a0,0x3
    80001934:	6f050513          	addi	a0,a0,1776 # 80005020 <kvmincrease+0x630>
    80001938:	00001097          	auipc	ra,0x1
    8000193c:	b80080e7          	jalr	-1152(ra) # 800024b8 <_Z11printStringPKc>
    printInteger(result);
    80001940:	00090513          	mv	a0,s2
    80001944:	00001097          	auipc	ra,0x1
    80001948:	be4080e7          	jalr	-1052(ra) # 80002528 <_Z12printIntegerm>
    printString("\n");
    8000194c:	00004517          	auipc	a0,0x4
    80001950:	83c50513          	addi	a0,a0,-1988 # 80005188 <kvmincrease+0x798>
    80001954:	00001097          	auipc	ra,0x1
    80001958:	b64080e7          	jalr	-1180(ra) # 800024b8 <_Z11printStringPKc>
    8000195c:	0380006f          	j	80001994 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001960:	00003517          	auipc	a0,0x3
    80001964:	6a050513          	addi	a0,a0,1696 # 80005000 <kvmincrease+0x610>
    80001968:	00001097          	auipc	ra,0x1
    8000196c:	b50080e7          	jalr	-1200(ra) # 800024b8 <_Z11printStringPKc>
        printInteger(i);
    80001970:	00048513          	mv	a0,s1
    80001974:	00001097          	auipc	ra,0x1
    80001978:	bb4080e7          	jalr	-1100(ra) # 80002528 <_Z12printIntegerm>
        printString("\n");
    8000197c:	00004517          	auipc	a0,0x4
    80001980:	80c50513          	addi	a0,a0,-2036 # 80005188 <kvmincrease+0x798>
    80001984:	00001097          	auipc	ra,0x1
    80001988:	b34080e7          	jalr	-1228(ra) # 800024b8 <_Z11printStringPKc>
    for (; i < 6; i++)
    8000198c:	0014849b          	addiw	s1,s1,1
    80001990:	0ff4f493          	andi	s1,s1,255
    80001994:	00500793          	li	a5,5
    80001998:	fc97f4e3          	bgeu	a5,s1,80001960 <_Z11workerBodyAPv+0xe8>
    }

    thread_dispatch();
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	b5c080e7          	jalr	-1188(ra) # 800014f8 <_Z15thread_dispatchv>
}
    800019a4:	01813083          	ld	ra,24(sp)
    800019a8:	01013403          	ld	s0,16(sp)
    800019ac:	00813483          	ld	s1,8(sp)
    800019b0:	00013903          	ld	s2,0(sp)
    800019b4:	02010113          	addi	sp,sp,32
    800019b8:	00008067          	ret

00000000800019bc <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800019bc:	fe010113          	addi	sp,sp,-32
    800019c0:	00113c23          	sd	ra,24(sp)
    800019c4:	00813823          	sd	s0,16(sp)
    800019c8:	00913423          	sd	s1,8(sp)
    800019cc:	01213023          	sd	s2,0(sp)
    800019d0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    thread_join((thread_t) arg);
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	b44080e7          	jalr	-1212(ra) # 80001518 <_Z11thread_joinP3TCB>
    uint8 i = 10;
    800019dc:	00a00493          	li	s1,10
    800019e0:	0380006f          	j	80001a18 <_Z11workerBodyBPv+0x5c>
    for (; i < 13; i++)
    {
        printString("B: i=");
    800019e4:	00003517          	auipc	a0,0x3
    800019e8:	64c50513          	addi	a0,a0,1612 # 80005030 <kvmincrease+0x640>
    800019ec:	00001097          	auipc	ra,0x1
    800019f0:	acc080e7          	jalr	-1332(ra) # 800024b8 <_Z11printStringPKc>
        printInteger(i);
    800019f4:	00048513          	mv	a0,s1
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	b30080e7          	jalr	-1232(ra) # 80002528 <_Z12printIntegerm>
        printString("\n");
    80001a00:	00003517          	auipc	a0,0x3
    80001a04:	78850513          	addi	a0,a0,1928 # 80005188 <kvmincrease+0x798>
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	ab0080e7          	jalr	-1360(ra) # 800024b8 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a10:	0014849b          	addiw	s1,s1,1
    80001a14:	0ff4f493          	andi	s1,s1,255
    80001a18:	00c00793          	li	a5,12
    80001a1c:	fc97f4e3          	bgeu	a5,s1,800019e4 <_Z11workerBodyBPv+0x28>
    }

    printString("B: yield\n");
    80001a20:	00003517          	auipc	a0,0x3
    80001a24:	61850513          	addi	a0,a0,1560 # 80005038 <kvmincrease+0x648>
    80001a28:	00001097          	auipc	ra,0x1
    80001a2c:	a90080e7          	jalr	-1392(ra) # 800024b8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001a30:	00500313          	li	t1,5
    thread_dispatch();
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	ac4080e7          	jalr	-1340(ra) # 800014f8 <_Z15thread_dispatchv>


    uint64 result = fibonacci(23);
    80001a3c:	01700513          	li	a0,23
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	dc8080e7          	jalr	-568(ra) # 80001808 <_ZL9fibonaccim>
    80001a48:	00050913          	mv	s2,a0
    printString("B: fibonaci=");
    80001a4c:	00003517          	auipc	a0,0x3
    80001a50:	5fc50513          	addi	a0,a0,1532 # 80005048 <kvmincrease+0x658>
    80001a54:	00001097          	auipc	ra,0x1
    80001a58:	a64080e7          	jalr	-1436(ra) # 800024b8 <_Z11printStringPKc>
    printInteger(result);
    80001a5c:	00090513          	mv	a0,s2
    80001a60:	00001097          	auipc	ra,0x1
    80001a64:	ac8080e7          	jalr	-1336(ra) # 80002528 <_Z12printIntegerm>
    printString("\n");
    80001a68:	00003517          	auipc	a0,0x3
    80001a6c:	72050513          	addi	a0,a0,1824 # 80005188 <kvmincrease+0x798>
    80001a70:	00001097          	auipc	ra,0x1
    80001a74:	a48080e7          	jalr	-1464(ra) # 800024b8 <_Z11printStringPKc>
    80001a78:	0380006f          	j	80001ab0 <_Z11workerBodyBPv+0xf4>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001a7c:	00003517          	auipc	a0,0x3
    80001a80:	5b450513          	addi	a0,a0,1460 # 80005030 <kvmincrease+0x640>
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	a34080e7          	jalr	-1484(ra) # 800024b8 <_Z11printStringPKc>
        printInteger(i);
    80001a8c:	00048513          	mv	a0,s1
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	a98080e7          	jalr	-1384(ra) # 80002528 <_Z12printIntegerm>
        printString("\n");
    80001a98:	00003517          	auipc	a0,0x3
    80001a9c:	6f050513          	addi	a0,a0,1776 # 80005188 <kvmincrease+0x798>
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	a18080e7          	jalr	-1512(ra) # 800024b8 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001aa8:	0014849b          	addiw	s1,s1,1
    80001aac:	0ff4f493          	andi	s1,s1,255
    80001ab0:	00f00793          	li	a5,15
    80001ab4:	fc97f4e3          	bgeu	a5,s1,80001a7c <_Z11workerBodyBPv+0xc0>
    }

    thread_dispatch();
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	a40080e7          	jalr	-1472(ra) # 800014f8 <_Z15thread_dispatchv>
}
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	00013903          	ld	s2,0(sp)
    80001ad0:	02010113          	addi	sp,sp,32
    80001ad4:	00008067          	ret

0000000080001ad8 <_Z11workerBodyCPv>:

//test semafora
void workerBodyC(void* arg) {
    80001ad8:	fe010113          	addi	sp,sp,-32
    80001adc:	00113c23          	sd	ra,24(sp)
    80001ae0:	00813823          	sd	s0,16(sp)
    80001ae4:	00913423          	sd	s1,8(sp)
    80001ae8:	02010413          	addi	s0,sp,32
    80001aec:	00050493          	mv	s1,a0
    printString("C: poziva se dispatch1.\n");
    80001af0:	00003517          	auipc	a0,0x3
    80001af4:	56850513          	addi	a0,a0,1384 # 80005058 <kvmincrease+0x668>
    80001af8:	00001097          	auipc	ra,0x1
    80001afc:	9c0080e7          	jalr	-1600(ra) # 800024b8 <_Z11printStringPKc>
    thread_dispatch();
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	9f8080e7          	jalr	-1544(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch2..\n");
    80001b08:	00003517          	auipc	a0,0x3
    80001b0c:	57050513          	addi	a0,a0,1392 # 80005078 <kvmincrease+0x688>
    80001b10:	00001097          	auipc	ra,0x1
    80001b14:	9a8080e7          	jalr	-1624(ra) # 800024b8 <_Z11printStringPKc>
    thread_dispatch();
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	9e0080e7          	jalr	-1568(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch3...\n");
    80001b20:	00003517          	auipc	a0,0x3
    80001b24:	57850513          	addi	a0,a0,1400 # 80005098 <kvmincrease+0x6a8>
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	990080e7          	jalr	-1648(ra) # 800024b8 <_Z11printStringPKc>
    thread_dispatch();
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	9c8080e7          	jalr	-1592(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch4....\n");
    80001b38:	00003517          	auipc	a0,0x3
    80001b3c:	58050513          	addi	a0,a0,1408 # 800050b8 <kvmincrease+0x6c8>
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	978080e7          	jalr	-1672(ra) # 800024b8 <_Z11printStringPKc>
    printString("C: Signal semafora!\n");
    80001b48:	00003517          	auipc	a0,0x3
    80001b4c:	59050513          	addi	a0,a0,1424 # 800050d8 <kvmincrease+0x6e8>
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	968080e7          	jalr	-1688(ra) # 800024b8 <_Z11printStringPKc>
    sem_close((sem_t) arg);
    80001b58:	00048513          	mv	a0,s1
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	a10080e7          	jalr	-1520(ra) # 8000156c <_Z9sem_closeP11MySemaphore>
    thread_dispatch();
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	994080e7          	jalr	-1644(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: posle signala..\n");
    80001b6c:	00003517          	auipc	a0,0x3
    80001b70:	58450513          	addi	a0,a0,1412 # 800050f0 <kvmincrease+0x700>
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	944080e7          	jalr	-1724(ra) # 800024b8 <_Z11printStringPKc>
    printString("C: posle signala.2.\n");
    80001b7c:	00003517          	auipc	a0,0x3
    80001b80:	58c50513          	addi	a0,a0,1420 # 80005108 <kvmincrease+0x718>
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	934080e7          	jalr	-1740(ra) # 800024b8 <_Z11printStringPKc>
}
    80001b8c:	01813083          	ld	ra,24(sp)
    80001b90:	01013403          	ld	s0,16(sp)
    80001b94:	00813483          	ld	s1,8(sp)
    80001b98:	02010113          	addi	sp,sp,32
    80001b9c:	00008067          	ret

0000000080001ba0 <_Z11workerBodyDPv>:


void workerBodyD(void *arg) {
    80001ba0:	fe010113          	addi	sp,sp,-32
    80001ba4:	00113c23          	sd	ra,24(sp)
    80001ba8:	00813823          	sd	s0,16(sp)
    80001bac:	00913423          	sd	s1,8(sp)
    80001bb0:	02010413          	addi	s0,sp,32
    80001bb4:	00050493          	mv	s1,a0
    printString("D: Usli smo u D 1. put\n");
    80001bb8:	00003517          	auipc	a0,0x3
    80001bbc:	56850513          	addi	a0,a0,1384 # 80005120 <kvmincrease+0x730>
    80001bc0:	00001097          	auipc	ra,0x1
    80001bc4:	8f8080e7          	jalr	-1800(ra) # 800024b8 <_Z11printStringPKc>
    printString("D: Cekamo na semaforu..\n");
    80001bc8:	00003517          	auipc	a0,0x3
    80001bcc:	57050513          	addi	a0,a0,1392 # 80005138 <kvmincrease+0x748>
    80001bd0:	00001097          	auipc	ra,0x1
    80001bd4:	8e8080e7          	jalr	-1816(ra) # 800024b8 <_Z11printStringPKc>

    int returnValue = sem_wait((sem_t) arg);
    80001bd8:	00048513          	mv	a0,s1
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	9bc080e7          	jalr	-1604(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
    80001be4:	00050493          	mv	s1,a0

    printString("D: rezultat: ");
    80001be8:	00003517          	auipc	a0,0x3
    80001bec:	57050513          	addi	a0,a0,1392 # 80005158 <kvmincrease+0x768>
    80001bf0:	00001097          	auipc	ra,0x1
    80001bf4:	8c8080e7          	jalr	-1848(ra) # 800024b8 <_Z11printStringPKc>
    printInteger(returnValue);
    80001bf8:	00048513          	mv	a0,s1
    80001bfc:	00001097          	auipc	ra,0x1
    80001c00:	92c080e7          	jalr	-1748(ra) # 80002528 <_Z12printIntegerm>
    printString("\nD: izlazim automatski, pozdrav!\n");
    80001c04:	00003517          	auipc	a0,0x3
    80001c08:	56450513          	addi	a0,a0,1380 # 80005168 <kvmincrease+0x778>
    80001c0c:	00001097          	auipc	ra,0x1
    80001c10:	8ac080e7          	jalr	-1876(ra) # 800024b8 <_Z11printStringPKc>
    80001c14:	01813083          	ld	ra,24(sp)
    80001c18:	01013403          	ld	s0,16(sp)
    80001c1c:	00813483          	ld	s1,8(sp)
    80001c20:	02010113          	addi	sp,sp,32
    80001c24:	00008067          	ret

0000000080001c28 <main>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

int main()
{
    80001c28:	fa010113          	addi	sp,sp,-96
    80001c2c:	04113c23          	sd	ra,88(sp)
    80001c30:	04813823          	sd	s0,80(sp)
    80001c34:	04913423          	sd	s1,72(sp)
    80001c38:	05213023          	sd	s2,64(sp)
    80001c3c:	06010413          	addi	s0,sp,96
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr,nullptr);
    80001c40:	00000593          	li	a1,0
    80001c44:	00000513          	li	a0,0
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	200080e7          	jalr	512(ra) # 80001e48 <_ZN3TCB12createThreadEPFvPvES0_>
    80001c50:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001c54:	00004797          	auipc	a5,0x4
    80001c58:	00c7b783          	ld	a5,12(a5) # 80005c60 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c5c:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    80001c60:	00004797          	auipc	a5,0x4
    80001c64:	fe87b783          	ld	a5,-24(a5) # 80005c48 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c68:	0017e793          	ori	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001c6c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001c70:	00200793          	li	a5,2
    80001c74:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    int return1 = thread_create(&threads[1], workerBodyA, nullptr);
    80001c78:	00000613          	li	a2,0
    80001c7c:	00004597          	auipc	a1,0x4
    80001c80:	fdc5b583          	ld	a1,-36(a1) # 80005c58 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c84:	fc040513          	addi	a0,s0,-64
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	810080e7          	jalr	-2032(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001c90:	00050493          	mv	s1,a0
    printString("ThreadA created\n");
    80001c94:	00003517          	auipc	a0,0x3
    80001c98:	4fc50513          	addi	a0,a0,1276 # 80005190 <kvmincrease+0x7a0>
    80001c9c:	00001097          	auipc	ra,0x1
    80001ca0:	81c080e7          	jalr	-2020(ra) # 800024b8 <_Z11printStringPKc>
    printInteger(return1);
    80001ca4:	00048513          	mv	a0,s1
    80001ca8:	00001097          	auipc	ra,0x1
    80001cac:	880080e7          	jalr	-1920(ra) # 80002528 <_Z12printIntegerm>
    int return2 = thread_create(&threads[2], workerBodyB, threads[1]);
    80001cb0:	fc043603          	ld	a2,-64(s0)
    80001cb4:	00004597          	auipc	a1,0x4
    80001cb8:	fb45b583          	ld	a1,-76(a1) # 80005c68 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cbc:	fc840513          	addi	a0,s0,-56
    80001cc0:	fffff097          	auipc	ra,0xfffff
    80001cc4:	7d8080e7          	jalr	2008(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001cc8:	00050493          	mv	s1,a0
    printString("ThreadB created\n");
    80001ccc:	00003517          	auipc	a0,0x3
    80001cd0:	4dc50513          	addi	a0,a0,1244 # 800051a8 <kvmincrease+0x7b8>
    80001cd4:	00000097          	auipc	ra,0x0
    80001cd8:	7e4080e7          	jalr	2020(ra) # 800024b8 <_Z11printStringPKc>
    printInteger(return2);
    80001cdc:	00048513          	mv	a0,s1
    80001ce0:	00001097          	auipc	ra,0x1
    80001ce4:	848080e7          	jalr	-1976(ra) # 80002528 <_Z12printIntegerm>

    MySemaphore* semaphore[2];
    sem_open(&semaphore[0], 0);
    80001ce8:	00000593          	li	a1,0
    80001cec:	fa840513          	addi	a0,s0,-88
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	84c080e7          	jalr	-1972(ra) # 8000153c <_Z8sem_openPP11MySemaphorej>
    80001cf8:	00c0006f          	j	80001d04 <main+0xdc>


    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        thread_dispatch();
    80001cfc:	fffff097          	auipc	ra,0xfffff
    80001d00:	7fc080e7          	jalr	2044(ra) # 800014f8 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    80001d04:	fc043783          	ld	a5,-64(s0)
    bool isFinished() const { return finished; }
    80001d08:	0207c783          	lbu	a5,32(a5)
    80001d0c:	fe0788e3          	beqz	a5,80001cfc <main+0xd4>
             threads[2]->isFinished()))
    80001d10:	fc843783          	ld	a5,-56(s0)
    80001d14:	0207c783          	lbu	a5,32(a5)
    while (!(threads[1]->isFinished() &&
    80001d18:	fe0782e3          	beqz	a5,80001cfc <main+0xd4>
    }



    thread_create(&threads[3], workerBodyC, semaphore[0]);
    80001d1c:	fa843603          	ld	a2,-88(s0)
    80001d20:	00004597          	auipc	a1,0x4
    80001d24:	f205b583          	ld	a1,-224(a1) # 80005c40 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d28:	fd040493          	addi	s1,s0,-48
    80001d2c:	00048513          	mv	a0,s1
    80001d30:	fffff097          	auipc	ra,0xfffff
    80001d34:	768080e7          	jalr	1896(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[3], workerBodyD, semaphore[0]);
    80001d38:	fa843603          	ld	a2,-88(s0)
    80001d3c:	00004597          	auipc	a1,0x4
    80001d40:	f345b583          	ld	a1,-204(a1) # 80005c70 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001d44:	00048513          	mv	a0,s1
    80001d48:	fffff097          	auipc	ra,0xfffff
    80001d4c:	750080e7          	jalr	1872(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    //thread_dispatch();
    int returnValue = sem_wait(semaphore[0]);
    80001d50:	fa843503          	ld	a0,-88(s0)
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	844080e7          	jalr	-1980(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
    80001d5c:	00050493          	mv	s1,a0

    printString("Finished\nReturn value: ");
    80001d60:	00003517          	auipc	a0,0x3
    80001d64:	46050513          	addi	a0,a0,1120 # 800051c0 <kvmincrease+0x7d0>
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	750080e7          	jalr	1872(ra) # 800024b8 <_Z11printStringPKc>
    printInteger(returnValue);
    80001d70:	00048513          	mv	a0,s1
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	7b4080e7          	jalr	1972(ra) # 80002528 <_Z12printIntegerm>
    printString("\n");
    80001d7c:	00003517          	auipc	a0,0x3
    80001d80:	40c50513          	addi	a0,a0,1036 # 80005188 <kvmincrease+0x798>
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	734080e7          	jalr	1844(ra) # 800024b8 <_Z11printStringPKc>

    thread_dispatch();
    80001d8c:	fffff097          	auipc	ra,0xfffff
    80001d90:	76c080e7          	jalr	1900(ra) # 800014f8 <_Z15thread_dispatchv>
    for (auto &thread: threads) {
    80001d94:	fb840493          	addi	s1,s0,-72
    80001d98:	0140006f          	j	80001dac <main+0x184>
        delete thread;
    80001d9c:	00090513          	mv	a0,s2
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	2a0080e7          	jalr	672(ra) # 80002040 <_ZdlPv>
    for (auto &thread: threads) {
    80001da8:	00848493          	addi	s1,s1,8
    80001dac:	fe040793          	addi	a5,s0,-32
    80001db0:	02f48063          	beq	s1,a5,80001dd0 <main+0x1a8>
        delete thread;
    80001db4:	0004b903          	ld	s2,0(s1)
    80001db8:	fe0908e3          	beqz	s2,80001da8 <main+0x180>
    ~TCB() { delete[] stack; }
    80001dbc:	00893503          	ld	a0,8(s2)
    80001dc0:	fc050ee3          	beqz	a0,80001d9c <main+0x174>
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	2a4080e7          	jalr	676(ra) # 80002068 <_ZdaPv>
    80001dcc:	fd1ff06f          	j	80001d9c <main+0x174>
    }
    return 0;
}
    80001dd0:	00000513          	li	a0,0
    80001dd4:	05813083          	ld	ra,88(sp)
    80001dd8:	05013403          	ld	s0,80(sp)
    80001ddc:	04813483          	ld	s1,72(sp)
    80001de0:	04013903          	ld	s2,64(sp)
    80001de4:	06010113          	addi	sp,sp,96
    80001de8:	00008067          	ret

0000000080001dec <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001dec:	fe010113          	addi	sp,sp,-32
    80001df0:	00113c23          	sd	ra,24(sp)
    80001df4:	00813823          	sd	s0,16(sp)
    80001df8:	00913423          	sd	s1,8(sp)
    80001dfc:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	33c080e7          	jalr	828(ra) # 8000213c <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001e08:	00004497          	auipc	s1,0x4
    80001e0c:	eb848493          	addi	s1,s1,-328 # 80005cc0 <_ZN3TCB7runningE>
    80001e10:	0004b783          	ld	a5,0(s1)
    80001e14:	0007b703          	ld	a4,0(a5)
    80001e18:	0287b503          	ld	a0,40(a5)
    80001e1c:	000700e7          	jalr	a4
    running->setFinished(true);
    80001e20:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001e24:	00100713          	li	a4,1
    80001e28:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	6cc080e7          	jalr	1740(ra) # 800014f8 <_Z15thread_dispatchv>

}
    80001e34:	01813083          	ld	ra,24(sp)
    80001e38:	01013403          	ld	s0,16(sp)
    80001e3c:	00813483          	ld	s1,8(sp)
    80001e40:	02010113          	addi	sp,sp,32
    80001e44:	00008067          	ret

0000000080001e48 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80001e48:	fd010113          	addi	sp,sp,-48
    80001e4c:	02113423          	sd	ra,40(sp)
    80001e50:	02813023          	sd	s0,32(sp)
    80001e54:	00913c23          	sd	s1,24(sp)
    80001e58:	01213823          	sd	s2,16(sp)
    80001e5c:	01313423          	sd	s3,8(sp)
    80001e60:	03010413          	addi	s0,sp,48
    80001e64:	00050913          	mv	s2,a0
    80001e68:	00058993          	mv	s3,a1
    return new TCB(body, arg);
    80001e6c:	03000513          	li	a0,48
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	180080e7          	jalr	384(ra) # 80001ff0 <_Znwm>
    80001e78:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            arg(arg)
    80001e7c:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001e80:	00090a63          	beqz	s2,80001e94 <_ZN3TCB12createThreadEPFvPvES0_+0x4c>
    80001e84:	00002537          	lui	a0,0x2
    80001e88:	00000097          	auipc	ra,0x0
    80001e8c:	190080e7          	jalr	400(ra) # 80002018 <_Znam>
    80001e90:	0080006f          	j	80001e98 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001e94:	00000513          	li	a0,0
            arg(arg)
    80001e98:	00a4b423          	sd	a0,8(s1)
    80001e9c:	00000797          	auipc	a5,0x0
    80001ea0:	f5078793          	addi	a5,a5,-176 # 80001dec <_ZN3TCB13threadWrapperEv>
    80001ea4:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001ea8:	02050863          	beqz	a0,80001ed8 <_ZN3TCB12createThreadEPFvPvES0_+0x90>
    80001eac:	000027b7          	lui	a5,0x2
    80001eb0:	00f507b3          	add	a5,a0,a5
            arg(arg)
    80001eb4:	00f4bc23          	sd	a5,24(s1)
    80001eb8:	02048023          	sb	zero,32(s1)
    80001ebc:	020480a3          	sb	zero,33(s1)
    80001ec0:	0334b423          	sd	s3,40(s1)

    {
        if (body != nullptr) { Scheduler::put(this); }
    80001ec4:	02090c63          	beqz	s2,80001efc <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
    80001ec8:	00048513          	mv	a0,s1
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	54c080e7          	jalr	1356(ra) # 80002418 <_ZN9Scheduler3putEP3TCB>
    80001ed4:	0280006f          	j	80001efc <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001ed8:	00000793          	li	a5,0
    80001edc:	fd9ff06f          	j	80001eb4 <_ZN3TCB12createThreadEPFvPvES0_+0x6c>
    80001ee0:	00050913          	mv	s2,a0
    80001ee4:	00048513          	mv	a0,s1
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	158080e7          	jalr	344(ra) # 80002040 <_ZdlPv>
    80001ef0:	00090513          	mv	a0,s2
    80001ef4:	00005097          	auipc	ra,0x5
    80001ef8:	eb4080e7          	jalr	-332(ra) # 80006da8 <_Unwind_Resume>
}
    80001efc:	00048513          	mv	a0,s1
    80001f00:	02813083          	ld	ra,40(sp)
    80001f04:	02013403          	ld	s0,32(sp)
    80001f08:	01813483          	ld	s1,24(sp)
    80001f0c:	01013903          	ld	s2,16(sp)
    80001f10:	00813983          	ld	s3,8(sp)
    80001f14:	03010113          	addi	sp,sp,48
    80001f18:	00008067          	ret

0000000080001f1c <_ZN3TCB5yieldEv>:
{
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00813423          	sd	s0,8(sp)
    80001f24:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    80001f28:	01300793          	li	a5,19
    80001f2c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001f30:	00000073          	ecall
}
    80001f34:	00813403          	ld	s0,8(sp)
    80001f38:	01010113          	addi	sp,sp,16
    80001f3c:	00008067          	ret

0000000080001f40 <_ZN3TCB8dispatchEv>:
{
    80001f40:	fe010113          	addi	sp,sp,-32
    80001f44:	00113c23          	sd	ra,24(sp)
    80001f48:	00813823          	sd	s0,16(sp)
    80001f4c:	00913423          	sd	s1,8(sp)
    80001f50:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001f54:	00004497          	auipc	s1,0x4
    80001f58:	d6c4b483          	ld	s1,-660(s1) # 80005cc0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001f5c:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001f60:	00079663          	bnez	a5,80001f6c <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return this->blocked; }
    80001f64:	0214c783          	lbu	a5,33(s1)
    80001f68:	02078c63          	beqz	a5,80001fa0 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	444080e7          	jalr	1092(ra) # 800023b0 <_ZN9Scheduler3getEv>
    80001f74:	00004797          	auipc	a5,0x4
    80001f78:	d4a7b623          	sd	a0,-692(a5) # 80005cc0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001f7c:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001f80:	01048513          	addi	a0,s1,16
    80001f84:	fffff097          	auipc	ra,0xfffff
    80001f88:	18c080e7          	jalr	396(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001f8c:	01813083          	ld	ra,24(sp)
    80001f90:	01013403          	ld	s0,16(sp)
    80001f94:	00813483          	ld	s1,8(sp)
    80001f98:	02010113          	addi	sp,sp,32
    80001f9c:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001fa0:	00048513          	mv	a0,s1
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	474080e7          	jalr	1140(ra) # 80002418 <_ZN9Scheduler3putEP3TCB>
    80001fac:	fc1ff06f          	j	80001f6c <_ZN3TCB8dispatchEv+0x2c>

0000000080001fb0 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB* handle) {
    80001fb0:	fe010113          	addi	sp,sp,-32
    80001fb4:	00113c23          	sd	ra,24(sp)
    80001fb8:	00813823          	sd	s0,16(sp)
    80001fbc:	00913423          	sd	s1,8(sp)
    80001fc0:	02010413          	addi	s0,sp,32
    80001fc4:	00050493          	mv	s1,a0
    bool isFinished() const { return finished; }
    80001fc8:	0204c783          	lbu	a5,32(s1)
    while(!handle->isFinished()) {
    80001fcc:	00079863          	bnez	a5,80001fdc <_ZN3TCB4joinEPS_+0x2c>
        TCB::dispatch();
    80001fd0:	00000097          	auipc	ra,0x0
    80001fd4:	f70080e7          	jalr	-144(ra) # 80001f40 <_ZN3TCB8dispatchEv>
    while(!handle->isFinished()) {
    80001fd8:	ff1ff06f          	j	80001fc8 <_ZN3TCB4joinEPS_+0x18>
    }
    80001fdc:	01813083          	ld	ra,24(sp)
    80001fe0:	01013403          	ld	s0,16(sp)
    80001fe4:	00813483          	ld	s1,8(sp)
    80001fe8:	02010113          	addi	sp,sp,32
    80001fec:	00008067          	ret

0000000080001ff0 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00113423          	sd	ra,8(sp)
    80001ff8:	00813023          	sd	s0,0(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002000:	00002097          	auipc	ra,0x2
    80002004:	778080e7          	jalr	1912(ra) # 80004778 <__mem_alloc>
}
    80002008:	00813083          	ld	ra,8(sp)
    8000200c:	00013403          	ld	s0,0(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <_Znam>:

void *operator new[](size_t n)
{
    80002018:	ff010113          	addi	sp,sp,-16
    8000201c:	00113423          	sd	ra,8(sp)
    80002020:	00813023          	sd	s0,0(sp)
    80002024:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002028:	00002097          	auipc	ra,0x2
    8000202c:	750080e7          	jalr	1872(ra) # 80004778 <__mem_alloc>
}
    80002030:	00813083          	ld	ra,8(sp)
    80002034:	00013403          	ld	s0,0(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002040:	ff010113          	addi	sp,sp,-16
    80002044:	00113423          	sd	ra,8(sp)
    80002048:	00813023          	sd	s0,0(sp)
    8000204c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80002050:	00002097          	auipc	ra,0x2
    80002054:	65c080e7          	jalr	1628(ra) # 800046ac <__mem_free>
}
    80002058:	00813083          	ld	ra,8(sp)
    8000205c:	00013403          	ld	s0,0(sp)
    80002060:	01010113          	addi	sp,sp,16
    80002064:	00008067          	ret

0000000080002068 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00113423          	sd	ra,8(sp)
    80002070:	00813023          	sd	s0,0(sp)
    80002074:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80002078:	00002097          	auipc	ra,0x2
    8000207c:	634080e7          	jalr	1588(ra) # 800046ac <__mem_free>
}
    80002080:	00813083          	ld	ra,8(sp)
    80002084:	00013403          	ld	s0,0(sp)
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret

0000000080002090 <_ZN9SemaphoreC1Ej>:

#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"


Semaphore::Semaphore(unsigned int init) {
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00113423          	sd	ra,8(sp)
    80002098:	00813023          	sd	s0,0(sp)
    8000209c:	01010413          	addi	s0,sp,16
    sem_open(&this->myHandle, init);
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	49c080e7          	jalr	1180(ra) # 8000153c <_Z8sem_openPP11MySemaphorej>
}
    800020a8:	00813083          	ld	ra,8(sp)
    800020ac:	00013403          	ld	s0,0(sp)
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <_ZN9SemaphoreD1Ev>:

Semaphore::~Semaphore() {
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00113423          	sd	ra,8(sp)
    800020c0:	00813023          	sd	s0,0(sp)
    800020c4:	01010413          	addi	s0,sp,16
    sem_close(this->myHandle);
    800020c8:	00053503          	ld	a0,0(a0)
    800020cc:	fffff097          	auipc	ra,0xfffff
    800020d0:	4a0080e7          	jalr	1184(ra) # 8000156c <_Z9sem_closeP11MySemaphore>
}
    800020d4:	00813083          	ld	ra,8(sp)
    800020d8:	00013403          	ld	s0,0(sp)
    800020dc:	01010113          	addi	sp,sp,16
    800020e0:	00008067          	ret

00000000800020e4 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800020e4:	ff010113          	addi	sp,sp,-16
    800020e8:	00113423          	sd	ra,8(sp)
    800020ec:	00813023          	sd	s0,0(sp)
    800020f0:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    800020f4:	00053503          	ld	a0,0(a0)
    800020f8:	fffff097          	auipc	ra,0xfffff
    800020fc:	4a0080e7          	jalr	1184(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
}
    80002100:	00813083          	ld	ra,8(sp)
    80002104:	00013403          	ld	s0,0(sp)
    80002108:	01010113          	addi	sp,sp,16
    8000210c:	00008067          	ret

0000000080002110 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00113423          	sd	ra,8(sp)
    80002118:	00813023          	sd	s0,0(sp)
    8000211c:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    80002120:	00053503          	ld	a0,0(a0)
    80002124:	fffff097          	auipc	ra,0xfffff
    80002128:	4a0080e7          	jalr	1184(ra) # 800015c4 <_Z10sem_signalP11MySemaphore>
}
    8000212c:	00813083          	ld	ra,8(sp)
    80002130:	00013403          	ld	s0,0(sp)
    80002134:	01010113          	addi	sp,sp,16
    80002138:	00008067          	ret

000000008000213c <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00813423          	sd	s0,8(sp)
    80002144:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002148:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    8000214c:	10200073          	sret
}
    80002150:	00813403          	ld	s0,8(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void*);

void Riscv::handleSupervisorTrap()
{
    8000215c:	fb010113          	addi	sp,sp,-80
    80002160:	04113423          	sd	ra,72(sp)
    80002164:	04813023          	sd	s0,64(sp)
    80002168:	02913c23          	sd	s1,56(sp)
    8000216c:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002170:	142027f3          	csrr	a5,scause
    80002174:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80002178:	fc043783          	ld	a5,-64(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    8000217c:	ff878793          	addi	a5,a5,-8
    80002180:	00100713          	li	a4,1
    80002184:	00f77c63          	bgeu	a4,a5,8000219c <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    else
    {
        // unexpected trap cause
        // Ovde se ulazi ako se desi neki interrupt tabele
    }
}
    80002188:	04813083          	ld	ra,72(sp)
    8000218c:	04013403          	ld	s0,64(sp)
    80002190:	03813483          	ld	s1,56(sp)
    80002194:	05010113          	addi	sp,sp,80
    80002198:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000219c:	141027f3          	csrr	a5,sepc
    800021a0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800021a4:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    800021a8:	00478793          	addi	a5,a5,4
    800021ac:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021b0:	100027f3          	csrr	a5,sstatus
    800021b4:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800021b8:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    800021bc:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800021c0:	00050793          	mv	a5,a0
    800021c4:	fcf43423          	sd	a5,-56(s0)
    return a0;
    800021c8:	fc843783          	ld	a5,-56(s0)
        switch (codeOperation) {
    800021cc:	fef78793          	addi	a5,a5,-17
    800021d0:	03200713          	li	a4,50
    800021d4:	06f76c63          	bltu	a4,a5,8000224c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    800021d8:	00279793          	slli	a5,a5,0x2
    800021dc:	00003717          	auipc	a4,0x3
    800021e0:	ffc70713          	addi	a4,a4,-4 # 800051d8 <kvmincrease+0x7e8>
    800021e4:	00e787b3          	add	a5,a5,a4
    800021e8:	0007a783          	lw	a5,0(a5)
    800021ec:	00e787b3          	add	a5,a5,a4
    800021f0:	00078067          	jr	a5
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    800021f4:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    800021f8:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    800021fc:	00068593          	mv	a1,a3
                *tcb = TCB::createThread(body, arg);
    80002200:	00000097          	auipc	ra,0x0
    80002204:	c48080e7          	jalr	-952(ra) # 80001e48 <_ZN3TCB12createThreadEPFvPvES0_>
    80002208:	00a4b023          	sd	a0,0(s1)
                if(*tcb != nullptr) {
    8000220c:	00050863          	beqz	a0,8000221c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                    __asm__ volatile ("li t0, 0");
    80002210:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002214:	04542823          	sw	t0,80(s0)
    80002218:	0340006f          	j	8000224c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    __asm__ volatile ("li t0, -1");
    8000221c:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002220:	04542823          	sw	t0,80(s0)
    80002224:	0280006f          	j	8000224c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                TCB::running->setFinished(true);
    80002228:	00004797          	auipc	a5,0x4
    8000222c:	a387b783          	ld	a5,-1480(a5) # 80005c60 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002230:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002234:	00100713          	li	a4,1
    80002238:	02e78023          	sb	a4,32(a5)
                TCB::dispatch();
    8000223c:	00000097          	auipc	ra,0x0
    80002240:	d04080e7          	jalr	-764(ra) # 80001f40 <_ZN3TCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    80002244:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    80002248:	04542823          	sw	t0,80(s0)
        w_sstatus(sstatus);
    8000224c:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002250:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002254:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002258:	14179073          	csrw	sepc,a5
}
    8000225c:	f2dff06f          	j	80002188 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                TCB::dispatch();
    80002260:	00000097          	auipc	ra,0x0
    80002264:	ce0080e7          	jalr	-800(ra) # 80001f40 <_ZN3TCB8dispatchEv>
                break;
    80002268:	fe5ff06f          	j	8000224c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    8000226c:	00058513          	mv	a0,a1
                TCB::join(handle);
    80002270:	00000097          	auipc	ra,0x0
    80002274:	d40080e7          	jalr	-704(ra) # 80001fb0 <_ZN3TCB4joinEPS_>
                break;
    80002278:	fd5ff06f          	j	8000224c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a2" : "=r" (init));
    8000227c:	00060513          	mv	a0,a2
    80002280:	0005051b          	sext.w	a0,a0
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80002284:	00058493          	mv	s1,a1
                *semHandle = MySemaphore::createSemaphore(init);
    80002288:	fffff097          	auipc	ra,0xfffff
    8000228c:	49c080e7          	jalr	1180(ra) # 80001724 <_ZN11MySemaphore15createSemaphoreEj>
    80002290:	00a4b023          	sd	a0,0(s1)
                if(*semHandle != nullptr) {
    80002294:	00050863          	beqz	a0,800022a4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    __asm__ volatile ("li t0, 0");
    80002298:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    8000229c:	04542823          	sw	t0,80(s0)
    800022a0:	fadff06f          	j	8000224c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    __asm__ volatile ("li t0, -1");
    800022a4:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    800022a8:	04542823          	sw	t0,80(s0)
    800022ac:	fa1ff06f          	j	8000224c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800022b0:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    800022b4:	00050c63          	beqz	a0,800022cc <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    returnValue = semHandlePtr->close();
    800022b8:	fffff097          	auipc	ra,0xfffff
    800022bc:	4b4080e7          	jalr	1204(ra) # 8000176c <_ZN11MySemaphore5closeEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800022c0:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800022c4:	04542823          	sw	t0,80(s0)
                break;
    800022c8:	f85ff06f          	j	8000224c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                else returnValue = -2;
    800022cc:	ffe00513          	li	a0,-2
    800022d0:	ff1ff06f          	j	800022c0 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800022d4:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    800022d8:	00050c63          	beqz	a0,800022f0 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                    returnValue = semHandlePtr->wait();
    800022dc:	fffff097          	auipc	ra,0xfffff
    800022e0:	314080e7          	jalr	788(ra) # 800015f0 <_ZN11MySemaphore4waitEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800022e4:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800022e8:	04542823          	sw	t0,80(s0)
                break;
    800022ec:	f61ff06f          	j	8000224c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                else returnValue = -2;
    800022f0:	ffe00513          	li	a0,-2
    800022f4:	ff1ff06f          	j	800022e4 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800022f8:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr)
    800022fc:	00050c63          	beqz	a0,80002314 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    returnValue = semHandlePtr->signal();
    80002300:	fffff097          	auipc	ra,0xfffff
    80002304:	3bc080e7          	jalr	956(ra) # 800016bc <_ZN11MySemaphore6signalEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002308:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    8000230c:	04542823          	sw	t0,80(s0)
                break;
    80002310:	f3dff06f          	j	8000224c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    returnValue = -2;
    80002314:	ffe00513          	li	a0,-2
    80002318:	ff1ff06f          	j	80002308 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                TCB::dispatch();
    8000231c:	00000097          	auipc	ra,0x0
    80002320:	c24080e7          	jalr	-988(ra) # 80001f40 <_ZN3TCB8dispatchEv>
                break;
    80002324:	f29ff06f          	j	8000224c <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

0000000080002328 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00113423          	sd	ra,8(sp)
    80002330:	00813023          	sd	s0,0(sp)
    80002334:	01010413          	addi	s0,sp,16
    console_handler();
    80002338:	00002097          	auipc	ra,0x2
    8000233c:	60c080e7          	jalr	1548(ra) # 80004944 <console_handler>
}
    80002340:	00813083          	ld	ra,8(sp)
    80002344:	00013403          	ld	s0,0(sp)
    80002348:	01010113          	addi	sp,sp,16
    8000234c:	00008067          	ret

0000000080002350 <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    80002350:	ff010113          	addi	sp,sp,-16
    80002354:	00813423          	sd	s0,8(sp)
    80002358:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000235c:	00200793          	li	a5,2
    80002360:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
    80002364:	00813403          	ld	s0,8(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret

0000000080002370 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00813423          	sd	s0,8(sp)
    80002378:	01010413          	addi	s0,sp,16
    8000237c:	00100793          	li	a5,1
    80002380:	00f50863          	beq	a0,a5,80002390 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002384:	00813403          	ld	s0,8(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret
    80002390:	000107b7          	lui	a5,0x10
    80002394:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002398:	fef596e3          	bne	a1,a5,80002384 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    8000239c:	00004797          	auipc	a5,0x4
    800023a0:	92c78793          	addi	a5,a5,-1748 # 80005cc8 <_ZN9Scheduler16readyThreadQueueE>
    800023a4:	0007b023          	sd	zero,0(a5)
    800023a8:	0007b423          	sd	zero,8(a5)
    800023ac:	fd9ff06f          	j	80002384 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800023b0 <_ZN9Scheduler3getEv>:
{
    800023b0:	fe010113          	addi	sp,sp,-32
    800023b4:	00113c23          	sd	ra,24(sp)
    800023b8:	00813823          	sd	s0,16(sp)
    800023bc:	00913423          	sd	s1,8(sp)
    800023c0:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800023c4:	00004517          	auipc	a0,0x4
    800023c8:	90453503          	ld	a0,-1788(a0) # 80005cc8 <_ZN9Scheduler16readyThreadQueueE>
    800023cc:	04050263          	beqz	a0,80002410 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    800023d0:	00853783          	ld	a5,8(a0)
    800023d4:	00004717          	auipc	a4,0x4
    800023d8:	8ef73a23          	sd	a5,-1804(a4) # 80005cc8 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800023dc:	02078463          	beqz	a5,80002404 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    800023e0:	00053483          	ld	s1,0(a0)
        delete elem;
    800023e4:	00000097          	auipc	ra,0x0
    800023e8:	c5c080e7          	jalr	-932(ra) # 80002040 <_ZdlPv>
}
    800023ec:	00048513          	mv	a0,s1
    800023f0:	01813083          	ld	ra,24(sp)
    800023f4:	01013403          	ld	s0,16(sp)
    800023f8:	00813483          	ld	s1,8(sp)
    800023fc:	02010113          	addi	sp,sp,32
    80002400:	00008067          	ret
        if (!head) { tail = 0; }
    80002404:	00004797          	auipc	a5,0x4
    80002408:	8c07b623          	sd	zero,-1844(a5) # 80005cd0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000240c:	fd5ff06f          	j	800023e0 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002410:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002414:	fd9ff06f          	j	800023ec <_ZN9Scheduler3getEv+0x3c>

0000000080002418 <_ZN9Scheduler3putEP3TCB>:
{
    80002418:	fe010113          	addi	sp,sp,-32
    8000241c:	00113c23          	sd	ra,24(sp)
    80002420:	00813823          	sd	s0,16(sp)
    80002424:	00913423          	sd	s1,8(sp)
    80002428:	02010413          	addi	s0,sp,32
    8000242c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002430:	01000513          	li	a0,16
    80002434:	00000097          	auipc	ra,0x0
    80002438:	bbc080e7          	jalr	-1092(ra) # 80001ff0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000243c:	00953023          	sd	s1,0(a0)
    80002440:	00053423          	sd	zero,8(a0)
        if (tail)
    80002444:	00004797          	auipc	a5,0x4
    80002448:	88c7b783          	ld	a5,-1908(a5) # 80005cd0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000244c:	02078263          	beqz	a5,80002470 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002450:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002454:	00004797          	auipc	a5,0x4
    80002458:	86a7be23          	sd	a0,-1924(a5) # 80005cd0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000245c:	01813083          	ld	ra,24(sp)
    80002460:	01013403          	ld	s0,16(sp)
    80002464:	00813483          	ld	s1,8(sp)
    80002468:	02010113          	addi	sp,sp,32
    8000246c:	00008067          	ret
            head = tail = elem;
    80002470:	00004797          	auipc	a5,0x4
    80002474:	85878793          	addi	a5,a5,-1960 # 80005cc8 <_ZN9Scheduler16readyThreadQueueE>
    80002478:	00a7b423          	sd	a0,8(a5)
    8000247c:	00a7b023          	sd	a0,0(a5)
    80002480:	fddff06f          	j	8000245c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002484 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002484:	ff010113          	addi	sp,sp,-16
    80002488:	00113423          	sd	ra,8(sp)
    8000248c:	00813023          	sd	s0,0(sp)
    80002490:	01010413          	addi	s0,sp,16
    80002494:	000105b7          	lui	a1,0x10
    80002498:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000249c:	00100513          	li	a0,1
    800024a0:	00000097          	auipc	ra,0x0
    800024a4:	ed0080e7          	jalr	-304(ra) # 80002370 <_Z41__static_initialization_and_destruction_0ii>
    800024a8:	00813083          	ld	ra,8(sp)
    800024ac:	00013403          	ld	s0,0(sp)
    800024b0:	01010113          	addi	sp,sp,16
    800024b4:	00008067          	ret

00000000800024b8 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800024b8:	fd010113          	addi	sp,sp,-48
    800024bc:	02113423          	sd	ra,40(sp)
    800024c0:	02813023          	sd	s0,32(sp)
    800024c4:	00913c23          	sd	s1,24(sp)
    800024c8:	01213823          	sd	s2,16(sp)
    800024cc:	03010413          	addi	s0,sp,48
    800024d0:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800024d4:	100027f3          	csrr	a5,sstatus
    800024d8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800024dc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800024e0:	00200793          	li	a5,2
    800024e4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    800024e8:	0004c503          	lbu	a0,0(s1)
    800024ec:	00050a63          	beqz	a0,80002500 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800024f0:	00002097          	auipc	ra,0x2
    800024f4:	3e0080e7          	jalr	992(ra) # 800048d0 <__putc>
        string++;
    800024f8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800024fc:	fedff06f          	j	800024e8 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002500:	0009091b          	sext.w	s2,s2
    80002504:	00297913          	andi	s2,s2,2
    80002508:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000250c:	10092073          	csrs	sstatus,s2
}
    80002510:	02813083          	ld	ra,40(sp)
    80002514:	02013403          	ld	s0,32(sp)
    80002518:	01813483          	ld	s1,24(sp)
    8000251c:	01013903          	ld	s2,16(sp)
    80002520:	03010113          	addi	sp,sp,48
    80002524:	00008067          	ret

0000000080002528 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002528:	fc010113          	addi	sp,sp,-64
    8000252c:	02113c23          	sd	ra,56(sp)
    80002530:	02813823          	sd	s0,48(sp)
    80002534:	02913423          	sd	s1,40(sp)
    80002538:	03213023          	sd	s2,32(sp)
    8000253c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002540:	100027f3          	csrr	a5,sstatus
    80002544:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002548:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000254c:	00200793          	li	a5,2
    80002550:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002554:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002558:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    8000255c:	00a00613          	li	a2,10
    80002560:	02c5773b          	remuw	a4,a0,a2
    80002564:	02071693          	slli	a3,a4,0x20
    80002568:	0206d693          	srli	a3,a3,0x20
    8000256c:	00003717          	auipc	a4,0x3
    80002570:	d3c70713          	addi	a4,a4,-708 # 800052a8 <_ZZ12printIntegermE6digits>
    80002574:	00d70733          	add	a4,a4,a3
    80002578:	00074703          	lbu	a4,0(a4)
    8000257c:	fe040693          	addi	a3,s0,-32
    80002580:	009687b3          	add	a5,a3,s1
    80002584:	0014849b          	addiw	s1,s1,1
    80002588:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    8000258c:	0005071b          	sext.w	a4,a0
    80002590:	02c5553b          	divuw	a0,a0,a2
    80002594:	00900793          	li	a5,9
    80002598:	fce7e2e3          	bltu	a5,a4,8000255c <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    8000259c:	fff4849b          	addiw	s1,s1,-1
    800025a0:	0004ce63          	bltz	s1,800025bc <_Z12printIntegerm+0x94>
    800025a4:	fe040793          	addi	a5,s0,-32
    800025a8:	009787b3          	add	a5,a5,s1
    800025ac:	ff07c503          	lbu	a0,-16(a5)
    800025b0:	00002097          	auipc	ra,0x2
    800025b4:	320080e7          	jalr	800(ra) # 800048d0 <__putc>
    800025b8:	fe5ff06f          	j	8000259c <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800025bc:	0009091b          	sext.w	s2,s2
    800025c0:	00297913          	andi	s2,s2,2
    800025c4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800025c8:	10092073          	csrs	sstatus,s2
    800025cc:	03813083          	ld	ra,56(sp)
    800025d0:	03013403          	ld	s0,48(sp)
    800025d4:	02813483          	ld	s1,40(sp)
    800025d8:	02013903          	ld	s2,32(sp)
    800025dc:	04010113          	addi	sp,sp,64
    800025e0:	00008067          	ret

00000000800025e4 <start>:
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00813423          	sd	s0,8(sp)
    800025ec:	01010413          	addi	s0,sp,16
    800025f0:	300027f3          	csrr	a5,mstatus
    800025f4:	ffffe737          	lui	a4,0xffffe
    800025f8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff78af>
    800025fc:	00e7f7b3          	and	a5,a5,a4
    80002600:	00001737          	lui	a4,0x1
    80002604:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002608:	00e7e7b3          	or	a5,a5,a4
    8000260c:	30079073          	csrw	mstatus,a5
    80002610:	00000797          	auipc	a5,0x0
    80002614:	16078793          	addi	a5,a5,352 # 80002770 <system_main>
    80002618:	34179073          	csrw	mepc,a5
    8000261c:	00000793          	li	a5,0
    80002620:	18079073          	csrw	satp,a5
    80002624:	000107b7          	lui	a5,0x10
    80002628:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000262c:	30279073          	csrw	medeleg,a5
    80002630:	30379073          	csrw	mideleg,a5
    80002634:	104027f3          	csrr	a5,sie
    80002638:	2227e793          	ori	a5,a5,546
    8000263c:	10479073          	csrw	sie,a5
    80002640:	fff00793          	li	a5,-1
    80002644:	00a7d793          	srli	a5,a5,0xa
    80002648:	3b079073          	csrw	pmpaddr0,a5
    8000264c:	00f00793          	li	a5,15
    80002650:	3a079073          	csrw	pmpcfg0,a5
    80002654:	f14027f3          	csrr	a5,mhartid
    80002658:	0200c737          	lui	a4,0x200c
    8000265c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002660:	0007869b          	sext.w	a3,a5
    80002664:	00269713          	slli	a4,a3,0x2
    80002668:	000f4637          	lui	a2,0xf4
    8000266c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002670:	00d70733          	add	a4,a4,a3
    80002674:	0037979b          	slliw	a5,a5,0x3
    80002678:	020046b7          	lui	a3,0x2004
    8000267c:	00d787b3          	add	a5,a5,a3
    80002680:	00c585b3          	add	a1,a1,a2
    80002684:	00371693          	slli	a3,a4,0x3
    80002688:	00003717          	auipc	a4,0x3
    8000268c:	65870713          	addi	a4,a4,1624 # 80005ce0 <timer_scratch>
    80002690:	00b7b023          	sd	a1,0(a5)
    80002694:	00d70733          	add	a4,a4,a3
    80002698:	00f73c23          	sd	a5,24(a4)
    8000269c:	02c73023          	sd	a2,32(a4)
    800026a0:	34071073          	csrw	mscratch,a4
    800026a4:	00000797          	auipc	a5,0x0
    800026a8:	6ec78793          	addi	a5,a5,1772 # 80002d90 <timervec>
    800026ac:	30579073          	csrw	mtvec,a5
    800026b0:	300027f3          	csrr	a5,mstatus
    800026b4:	0087e793          	ori	a5,a5,8
    800026b8:	30079073          	csrw	mstatus,a5
    800026bc:	304027f3          	csrr	a5,mie
    800026c0:	0807e793          	ori	a5,a5,128
    800026c4:	30479073          	csrw	mie,a5
    800026c8:	f14027f3          	csrr	a5,mhartid
    800026cc:	0007879b          	sext.w	a5,a5
    800026d0:	00078213          	mv	tp,a5
    800026d4:	30200073          	mret
    800026d8:	00813403          	ld	s0,8(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <timerinit>:
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00813423          	sd	s0,8(sp)
    800026ec:	01010413          	addi	s0,sp,16
    800026f0:	f14027f3          	csrr	a5,mhartid
    800026f4:	0200c737          	lui	a4,0x200c
    800026f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800026fc:	0007869b          	sext.w	a3,a5
    80002700:	00269713          	slli	a4,a3,0x2
    80002704:	000f4637          	lui	a2,0xf4
    80002708:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000270c:	00d70733          	add	a4,a4,a3
    80002710:	0037979b          	slliw	a5,a5,0x3
    80002714:	020046b7          	lui	a3,0x2004
    80002718:	00d787b3          	add	a5,a5,a3
    8000271c:	00c585b3          	add	a1,a1,a2
    80002720:	00371693          	slli	a3,a4,0x3
    80002724:	00003717          	auipc	a4,0x3
    80002728:	5bc70713          	addi	a4,a4,1468 # 80005ce0 <timer_scratch>
    8000272c:	00b7b023          	sd	a1,0(a5)
    80002730:	00d70733          	add	a4,a4,a3
    80002734:	00f73c23          	sd	a5,24(a4)
    80002738:	02c73023          	sd	a2,32(a4)
    8000273c:	34071073          	csrw	mscratch,a4
    80002740:	00000797          	auipc	a5,0x0
    80002744:	65078793          	addi	a5,a5,1616 # 80002d90 <timervec>
    80002748:	30579073          	csrw	mtvec,a5
    8000274c:	300027f3          	csrr	a5,mstatus
    80002750:	0087e793          	ori	a5,a5,8
    80002754:	30079073          	csrw	mstatus,a5
    80002758:	304027f3          	csrr	a5,mie
    8000275c:	0807e793          	ori	a5,a5,128
    80002760:	30479073          	csrw	mie,a5
    80002764:	00813403          	ld	s0,8(sp)
    80002768:	01010113          	addi	sp,sp,16
    8000276c:	00008067          	ret

0000000080002770 <system_main>:
    80002770:	fe010113          	addi	sp,sp,-32
    80002774:	00813823          	sd	s0,16(sp)
    80002778:	00913423          	sd	s1,8(sp)
    8000277c:	00113c23          	sd	ra,24(sp)
    80002780:	02010413          	addi	s0,sp,32
    80002784:	00000097          	auipc	ra,0x0
    80002788:	0c4080e7          	jalr	196(ra) # 80002848 <cpuid>
    8000278c:	00003497          	auipc	s1,0x3
    80002790:	50448493          	addi	s1,s1,1284 # 80005c90 <started>
    80002794:	02050263          	beqz	a0,800027b8 <system_main+0x48>
    80002798:	0004a783          	lw	a5,0(s1)
    8000279c:	0007879b          	sext.w	a5,a5
    800027a0:	fe078ce3          	beqz	a5,80002798 <system_main+0x28>
    800027a4:	0ff0000f          	fence
    800027a8:	00003517          	auipc	a0,0x3
    800027ac:	b4050513          	addi	a0,a0,-1216 # 800052e8 <_ZZ12printIntegermE6digits+0x40>
    800027b0:	00001097          	auipc	ra,0x1
    800027b4:	a7c080e7          	jalr	-1412(ra) # 8000322c <panic>
    800027b8:	00001097          	auipc	ra,0x1
    800027bc:	9d0080e7          	jalr	-1584(ra) # 80003188 <consoleinit>
    800027c0:	00001097          	auipc	ra,0x1
    800027c4:	15c080e7          	jalr	348(ra) # 8000391c <printfinit>
    800027c8:	00003517          	auipc	a0,0x3
    800027cc:	9c050513          	addi	a0,a0,-1600 # 80005188 <kvmincrease+0x798>
    800027d0:	00001097          	auipc	ra,0x1
    800027d4:	ab8080e7          	jalr	-1352(ra) # 80003288 <__printf>
    800027d8:	00003517          	auipc	a0,0x3
    800027dc:	ae050513          	addi	a0,a0,-1312 # 800052b8 <_ZZ12printIntegermE6digits+0x10>
    800027e0:	00001097          	auipc	ra,0x1
    800027e4:	aa8080e7          	jalr	-1368(ra) # 80003288 <__printf>
    800027e8:	00003517          	auipc	a0,0x3
    800027ec:	9a050513          	addi	a0,a0,-1632 # 80005188 <kvmincrease+0x798>
    800027f0:	00001097          	auipc	ra,0x1
    800027f4:	a98080e7          	jalr	-1384(ra) # 80003288 <__printf>
    800027f8:	00001097          	auipc	ra,0x1
    800027fc:	4b0080e7          	jalr	1200(ra) # 80003ca8 <kinit>
    80002800:	00000097          	auipc	ra,0x0
    80002804:	148080e7          	jalr	328(ra) # 80002948 <trapinit>
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	16c080e7          	jalr	364(ra) # 80002974 <trapinithart>
    80002810:	00000097          	auipc	ra,0x0
    80002814:	5c0080e7          	jalr	1472(ra) # 80002dd0 <plicinit>
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	5e0080e7          	jalr	1504(ra) # 80002df8 <plicinithart>
    80002820:	00000097          	auipc	ra,0x0
    80002824:	078080e7          	jalr	120(ra) # 80002898 <userinit>
    80002828:	0ff0000f          	fence
    8000282c:	00100793          	li	a5,1
    80002830:	00003517          	auipc	a0,0x3
    80002834:	aa050513          	addi	a0,a0,-1376 # 800052d0 <_ZZ12printIntegermE6digits+0x28>
    80002838:	00f4a023          	sw	a5,0(s1)
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	a4c080e7          	jalr	-1460(ra) # 80003288 <__printf>
    80002844:	0000006f          	j	80002844 <system_main+0xd4>

0000000080002848 <cpuid>:
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00813423          	sd	s0,8(sp)
    80002850:	01010413          	addi	s0,sp,16
    80002854:	00020513          	mv	a0,tp
    80002858:	00813403          	ld	s0,8(sp)
    8000285c:	0005051b          	sext.w	a0,a0
    80002860:	01010113          	addi	sp,sp,16
    80002864:	00008067          	ret

0000000080002868 <mycpu>:
    80002868:	ff010113          	addi	sp,sp,-16
    8000286c:	00813423          	sd	s0,8(sp)
    80002870:	01010413          	addi	s0,sp,16
    80002874:	00020793          	mv	a5,tp
    80002878:	00813403          	ld	s0,8(sp)
    8000287c:	0007879b          	sext.w	a5,a5
    80002880:	00779793          	slli	a5,a5,0x7
    80002884:	00004517          	auipc	a0,0x4
    80002888:	48c50513          	addi	a0,a0,1164 # 80006d10 <cpus>
    8000288c:	00f50533          	add	a0,a0,a5
    80002890:	01010113          	addi	sp,sp,16
    80002894:	00008067          	ret

0000000080002898 <userinit>:
    80002898:	ff010113          	addi	sp,sp,-16
    8000289c:	00813423          	sd	s0,8(sp)
    800028a0:	01010413          	addi	s0,sp,16
    800028a4:	00813403          	ld	s0,8(sp)
    800028a8:	01010113          	addi	sp,sp,16
    800028ac:	fffff317          	auipc	t1,0xfffff
    800028b0:	37c30067          	jr	892(t1) # 80001c28 <main>

00000000800028b4 <either_copyout>:
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00813023          	sd	s0,0(sp)
    800028bc:	00113423          	sd	ra,8(sp)
    800028c0:	01010413          	addi	s0,sp,16
    800028c4:	02051663          	bnez	a0,800028f0 <either_copyout+0x3c>
    800028c8:	00058513          	mv	a0,a1
    800028cc:	00060593          	mv	a1,a2
    800028d0:	0006861b          	sext.w	a2,a3
    800028d4:	00002097          	auipc	ra,0x2
    800028d8:	c60080e7          	jalr	-928(ra) # 80004534 <__memmove>
    800028dc:	00813083          	ld	ra,8(sp)
    800028e0:	00013403          	ld	s0,0(sp)
    800028e4:	00000513          	li	a0,0
    800028e8:	01010113          	addi	sp,sp,16
    800028ec:	00008067          	ret
    800028f0:	00003517          	auipc	a0,0x3
    800028f4:	a2050513          	addi	a0,a0,-1504 # 80005310 <_ZZ12printIntegermE6digits+0x68>
    800028f8:	00001097          	auipc	ra,0x1
    800028fc:	934080e7          	jalr	-1740(ra) # 8000322c <panic>

0000000080002900 <either_copyin>:
    80002900:	ff010113          	addi	sp,sp,-16
    80002904:	00813023          	sd	s0,0(sp)
    80002908:	00113423          	sd	ra,8(sp)
    8000290c:	01010413          	addi	s0,sp,16
    80002910:	02059463          	bnez	a1,80002938 <either_copyin+0x38>
    80002914:	00060593          	mv	a1,a2
    80002918:	0006861b          	sext.w	a2,a3
    8000291c:	00002097          	auipc	ra,0x2
    80002920:	c18080e7          	jalr	-1000(ra) # 80004534 <__memmove>
    80002924:	00813083          	ld	ra,8(sp)
    80002928:	00013403          	ld	s0,0(sp)
    8000292c:	00000513          	li	a0,0
    80002930:	01010113          	addi	sp,sp,16
    80002934:	00008067          	ret
    80002938:	00003517          	auipc	a0,0x3
    8000293c:	a0050513          	addi	a0,a0,-1536 # 80005338 <_ZZ12printIntegermE6digits+0x90>
    80002940:	00001097          	auipc	ra,0x1
    80002944:	8ec080e7          	jalr	-1812(ra) # 8000322c <panic>

0000000080002948 <trapinit>:
    80002948:	ff010113          	addi	sp,sp,-16
    8000294c:	00813423          	sd	s0,8(sp)
    80002950:	01010413          	addi	s0,sp,16
    80002954:	00813403          	ld	s0,8(sp)
    80002958:	00003597          	auipc	a1,0x3
    8000295c:	a0858593          	addi	a1,a1,-1528 # 80005360 <_ZZ12printIntegermE6digits+0xb8>
    80002960:	00004517          	auipc	a0,0x4
    80002964:	43050513          	addi	a0,a0,1072 # 80006d90 <tickslock>
    80002968:	01010113          	addi	sp,sp,16
    8000296c:	00001317          	auipc	t1,0x1
    80002970:	5cc30067          	jr	1484(t1) # 80003f38 <initlock>

0000000080002974 <trapinithart>:
    80002974:	ff010113          	addi	sp,sp,-16
    80002978:	00813423          	sd	s0,8(sp)
    8000297c:	01010413          	addi	s0,sp,16
    80002980:	00000797          	auipc	a5,0x0
    80002984:	30078793          	addi	a5,a5,768 # 80002c80 <kernelvec>
    80002988:	10579073          	csrw	stvec,a5
    8000298c:	00813403          	ld	s0,8(sp)
    80002990:	01010113          	addi	sp,sp,16
    80002994:	00008067          	ret

0000000080002998 <usertrap>:
    80002998:	ff010113          	addi	sp,sp,-16
    8000299c:	00813423          	sd	s0,8(sp)
    800029a0:	01010413          	addi	s0,sp,16
    800029a4:	00813403          	ld	s0,8(sp)
    800029a8:	01010113          	addi	sp,sp,16
    800029ac:	00008067          	ret

00000000800029b0 <usertrapret>:
    800029b0:	ff010113          	addi	sp,sp,-16
    800029b4:	00813423          	sd	s0,8(sp)
    800029b8:	01010413          	addi	s0,sp,16
    800029bc:	00813403          	ld	s0,8(sp)
    800029c0:	01010113          	addi	sp,sp,16
    800029c4:	00008067          	ret

00000000800029c8 <kerneltrap>:
    800029c8:	fe010113          	addi	sp,sp,-32
    800029cc:	00813823          	sd	s0,16(sp)
    800029d0:	00113c23          	sd	ra,24(sp)
    800029d4:	00913423          	sd	s1,8(sp)
    800029d8:	02010413          	addi	s0,sp,32
    800029dc:	142025f3          	csrr	a1,scause
    800029e0:	100027f3          	csrr	a5,sstatus
    800029e4:	0027f793          	andi	a5,a5,2
    800029e8:	10079c63          	bnez	a5,80002b00 <kerneltrap+0x138>
    800029ec:	142027f3          	csrr	a5,scause
    800029f0:	0207ce63          	bltz	a5,80002a2c <kerneltrap+0x64>
    800029f4:	00003517          	auipc	a0,0x3
    800029f8:	9b450513          	addi	a0,a0,-1612 # 800053a8 <_ZZ12printIntegermE6digits+0x100>
    800029fc:	00001097          	auipc	ra,0x1
    80002a00:	88c080e7          	jalr	-1908(ra) # 80003288 <__printf>
    80002a04:	141025f3          	csrr	a1,sepc
    80002a08:	14302673          	csrr	a2,stval
    80002a0c:	00003517          	auipc	a0,0x3
    80002a10:	9ac50513          	addi	a0,a0,-1620 # 800053b8 <_ZZ12printIntegermE6digits+0x110>
    80002a14:	00001097          	auipc	ra,0x1
    80002a18:	874080e7          	jalr	-1932(ra) # 80003288 <__printf>
    80002a1c:	00003517          	auipc	a0,0x3
    80002a20:	9b450513          	addi	a0,a0,-1612 # 800053d0 <_ZZ12printIntegermE6digits+0x128>
    80002a24:	00001097          	auipc	ra,0x1
    80002a28:	808080e7          	jalr	-2040(ra) # 8000322c <panic>
    80002a2c:	0ff7f713          	andi	a4,a5,255
    80002a30:	00900693          	li	a3,9
    80002a34:	04d70063          	beq	a4,a3,80002a74 <kerneltrap+0xac>
    80002a38:	fff00713          	li	a4,-1
    80002a3c:	03f71713          	slli	a4,a4,0x3f
    80002a40:	00170713          	addi	a4,a4,1
    80002a44:	fae798e3          	bne	a5,a4,800029f4 <kerneltrap+0x2c>
    80002a48:	00000097          	auipc	ra,0x0
    80002a4c:	e00080e7          	jalr	-512(ra) # 80002848 <cpuid>
    80002a50:	06050663          	beqz	a0,80002abc <kerneltrap+0xf4>
    80002a54:	144027f3          	csrr	a5,sip
    80002a58:	ffd7f793          	andi	a5,a5,-3
    80002a5c:	14479073          	csrw	sip,a5
    80002a60:	01813083          	ld	ra,24(sp)
    80002a64:	01013403          	ld	s0,16(sp)
    80002a68:	00813483          	ld	s1,8(sp)
    80002a6c:	02010113          	addi	sp,sp,32
    80002a70:	00008067          	ret
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	3d0080e7          	jalr	976(ra) # 80002e44 <plic_claim>
    80002a7c:	00a00793          	li	a5,10
    80002a80:	00050493          	mv	s1,a0
    80002a84:	06f50863          	beq	a0,a5,80002af4 <kerneltrap+0x12c>
    80002a88:	fc050ce3          	beqz	a0,80002a60 <kerneltrap+0x98>
    80002a8c:	00050593          	mv	a1,a0
    80002a90:	00003517          	auipc	a0,0x3
    80002a94:	8f850513          	addi	a0,a0,-1800 # 80005388 <_ZZ12printIntegermE6digits+0xe0>
    80002a98:	00000097          	auipc	ra,0x0
    80002a9c:	7f0080e7          	jalr	2032(ra) # 80003288 <__printf>
    80002aa0:	01013403          	ld	s0,16(sp)
    80002aa4:	01813083          	ld	ra,24(sp)
    80002aa8:	00048513          	mv	a0,s1
    80002aac:	00813483          	ld	s1,8(sp)
    80002ab0:	02010113          	addi	sp,sp,32
    80002ab4:	00000317          	auipc	t1,0x0
    80002ab8:	3c830067          	jr	968(t1) # 80002e7c <plic_complete>
    80002abc:	00004517          	auipc	a0,0x4
    80002ac0:	2d450513          	addi	a0,a0,724 # 80006d90 <tickslock>
    80002ac4:	00001097          	auipc	ra,0x1
    80002ac8:	498080e7          	jalr	1176(ra) # 80003f5c <acquire>
    80002acc:	00003717          	auipc	a4,0x3
    80002ad0:	1c870713          	addi	a4,a4,456 # 80005c94 <ticks>
    80002ad4:	00072783          	lw	a5,0(a4)
    80002ad8:	00004517          	auipc	a0,0x4
    80002adc:	2b850513          	addi	a0,a0,696 # 80006d90 <tickslock>
    80002ae0:	0017879b          	addiw	a5,a5,1
    80002ae4:	00f72023          	sw	a5,0(a4)
    80002ae8:	00001097          	auipc	ra,0x1
    80002aec:	540080e7          	jalr	1344(ra) # 80004028 <release>
    80002af0:	f65ff06f          	j	80002a54 <kerneltrap+0x8c>
    80002af4:	00001097          	auipc	ra,0x1
    80002af8:	09c080e7          	jalr	156(ra) # 80003b90 <uartintr>
    80002afc:	fa5ff06f          	j	80002aa0 <kerneltrap+0xd8>
    80002b00:	00003517          	auipc	a0,0x3
    80002b04:	86850513          	addi	a0,a0,-1944 # 80005368 <_ZZ12printIntegermE6digits+0xc0>
    80002b08:	00000097          	auipc	ra,0x0
    80002b0c:	724080e7          	jalr	1828(ra) # 8000322c <panic>

0000000080002b10 <clockintr>:
    80002b10:	fe010113          	addi	sp,sp,-32
    80002b14:	00813823          	sd	s0,16(sp)
    80002b18:	00913423          	sd	s1,8(sp)
    80002b1c:	00113c23          	sd	ra,24(sp)
    80002b20:	02010413          	addi	s0,sp,32
    80002b24:	00004497          	auipc	s1,0x4
    80002b28:	26c48493          	addi	s1,s1,620 # 80006d90 <tickslock>
    80002b2c:	00048513          	mv	a0,s1
    80002b30:	00001097          	auipc	ra,0x1
    80002b34:	42c080e7          	jalr	1068(ra) # 80003f5c <acquire>
    80002b38:	00003717          	auipc	a4,0x3
    80002b3c:	15c70713          	addi	a4,a4,348 # 80005c94 <ticks>
    80002b40:	00072783          	lw	a5,0(a4)
    80002b44:	01013403          	ld	s0,16(sp)
    80002b48:	01813083          	ld	ra,24(sp)
    80002b4c:	00048513          	mv	a0,s1
    80002b50:	0017879b          	addiw	a5,a5,1
    80002b54:	00813483          	ld	s1,8(sp)
    80002b58:	00f72023          	sw	a5,0(a4)
    80002b5c:	02010113          	addi	sp,sp,32
    80002b60:	00001317          	auipc	t1,0x1
    80002b64:	4c830067          	jr	1224(t1) # 80004028 <release>

0000000080002b68 <devintr>:
    80002b68:	142027f3          	csrr	a5,scause
    80002b6c:	00000513          	li	a0,0
    80002b70:	0007c463          	bltz	a5,80002b78 <devintr+0x10>
    80002b74:	00008067          	ret
    80002b78:	fe010113          	addi	sp,sp,-32
    80002b7c:	00813823          	sd	s0,16(sp)
    80002b80:	00113c23          	sd	ra,24(sp)
    80002b84:	00913423          	sd	s1,8(sp)
    80002b88:	02010413          	addi	s0,sp,32
    80002b8c:	0ff7f713          	andi	a4,a5,255
    80002b90:	00900693          	li	a3,9
    80002b94:	04d70c63          	beq	a4,a3,80002bec <devintr+0x84>
    80002b98:	fff00713          	li	a4,-1
    80002b9c:	03f71713          	slli	a4,a4,0x3f
    80002ba0:	00170713          	addi	a4,a4,1
    80002ba4:	00e78c63          	beq	a5,a4,80002bbc <devintr+0x54>
    80002ba8:	01813083          	ld	ra,24(sp)
    80002bac:	01013403          	ld	s0,16(sp)
    80002bb0:	00813483          	ld	s1,8(sp)
    80002bb4:	02010113          	addi	sp,sp,32
    80002bb8:	00008067          	ret
    80002bbc:	00000097          	auipc	ra,0x0
    80002bc0:	c8c080e7          	jalr	-884(ra) # 80002848 <cpuid>
    80002bc4:	06050663          	beqz	a0,80002c30 <devintr+0xc8>
    80002bc8:	144027f3          	csrr	a5,sip
    80002bcc:	ffd7f793          	andi	a5,a5,-3
    80002bd0:	14479073          	csrw	sip,a5
    80002bd4:	01813083          	ld	ra,24(sp)
    80002bd8:	01013403          	ld	s0,16(sp)
    80002bdc:	00813483          	ld	s1,8(sp)
    80002be0:	00200513          	li	a0,2
    80002be4:	02010113          	addi	sp,sp,32
    80002be8:	00008067          	ret
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	258080e7          	jalr	600(ra) # 80002e44 <plic_claim>
    80002bf4:	00a00793          	li	a5,10
    80002bf8:	00050493          	mv	s1,a0
    80002bfc:	06f50663          	beq	a0,a5,80002c68 <devintr+0x100>
    80002c00:	00100513          	li	a0,1
    80002c04:	fa0482e3          	beqz	s1,80002ba8 <devintr+0x40>
    80002c08:	00048593          	mv	a1,s1
    80002c0c:	00002517          	auipc	a0,0x2
    80002c10:	77c50513          	addi	a0,a0,1916 # 80005388 <_ZZ12printIntegermE6digits+0xe0>
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	674080e7          	jalr	1652(ra) # 80003288 <__printf>
    80002c1c:	00048513          	mv	a0,s1
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	25c080e7          	jalr	604(ra) # 80002e7c <plic_complete>
    80002c28:	00100513          	li	a0,1
    80002c2c:	f7dff06f          	j	80002ba8 <devintr+0x40>
    80002c30:	00004517          	auipc	a0,0x4
    80002c34:	16050513          	addi	a0,a0,352 # 80006d90 <tickslock>
    80002c38:	00001097          	auipc	ra,0x1
    80002c3c:	324080e7          	jalr	804(ra) # 80003f5c <acquire>
    80002c40:	00003717          	auipc	a4,0x3
    80002c44:	05470713          	addi	a4,a4,84 # 80005c94 <ticks>
    80002c48:	00072783          	lw	a5,0(a4)
    80002c4c:	00004517          	auipc	a0,0x4
    80002c50:	14450513          	addi	a0,a0,324 # 80006d90 <tickslock>
    80002c54:	0017879b          	addiw	a5,a5,1
    80002c58:	00f72023          	sw	a5,0(a4)
    80002c5c:	00001097          	auipc	ra,0x1
    80002c60:	3cc080e7          	jalr	972(ra) # 80004028 <release>
    80002c64:	f65ff06f          	j	80002bc8 <devintr+0x60>
    80002c68:	00001097          	auipc	ra,0x1
    80002c6c:	f28080e7          	jalr	-216(ra) # 80003b90 <uartintr>
    80002c70:	fadff06f          	j	80002c1c <devintr+0xb4>
	...

0000000080002c80 <kernelvec>:
    80002c80:	f0010113          	addi	sp,sp,-256
    80002c84:	00113023          	sd	ra,0(sp)
    80002c88:	00213423          	sd	sp,8(sp)
    80002c8c:	00313823          	sd	gp,16(sp)
    80002c90:	00413c23          	sd	tp,24(sp)
    80002c94:	02513023          	sd	t0,32(sp)
    80002c98:	02613423          	sd	t1,40(sp)
    80002c9c:	02713823          	sd	t2,48(sp)
    80002ca0:	02813c23          	sd	s0,56(sp)
    80002ca4:	04913023          	sd	s1,64(sp)
    80002ca8:	04a13423          	sd	a0,72(sp)
    80002cac:	04b13823          	sd	a1,80(sp)
    80002cb0:	04c13c23          	sd	a2,88(sp)
    80002cb4:	06d13023          	sd	a3,96(sp)
    80002cb8:	06e13423          	sd	a4,104(sp)
    80002cbc:	06f13823          	sd	a5,112(sp)
    80002cc0:	07013c23          	sd	a6,120(sp)
    80002cc4:	09113023          	sd	a7,128(sp)
    80002cc8:	09213423          	sd	s2,136(sp)
    80002ccc:	09313823          	sd	s3,144(sp)
    80002cd0:	09413c23          	sd	s4,152(sp)
    80002cd4:	0b513023          	sd	s5,160(sp)
    80002cd8:	0b613423          	sd	s6,168(sp)
    80002cdc:	0b713823          	sd	s7,176(sp)
    80002ce0:	0b813c23          	sd	s8,184(sp)
    80002ce4:	0d913023          	sd	s9,192(sp)
    80002ce8:	0da13423          	sd	s10,200(sp)
    80002cec:	0db13823          	sd	s11,208(sp)
    80002cf0:	0dc13c23          	sd	t3,216(sp)
    80002cf4:	0fd13023          	sd	t4,224(sp)
    80002cf8:	0fe13423          	sd	t5,232(sp)
    80002cfc:	0ff13823          	sd	t6,240(sp)
    80002d00:	cc9ff0ef          	jal	ra,800029c8 <kerneltrap>
    80002d04:	00013083          	ld	ra,0(sp)
    80002d08:	00813103          	ld	sp,8(sp)
    80002d0c:	01013183          	ld	gp,16(sp)
    80002d10:	02013283          	ld	t0,32(sp)
    80002d14:	02813303          	ld	t1,40(sp)
    80002d18:	03013383          	ld	t2,48(sp)
    80002d1c:	03813403          	ld	s0,56(sp)
    80002d20:	04013483          	ld	s1,64(sp)
    80002d24:	04813503          	ld	a0,72(sp)
    80002d28:	05013583          	ld	a1,80(sp)
    80002d2c:	05813603          	ld	a2,88(sp)
    80002d30:	06013683          	ld	a3,96(sp)
    80002d34:	06813703          	ld	a4,104(sp)
    80002d38:	07013783          	ld	a5,112(sp)
    80002d3c:	07813803          	ld	a6,120(sp)
    80002d40:	08013883          	ld	a7,128(sp)
    80002d44:	08813903          	ld	s2,136(sp)
    80002d48:	09013983          	ld	s3,144(sp)
    80002d4c:	09813a03          	ld	s4,152(sp)
    80002d50:	0a013a83          	ld	s5,160(sp)
    80002d54:	0a813b03          	ld	s6,168(sp)
    80002d58:	0b013b83          	ld	s7,176(sp)
    80002d5c:	0b813c03          	ld	s8,184(sp)
    80002d60:	0c013c83          	ld	s9,192(sp)
    80002d64:	0c813d03          	ld	s10,200(sp)
    80002d68:	0d013d83          	ld	s11,208(sp)
    80002d6c:	0d813e03          	ld	t3,216(sp)
    80002d70:	0e013e83          	ld	t4,224(sp)
    80002d74:	0e813f03          	ld	t5,232(sp)
    80002d78:	0f013f83          	ld	t6,240(sp)
    80002d7c:	10010113          	addi	sp,sp,256
    80002d80:	10200073          	sret
    80002d84:	00000013          	nop
    80002d88:	00000013          	nop
    80002d8c:	00000013          	nop

0000000080002d90 <timervec>:
    80002d90:	34051573          	csrrw	a0,mscratch,a0
    80002d94:	00b53023          	sd	a1,0(a0)
    80002d98:	00c53423          	sd	a2,8(a0)
    80002d9c:	00d53823          	sd	a3,16(a0)
    80002da0:	01853583          	ld	a1,24(a0)
    80002da4:	02053603          	ld	a2,32(a0)
    80002da8:	0005b683          	ld	a3,0(a1)
    80002dac:	00c686b3          	add	a3,a3,a2
    80002db0:	00d5b023          	sd	a3,0(a1)
    80002db4:	00200593          	li	a1,2
    80002db8:	14459073          	csrw	sip,a1
    80002dbc:	01053683          	ld	a3,16(a0)
    80002dc0:	00853603          	ld	a2,8(a0)
    80002dc4:	00053583          	ld	a1,0(a0)
    80002dc8:	34051573          	csrrw	a0,mscratch,a0
    80002dcc:	30200073          	mret

0000000080002dd0 <plicinit>:
    80002dd0:	ff010113          	addi	sp,sp,-16
    80002dd4:	00813423          	sd	s0,8(sp)
    80002dd8:	01010413          	addi	s0,sp,16
    80002ddc:	00813403          	ld	s0,8(sp)
    80002de0:	0c0007b7          	lui	a5,0xc000
    80002de4:	00100713          	li	a4,1
    80002de8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002dec:	00e7a223          	sw	a4,4(a5)
    80002df0:	01010113          	addi	sp,sp,16
    80002df4:	00008067          	ret

0000000080002df8 <plicinithart>:
    80002df8:	ff010113          	addi	sp,sp,-16
    80002dfc:	00813023          	sd	s0,0(sp)
    80002e00:	00113423          	sd	ra,8(sp)
    80002e04:	01010413          	addi	s0,sp,16
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	a40080e7          	jalr	-1472(ra) # 80002848 <cpuid>
    80002e10:	0085171b          	slliw	a4,a0,0x8
    80002e14:	0c0027b7          	lui	a5,0xc002
    80002e18:	00e787b3          	add	a5,a5,a4
    80002e1c:	40200713          	li	a4,1026
    80002e20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002e24:	00813083          	ld	ra,8(sp)
    80002e28:	00013403          	ld	s0,0(sp)
    80002e2c:	00d5151b          	slliw	a0,a0,0xd
    80002e30:	0c2017b7          	lui	a5,0xc201
    80002e34:	00a78533          	add	a0,a5,a0
    80002e38:	00052023          	sw	zero,0(a0)
    80002e3c:	01010113          	addi	sp,sp,16
    80002e40:	00008067          	ret

0000000080002e44 <plic_claim>:
    80002e44:	ff010113          	addi	sp,sp,-16
    80002e48:	00813023          	sd	s0,0(sp)
    80002e4c:	00113423          	sd	ra,8(sp)
    80002e50:	01010413          	addi	s0,sp,16
    80002e54:	00000097          	auipc	ra,0x0
    80002e58:	9f4080e7          	jalr	-1548(ra) # 80002848 <cpuid>
    80002e5c:	00813083          	ld	ra,8(sp)
    80002e60:	00013403          	ld	s0,0(sp)
    80002e64:	00d5151b          	slliw	a0,a0,0xd
    80002e68:	0c2017b7          	lui	a5,0xc201
    80002e6c:	00a78533          	add	a0,a5,a0
    80002e70:	00452503          	lw	a0,4(a0)
    80002e74:	01010113          	addi	sp,sp,16
    80002e78:	00008067          	ret

0000000080002e7c <plic_complete>:
    80002e7c:	fe010113          	addi	sp,sp,-32
    80002e80:	00813823          	sd	s0,16(sp)
    80002e84:	00913423          	sd	s1,8(sp)
    80002e88:	00113c23          	sd	ra,24(sp)
    80002e8c:	02010413          	addi	s0,sp,32
    80002e90:	00050493          	mv	s1,a0
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	9b4080e7          	jalr	-1612(ra) # 80002848 <cpuid>
    80002e9c:	01813083          	ld	ra,24(sp)
    80002ea0:	01013403          	ld	s0,16(sp)
    80002ea4:	00d5179b          	slliw	a5,a0,0xd
    80002ea8:	0c201737          	lui	a4,0xc201
    80002eac:	00f707b3          	add	a5,a4,a5
    80002eb0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002eb4:	00813483          	ld	s1,8(sp)
    80002eb8:	02010113          	addi	sp,sp,32
    80002ebc:	00008067          	ret

0000000080002ec0 <consolewrite>:
    80002ec0:	fb010113          	addi	sp,sp,-80
    80002ec4:	04813023          	sd	s0,64(sp)
    80002ec8:	04113423          	sd	ra,72(sp)
    80002ecc:	02913c23          	sd	s1,56(sp)
    80002ed0:	03213823          	sd	s2,48(sp)
    80002ed4:	03313423          	sd	s3,40(sp)
    80002ed8:	03413023          	sd	s4,32(sp)
    80002edc:	01513c23          	sd	s5,24(sp)
    80002ee0:	05010413          	addi	s0,sp,80
    80002ee4:	06c05c63          	blez	a2,80002f5c <consolewrite+0x9c>
    80002ee8:	00060993          	mv	s3,a2
    80002eec:	00050a13          	mv	s4,a0
    80002ef0:	00058493          	mv	s1,a1
    80002ef4:	00000913          	li	s2,0
    80002ef8:	fff00a93          	li	s5,-1
    80002efc:	01c0006f          	j	80002f18 <consolewrite+0x58>
    80002f00:	fbf44503          	lbu	a0,-65(s0)
    80002f04:	0019091b          	addiw	s2,s2,1
    80002f08:	00148493          	addi	s1,s1,1
    80002f0c:	00001097          	auipc	ra,0x1
    80002f10:	a9c080e7          	jalr	-1380(ra) # 800039a8 <uartputc>
    80002f14:	03298063          	beq	s3,s2,80002f34 <consolewrite+0x74>
    80002f18:	00048613          	mv	a2,s1
    80002f1c:	00100693          	li	a3,1
    80002f20:	000a0593          	mv	a1,s4
    80002f24:	fbf40513          	addi	a0,s0,-65
    80002f28:	00000097          	auipc	ra,0x0
    80002f2c:	9d8080e7          	jalr	-1576(ra) # 80002900 <either_copyin>
    80002f30:	fd5518e3          	bne	a0,s5,80002f00 <consolewrite+0x40>
    80002f34:	04813083          	ld	ra,72(sp)
    80002f38:	04013403          	ld	s0,64(sp)
    80002f3c:	03813483          	ld	s1,56(sp)
    80002f40:	02813983          	ld	s3,40(sp)
    80002f44:	02013a03          	ld	s4,32(sp)
    80002f48:	01813a83          	ld	s5,24(sp)
    80002f4c:	00090513          	mv	a0,s2
    80002f50:	03013903          	ld	s2,48(sp)
    80002f54:	05010113          	addi	sp,sp,80
    80002f58:	00008067          	ret
    80002f5c:	00000913          	li	s2,0
    80002f60:	fd5ff06f          	j	80002f34 <consolewrite+0x74>

0000000080002f64 <consoleread>:
    80002f64:	f9010113          	addi	sp,sp,-112
    80002f68:	06813023          	sd	s0,96(sp)
    80002f6c:	04913c23          	sd	s1,88(sp)
    80002f70:	05213823          	sd	s2,80(sp)
    80002f74:	05313423          	sd	s3,72(sp)
    80002f78:	05413023          	sd	s4,64(sp)
    80002f7c:	03513c23          	sd	s5,56(sp)
    80002f80:	03613823          	sd	s6,48(sp)
    80002f84:	03713423          	sd	s7,40(sp)
    80002f88:	03813023          	sd	s8,32(sp)
    80002f8c:	06113423          	sd	ra,104(sp)
    80002f90:	01913c23          	sd	s9,24(sp)
    80002f94:	07010413          	addi	s0,sp,112
    80002f98:	00060b93          	mv	s7,a2
    80002f9c:	00050913          	mv	s2,a0
    80002fa0:	00058c13          	mv	s8,a1
    80002fa4:	00060b1b          	sext.w	s6,a2
    80002fa8:	00004497          	auipc	s1,0x4
    80002fac:	e1048493          	addi	s1,s1,-496 # 80006db8 <cons>
    80002fb0:	00400993          	li	s3,4
    80002fb4:	fff00a13          	li	s4,-1
    80002fb8:	00a00a93          	li	s5,10
    80002fbc:	05705e63          	blez	s7,80003018 <consoleread+0xb4>
    80002fc0:	09c4a703          	lw	a4,156(s1)
    80002fc4:	0984a783          	lw	a5,152(s1)
    80002fc8:	0007071b          	sext.w	a4,a4
    80002fcc:	08e78463          	beq	a5,a4,80003054 <consoleread+0xf0>
    80002fd0:	07f7f713          	andi	a4,a5,127
    80002fd4:	00e48733          	add	a4,s1,a4
    80002fd8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002fdc:	0017869b          	addiw	a3,a5,1
    80002fe0:	08d4ac23          	sw	a3,152(s1)
    80002fe4:	00070c9b          	sext.w	s9,a4
    80002fe8:	0b370663          	beq	a4,s3,80003094 <consoleread+0x130>
    80002fec:	00100693          	li	a3,1
    80002ff0:	f9f40613          	addi	a2,s0,-97
    80002ff4:	000c0593          	mv	a1,s8
    80002ff8:	00090513          	mv	a0,s2
    80002ffc:	f8e40fa3          	sb	a4,-97(s0)
    80003000:	00000097          	auipc	ra,0x0
    80003004:	8b4080e7          	jalr	-1868(ra) # 800028b4 <either_copyout>
    80003008:	01450863          	beq	a0,s4,80003018 <consoleread+0xb4>
    8000300c:	001c0c13          	addi	s8,s8,1
    80003010:	fffb8b9b          	addiw	s7,s7,-1
    80003014:	fb5c94e3          	bne	s9,s5,80002fbc <consoleread+0x58>
    80003018:	000b851b          	sext.w	a0,s7
    8000301c:	06813083          	ld	ra,104(sp)
    80003020:	06013403          	ld	s0,96(sp)
    80003024:	05813483          	ld	s1,88(sp)
    80003028:	05013903          	ld	s2,80(sp)
    8000302c:	04813983          	ld	s3,72(sp)
    80003030:	04013a03          	ld	s4,64(sp)
    80003034:	03813a83          	ld	s5,56(sp)
    80003038:	02813b83          	ld	s7,40(sp)
    8000303c:	02013c03          	ld	s8,32(sp)
    80003040:	01813c83          	ld	s9,24(sp)
    80003044:	40ab053b          	subw	a0,s6,a0
    80003048:	03013b03          	ld	s6,48(sp)
    8000304c:	07010113          	addi	sp,sp,112
    80003050:	00008067          	ret
    80003054:	00001097          	auipc	ra,0x1
    80003058:	1d8080e7          	jalr	472(ra) # 8000422c <push_on>
    8000305c:	0984a703          	lw	a4,152(s1)
    80003060:	09c4a783          	lw	a5,156(s1)
    80003064:	0007879b          	sext.w	a5,a5
    80003068:	fef70ce3          	beq	a4,a5,80003060 <consoleread+0xfc>
    8000306c:	00001097          	auipc	ra,0x1
    80003070:	234080e7          	jalr	564(ra) # 800042a0 <pop_on>
    80003074:	0984a783          	lw	a5,152(s1)
    80003078:	07f7f713          	andi	a4,a5,127
    8000307c:	00e48733          	add	a4,s1,a4
    80003080:	01874703          	lbu	a4,24(a4)
    80003084:	0017869b          	addiw	a3,a5,1
    80003088:	08d4ac23          	sw	a3,152(s1)
    8000308c:	00070c9b          	sext.w	s9,a4
    80003090:	f5371ee3          	bne	a4,s3,80002fec <consoleread+0x88>
    80003094:	000b851b          	sext.w	a0,s7
    80003098:	f96bf2e3          	bgeu	s7,s6,8000301c <consoleread+0xb8>
    8000309c:	08f4ac23          	sw	a5,152(s1)
    800030a0:	f7dff06f          	j	8000301c <consoleread+0xb8>

00000000800030a4 <consputc>:
    800030a4:	10000793          	li	a5,256
    800030a8:	00f50663          	beq	a0,a5,800030b4 <consputc+0x10>
    800030ac:	00001317          	auipc	t1,0x1
    800030b0:	9f430067          	jr	-1548(t1) # 80003aa0 <uartputc_sync>
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00113423          	sd	ra,8(sp)
    800030bc:	00813023          	sd	s0,0(sp)
    800030c0:	01010413          	addi	s0,sp,16
    800030c4:	00800513          	li	a0,8
    800030c8:	00001097          	auipc	ra,0x1
    800030cc:	9d8080e7          	jalr	-1576(ra) # 80003aa0 <uartputc_sync>
    800030d0:	02000513          	li	a0,32
    800030d4:	00001097          	auipc	ra,0x1
    800030d8:	9cc080e7          	jalr	-1588(ra) # 80003aa0 <uartputc_sync>
    800030dc:	00013403          	ld	s0,0(sp)
    800030e0:	00813083          	ld	ra,8(sp)
    800030e4:	00800513          	li	a0,8
    800030e8:	01010113          	addi	sp,sp,16
    800030ec:	00001317          	auipc	t1,0x1
    800030f0:	9b430067          	jr	-1612(t1) # 80003aa0 <uartputc_sync>

00000000800030f4 <consoleintr>:
    800030f4:	fe010113          	addi	sp,sp,-32
    800030f8:	00813823          	sd	s0,16(sp)
    800030fc:	00913423          	sd	s1,8(sp)
    80003100:	01213023          	sd	s2,0(sp)
    80003104:	00113c23          	sd	ra,24(sp)
    80003108:	02010413          	addi	s0,sp,32
    8000310c:	00004917          	auipc	s2,0x4
    80003110:	cac90913          	addi	s2,s2,-852 # 80006db8 <cons>
    80003114:	00050493          	mv	s1,a0
    80003118:	00090513          	mv	a0,s2
    8000311c:	00001097          	auipc	ra,0x1
    80003120:	e40080e7          	jalr	-448(ra) # 80003f5c <acquire>
    80003124:	02048c63          	beqz	s1,8000315c <consoleintr+0x68>
    80003128:	0a092783          	lw	a5,160(s2)
    8000312c:	09892703          	lw	a4,152(s2)
    80003130:	07f00693          	li	a3,127
    80003134:	40e7873b          	subw	a4,a5,a4
    80003138:	02e6e263          	bltu	a3,a4,8000315c <consoleintr+0x68>
    8000313c:	00d00713          	li	a4,13
    80003140:	04e48063          	beq	s1,a4,80003180 <consoleintr+0x8c>
    80003144:	07f7f713          	andi	a4,a5,127
    80003148:	00e90733          	add	a4,s2,a4
    8000314c:	0017879b          	addiw	a5,a5,1
    80003150:	0af92023          	sw	a5,160(s2)
    80003154:	00970c23          	sb	s1,24(a4)
    80003158:	08f92e23          	sw	a5,156(s2)
    8000315c:	01013403          	ld	s0,16(sp)
    80003160:	01813083          	ld	ra,24(sp)
    80003164:	00813483          	ld	s1,8(sp)
    80003168:	00013903          	ld	s2,0(sp)
    8000316c:	00004517          	auipc	a0,0x4
    80003170:	c4c50513          	addi	a0,a0,-948 # 80006db8 <cons>
    80003174:	02010113          	addi	sp,sp,32
    80003178:	00001317          	auipc	t1,0x1
    8000317c:	eb030067          	jr	-336(t1) # 80004028 <release>
    80003180:	00a00493          	li	s1,10
    80003184:	fc1ff06f          	j	80003144 <consoleintr+0x50>

0000000080003188 <consoleinit>:
    80003188:	fe010113          	addi	sp,sp,-32
    8000318c:	00113c23          	sd	ra,24(sp)
    80003190:	00813823          	sd	s0,16(sp)
    80003194:	00913423          	sd	s1,8(sp)
    80003198:	02010413          	addi	s0,sp,32
    8000319c:	00004497          	auipc	s1,0x4
    800031a0:	c1c48493          	addi	s1,s1,-996 # 80006db8 <cons>
    800031a4:	00048513          	mv	a0,s1
    800031a8:	00002597          	auipc	a1,0x2
    800031ac:	23858593          	addi	a1,a1,568 # 800053e0 <_ZZ12printIntegermE6digits+0x138>
    800031b0:	00001097          	auipc	ra,0x1
    800031b4:	d88080e7          	jalr	-632(ra) # 80003f38 <initlock>
    800031b8:	00000097          	auipc	ra,0x0
    800031bc:	7ac080e7          	jalr	1964(ra) # 80003964 <uartinit>
    800031c0:	01813083          	ld	ra,24(sp)
    800031c4:	01013403          	ld	s0,16(sp)
    800031c8:	00000797          	auipc	a5,0x0
    800031cc:	d9c78793          	addi	a5,a5,-612 # 80002f64 <consoleread>
    800031d0:	0af4bc23          	sd	a5,184(s1)
    800031d4:	00000797          	auipc	a5,0x0
    800031d8:	cec78793          	addi	a5,a5,-788 # 80002ec0 <consolewrite>
    800031dc:	0cf4b023          	sd	a5,192(s1)
    800031e0:	00813483          	ld	s1,8(sp)
    800031e4:	02010113          	addi	sp,sp,32
    800031e8:	00008067          	ret

00000000800031ec <console_read>:
    800031ec:	ff010113          	addi	sp,sp,-16
    800031f0:	00813423          	sd	s0,8(sp)
    800031f4:	01010413          	addi	s0,sp,16
    800031f8:	00813403          	ld	s0,8(sp)
    800031fc:	00004317          	auipc	t1,0x4
    80003200:	c7433303          	ld	t1,-908(t1) # 80006e70 <devsw+0x10>
    80003204:	01010113          	addi	sp,sp,16
    80003208:	00030067          	jr	t1

000000008000320c <console_write>:
    8000320c:	ff010113          	addi	sp,sp,-16
    80003210:	00813423          	sd	s0,8(sp)
    80003214:	01010413          	addi	s0,sp,16
    80003218:	00813403          	ld	s0,8(sp)
    8000321c:	00004317          	auipc	t1,0x4
    80003220:	c5c33303          	ld	t1,-932(t1) # 80006e78 <devsw+0x18>
    80003224:	01010113          	addi	sp,sp,16
    80003228:	00030067          	jr	t1

000000008000322c <panic>:
    8000322c:	fe010113          	addi	sp,sp,-32
    80003230:	00113c23          	sd	ra,24(sp)
    80003234:	00813823          	sd	s0,16(sp)
    80003238:	00913423          	sd	s1,8(sp)
    8000323c:	02010413          	addi	s0,sp,32
    80003240:	00050493          	mv	s1,a0
    80003244:	00002517          	auipc	a0,0x2
    80003248:	1a450513          	addi	a0,a0,420 # 800053e8 <_ZZ12printIntegermE6digits+0x140>
    8000324c:	00004797          	auipc	a5,0x4
    80003250:	cc07a623          	sw	zero,-820(a5) # 80006f18 <pr+0x18>
    80003254:	00000097          	auipc	ra,0x0
    80003258:	034080e7          	jalr	52(ra) # 80003288 <__printf>
    8000325c:	00048513          	mv	a0,s1
    80003260:	00000097          	auipc	ra,0x0
    80003264:	028080e7          	jalr	40(ra) # 80003288 <__printf>
    80003268:	00002517          	auipc	a0,0x2
    8000326c:	f2050513          	addi	a0,a0,-224 # 80005188 <kvmincrease+0x798>
    80003270:	00000097          	auipc	ra,0x0
    80003274:	018080e7          	jalr	24(ra) # 80003288 <__printf>
    80003278:	00100793          	li	a5,1
    8000327c:	00003717          	auipc	a4,0x3
    80003280:	a0f72e23          	sw	a5,-1508(a4) # 80005c98 <panicked>
    80003284:	0000006f          	j	80003284 <panic+0x58>

0000000080003288 <__printf>:
    80003288:	f3010113          	addi	sp,sp,-208
    8000328c:	08813023          	sd	s0,128(sp)
    80003290:	07313423          	sd	s3,104(sp)
    80003294:	09010413          	addi	s0,sp,144
    80003298:	05813023          	sd	s8,64(sp)
    8000329c:	08113423          	sd	ra,136(sp)
    800032a0:	06913c23          	sd	s1,120(sp)
    800032a4:	07213823          	sd	s2,112(sp)
    800032a8:	07413023          	sd	s4,96(sp)
    800032ac:	05513c23          	sd	s5,88(sp)
    800032b0:	05613823          	sd	s6,80(sp)
    800032b4:	05713423          	sd	s7,72(sp)
    800032b8:	03913c23          	sd	s9,56(sp)
    800032bc:	03a13823          	sd	s10,48(sp)
    800032c0:	03b13423          	sd	s11,40(sp)
    800032c4:	00004317          	auipc	t1,0x4
    800032c8:	c3c30313          	addi	t1,t1,-964 # 80006f00 <pr>
    800032cc:	01832c03          	lw	s8,24(t1)
    800032d0:	00b43423          	sd	a1,8(s0)
    800032d4:	00c43823          	sd	a2,16(s0)
    800032d8:	00d43c23          	sd	a3,24(s0)
    800032dc:	02e43023          	sd	a4,32(s0)
    800032e0:	02f43423          	sd	a5,40(s0)
    800032e4:	03043823          	sd	a6,48(s0)
    800032e8:	03143c23          	sd	a7,56(s0)
    800032ec:	00050993          	mv	s3,a0
    800032f0:	4a0c1663          	bnez	s8,8000379c <__printf+0x514>
    800032f4:	60098c63          	beqz	s3,8000390c <__printf+0x684>
    800032f8:	0009c503          	lbu	a0,0(s3)
    800032fc:	00840793          	addi	a5,s0,8
    80003300:	f6f43c23          	sd	a5,-136(s0)
    80003304:	00000493          	li	s1,0
    80003308:	22050063          	beqz	a0,80003528 <__printf+0x2a0>
    8000330c:	00002a37          	lui	s4,0x2
    80003310:	00018ab7          	lui	s5,0x18
    80003314:	000f4b37          	lui	s6,0xf4
    80003318:	00989bb7          	lui	s7,0x989
    8000331c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003320:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003324:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003328:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000332c:	00148c9b          	addiw	s9,s1,1
    80003330:	02500793          	li	a5,37
    80003334:	01998933          	add	s2,s3,s9
    80003338:	38f51263          	bne	a0,a5,800036bc <__printf+0x434>
    8000333c:	00094783          	lbu	a5,0(s2)
    80003340:	00078c9b          	sext.w	s9,a5
    80003344:	1e078263          	beqz	a5,80003528 <__printf+0x2a0>
    80003348:	0024849b          	addiw	s1,s1,2
    8000334c:	07000713          	li	a4,112
    80003350:	00998933          	add	s2,s3,s1
    80003354:	38e78a63          	beq	a5,a4,800036e8 <__printf+0x460>
    80003358:	20f76863          	bltu	a4,a5,80003568 <__printf+0x2e0>
    8000335c:	42a78863          	beq	a5,a0,8000378c <__printf+0x504>
    80003360:	06400713          	li	a4,100
    80003364:	40e79663          	bne	a5,a4,80003770 <__printf+0x4e8>
    80003368:	f7843783          	ld	a5,-136(s0)
    8000336c:	0007a603          	lw	a2,0(a5)
    80003370:	00878793          	addi	a5,a5,8
    80003374:	f6f43c23          	sd	a5,-136(s0)
    80003378:	42064a63          	bltz	a2,800037ac <__printf+0x524>
    8000337c:	00a00713          	li	a4,10
    80003380:	02e677bb          	remuw	a5,a2,a4
    80003384:	00002d97          	auipc	s11,0x2
    80003388:	08cd8d93          	addi	s11,s11,140 # 80005410 <digits>
    8000338c:	00900593          	li	a1,9
    80003390:	0006051b          	sext.w	a0,a2
    80003394:	00000c93          	li	s9,0
    80003398:	02079793          	slli	a5,a5,0x20
    8000339c:	0207d793          	srli	a5,a5,0x20
    800033a0:	00fd87b3          	add	a5,s11,a5
    800033a4:	0007c783          	lbu	a5,0(a5)
    800033a8:	02e656bb          	divuw	a3,a2,a4
    800033ac:	f8f40023          	sb	a5,-128(s0)
    800033b0:	14c5d863          	bge	a1,a2,80003500 <__printf+0x278>
    800033b4:	06300593          	li	a1,99
    800033b8:	00100c93          	li	s9,1
    800033bc:	02e6f7bb          	remuw	a5,a3,a4
    800033c0:	02079793          	slli	a5,a5,0x20
    800033c4:	0207d793          	srli	a5,a5,0x20
    800033c8:	00fd87b3          	add	a5,s11,a5
    800033cc:	0007c783          	lbu	a5,0(a5)
    800033d0:	02e6d73b          	divuw	a4,a3,a4
    800033d4:	f8f400a3          	sb	a5,-127(s0)
    800033d8:	12a5f463          	bgeu	a1,a0,80003500 <__printf+0x278>
    800033dc:	00a00693          	li	a3,10
    800033e0:	00900593          	li	a1,9
    800033e4:	02d777bb          	remuw	a5,a4,a3
    800033e8:	02079793          	slli	a5,a5,0x20
    800033ec:	0207d793          	srli	a5,a5,0x20
    800033f0:	00fd87b3          	add	a5,s11,a5
    800033f4:	0007c503          	lbu	a0,0(a5)
    800033f8:	02d757bb          	divuw	a5,a4,a3
    800033fc:	f8a40123          	sb	a0,-126(s0)
    80003400:	48e5f263          	bgeu	a1,a4,80003884 <__printf+0x5fc>
    80003404:	06300513          	li	a0,99
    80003408:	02d7f5bb          	remuw	a1,a5,a3
    8000340c:	02059593          	slli	a1,a1,0x20
    80003410:	0205d593          	srli	a1,a1,0x20
    80003414:	00bd85b3          	add	a1,s11,a1
    80003418:	0005c583          	lbu	a1,0(a1)
    8000341c:	02d7d7bb          	divuw	a5,a5,a3
    80003420:	f8b401a3          	sb	a1,-125(s0)
    80003424:	48e57263          	bgeu	a0,a4,800038a8 <__printf+0x620>
    80003428:	3e700513          	li	a0,999
    8000342c:	02d7f5bb          	remuw	a1,a5,a3
    80003430:	02059593          	slli	a1,a1,0x20
    80003434:	0205d593          	srli	a1,a1,0x20
    80003438:	00bd85b3          	add	a1,s11,a1
    8000343c:	0005c583          	lbu	a1,0(a1)
    80003440:	02d7d7bb          	divuw	a5,a5,a3
    80003444:	f8b40223          	sb	a1,-124(s0)
    80003448:	46e57663          	bgeu	a0,a4,800038b4 <__printf+0x62c>
    8000344c:	02d7f5bb          	remuw	a1,a5,a3
    80003450:	02059593          	slli	a1,a1,0x20
    80003454:	0205d593          	srli	a1,a1,0x20
    80003458:	00bd85b3          	add	a1,s11,a1
    8000345c:	0005c583          	lbu	a1,0(a1)
    80003460:	02d7d7bb          	divuw	a5,a5,a3
    80003464:	f8b402a3          	sb	a1,-123(s0)
    80003468:	46ea7863          	bgeu	s4,a4,800038d8 <__printf+0x650>
    8000346c:	02d7f5bb          	remuw	a1,a5,a3
    80003470:	02059593          	slli	a1,a1,0x20
    80003474:	0205d593          	srli	a1,a1,0x20
    80003478:	00bd85b3          	add	a1,s11,a1
    8000347c:	0005c583          	lbu	a1,0(a1)
    80003480:	02d7d7bb          	divuw	a5,a5,a3
    80003484:	f8b40323          	sb	a1,-122(s0)
    80003488:	3eeaf863          	bgeu	s5,a4,80003878 <__printf+0x5f0>
    8000348c:	02d7f5bb          	remuw	a1,a5,a3
    80003490:	02059593          	slli	a1,a1,0x20
    80003494:	0205d593          	srli	a1,a1,0x20
    80003498:	00bd85b3          	add	a1,s11,a1
    8000349c:	0005c583          	lbu	a1,0(a1)
    800034a0:	02d7d7bb          	divuw	a5,a5,a3
    800034a4:	f8b403a3          	sb	a1,-121(s0)
    800034a8:	42eb7e63          	bgeu	s6,a4,800038e4 <__printf+0x65c>
    800034ac:	02d7f5bb          	remuw	a1,a5,a3
    800034b0:	02059593          	slli	a1,a1,0x20
    800034b4:	0205d593          	srli	a1,a1,0x20
    800034b8:	00bd85b3          	add	a1,s11,a1
    800034bc:	0005c583          	lbu	a1,0(a1)
    800034c0:	02d7d7bb          	divuw	a5,a5,a3
    800034c4:	f8b40423          	sb	a1,-120(s0)
    800034c8:	42ebfc63          	bgeu	s7,a4,80003900 <__printf+0x678>
    800034cc:	02079793          	slli	a5,a5,0x20
    800034d0:	0207d793          	srli	a5,a5,0x20
    800034d4:	00fd8db3          	add	s11,s11,a5
    800034d8:	000dc703          	lbu	a4,0(s11)
    800034dc:	00a00793          	li	a5,10
    800034e0:	00900c93          	li	s9,9
    800034e4:	f8e404a3          	sb	a4,-119(s0)
    800034e8:	00065c63          	bgez	a2,80003500 <__printf+0x278>
    800034ec:	f9040713          	addi	a4,s0,-112
    800034f0:	00f70733          	add	a4,a4,a5
    800034f4:	02d00693          	li	a3,45
    800034f8:	fed70823          	sb	a3,-16(a4)
    800034fc:	00078c93          	mv	s9,a5
    80003500:	f8040793          	addi	a5,s0,-128
    80003504:	01978cb3          	add	s9,a5,s9
    80003508:	f7f40d13          	addi	s10,s0,-129
    8000350c:	000cc503          	lbu	a0,0(s9)
    80003510:	fffc8c93          	addi	s9,s9,-1
    80003514:	00000097          	auipc	ra,0x0
    80003518:	b90080e7          	jalr	-1136(ra) # 800030a4 <consputc>
    8000351c:	ffac98e3          	bne	s9,s10,8000350c <__printf+0x284>
    80003520:	00094503          	lbu	a0,0(s2)
    80003524:	e00514e3          	bnez	a0,8000332c <__printf+0xa4>
    80003528:	1a0c1663          	bnez	s8,800036d4 <__printf+0x44c>
    8000352c:	08813083          	ld	ra,136(sp)
    80003530:	08013403          	ld	s0,128(sp)
    80003534:	07813483          	ld	s1,120(sp)
    80003538:	07013903          	ld	s2,112(sp)
    8000353c:	06813983          	ld	s3,104(sp)
    80003540:	06013a03          	ld	s4,96(sp)
    80003544:	05813a83          	ld	s5,88(sp)
    80003548:	05013b03          	ld	s6,80(sp)
    8000354c:	04813b83          	ld	s7,72(sp)
    80003550:	04013c03          	ld	s8,64(sp)
    80003554:	03813c83          	ld	s9,56(sp)
    80003558:	03013d03          	ld	s10,48(sp)
    8000355c:	02813d83          	ld	s11,40(sp)
    80003560:	0d010113          	addi	sp,sp,208
    80003564:	00008067          	ret
    80003568:	07300713          	li	a4,115
    8000356c:	1ce78a63          	beq	a5,a4,80003740 <__printf+0x4b8>
    80003570:	07800713          	li	a4,120
    80003574:	1ee79e63          	bne	a5,a4,80003770 <__printf+0x4e8>
    80003578:	f7843783          	ld	a5,-136(s0)
    8000357c:	0007a703          	lw	a4,0(a5)
    80003580:	00878793          	addi	a5,a5,8
    80003584:	f6f43c23          	sd	a5,-136(s0)
    80003588:	28074263          	bltz	a4,8000380c <__printf+0x584>
    8000358c:	00002d97          	auipc	s11,0x2
    80003590:	e84d8d93          	addi	s11,s11,-380 # 80005410 <digits>
    80003594:	00f77793          	andi	a5,a4,15
    80003598:	00fd87b3          	add	a5,s11,a5
    8000359c:	0007c683          	lbu	a3,0(a5)
    800035a0:	00f00613          	li	a2,15
    800035a4:	0007079b          	sext.w	a5,a4
    800035a8:	f8d40023          	sb	a3,-128(s0)
    800035ac:	0047559b          	srliw	a1,a4,0x4
    800035b0:	0047569b          	srliw	a3,a4,0x4
    800035b4:	00000c93          	li	s9,0
    800035b8:	0ee65063          	bge	a2,a4,80003698 <__printf+0x410>
    800035bc:	00f6f693          	andi	a3,a3,15
    800035c0:	00dd86b3          	add	a3,s11,a3
    800035c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800035c8:	0087d79b          	srliw	a5,a5,0x8
    800035cc:	00100c93          	li	s9,1
    800035d0:	f8d400a3          	sb	a3,-127(s0)
    800035d4:	0cb67263          	bgeu	a2,a1,80003698 <__printf+0x410>
    800035d8:	00f7f693          	andi	a3,a5,15
    800035dc:	00dd86b3          	add	a3,s11,a3
    800035e0:	0006c583          	lbu	a1,0(a3)
    800035e4:	00f00613          	li	a2,15
    800035e8:	0047d69b          	srliw	a3,a5,0x4
    800035ec:	f8b40123          	sb	a1,-126(s0)
    800035f0:	0047d593          	srli	a1,a5,0x4
    800035f4:	28f67e63          	bgeu	a2,a5,80003890 <__printf+0x608>
    800035f8:	00f6f693          	andi	a3,a3,15
    800035fc:	00dd86b3          	add	a3,s11,a3
    80003600:	0006c503          	lbu	a0,0(a3)
    80003604:	0087d813          	srli	a6,a5,0x8
    80003608:	0087d69b          	srliw	a3,a5,0x8
    8000360c:	f8a401a3          	sb	a0,-125(s0)
    80003610:	28b67663          	bgeu	a2,a1,8000389c <__printf+0x614>
    80003614:	00f6f693          	andi	a3,a3,15
    80003618:	00dd86b3          	add	a3,s11,a3
    8000361c:	0006c583          	lbu	a1,0(a3)
    80003620:	00c7d513          	srli	a0,a5,0xc
    80003624:	00c7d69b          	srliw	a3,a5,0xc
    80003628:	f8b40223          	sb	a1,-124(s0)
    8000362c:	29067a63          	bgeu	a2,a6,800038c0 <__printf+0x638>
    80003630:	00f6f693          	andi	a3,a3,15
    80003634:	00dd86b3          	add	a3,s11,a3
    80003638:	0006c583          	lbu	a1,0(a3)
    8000363c:	0107d813          	srli	a6,a5,0x10
    80003640:	0107d69b          	srliw	a3,a5,0x10
    80003644:	f8b402a3          	sb	a1,-123(s0)
    80003648:	28a67263          	bgeu	a2,a0,800038cc <__printf+0x644>
    8000364c:	00f6f693          	andi	a3,a3,15
    80003650:	00dd86b3          	add	a3,s11,a3
    80003654:	0006c683          	lbu	a3,0(a3)
    80003658:	0147d79b          	srliw	a5,a5,0x14
    8000365c:	f8d40323          	sb	a3,-122(s0)
    80003660:	21067663          	bgeu	a2,a6,8000386c <__printf+0x5e4>
    80003664:	02079793          	slli	a5,a5,0x20
    80003668:	0207d793          	srli	a5,a5,0x20
    8000366c:	00fd8db3          	add	s11,s11,a5
    80003670:	000dc683          	lbu	a3,0(s11)
    80003674:	00800793          	li	a5,8
    80003678:	00700c93          	li	s9,7
    8000367c:	f8d403a3          	sb	a3,-121(s0)
    80003680:	00075c63          	bgez	a4,80003698 <__printf+0x410>
    80003684:	f9040713          	addi	a4,s0,-112
    80003688:	00f70733          	add	a4,a4,a5
    8000368c:	02d00693          	li	a3,45
    80003690:	fed70823          	sb	a3,-16(a4)
    80003694:	00078c93          	mv	s9,a5
    80003698:	f8040793          	addi	a5,s0,-128
    8000369c:	01978cb3          	add	s9,a5,s9
    800036a0:	f7f40d13          	addi	s10,s0,-129
    800036a4:	000cc503          	lbu	a0,0(s9)
    800036a8:	fffc8c93          	addi	s9,s9,-1
    800036ac:	00000097          	auipc	ra,0x0
    800036b0:	9f8080e7          	jalr	-1544(ra) # 800030a4 <consputc>
    800036b4:	ff9d18e3          	bne	s10,s9,800036a4 <__printf+0x41c>
    800036b8:	0100006f          	j	800036c8 <__printf+0x440>
    800036bc:	00000097          	auipc	ra,0x0
    800036c0:	9e8080e7          	jalr	-1560(ra) # 800030a4 <consputc>
    800036c4:	000c8493          	mv	s1,s9
    800036c8:	00094503          	lbu	a0,0(s2)
    800036cc:	c60510e3          	bnez	a0,8000332c <__printf+0xa4>
    800036d0:	e40c0ee3          	beqz	s8,8000352c <__printf+0x2a4>
    800036d4:	00004517          	auipc	a0,0x4
    800036d8:	82c50513          	addi	a0,a0,-2004 # 80006f00 <pr>
    800036dc:	00001097          	auipc	ra,0x1
    800036e0:	94c080e7          	jalr	-1716(ra) # 80004028 <release>
    800036e4:	e49ff06f          	j	8000352c <__printf+0x2a4>
    800036e8:	f7843783          	ld	a5,-136(s0)
    800036ec:	03000513          	li	a0,48
    800036f0:	01000d13          	li	s10,16
    800036f4:	00878713          	addi	a4,a5,8
    800036f8:	0007bc83          	ld	s9,0(a5)
    800036fc:	f6e43c23          	sd	a4,-136(s0)
    80003700:	00000097          	auipc	ra,0x0
    80003704:	9a4080e7          	jalr	-1628(ra) # 800030a4 <consputc>
    80003708:	07800513          	li	a0,120
    8000370c:	00000097          	auipc	ra,0x0
    80003710:	998080e7          	jalr	-1640(ra) # 800030a4 <consputc>
    80003714:	00002d97          	auipc	s11,0x2
    80003718:	cfcd8d93          	addi	s11,s11,-772 # 80005410 <digits>
    8000371c:	03ccd793          	srli	a5,s9,0x3c
    80003720:	00fd87b3          	add	a5,s11,a5
    80003724:	0007c503          	lbu	a0,0(a5)
    80003728:	fffd0d1b          	addiw	s10,s10,-1
    8000372c:	004c9c93          	slli	s9,s9,0x4
    80003730:	00000097          	auipc	ra,0x0
    80003734:	974080e7          	jalr	-1676(ra) # 800030a4 <consputc>
    80003738:	fe0d12e3          	bnez	s10,8000371c <__printf+0x494>
    8000373c:	f8dff06f          	j	800036c8 <__printf+0x440>
    80003740:	f7843783          	ld	a5,-136(s0)
    80003744:	0007bc83          	ld	s9,0(a5)
    80003748:	00878793          	addi	a5,a5,8
    8000374c:	f6f43c23          	sd	a5,-136(s0)
    80003750:	000c9a63          	bnez	s9,80003764 <__printf+0x4dc>
    80003754:	1080006f          	j	8000385c <__printf+0x5d4>
    80003758:	001c8c93          	addi	s9,s9,1
    8000375c:	00000097          	auipc	ra,0x0
    80003760:	948080e7          	jalr	-1720(ra) # 800030a4 <consputc>
    80003764:	000cc503          	lbu	a0,0(s9)
    80003768:	fe0518e3          	bnez	a0,80003758 <__printf+0x4d0>
    8000376c:	f5dff06f          	j	800036c8 <__printf+0x440>
    80003770:	02500513          	li	a0,37
    80003774:	00000097          	auipc	ra,0x0
    80003778:	930080e7          	jalr	-1744(ra) # 800030a4 <consputc>
    8000377c:	000c8513          	mv	a0,s9
    80003780:	00000097          	auipc	ra,0x0
    80003784:	924080e7          	jalr	-1756(ra) # 800030a4 <consputc>
    80003788:	f41ff06f          	j	800036c8 <__printf+0x440>
    8000378c:	02500513          	li	a0,37
    80003790:	00000097          	auipc	ra,0x0
    80003794:	914080e7          	jalr	-1772(ra) # 800030a4 <consputc>
    80003798:	f31ff06f          	j	800036c8 <__printf+0x440>
    8000379c:	00030513          	mv	a0,t1
    800037a0:	00000097          	auipc	ra,0x0
    800037a4:	7bc080e7          	jalr	1980(ra) # 80003f5c <acquire>
    800037a8:	b4dff06f          	j	800032f4 <__printf+0x6c>
    800037ac:	40c0053b          	negw	a0,a2
    800037b0:	00a00713          	li	a4,10
    800037b4:	02e576bb          	remuw	a3,a0,a4
    800037b8:	00002d97          	auipc	s11,0x2
    800037bc:	c58d8d93          	addi	s11,s11,-936 # 80005410 <digits>
    800037c0:	ff700593          	li	a1,-9
    800037c4:	02069693          	slli	a3,a3,0x20
    800037c8:	0206d693          	srli	a3,a3,0x20
    800037cc:	00dd86b3          	add	a3,s11,a3
    800037d0:	0006c683          	lbu	a3,0(a3)
    800037d4:	02e557bb          	divuw	a5,a0,a4
    800037d8:	f8d40023          	sb	a3,-128(s0)
    800037dc:	10b65e63          	bge	a2,a1,800038f8 <__printf+0x670>
    800037e0:	06300593          	li	a1,99
    800037e4:	02e7f6bb          	remuw	a3,a5,a4
    800037e8:	02069693          	slli	a3,a3,0x20
    800037ec:	0206d693          	srli	a3,a3,0x20
    800037f0:	00dd86b3          	add	a3,s11,a3
    800037f4:	0006c683          	lbu	a3,0(a3)
    800037f8:	02e7d73b          	divuw	a4,a5,a4
    800037fc:	00200793          	li	a5,2
    80003800:	f8d400a3          	sb	a3,-127(s0)
    80003804:	bca5ece3          	bltu	a1,a0,800033dc <__printf+0x154>
    80003808:	ce5ff06f          	j	800034ec <__printf+0x264>
    8000380c:	40e007bb          	negw	a5,a4
    80003810:	00002d97          	auipc	s11,0x2
    80003814:	c00d8d93          	addi	s11,s11,-1024 # 80005410 <digits>
    80003818:	00f7f693          	andi	a3,a5,15
    8000381c:	00dd86b3          	add	a3,s11,a3
    80003820:	0006c583          	lbu	a1,0(a3)
    80003824:	ff100613          	li	a2,-15
    80003828:	0047d69b          	srliw	a3,a5,0x4
    8000382c:	f8b40023          	sb	a1,-128(s0)
    80003830:	0047d59b          	srliw	a1,a5,0x4
    80003834:	0ac75e63          	bge	a4,a2,800038f0 <__printf+0x668>
    80003838:	00f6f693          	andi	a3,a3,15
    8000383c:	00dd86b3          	add	a3,s11,a3
    80003840:	0006c603          	lbu	a2,0(a3)
    80003844:	00f00693          	li	a3,15
    80003848:	0087d79b          	srliw	a5,a5,0x8
    8000384c:	f8c400a3          	sb	a2,-127(s0)
    80003850:	d8b6e4e3          	bltu	a3,a1,800035d8 <__printf+0x350>
    80003854:	00200793          	li	a5,2
    80003858:	e2dff06f          	j	80003684 <__printf+0x3fc>
    8000385c:	00002c97          	auipc	s9,0x2
    80003860:	b94c8c93          	addi	s9,s9,-1132 # 800053f0 <_ZZ12printIntegermE6digits+0x148>
    80003864:	02800513          	li	a0,40
    80003868:	ef1ff06f          	j	80003758 <__printf+0x4d0>
    8000386c:	00700793          	li	a5,7
    80003870:	00600c93          	li	s9,6
    80003874:	e0dff06f          	j	80003680 <__printf+0x3f8>
    80003878:	00700793          	li	a5,7
    8000387c:	00600c93          	li	s9,6
    80003880:	c69ff06f          	j	800034e8 <__printf+0x260>
    80003884:	00300793          	li	a5,3
    80003888:	00200c93          	li	s9,2
    8000388c:	c5dff06f          	j	800034e8 <__printf+0x260>
    80003890:	00300793          	li	a5,3
    80003894:	00200c93          	li	s9,2
    80003898:	de9ff06f          	j	80003680 <__printf+0x3f8>
    8000389c:	00400793          	li	a5,4
    800038a0:	00300c93          	li	s9,3
    800038a4:	dddff06f          	j	80003680 <__printf+0x3f8>
    800038a8:	00400793          	li	a5,4
    800038ac:	00300c93          	li	s9,3
    800038b0:	c39ff06f          	j	800034e8 <__printf+0x260>
    800038b4:	00500793          	li	a5,5
    800038b8:	00400c93          	li	s9,4
    800038bc:	c2dff06f          	j	800034e8 <__printf+0x260>
    800038c0:	00500793          	li	a5,5
    800038c4:	00400c93          	li	s9,4
    800038c8:	db9ff06f          	j	80003680 <__printf+0x3f8>
    800038cc:	00600793          	li	a5,6
    800038d0:	00500c93          	li	s9,5
    800038d4:	dadff06f          	j	80003680 <__printf+0x3f8>
    800038d8:	00600793          	li	a5,6
    800038dc:	00500c93          	li	s9,5
    800038e0:	c09ff06f          	j	800034e8 <__printf+0x260>
    800038e4:	00800793          	li	a5,8
    800038e8:	00700c93          	li	s9,7
    800038ec:	bfdff06f          	j	800034e8 <__printf+0x260>
    800038f0:	00100793          	li	a5,1
    800038f4:	d91ff06f          	j	80003684 <__printf+0x3fc>
    800038f8:	00100793          	li	a5,1
    800038fc:	bf1ff06f          	j	800034ec <__printf+0x264>
    80003900:	00900793          	li	a5,9
    80003904:	00800c93          	li	s9,8
    80003908:	be1ff06f          	j	800034e8 <__printf+0x260>
    8000390c:	00002517          	auipc	a0,0x2
    80003910:	aec50513          	addi	a0,a0,-1300 # 800053f8 <_ZZ12printIntegermE6digits+0x150>
    80003914:	00000097          	auipc	ra,0x0
    80003918:	918080e7          	jalr	-1768(ra) # 8000322c <panic>

000000008000391c <printfinit>:
    8000391c:	fe010113          	addi	sp,sp,-32
    80003920:	00813823          	sd	s0,16(sp)
    80003924:	00913423          	sd	s1,8(sp)
    80003928:	00113c23          	sd	ra,24(sp)
    8000392c:	02010413          	addi	s0,sp,32
    80003930:	00003497          	auipc	s1,0x3
    80003934:	5d048493          	addi	s1,s1,1488 # 80006f00 <pr>
    80003938:	00048513          	mv	a0,s1
    8000393c:	00002597          	auipc	a1,0x2
    80003940:	acc58593          	addi	a1,a1,-1332 # 80005408 <_ZZ12printIntegermE6digits+0x160>
    80003944:	00000097          	auipc	ra,0x0
    80003948:	5f4080e7          	jalr	1524(ra) # 80003f38 <initlock>
    8000394c:	01813083          	ld	ra,24(sp)
    80003950:	01013403          	ld	s0,16(sp)
    80003954:	0004ac23          	sw	zero,24(s1)
    80003958:	00813483          	ld	s1,8(sp)
    8000395c:	02010113          	addi	sp,sp,32
    80003960:	00008067          	ret

0000000080003964 <uartinit>:
    80003964:	ff010113          	addi	sp,sp,-16
    80003968:	00813423          	sd	s0,8(sp)
    8000396c:	01010413          	addi	s0,sp,16
    80003970:	100007b7          	lui	a5,0x10000
    80003974:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003978:	f8000713          	li	a4,-128
    8000397c:	00e781a3          	sb	a4,3(a5)
    80003980:	00300713          	li	a4,3
    80003984:	00e78023          	sb	a4,0(a5)
    80003988:	000780a3          	sb	zero,1(a5)
    8000398c:	00e781a3          	sb	a4,3(a5)
    80003990:	00700693          	li	a3,7
    80003994:	00d78123          	sb	a3,2(a5)
    80003998:	00e780a3          	sb	a4,1(a5)
    8000399c:	00813403          	ld	s0,8(sp)
    800039a0:	01010113          	addi	sp,sp,16
    800039a4:	00008067          	ret

00000000800039a8 <uartputc>:
    800039a8:	00002797          	auipc	a5,0x2
    800039ac:	2f07a783          	lw	a5,752(a5) # 80005c98 <panicked>
    800039b0:	00078463          	beqz	a5,800039b8 <uartputc+0x10>
    800039b4:	0000006f          	j	800039b4 <uartputc+0xc>
    800039b8:	fd010113          	addi	sp,sp,-48
    800039bc:	02813023          	sd	s0,32(sp)
    800039c0:	00913c23          	sd	s1,24(sp)
    800039c4:	01213823          	sd	s2,16(sp)
    800039c8:	01313423          	sd	s3,8(sp)
    800039cc:	02113423          	sd	ra,40(sp)
    800039d0:	03010413          	addi	s0,sp,48
    800039d4:	00002917          	auipc	s2,0x2
    800039d8:	2cc90913          	addi	s2,s2,716 # 80005ca0 <uart_tx_r>
    800039dc:	00093783          	ld	a5,0(s2)
    800039e0:	00002497          	auipc	s1,0x2
    800039e4:	2c848493          	addi	s1,s1,712 # 80005ca8 <uart_tx_w>
    800039e8:	0004b703          	ld	a4,0(s1)
    800039ec:	02078693          	addi	a3,a5,32
    800039f0:	00050993          	mv	s3,a0
    800039f4:	02e69c63          	bne	a3,a4,80003a2c <uartputc+0x84>
    800039f8:	00001097          	auipc	ra,0x1
    800039fc:	834080e7          	jalr	-1996(ra) # 8000422c <push_on>
    80003a00:	00093783          	ld	a5,0(s2)
    80003a04:	0004b703          	ld	a4,0(s1)
    80003a08:	02078793          	addi	a5,a5,32
    80003a0c:	00e79463          	bne	a5,a4,80003a14 <uartputc+0x6c>
    80003a10:	0000006f          	j	80003a10 <uartputc+0x68>
    80003a14:	00001097          	auipc	ra,0x1
    80003a18:	88c080e7          	jalr	-1908(ra) # 800042a0 <pop_on>
    80003a1c:	00093783          	ld	a5,0(s2)
    80003a20:	0004b703          	ld	a4,0(s1)
    80003a24:	02078693          	addi	a3,a5,32
    80003a28:	fce688e3          	beq	a3,a4,800039f8 <uartputc+0x50>
    80003a2c:	01f77693          	andi	a3,a4,31
    80003a30:	00003597          	auipc	a1,0x3
    80003a34:	4f058593          	addi	a1,a1,1264 # 80006f20 <uart_tx_buf>
    80003a38:	00d586b3          	add	a3,a1,a3
    80003a3c:	00170713          	addi	a4,a4,1
    80003a40:	01368023          	sb	s3,0(a3)
    80003a44:	00e4b023          	sd	a4,0(s1)
    80003a48:	10000637          	lui	a2,0x10000
    80003a4c:	02f71063          	bne	a4,a5,80003a6c <uartputc+0xc4>
    80003a50:	0340006f          	j	80003a84 <uartputc+0xdc>
    80003a54:	00074703          	lbu	a4,0(a4)
    80003a58:	00f93023          	sd	a5,0(s2)
    80003a5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003a60:	00093783          	ld	a5,0(s2)
    80003a64:	0004b703          	ld	a4,0(s1)
    80003a68:	00f70e63          	beq	a4,a5,80003a84 <uartputc+0xdc>
    80003a6c:	00564683          	lbu	a3,5(a2)
    80003a70:	01f7f713          	andi	a4,a5,31
    80003a74:	00e58733          	add	a4,a1,a4
    80003a78:	0206f693          	andi	a3,a3,32
    80003a7c:	00178793          	addi	a5,a5,1
    80003a80:	fc069ae3          	bnez	a3,80003a54 <uartputc+0xac>
    80003a84:	02813083          	ld	ra,40(sp)
    80003a88:	02013403          	ld	s0,32(sp)
    80003a8c:	01813483          	ld	s1,24(sp)
    80003a90:	01013903          	ld	s2,16(sp)
    80003a94:	00813983          	ld	s3,8(sp)
    80003a98:	03010113          	addi	sp,sp,48
    80003a9c:	00008067          	ret

0000000080003aa0 <uartputc_sync>:
    80003aa0:	ff010113          	addi	sp,sp,-16
    80003aa4:	00813423          	sd	s0,8(sp)
    80003aa8:	01010413          	addi	s0,sp,16
    80003aac:	00002717          	auipc	a4,0x2
    80003ab0:	1ec72703          	lw	a4,492(a4) # 80005c98 <panicked>
    80003ab4:	02071663          	bnez	a4,80003ae0 <uartputc_sync+0x40>
    80003ab8:	00050793          	mv	a5,a0
    80003abc:	100006b7          	lui	a3,0x10000
    80003ac0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003ac4:	02077713          	andi	a4,a4,32
    80003ac8:	fe070ce3          	beqz	a4,80003ac0 <uartputc_sync+0x20>
    80003acc:	0ff7f793          	andi	a5,a5,255
    80003ad0:	00f68023          	sb	a5,0(a3)
    80003ad4:	00813403          	ld	s0,8(sp)
    80003ad8:	01010113          	addi	sp,sp,16
    80003adc:	00008067          	ret
    80003ae0:	0000006f          	j	80003ae0 <uartputc_sync+0x40>

0000000080003ae4 <uartstart>:
    80003ae4:	ff010113          	addi	sp,sp,-16
    80003ae8:	00813423          	sd	s0,8(sp)
    80003aec:	01010413          	addi	s0,sp,16
    80003af0:	00002617          	auipc	a2,0x2
    80003af4:	1b060613          	addi	a2,a2,432 # 80005ca0 <uart_tx_r>
    80003af8:	00002517          	auipc	a0,0x2
    80003afc:	1b050513          	addi	a0,a0,432 # 80005ca8 <uart_tx_w>
    80003b00:	00063783          	ld	a5,0(a2)
    80003b04:	00053703          	ld	a4,0(a0)
    80003b08:	04f70263          	beq	a4,a5,80003b4c <uartstart+0x68>
    80003b0c:	100005b7          	lui	a1,0x10000
    80003b10:	00003817          	auipc	a6,0x3
    80003b14:	41080813          	addi	a6,a6,1040 # 80006f20 <uart_tx_buf>
    80003b18:	01c0006f          	j	80003b34 <uartstart+0x50>
    80003b1c:	0006c703          	lbu	a4,0(a3)
    80003b20:	00f63023          	sd	a5,0(a2)
    80003b24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003b28:	00063783          	ld	a5,0(a2)
    80003b2c:	00053703          	ld	a4,0(a0)
    80003b30:	00f70e63          	beq	a4,a5,80003b4c <uartstart+0x68>
    80003b34:	01f7f713          	andi	a4,a5,31
    80003b38:	00e806b3          	add	a3,a6,a4
    80003b3c:	0055c703          	lbu	a4,5(a1)
    80003b40:	00178793          	addi	a5,a5,1
    80003b44:	02077713          	andi	a4,a4,32
    80003b48:	fc071ae3          	bnez	a4,80003b1c <uartstart+0x38>
    80003b4c:	00813403          	ld	s0,8(sp)
    80003b50:	01010113          	addi	sp,sp,16
    80003b54:	00008067          	ret

0000000080003b58 <uartgetc>:
    80003b58:	ff010113          	addi	sp,sp,-16
    80003b5c:	00813423          	sd	s0,8(sp)
    80003b60:	01010413          	addi	s0,sp,16
    80003b64:	10000737          	lui	a4,0x10000
    80003b68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003b6c:	0017f793          	andi	a5,a5,1
    80003b70:	00078c63          	beqz	a5,80003b88 <uartgetc+0x30>
    80003b74:	00074503          	lbu	a0,0(a4)
    80003b78:	0ff57513          	andi	a0,a0,255
    80003b7c:	00813403          	ld	s0,8(sp)
    80003b80:	01010113          	addi	sp,sp,16
    80003b84:	00008067          	ret
    80003b88:	fff00513          	li	a0,-1
    80003b8c:	ff1ff06f          	j	80003b7c <uartgetc+0x24>

0000000080003b90 <uartintr>:
    80003b90:	100007b7          	lui	a5,0x10000
    80003b94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003b98:	0017f793          	andi	a5,a5,1
    80003b9c:	0a078463          	beqz	a5,80003c44 <uartintr+0xb4>
    80003ba0:	fe010113          	addi	sp,sp,-32
    80003ba4:	00813823          	sd	s0,16(sp)
    80003ba8:	00913423          	sd	s1,8(sp)
    80003bac:	00113c23          	sd	ra,24(sp)
    80003bb0:	02010413          	addi	s0,sp,32
    80003bb4:	100004b7          	lui	s1,0x10000
    80003bb8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003bbc:	0ff57513          	andi	a0,a0,255
    80003bc0:	fffff097          	auipc	ra,0xfffff
    80003bc4:	534080e7          	jalr	1332(ra) # 800030f4 <consoleintr>
    80003bc8:	0054c783          	lbu	a5,5(s1)
    80003bcc:	0017f793          	andi	a5,a5,1
    80003bd0:	fe0794e3          	bnez	a5,80003bb8 <uartintr+0x28>
    80003bd4:	00002617          	auipc	a2,0x2
    80003bd8:	0cc60613          	addi	a2,a2,204 # 80005ca0 <uart_tx_r>
    80003bdc:	00002517          	auipc	a0,0x2
    80003be0:	0cc50513          	addi	a0,a0,204 # 80005ca8 <uart_tx_w>
    80003be4:	00063783          	ld	a5,0(a2)
    80003be8:	00053703          	ld	a4,0(a0)
    80003bec:	04f70263          	beq	a4,a5,80003c30 <uartintr+0xa0>
    80003bf0:	100005b7          	lui	a1,0x10000
    80003bf4:	00003817          	auipc	a6,0x3
    80003bf8:	32c80813          	addi	a6,a6,812 # 80006f20 <uart_tx_buf>
    80003bfc:	01c0006f          	j	80003c18 <uartintr+0x88>
    80003c00:	0006c703          	lbu	a4,0(a3)
    80003c04:	00f63023          	sd	a5,0(a2)
    80003c08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003c0c:	00063783          	ld	a5,0(a2)
    80003c10:	00053703          	ld	a4,0(a0)
    80003c14:	00f70e63          	beq	a4,a5,80003c30 <uartintr+0xa0>
    80003c18:	01f7f713          	andi	a4,a5,31
    80003c1c:	00e806b3          	add	a3,a6,a4
    80003c20:	0055c703          	lbu	a4,5(a1)
    80003c24:	00178793          	addi	a5,a5,1
    80003c28:	02077713          	andi	a4,a4,32
    80003c2c:	fc071ae3          	bnez	a4,80003c00 <uartintr+0x70>
    80003c30:	01813083          	ld	ra,24(sp)
    80003c34:	01013403          	ld	s0,16(sp)
    80003c38:	00813483          	ld	s1,8(sp)
    80003c3c:	02010113          	addi	sp,sp,32
    80003c40:	00008067          	ret
    80003c44:	00002617          	auipc	a2,0x2
    80003c48:	05c60613          	addi	a2,a2,92 # 80005ca0 <uart_tx_r>
    80003c4c:	00002517          	auipc	a0,0x2
    80003c50:	05c50513          	addi	a0,a0,92 # 80005ca8 <uart_tx_w>
    80003c54:	00063783          	ld	a5,0(a2)
    80003c58:	00053703          	ld	a4,0(a0)
    80003c5c:	04f70263          	beq	a4,a5,80003ca0 <uartintr+0x110>
    80003c60:	100005b7          	lui	a1,0x10000
    80003c64:	00003817          	auipc	a6,0x3
    80003c68:	2bc80813          	addi	a6,a6,700 # 80006f20 <uart_tx_buf>
    80003c6c:	01c0006f          	j	80003c88 <uartintr+0xf8>
    80003c70:	0006c703          	lbu	a4,0(a3)
    80003c74:	00f63023          	sd	a5,0(a2)
    80003c78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003c7c:	00063783          	ld	a5,0(a2)
    80003c80:	00053703          	ld	a4,0(a0)
    80003c84:	02f70063          	beq	a4,a5,80003ca4 <uartintr+0x114>
    80003c88:	01f7f713          	andi	a4,a5,31
    80003c8c:	00e806b3          	add	a3,a6,a4
    80003c90:	0055c703          	lbu	a4,5(a1)
    80003c94:	00178793          	addi	a5,a5,1
    80003c98:	02077713          	andi	a4,a4,32
    80003c9c:	fc071ae3          	bnez	a4,80003c70 <uartintr+0xe0>
    80003ca0:	00008067          	ret
    80003ca4:	00008067          	ret

0000000080003ca8 <kinit>:
    80003ca8:	fc010113          	addi	sp,sp,-64
    80003cac:	02913423          	sd	s1,40(sp)
    80003cb0:	fffff7b7          	lui	a5,0xfffff
    80003cb4:	00004497          	auipc	s1,0x4
    80003cb8:	29b48493          	addi	s1,s1,667 # 80007f4f <end+0xfff>
    80003cbc:	02813823          	sd	s0,48(sp)
    80003cc0:	01313c23          	sd	s3,24(sp)
    80003cc4:	00f4f4b3          	and	s1,s1,a5
    80003cc8:	02113c23          	sd	ra,56(sp)
    80003ccc:	03213023          	sd	s2,32(sp)
    80003cd0:	01413823          	sd	s4,16(sp)
    80003cd4:	01513423          	sd	s5,8(sp)
    80003cd8:	04010413          	addi	s0,sp,64
    80003cdc:	000017b7          	lui	a5,0x1
    80003ce0:	01100993          	li	s3,17
    80003ce4:	00f487b3          	add	a5,s1,a5
    80003ce8:	01b99993          	slli	s3,s3,0x1b
    80003cec:	06f9e063          	bltu	s3,a5,80003d4c <kinit+0xa4>
    80003cf0:	00003a97          	auipc	s5,0x3
    80003cf4:	260a8a93          	addi	s5,s5,608 # 80006f50 <end>
    80003cf8:	0754ec63          	bltu	s1,s5,80003d70 <kinit+0xc8>
    80003cfc:	0734fa63          	bgeu	s1,s3,80003d70 <kinit+0xc8>
    80003d00:	00088a37          	lui	s4,0x88
    80003d04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003d08:	00002917          	auipc	s2,0x2
    80003d0c:	fa890913          	addi	s2,s2,-88 # 80005cb0 <kmem>
    80003d10:	00ca1a13          	slli	s4,s4,0xc
    80003d14:	0140006f          	j	80003d28 <kinit+0x80>
    80003d18:	000017b7          	lui	a5,0x1
    80003d1c:	00f484b3          	add	s1,s1,a5
    80003d20:	0554e863          	bltu	s1,s5,80003d70 <kinit+0xc8>
    80003d24:	0534f663          	bgeu	s1,s3,80003d70 <kinit+0xc8>
    80003d28:	00001637          	lui	a2,0x1
    80003d2c:	00100593          	li	a1,1
    80003d30:	00048513          	mv	a0,s1
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	5e4080e7          	jalr	1508(ra) # 80004318 <__memset>
    80003d3c:	00093783          	ld	a5,0(s2)
    80003d40:	00f4b023          	sd	a5,0(s1)
    80003d44:	00993023          	sd	s1,0(s2)
    80003d48:	fd4498e3          	bne	s1,s4,80003d18 <kinit+0x70>
    80003d4c:	03813083          	ld	ra,56(sp)
    80003d50:	03013403          	ld	s0,48(sp)
    80003d54:	02813483          	ld	s1,40(sp)
    80003d58:	02013903          	ld	s2,32(sp)
    80003d5c:	01813983          	ld	s3,24(sp)
    80003d60:	01013a03          	ld	s4,16(sp)
    80003d64:	00813a83          	ld	s5,8(sp)
    80003d68:	04010113          	addi	sp,sp,64
    80003d6c:	00008067          	ret
    80003d70:	00001517          	auipc	a0,0x1
    80003d74:	6b850513          	addi	a0,a0,1720 # 80005428 <digits+0x18>
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	4b4080e7          	jalr	1204(ra) # 8000322c <panic>

0000000080003d80 <freerange>:
    80003d80:	fc010113          	addi	sp,sp,-64
    80003d84:	000017b7          	lui	a5,0x1
    80003d88:	02913423          	sd	s1,40(sp)
    80003d8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003d90:	009504b3          	add	s1,a0,s1
    80003d94:	fffff537          	lui	a0,0xfffff
    80003d98:	02813823          	sd	s0,48(sp)
    80003d9c:	02113c23          	sd	ra,56(sp)
    80003da0:	03213023          	sd	s2,32(sp)
    80003da4:	01313c23          	sd	s3,24(sp)
    80003da8:	01413823          	sd	s4,16(sp)
    80003dac:	01513423          	sd	s5,8(sp)
    80003db0:	01613023          	sd	s6,0(sp)
    80003db4:	04010413          	addi	s0,sp,64
    80003db8:	00a4f4b3          	and	s1,s1,a0
    80003dbc:	00f487b3          	add	a5,s1,a5
    80003dc0:	06f5e463          	bltu	a1,a5,80003e28 <freerange+0xa8>
    80003dc4:	00003a97          	auipc	s5,0x3
    80003dc8:	18ca8a93          	addi	s5,s5,396 # 80006f50 <end>
    80003dcc:	0954e263          	bltu	s1,s5,80003e50 <freerange+0xd0>
    80003dd0:	01100993          	li	s3,17
    80003dd4:	01b99993          	slli	s3,s3,0x1b
    80003dd8:	0734fc63          	bgeu	s1,s3,80003e50 <freerange+0xd0>
    80003ddc:	00058a13          	mv	s4,a1
    80003de0:	00002917          	auipc	s2,0x2
    80003de4:	ed090913          	addi	s2,s2,-304 # 80005cb0 <kmem>
    80003de8:	00002b37          	lui	s6,0x2
    80003dec:	0140006f          	j	80003e00 <freerange+0x80>
    80003df0:	000017b7          	lui	a5,0x1
    80003df4:	00f484b3          	add	s1,s1,a5
    80003df8:	0554ec63          	bltu	s1,s5,80003e50 <freerange+0xd0>
    80003dfc:	0534fa63          	bgeu	s1,s3,80003e50 <freerange+0xd0>
    80003e00:	00001637          	lui	a2,0x1
    80003e04:	00100593          	li	a1,1
    80003e08:	00048513          	mv	a0,s1
    80003e0c:	00000097          	auipc	ra,0x0
    80003e10:	50c080e7          	jalr	1292(ra) # 80004318 <__memset>
    80003e14:	00093703          	ld	a4,0(s2)
    80003e18:	016487b3          	add	a5,s1,s6
    80003e1c:	00e4b023          	sd	a4,0(s1)
    80003e20:	00993023          	sd	s1,0(s2)
    80003e24:	fcfa76e3          	bgeu	s4,a5,80003df0 <freerange+0x70>
    80003e28:	03813083          	ld	ra,56(sp)
    80003e2c:	03013403          	ld	s0,48(sp)
    80003e30:	02813483          	ld	s1,40(sp)
    80003e34:	02013903          	ld	s2,32(sp)
    80003e38:	01813983          	ld	s3,24(sp)
    80003e3c:	01013a03          	ld	s4,16(sp)
    80003e40:	00813a83          	ld	s5,8(sp)
    80003e44:	00013b03          	ld	s6,0(sp)
    80003e48:	04010113          	addi	sp,sp,64
    80003e4c:	00008067          	ret
    80003e50:	00001517          	auipc	a0,0x1
    80003e54:	5d850513          	addi	a0,a0,1496 # 80005428 <digits+0x18>
    80003e58:	fffff097          	auipc	ra,0xfffff
    80003e5c:	3d4080e7          	jalr	980(ra) # 8000322c <panic>

0000000080003e60 <kfree>:
    80003e60:	fe010113          	addi	sp,sp,-32
    80003e64:	00813823          	sd	s0,16(sp)
    80003e68:	00113c23          	sd	ra,24(sp)
    80003e6c:	00913423          	sd	s1,8(sp)
    80003e70:	02010413          	addi	s0,sp,32
    80003e74:	03451793          	slli	a5,a0,0x34
    80003e78:	04079c63          	bnez	a5,80003ed0 <kfree+0x70>
    80003e7c:	00003797          	auipc	a5,0x3
    80003e80:	0d478793          	addi	a5,a5,212 # 80006f50 <end>
    80003e84:	00050493          	mv	s1,a0
    80003e88:	04f56463          	bltu	a0,a5,80003ed0 <kfree+0x70>
    80003e8c:	01100793          	li	a5,17
    80003e90:	01b79793          	slli	a5,a5,0x1b
    80003e94:	02f57e63          	bgeu	a0,a5,80003ed0 <kfree+0x70>
    80003e98:	00001637          	lui	a2,0x1
    80003e9c:	00100593          	li	a1,1
    80003ea0:	00000097          	auipc	ra,0x0
    80003ea4:	478080e7          	jalr	1144(ra) # 80004318 <__memset>
    80003ea8:	00002797          	auipc	a5,0x2
    80003eac:	e0878793          	addi	a5,a5,-504 # 80005cb0 <kmem>
    80003eb0:	0007b703          	ld	a4,0(a5)
    80003eb4:	01813083          	ld	ra,24(sp)
    80003eb8:	01013403          	ld	s0,16(sp)
    80003ebc:	00e4b023          	sd	a4,0(s1)
    80003ec0:	0097b023          	sd	s1,0(a5)
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	02010113          	addi	sp,sp,32
    80003ecc:	00008067          	ret
    80003ed0:	00001517          	auipc	a0,0x1
    80003ed4:	55850513          	addi	a0,a0,1368 # 80005428 <digits+0x18>
    80003ed8:	fffff097          	auipc	ra,0xfffff
    80003edc:	354080e7          	jalr	852(ra) # 8000322c <panic>

0000000080003ee0 <kalloc>:
    80003ee0:	fe010113          	addi	sp,sp,-32
    80003ee4:	00813823          	sd	s0,16(sp)
    80003ee8:	00913423          	sd	s1,8(sp)
    80003eec:	00113c23          	sd	ra,24(sp)
    80003ef0:	02010413          	addi	s0,sp,32
    80003ef4:	00002797          	auipc	a5,0x2
    80003ef8:	dbc78793          	addi	a5,a5,-580 # 80005cb0 <kmem>
    80003efc:	0007b483          	ld	s1,0(a5)
    80003f00:	02048063          	beqz	s1,80003f20 <kalloc+0x40>
    80003f04:	0004b703          	ld	a4,0(s1)
    80003f08:	00001637          	lui	a2,0x1
    80003f0c:	00500593          	li	a1,5
    80003f10:	00048513          	mv	a0,s1
    80003f14:	00e7b023          	sd	a4,0(a5)
    80003f18:	00000097          	auipc	ra,0x0
    80003f1c:	400080e7          	jalr	1024(ra) # 80004318 <__memset>
    80003f20:	01813083          	ld	ra,24(sp)
    80003f24:	01013403          	ld	s0,16(sp)
    80003f28:	00048513          	mv	a0,s1
    80003f2c:	00813483          	ld	s1,8(sp)
    80003f30:	02010113          	addi	sp,sp,32
    80003f34:	00008067          	ret

0000000080003f38 <initlock>:
    80003f38:	ff010113          	addi	sp,sp,-16
    80003f3c:	00813423          	sd	s0,8(sp)
    80003f40:	01010413          	addi	s0,sp,16
    80003f44:	00813403          	ld	s0,8(sp)
    80003f48:	00b53423          	sd	a1,8(a0)
    80003f4c:	00052023          	sw	zero,0(a0)
    80003f50:	00053823          	sd	zero,16(a0)
    80003f54:	01010113          	addi	sp,sp,16
    80003f58:	00008067          	ret

0000000080003f5c <acquire>:
    80003f5c:	fe010113          	addi	sp,sp,-32
    80003f60:	00813823          	sd	s0,16(sp)
    80003f64:	00913423          	sd	s1,8(sp)
    80003f68:	00113c23          	sd	ra,24(sp)
    80003f6c:	01213023          	sd	s2,0(sp)
    80003f70:	02010413          	addi	s0,sp,32
    80003f74:	00050493          	mv	s1,a0
    80003f78:	10002973          	csrr	s2,sstatus
    80003f7c:	100027f3          	csrr	a5,sstatus
    80003f80:	ffd7f793          	andi	a5,a5,-3
    80003f84:	10079073          	csrw	sstatus,a5
    80003f88:	fffff097          	auipc	ra,0xfffff
    80003f8c:	8e0080e7          	jalr	-1824(ra) # 80002868 <mycpu>
    80003f90:	07852783          	lw	a5,120(a0)
    80003f94:	06078e63          	beqz	a5,80004010 <acquire+0xb4>
    80003f98:	fffff097          	auipc	ra,0xfffff
    80003f9c:	8d0080e7          	jalr	-1840(ra) # 80002868 <mycpu>
    80003fa0:	07852783          	lw	a5,120(a0)
    80003fa4:	0004a703          	lw	a4,0(s1)
    80003fa8:	0017879b          	addiw	a5,a5,1
    80003fac:	06f52c23          	sw	a5,120(a0)
    80003fb0:	04071063          	bnez	a4,80003ff0 <acquire+0x94>
    80003fb4:	00100713          	li	a4,1
    80003fb8:	00070793          	mv	a5,a4
    80003fbc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003fc0:	0007879b          	sext.w	a5,a5
    80003fc4:	fe079ae3          	bnez	a5,80003fb8 <acquire+0x5c>
    80003fc8:	0ff0000f          	fence
    80003fcc:	fffff097          	auipc	ra,0xfffff
    80003fd0:	89c080e7          	jalr	-1892(ra) # 80002868 <mycpu>
    80003fd4:	01813083          	ld	ra,24(sp)
    80003fd8:	01013403          	ld	s0,16(sp)
    80003fdc:	00a4b823          	sd	a0,16(s1)
    80003fe0:	00013903          	ld	s2,0(sp)
    80003fe4:	00813483          	ld	s1,8(sp)
    80003fe8:	02010113          	addi	sp,sp,32
    80003fec:	00008067          	ret
    80003ff0:	0104b903          	ld	s2,16(s1)
    80003ff4:	fffff097          	auipc	ra,0xfffff
    80003ff8:	874080e7          	jalr	-1932(ra) # 80002868 <mycpu>
    80003ffc:	faa91ce3          	bne	s2,a0,80003fb4 <acquire+0x58>
    80004000:	00001517          	auipc	a0,0x1
    80004004:	43050513          	addi	a0,a0,1072 # 80005430 <digits+0x20>
    80004008:	fffff097          	auipc	ra,0xfffff
    8000400c:	224080e7          	jalr	548(ra) # 8000322c <panic>
    80004010:	00195913          	srli	s2,s2,0x1
    80004014:	fffff097          	auipc	ra,0xfffff
    80004018:	854080e7          	jalr	-1964(ra) # 80002868 <mycpu>
    8000401c:	00197913          	andi	s2,s2,1
    80004020:	07252e23          	sw	s2,124(a0)
    80004024:	f75ff06f          	j	80003f98 <acquire+0x3c>

0000000080004028 <release>:
    80004028:	fe010113          	addi	sp,sp,-32
    8000402c:	00813823          	sd	s0,16(sp)
    80004030:	00113c23          	sd	ra,24(sp)
    80004034:	00913423          	sd	s1,8(sp)
    80004038:	01213023          	sd	s2,0(sp)
    8000403c:	02010413          	addi	s0,sp,32
    80004040:	00052783          	lw	a5,0(a0)
    80004044:	00079a63          	bnez	a5,80004058 <release+0x30>
    80004048:	00001517          	auipc	a0,0x1
    8000404c:	3f050513          	addi	a0,a0,1008 # 80005438 <digits+0x28>
    80004050:	fffff097          	auipc	ra,0xfffff
    80004054:	1dc080e7          	jalr	476(ra) # 8000322c <panic>
    80004058:	01053903          	ld	s2,16(a0)
    8000405c:	00050493          	mv	s1,a0
    80004060:	fffff097          	auipc	ra,0xfffff
    80004064:	808080e7          	jalr	-2040(ra) # 80002868 <mycpu>
    80004068:	fea910e3          	bne	s2,a0,80004048 <release+0x20>
    8000406c:	0004b823          	sd	zero,16(s1)
    80004070:	0ff0000f          	fence
    80004074:	0f50000f          	fence	iorw,ow
    80004078:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	7ec080e7          	jalr	2028(ra) # 80002868 <mycpu>
    80004084:	100027f3          	csrr	a5,sstatus
    80004088:	0027f793          	andi	a5,a5,2
    8000408c:	04079a63          	bnez	a5,800040e0 <release+0xb8>
    80004090:	07852783          	lw	a5,120(a0)
    80004094:	02f05e63          	blez	a5,800040d0 <release+0xa8>
    80004098:	fff7871b          	addiw	a4,a5,-1
    8000409c:	06e52c23          	sw	a4,120(a0)
    800040a0:	00071c63          	bnez	a4,800040b8 <release+0x90>
    800040a4:	07c52783          	lw	a5,124(a0)
    800040a8:	00078863          	beqz	a5,800040b8 <release+0x90>
    800040ac:	100027f3          	csrr	a5,sstatus
    800040b0:	0027e793          	ori	a5,a5,2
    800040b4:	10079073          	csrw	sstatus,a5
    800040b8:	01813083          	ld	ra,24(sp)
    800040bc:	01013403          	ld	s0,16(sp)
    800040c0:	00813483          	ld	s1,8(sp)
    800040c4:	00013903          	ld	s2,0(sp)
    800040c8:	02010113          	addi	sp,sp,32
    800040cc:	00008067          	ret
    800040d0:	00001517          	auipc	a0,0x1
    800040d4:	38850513          	addi	a0,a0,904 # 80005458 <digits+0x48>
    800040d8:	fffff097          	auipc	ra,0xfffff
    800040dc:	154080e7          	jalr	340(ra) # 8000322c <panic>
    800040e0:	00001517          	auipc	a0,0x1
    800040e4:	36050513          	addi	a0,a0,864 # 80005440 <digits+0x30>
    800040e8:	fffff097          	auipc	ra,0xfffff
    800040ec:	144080e7          	jalr	324(ra) # 8000322c <panic>

00000000800040f0 <holding>:
    800040f0:	00052783          	lw	a5,0(a0)
    800040f4:	00079663          	bnez	a5,80004100 <holding+0x10>
    800040f8:	00000513          	li	a0,0
    800040fc:	00008067          	ret
    80004100:	fe010113          	addi	sp,sp,-32
    80004104:	00813823          	sd	s0,16(sp)
    80004108:	00913423          	sd	s1,8(sp)
    8000410c:	00113c23          	sd	ra,24(sp)
    80004110:	02010413          	addi	s0,sp,32
    80004114:	01053483          	ld	s1,16(a0)
    80004118:	ffffe097          	auipc	ra,0xffffe
    8000411c:	750080e7          	jalr	1872(ra) # 80002868 <mycpu>
    80004120:	01813083          	ld	ra,24(sp)
    80004124:	01013403          	ld	s0,16(sp)
    80004128:	40a48533          	sub	a0,s1,a0
    8000412c:	00153513          	seqz	a0,a0
    80004130:	00813483          	ld	s1,8(sp)
    80004134:	02010113          	addi	sp,sp,32
    80004138:	00008067          	ret

000000008000413c <push_off>:
    8000413c:	fe010113          	addi	sp,sp,-32
    80004140:	00813823          	sd	s0,16(sp)
    80004144:	00113c23          	sd	ra,24(sp)
    80004148:	00913423          	sd	s1,8(sp)
    8000414c:	02010413          	addi	s0,sp,32
    80004150:	100024f3          	csrr	s1,sstatus
    80004154:	100027f3          	csrr	a5,sstatus
    80004158:	ffd7f793          	andi	a5,a5,-3
    8000415c:	10079073          	csrw	sstatus,a5
    80004160:	ffffe097          	auipc	ra,0xffffe
    80004164:	708080e7          	jalr	1800(ra) # 80002868 <mycpu>
    80004168:	07852783          	lw	a5,120(a0)
    8000416c:	02078663          	beqz	a5,80004198 <push_off+0x5c>
    80004170:	ffffe097          	auipc	ra,0xffffe
    80004174:	6f8080e7          	jalr	1784(ra) # 80002868 <mycpu>
    80004178:	07852783          	lw	a5,120(a0)
    8000417c:	01813083          	ld	ra,24(sp)
    80004180:	01013403          	ld	s0,16(sp)
    80004184:	0017879b          	addiw	a5,a5,1
    80004188:	06f52c23          	sw	a5,120(a0)
    8000418c:	00813483          	ld	s1,8(sp)
    80004190:	02010113          	addi	sp,sp,32
    80004194:	00008067          	ret
    80004198:	0014d493          	srli	s1,s1,0x1
    8000419c:	ffffe097          	auipc	ra,0xffffe
    800041a0:	6cc080e7          	jalr	1740(ra) # 80002868 <mycpu>
    800041a4:	0014f493          	andi	s1,s1,1
    800041a8:	06952e23          	sw	s1,124(a0)
    800041ac:	fc5ff06f          	j	80004170 <push_off+0x34>

00000000800041b0 <pop_off>:
    800041b0:	ff010113          	addi	sp,sp,-16
    800041b4:	00813023          	sd	s0,0(sp)
    800041b8:	00113423          	sd	ra,8(sp)
    800041bc:	01010413          	addi	s0,sp,16
    800041c0:	ffffe097          	auipc	ra,0xffffe
    800041c4:	6a8080e7          	jalr	1704(ra) # 80002868 <mycpu>
    800041c8:	100027f3          	csrr	a5,sstatus
    800041cc:	0027f793          	andi	a5,a5,2
    800041d0:	04079663          	bnez	a5,8000421c <pop_off+0x6c>
    800041d4:	07852783          	lw	a5,120(a0)
    800041d8:	02f05a63          	blez	a5,8000420c <pop_off+0x5c>
    800041dc:	fff7871b          	addiw	a4,a5,-1
    800041e0:	06e52c23          	sw	a4,120(a0)
    800041e4:	00071c63          	bnez	a4,800041fc <pop_off+0x4c>
    800041e8:	07c52783          	lw	a5,124(a0)
    800041ec:	00078863          	beqz	a5,800041fc <pop_off+0x4c>
    800041f0:	100027f3          	csrr	a5,sstatus
    800041f4:	0027e793          	ori	a5,a5,2
    800041f8:	10079073          	csrw	sstatus,a5
    800041fc:	00813083          	ld	ra,8(sp)
    80004200:	00013403          	ld	s0,0(sp)
    80004204:	01010113          	addi	sp,sp,16
    80004208:	00008067          	ret
    8000420c:	00001517          	auipc	a0,0x1
    80004210:	24c50513          	addi	a0,a0,588 # 80005458 <digits+0x48>
    80004214:	fffff097          	auipc	ra,0xfffff
    80004218:	018080e7          	jalr	24(ra) # 8000322c <panic>
    8000421c:	00001517          	auipc	a0,0x1
    80004220:	22450513          	addi	a0,a0,548 # 80005440 <digits+0x30>
    80004224:	fffff097          	auipc	ra,0xfffff
    80004228:	008080e7          	jalr	8(ra) # 8000322c <panic>

000000008000422c <push_on>:
    8000422c:	fe010113          	addi	sp,sp,-32
    80004230:	00813823          	sd	s0,16(sp)
    80004234:	00113c23          	sd	ra,24(sp)
    80004238:	00913423          	sd	s1,8(sp)
    8000423c:	02010413          	addi	s0,sp,32
    80004240:	100024f3          	csrr	s1,sstatus
    80004244:	100027f3          	csrr	a5,sstatus
    80004248:	0027e793          	ori	a5,a5,2
    8000424c:	10079073          	csrw	sstatus,a5
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	618080e7          	jalr	1560(ra) # 80002868 <mycpu>
    80004258:	07852783          	lw	a5,120(a0)
    8000425c:	02078663          	beqz	a5,80004288 <push_on+0x5c>
    80004260:	ffffe097          	auipc	ra,0xffffe
    80004264:	608080e7          	jalr	1544(ra) # 80002868 <mycpu>
    80004268:	07852783          	lw	a5,120(a0)
    8000426c:	01813083          	ld	ra,24(sp)
    80004270:	01013403          	ld	s0,16(sp)
    80004274:	0017879b          	addiw	a5,a5,1
    80004278:	06f52c23          	sw	a5,120(a0)
    8000427c:	00813483          	ld	s1,8(sp)
    80004280:	02010113          	addi	sp,sp,32
    80004284:	00008067          	ret
    80004288:	0014d493          	srli	s1,s1,0x1
    8000428c:	ffffe097          	auipc	ra,0xffffe
    80004290:	5dc080e7          	jalr	1500(ra) # 80002868 <mycpu>
    80004294:	0014f493          	andi	s1,s1,1
    80004298:	06952e23          	sw	s1,124(a0)
    8000429c:	fc5ff06f          	j	80004260 <push_on+0x34>

00000000800042a0 <pop_on>:
    800042a0:	ff010113          	addi	sp,sp,-16
    800042a4:	00813023          	sd	s0,0(sp)
    800042a8:	00113423          	sd	ra,8(sp)
    800042ac:	01010413          	addi	s0,sp,16
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	5b8080e7          	jalr	1464(ra) # 80002868 <mycpu>
    800042b8:	100027f3          	csrr	a5,sstatus
    800042bc:	0027f793          	andi	a5,a5,2
    800042c0:	04078463          	beqz	a5,80004308 <pop_on+0x68>
    800042c4:	07852783          	lw	a5,120(a0)
    800042c8:	02f05863          	blez	a5,800042f8 <pop_on+0x58>
    800042cc:	fff7879b          	addiw	a5,a5,-1
    800042d0:	06f52c23          	sw	a5,120(a0)
    800042d4:	07853783          	ld	a5,120(a0)
    800042d8:	00079863          	bnez	a5,800042e8 <pop_on+0x48>
    800042dc:	100027f3          	csrr	a5,sstatus
    800042e0:	ffd7f793          	andi	a5,a5,-3
    800042e4:	10079073          	csrw	sstatus,a5
    800042e8:	00813083          	ld	ra,8(sp)
    800042ec:	00013403          	ld	s0,0(sp)
    800042f0:	01010113          	addi	sp,sp,16
    800042f4:	00008067          	ret
    800042f8:	00001517          	auipc	a0,0x1
    800042fc:	18850513          	addi	a0,a0,392 # 80005480 <digits+0x70>
    80004300:	fffff097          	auipc	ra,0xfffff
    80004304:	f2c080e7          	jalr	-212(ra) # 8000322c <panic>
    80004308:	00001517          	auipc	a0,0x1
    8000430c:	15850513          	addi	a0,a0,344 # 80005460 <digits+0x50>
    80004310:	fffff097          	auipc	ra,0xfffff
    80004314:	f1c080e7          	jalr	-228(ra) # 8000322c <panic>

0000000080004318 <__memset>:
    80004318:	ff010113          	addi	sp,sp,-16
    8000431c:	00813423          	sd	s0,8(sp)
    80004320:	01010413          	addi	s0,sp,16
    80004324:	1a060e63          	beqz	a2,800044e0 <__memset+0x1c8>
    80004328:	40a007b3          	neg	a5,a0
    8000432c:	0077f793          	andi	a5,a5,7
    80004330:	00778693          	addi	a3,a5,7
    80004334:	00b00813          	li	a6,11
    80004338:	0ff5f593          	andi	a1,a1,255
    8000433c:	fff6071b          	addiw	a4,a2,-1
    80004340:	1b06e663          	bltu	a3,a6,800044ec <__memset+0x1d4>
    80004344:	1cd76463          	bltu	a4,a3,8000450c <__memset+0x1f4>
    80004348:	1a078e63          	beqz	a5,80004504 <__memset+0x1ec>
    8000434c:	00b50023          	sb	a1,0(a0)
    80004350:	00100713          	li	a4,1
    80004354:	1ae78463          	beq	a5,a4,800044fc <__memset+0x1e4>
    80004358:	00b500a3          	sb	a1,1(a0)
    8000435c:	00200713          	li	a4,2
    80004360:	1ae78a63          	beq	a5,a4,80004514 <__memset+0x1fc>
    80004364:	00b50123          	sb	a1,2(a0)
    80004368:	00300713          	li	a4,3
    8000436c:	18e78463          	beq	a5,a4,800044f4 <__memset+0x1dc>
    80004370:	00b501a3          	sb	a1,3(a0)
    80004374:	00400713          	li	a4,4
    80004378:	1ae78263          	beq	a5,a4,8000451c <__memset+0x204>
    8000437c:	00b50223          	sb	a1,4(a0)
    80004380:	00500713          	li	a4,5
    80004384:	1ae78063          	beq	a5,a4,80004524 <__memset+0x20c>
    80004388:	00b502a3          	sb	a1,5(a0)
    8000438c:	00700713          	li	a4,7
    80004390:	18e79e63          	bne	a5,a4,8000452c <__memset+0x214>
    80004394:	00b50323          	sb	a1,6(a0)
    80004398:	00700e93          	li	t4,7
    8000439c:	00859713          	slli	a4,a1,0x8
    800043a0:	00e5e733          	or	a4,a1,a4
    800043a4:	01059e13          	slli	t3,a1,0x10
    800043a8:	01c76e33          	or	t3,a4,t3
    800043ac:	01859313          	slli	t1,a1,0x18
    800043b0:	006e6333          	or	t1,t3,t1
    800043b4:	02059893          	slli	a7,a1,0x20
    800043b8:	40f60e3b          	subw	t3,a2,a5
    800043bc:	011368b3          	or	a7,t1,a7
    800043c0:	02859813          	slli	a6,a1,0x28
    800043c4:	0108e833          	or	a6,a7,a6
    800043c8:	03059693          	slli	a3,a1,0x30
    800043cc:	003e589b          	srliw	a7,t3,0x3
    800043d0:	00d866b3          	or	a3,a6,a3
    800043d4:	03859713          	slli	a4,a1,0x38
    800043d8:	00389813          	slli	a6,a7,0x3
    800043dc:	00f507b3          	add	a5,a0,a5
    800043e0:	00e6e733          	or	a4,a3,a4
    800043e4:	000e089b          	sext.w	a7,t3
    800043e8:	00f806b3          	add	a3,a6,a5
    800043ec:	00e7b023          	sd	a4,0(a5)
    800043f0:	00878793          	addi	a5,a5,8
    800043f4:	fed79ce3          	bne	a5,a3,800043ec <__memset+0xd4>
    800043f8:	ff8e7793          	andi	a5,t3,-8
    800043fc:	0007871b          	sext.w	a4,a5
    80004400:	01d787bb          	addw	a5,a5,t4
    80004404:	0ce88e63          	beq	a7,a4,800044e0 <__memset+0x1c8>
    80004408:	00f50733          	add	a4,a0,a5
    8000440c:	00b70023          	sb	a1,0(a4)
    80004410:	0017871b          	addiw	a4,a5,1
    80004414:	0cc77663          	bgeu	a4,a2,800044e0 <__memset+0x1c8>
    80004418:	00e50733          	add	a4,a0,a4
    8000441c:	00b70023          	sb	a1,0(a4)
    80004420:	0027871b          	addiw	a4,a5,2
    80004424:	0ac77e63          	bgeu	a4,a2,800044e0 <__memset+0x1c8>
    80004428:	00e50733          	add	a4,a0,a4
    8000442c:	00b70023          	sb	a1,0(a4)
    80004430:	0037871b          	addiw	a4,a5,3
    80004434:	0ac77663          	bgeu	a4,a2,800044e0 <__memset+0x1c8>
    80004438:	00e50733          	add	a4,a0,a4
    8000443c:	00b70023          	sb	a1,0(a4)
    80004440:	0047871b          	addiw	a4,a5,4
    80004444:	08c77e63          	bgeu	a4,a2,800044e0 <__memset+0x1c8>
    80004448:	00e50733          	add	a4,a0,a4
    8000444c:	00b70023          	sb	a1,0(a4)
    80004450:	0057871b          	addiw	a4,a5,5
    80004454:	08c77663          	bgeu	a4,a2,800044e0 <__memset+0x1c8>
    80004458:	00e50733          	add	a4,a0,a4
    8000445c:	00b70023          	sb	a1,0(a4)
    80004460:	0067871b          	addiw	a4,a5,6
    80004464:	06c77e63          	bgeu	a4,a2,800044e0 <__memset+0x1c8>
    80004468:	00e50733          	add	a4,a0,a4
    8000446c:	00b70023          	sb	a1,0(a4)
    80004470:	0077871b          	addiw	a4,a5,7
    80004474:	06c77663          	bgeu	a4,a2,800044e0 <__memset+0x1c8>
    80004478:	00e50733          	add	a4,a0,a4
    8000447c:	00b70023          	sb	a1,0(a4)
    80004480:	0087871b          	addiw	a4,a5,8
    80004484:	04c77e63          	bgeu	a4,a2,800044e0 <__memset+0x1c8>
    80004488:	00e50733          	add	a4,a0,a4
    8000448c:	00b70023          	sb	a1,0(a4)
    80004490:	0097871b          	addiw	a4,a5,9
    80004494:	04c77663          	bgeu	a4,a2,800044e0 <__memset+0x1c8>
    80004498:	00e50733          	add	a4,a0,a4
    8000449c:	00b70023          	sb	a1,0(a4)
    800044a0:	00a7871b          	addiw	a4,a5,10
    800044a4:	02c77e63          	bgeu	a4,a2,800044e0 <__memset+0x1c8>
    800044a8:	00e50733          	add	a4,a0,a4
    800044ac:	00b70023          	sb	a1,0(a4)
    800044b0:	00b7871b          	addiw	a4,a5,11
    800044b4:	02c77663          	bgeu	a4,a2,800044e0 <__memset+0x1c8>
    800044b8:	00e50733          	add	a4,a0,a4
    800044bc:	00b70023          	sb	a1,0(a4)
    800044c0:	00c7871b          	addiw	a4,a5,12
    800044c4:	00c77e63          	bgeu	a4,a2,800044e0 <__memset+0x1c8>
    800044c8:	00e50733          	add	a4,a0,a4
    800044cc:	00b70023          	sb	a1,0(a4)
    800044d0:	00d7879b          	addiw	a5,a5,13
    800044d4:	00c7f663          	bgeu	a5,a2,800044e0 <__memset+0x1c8>
    800044d8:	00f507b3          	add	a5,a0,a5
    800044dc:	00b78023          	sb	a1,0(a5)
    800044e0:	00813403          	ld	s0,8(sp)
    800044e4:	01010113          	addi	sp,sp,16
    800044e8:	00008067          	ret
    800044ec:	00b00693          	li	a3,11
    800044f0:	e55ff06f          	j	80004344 <__memset+0x2c>
    800044f4:	00300e93          	li	t4,3
    800044f8:	ea5ff06f          	j	8000439c <__memset+0x84>
    800044fc:	00100e93          	li	t4,1
    80004500:	e9dff06f          	j	8000439c <__memset+0x84>
    80004504:	00000e93          	li	t4,0
    80004508:	e95ff06f          	j	8000439c <__memset+0x84>
    8000450c:	00000793          	li	a5,0
    80004510:	ef9ff06f          	j	80004408 <__memset+0xf0>
    80004514:	00200e93          	li	t4,2
    80004518:	e85ff06f          	j	8000439c <__memset+0x84>
    8000451c:	00400e93          	li	t4,4
    80004520:	e7dff06f          	j	8000439c <__memset+0x84>
    80004524:	00500e93          	li	t4,5
    80004528:	e75ff06f          	j	8000439c <__memset+0x84>
    8000452c:	00600e93          	li	t4,6
    80004530:	e6dff06f          	j	8000439c <__memset+0x84>

0000000080004534 <__memmove>:
    80004534:	ff010113          	addi	sp,sp,-16
    80004538:	00813423          	sd	s0,8(sp)
    8000453c:	01010413          	addi	s0,sp,16
    80004540:	0e060863          	beqz	a2,80004630 <__memmove+0xfc>
    80004544:	fff6069b          	addiw	a3,a2,-1
    80004548:	0006881b          	sext.w	a6,a3
    8000454c:	0ea5e863          	bltu	a1,a0,8000463c <__memmove+0x108>
    80004550:	00758713          	addi	a4,a1,7
    80004554:	00a5e7b3          	or	a5,a1,a0
    80004558:	40a70733          	sub	a4,a4,a0
    8000455c:	0077f793          	andi	a5,a5,7
    80004560:	00f73713          	sltiu	a4,a4,15
    80004564:	00174713          	xori	a4,a4,1
    80004568:	0017b793          	seqz	a5,a5
    8000456c:	00e7f7b3          	and	a5,a5,a4
    80004570:	10078863          	beqz	a5,80004680 <__memmove+0x14c>
    80004574:	00900793          	li	a5,9
    80004578:	1107f463          	bgeu	a5,a6,80004680 <__memmove+0x14c>
    8000457c:	0036581b          	srliw	a6,a2,0x3
    80004580:	fff8081b          	addiw	a6,a6,-1
    80004584:	02081813          	slli	a6,a6,0x20
    80004588:	01d85893          	srli	a7,a6,0x1d
    8000458c:	00858813          	addi	a6,a1,8
    80004590:	00058793          	mv	a5,a1
    80004594:	00050713          	mv	a4,a0
    80004598:	01088833          	add	a6,a7,a6
    8000459c:	0007b883          	ld	a7,0(a5)
    800045a0:	00878793          	addi	a5,a5,8
    800045a4:	00870713          	addi	a4,a4,8
    800045a8:	ff173c23          	sd	a7,-8(a4)
    800045ac:	ff0798e3          	bne	a5,a6,8000459c <__memmove+0x68>
    800045b0:	ff867713          	andi	a4,a2,-8
    800045b4:	02071793          	slli	a5,a4,0x20
    800045b8:	0207d793          	srli	a5,a5,0x20
    800045bc:	00f585b3          	add	a1,a1,a5
    800045c0:	40e686bb          	subw	a3,a3,a4
    800045c4:	00f507b3          	add	a5,a0,a5
    800045c8:	06e60463          	beq	a2,a4,80004630 <__memmove+0xfc>
    800045cc:	0005c703          	lbu	a4,0(a1)
    800045d0:	00e78023          	sb	a4,0(a5)
    800045d4:	04068e63          	beqz	a3,80004630 <__memmove+0xfc>
    800045d8:	0015c603          	lbu	a2,1(a1)
    800045dc:	00100713          	li	a4,1
    800045e0:	00c780a3          	sb	a2,1(a5)
    800045e4:	04e68663          	beq	a3,a4,80004630 <__memmove+0xfc>
    800045e8:	0025c603          	lbu	a2,2(a1)
    800045ec:	00200713          	li	a4,2
    800045f0:	00c78123          	sb	a2,2(a5)
    800045f4:	02e68e63          	beq	a3,a4,80004630 <__memmove+0xfc>
    800045f8:	0035c603          	lbu	a2,3(a1)
    800045fc:	00300713          	li	a4,3
    80004600:	00c781a3          	sb	a2,3(a5)
    80004604:	02e68663          	beq	a3,a4,80004630 <__memmove+0xfc>
    80004608:	0045c603          	lbu	a2,4(a1)
    8000460c:	00400713          	li	a4,4
    80004610:	00c78223          	sb	a2,4(a5)
    80004614:	00e68e63          	beq	a3,a4,80004630 <__memmove+0xfc>
    80004618:	0055c603          	lbu	a2,5(a1)
    8000461c:	00500713          	li	a4,5
    80004620:	00c782a3          	sb	a2,5(a5)
    80004624:	00e68663          	beq	a3,a4,80004630 <__memmove+0xfc>
    80004628:	0065c703          	lbu	a4,6(a1)
    8000462c:	00e78323          	sb	a4,6(a5)
    80004630:	00813403          	ld	s0,8(sp)
    80004634:	01010113          	addi	sp,sp,16
    80004638:	00008067          	ret
    8000463c:	02061713          	slli	a4,a2,0x20
    80004640:	02075713          	srli	a4,a4,0x20
    80004644:	00e587b3          	add	a5,a1,a4
    80004648:	f0f574e3          	bgeu	a0,a5,80004550 <__memmove+0x1c>
    8000464c:	02069613          	slli	a2,a3,0x20
    80004650:	02065613          	srli	a2,a2,0x20
    80004654:	fff64613          	not	a2,a2
    80004658:	00e50733          	add	a4,a0,a4
    8000465c:	00c78633          	add	a2,a5,a2
    80004660:	fff7c683          	lbu	a3,-1(a5)
    80004664:	fff78793          	addi	a5,a5,-1
    80004668:	fff70713          	addi	a4,a4,-1
    8000466c:	00d70023          	sb	a3,0(a4)
    80004670:	fec798e3          	bne	a5,a2,80004660 <__memmove+0x12c>
    80004674:	00813403          	ld	s0,8(sp)
    80004678:	01010113          	addi	sp,sp,16
    8000467c:	00008067          	ret
    80004680:	02069713          	slli	a4,a3,0x20
    80004684:	02075713          	srli	a4,a4,0x20
    80004688:	00170713          	addi	a4,a4,1
    8000468c:	00e50733          	add	a4,a0,a4
    80004690:	00050793          	mv	a5,a0
    80004694:	0005c683          	lbu	a3,0(a1)
    80004698:	00178793          	addi	a5,a5,1
    8000469c:	00158593          	addi	a1,a1,1
    800046a0:	fed78fa3          	sb	a3,-1(a5)
    800046a4:	fee798e3          	bne	a5,a4,80004694 <__memmove+0x160>
    800046a8:	f89ff06f          	j	80004630 <__memmove+0xfc>

00000000800046ac <__mem_free>:
    800046ac:	ff010113          	addi	sp,sp,-16
    800046b0:	00813423          	sd	s0,8(sp)
    800046b4:	01010413          	addi	s0,sp,16
    800046b8:	00001597          	auipc	a1,0x1
    800046bc:	60058593          	addi	a1,a1,1536 # 80005cb8 <freep>
    800046c0:	0005b783          	ld	a5,0(a1)
    800046c4:	ff050693          	addi	a3,a0,-16
    800046c8:	0007b703          	ld	a4,0(a5)
    800046cc:	00d7fc63          	bgeu	a5,a3,800046e4 <__mem_free+0x38>
    800046d0:	00e6ee63          	bltu	a3,a4,800046ec <__mem_free+0x40>
    800046d4:	00e7fc63          	bgeu	a5,a4,800046ec <__mem_free+0x40>
    800046d8:	00070793          	mv	a5,a4
    800046dc:	0007b703          	ld	a4,0(a5)
    800046e0:	fed7e8e3          	bltu	a5,a3,800046d0 <__mem_free+0x24>
    800046e4:	fee7eae3          	bltu	a5,a4,800046d8 <__mem_free+0x2c>
    800046e8:	fee6f8e3          	bgeu	a3,a4,800046d8 <__mem_free+0x2c>
    800046ec:	ff852803          	lw	a6,-8(a0)
    800046f0:	02081613          	slli	a2,a6,0x20
    800046f4:	01c65613          	srli	a2,a2,0x1c
    800046f8:	00c68633          	add	a2,a3,a2
    800046fc:	02c70a63          	beq	a4,a2,80004730 <__mem_free+0x84>
    80004700:	fee53823          	sd	a4,-16(a0)
    80004704:	0087a503          	lw	a0,8(a5)
    80004708:	02051613          	slli	a2,a0,0x20
    8000470c:	01c65613          	srli	a2,a2,0x1c
    80004710:	00c78633          	add	a2,a5,a2
    80004714:	04c68263          	beq	a3,a2,80004758 <__mem_free+0xac>
    80004718:	00813403          	ld	s0,8(sp)
    8000471c:	00d7b023          	sd	a3,0(a5)
    80004720:	00f5b023          	sd	a5,0(a1)
    80004724:	00000513          	li	a0,0
    80004728:	01010113          	addi	sp,sp,16
    8000472c:	00008067          	ret
    80004730:	00872603          	lw	a2,8(a4)
    80004734:	00073703          	ld	a4,0(a4)
    80004738:	0106083b          	addw	a6,a2,a6
    8000473c:	ff052c23          	sw	a6,-8(a0)
    80004740:	fee53823          	sd	a4,-16(a0)
    80004744:	0087a503          	lw	a0,8(a5)
    80004748:	02051613          	slli	a2,a0,0x20
    8000474c:	01c65613          	srli	a2,a2,0x1c
    80004750:	00c78633          	add	a2,a5,a2
    80004754:	fcc692e3          	bne	a3,a2,80004718 <__mem_free+0x6c>
    80004758:	00813403          	ld	s0,8(sp)
    8000475c:	0105053b          	addw	a0,a0,a6
    80004760:	00a7a423          	sw	a0,8(a5)
    80004764:	00e7b023          	sd	a4,0(a5)
    80004768:	00f5b023          	sd	a5,0(a1)
    8000476c:	00000513          	li	a0,0
    80004770:	01010113          	addi	sp,sp,16
    80004774:	00008067          	ret

0000000080004778 <__mem_alloc>:
    80004778:	fc010113          	addi	sp,sp,-64
    8000477c:	02813823          	sd	s0,48(sp)
    80004780:	02913423          	sd	s1,40(sp)
    80004784:	03213023          	sd	s2,32(sp)
    80004788:	01513423          	sd	s5,8(sp)
    8000478c:	02113c23          	sd	ra,56(sp)
    80004790:	01313c23          	sd	s3,24(sp)
    80004794:	01413823          	sd	s4,16(sp)
    80004798:	01613023          	sd	s6,0(sp)
    8000479c:	04010413          	addi	s0,sp,64
    800047a0:	00001a97          	auipc	s5,0x1
    800047a4:	518a8a93          	addi	s5,s5,1304 # 80005cb8 <freep>
    800047a8:	00f50913          	addi	s2,a0,15
    800047ac:	000ab683          	ld	a3,0(s5)
    800047b0:	00495913          	srli	s2,s2,0x4
    800047b4:	0019049b          	addiw	s1,s2,1
    800047b8:	00048913          	mv	s2,s1
    800047bc:	0c068c63          	beqz	a3,80004894 <__mem_alloc+0x11c>
    800047c0:	0006b503          	ld	a0,0(a3)
    800047c4:	00852703          	lw	a4,8(a0)
    800047c8:	10977063          	bgeu	a4,s1,800048c8 <__mem_alloc+0x150>
    800047cc:	000017b7          	lui	a5,0x1
    800047d0:	0009099b          	sext.w	s3,s2
    800047d4:	0af4e863          	bltu	s1,a5,80004884 <__mem_alloc+0x10c>
    800047d8:	02099a13          	slli	s4,s3,0x20
    800047dc:	01ca5a13          	srli	s4,s4,0x1c
    800047e0:	fff00b13          	li	s6,-1
    800047e4:	0100006f          	j	800047f4 <__mem_alloc+0x7c>
    800047e8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800047ec:	00852703          	lw	a4,8(a0)
    800047f0:	04977463          	bgeu	a4,s1,80004838 <__mem_alloc+0xc0>
    800047f4:	00050793          	mv	a5,a0
    800047f8:	fea698e3          	bne	a3,a0,800047e8 <__mem_alloc+0x70>
    800047fc:	000a0513          	mv	a0,s4
    80004800:	00000097          	auipc	ra,0x0
    80004804:	1f0080e7          	jalr	496(ra) # 800049f0 <kvmincrease>
    80004808:	00050793          	mv	a5,a0
    8000480c:	01050513          	addi	a0,a0,16
    80004810:	07678e63          	beq	a5,s6,8000488c <__mem_alloc+0x114>
    80004814:	0137a423          	sw	s3,8(a5)
    80004818:	00000097          	auipc	ra,0x0
    8000481c:	e94080e7          	jalr	-364(ra) # 800046ac <__mem_free>
    80004820:	000ab783          	ld	a5,0(s5)
    80004824:	06078463          	beqz	a5,8000488c <__mem_alloc+0x114>
    80004828:	0007b503          	ld	a0,0(a5)
    8000482c:	00078693          	mv	a3,a5
    80004830:	00852703          	lw	a4,8(a0)
    80004834:	fc9760e3          	bltu	a4,s1,800047f4 <__mem_alloc+0x7c>
    80004838:	08e48263          	beq	s1,a4,800048bc <__mem_alloc+0x144>
    8000483c:	4127073b          	subw	a4,a4,s2
    80004840:	02071693          	slli	a3,a4,0x20
    80004844:	01c6d693          	srli	a3,a3,0x1c
    80004848:	00e52423          	sw	a4,8(a0)
    8000484c:	00d50533          	add	a0,a0,a3
    80004850:	01252423          	sw	s2,8(a0)
    80004854:	00fab023          	sd	a5,0(s5)
    80004858:	01050513          	addi	a0,a0,16
    8000485c:	03813083          	ld	ra,56(sp)
    80004860:	03013403          	ld	s0,48(sp)
    80004864:	02813483          	ld	s1,40(sp)
    80004868:	02013903          	ld	s2,32(sp)
    8000486c:	01813983          	ld	s3,24(sp)
    80004870:	01013a03          	ld	s4,16(sp)
    80004874:	00813a83          	ld	s5,8(sp)
    80004878:	00013b03          	ld	s6,0(sp)
    8000487c:	04010113          	addi	sp,sp,64
    80004880:	00008067          	ret
    80004884:	000019b7          	lui	s3,0x1
    80004888:	f51ff06f          	j	800047d8 <__mem_alloc+0x60>
    8000488c:	00000513          	li	a0,0
    80004890:	fcdff06f          	j	8000485c <__mem_alloc+0xe4>
    80004894:	00002797          	auipc	a5,0x2
    80004898:	6ac78793          	addi	a5,a5,1708 # 80006f40 <base>
    8000489c:	00078513          	mv	a0,a5
    800048a0:	00fab023          	sd	a5,0(s5)
    800048a4:	00f7b023          	sd	a5,0(a5)
    800048a8:	00000713          	li	a4,0
    800048ac:	00002797          	auipc	a5,0x2
    800048b0:	6807ae23          	sw	zero,1692(a5) # 80006f48 <base+0x8>
    800048b4:	00050693          	mv	a3,a0
    800048b8:	f11ff06f          	j	800047c8 <__mem_alloc+0x50>
    800048bc:	00053703          	ld	a4,0(a0)
    800048c0:	00e7b023          	sd	a4,0(a5)
    800048c4:	f91ff06f          	j	80004854 <__mem_alloc+0xdc>
    800048c8:	00068793          	mv	a5,a3
    800048cc:	f6dff06f          	j	80004838 <__mem_alloc+0xc0>

00000000800048d0 <__putc>:
    800048d0:	fe010113          	addi	sp,sp,-32
    800048d4:	00813823          	sd	s0,16(sp)
    800048d8:	00113c23          	sd	ra,24(sp)
    800048dc:	02010413          	addi	s0,sp,32
    800048e0:	00050793          	mv	a5,a0
    800048e4:	fef40593          	addi	a1,s0,-17
    800048e8:	00100613          	li	a2,1
    800048ec:	00000513          	li	a0,0
    800048f0:	fef407a3          	sb	a5,-17(s0)
    800048f4:	fffff097          	auipc	ra,0xfffff
    800048f8:	918080e7          	jalr	-1768(ra) # 8000320c <console_write>
    800048fc:	01813083          	ld	ra,24(sp)
    80004900:	01013403          	ld	s0,16(sp)
    80004904:	02010113          	addi	sp,sp,32
    80004908:	00008067          	ret

000000008000490c <__getc>:
    8000490c:	fe010113          	addi	sp,sp,-32
    80004910:	00813823          	sd	s0,16(sp)
    80004914:	00113c23          	sd	ra,24(sp)
    80004918:	02010413          	addi	s0,sp,32
    8000491c:	fe840593          	addi	a1,s0,-24
    80004920:	00100613          	li	a2,1
    80004924:	00000513          	li	a0,0
    80004928:	fffff097          	auipc	ra,0xfffff
    8000492c:	8c4080e7          	jalr	-1852(ra) # 800031ec <console_read>
    80004930:	fe844503          	lbu	a0,-24(s0)
    80004934:	01813083          	ld	ra,24(sp)
    80004938:	01013403          	ld	s0,16(sp)
    8000493c:	02010113          	addi	sp,sp,32
    80004940:	00008067          	ret

0000000080004944 <console_handler>:
    80004944:	fe010113          	addi	sp,sp,-32
    80004948:	00813823          	sd	s0,16(sp)
    8000494c:	00113c23          	sd	ra,24(sp)
    80004950:	00913423          	sd	s1,8(sp)
    80004954:	02010413          	addi	s0,sp,32
    80004958:	14202773          	csrr	a4,scause
    8000495c:	100027f3          	csrr	a5,sstatus
    80004960:	0027f793          	andi	a5,a5,2
    80004964:	06079e63          	bnez	a5,800049e0 <console_handler+0x9c>
    80004968:	00074c63          	bltz	a4,80004980 <console_handler+0x3c>
    8000496c:	01813083          	ld	ra,24(sp)
    80004970:	01013403          	ld	s0,16(sp)
    80004974:	00813483          	ld	s1,8(sp)
    80004978:	02010113          	addi	sp,sp,32
    8000497c:	00008067          	ret
    80004980:	0ff77713          	andi	a4,a4,255
    80004984:	00900793          	li	a5,9
    80004988:	fef712e3          	bne	a4,a5,8000496c <console_handler+0x28>
    8000498c:	ffffe097          	auipc	ra,0xffffe
    80004990:	4b8080e7          	jalr	1208(ra) # 80002e44 <plic_claim>
    80004994:	00a00793          	li	a5,10
    80004998:	00050493          	mv	s1,a0
    8000499c:	02f50c63          	beq	a0,a5,800049d4 <console_handler+0x90>
    800049a0:	fc0506e3          	beqz	a0,8000496c <console_handler+0x28>
    800049a4:	00050593          	mv	a1,a0
    800049a8:	00001517          	auipc	a0,0x1
    800049ac:	9e050513          	addi	a0,a0,-1568 # 80005388 <_ZZ12printIntegermE6digits+0xe0>
    800049b0:	fffff097          	auipc	ra,0xfffff
    800049b4:	8d8080e7          	jalr	-1832(ra) # 80003288 <__printf>
    800049b8:	01013403          	ld	s0,16(sp)
    800049bc:	01813083          	ld	ra,24(sp)
    800049c0:	00048513          	mv	a0,s1
    800049c4:	00813483          	ld	s1,8(sp)
    800049c8:	02010113          	addi	sp,sp,32
    800049cc:	ffffe317          	auipc	t1,0xffffe
    800049d0:	4b030067          	jr	1200(t1) # 80002e7c <plic_complete>
    800049d4:	fffff097          	auipc	ra,0xfffff
    800049d8:	1bc080e7          	jalr	444(ra) # 80003b90 <uartintr>
    800049dc:	fddff06f          	j	800049b8 <console_handler+0x74>
    800049e0:	00001517          	auipc	a0,0x1
    800049e4:	aa850513          	addi	a0,a0,-1368 # 80005488 <digits+0x78>
    800049e8:	fffff097          	auipc	ra,0xfffff
    800049ec:	844080e7          	jalr	-1980(ra) # 8000322c <panic>

00000000800049f0 <kvmincrease>:
    800049f0:	fe010113          	addi	sp,sp,-32
    800049f4:	01213023          	sd	s2,0(sp)
    800049f8:	00001937          	lui	s2,0x1
    800049fc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004a00:	00813823          	sd	s0,16(sp)
    80004a04:	00113c23          	sd	ra,24(sp)
    80004a08:	00913423          	sd	s1,8(sp)
    80004a0c:	02010413          	addi	s0,sp,32
    80004a10:	01250933          	add	s2,a0,s2
    80004a14:	00c95913          	srli	s2,s2,0xc
    80004a18:	02090863          	beqz	s2,80004a48 <kvmincrease+0x58>
    80004a1c:	00000493          	li	s1,0
    80004a20:	00148493          	addi	s1,s1,1
    80004a24:	fffff097          	auipc	ra,0xfffff
    80004a28:	4bc080e7          	jalr	1212(ra) # 80003ee0 <kalloc>
    80004a2c:	fe991ae3          	bne	s2,s1,80004a20 <kvmincrease+0x30>
    80004a30:	01813083          	ld	ra,24(sp)
    80004a34:	01013403          	ld	s0,16(sp)
    80004a38:	00813483          	ld	s1,8(sp)
    80004a3c:	00013903          	ld	s2,0(sp)
    80004a40:	02010113          	addi	sp,sp,32
    80004a44:	00008067          	ret
    80004a48:	01813083          	ld	ra,24(sp)
    80004a4c:	01013403          	ld	s0,16(sp)
    80004a50:	00813483          	ld	s1,8(sp)
    80004a54:	00013903          	ld	s2,0(sp)
    80004a58:	00000513          	li	a0,0
    80004a5c:	02010113          	addi	sp,sp,32
    80004a60:	00008067          	ret
	...

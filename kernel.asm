
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
    8000001c:	094020ef          	jal	ra,800020b0 <start>

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
    80001084:	485000ef          	jal	ra,80001d08 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011e0:	329000ef          	jal	ra,80001d08 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012f0:	32d000ef          	jal	ra,80001e1c <_ZN5Riscv20handleTimerInterruptEv>

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
    80001400:	1f5000ef          	jal	ra,80001df4 <_ZN5Riscv22handleConsoleInterruptEv>

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

00000000800014cc <_Z15thread_dispatchv>:


void thread_dispatch() {
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00813423          	sd	s0,8(sp)
    800014d4:	01010413          	addi	s0,sp,16
    return a0;
}


inline void Riscv::w_a0(uint64 writeValue) {
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    800014d8:	01300793          	li	a5,19
    800014dc:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    800014e0:	00000073          	ecall

}
    800014e4:	00813403          	ld	s0,8(sp)
    800014e8:	01010113          	addi	sp,sp,16
    800014ec:	00008067          	ret

00000000800014f0 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    800014f0:	ff010113          	addi	sp,sp,-16
    800014f4:	00813423          	sd	s0,8(sp)
    800014f8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    800014fc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x14");
    80001500:	01400513          	li	a0,20
    __asm__ volatile ("ecall");
    80001504:	00000073          	ecall
    80001508:	00813403          	ld	s0,8(sp)
    8000150c:	01010113          	addi	sp,sp,16
    80001510:	00008067          	ret

0000000080001514 <_ZN11MySemaphore4waitEv>:
#include "../h/mySemaphore.hpp"
#include "../h/syscall_c.hpp"

int MySemaphore::wait() {
    if(--this->value < 0) {
    80001514:	00052783          	lw	a5,0(a0)
    80001518:	fff7879b          	addiw	a5,a5,-1
    8000151c:	00f52023          	sw	a5,0(a0)
    80001520:	02079713          	slli	a4,a5,0x20
    80001524:	00074663          	bltz	a4,80001530 <_ZN11MySemaphore4waitEv+0x1c>
        this->blocked.addLast(TCB::running);
        thread_dispatch(); //Ovde treba da se promeni kontekst
        return 0;
    }
    return 1;
    80001528:	00100513          	li	a0,1
}
    8000152c:	00008067          	ret
int MySemaphore::wait() {
    80001530:	fe010113          	addi	sp,sp,-32
    80001534:	00113c23          	sd	ra,24(sp)
    80001538:	00813823          	sd	s0,16(sp)
    8000153c:	00913423          	sd	s1,8(sp)
    80001540:	01213023          	sd	s2,0(sp)
    80001544:	02010413          	addi	s0,sp,32
    80001548:	00050493          	mv	s1,a0
        this->blocked.addLast(TCB::running);
    8000154c:	00004797          	auipc	a5,0x4
    80001550:	2cc7b783          	ld	a5,716(a5) # 80005818 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001554:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001558:	01000513          	li	a0,16
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	6ec080e7          	jalr	1772(ra) # 80001c48 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001564:	01253023          	sd	s2,0(a0)
    80001568:	00053423          	sd	zero,8(a0)
        if (tail)
    8000156c:	0104b783          	ld	a5,16(s1)
    80001570:	02078863          	beqz	a5,800015a0 <_ZN11MySemaphore4waitEv+0x8c>
        {
            tail->next = elem;
    80001574:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001578:	00a4b823          	sd	a0,16(s1)
        thread_dispatch(); //Ovde treba da se promeni kontekst
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	f50080e7          	jalr	-176(ra) # 800014cc <_Z15thread_dispatchv>
        return 0;
    80001584:	00000513          	li	a0,0
}
    80001588:	01813083          	ld	ra,24(sp)
    8000158c:	01013403          	ld	s0,16(sp)
    80001590:	00813483          	ld	s1,8(sp)
    80001594:	00013903          	ld	s2,0(sp)
    80001598:	02010113          	addi	sp,sp,32
    8000159c:	00008067          	ret
        } else
        {
            head = tail = elem;
    800015a0:	00a4b823          	sd	a0,16(s1)
    800015a4:	00a4b423          	sd	a0,8(s1)
    800015a8:	fd5ff06f          	j	8000157c <_ZN11MySemaphore4waitEv+0x68>

00000000800015ac <_ZN11MySemaphore6signalEv>:

int MySemaphore::signal() {
    if(++this->value <= 0) {
    800015ac:	00052783          	lw	a5,0(a0)
    800015b0:	0017879b          	addiw	a5,a5,1
    800015b4:	0007871b          	sext.w	a4,a5
    800015b8:	00f52023          	sw	a5,0(a0)
    800015bc:	00e05663          	blez	a4,800015c8 <_ZN11MySemaphore6signalEv+0x1c>
        TCB *tcb = this->blocked.removeFirst();
        Scheduler::put(tcb);
        return 0;
    }
    return 1;
    800015c0:	00100513          	li	a0,1
    800015c4:	00008067          	ret
int MySemaphore::signal() {
    800015c8:	fe010113          	addi	sp,sp,-32
    800015cc:	00113c23          	sd	ra,24(sp)
    800015d0:	00813823          	sd	s0,16(sp)
    800015d4:	00913423          	sd	s1,8(sp)
    800015d8:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800015dc:	00853783          	ld	a5,8(a0)
    800015e0:	04078663          	beqz	a5,8000162c <_ZN11MySemaphore6signalEv+0x80>

        Elem *elem = head;
        head = head->next;
    800015e4:	0087b703          	ld	a4,8(a5)
    800015e8:	00e53423          	sd	a4,8(a0)
        if (!head) { tail = 0; }
    800015ec:	02070c63          	beqz	a4,80001624 <_ZN11MySemaphore6signalEv+0x78>

        T *ret = elem->data;
    800015f0:	0007b483          	ld	s1,0(a5)
        delete elem;
    800015f4:	00078513          	mv	a0,a5
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	6a0080e7          	jalr	1696(ra) # 80001c98 <_ZdlPv>
        Scheduler::put(tcb);
    80001600:	00048513          	mv	a0,s1
    80001604:	00001097          	auipc	ra,0x1
    80001608:	8e0080e7          	jalr	-1824(ra) # 80001ee4 <_ZN9Scheduler3putEP3TCB>
        return 0;
    8000160c:	00000513          	li	a0,0
    80001610:	01813083          	ld	ra,24(sp)
    80001614:	01013403          	ld	s0,16(sp)
    80001618:	00813483          	ld	s1,8(sp)
    8000161c:	02010113          	addi	sp,sp,32
    80001620:	00008067          	ret
        if (!head) { tail = 0; }
    80001624:	00053823          	sd	zero,16(a0)
    80001628:	fc9ff06f          	j	800015f0 <_ZN11MySemaphore6signalEv+0x44>
        if (!head) { return 0; }
    8000162c:	00078493          	mv	s1,a5
    80001630:	fd1ff06f          	j	80001600 <_ZN11MySemaphore6signalEv+0x54>

0000000080001634 <_ZL9fibonaccim>:
#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

static uint64 fibonacci(uint64 n)
{
    80001634:	fe010113          	addi	sp,sp,-32
    80001638:	00113c23          	sd	ra,24(sp)
    8000163c:	00813823          	sd	s0,16(sp)
    80001640:	00913423          	sd	s1,8(sp)
    80001644:	01213023          	sd	s2,0(sp)
    80001648:	02010413          	addi	s0,sp,32
    8000164c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001650:	00100793          	li	a5,1
    80001654:	02a7f663          	bgeu	a5,a0,80001680 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) {
    80001658:	00357793          	andi	a5,a0,3
    8000165c:	02078e63          	beqz	a5,80001698 <_ZL9fibonaccim+0x64>
        //printString("fibonacci yield\n");
        thread_dispatch();
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001660:	fff48513          	addi	a0,s1,-1
    80001664:	00000097          	auipc	ra,0x0
    80001668:	fd0080e7          	jalr	-48(ra) # 80001634 <_ZL9fibonaccim>
    8000166c:	00050913          	mv	s2,a0
    80001670:	ffe48513          	addi	a0,s1,-2
    80001674:	00000097          	auipc	ra,0x0
    80001678:	fc0080e7          	jalr	-64(ra) # 80001634 <_ZL9fibonaccim>
    8000167c:	00a90533          	add	a0,s2,a0
}
    80001680:	01813083          	ld	ra,24(sp)
    80001684:	01013403          	ld	s0,16(sp)
    80001688:	00813483          	ld	s1,8(sp)
    8000168c:	00013903          	ld	s2,0(sp)
    80001690:	02010113          	addi	sp,sp,32
    80001694:	00008067          	ret
        thread_dispatch();
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	e34080e7          	jalr	-460(ra) # 800014cc <_Z15thread_dispatchv>
    800016a0:	fc1ff06f          	j	80001660 <_ZL9fibonaccim+0x2c>

00000000800016a4 <_Z11workerBodyAPv>:

void workerBodyA(void* arg)
{
    800016a4:	fe010113          	addi	sp,sp,-32
    800016a8:	00113c23          	sd	ra,24(sp)
    800016ac:	00813823          	sd	s0,16(sp)
    800016b0:	00913423          	sd	s1,8(sp)
    800016b4:	01213023          	sd	s2,0(sp)
    800016b8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800016bc:	00000493          	li	s1,0
    800016c0:	0380006f          	j	800016f8 <_Z11workerBodyAPv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800016c4:	00004517          	auipc	a0,0x4
    800016c8:	93c50513          	addi	a0,a0,-1732 # 80005000 <kvmincrease+0xb50>
    800016cc:	00001097          	auipc	ra,0x1
    800016d0:	8b8080e7          	jalr	-1864(ra) # 80001f84 <_Z11printStringPKc>
        printInteger(i);
    800016d4:	00048513          	mv	a0,s1
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	91c080e7          	jalr	-1764(ra) # 80001ff4 <_Z12printIntegerm>
        printString("\n");
    800016e0:	00004517          	auipc	a0,0x4
    800016e4:	9b050513          	addi	a0,a0,-1616 # 80005090 <kvmincrease+0xbe0>
    800016e8:	00001097          	auipc	ra,0x1
    800016ec:	89c080e7          	jalr	-1892(ra) # 80001f84 <_Z11printStringPKc>
    for (; i < 3; i++)
    800016f0:	0014849b          	addiw	s1,s1,1
    800016f4:	0ff4f493          	andi	s1,s1,255
    800016f8:	00200793          	li	a5,2
    800016fc:	fc97f4e3          	bgeu	a5,s1,800016c4 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001700:	00004517          	auipc	a0,0x4
    80001704:	90850513          	addi	a0,a0,-1784 # 80005008 <kvmincrease+0xb58>
    80001708:	00001097          	auipc	ra,0x1
    8000170c:	87c080e7          	jalr	-1924(ra) # 80001f84 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001710:	00700313          	li	t1,7
    thread_dispatch();
    80001714:	00000097          	auipc	ra,0x0
    80001718:	db8080e7          	jalr	-584(ra) # 800014cc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000171c:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001720:	00004517          	auipc	a0,0x4
    80001724:	8f850513          	addi	a0,a0,-1800 # 80005018 <kvmincrease+0xb68>
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	85c080e7          	jalr	-1956(ra) # 80001f84 <_Z11printStringPKc>
    printInteger(t1);
    80001730:	00090513          	mv	a0,s2
    80001734:	00001097          	auipc	ra,0x1
    80001738:	8c0080e7          	jalr	-1856(ra) # 80001ff4 <_Z12printIntegerm>
    printString("\n");
    8000173c:	00004517          	auipc	a0,0x4
    80001740:	95450513          	addi	a0,a0,-1708 # 80005090 <kvmincrease+0xbe0>
    80001744:	00001097          	auipc	ra,0x1
    80001748:	840080e7          	jalr	-1984(ra) # 80001f84 <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    8000174c:	01400513          	li	a0,20
    80001750:	00000097          	auipc	ra,0x0
    80001754:	ee4080e7          	jalr	-284(ra) # 80001634 <_ZL9fibonaccim>
    80001758:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    8000175c:	00004517          	auipc	a0,0x4
    80001760:	8c450513          	addi	a0,a0,-1852 # 80005020 <kvmincrease+0xb70>
    80001764:	00001097          	auipc	ra,0x1
    80001768:	820080e7          	jalr	-2016(ra) # 80001f84 <_Z11printStringPKc>
    printInteger(result);
    8000176c:	00090513          	mv	a0,s2
    80001770:	00001097          	auipc	ra,0x1
    80001774:	884080e7          	jalr	-1916(ra) # 80001ff4 <_Z12printIntegerm>
    printString("\n");
    80001778:	00004517          	auipc	a0,0x4
    8000177c:	91850513          	addi	a0,a0,-1768 # 80005090 <kvmincrease+0xbe0>
    80001780:	00001097          	auipc	ra,0x1
    80001784:	804080e7          	jalr	-2044(ra) # 80001f84 <_Z11printStringPKc>
    80001788:	0380006f          	j	800017c0 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    8000178c:	00004517          	auipc	a0,0x4
    80001790:	87450513          	addi	a0,a0,-1932 # 80005000 <kvmincrease+0xb50>
    80001794:	00000097          	auipc	ra,0x0
    80001798:	7f0080e7          	jalr	2032(ra) # 80001f84 <_Z11printStringPKc>
        printInteger(i);
    8000179c:	00048513          	mv	a0,s1
    800017a0:	00001097          	auipc	ra,0x1
    800017a4:	854080e7          	jalr	-1964(ra) # 80001ff4 <_Z12printIntegerm>
        printString("\n");
    800017a8:	00004517          	auipc	a0,0x4
    800017ac:	8e850513          	addi	a0,a0,-1816 # 80005090 <kvmincrease+0xbe0>
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	7d4080e7          	jalr	2004(ra) # 80001f84 <_Z11printStringPKc>
    for (; i < 6; i++)
    800017b8:	0014849b          	addiw	s1,s1,1
    800017bc:	0ff4f493          	andi	s1,s1,255
    800017c0:	00500793          	li	a5,5
    800017c4:	fc97f4e3          	bgeu	a5,s1,8000178c <_Z11workerBodyAPv+0xe8>
    }

    thread_dispatch();
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	d04080e7          	jalr	-764(ra) # 800014cc <_Z15thread_dispatchv>
}
    800017d0:	01813083          	ld	ra,24(sp)
    800017d4:	01013403          	ld	s0,16(sp)
    800017d8:	00813483          	ld	s1,8(sp)
    800017dc:	00013903          	ld	s2,0(sp)
    800017e0:	02010113          	addi	sp,sp,32
    800017e4:	00008067          	ret

00000000800017e8 <_Z11workerBodyBPv>:

void workerBodyB(void* arg)
{
    800017e8:	fe010113          	addi	sp,sp,-32
    800017ec:	00113c23          	sd	ra,24(sp)
    800017f0:	00813823          	sd	s0,16(sp)
    800017f4:	00913423          	sd	s1,8(sp)
    800017f8:	01213023          	sd	s2,0(sp)
    800017fc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    thread_join((thread_t) arg);
    80001800:	00000097          	auipc	ra,0x0
    80001804:	cf0080e7          	jalr	-784(ra) # 800014f0 <_Z11thread_joinP3TCB>
    uint8 i = 10;
    80001808:	00a00493          	li	s1,10
    8000180c:	0380006f          	j	80001844 <_Z11workerBodyBPv+0x5c>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001810:	00004517          	auipc	a0,0x4
    80001814:	82050513          	addi	a0,a0,-2016 # 80005030 <kvmincrease+0xb80>
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	76c080e7          	jalr	1900(ra) # 80001f84 <_Z11printStringPKc>
        printInteger(i);
    80001820:	00048513          	mv	a0,s1
    80001824:	00000097          	auipc	ra,0x0
    80001828:	7d0080e7          	jalr	2000(ra) # 80001ff4 <_Z12printIntegerm>
        printString("\n");
    8000182c:	00004517          	auipc	a0,0x4
    80001830:	86450513          	addi	a0,a0,-1948 # 80005090 <kvmincrease+0xbe0>
    80001834:	00000097          	auipc	ra,0x0
    80001838:	750080e7          	jalr	1872(ra) # 80001f84 <_Z11printStringPKc>
    for (; i < 13; i++)
    8000183c:	0014849b          	addiw	s1,s1,1
    80001840:	0ff4f493          	andi	s1,s1,255
    80001844:	00c00793          	li	a5,12
    80001848:	fc97f4e3          	bgeu	a5,s1,80001810 <_Z11workerBodyBPv+0x28>
    }

    printString("B: yield\n");
    8000184c:	00003517          	auipc	a0,0x3
    80001850:	7ec50513          	addi	a0,a0,2028 # 80005038 <kvmincrease+0xb88>
    80001854:	00000097          	auipc	ra,0x0
    80001858:	730080e7          	jalr	1840(ra) # 80001f84 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000185c:	00500313          	li	t1,5
    thread_dispatch();
    80001860:	00000097          	auipc	ra,0x0
    80001864:	c6c080e7          	jalr	-916(ra) # 800014cc <_Z15thread_dispatchv>


    uint64 result = fibonacci(23);
    80001868:	01700513          	li	a0,23
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	dc8080e7          	jalr	-568(ra) # 80001634 <_ZL9fibonaccim>
    80001874:	00050913          	mv	s2,a0
    printString("B: fibonaci=");
    80001878:	00003517          	auipc	a0,0x3
    8000187c:	7d050513          	addi	a0,a0,2000 # 80005048 <kvmincrease+0xb98>
    80001880:	00000097          	auipc	ra,0x0
    80001884:	704080e7          	jalr	1796(ra) # 80001f84 <_Z11printStringPKc>
    printInteger(result);
    80001888:	00090513          	mv	a0,s2
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	768080e7          	jalr	1896(ra) # 80001ff4 <_Z12printIntegerm>
    printString("\n");
    80001894:	00003517          	auipc	a0,0x3
    80001898:	7fc50513          	addi	a0,a0,2044 # 80005090 <kvmincrease+0xbe0>
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	6e8080e7          	jalr	1768(ra) # 80001f84 <_Z11printStringPKc>
    800018a4:	0380006f          	j	800018dc <_Z11workerBodyBPv+0xf4>

    for (; i < 16; i++)
    {
        printString("B: i=");
    800018a8:	00003517          	auipc	a0,0x3
    800018ac:	78850513          	addi	a0,a0,1928 # 80005030 <kvmincrease+0xb80>
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	6d4080e7          	jalr	1748(ra) # 80001f84 <_Z11printStringPKc>
        printInteger(i);
    800018b8:	00048513          	mv	a0,s1
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	738080e7          	jalr	1848(ra) # 80001ff4 <_Z12printIntegerm>
        printString("\n");
    800018c4:	00003517          	auipc	a0,0x3
    800018c8:	7cc50513          	addi	a0,a0,1996 # 80005090 <kvmincrease+0xbe0>
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	6b8080e7          	jalr	1720(ra) # 80001f84 <_Z11printStringPKc>
    for (; i < 16; i++)
    800018d4:	0014849b          	addiw	s1,s1,1
    800018d8:	0ff4f493          	andi	s1,s1,255
    800018dc:	00f00793          	li	a5,15
    800018e0:	fc97f4e3          	bgeu	a5,s1,800018a8 <_Z11workerBodyBPv+0xc0>
    }

    thread_dispatch();
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	be8080e7          	jalr	-1048(ra) # 800014cc <_Z15thread_dispatchv>
    800018ec:	01813083          	ld	ra,24(sp)
    800018f0:	01013403          	ld	s0,16(sp)
    800018f4:	00813483          	ld	s1,8(sp)
    800018f8:	00013903          	ld	s2,0(sp)
    800018fc:	02010113          	addi	sp,sp,32
    80001900:	00008067          	ret

0000000080001904 <main>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

int main()
{
    80001904:	fb010113          	addi	sp,sp,-80
    80001908:	04113423          	sd	ra,72(sp)
    8000190c:	04813023          	sd	s0,64(sp)
    80001910:	02913c23          	sd	s1,56(sp)
    80001914:	03213823          	sd	s2,48(sp)
    80001918:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr,nullptr);
    8000191c:	00000593          	li	a1,0
    80001920:	00000513          	li	a0,0
    80001924:	00000097          	auipc	ra,0x0
    80001928:	12c080e7          	jalr	300(ra) # 80001a50 <_ZN3TCB12createThreadEPFvPvES0_>
    8000192c:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001930:	00004797          	auipc	a5,0x4
    80001934:	ee87b783          	ld	a5,-280(a5) # 80005818 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001938:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    8000193c:	00004797          	auipc	a5,0x4
    80001940:	ec47b783          	ld	a5,-316(a5) # 80005800 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001944:	0017e793          	ori	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001948:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000194c:	00200793          	li	a5,2
    80001950:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    int return1 = thread_create(&threads[1], workerBodyA, nullptr);
    80001954:	00000613          	li	a2,0
    80001958:	00004597          	auipc	a1,0x4
    8000195c:	eb85b583          	ld	a1,-328(a1) # 80005810 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001960:	fc040513          	addi	a0,s0,-64
    80001964:	00000097          	auipc	ra,0x0
    80001968:	b34080e7          	jalr	-1228(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    8000196c:	00050493          	mv	s1,a0
    printString("ThreadA created\n");
    80001970:	00003517          	auipc	a0,0x3
    80001974:	6e850513          	addi	a0,a0,1768 # 80005058 <kvmincrease+0xba8>
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	60c080e7          	jalr	1548(ra) # 80001f84 <_Z11printStringPKc>
    printInteger(return1);
    80001980:	00048513          	mv	a0,s1
    80001984:	00000097          	auipc	ra,0x0
    80001988:	670080e7          	jalr	1648(ra) # 80001ff4 <_Z12printIntegerm>
    int return2 = thread_create(&threads[2], workerBodyB, threads[1]);
    8000198c:	fc043603          	ld	a2,-64(s0)
    80001990:	00004597          	auipc	a1,0x4
    80001994:	e905b583          	ld	a1,-368(a1) # 80005820 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001998:	fc840513          	addi	a0,s0,-56
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	afc080e7          	jalr	-1284(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    800019a4:	00050493          	mv	s1,a0
    printString("ThreadB created\n");
    800019a8:	00003517          	auipc	a0,0x3
    800019ac:	6c850513          	addi	a0,a0,1736 # 80005070 <kvmincrease+0xbc0>
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	5d4080e7          	jalr	1492(ra) # 80001f84 <_Z11printStringPKc>
    printInteger(return2);
    800019b8:	00048513          	mv	a0,s1
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	638080e7          	jalr	1592(ra) # 80001ff4 <_Z12printIntegerm>
    800019c4:	00c0006f          	j	800019d0 <main+0xcc>


    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        thread_dispatch();
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	b04080e7          	jalr	-1276(ra) # 800014cc <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    800019d0:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    800019d4:	0207c783          	lbu	a5,32(a5)
    800019d8:	fe0788e3          	beqz	a5,800019c8 <main+0xc4>
             threads[2]->isFinished()))
    800019dc:	fc843783          	ld	a5,-56(s0)
    800019e0:	0207c783          	lbu	a5,32(a5)
    while (!(threads[1]->isFinished() &&
    800019e4:	fe0782e3          	beqz	a5,800019c8 <main+0xc4>
    800019e8:	fb840493          	addi	s1,s0,-72
    800019ec:	0140006f          	j	80001a00 <main+0xfc>
    }

    for (auto &thread: threads)
    {
        delete thread;
    800019f0:	00090513          	mv	a0,s2
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	2a4080e7          	jalr	676(ra) # 80001c98 <_ZdlPv>
    for (auto &thread: threads)
    800019fc:	00848493          	addi	s1,s1,8
    80001a00:	fe040793          	addi	a5,s0,-32
    80001a04:	02f48063          	beq	s1,a5,80001a24 <main+0x120>
        delete thread;
    80001a08:	0004b903          	ld	s2,0(s1)
    80001a0c:	fe0908e3          	beqz	s2,800019fc <main+0xf8>
    ~TCB() { delete[] stack; }
    80001a10:	00893503          	ld	a0,8(s2)
    80001a14:	fc050ee3          	beqz	a0,800019f0 <main+0xec>
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	2a8080e7          	jalr	680(ra) # 80001cc0 <_ZdaPv>
    80001a20:	fd1ff06f          	j	800019f0 <main+0xec>
    }
    printString("Finished\n");
    80001a24:	00003517          	auipc	a0,0x3
    80001a28:	66450513          	addi	a0,a0,1636 # 80005088 <kvmincrease+0xbd8>
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	558080e7          	jalr	1368(ra) # 80001f84 <_Z11printStringPKc>

    return 0;
}
    80001a34:	00000513          	li	a0,0
    80001a38:	04813083          	ld	ra,72(sp)
    80001a3c:	04013403          	ld	s0,64(sp)
    80001a40:	03813483          	ld	s1,56(sp)
    80001a44:	03013903          	ld	s2,48(sp)
    80001a48:	05010113          	addi	sp,sp,80
    80001a4c:	00008067          	ret

0000000080001a50 <_ZN3TCB12createThreadEPFvPvES0_>:

//uint64 TCB::timeSliceCounter = 0;
//uint64 TCB::timeSliceCounterTest = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    80001a50:	fd010113          	addi	sp,sp,-48
    80001a54:	02113423          	sd	ra,40(sp)
    80001a58:	02813023          	sd	s0,32(sp)
    80001a5c:	00913c23          	sd	s1,24(sp)
    80001a60:	01213823          	sd	s2,16(sp)
    80001a64:	01313423          	sd	s3,8(sp)
    80001a68:	03010413          	addi	s0,sp,48
    80001a6c:	00050913          	mv	s2,a0
    80001a70:	00058993          	mv	s3,a1
    return new TCB(body, arg);
    80001a74:	03000513          	li	a0,48
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	1d0080e7          	jalr	464(ra) # 80001c48 <_Znwm>
    80001a80:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            arg(arg)
    80001a84:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001a88:	00090a63          	beqz	s2,80001a9c <_ZN3TCB12createThreadEPFvPvES0_+0x4c>
    80001a8c:	00002537          	lui	a0,0x2
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	1e0080e7          	jalr	480(ra) # 80001c70 <_Znam>
    80001a98:	0080006f          	j	80001aa0 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001a9c:	00000513          	li	a0,0
            arg(arg)
    80001aa0:	00a4b423          	sd	a0,8(s1)
    80001aa4:	00000797          	auipc	a5,0x0
    80001aa8:	0a078793          	addi	a5,a5,160 # 80001b44 <_ZN3TCB13threadWrapperEv>
    80001aac:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001ab0:	02050663          	beqz	a0,80001adc <_ZN3TCB12createThreadEPFvPvES0_+0x8c>
    80001ab4:	000027b7          	lui	a5,0x2
    80001ab8:	00f507b3          	add	a5,a0,a5
            arg(arg)
    80001abc:	00f4bc23          	sd	a5,24(s1)
    80001ac0:	02048023          	sb	zero,32(s1)
    80001ac4:	0334b423          	sd	s3,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001ac8:	02090c63          	beqz	s2,80001b00 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    80001acc:	00048513          	mv	a0,s1
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	414080e7          	jalr	1044(ra) # 80001ee4 <_ZN9Scheduler3putEP3TCB>
    80001ad8:	0280006f          	j	80001b00 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001adc:	00000793          	li	a5,0
    80001ae0:	fddff06f          	j	80001abc <_ZN3TCB12createThreadEPFvPvES0_+0x6c>
    80001ae4:	00050913          	mv	s2,a0
    80001ae8:	00048513          	mv	a0,s1
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	1ac080e7          	jalr	428(ra) # 80001c98 <_ZdlPv>
    80001af4:	00090513          	mv	a0,s2
    80001af8:	00005097          	auipc	ra,0x5
    80001afc:	e60080e7          	jalr	-416(ra) # 80006958 <_Unwind_Resume>
}
    80001b00:	00048513          	mv	a0,s1
    80001b04:	02813083          	ld	ra,40(sp)
    80001b08:	02013403          	ld	s0,32(sp)
    80001b0c:	01813483          	ld	s1,24(sp)
    80001b10:	01013903          	ld	s2,16(sp)
    80001b14:	00813983          	ld	s3,8(sp)
    80001b18:	03010113          	addi	sp,sp,48
    80001b1c:	00008067          	ret

0000000080001b20 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001b20:	ff010113          	addi	sp,sp,-16
    80001b24:	00813423          	sd	s0,8(sp)
    80001b28:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    80001b2c:	01300793          	li	a5,19
    80001b30:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    80001b34:	00000073          	ecall
}
    80001b38:	00813403          	ld	s0,8(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret

0000000080001b44 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001b44:	fe010113          	addi	sp,sp,-32
    80001b48:	00113c23          	sd	ra,24(sp)
    80001b4c:	00813823          	sd	s0,16(sp)
    80001b50:	00913423          	sd	s1,8(sp)
    80001b54:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	190080e7          	jalr	400(ra) # 80001ce8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001b60:	00004497          	auipc	s1,0x4
    80001b64:	d1048493          	addi	s1,s1,-752 # 80005870 <_ZN3TCB7runningE>
    80001b68:	0004b783          	ld	a5,0(s1)
    80001b6c:	0007b703          	ld	a4,0(a5) # 2000 <_entry-0x7fffe000>
    80001b70:	0287b503          	ld	a0,40(a5)
    80001b74:	000700e7          	jalr	a4
    running->setFinished(true);
    80001b78:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001b7c:	00100713          	li	a4,1
    80001b80:	02e78023          	sb	a4,32(a5)
    TCB::yield();
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	f9c080e7          	jalr	-100(ra) # 80001b20 <_ZN3TCB5yieldEv>
}
    80001b8c:	01813083          	ld	ra,24(sp)
    80001b90:	01013403          	ld	s0,16(sp)
    80001b94:	00813483          	ld	s1,8(sp)
    80001b98:	02010113          	addi	sp,sp,32
    80001b9c:	00008067          	ret

0000000080001ba0 <_ZN3TCB8dispatchEv>:
{
    80001ba0:	fe010113          	addi	sp,sp,-32
    80001ba4:	00113c23          	sd	ra,24(sp)
    80001ba8:	00813823          	sd	s0,16(sp)
    80001bac:	00913423          	sd	s1,8(sp)
    80001bb0:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001bb4:	00004497          	auipc	s1,0x4
    80001bb8:	cbc4b483          	ld	s1,-836(s1) # 80005870 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001bbc:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001bc0:	02078c63          	beqz	a5,80001bf8 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	2b8080e7          	jalr	696(ra) # 80001e7c <_ZN9Scheduler3getEv>
    80001bcc:	00004797          	auipc	a5,0x4
    80001bd0:	caa7b223          	sd	a0,-860(a5) # 80005870 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001bd4:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001bd8:	01048513          	addi	a0,s1,16
    80001bdc:	fffff097          	auipc	ra,0xfffff
    80001be0:	534080e7          	jalr	1332(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001be4:	01813083          	ld	ra,24(sp)
    80001be8:	01013403          	ld	s0,16(sp)
    80001bec:	00813483          	ld	s1,8(sp)
    80001bf0:	02010113          	addi	sp,sp,32
    80001bf4:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001bf8:	00048513          	mv	a0,s1
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	2e8080e7          	jalr	744(ra) # 80001ee4 <_ZN9Scheduler3putEP3TCB>
    80001c04:	fc1ff06f          	j	80001bc4 <_ZN3TCB8dispatchEv+0x24>

0000000080001c08 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB* handle) {
    80001c08:	fe010113          	addi	sp,sp,-32
    80001c0c:	00113c23          	sd	ra,24(sp)
    80001c10:	00813823          	sd	s0,16(sp)
    80001c14:	00913423          	sd	s1,8(sp)
    80001c18:	02010413          	addi	s0,sp,32
    80001c1c:	00050493          	mv	s1,a0
    80001c20:	0204c783          	lbu	a5,32(s1)
    while(!handle->isFinished()) {
    80001c24:	00079863          	bnez	a5,80001c34 <_ZN3TCB4joinEPS_+0x2c>
        TCB::dispatch();
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	f78080e7          	jalr	-136(ra) # 80001ba0 <_ZN3TCB8dispatchEv>
    while(!handle->isFinished()) {
    80001c30:	ff1ff06f          	j	80001c20 <_ZN3TCB4joinEPS_+0x18>
    }
}
    80001c34:	01813083          	ld	ra,24(sp)
    80001c38:	01013403          	ld	s0,16(sp)
    80001c3c:	00813483          	ld	s1,8(sp)
    80001c40:	02010113          	addi	sp,sp,32
    80001c44:	00008067          	ret

0000000080001c48 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001c48:	ff010113          	addi	sp,sp,-16
    80001c4c:	00113423          	sd	ra,8(sp)
    80001c50:	00813023          	sd	s0,0(sp)
    80001c54:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001c58:	00002097          	auipc	ra,0x2
    80001c5c:	5e0080e7          	jalr	1504(ra) # 80004238 <__mem_alloc>
}
    80001c60:	00813083          	ld	ra,8(sp)
    80001c64:	00013403          	ld	s0,0(sp)
    80001c68:	01010113          	addi	sp,sp,16
    80001c6c:	00008067          	ret

0000000080001c70 <_Znam>:

void *operator new[](size_t n)
{
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00113423          	sd	ra,8(sp)
    80001c78:	00813023          	sd	s0,0(sp)
    80001c7c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001c80:	00002097          	auipc	ra,0x2
    80001c84:	5b8080e7          	jalr	1464(ra) # 80004238 <__mem_alloc>
}
    80001c88:	00813083          	ld	ra,8(sp)
    80001c8c:	00013403          	ld	s0,0(sp)
    80001c90:	01010113          	addi	sp,sp,16
    80001c94:	00008067          	ret

0000000080001c98 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001c98:	ff010113          	addi	sp,sp,-16
    80001c9c:	00113423          	sd	ra,8(sp)
    80001ca0:	00813023          	sd	s0,0(sp)
    80001ca4:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001ca8:	00002097          	auipc	ra,0x2
    80001cac:	4c4080e7          	jalr	1220(ra) # 8000416c <__mem_free>
}
    80001cb0:	00813083          	ld	ra,8(sp)
    80001cb4:	00013403          	ld	s0,0(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret

0000000080001cc0 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001cc0:	ff010113          	addi	sp,sp,-16
    80001cc4:	00113423          	sd	ra,8(sp)
    80001cc8:	00813023          	sd	s0,0(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001cd0:	00002097          	auipc	ra,0x2
    80001cd4:	49c080e7          	jalr	1180(ra) # 8000416c <__mem_free>
    80001cd8:	00813083          	ld	ra,8(sp)
    80001cdc:	00013403          	ld	s0,0(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00813423          	sd	s0,8(sp)
    80001cf0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001cf4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001cf8:	10200073          	sret
}
    80001cfc:	00813403          	ld	s0,8(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret

0000000080001d08 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void*);

void Riscv::handleSupervisorTrap()
{
    80001d08:	fb010113          	addi	sp,sp,-80
    80001d0c:	04113423          	sd	ra,72(sp)
    80001d10:	04813023          	sd	s0,64(sp)
    80001d14:	02913c23          	sd	s1,56(sp)
    80001d18:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001d1c:	142027f3          	csrr	a5,scause
    80001d20:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001d24:	fc043783          	ld	a5,-64(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001d28:	ff878793          	addi	a5,a5,-8
    80001d2c:	00100713          	li	a4,1
    80001d30:	00f77c63          	bgeu	a4,a5,80001d48 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    else
    {
        // unexpected trap cause
        // Ovde se ulazi ako se desi neki interrupt tabele
    }
}
    80001d34:	04813083          	ld	ra,72(sp)
    80001d38:	04013403          	ld	s0,64(sp)
    80001d3c:	03813483          	ld	s1,56(sp)
    80001d40:	05010113          	addi	sp,sp,80
    80001d44:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d48:	141027f3          	csrr	a5,sepc
    80001d4c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001d50:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001d54:	00478793          	addi	a5,a5,4
    80001d58:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d5c:	100027f3          	csrr	a5,sstatus
    80001d60:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001d64:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80001d68:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001d6c:	00050793          	mv	a5,a0
    80001d70:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80001d74:	fc843783          	ld	a5,-56(s0)
        switch (codeOperation) {
    80001d78:	01300713          	li	a4,19
    80001d7c:	04e78e63          	beq	a5,a4,80001dd8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    80001d80:	01400713          	li	a4,20
    80001d84:	06e78063          	beq	a5,a4,80001de4 <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
    80001d88:	01100713          	li	a4,17
    80001d8c:	00e78c63          	beq	a5,a4,80001da4 <_ZN5Riscv20handleSupervisorTrapEv+0x9c>
        w_sstatus(sstatus);
    80001d90:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d94:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001d98:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d9c:	14179073          	csrw	sepc,a5
}
    80001da0:	f95ff06f          	j	80001d34 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    80001da4:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    80001da8:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    80001dac:	00068593          	mv	a1,a3
                *tcb = TCB::createThread(body, arg);
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	ca0080e7          	jalr	-864(ra) # 80001a50 <_ZN3TCB12createThreadEPFvPvES0_>
    80001db8:	00a4b023          	sd	a0,0(s1)
                if(*tcb == nullptr) {
    80001dbc:	00050863          	beqz	a0,80001dcc <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                    __asm__ volatile ("li t0, -1");
    80001dc0:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80001dc4:	04542823          	sw	t0,80(s0)
    80001dc8:	fc9ff06f          	j	80001d90 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
                    __asm__ volatile ("li t0, 0");
    80001dcc:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80001dd0:	04542823          	sw	t0,80(s0)
    80001dd4:	fbdff06f          	j	80001d90 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
                TCB::dispatch();
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	dc8080e7          	jalr	-568(ra) # 80001ba0 <_ZN3TCB8dispatchEv>
                break;
    80001de0:	fb1ff06f          	j	80001d90 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80001de4:	00058513          	mv	a0,a1
                TCB::join(handle);
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	e20080e7          	jalr	-480(ra) # 80001c08 <_ZN3TCB4joinEPS_>
                break;
    80001df0:	fa1ff06f          	j	80001d90 <_ZN5Riscv20handleSupervisorTrapEv+0x88>

0000000080001df4 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    80001df4:	ff010113          	addi	sp,sp,-16
    80001df8:	00113423          	sd	ra,8(sp)
    80001dfc:	00813023          	sd	s0,0(sp)
    80001e00:	01010413          	addi	s0,sp,16
    console_handler();
    80001e04:	00002097          	auipc	ra,0x2
    80001e08:	600080e7          	jalr	1536(ra) # 80004404 <console_handler>
}
    80001e0c:	00813083          	ld	ra,8(sp)
    80001e10:	00013403          	ld	s0,0(sp)
    80001e14:	01010113          	addi	sp,sp,16
    80001e18:	00008067          	ret

0000000080001e1c <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    80001e1c:	ff010113          	addi	sp,sp,-16
    80001e20:	00813423          	sd	s0,8(sp)
    80001e24:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001e28:	00200793          	li	a5,2
    80001e2c:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
    80001e30:	00813403          	ld	s0,8(sp)
    80001e34:	01010113          	addi	sp,sp,16
    80001e38:	00008067          	ret

0000000080001e3c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00813423          	sd	s0,8(sp)
    80001e44:	01010413          	addi	s0,sp,16
    80001e48:	00100793          	li	a5,1
    80001e4c:	00f50863          	beq	a0,a5,80001e5c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001e50:	00813403          	ld	s0,8(sp)
    80001e54:	01010113          	addi	sp,sp,16
    80001e58:	00008067          	ret
    80001e5c:	000107b7          	lui	a5,0x10
    80001e60:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e64:	fef596e3          	bne	a1,a5,80001e50 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80001e68:	00004797          	auipc	a5,0x4
    80001e6c:	a1078793          	addi	a5,a5,-1520 # 80005878 <_ZN9Scheduler16readyThreadQueueE>
    80001e70:	0007b023          	sd	zero,0(a5)
    80001e74:	0007b423          	sd	zero,8(a5)
    80001e78:	fd9ff06f          	j	80001e50 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001e7c <_ZN9Scheduler3getEv>:
{
    80001e7c:	fe010113          	addi	sp,sp,-32
    80001e80:	00113c23          	sd	ra,24(sp)
    80001e84:	00813823          	sd	s0,16(sp)
    80001e88:	00913423          	sd	s1,8(sp)
    80001e8c:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80001e90:	00004517          	auipc	a0,0x4
    80001e94:	9e853503          	ld	a0,-1560(a0) # 80005878 <_ZN9Scheduler16readyThreadQueueE>
    80001e98:	04050263          	beqz	a0,80001edc <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001e9c:	00853783          	ld	a5,8(a0)
    80001ea0:	00004717          	auipc	a4,0x4
    80001ea4:	9cf73c23          	sd	a5,-1576(a4) # 80005878 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001ea8:	02078463          	beqz	a5,80001ed0 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80001eac:	00053483          	ld	s1,0(a0)
        delete elem;
    80001eb0:	00000097          	auipc	ra,0x0
    80001eb4:	de8080e7          	jalr	-536(ra) # 80001c98 <_ZdlPv>
}
    80001eb8:	00048513          	mv	a0,s1
    80001ebc:	01813083          	ld	ra,24(sp)
    80001ec0:	01013403          	ld	s0,16(sp)
    80001ec4:	00813483          	ld	s1,8(sp)
    80001ec8:	02010113          	addi	sp,sp,32
    80001ecc:	00008067          	ret
        if (!head) { tail = 0; }
    80001ed0:	00004797          	auipc	a5,0x4
    80001ed4:	9a07b823          	sd	zero,-1616(a5) # 80005880 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ed8:	fd5ff06f          	j	80001eac <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001edc:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001ee0:	fd9ff06f          	j	80001eb8 <_ZN9Scheduler3getEv+0x3c>

0000000080001ee4 <_ZN9Scheduler3putEP3TCB>:
{
    80001ee4:	fe010113          	addi	sp,sp,-32
    80001ee8:	00113c23          	sd	ra,24(sp)
    80001eec:	00813823          	sd	s0,16(sp)
    80001ef0:	00913423          	sd	s1,8(sp)
    80001ef4:	02010413          	addi	s0,sp,32
    80001ef8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001efc:	01000513          	li	a0,16
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	d48080e7          	jalr	-696(ra) # 80001c48 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001f08:	00953023          	sd	s1,0(a0)
    80001f0c:	00053423          	sd	zero,8(a0)
        if (tail)
    80001f10:	00004797          	auipc	a5,0x4
    80001f14:	9707b783          	ld	a5,-1680(a5) # 80005880 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001f18:	02078263          	beqz	a5,80001f3c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001f1c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001f20:	00004797          	auipc	a5,0x4
    80001f24:	96a7b023          	sd	a0,-1696(a5) # 80005880 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001f28:	01813083          	ld	ra,24(sp)
    80001f2c:	01013403          	ld	s0,16(sp)
    80001f30:	00813483          	ld	s1,8(sp)
    80001f34:	02010113          	addi	sp,sp,32
    80001f38:	00008067          	ret
            head = tail = elem;
    80001f3c:	00004797          	auipc	a5,0x4
    80001f40:	93c78793          	addi	a5,a5,-1732 # 80005878 <_ZN9Scheduler16readyThreadQueueE>
    80001f44:	00a7b423          	sd	a0,8(a5)
    80001f48:	00a7b023          	sd	a0,0(a5)
    80001f4c:	fddff06f          	j	80001f28 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001f50 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001f50:	ff010113          	addi	sp,sp,-16
    80001f54:	00113423          	sd	ra,8(sp)
    80001f58:	00813023          	sd	s0,0(sp)
    80001f5c:	01010413          	addi	s0,sp,16
    80001f60:	000105b7          	lui	a1,0x10
    80001f64:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001f68:	00100513          	li	a0,1
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	ed0080e7          	jalr	-304(ra) # 80001e3c <_Z41__static_initialization_and_destruction_0ii>
    80001f74:	00813083          	ld	ra,8(sp)
    80001f78:	00013403          	ld	s0,0(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret

0000000080001f84 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001f84:	fd010113          	addi	sp,sp,-48
    80001f88:	02113423          	sd	ra,40(sp)
    80001f8c:	02813023          	sd	s0,32(sp)
    80001f90:	00913c23          	sd	s1,24(sp)
    80001f94:	01213823          	sd	s2,16(sp)
    80001f98:	03010413          	addi	s0,sp,48
    80001f9c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001fa0:	100027f3          	csrr	a5,sstatus
    80001fa4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001fa8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001fac:	00200793          	li	a5,2
    80001fb0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001fb4:	0004c503          	lbu	a0,0(s1)
    80001fb8:	00050a63          	beqz	a0,80001fcc <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001fbc:	00002097          	auipc	ra,0x2
    80001fc0:	3d4080e7          	jalr	980(ra) # 80004390 <__putc>
        string++;
    80001fc4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001fc8:	fedff06f          	j	80001fb4 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001fcc:	0009091b          	sext.w	s2,s2
    80001fd0:	00297913          	andi	s2,s2,2
    80001fd4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001fd8:	10092073          	csrs	sstatus,s2
}
    80001fdc:	02813083          	ld	ra,40(sp)
    80001fe0:	02013403          	ld	s0,32(sp)
    80001fe4:	01813483          	ld	s1,24(sp)
    80001fe8:	01013903          	ld	s2,16(sp)
    80001fec:	03010113          	addi	sp,sp,48
    80001ff0:	00008067          	ret

0000000080001ff4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001ff4:	fc010113          	addi	sp,sp,-64
    80001ff8:	02113c23          	sd	ra,56(sp)
    80001ffc:	02813823          	sd	s0,48(sp)
    80002000:	02913423          	sd	s1,40(sp)
    80002004:	03213023          	sd	s2,32(sp)
    80002008:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000200c:	100027f3          	csrr	a5,sstatus
    80002010:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002014:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002018:	00200793          	li	a5,2
    8000201c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002020:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002024:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002028:	00a00613          	li	a2,10
    8000202c:	02c5773b          	remuw	a4,a0,a2
    80002030:	02071693          	slli	a3,a4,0x20
    80002034:	0206d693          	srli	a3,a3,0x20
    80002038:	00003717          	auipc	a4,0x3
    8000203c:	06070713          	addi	a4,a4,96 # 80005098 <_ZZ12printIntegermE6digits>
    80002040:	00d70733          	add	a4,a4,a3
    80002044:	00074703          	lbu	a4,0(a4)
    80002048:	fe040693          	addi	a3,s0,-32
    8000204c:	009687b3          	add	a5,a3,s1
    80002050:	0014849b          	addiw	s1,s1,1
    80002054:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002058:	0005071b          	sext.w	a4,a0
    8000205c:	02c5553b          	divuw	a0,a0,a2
    80002060:	00900793          	li	a5,9
    80002064:	fce7e2e3          	bltu	a5,a4,80002028 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002068:	fff4849b          	addiw	s1,s1,-1
    8000206c:	0004ce63          	bltz	s1,80002088 <_Z12printIntegerm+0x94>
    80002070:	fe040793          	addi	a5,s0,-32
    80002074:	009787b3          	add	a5,a5,s1
    80002078:	ff07c503          	lbu	a0,-16(a5)
    8000207c:	00002097          	auipc	ra,0x2
    80002080:	314080e7          	jalr	788(ra) # 80004390 <__putc>
    80002084:	fe5ff06f          	j	80002068 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002088:	0009091b          	sext.w	s2,s2
    8000208c:	00297913          	andi	s2,s2,2
    80002090:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002094:	10092073          	csrs	sstatus,s2
    80002098:	03813083          	ld	ra,56(sp)
    8000209c:	03013403          	ld	s0,48(sp)
    800020a0:	02813483          	ld	s1,40(sp)
    800020a4:	02013903          	ld	s2,32(sp)
    800020a8:	04010113          	addi	sp,sp,64
    800020ac:	00008067          	ret

00000000800020b0 <start>:
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00813423          	sd	s0,8(sp)
    800020b8:	01010413          	addi	s0,sp,16
    800020bc:	300027f3          	csrr	a5,mstatus
    800020c0:	ffffe737          	lui	a4,0xffffe
    800020c4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7cff>
    800020c8:	00e7f7b3          	and	a5,a5,a4
    800020cc:	00001737          	lui	a4,0x1
    800020d0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800020d4:	00e7e7b3          	or	a5,a5,a4
    800020d8:	30079073          	csrw	mstatus,a5
    800020dc:	00000797          	auipc	a5,0x0
    800020e0:	16078793          	addi	a5,a5,352 # 8000223c <system_main>
    800020e4:	34179073          	csrw	mepc,a5
    800020e8:	00000793          	li	a5,0
    800020ec:	18079073          	csrw	satp,a5
    800020f0:	000107b7          	lui	a5,0x10
    800020f4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800020f8:	30279073          	csrw	medeleg,a5
    800020fc:	30379073          	csrw	mideleg,a5
    80002100:	104027f3          	csrr	a5,sie
    80002104:	2227e793          	ori	a5,a5,546
    80002108:	10479073          	csrw	sie,a5
    8000210c:	fff00793          	li	a5,-1
    80002110:	00a7d793          	srli	a5,a5,0xa
    80002114:	3b079073          	csrw	pmpaddr0,a5
    80002118:	00f00793          	li	a5,15
    8000211c:	3a079073          	csrw	pmpcfg0,a5
    80002120:	f14027f3          	csrr	a5,mhartid
    80002124:	0200c737          	lui	a4,0x200c
    80002128:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000212c:	0007869b          	sext.w	a3,a5
    80002130:	00269713          	slli	a4,a3,0x2
    80002134:	000f4637          	lui	a2,0xf4
    80002138:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000213c:	00d70733          	add	a4,a4,a3
    80002140:	0037979b          	slliw	a5,a5,0x3
    80002144:	020046b7          	lui	a3,0x2004
    80002148:	00d787b3          	add	a5,a5,a3
    8000214c:	00c585b3          	add	a1,a1,a2
    80002150:	00371693          	slli	a3,a4,0x3
    80002154:	00003717          	auipc	a4,0x3
    80002158:	73c70713          	addi	a4,a4,1852 # 80005890 <timer_scratch>
    8000215c:	00b7b023          	sd	a1,0(a5)
    80002160:	00d70733          	add	a4,a4,a3
    80002164:	00f73c23          	sd	a5,24(a4)
    80002168:	02c73023          	sd	a2,32(a4)
    8000216c:	34071073          	csrw	mscratch,a4
    80002170:	00000797          	auipc	a5,0x0
    80002174:	6e078793          	addi	a5,a5,1760 # 80002850 <timervec>
    80002178:	30579073          	csrw	mtvec,a5
    8000217c:	300027f3          	csrr	a5,mstatus
    80002180:	0087e793          	ori	a5,a5,8
    80002184:	30079073          	csrw	mstatus,a5
    80002188:	304027f3          	csrr	a5,mie
    8000218c:	0807e793          	ori	a5,a5,128
    80002190:	30479073          	csrw	mie,a5
    80002194:	f14027f3          	csrr	a5,mhartid
    80002198:	0007879b          	sext.w	a5,a5
    8000219c:	00078213          	mv	tp,a5
    800021a0:	30200073          	mret
    800021a4:	00813403          	ld	s0,8(sp)
    800021a8:	01010113          	addi	sp,sp,16
    800021ac:	00008067          	ret

00000000800021b0 <timerinit>:
    800021b0:	ff010113          	addi	sp,sp,-16
    800021b4:	00813423          	sd	s0,8(sp)
    800021b8:	01010413          	addi	s0,sp,16
    800021bc:	f14027f3          	csrr	a5,mhartid
    800021c0:	0200c737          	lui	a4,0x200c
    800021c4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800021c8:	0007869b          	sext.w	a3,a5
    800021cc:	00269713          	slli	a4,a3,0x2
    800021d0:	000f4637          	lui	a2,0xf4
    800021d4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800021d8:	00d70733          	add	a4,a4,a3
    800021dc:	0037979b          	slliw	a5,a5,0x3
    800021e0:	020046b7          	lui	a3,0x2004
    800021e4:	00d787b3          	add	a5,a5,a3
    800021e8:	00c585b3          	add	a1,a1,a2
    800021ec:	00371693          	slli	a3,a4,0x3
    800021f0:	00003717          	auipc	a4,0x3
    800021f4:	6a070713          	addi	a4,a4,1696 # 80005890 <timer_scratch>
    800021f8:	00b7b023          	sd	a1,0(a5)
    800021fc:	00d70733          	add	a4,a4,a3
    80002200:	00f73c23          	sd	a5,24(a4)
    80002204:	02c73023          	sd	a2,32(a4)
    80002208:	34071073          	csrw	mscratch,a4
    8000220c:	00000797          	auipc	a5,0x0
    80002210:	64478793          	addi	a5,a5,1604 # 80002850 <timervec>
    80002214:	30579073          	csrw	mtvec,a5
    80002218:	300027f3          	csrr	a5,mstatus
    8000221c:	0087e793          	ori	a5,a5,8
    80002220:	30079073          	csrw	mstatus,a5
    80002224:	304027f3          	csrr	a5,mie
    80002228:	0807e793          	ori	a5,a5,128
    8000222c:	30479073          	csrw	mie,a5
    80002230:	00813403          	ld	s0,8(sp)
    80002234:	01010113          	addi	sp,sp,16
    80002238:	00008067          	ret

000000008000223c <system_main>:
    8000223c:	fe010113          	addi	sp,sp,-32
    80002240:	00813823          	sd	s0,16(sp)
    80002244:	00913423          	sd	s1,8(sp)
    80002248:	00113c23          	sd	ra,24(sp)
    8000224c:	02010413          	addi	s0,sp,32
    80002250:	00000097          	auipc	ra,0x0
    80002254:	0c4080e7          	jalr	196(ra) # 80002314 <cpuid>
    80002258:	00003497          	auipc	s1,0x3
    8000225c:	5e848493          	addi	s1,s1,1512 # 80005840 <started>
    80002260:	02050263          	beqz	a0,80002284 <system_main+0x48>
    80002264:	0004a783          	lw	a5,0(s1)
    80002268:	0007879b          	sext.w	a5,a5
    8000226c:	fe078ce3          	beqz	a5,80002264 <system_main+0x28>
    80002270:	0ff0000f          	fence
    80002274:	00003517          	auipc	a0,0x3
    80002278:	e6450513          	addi	a0,a0,-412 # 800050d8 <_ZZ12printIntegermE6digits+0x40>
    8000227c:	00001097          	auipc	ra,0x1
    80002280:	a70080e7          	jalr	-1424(ra) # 80002cec <panic>
    80002284:	00001097          	auipc	ra,0x1
    80002288:	9c4080e7          	jalr	-1596(ra) # 80002c48 <consoleinit>
    8000228c:	00001097          	auipc	ra,0x1
    80002290:	150080e7          	jalr	336(ra) # 800033dc <printfinit>
    80002294:	00003517          	auipc	a0,0x3
    80002298:	dfc50513          	addi	a0,a0,-516 # 80005090 <kvmincrease+0xbe0>
    8000229c:	00001097          	auipc	ra,0x1
    800022a0:	aac080e7          	jalr	-1364(ra) # 80002d48 <__printf>
    800022a4:	00003517          	auipc	a0,0x3
    800022a8:	e0450513          	addi	a0,a0,-508 # 800050a8 <_ZZ12printIntegermE6digits+0x10>
    800022ac:	00001097          	auipc	ra,0x1
    800022b0:	a9c080e7          	jalr	-1380(ra) # 80002d48 <__printf>
    800022b4:	00003517          	auipc	a0,0x3
    800022b8:	ddc50513          	addi	a0,a0,-548 # 80005090 <kvmincrease+0xbe0>
    800022bc:	00001097          	auipc	ra,0x1
    800022c0:	a8c080e7          	jalr	-1396(ra) # 80002d48 <__printf>
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	4a4080e7          	jalr	1188(ra) # 80003768 <kinit>
    800022cc:	00000097          	auipc	ra,0x0
    800022d0:	148080e7          	jalr	328(ra) # 80002414 <trapinit>
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	16c080e7          	jalr	364(ra) # 80002440 <trapinithart>
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	5b4080e7          	jalr	1460(ra) # 80002890 <plicinit>
    800022e4:	00000097          	auipc	ra,0x0
    800022e8:	5d4080e7          	jalr	1492(ra) # 800028b8 <plicinithart>
    800022ec:	00000097          	auipc	ra,0x0
    800022f0:	078080e7          	jalr	120(ra) # 80002364 <userinit>
    800022f4:	0ff0000f          	fence
    800022f8:	00100793          	li	a5,1
    800022fc:	00003517          	auipc	a0,0x3
    80002300:	dc450513          	addi	a0,a0,-572 # 800050c0 <_ZZ12printIntegermE6digits+0x28>
    80002304:	00f4a023          	sw	a5,0(s1)
    80002308:	00001097          	auipc	ra,0x1
    8000230c:	a40080e7          	jalr	-1472(ra) # 80002d48 <__printf>
    80002310:	0000006f          	j	80002310 <system_main+0xd4>

0000000080002314 <cpuid>:
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00813423          	sd	s0,8(sp)
    8000231c:	01010413          	addi	s0,sp,16
    80002320:	00020513          	mv	a0,tp
    80002324:	00813403          	ld	s0,8(sp)
    80002328:	0005051b          	sext.w	a0,a0
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <mycpu>:
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00813423          	sd	s0,8(sp)
    8000233c:	01010413          	addi	s0,sp,16
    80002340:	00020793          	mv	a5,tp
    80002344:	00813403          	ld	s0,8(sp)
    80002348:	0007879b          	sext.w	a5,a5
    8000234c:	00779793          	slli	a5,a5,0x7
    80002350:	00004517          	auipc	a0,0x4
    80002354:	57050513          	addi	a0,a0,1392 # 800068c0 <cpus>
    80002358:	00f50533          	add	a0,a0,a5
    8000235c:	01010113          	addi	sp,sp,16
    80002360:	00008067          	ret

0000000080002364 <userinit>:
    80002364:	ff010113          	addi	sp,sp,-16
    80002368:	00813423          	sd	s0,8(sp)
    8000236c:	01010413          	addi	s0,sp,16
    80002370:	00813403          	ld	s0,8(sp)
    80002374:	01010113          	addi	sp,sp,16
    80002378:	fffff317          	auipc	t1,0xfffff
    8000237c:	58c30067          	jr	1420(t1) # 80001904 <main>

0000000080002380 <either_copyout>:
    80002380:	ff010113          	addi	sp,sp,-16
    80002384:	00813023          	sd	s0,0(sp)
    80002388:	00113423          	sd	ra,8(sp)
    8000238c:	01010413          	addi	s0,sp,16
    80002390:	02051663          	bnez	a0,800023bc <either_copyout+0x3c>
    80002394:	00058513          	mv	a0,a1
    80002398:	00060593          	mv	a1,a2
    8000239c:	0006861b          	sext.w	a2,a3
    800023a0:	00002097          	auipc	ra,0x2
    800023a4:	c54080e7          	jalr	-940(ra) # 80003ff4 <__memmove>
    800023a8:	00813083          	ld	ra,8(sp)
    800023ac:	00013403          	ld	s0,0(sp)
    800023b0:	00000513          	li	a0,0
    800023b4:	01010113          	addi	sp,sp,16
    800023b8:	00008067          	ret
    800023bc:	00003517          	auipc	a0,0x3
    800023c0:	d4450513          	addi	a0,a0,-700 # 80005100 <_ZZ12printIntegermE6digits+0x68>
    800023c4:	00001097          	auipc	ra,0x1
    800023c8:	928080e7          	jalr	-1752(ra) # 80002cec <panic>

00000000800023cc <either_copyin>:
    800023cc:	ff010113          	addi	sp,sp,-16
    800023d0:	00813023          	sd	s0,0(sp)
    800023d4:	00113423          	sd	ra,8(sp)
    800023d8:	01010413          	addi	s0,sp,16
    800023dc:	02059463          	bnez	a1,80002404 <either_copyin+0x38>
    800023e0:	00060593          	mv	a1,a2
    800023e4:	0006861b          	sext.w	a2,a3
    800023e8:	00002097          	auipc	ra,0x2
    800023ec:	c0c080e7          	jalr	-1012(ra) # 80003ff4 <__memmove>
    800023f0:	00813083          	ld	ra,8(sp)
    800023f4:	00013403          	ld	s0,0(sp)
    800023f8:	00000513          	li	a0,0
    800023fc:	01010113          	addi	sp,sp,16
    80002400:	00008067          	ret
    80002404:	00003517          	auipc	a0,0x3
    80002408:	d2450513          	addi	a0,a0,-732 # 80005128 <_ZZ12printIntegermE6digits+0x90>
    8000240c:	00001097          	auipc	ra,0x1
    80002410:	8e0080e7          	jalr	-1824(ra) # 80002cec <panic>

0000000080002414 <trapinit>:
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00813423          	sd	s0,8(sp)
    8000241c:	01010413          	addi	s0,sp,16
    80002420:	00813403          	ld	s0,8(sp)
    80002424:	00003597          	auipc	a1,0x3
    80002428:	d2c58593          	addi	a1,a1,-724 # 80005150 <_ZZ12printIntegermE6digits+0xb8>
    8000242c:	00004517          	auipc	a0,0x4
    80002430:	51450513          	addi	a0,a0,1300 # 80006940 <tickslock>
    80002434:	01010113          	addi	sp,sp,16
    80002438:	00001317          	auipc	t1,0x1
    8000243c:	5c030067          	jr	1472(t1) # 800039f8 <initlock>

0000000080002440 <trapinithart>:
    80002440:	ff010113          	addi	sp,sp,-16
    80002444:	00813423          	sd	s0,8(sp)
    80002448:	01010413          	addi	s0,sp,16
    8000244c:	00000797          	auipc	a5,0x0
    80002450:	2f478793          	addi	a5,a5,756 # 80002740 <kernelvec>
    80002454:	10579073          	csrw	stvec,a5
    80002458:	00813403          	ld	s0,8(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <usertrap>:
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00813423          	sd	s0,8(sp)
    8000246c:	01010413          	addi	s0,sp,16
    80002470:	00813403          	ld	s0,8(sp)
    80002474:	01010113          	addi	sp,sp,16
    80002478:	00008067          	ret

000000008000247c <usertrapret>:
    8000247c:	ff010113          	addi	sp,sp,-16
    80002480:	00813423          	sd	s0,8(sp)
    80002484:	01010413          	addi	s0,sp,16
    80002488:	00813403          	ld	s0,8(sp)
    8000248c:	01010113          	addi	sp,sp,16
    80002490:	00008067          	ret

0000000080002494 <kerneltrap>:
    80002494:	fe010113          	addi	sp,sp,-32
    80002498:	00813823          	sd	s0,16(sp)
    8000249c:	00113c23          	sd	ra,24(sp)
    800024a0:	00913423          	sd	s1,8(sp)
    800024a4:	02010413          	addi	s0,sp,32
    800024a8:	142025f3          	csrr	a1,scause
    800024ac:	100027f3          	csrr	a5,sstatus
    800024b0:	0027f793          	andi	a5,a5,2
    800024b4:	10079c63          	bnez	a5,800025cc <kerneltrap+0x138>
    800024b8:	142027f3          	csrr	a5,scause
    800024bc:	0207ce63          	bltz	a5,800024f8 <kerneltrap+0x64>
    800024c0:	00003517          	auipc	a0,0x3
    800024c4:	cd850513          	addi	a0,a0,-808 # 80005198 <_ZZ12printIntegermE6digits+0x100>
    800024c8:	00001097          	auipc	ra,0x1
    800024cc:	880080e7          	jalr	-1920(ra) # 80002d48 <__printf>
    800024d0:	141025f3          	csrr	a1,sepc
    800024d4:	14302673          	csrr	a2,stval
    800024d8:	00003517          	auipc	a0,0x3
    800024dc:	cd050513          	addi	a0,a0,-816 # 800051a8 <_ZZ12printIntegermE6digits+0x110>
    800024e0:	00001097          	auipc	ra,0x1
    800024e4:	868080e7          	jalr	-1944(ra) # 80002d48 <__printf>
    800024e8:	00003517          	auipc	a0,0x3
    800024ec:	cd850513          	addi	a0,a0,-808 # 800051c0 <_ZZ12printIntegermE6digits+0x128>
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	7fc080e7          	jalr	2044(ra) # 80002cec <panic>
    800024f8:	0ff7f713          	andi	a4,a5,255
    800024fc:	00900693          	li	a3,9
    80002500:	04d70063          	beq	a4,a3,80002540 <kerneltrap+0xac>
    80002504:	fff00713          	li	a4,-1
    80002508:	03f71713          	slli	a4,a4,0x3f
    8000250c:	00170713          	addi	a4,a4,1
    80002510:	fae798e3          	bne	a5,a4,800024c0 <kerneltrap+0x2c>
    80002514:	00000097          	auipc	ra,0x0
    80002518:	e00080e7          	jalr	-512(ra) # 80002314 <cpuid>
    8000251c:	06050663          	beqz	a0,80002588 <kerneltrap+0xf4>
    80002520:	144027f3          	csrr	a5,sip
    80002524:	ffd7f793          	andi	a5,a5,-3
    80002528:	14479073          	csrw	sip,a5
    8000252c:	01813083          	ld	ra,24(sp)
    80002530:	01013403          	ld	s0,16(sp)
    80002534:	00813483          	ld	s1,8(sp)
    80002538:	02010113          	addi	sp,sp,32
    8000253c:	00008067          	ret
    80002540:	00000097          	auipc	ra,0x0
    80002544:	3c4080e7          	jalr	964(ra) # 80002904 <plic_claim>
    80002548:	00a00793          	li	a5,10
    8000254c:	00050493          	mv	s1,a0
    80002550:	06f50863          	beq	a0,a5,800025c0 <kerneltrap+0x12c>
    80002554:	fc050ce3          	beqz	a0,8000252c <kerneltrap+0x98>
    80002558:	00050593          	mv	a1,a0
    8000255c:	00003517          	auipc	a0,0x3
    80002560:	c1c50513          	addi	a0,a0,-996 # 80005178 <_ZZ12printIntegermE6digits+0xe0>
    80002564:	00000097          	auipc	ra,0x0
    80002568:	7e4080e7          	jalr	2020(ra) # 80002d48 <__printf>
    8000256c:	01013403          	ld	s0,16(sp)
    80002570:	01813083          	ld	ra,24(sp)
    80002574:	00048513          	mv	a0,s1
    80002578:	00813483          	ld	s1,8(sp)
    8000257c:	02010113          	addi	sp,sp,32
    80002580:	00000317          	auipc	t1,0x0
    80002584:	3bc30067          	jr	956(t1) # 8000293c <plic_complete>
    80002588:	00004517          	auipc	a0,0x4
    8000258c:	3b850513          	addi	a0,a0,952 # 80006940 <tickslock>
    80002590:	00001097          	auipc	ra,0x1
    80002594:	48c080e7          	jalr	1164(ra) # 80003a1c <acquire>
    80002598:	00003717          	auipc	a4,0x3
    8000259c:	2ac70713          	addi	a4,a4,684 # 80005844 <ticks>
    800025a0:	00072783          	lw	a5,0(a4)
    800025a4:	00004517          	auipc	a0,0x4
    800025a8:	39c50513          	addi	a0,a0,924 # 80006940 <tickslock>
    800025ac:	0017879b          	addiw	a5,a5,1
    800025b0:	00f72023          	sw	a5,0(a4)
    800025b4:	00001097          	auipc	ra,0x1
    800025b8:	534080e7          	jalr	1332(ra) # 80003ae8 <release>
    800025bc:	f65ff06f          	j	80002520 <kerneltrap+0x8c>
    800025c0:	00001097          	auipc	ra,0x1
    800025c4:	090080e7          	jalr	144(ra) # 80003650 <uartintr>
    800025c8:	fa5ff06f          	j	8000256c <kerneltrap+0xd8>
    800025cc:	00003517          	auipc	a0,0x3
    800025d0:	b8c50513          	addi	a0,a0,-1140 # 80005158 <_ZZ12printIntegermE6digits+0xc0>
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	718080e7          	jalr	1816(ra) # 80002cec <panic>

00000000800025dc <clockintr>:
    800025dc:	fe010113          	addi	sp,sp,-32
    800025e0:	00813823          	sd	s0,16(sp)
    800025e4:	00913423          	sd	s1,8(sp)
    800025e8:	00113c23          	sd	ra,24(sp)
    800025ec:	02010413          	addi	s0,sp,32
    800025f0:	00004497          	auipc	s1,0x4
    800025f4:	35048493          	addi	s1,s1,848 # 80006940 <tickslock>
    800025f8:	00048513          	mv	a0,s1
    800025fc:	00001097          	auipc	ra,0x1
    80002600:	420080e7          	jalr	1056(ra) # 80003a1c <acquire>
    80002604:	00003717          	auipc	a4,0x3
    80002608:	24070713          	addi	a4,a4,576 # 80005844 <ticks>
    8000260c:	00072783          	lw	a5,0(a4)
    80002610:	01013403          	ld	s0,16(sp)
    80002614:	01813083          	ld	ra,24(sp)
    80002618:	00048513          	mv	a0,s1
    8000261c:	0017879b          	addiw	a5,a5,1
    80002620:	00813483          	ld	s1,8(sp)
    80002624:	00f72023          	sw	a5,0(a4)
    80002628:	02010113          	addi	sp,sp,32
    8000262c:	00001317          	auipc	t1,0x1
    80002630:	4bc30067          	jr	1212(t1) # 80003ae8 <release>

0000000080002634 <devintr>:
    80002634:	142027f3          	csrr	a5,scause
    80002638:	00000513          	li	a0,0
    8000263c:	0007c463          	bltz	a5,80002644 <devintr+0x10>
    80002640:	00008067          	ret
    80002644:	fe010113          	addi	sp,sp,-32
    80002648:	00813823          	sd	s0,16(sp)
    8000264c:	00113c23          	sd	ra,24(sp)
    80002650:	00913423          	sd	s1,8(sp)
    80002654:	02010413          	addi	s0,sp,32
    80002658:	0ff7f713          	andi	a4,a5,255
    8000265c:	00900693          	li	a3,9
    80002660:	04d70c63          	beq	a4,a3,800026b8 <devintr+0x84>
    80002664:	fff00713          	li	a4,-1
    80002668:	03f71713          	slli	a4,a4,0x3f
    8000266c:	00170713          	addi	a4,a4,1
    80002670:	00e78c63          	beq	a5,a4,80002688 <devintr+0x54>
    80002674:	01813083          	ld	ra,24(sp)
    80002678:	01013403          	ld	s0,16(sp)
    8000267c:	00813483          	ld	s1,8(sp)
    80002680:	02010113          	addi	sp,sp,32
    80002684:	00008067          	ret
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	c8c080e7          	jalr	-884(ra) # 80002314 <cpuid>
    80002690:	06050663          	beqz	a0,800026fc <devintr+0xc8>
    80002694:	144027f3          	csrr	a5,sip
    80002698:	ffd7f793          	andi	a5,a5,-3
    8000269c:	14479073          	csrw	sip,a5
    800026a0:	01813083          	ld	ra,24(sp)
    800026a4:	01013403          	ld	s0,16(sp)
    800026a8:	00813483          	ld	s1,8(sp)
    800026ac:	00200513          	li	a0,2
    800026b0:	02010113          	addi	sp,sp,32
    800026b4:	00008067          	ret
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	24c080e7          	jalr	588(ra) # 80002904 <plic_claim>
    800026c0:	00a00793          	li	a5,10
    800026c4:	00050493          	mv	s1,a0
    800026c8:	06f50663          	beq	a0,a5,80002734 <devintr+0x100>
    800026cc:	00100513          	li	a0,1
    800026d0:	fa0482e3          	beqz	s1,80002674 <devintr+0x40>
    800026d4:	00048593          	mv	a1,s1
    800026d8:	00003517          	auipc	a0,0x3
    800026dc:	aa050513          	addi	a0,a0,-1376 # 80005178 <_ZZ12printIntegermE6digits+0xe0>
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	668080e7          	jalr	1640(ra) # 80002d48 <__printf>
    800026e8:	00048513          	mv	a0,s1
    800026ec:	00000097          	auipc	ra,0x0
    800026f0:	250080e7          	jalr	592(ra) # 8000293c <plic_complete>
    800026f4:	00100513          	li	a0,1
    800026f8:	f7dff06f          	j	80002674 <devintr+0x40>
    800026fc:	00004517          	auipc	a0,0x4
    80002700:	24450513          	addi	a0,a0,580 # 80006940 <tickslock>
    80002704:	00001097          	auipc	ra,0x1
    80002708:	318080e7          	jalr	792(ra) # 80003a1c <acquire>
    8000270c:	00003717          	auipc	a4,0x3
    80002710:	13870713          	addi	a4,a4,312 # 80005844 <ticks>
    80002714:	00072783          	lw	a5,0(a4)
    80002718:	00004517          	auipc	a0,0x4
    8000271c:	22850513          	addi	a0,a0,552 # 80006940 <tickslock>
    80002720:	0017879b          	addiw	a5,a5,1
    80002724:	00f72023          	sw	a5,0(a4)
    80002728:	00001097          	auipc	ra,0x1
    8000272c:	3c0080e7          	jalr	960(ra) # 80003ae8 <release>
    80002730:	f65ff06f          	j	80002694 <devintr+0x60>
    80002734:	00001097          	auipc	ra,0x1
    80002738:	f1c080e7          	jalr	-228(ra) # 80003650 <uartintr>
    8000273c:	fadff06f          	j	800026e8 <devintr+0xb4>

0000000080002740 <kernelvec>:
    80002740:	f0010113          	addi	sp,sp,-256
    80002744:	00113023          	sd	ra,0(sp)
    80002748:	00213423          	sd	sp,8(sp)
    8000274c:	00313823          	sd	gp,16(sp)
    80002750:	00413c23          	sd	tp,24(sp)
    80002754:	02513023          	sd	t0,32(sp)
    80002758:	02613423          	sd	t1,40(sp)
    8000275c:	02713823          	sd	t2,48(sp)
    80002760:	02813c23          	sd	s0,56(sp)
    80002764:	04913023          	sd	s1,64(sp)
    80002768:	04a13423          	sd	a0,72(sp)
    8000276c:	04b13823          	sd	a1,80(sp)
    80002770:	04c13c23          	sd	a2,88(sp)
    80002774:	06d13023          	sd	a3,96(sp)
    80002778:	06e13423          	sd	a4,104(sp)
    8000277c:	06f13823          	sd	a5,112(sp)
    80002780:	07013c23          	sd	a6,120(sp)
    80002784:	09113023          	sd	a7,128(sp)
    80002788:	09213423          	sd	s2,136(sp)
    8000278c:	09313823          	sd	s3,144(sp)
    80002790:	09413c23          	sd	s4,152(sp)
    80002794:	0b513023          	sd	s5,160(sp)
    80002798:	0b613423          	sd	s6,168(sp)
    8000279c:	0b713823          	sd	s7,176(sp)
    800027a0:	0b813c23          	sd	s8,184(sp)
    800027a4:	0d913023          	sd	s9,192(sp)
    800027a8:	0da13423          	sd	s10,200(sp)
    800027ac:	0db13823          	sd	s11,208(sp)
    800027b0:	0dc13c23          	sd	t3,216(sp)
    800027b4:	0fd13023          	sd	t4,224(sp)
    800027b8:	0fe13423          	sd	t5,232(sp)
    800027bc:	0ff13823          	sd	t6,240(sp)
    800027c0:	cd5ff0ef          	jal	ra,80002494 <kerneltrap>
    800027c4:	00013083          	ld	ra,0(sp)
    800027c8:	00813103          	ld	sp,8(sp)
    800027cc:	01013183          	ld	gp,16(sp)
    800027d0:	02013283          	ld	t0,32(sp)
    800027d4:	02813303          	ld	t1,40(sp)
    800027d8:	03013383          	ld	t2,48(sp)
    800027dc:	03813403          	ld	s0,56(sp)
    800027e0:	04013483          	ld	s1,64(sp)
    800027e4:	04813503          	ld	a0,72(sp)
    800027e8:	05013583          	ld	a1,80(sp)
    800027ec:	05813603          	ld	a2,88(sp)
    800027f0:	06013683          	ld	a3,96(sp)
    800027f4:	06813703          	ld	a4,104(sp)
    800027f8:	07013783          	ld	a5,112(sp)
    800027fc:	07813803          	ld	a6,120(sp)
    80002800:	08013883          	ld	a7,128(sp)
    80002804:	08813903          	ld	s2,136(sp)
    80002808:	09013983          	ld	s3,144(sp)
    8000280c:	09813a03          	ld	s4,152(sp)
    80002810:	0a013a83          	ld	s5,160(sp)
    80002814:	0a813b03          	ld	s6,168(sp)
    80002818:	0b013b83          	ld	s7,176(sp)
    8000281c:	0b813c03          	ld	s8,184(sp)
    80002820:	0c013c83          	ld	s9,192(sp)
    80002824:	0c813d03          	ld	s10,200(sp)
    80002828:	0d013d83          	ld	s11,208(sp)
    8000282c:	0d813e03          	ld	t3,216(sp)
    80002830:	0e013e83          	ld	t4,224(sp)
    80002834:	0e813f03          	ld	t5,232(sp)
    80002838:	0f013f83          	ld	t6,240(sp)
    8000283c:	10010113          	addi	sp,sp,256
    80002840:	10200073          	sret
    80002844:	00000013          	nop
    80002848:	00000013          	nop
    8000284c:	00000013          	nop

0000000080002850 <timervec>:
    80002850:	34051573          	csrrw	a0,mscratch,a0
    80002854:	00b53023          	sd	a1,0(a0)
    80002858:	00c53423          	sd	a2,8(a0)
    8000285c:	00d53823          	sd	a3,16(a0)
    80002860:	01853583          	ld	a1,24(a0)
    80002864:	02053603          	ld	a2,32(a0)
    80002868:	0005b683          	ld	a3,0(a1)
    8000286c:	00c686b3          	add	a3,a3,a2
    80002870:	00d5b023          	sd	a3,0(a1)
    80002874:	00200593          	li	a1,2
    80002878:	14459073          	csrw	sip,a1
    8000287c:	01053683          	ld	a3,16(a0)
    80002880:	00853603          	ld	a2,8(a0)
    80002884:	00053583          	ld	a1,0(a0)
    80002888:	34051573          	csrrw	a0,mscratch,a0
    8000288c:	30200073          	mret

0000000080002890 <plicinit>:
    80002890:	ff010113          	addi	sp,sp,-16
    80002894:	00813423          	sd	s0,8(sp)
    80002898:	01010413          	addi	s0,sp,16
    8000289c:	00813403          	ld	s0,8(sp)
    800028a0:	0c0007b7          	lui	a5,0xc000
    800028a4:	00100713          	li	a4,1
    800028a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800028ac:	00e7a223          	sw	a4,4(a5)
    800028b0:	01010113          	addi	sp,sp,16
    800028b4:	00008067          	ret

00000000800028b8 <plicinithart>:
    800028b8:	ff010113          	addi	sp,sp,-16
    800028bc:	00813023          	sd	s0,0(sp)
    800028c0:	00113423          	sd	ra,8(sp)
    800028c4:	01010413          	addi	s0,sp,16
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	a4c080e7          	jalr	-1460(ra) # 80002314 <cpuid>
    800028d0:	0085171b          	slliw	a4,a0,0x8
    800028d4:	0c0027b7          	lui	a5,0xc002
    800028d8:	00e787b3          	add	a5,a5,a4
    800028dc:	40200713          	li	a4,1026
    800028e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800028e4:	00813083          	ld	ra,8(sp)
    800028e8:	00013403          	ld	s0,0(sp)
    800028ec:	00d5151b          	slliw	a0,a0,0xd
    800028f0:	0c2017b7          	lui	a5,0xc201
    800028f4:	00a78533          	add	a0,a5,a0
    800028f8:	00052023          	sw	zero,0(a0)
    800028fc:	01010113          	addi	sp,sp,16
    80002900:	00008067          	ret

0000000080002904 <plic_claim>:
    80002904:	ff010113          	addi	sp,sp,-16
    80002908:	00813023          	sd	s0,0(sp)
    8000290c:	00113423          	sd	ra,8(sp)
    80002910:	01010413          	addi	s0,sp,16
    80002914:	00000097          	auipc	ra,0x0
    80002918:	a00080e7          	jalr	-1536(ra) # 80002314 <cpuid>
    8000291c:	00813083          	ld	ra,8(sp)
    80002920:	00013403          	ld	s0,0(sp)
    80002924:	00d5151b          	slliw	a0,a0,0xd
    80002928:	0c2017b7          	lui	a5,0xc201
    8000292c:	00a78533          	add	a0,a5,a0
    80002930:	00452503          	lw	a0,4(a0)
    80002934:	01010113          	addi	sp,sp,16
    80002938:	00008067          	ret

000000008000293c <plic_complete>:
    8000293c:	fe010113          	addi	sp,sp,-32
    80002940:	00813823          	sd	s0,16(sp)
    80002944:	00913423          	sd	s1,8(sp)
    80002948:	00113c23          	sd	ra,24(sp)
    8000294c:	02010413          	addi	s0,sp,32
    80002950:	00050493          	mv	s1,a0
    80002954:	00000097          	auipc	ra,0x0
    80002958:	9c0080e7          	jalr	-1600(ra) # 80002314 <cpuid>
    8000295c:	01813083          	ld	ra,24(sp)
    80002960:	01013403          	ld	s0,16(sp)
    80002964:	00d5179b          	slliw	a5,a0,0xd
    80002968:	0c201737          	lui	a4,0xc201
    8000296c:	00f707b3          	add	a5,a4,a5
    80002970:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002974:	00813483          	ld	s1,8(sp)
    80002978:	02010113          	addi	sp,sp,32
    8000297c:	00008067          	ret

0000000080002980 <consolewrite>:
    80002980:	fb010113          	addi	sp,sp,-80
    80002984:	04813023          	sd	s0,64(sp)
    80002988:	04113423          	sd	ra,72(sp)
    8000298c:	02913c23          	sd	s1,56(sp)
    80002990:	03213823          	sd	s2,48(sp)
    80002994:	03313423          	sd	s3,40(sp)
    80002998:	03413023          	sd	s4,32(sp)
    8000299c:	01513c23          	sd	s5,24(sp)
    800029a0:	05010413          	addi	s0,sp,80
    800029a4:	06c05c63          	blez	a2,80002a1c <consolewrite+0x9c>
    800029a8:	00060993          	mv	s3,a2
    800029ac:	00050a13          	mv	s4,a0
    800029b0:	00058493          	mv	s1,a1
    800029b4:	00000913          	li	s2,0
    800029b8:	fff00a93          	li	s5,-1
    800029bc:	01c0006f          	j	800029d8 <consolewrite+0x58>
    800029c0:	fbf44503          	lbu	a0,-65(s0)
    800029c4:	0019091b          	addiw	s2,s2,1
    800029c8:	00148493          	addi	s1,s1,1
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	a9c080e7          	jalr	-1380(ra) # 80003468 <uartputc>
    800029d4:	03298063          	beq	s3,s2,800029f4 <consolewrite+0x74>
    800029d8:	00048613          	mv	a2,s1
    800029dc:	00100693          	li	a3,1
    800029e0:	000a0593          	mv	a1,s4
    800029e4:	fbf40513          	addi	a0,s0,-65
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	9e4080e7          	jalr	-1564(ra) # 800023cc <either_copyin>
    800029f0:	fd5518e3          	bne	a0,s5,800029c0 <consolewrite+0x40>
    800029f4:	04813083          	ld	ra,72(sp)
    800029f8:	04013403          	ld	s0,64(sp)
    800029fc:	03813483          	ld	s1,56(sp)
    80002a00:	02813983          	ld	s3,40(sp)
    80002a04:	02013a03          	ld	s4,32(sp)
    80002a08:	01813a83          	ld	s5,24(sp)
    80002a0c:	00090513          	mv	a0,s2
    80002a10:	03013903          	ld	s2,48(sp)
    80002a14:	05010113          	addi	sp,sp,80
    80002a18:	00008067          	ret
    80002a1c:	00000913          	li	s2,0
    80002a20:	fd5ff06f          	j	800029f4 <consolewrite+0x74>

0000000080002a24 <consoleread>:
    80002a24:	f9010113          	addi	sp,sp,-112
    80002a28:	06813023          	sd	s0,96(sp)
    80002a2c:	04913c23          	sd	s1,88(sp)
    80002a30:	05213823          	sd	s2,80(sp)
    80002a34:	05313423          	sd	s3,72(sp)
    80002a38:	05413023          	sd	s4,64(sp)
    80002a3c:	03513c23          	sd	s5,56(sp)
    80002a40:	03613823          	sd	s6,48(sp)
    80002a44:	03713423          	sd	s7,40(sp)
    80002a48:	03813023          	sd	s8,32(sp)
    80002a4c:	06113423          	sd	ra,104(sp)
    80002a50:	01913c23          	sd	s9,24(sp)
    80002a54:	07010413          	addi	s0,sp,112
    80002a58:	00060b93          	mv	s7,a2
    80002a5c:	00050913          	mv	s2,a0
    80002a60:	00058c13          	mv	s8,a1
    80002a64:	00060b1b          	sext.w	s6,a2
    80002a68:	00004497          	auipc	s1,0x4
    80002a6c:	f0048493          	addi	s1,s1,-256 # 80006968 <cons>
    80002a70:	00400993          	li	s3,4
    80002a74:	fff00a13          	li	s4,-1
    80002a78:	00a00a93          	li	s5,10
    80002a7c:	05705e63          	blez	s7,80002ad8 <consoleread+0xb4>
    80002a80:	09c4a703          	lw	a4,156(s1)
    80002a84:	0984a783          	lw	a5,152(s1)
    80002a88:	0007071b          	sext.w	a4,a4
    80002a8c:	08e78463          	beq	a5,a4,80002b14 <consoleread+0xf0>
    80002a90:	07f7f713          	andi	a4,a5,127
    80002a94:	00e48733          	add	a4,s1,a4
    80002a98:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002a9c:	0017869b          	addiw	a3,a5,1
    80002aa0:	08d4ac23          	sw	a3,152(s1)
    80002aa4:	00070c9b          	sext.w	s9,a4
    80002aa8:	0b370663          	beq	a4,s3,80002b54 <consoleread+0x130>
    80002aac:	00100693          	li	a3,1
    80002ab0:	f9f40613          	addi	a2,s0,-97
    80002ab4:	000c0593          	mv	a1,s8
    80002ab8:	00090513          	mv	a0,s2
    80002abc:	f8e40fa3          	sb	a4,-97(s0)
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	8c0080e7          	jalr	-1856(ra) # 80002380 <either_copyout>
    80002ac8:	01450863          	beq	a0,s4,80002ad8 <consoleread+0xb4>
    80002acc:	001c0c13          	addi	s8,s8,1
    80002ad0:	fffb8b9b          	addiw	s7,s7,-1
    80002ad4:	fb5c94e3          	bne	s9,s5,80002a7c <consoleread+0x58>
    80002ad8:	000b851b          	sext.w	a0,s7
    80002adc:	06813083          	ld	ra,104(sp)
    80002ae0:	06013403          	ld	s0,96(sp)
    80002ae4:	05813483          	ld	s1,88(sp)
    80002ae8:	05013903          	ld	s2,80(sp)
    80002aec:	04813983          	ld	s3,72(sp)
    80002af0:	04013a03          	ld	s4,64(sp)
    80002af4:	03813a83          	ld	s5,56(sp)
    80002af8:	02813b83          	ld	s7,40(sp)
    80002afc:	02013c03          	ld	s8,32(sp)
    80002b00:	01813c83          	ld	s9,24(sp)
    80002b04:	40ab053b          	subw	a0,s6,a0
    80002b08:	03013b03          	ld	s6,48(sp)
    80002b0c:	07010113          	addi	sp,sp,112
    80002b10:	00008067          	ret
    80002b14:	00001097          	auipc	ra,0x1
    80002b18:	1d8080e7          	jalr	472(ra) # 80003cec <push_on>
    80002b1c:	0984a703          	lw	a4,152(s1)
    80002b20:	09c4a783          	lw	a5,156(s1)
    80002b24:	0007879b          	sext.w	a5,a5
    80002b28:	fef70ce3          	beq	a4,a5,80002b20 <consoleread+0xfc>
    80002b2c:	00001097          	auipc	ra,0x1
    80002b30:	234080e7          	jalr	564(ra) # 80003d60 <pop_on>
    80002b34:	0984a783          	lw	a5,152(s1)
    80002b38:	07f7f713          	andi	a4,a5,127
    80002b3c:	00e48733          	add	a4,s1,a4
    80002b40:	01874703          	lbu	a4,24(a4)
    80002b44:	0017869b          	addiw	a3,a5,1
    80002b48:	08d4ac23          	sw	a3,152(s1)
    80002b4c:	00070c9b          	sext.w	s9,a4
    80002b50:	f5371ee3          	bne	a4,s3,80002aac <consoleread+0x88>
    80002b54:	000b851b          	sext.w	a0,s7
    80002b58:	f96bf2e3          	bgeu	s7,s6,80002adc <consoleread+0xb8>
    80002b5c:	08f4ac23          	sw	a5,152(s1)
    80002b60:	f7dff06f          	j	80002adc <consoleread+0xb8>

0000000080002b64 <consputc>:
    80002b64:	10000793          	li	a5,256
    80002b68:	00f50663          	beq	a0,a5,80002b74 <consputc+0x10>
    80002b6c:	00001317          	auipc	t1,0x1
    80002b70:	9f430067          	jr	-1548(t1) # 80003560 <uartputc_sync>
    80002b74:	ff010113          	addi	sp,sp,-16
    80002b78:	00113423          	sd	ra,8(sp)
    80002b7c:	00813023          	sd	s0,0(sp)
    80002b80:	01010413          	addi	s0,sp,16
    80002b84:	00800513          	li	a0,8
    80002b88:	00001097          	auipc	ra,0x1
    80002b8c:	9d8080e7          	jalr	-1576(ra) # 80003560 <uartputc_sync>
    80002b90:	02000513          	li	a0,32
    80002b94:	00001097          	auipc	ra,0x1
    80002b98:	9cc080e7          	jalr	-1588(ra) # 80003560 <uartputc_sync>
    80002b9c:	00013403          	ld	s0,0(sp)
    80002ba0:	00813083          	ld	ra,8(sp)
    80002ba4:	00800513          	li	a0,8
    80002ba8:	01010113          	addi	sp,sp,16
    80002bac:	00001317          	auipc	t1,0x1
    80002bb0:	9b430067          	jr	-1612(t1) # 80003560 <uartputc_sync>

0000000080002bb4 <consoleintr>:
    80002bb4:	fe010113          	addi	sp,sp,-32
    80002bb8:	00813823          	sd	s0,16(sp)
    80002bbc:	00913423          	sd	s1,8(sp)
    80002bc0:	01213023          	sd	s2,0(sp)
    80002bc4:	00113c23          	sd	ra,24(sp)
    80002bc8:	02010413          	addi	s0,sp,32
    80002bcc:	00004917          	auipc	s2,0x4
    80002bd0:	d9c90913          	addi	s2,s2,-612 # 80006968 <cons>
    80002bd4:	00050493          	mv	s1,a0
    80002bd8:	00090513          	mv	a0,s2
    80002bdc:	00001097          	auipc	ra,0x1
    80002be0:	e40080e7          	jalr	-448(ra) # 80003a1c <acquire>
    80002be4:	02048c63          	beqz	s1,80002c1c <consoleintr+0x68>
    80002be8:	0a092783          	lw	a5,160(s2)
    80002bec:	09892703          	lw	a4,152(s2)
    80002bf0:	07f00693          	li	a3,127
    80002bf4:	40e7873b          	subw	a4,a5,a4
    80002bf8:	02e6e263          	bltu	a3,a4,80002c1c <consoleintr+0x68>
    80002bfc:	00d00713          	li	a4,13
    80002c00:	04e48063          	beq	s1,a4,80002c40 <consoleintr+0x8c>
    80002c04:	07f7f713          	andi	a4,a5,127
    80002c08:	00e90733          	add	a4,s2,a4
    80002c0c:	0017879b          	addiw	a5,a5,1
    80002c10:	0af92023          	sw	a5,160(s2)
    80002c14:	00970c23          	sb	s1,24(a4)
    80002c18:	08f92e23          	sw	a5,156(s2)
    80002c1c:	01013403          	ld	s0,16(sp)
    80002c20:	01813083          	ld	ra,24(sp)
    80002c24:	00813483          	ld	s1,8(sp)
    80002c28:	00013903          	ld	s2,0(sp)
    80002c2c:	00004517          	auipc	a0,0x4
    80002c30:	d3c50513          	addi	a0,a0,-708 # 80006968 <cons>
    80002c34:	02010113          	addi	sp,sp,32
    80002c38:	00001317          	auipc	t1,0x1
    80002c3c:	eb030067          	jr	-336(t1) # 80003ae8 <release>
    80002c40:	00a00493          	li	s1,10
    80002c44:	fc1ff06f          	j	80002c04 <consoleintr+0x50>

0000000080002c48 <consoleinit>:
    80002c48:	fe010113          	addi	sp,sp,-32
    80002c4c:	00113c23          	sd	ra,24(sp)
    80002c50:	00813823          	sd	s0,16(sp)
    80002c54:	00913423          	sd	s1,8(sp)
    80002c58:	02010413          	addi	s0,sp,32
    80002c5c:	00004497          	auipc	s1,0x4
    80002c60:	d0c48493          	addi	s1,s1,-756 # 80006968 <cons>
    80002c64:	00048513          	mv	a0,s1
    80002c68:	00002597          	auipc	a1,0x2
    80002c6c:	56858593          	addi	a1,a1,1384 # 800051d0 <_ZZ12printIntegermE6digits+0x138>
    80002c70:	00001097          	auipc	ra,0x1
    80002c74:	d88080e7          	jalr	-632(ra) # 800039f8 <initlock>
    80002c78:	00000097          	auipc	ra,0x0
    80002c7c:	7ac080e7          	jalr	1964(ra) # 80003424 <uartinit>
    80002c80:	01813083          	ld	ra,24(sp)
    80002c84:	01013403          	ld	s0,16(sp)
    80002c88:	00000797          	auipc	a5,0x0
    80002c8c:	d9c78793          	addi	a5,a5,-612 # 80002a24 <consoleread>
    80002c90:	0af4bc23          	sd	a5,184(s1)
    80002c94:	00000797          	auipc	a5,0x0
    80002c98:	cec78793          	addi	a5,a5,-788 # 80002980 <consolewrite>
    80002c9c:	0cf4b023          	sd	a5,192(s1)
    80002ca0:	00813483          	ld	s1,8(sp)
    80002ca4:	02010113          	addi	sp,sp,32
    80002ca8:	00008067          	ret

0000000080002cac <console_read>:
    80002cac:	ff010113          	addi	sp,sp,-16
    80002cb0:	00813423          	sd	s0,8(sp)
    80002cb4:	01010413          	addi	s0,sp,16
    80002cb8:	00813403          	ld	s0,8(sp)
    80002cbc:	00004317          	auipc	t1,0x4
    80002cc0:	d6433303          	ld	t1,-668(t1) # 80006a20 <devsw+0x10>
    80002cc4:	01010113          	addi	sp,sp,16
    80002cc8:	00030067          	jr	t1

0000000080002ccc <console_write>:
    80002ccc:	ff010113          	addi	sp,sp,-16
    80002cd0:	00813423          	sd	s0,8(sp)
    80002cd4:	01010413          	addi	s0,sp,16
    80002cd8:	00813403          	ld	s0,8(sp)
    80002cdc:	00004317          	auipc	t1,0x4
    80002ce0:	d4c33303          	ld	t1,-692(t1) # 80006a28 <devsw+0x18>
    80002ce4:	01010113          	addi	sp,sp,16
    80002ce8:	00030067          	jr	t1

0000000080002cec <panic>:
    80002cec:	fe010113          	addi	sp,sp,-32
    80002cf0:	00113c23          	sd	ra,24(sp)
    80002cf4:	00813823          	sd	s0,16(sp)
    80002cf8:	00913423          	sd	s1,8(sp)
    80002cfc:	02010413          	addi	s0,sp,32
    80002d00:	00050493          	mv	s1,a0
    80002d04:	00002517          	auipc	a0,0x2
    80002d08:	4d450513          	addi	a0,a0,1236 # 800051d8 <_ZZ12printIntegermE6digits+0x140>
    80002d0c:	00004797          	auipc	a5,0x4
    80002d10:	da07ae23          	sw	zero,-580(a5) # 80006ac8 <pr+0x18>
    80002d14:	00000097          	auipc	ra,0x0
    80002d18:	034080e7          	jalr	52(ra) # 80002d48 <__printf>
    80002d1c:	00048513          	mv	a0,s1
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	028080e7          	jalr	40(ra) # 80002d48 <__printf>
    80002d28:	00002517          	auipc	a0,0x2
    80002d2c:	36850513          	addi	a0,a0,872 # 80005090 <kvmincrease+0xbe0>
    80002d30:	00000097          	auipc	ra,0x0
    80002d34:	018080e7          	jalr	24(ra) # 80002d48 <__printf>
    80002d38:	00100793          	li	a5,1
    80002d3c:	00003717          	auipc	a4,0x3
    80002d40:	b0f72623          	sw	a5,-1268(a4) # 80005848 <panicked>
    80002d44:	0000006f          	j	80002d44 <panic+0x58>

0000000080002d48 <__printf>:
    80002d48:	f3010113          	addi	sp,sp,-208
    80002d4c:	08813023          	sd	s0,128(sp)
    80002d50:	07313423          	sd	s3,104(sp)
    80002d54:	09010413          	addi	s0,sp,144
    80002d58:	05813023          	sd	s8,64(sp)
    80002d5c:	08113423          	sd	ra,136(sp)
    80002d60:	06913c23          	sd	s1,120(sp)
    80002d64:	07213823          	sd	s2,112(sp)
    80002d68:	07413023          	sd	s4,96(sp)
    80002d6c:	05513c23          	sd	s5,88(sp)
    80002d70:	05613823          	sd	s6,80(sp)
    80002d74:	05713423          	sd	s7,72(sp)
    80002d78:	03913c23          	sd	s9,56(sp)
    80002d7c:	03a13823          	sd	s10,48(sp)
    80002d80:	03b13423          	sd	s11,40(sp)
    80002d84:	00004317          	auipc	t1,0x4
    80002d88:	d2c30313          	addi	t1,t1,-724 # 80006ab0 <pr>
    80002d8c:	01832c03          	lw	s8,24(t1)
    80002d90:	00b43423          	sd	a1,8(s0)
    80002d94:	00c43823          	sd	a2,16(s0)
    80002d98:	00d43c23          	sd	a3,24(s0)
    80002d9c:	02e43023          	sd	a4,32(s0)
    80002da0:	02f43423          	sd	a5,40(s0)
    80002da4:	03043823          	sd	a6,48(s0)
    80002da8:	03143c23          	sd	a7,56(s0)
    80002dac:	00050993          	mv	s3,a0
    80002db0:	4a0c1663          	bnez	s8,8000325c <__printf+0x514>
    80002db4:	60098c63          	beqz	s3,800033cc <__printf+0x684>
    80002db8:	0009c503          	lbu	a0,0(s3)
    80002dbc:	00840793          	addi	a5,s0,8
    80002dc0:	f6f43c23          	sd	a5,-136(s0)
    80002dc4:	00000493          	li	s1,0
    80002dc8:	22050063          	beqz	a0,80002fe8 <__printf+0x2a0>
    80002dcc:	00002a37          	lui	s4,0x2
    80002dd0:	00018ab7          	lui	s5,0x18
    80002dd4:	000f4b37          	lui	s6,0xf4
    80002dd8:	00989bb7          	lui	s7,0x989
    80002ddc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002de0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002de4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002de8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002dec:	00148c9b          	addiw	s9,s1,1
    80002df0:	02500793          	li	a5,37
    80002df4:	01998933          	add	s2,s3,s9
    80002df8:	38f51263          	bne	a0,a5,8000317c <__printf+0x434>
    80002dfc:	00094783          	lbu	a5,0(s2)
    80002e00:	00078c9b          	sext.w	s9,a5
    80002e04:	1e078263          	beqz	a5,80002fe8 <__printf+0x2a0>
    80002e08:	0024849b          	addiw	s1,s1,2
    80002e0c:	07000713          	li	a4,112
    80002e10:	00998933          	add	s2,s3,s1
    80002e14:	38e78a63          	beq	a5,a4,800031a8 <__printf+0x460>
    80002e18:	20f76863          	bltu	a4,a5,80003028 <__printf+0x2e0>
    80002e1c:	42a78863          	beq	a5,a0,8000324c <__printf+0x504>
    80002e20:	06400713          	li	a4,100
    80002e24:	40e79663          	bne	a5,a4,80003230 <__printf+0x4e8>
    80002e28:	f7843783          	ld	a5,-136(s0)
    80002e2c:	0007a603          	lw	a2,0(a5)
    80002e30:	00878793          	addi	a5,a5,8
    80002e34:	f6f43c23          	sd	a5,-136(s0)
    80002e38:	42064a63          	bltz	a2,8000326c <__printf+0x524>
    80002e3c:	00a00713          	li	a4,10
    80002e40:	02e677bb          	remuw	a5,a2,a4
    80002e44:	00002d97          	auipc	s11,0x2
    80002e48:	3bcd8d93          	addi	s11,s11,956 # 80005200 <digits>
    80002e4c:	00900593          	li	a1,9
    80002e50:	0006051b          	sext.w	a0,a2
    80002e54:	00000c93          	li	s9,0
    80002e58:	02079793          	slli	a5,a5,0x20
    80002e5c:	0207d793          	srli	a5,a5,0x20
    80002e60:	00fd87b3          	add	a5,s11,a5
    80002e64:	0007c783          	lbu	a5,0(a5)
    80002e68:	02e656bb          	divuw	a3,a2,a4
    80002e6c:	f8f40023          	sb	a5,-128(s0)
    80002e70:	14c5d863          	bge	a1,a2,80002fc0 <__printf+0x278>
    80002e74:	06300593          	li	a1,99
    80002e78:	00100c93          	li	s9,1
    80002e7c:	02e6f7bb          	remuw	a5,a3,a4
    80002e80:	02079793          	slli	a5,a5,0x20
    80002e84:	0207d793          	srli	a5,a5,0x20
    80002e88:	00fd87b3          	add	a5,s11,a5
    80002e8c:	0007c783          	lbu	a5,0(a5)
    80002e90:	02e6d73b          	divuw	a4,a3,a4
    80002e94:	f8f400a3          	sb	a5,-127(s0)
    80002e98:	12a5f463          	bgeu	a1,a0,80002fc0 <__printf+0x278>
    80002e9c:	00a00693          	li	a3,10
    80002ea0:	00900593          	li	a1,9
    80002ea4:	02d777bb          	remuw	a5,a4,a3
    80002ea8:	02079793          	slli	a5,a5,0x20
    80002eac:	0207d793          	srli	a5,a5,0x20
    80002eb0:	00fd87b3          	add	a5,s11,a5
    80002eb4:	0007c503          	lbu	a0,0(a5)
    80002eb8:	02d757bb          	divuw	a5,a4,a3
    80002ebc:	f8a40123          	sb	a0,-126(s0)
    80002ec0:	48e5f263          	bgeu	a1,a4,80003344 <__printf+0x5fc>
    80002ec4:	06300513          	li	a0,99
    80002ec8:	02d7f5bb          	remuw	a1,a5,a3
    80002ecc:	02059593          	slli	a1,a1,0x20
    80002ed0:	0205d593          	srli	a1,a1,0x20
    80002ed4:	00bd85b3          	add	a1,s11,a1
    80002ed8:	0005c583          	lbu	a1,0(a1)
    80002edc:	02d7d7bb          	divuw	a5,a5,a3
    80002ee0:	f8b401a3          	sb	a1,-125(s0)
    80002ee4:	48e57263          	bgeu	a0,a4,80003368 <__printf+0x620>
    80002ee8:	3e700513          	li	a0,999
    80002eec:	02d7f5bb          	remuw	a1,a5,a3
    80002ef0:	02059593          	slli	a1,a1,0x20
    80002ef4:	0205d593          	srli	a1,a1,0x20
    80002ef8:	00bd85b3          	add	a1,s11,a1
    80002efc:	0005c583          	lbu	a1,0(a1)
    80002f00:	02d7d7bb          	divuw	a5,a5,a3
    80002f04:	f8b40223          	sb	a1,-124(s0)
    80002f08:	46e57663          	bgeu	a0,a4,80003374 <__printf+0x62c>
    80002f0c:	02d7f5bb          	remuw	a1,a5,a3
    80002f10:	02059593          	slli	a1,a1,0x20
    80002f14:	0205d593          	srli	a1,a1,0x20
    80002f18:	00bd85b3          	add	a1,s11,a1
    80002f1c:	0005c583          	lbu	a1,0(a1)
    80002f20:	02d7d7bb          	divuw	a5,a5,a3
    80002f24:	f8b402a3          	sb	a1,-123(s0)
    80002f28:	46ea7863          	bgeu	s4,a4,80003398 <__printf+0x650>
    80002f2c:	02d7f5bb          	remuw	a1,a5,a3
    80002f30:	02059593          	slli	a1,a1,0x20
    80002f34:	0205d593          	srli	a1,a1,0x20
    80002f38:	00bd85b3          	add	a1,s11,a1
    80002f3c:	0005c583          	lbu	a1,0(a1)
    80002f40:	02d7d7bb          	divuw	a5,a5,a3
    80002f44:	f8b40323          	sb	a1,-122(s0)
    80002f48:	3eeaf863          	bgeu	s5,a4,80003338 <__printf+0x5f0>
    80002f4c:	02d7f5bb          	remuw	a1,a5,a3
    80002f50:	02059593          	slli	a1,a1,0x20
    80002f54:	0205d593          	srli	a1,a1,0x20
    80002f58:	00bd85b3          	add	a1,s11,a1
    80002f5c:	0005c583          	lbu	a1,0(a1)
    80002f60:	02d7d7bb          	divuw	a5,a5,a3
    80002f64:	f8b403a3          	sb	a1,-121(s0)
    80002f68:	42eb7e63          	bgeu	s6,a4,800033a4 <__printf+0x65c>
    80002f6c:	02d7f5bb          	remuw	a1,a5,a3
    80002f70:	02059593          	slli	a1,a1,0x20
    80002f74:	0205d593          	srli	a1,a1,0x20
    80002f78:	00bd85b3          	add	a1,s11,a1
    80002f7c:	0005c583          	lbu	a1,0(a1)
    80002f80:	02d7d7bb          	divuw	a5,a5,a3
    80002f84:	f8b40423          	sb	a1,-120(s0)
    80002f88:	42ebfc63          	bgeu	s7,a4,800033c0 <__printf+0x678>
    80002f8c:	02079793          	slli	a5,a5,0x20
    80002f90:	0207d793          	srli	a5,a5,0x20
    80002f94:	00fd8db3          	add	s11,s11,a5
    80002f98:	000dc703          	lbu	a4,0(s11)
    80002f9c:	00a00793          	li	a5,10
    80002fa0:	00900c93          	li	s9,9
    80002fa4:	f8e404a3          	sb	a4,-119(s0)
    80002fa8:	00065c63          	bgez	a2,80002fc0 <__printf+0x278>
    80002fac:	f9040713          	addi	a4,s0,-112
    80002fb0:	00f70733          	add	a4,a4,a5
    80002fb4:	02d00693          	li	a3,45
    80002fb8:	fed70823          	sb	a3,-16(a4)
    80002fbc:	00078c93          	mv	s9,a5
    80002fc0:	f8040793          	addi	a5,s0,-128
    80002fc4:	01978cb3          	add	s9,a5,s9
    80002fc8:	f7f40d13          	addi	s10,s0,-129
    80002fcc:	000cc503          	lbu	a0,0(s9)
    80002fd0:	fffc8c93          	addi	s9,s9,-1
    80002fd4:	00000097          	auipc	ra,0x0
    80002fd8:	b90080e7          	jalr	-1136(ra) # 80002b64 <consputc>
    80002fdc:	ffac98e3          	bne	s9,s10,80002fcc <__printf+0x284>
    80002fe0:	00094503          	lbu	a0,0(s2)
    80002fe4:	e00514e3          	bnez	a0,80002dec <__printf+0xa4>
    80002fe8:	1a0c1663          	bnez	s8,80003194 <__printf+0x44c>
    80002fec:	08813083          	ld	ra,136(sp)
    80002ff0:	08013403          	ld	s0,128(sp)
    80002ff4:	07813483          	ld	s1,120(sp)
    80002ff8:	07013903          	ld	s2,112(sp)
    80002ffc:	06813983          	ld	s3,104(sp)
    80003000:	06013a03          	ld	s4,96(sp)
    80003004:	05813a83          	ld	s5,88(sp)
    80003008:	05013b03          	ld	s6,80(sp)
    8000300c:	04813b83          	ld	s7,72(sp)
    80003010:	04013c03          	ld	s8,64(sp)
    80003014:	03813c83          	ld	s9,56(sp)
    80003018:	03013d03          	ld	s10,48(sp)
    8000301c:	02813d83          	ld	s11,40(sp)
    80003020:	0d010113          	addi	sp,sp,208
    80003024:	00008067          	ret
    80003028:	07300713          	li	a4,115
    8000302c:	1ce78a63          	beq	a5,a4,80003200 <__printf+0x4b8>
    80003030:	07800713          	li	a4,120
    80003034:	1ee79e63          	bne	a5,a4,80003230 <__printf+0x4e8>
    80003038:	f7843783          	ld	a5,-136(s0)
    8000303c:	0007a703          	lw	a4,0(a5)
    80003040:	00878793          	addi	a5,a5,8
    80003044:	f6f43c23          	sd	a5,-136(s0)
    80003048:	28074263          	bltz	a4,800032cc <__printf+0x584>
    8000304c:	00002d97          	auipc	s11,0x2
    80003050:	1b4d8d93          	addi	s11,s11,436 # 80005200 <digits>
    80003054:	00f77793          	andi	a5,a4,15
    80003058:	00fd87b3          	add	a5,s11,a5
    8000305c:	0007c683          	lbu	a3,0(a5)
    80003060:	00f00613          	li	a2,15
    80003064:	0007079b          	sext.w	a5,a4
    80003068:	f8d40023          	sb	a3,-128(s0)
    8000306c:	0047559b          	srliw	a1,a4,0x4
    80003070:	0047569b          	srliw	a3,a4,0x4
    80003074:	00000c93          	li	s9,0
    80003078:	0ee65063          	bge	a2,a4,80003158 <__printf+0x410>
    8000307c:	00f6f693          	andi	a3,a3,15
    80003080:	00dd86b3          	add	a3,s11,a3
    80003084:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003088:	0087d79b          	srliw	a5,a5,0x8
    8000308c:	00100c93          	li	s9,1
    80003090:	f8d400a3          	sb	a3,-127(s0)
    80003094:	0cb67263          	bgeu	a2,a1,80003158 <__printf+0x410>
    80003098:	00f7f693          	andi	a3,a5,15
    8000309c:	00dd86b3          	add	a3,s11,a3
    800030a0:	0006c583          	lbu	a1,0(a3)
    800030a4:	00f00613          	li	a2,15
    800030a8:	0047d69b          	srliw	a3,a5,0x4
    800030ac:	f8b40123          	sb	a1,-126(s0)
    800030b0:	0047d593          	srli	a1,a5,0x4
    800030b4:	28f67e63          	bgeu	a2,a5,80003350 <__printf+0x608>
    800030b8:	00f6f693          	andi	a3,a3,15
    800030bc:	00dd86b3          	add	a3,s11,a3
    800030c0:	0006c503          	lbu	a0,0(a3)
    800030c4:	0087d813          	srli	a6,a5,0x8
    800030c8:	0087d69b          	srliw	a3,a5,0x8
    800030cc:	f8a401a3          	sb	a0,-125(s0)
    800030d0:	28b67663          	bgeu	a2,a1,8000335c <__printf+0x614>
    800030d4:	00f6f693          	andi	a3,a3,15
    800030d8:	00dd86b3          	add	a3,s11,a3
    800030dc:	0006c583          	lbu	a1,0(a3)
    800030e0:	00c7d513          	srli	a0,a5,0xc
    800030e4:	00c7d69b          	srliw	a3,a5,0xc
    800030e8:	f8b40223          	sb	a1,-124(s0)
    800030ec:	29067a63          	bgeu	a2,a6,80003380 <__printf+0x638>
    800030f0:	00f6f693          	andi	a3,a3,15
    800030f4:	00dd86b3          	add	a3,s11,a3
    800030f8:	0006c583          	lbu	a1,0(a3)
    800030fc:	0107d813          	srli	a6,a5,0x10
    80003100:	0107d69b          	srliw	a3,a5,0x10
    80003104:	f8b402a3          	sb	a1,-123(s0)
    80003108:	28a67263          	bgeu	a2,a0,8000338c <__printf+0x644>
    8000310c:	00f6f693          	andi	a3,a3,15
    80003110:	00dd86b3          	add	a3,s11,a3
    80003114:	0006c683          	lbu	a3,0(a3)
    80003118:	0147d79b          	srliw	a5,a5,0x14
    8000311c:	f8d40323          	sb	a3,-122(s0)
    80003120:	21067663          	bgeu	a2,a6,8000332c <__printf+0x5e4>
    80003124:	02079793          	slli	a5,a5,0x20
    80003128:	0207d793          	srli	a5,a5,0x20
    8000312c:	00fd8db3          	add	s11,s11,a5
    80003130:	000dc683          	lbu	a3,0(s11)
    80003134:	00800793          	li	a5,8
    80003138:	00700c93          	li	s9,7
    8000313c:	f8d403a3          	sb	a3,-121(s0)
    80003140:	00075c63          	bgez	a4,80003158 <__printf+0x410>
    80003144:	f9040713          	addi	a4,s0,-112
    80003148:	00f70733          	add	a4,a4,a5
    8000314c:	02d00693          	li	a3,45
    80003150:	fed70823          	sb	a3,-16(a4)
    80003154:	00078c93          	mv	s9,a5
    80003158:	f8040793          	addi	a5,s0,-128
    8000315c:	01978cb3          	add	s9,a5,s9
    80003160:	f7f40d13          	addi	s10,s0,-129
    80003164:	000cc503          	lbu	a0,0(s9)
    80003168:	fffc8c93          	addi	s9,s9,-1
    8000316c:	00000097          	auipc	ra,0x0
    80003170:	9f8080e7          	jalr	-1544(ra) # 80002b64 <consputc>
    80003174:	ff9d18e3          	bne	s10,s9,80003164 <__printf+0x41c>
    80003178:	0100006f          	j	80003188 <__printf+0x440>
    8000317c:	00000097          	auipc	ra,0x0
    80003180:	9e8080e7          	jalr	-1560(ra) # 80002b64 <consputc>
    80003184:	000c8493          	mv	s1,s9
    80003188:	00094503          	lbu	a0,0(s2)
    8000318c:	c60510e3          	bnez	a0,80002dec <__printf+0xa4>
    80003190:	e40c0ee3          	beqz	s8,80002fec <__printf+0x2a4>
    80003194:	00004517          	auipc	a0,0x4
    80003198:	91c50513          	addi	a0,a0,-1764 # 80006ab0 <pr>
    8000319c:	00001097          	auipc	ra,0x1
    800031a0:	94c080e7          	jalr	-1716(ra) # 80003ae8 <release>
    800031a4:	e49ff06f          	j	80002fec <__printf+0x2a4>
    800031a8:	f7843783          	ld	a5,-136(s0)
    800031ac:	03000513          	li	a0,48
    800031b0:	01000d13          	li	s10,16
    800031b4:	00878713          	addi	a4,a5,8
    800031b8:	0007bc83          	ld	s9,0(a5)
    800031bc:	f6e43c23          	sd	a4,-136(s0)
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	9a4080e7          	jalr	-1628(ra) # 80002b64 <consputc>
    800031c8:	07800513          	li	a0,120
    800031cc:	00000097          	auipc	ra,0x0
    800031d0:	998080e7          	jalr	-1640(ra) # 80002b64 <consputc>
    800031d4:	00002d97          	auipc	s11,0x2
    800031d8:	02cd8d93          	addi	s11,s11,44 # 80005200 <digits>
    800031dc:	03ccd793          	srli	a5,s9,0x3c
    800031e0:	00fd87b3          	add	a5,s11,a5
    800031e4:	0007c503          	lbu	a0,0(a5)
    800031e8:	fffd0d1b          	addiw	s10,s10,-1
    800031ec:	004c9c93          	slli	s9,s9,0x4
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	974080e7          	jalr	-1676(ra) # 80002b64 <consputc>
    800031f8:	fe0d12e3          	bnez	s10,800031dc <__printf+0x494>
    800031fc:	f8dff06f          	j	80003188 <__printf+0x440>
    80003200:	f7843783          	ld	a5,-136(s0)
    80003204:	0007bc83          	ld	s9,0(a5)
    80003208:	00878793          	addi	a5,a5,8
    8000320c:	f6f43c23          	sd	a5,-136(s0)
    80003210:	000c9a63          	bnez	s9,80003224 <__printf+0x4dc>
    80003214:	1080006f          	j	8000331c <__printf+0x5d4>
    80003218:	001c8c93          	addi	s9,s9,1
    8000321c:	00000097          	auipc	ra,0x0
    80003220:	948080e7          	jalr	-1720(ra) # 80002b64 <consputc>
    80003224:	000cc503          	lbu	a0,0(s9)
    80003228:	fe0518e3          	bnez	a0,80003218 <__printf+0x4d0>
    8000322c:	f5dff06f          	j	80003188 <__printf+0x440>
    80003230:	02500513          	li	a0,37
    80003234:	00000097          	auipc	ra,0x0
    80003238:	930080e7          	jalr	-1744(ra) # 80002b64 <consputc>
    8000323c:	000c8513          	mv	a0,s9
    80003240:	00000097          	auipc	ra,0x0
    80003244:	924080e7          	jalr	-1756(ra) # 80002b64 <consputc>
    80003248:	f41ff06f          	j	80003188 <__printf+0x440>
    8000324c:	02500513          	li	a0,37
    80003250:	00000097          	auipc	ra,0x0
    80003254:	914080e7          	jalr	-1772(ra) # 80002b64 <consputc>
    80003258:	f31ff06f          	j	80003188 <__printf+0x440>
    8000325c:	00030513          	mv	a0,t1
    80003260:	00000097          	auipc	ra,0x0
    80003264:	7bc080e7          	jalr	1980(ra) # 80003a1c <acquire>
    80003268:	b4dff06f          	j	80002db4 <__printf+0x6c>
    8000326c:	40c0053b          	negw	a0,a2
    80003270:	00a00713          	li	a4,10
    80003274:	02e576bb          	remuw	a3,a0,a4
    80003278:	00002d97          	auipc	s11,0x2
    8000327c:	f88d8d93          	addi	s11,s11,-120 # 80005200 <digits>
    80003280:	ff700593          	li	a1,-9
    80003284:	02069693          	slli	a3,a3,0x20
    80003288:	0206d693          	srli	a3,a3,0x20
    8000328c:	00dd86b3          	add	a3,s11,a3
    80003290:	0006c683          	lbu	a3,0(a3)
    80003294:	02e557bb          	divuw	a5,a0,a4
    80003298:	f8d40023          	sb	a3,-128(s0)
    8000329c:	10b65e63          	bge	a2,a1,800033b8 <__printf+0x670>
    800032a0:	06300593          	li	a1,99
    800032a4:	02e7f6bb          	remuw	a3,a5,a4
    800032a8:	02069693          	slli	a3,a3,0x20
    800032ac:	0206d693          	srli	a3,a3,0x20
    800032b0:	00dd86b3          	add	a3,s11,a3
    800032b4:	0006c683          	lbu	a3,0(a3)
    800032b8:	02e7d73b          	divuw	a4,a5,a4
    800032bc:	00200793          	li	a5,2
    800032c0:	f8d400a3          	sb	a3,-127(s0)
    800032c4:	bca5ece3          	bltu	a1,a0,80002e9c <__printf+0x154>
    800032c8:	ce5ff06f          	j	80002fac <__printf+0x264>
    800032cc:	40e007bb          	negw	a5,a4
    800032d0:	00002d97          	auipc	s11,0x2
    800032d4:	f30d8d93          	addi	s11,s11,-208 # 80005200 <digits>
    800032d8:	00f7f693          	andi	a3,a5,15
    800032dc:	00dd86b3          	add	a3,s11,a3
    800032e0:	0006c583          	lbu	a1,0(a3)
    800032e4:	ff100613          	li	a2,-15
    800032e8:	0047d69b          	srliw	a3,a5,0x4
    800032ec:	f8b40023          	sb	a1,-128(s0)
    800032f0:	0047d59b          	srliw	a1,a5,0x4
    800032f4:	0ac75e63          	bge	a4,a2,800033b0 <__printf+0x668>
    800032f8:	00f6f693          	andi	a3,a3,15
    800032fc:	00dd86b3          	add	a3,s11,a3
    80003300:	0006c603          	lbu	a2,0(a3)
    80003304:	00f00693          	li	a3,15
    80003308:	0087d79b          	srliw	a5,a5,0x8
    8000330c:	f8c400a3          	sb	a2,-127(s0)
    80003310:	d8b6e4e3          	bltu	a3,a1,80003098 <__printf+0x350>
    80003314:	00200793          	li	a5,2
    80003318:	e2dff06f          	j	80003144 <__printf+0x3fc>
    8000331c:	00002c97          	auipc	s9,0x2
    80003320:	ec4c8c93          	addi	s9,s9,-316 # 800051e0 <_ZZ12printIntegermE6digits+0x148>
    80003324:	02800513          	li	a0,40
    80003328:	ef1ff06f          	j	80003218 <__printf+0x4d0>
    8000332c:	00700793          	li	a5,7
    80003330:	00600c93          	li	s9,6
    80003334:	e0dff06f          	j	80003140 <__printf+0x3f8>
    80003338:	00700793          	li	a5,7
    8000333c:	00600c93          	li	s9,6
    80003340:	c69ff06f          	j	80002fa8 <__printf+0x260>
    80003344:	00300793          	li	a5,3
    80003348:	00200c93          	li	s9,2
    8000334c:	c5dff06f          	j	80002fa8 <__printf+0x260>
    80003350:	00300793          	li	a5,3
    80003354:	00200c93          	li	s9,2
    80003358:	de9ff06f          	j	80003140 <__printf+0x3f8>
    8000335c:	00400793          	li	a5,4
    80003360:	00300c93          	li	s9,3
    80003364:	dddff06f          	j	80003140 <__printf+0x3f8>
    80003368:	00400793          	li	a5,4
    8000336c:	00300c93          	li	s9,3
    80003370:	c39ff06f          	j	80002fa8 <__printf+0x260>
    80003374:	00500793          	li	a5,5
    80003378:	00400c93          	li	s9,4
    8000337c:	c2dff06f          	j	80002fa8 <__printf+0x260>
    80003380:	00500793          	li	a5,5
    80003384:	00400c93          	li	s9,4
    80003388:	db9ff06f          	j	80003140 <__printf+0x3f8>
    8000338c:	00600793          	li	a5,6
    80003390:	00500c93          	li	s9,5
    80003394:	dadff06f          	j	80003140 <__printf+0x3f8>
    80003398:	00600793          	li	a5,6
    8000339c:	00500c93          	li	s9,5
    800033a0:	c09ff06f          	j	80002fa8 <__printf+0x260>
    800033a4:	00800793          	li	a5,8
    800033a8:	00700c93          	li	s9,7
    800033ac:	bfdff06f          	j	80002fa8 <__printf+0x260>
    800033b0:	00100793          	li	a5,1
    800033b4:	d91ff06f          	j	80003144 <__printf+0x3fc>
    800033b8:	00100793          	li	a5,1
    800033bc:	bf1ff06f          	j	80002fac <__printf+0x264>
    800033c0:	00900793          	li	a5,9
    800033c4:	00800c93          	li	s9,8
    800033c8:	be1ff06f          	j	80002fa8 <__printf+0x260>
    800033cc:	00002517          	auipc	a0,0x2
    800033d0:	e1c50513          	addi	a0,a0,-484 # 800051e8 <_ZZ12printIntegermE6digits+0x150>
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	918080e7          	jalr	-1768(ra) # 80002cec <panic>

00000000800033dc <printfinit>:
    800033dc:	fe010113          	addi	sp,sp,-32
    800033e0:	00813823          	sd	s0,16(sp)
    800033e4:	00913423          	sd	s1,8(sp)
    800033e8:	00113c23          	sd	ra,24(sp)
    800033ec:	02010413          	addi	s0,sp,32
    800033f0:	00003497          	auipc	s1,0x3
    800033f4:	6c048493          	addi	s1,s1,1728 # 80006ab0 <pr>
    800033f8:	00048513          	mv	a0,s1
    800033fc:	00002597          	auipc	a1,0x2
    80003400:	dfc58593          	addi	a1,a1,-516 # 800051f8 <_ZZ12printIntegermE6digits+0x160>
    80003404:	00000097          	auipc	ra,0x0
    80003408:	5f4080e7          	jalr	1524(ra) # 800039f8 <initlock>
    8000340c:	01813083          	ld	ra,24(sp)
    80003410:	01013403          	ld	s0,16(sp)
    80003414:	0004ac23          	sw	zero,24(s1)
    80003418:	00813483          	ld	s1,8(sp)
    8000341c:	02010113          	addi	sp,sp,32
    80003420:	00008067          	ret

0000000080003424 <uartinit>:
    80003424:	ff010113          	addi	sp,sp,-16
    80003428:	00813423          	sd	s0,8(sp)
    8000342c:	01010413          	addi	s0,sp,16
    80003430:	100007b7          	lui	a5,0x10000
    80003434:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003438:	f8000713          	li	a4,-128
    8000343c:	00e781a3          	sb	a4,3(a5)
    80003440:	00300713          	li	a4,3
    80003444:	00e78023          	sb	a4,0(a5)
    80003448:	000780a3          	sb	zero,1(a5)
    8000344c:	00e781a3          	sb	a4,3(a5)
    80003450:	00700693          	li	a3,7
    80003454:	00d78123          	sb	a3,2(a5)
    80003458:	00e780a3          	sb	a4,1(a5)
    8000345c:	00813403          	ld	s0,8(sp)
    80003460:	01010113          	addi	sp,sp,16
    80003464:	00008067          	ret

0000000080003468 <uartputc>:
    80003468:	00002797          	auipc	a5,0x2
    8000346c:	3e07a783          	lw	a5,992(a5) # 80005848 <panicked>
    80003470:	00078463          	beqz	a5,80003478 <uartputc+0x10>
    80003474:	0000006f          	j	80003474 <uartputc+0xc>
    80003478:	fd010113          	addi	sp,sp,-48
    8000347c:	02813023          	sd	s0,32(sp)
    80003480:	00913c23          	sd	s1,24(sp)
    80003484:	01213823          	sd	s2,16(sp)
    80003488:	01313423          	sd	s3,8(sp)
    8000348c:	02113423          	sd	ra,40(sp)
    80003490:	03010413          	addi	s0,sp,48
    80003494:	00002917          	auipc	s2,0x2
    80003498:	3bc90913          	addi	s2,s2,956 # 80005850 <uart_tx_r>
    8000349c:	00093783          	ld	a5,0(s2)
    800034a0:	00002497          	auipc	s1,0x2
    800034a4:	3b848493          	addi	s1,s1,952 # 80005858 <uart_tx_w>
    800034a8:	0004b703          	ld	a4,0(s1)
    800034ac:	02078693          	addi	a3,a5,32
    800034b0:	00050993          	mv	s3,a0
    800034b4:	02e69c63          	bne	a3,a4,800034ec <uartputc+0x84>
    800034b8:	00001097          	auipc	ra,0x1
    800034bc:	834080e7          	jalr	-1996(ra) # 80003cec <push_on>
    800034c0:	00093783          	ld	a5,0(s2)
    800034c4:	0004b703          	ld	a4,0(s1)
    800034c8:	02078793          	addi	a5,a5,32
    800034cc:	00e79463          	bne	a5,a4,800034d4 <uartputc+0x6c>
    800034d0:	0000006f          	j	800034d0 <uartputc+0x68>
    800034d4:	00001097          	auipc	ra,0x1
    800034d8:	88c080e7          	jalr	-1908(ra) # 80003d60 <pop_on>
    800034dc:	00093783          	ld	a5,0(s2)
    800034e0:	0004b703          	ld	a4,0(s1)
    800034e4:	02078693          	addi	a3,a5,32
    800034e8:	fce688e3          	beq	a3,a4,800034b8 <uartputc+0x50>
    800034ec:	01f77693          	andi	a3,a4,31
    800034f0:	00003597          	auipc	a1,0x3
    800034f4:	5e058593          	addi	a1,a1,1504 # 80006ad0 <uart_tx_buf>
    800034f8:	00d586b3          	add	a3,a1,a3
    800034fc:	00170713          	addi	a4,a4,1
    80003500:	01368023          	sb	s3,0(a3)
    80003504:	00e4b023          	sd	a4,0(s1)
    80003508:	10000637          	lui	a2,0x10000
    8000350c:	02f71063          	bne	a4,a5,8000352c <uartputc+0xc4>
    80003510:	0340006f          	j	80003544 <uartputc+0xdc>
    80003514:	00074703          	lbu	a4,0(a4)
    80003518:	00f93023          	sd	a5,0(s2)
    8000351c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003520:	00093783          	ld	a5,0(s2)
    80003524:	0004b703          	ld	a4,0(s1)
    80003528:	00f70e63          	beq	a4,a5,80003544 <uartputc+0xdc>
    8000352c:	00564683          	lbu	a3,5(a2)
    80003530:	01f7f713          	andi	a4,a5,31
    80003534:	00e58733          	add	a4,a1,a4
    80003538:	0206f693          	andi	a3,a3,32
    8000353c:	00178793          	addi	a5,a5,1
    80003540:	fc069ae3          	bnez	a3,80003514 <uartputc+0xac>
    80003544:	02813083          	ld	ra,40(sp)
    80003548:	02013403          	ld	s0,32(sp)
    8000354c:	01813483          	ld	s1,24(sp)
    80003550:	01013903          	ld	s2,16(sp)
    80003554:	00813983          	ld	s3,8(sp)
    80003558:	03010113          	addi	sp,sp,48
    8000355c:	00008067          	ret

0000000080003560 <uartputc_sync>:
    80003560:	ff010113          	addi	sp,sp,-16
    80003564:	00813423          	sd	s0,8(sp)
    80003568:	01010413          	addi	s0,sp,16
    8000356c:	00002717          	auipc	a4,0x2
    80003570:	2dc72703          	lw	a4,732(a4) # 80005848 <panicked>
    80003574:	02071663          	bnez	a4,800035a0 <uartputc_sync+0x40>
    80003578:	00050793          	mv	a5,a0
    8000357c:	100006b7          	lui	a3,0x10000
    80003580:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003584:	02077713          	andi	a4,a4,32
    80003588:	fe070ce3          	beqz	a4,80003580 <uartputc_sync+0x20>
    8000358c:	0ff7f793          	andi	a5,a5,255
    80003590:	00f68023          	sb	a5,0(a3)
    80003594:	00813403          	ld	s0,8(sp)
    80003598:	01010113          	addi	sp,sp,16
    8000359c:	00008067          	ret
    800035a0:	0000006f          	j	800035a0 <uartputc_sync+0x40>

00000000800035a4 <uartstart>:
    800035a4:	ff010113          	addi	sp,sp,-16
    800035a8:	00813423          	sd	s0,8(sp)
    800035ac:	01010413          	addi	s0,sp,16
    800035b0:	00002617          	auipc	a2,0x2
    800035b4:	2a060613          	addi	a2,a2,672 # 80005850 <uart_tx_r>
    800035b8:	00002517          	auipc	a0,0x2
    800035bc:	2a050513          	addi	a0,a0,672 # 80005858 <uart_tx_w>
    800035c0:	00063783          	ld	a5,0(a2)
    800035c4:	00053703          	ld	a4,0(a0)
    800035c8:	04f70263          	beq	a4,a5,8000360c <uartstart+0x68>
    800035cc:	100005b7          	lui	a1,0x10000
    800035d0:	00003817          	auipc	a6,0x3
    800035d4:	50080813          	addi	a6,a6,1280 # 80006ad0 <uart_tx_buf>
    800035d8:	01c0006f          	j	800035f4 <uartstart+0x50>
    800035dc:	0006c703          	lbu	a4,0(a3)
    800035e0:	00f63023          	sd	a5,0(a2)
    800035e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800035e8:	00063783          	ld	a5,0(a2)
    800035ec:	00053703          	ld	a4,0(a0)
    800035f0:	00f70e63          	beq	a4,a5,8000360c <uartstart+0x68>
    800035f4:	01f7f713          	andi	a4,a5,31
    800035f8:	00e806b3          	add	a3,a6,a4
    800035fc:	0055c703          	lbu	a4,5(a1)
    80003600:	00178793          	addi	a5,a5,1
    80003604:	02077713          	andi	a4,a4,32
    80003608:	fc071ae3          	bnez	a4,800035dc <uartstart+0x38>
    8000360c:	00813403          	ld	s0,8(sp)
    80003610:	01010113          	addi	sp,sp,16
    80003614:	00008067          	ret

0000000080003618 <uartgetc>:
    80003618:	ff010113          	addi	sp,sp,-16
    8000361c:	00813423          	sd	s0,8(sp)
    80003620:	01010413          	addi	s0,sp,16
    80003624:	10000737          	lui	a4,0x10000
    80003628:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000362c:	0017f793          	andi	a5,a5,1
    80003630:	00078c63          	beqz	a5,80003648 <uartgetc+0x30>
    80003634:	00074503          	lbu	a0,0(a4)
    80003638:	0ff57513          	andi	a0,a0,255
    8000363c:	00813403          	ld	s0,8(sp)
    80003640:	01010113          	addi	sp,sp,16
    80003644:	00008067          	ret
    80003648:	fff00513          	li	a0,-1
    8000364c:	ff1ff06f          	j	8000363c <uartgetc+0x24>

0000000080003650 <uartintr>:
    80003650:	100007b7          	lui	a5,0x10000
    80003654:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003658:	0017f793          	andi	a5,a5,1
    8000365c:	0a078463          	beqz	a5,80003704 <uartintr+0xb4>
    80003660:	fe010113          	addi	sp,sp,-32
    80003664:	00813823          	sd	s0,16(sp)
    80003668:	00913423          	sd	s1,8(sp)
    8000366c:	00113c23          	sd	ra,24(sp)
    80003670:	02010413          	addi	s0,sp,32
    80003674:	100004b7          	lui	s1,0x10000
    80003678:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000367c:	0ff57513          	andi	a0,a0,255
    80003680:	fffff097          	auipc	ra,0xfffff
    80003684:	534080e7          	jalr	1332(ra) # 80002bb4 <consoleintr>
    80003688:	0054c783          	lbu	a5,5(s1)
    8000368c:	0017f793          	andi	a5,a5,1
    80003690:	fe0794e3          	bnez	a5,80003678 <uartintr+0x28>
    80003694:	00002617          	auipc	a2,0x2
    80003698:	1bc60613          	addi	a2,a2,444 # 80005850 <uart_tx_r>
    8000369c:	00002517          	auipc	a0,0x2
    800036a0:	1bc50513          	addi	a0,a0,444 # 80005858 <uart_tx_w>
    800036a4:	00063783          	ld	a5,0(a2)
    800036a8:	00053703          	ld	a4,0(a0)
    800036ac:	04f70263          	beq	a4,a5,800036f0 <uartintr+0xa0>
    800036b0:	100005b7          	lui	a1,0x10000
    800036b4:	00003817          	auipc	a6,0x3
    800036b8:	41c80813          	addi	a6,a6,1052 # 80006ad0 <uart_tx_buf>
    800036bc:	01c0006f          	j	800036d8 <uartintr+0x88>
    800036c0:	0006c703          	lbu	a4,0(a3)
    800036c4:	00f63023          	sd	a5,0(a2)
    800036c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036cc:	00063783          	ld	a5,0(a2)
    800036d0:	00053703          	ld	a4,0(a0)
    800036d4:	00f70e63          	beq	a4,a5,800036f0 <uartintr+0xa0>
    800036d8:	01f7f713          	andi	a4,a5,31
    800036dc:	00e806b3          	add	a3,a6,a4
    800036e0:	0055c703          	lbu	a4,5(a1)
    800036e4:	00178793          	addi	a5,a5,1
    800036e8:	02077713          	andi	a4,a4,32
    800036ec:	fc071ae3          	bnez	a4,800036c0 <uartintr+0x70>
    800036f0:	01813083          	ld	ra,24(sp)
    800036f4:	01013403          	ld	s0,16(sp)
    800036f8:	00813483          	ld	s1,8(sp)
    800036fc:	02010113          	addi	sp,sp,32
    80003700:	00008067          	ret
    80003704:	00002617          	auipc	a2,0x2
    80003708:	14c60613          	addi	a2,a2,332 # 80005850 <uart_tx_r>
    8000370c:	00002517          	auipc	a0,0x2
    80003710:	14c50513          	addi	a0,a0,332 # 80005858 <uart_tx_w>
    80003714:	00063783          	ld	a5,0(a2)
    80003718:	00053703          	ld	a4,0(a0)
    8000371c:	04f70263          	beq	a4,a5,80003760 <uartintr+0x110>
    80003720:	100005b7          	lui	a1,0x10000
    80003724:	00003817          	auipc	a6,0x3
    80003728:	3ac80813          	addi	a6,a6,940 # 80006ad0 <uart_tx_buf>
    8000372c:	01c0006f          	j	80003748 <uartintr+0xf8>
    80003730:	0006c703          	lbu	a4,0(a3)
    80003734:	00f63023          	sd	a5,0(a2)
    80003738:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000373c:	00063783          	ld	a5,0(a2)
    80003740:	00053703          	ld	a4,0(a0)
    80003744:	02f70063          	beq	a4,a5,80003764 <uartintr+0x114>
    80003748:	01f7f713          	andi	a4,a5,31
    8000374c:	00e806b3          	add	a3,a6,a4
    80003750:	0055c703          	lbu	a4,5(a1)
    80003754:	00178793          	addi	a5,a5,1
    80003758:	02077713          	andi	a4,a4,32
    8000375c:	fc071ae3          	bnez	a4,80003730 <uartintr+0xe0>
    80003760:	00008067          	ret
    80003764:	00008067          	ret

0000000080003768 <kinit>:
    80003768:	fc010113          	addi	sp,sp,-64
    8000376c:	02913423          	sd	s1,40(sp)
    80003770:	fffff7b7          	lui	a5,0xfffff
    80003774:	00004497          	auipc	s1,0x4
    80003778:	38b48493          	addi	s1,s1,907 # 80007aff <end+0xfff>
    8000377c:	02813823          	sd	s0,48(sp)
    80003780:	01313c23          	sd	s3,24(sp)
    80003784:	00f4f4b3          	and	s1,s1,a5
    80003788:	02113c23          	sd	ra,56(sp)
    8000378c:	03213023          	sd	s2,32(sp)
    80003790:	01413823          	sd	s4,16(sp)
    80003794:	01513423          	sd	s5,8(sp)
    80003798:	04010413          	addi	s0,sp,64
    8000379c:	000017b7          	lui	a5,0x1
    800037a0:	01100993          	li	s3,17
    800037a4:	00f487b3          	add	a5,s1,a5
    800037a8:	01b99993          	slli	s3,s3,0x1b
    800037ac:	06f9e063          	bltu	s3,a5,8000380c <kinit+0xa4>
    800037b0:	00003a97          	auipc	s5,0x3
    800037b4:	350a8a93          	addi	s5,s5,848 # 80006b00 <end>
    800037b8:	0754ec63          	bltu	s1,s5,80003830 <kinit+0xc8>
    800037bc:	0734fa63          	bgeu	s1,s3,80003830 <kinit+0xc8>
    800037c0:	00088a37          	lui	s4,0x88
    800037c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800037c8:	00002917          	auipc	s2,0x2
    800037cc:	09890913          	addi	s2,s2,152 # 80005860 <kmem>
    800037d0:	00ca1a13          	slli	s4,s4,0xc
    800037d4:	0140006f          	j	800037e8 <kinit+0x80>
    800037d8:	000017b7          	lui	a5,0x1
    800037dc:	00f484b3          	add	s1,s1,a5
    800037e0:	0554e863          	bltu	s1,s5,80003830 <kinit+0xc8>
    800037e4:	0534f663          	bgeu	s1,s3,80003830 <kinit+0xc8>
    800037e8:	00001637          	lui	a2,0x1
    800037ec:	00100593          	li	a1,1
    800037f0:	00048513          	mv	a0,s1
    800037f4:	00000097          	auipc	ra,0x0
    800037f8:	5e4080e7          	jalr	1508(ra) # 80003dd8 <__memset>
    800037fc:	00093783          	ld	a5,0(s2)
    80003800:	00f4b023          	sd	a5,0(s1)
    80003804:	00993023          	sd	s1,0(s2)
    80003808:	fd4498e3          	bne	s1,s4,800037d8 <kinit+0x70>
    8000380c:	03813083          	ld	ra,56(sp)
    80003810:	03013403          	ld	s0,48(sp)
    80003814:	02813483          	ld	s1,40(sp)
    80003818:	02013903          	ld	s2,32(sp)
    8000381c:	01813983          	ld	s3,24(sp)
    80003820:	01013a03          	ld	s4,16(sp)
    80003824:	00813a83          	ld	s5,8(sp)
    80003828:	04010113          	addi	sp,sp,64
    8000382c:	00008067          	ret
    80003830:	00002517          	auipc	a0,0x2
    80003834:	9e850513          	addi	a0,a0,-1560 # 80005218 <digits+0x18>
    80003838:	fffff097          	auipc	ra,0xfffff
    8000383c:	4b4080e7          	jalr	1204(ra) # 80002cec <panic>

0000000080003840 <freerange>:
    80003840:	fc010113          	addi	sp,sp,-64
    80003844:	000017b7          	lui	a5,0x1
    80003848:	02913423          	sd	s1,40(sp)
    8000384c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003850:	009504b3          	add	s1,a0,s1
    80003854:	fffff537          	lui	a0,0xfffff
    80003858:	02813823          	sd	s0,48(sp)
    8000385c:	02113c23          	sd	ra,56(sp)
    80003860:	03213023          	sd	s2,32(sp)
    80003864:	01313c23          	sd	s3,24(sp)
    80003868:	01413823          	sd	s4,16(sp)
    8000386c:	01513423          	sd	s5,8(sp)
    80003870:	01613023          	sd	s6,0(sp)
    80003874:	04010413          	addi	s0,sp,64
    80003878:	00a4f4b3          	and	s1,s1,a0
    8000387c:	00f487b3          	add	a5,s1,a5
    80003880:	06f5e463          	bltu	a1,a5,800038e8 <freerange+0xa8>
    80003884:	00003a97          	auipc	s5,0x3
    80003888:	27ca8a93          	addi	s5,s5,636 # 80006b00 <end>
    8000388c:	0954e263          	bltu	s1,s5,80003910 <freerange+0xd0>
    80003890:	01100993          	li	s3,17
    80003894:	01b99993          	slli	s3,s3,0x1b
    80003898:	0734fc63          	bgeu	s1,s3,80003910 <freerange+0xd0>
    8000389c:	00058a13          	mv	s4,a1
    800038a0:	00002917          	auipc	s2,0x2
    800038a4:	fc090913          	addi	s2,s2,-64 # 80005860 <kmem>
    800038a8:	00002b37          	lui	s6,0x2
    800038ac:	0140006f          	j	800038c0 <freerange+0x80>
    800038b0:	000017b7          	lui	a5,0x1
    800038b4:	00f484b3          	add	s1,s1,a5
    800038b8:	0554ec63          	bltu	s1,s5,80003910 <freerange+0xd0>
    800038bc:	0534fa63          	bgeu	s1,s3,80003910 <freerange+0xd0>
    800038c0:	00001637          	lui	a2,0x1
    800038c4:	00100593          	li	a1,1
    800038c8:	00048513          	mv	a0,s1
    800038cc:	00000097          	auipc	ra,0x0
    800038d0:	50c080e7          	jalr	1292(ra) # 80003dd8 <__memset>
    800038d4:	00093703          	ld	a4,0(s2)
    800038d8:	016487b3          	add	a5,s1,s6
    800038dc:	00e4b023          	sd	a4,0(s1)
    800038e0:	00993023          	sd	s1,0(s2)
    800038e4:	fcfa76e3          	bgeu	s4,a5,800038b0 <freerange+0x70>
    800038e8:	03813083          	ld	ra,56(sp)
    800038ec:	03013403          	ld	s0,48(sp)
    800038f0:	02813483          	ld	s1,40(sp)
    800038f4:	02013903          	ld	s2,32(sp)
    800038f8:	01813983          	ld	s3,24(sp)
    800038fc:	01013a03          	ld	s4,16(sp)
    80003900:	00813a83          	ld	s5,8(sp)
    80003904:	00013b03          	ld	s6,0(sp)
    80003908:	04010113          	addi	sp,sp,64
    8000390c:	00008067          	ret
    80003910:	00002517          	auipc	a0,0x2
    80003914:	90850513          	addi	a0,a0,-1784 # 80005218 <digits+0x18>
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	3d4080e7          	jalr	980(ra) # 80002cec <panic>

0000000080003920 <kfree>:
    80003920:	fe010113          	addi	sp,sp,-32
    80003924:	00813823          	sd	s0,16(sp)
    80003928:	00113c23          	sd	ra,24(sp)
    8000392c:	00913423          	sd	s1,8(sp)
    80003930:	02010413          	addi	s0,sp,32
    80003934:	03451793          	slli	a5,a0,0x34
    80003938:	04079c63          	bnez	a5,80003990 <kfree+0x70>
    8000393c:	00003797          	auipc	a5,0x3
    80003940:	1c478793          	addi	a5,a5,452 # 80006b00 <end>
    80003944:	00050493          	mv	s1,a0
    80003948:	04f56463          	bltu	a0,a5,80003990 <kfree+0x70>
    8000394c:	01100793          	li	a5,17
    80003950:	01b79793          	slli	a5,a5,0x1b
    80003954:	02f57e63          	bgeu	a0,a5,80003990 <kfree+0x70>
    80003958:	00001637          	lui	a2,0x1
    8000395c:	00100593          	li	a1,1
    80003960:	00000097          	auipc	ra,0x0
    80003964:	478080e7          	jalr	1144(ra) # 80003dd8 <__memset>
    80003968:	00002797          	auipc	a5,0x2
    8000396c:	ef878793          	addi	a5,a5,-264 # 80005860 <kmem>
    80003970:	0007b703          	ld	a4,0(a5)
    80003974:	01813083          	ld	ra,24(sp)
    80003978:	01013403          	ld	s0,16(sp)
    8000397c:	00e4b023          	sd	a4,0(s1)
    80003980:	0097b023          	sd	s1,0(a5)
    80003984:	00813483          	ld	s1,8(sp)
    80003988:	02010113          	addi	sp,sp,32
    8000398c:	00008067          	ret
    80003990:	00002517          	auipc	a0,0x2
    80003994:	88850513          	addi	a0,a0,-1912 # 80005218 <digits+0x18>
    80003998:	fffff097          	auipc	ra,0xfffff
    8000399c:	354080e7          	jalr	852(ra) # 80002cec <panic>

00000000800039a0 <kalloc>:
    800039a0:	fe010113          	addi	sp,sp,-32
    800039a4:	00813823          	sd	s0,16(sp)
    800039a8:	00913423          	sd	s1,8(sp)
    800039ac:	00113c23          	sd	ra,24(sp)
    800039b0:	02010413          	addi	s0,sp,32
    800039b4:	00002797          	auipc	a5,0x2
    800039b8:	eac78793          	addi	a5,a5,-340 # 80005860 <kmem>
    800039bc:	0007b483          	ld	s1,0(a5)
    800039c0:	02048063          	beqz	s1,800039e0 <kalloc+0x40>
    800039c4:	0004b703          	ld	a4,0(s1)
    800039c8:	00001637          	lui	a2,0x1
    800039cc:	00500593          	li	a1,5
    800039d0:	00048513          	mv	a0,s1
    800039d4:	00e7b023          	sd	a4,0(a5)
    800039d8:	00000097          	auipc	ra,0x0
    800039dc:	400080e7          	jalr	1024(ra) # 80003dd8 <__memset>
    800039e0:	01813083          	ld	ra,24(sp)
    800039e4:	01013403          	ld	s0,16(sp)
    800039e8:	00048513          	mv	a0,s1
    800039ec:	00813483          	ld	s1,8(sp)
    800039f0:	02010113          	addi	sp,sp,32
    800039f4:	00008067          	ret

00000000800039f8 <initlock>:
    800039f8:	ff010113          	addi	sp,sp,-16
    800039fc:	00813423          	sd	s0,8(sp)
    80003a00:	01010413          	addi	s0,sp,16
    80003a04:	00813403          	ld	s0,8(sp)
    80003a08:	00b53423          	sd	a1,8(a0)
    80003a0c:	00052023          	sw	zero,0(a0)
    80003a10:	00053823          	sd	zero,16(a0)
    80003a14:	01010113          	addi	sp,sp,16
    80003a18:	00008067          	ret

0000000080003a1c <acquire>:
    80003a1c:	fe010113          	addi	sp,sp,-32
    80003a20:	00813823          	sd	s0,16(sp)
    80003a24:	00913423          	sd	s1,8(sp)
    80003a28:	00113c23          	sd	ra,24(sp)
    80003a2c:	01213023          	sd	s2,0(sp)
    80003a30:	02010413          	addi	s0,sp,32
    80003a34:	00050493          	mv	s1,a0
    80003a38:	10002973          	csrr	s2,sstatus
    80003a3c:	100027f3          	csrr	a5,sstatus
    80003a40:	ffd7f793          	andi	a5,a5,-3
    80003a44:	10079073          	csrw	sstatus,a5
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	8ec080e7          	jalr	-1812(ra) # 80002334 <mycpu>
    80003a50:	07852783          	lw	a5,120(a0)
    80003a54:	06078e63          	beqz	a5,80003ad0 <acquire+0xb4>
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	8dc080e7          	jalr	-1828(ra) # 80002334 <mycpu>
    80003a60:	07852783          	lw	a5,120(a0)
    80003a64:	0004a703          	lw	a4,0(s1)
    80003a68:	0017879b          	addiw	a5,a5,1
    80003a6c:	06f52c23          	sw	a5,120(a0)
    80003a70:	04071063          	bnez	a4,80003ab0 <acquire+0x94>
    80003a74:	00100713          	li	a4,1
    80003a78:	00070793          	mv	a5,a4
    80003a7c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003a80:	0007879b          	sext.w	a5,a5
    80003a84:	fe079ae3          	bnez	a5,80003a78 <acquire+0x5c>
    80003a88:	0ff0000f          	fence
    80003a8c:	fffff097          	auipc	ra,0xfffff
    80003a90:	8a8080e7          	jalr	-1880(ra) # 80002334 <mycpu>
    80003a94:	01813083          	ld	ra,24(sp)
    80003a98:	01013403          	ld	s0,16(sp)
    80003a9c:	00a4b823          	sd	a0,16(s1)
    80003aa0:	00013903          	ld	s2,0(sp)
    80003aa4:	00813483          	ld	s1,8(sp)
    80003aa8:	02010113          	addi	sp,sp,32
    80003aac:	00008067          	ret
    80003ab0:	0104b903          	ld	s2,16(s1)
    80003ab4:	fffff097          	auipc	ra,0xfffff
    80003ab8:	880080e7          	jalr	-1920(ra) # 80002334 <mycpu>
    80003abc:	faa91ce3          	bne	s2,a0,80003a74 <acquire+0x58>
    80003ac0:	00001517          	auipc	a0,0x1
    80003ac4:	76050513          	addi	a0,a0,1888 # 80005220 <digits+0x20>
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	224080e7          	jalr	548(ra) # 80002cec <panic>
    80003ad0:	00195913          	srli	s2,s2,0x1
    80003ad4:	fffff097          	auipc	ra,0xfffff
    80003ad8:	860080e7          	jalr	-1952(ra) # 80002334 <mycpu>
    80003adc:	00197913          	andi	s2,s2,1
    80003ae0:	07252e23          	sw	s2,124(a0)
    80003ae4:	f75ff06f          	j	80003a58 <acquire+0x3c>

0000000080003ae8 <release>:
    80003ae8:	fe010113          	addi	sp,sp,-32
    80003aec:	00813823          	sd	s0,16(sp)
    80003af0:	00113c23          	sd	ra,24(sp)
    80003af4:	00913423          	sd	s1,8(sp)
    80003af8:	01213023          	sd	s2,0(sp)
    80003afc:	02010413          	addi	s0,sp,32
    80003b00:	00052783          	lw	a5,0(a0)
    80003b04:	00079a63          	bnez	a5,80003b18 <release+0x30>
    80003b08:	00001517          	auipc	a0,0x1
    80003b0c:	72050513          	addi	a0,a0,1824 # 80005228 <digits+0x28>
    80003b10:	fffff097          	auipc	ra,0xfffff
    80003b14:	1dc080e7          	jalr	476(ra) # 80002cec <panic>
    80003b18:	01053903          	ld	s2,16(a0)
    80003b1c:	00050493          	mv	s1,a0
    80003b20:	fffff097          	auipc	ra,0xfffff
    80003b24:	814080e7          	jalr	-2028(ra) # 80002334 <mycpu>
    80003b28:	fea910e3          	bne	s2,a0,80003b08 <release+0x20>
    80003b2c:	0004b823          	sd	zero,16(s1)
    80003b30:	0ff0000f          	fence
    80003b34:	0f50000f          	fence	iorw,ow
    80003b38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	7f8080e7          	jalr	2040(ra) # 80002334 <mycpu>
    80003b44:	100027f3          	csrr	a5,sstatus
    80003b48:	0027f793          	andi	a5,a5,2
    80003b4c:	04079a63          	bnez	a5,80003ba0 <release+0xb8>
    80003b50:	07852783          	lw	a5,120(a0)
    80003b54:	02f05e63          	blez	a5,80003b90 <release+0xa8>
    80003b58:	fff7871b          	addiw	a4,a5,-1
    80003b5c:	06e52c23          	sw	a4,120(a0)
    80003b60:	00071c63          	bnez	a4,80003b78 <release+0x90>
    80003b64:	07c52783          	lw	a5,124(a0)
    80003b68:	00078863          	beqz	a5,80003b78 <release+0x90>
    80003b6c:	100027f3          	csrr	a5,sstatus
    80003b70:	0027e793          	ori	a5,a5,2
    80003b74:	10079073          	csrw	sstatus,a5
    80003b78:	01813083          	ld	ra,24(sp)
    80003b7c:	01013403          	ld	s0,16(sp)
    80003b80:	00813483          	ld	s1,8(sp)
    80003b84:	00013903          	ld	s2,0(sp)
    80003b88:	02010113          	addi	sp,sp,32
    80003b8c:	00008067          	ret
    80003b90:	00001517          	auipc	a0,0x1
    80003b94:	6b850513          	addi	a0,a0,1720 # 80005248 <digits+0x48>
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	154080e7          	jalr	340(ra) # 80002cec <panic>
    80003ba0:	00001517          	auipc	a0,0x1
    80003ba4:	69050513          	addi	a0,a0,1680 # 80005230 <digits+0x30>
    80003ba8:	fffff097          	auipc	ra,0xfffff
    80003bac:	144080e7          	jalr	324(ra) # 80002cec <panic>

0000000080003bb0 <holding>:
    80003bb0:	00052783          	lw	a5,0(a0)
    80003bb4:	00079663          	bnez	a5,80003bc0 <holding+0x10>
    80003bb8:	00000513          	li	a0,0
    80003bbc:	00008067          	ret
    80003bc0:	fe010113          	addi	sp,sp,-32
    80003bc4:	00813823          	sd	s0,16(sp)
    80003bc8:	00913423          	sd	s1,8(sp)
    80003bcc:	00113c23          	sd	ra,24(sp)
    80003bd0:	02010413          	addi	s0,sp,32
    80003bd4:	01053483          	ld	s1,16(a0)
    80003bd8:	ffffe097          	auipc	ra,0xffffe
    80003bdc:	75c080e7          	jalr	1884(ra) # 80002334 <mycpu>
    80003be0:	01813083          	ld	ra,24(sp)
    80003be4:	01013403          	ld	s0,16(sp)
    80003be8:	40a48533          	sub	a0,s1,a0
    80003bec:	00153513          	seqz	a0,a0
    80003bf0:	00813483          	ld	s1,8(sp)
    80003bf4:	02010113          	addi	sp,sp,32
    80003bf8:	00008067          	ret

0000000080003bfc <push_off>:
    80003bfc:	fe010113          	addi	sp,sp,-32
    80003c00:	00813823          	sd	s0,16(sp)
    80003c04:	00113c23          	sd	ra,24(sp)
    80003c08:	00913423          	sd	s1,8(sp)
    80003c0c:	02010413          	addi	s0,sp,32
    80003c10:	100024f3          	csrr	s1,sstatus
    80003c14:	100027f3          	csrr	a5,sstatus
    80003c18:	ffd7f793          	andi	a5,a5,-3
    80003c1c:	10079073          	csrw	sstatus,a5
    80003c20:	ffffe097          	auipc	ra,0xffffe
    80003c24:	714080e7          	jalr	1812(ra) # 80002334 <mycpu>
    80003c28:	07852783          	lw	a5,120(a0)
    80003c2c:	02078663          	beqz	a5,80003c58 <push_off+0x5c>
    80003c30:	ffffe097          	auipc	ra,0xffffe
    80003c34:	704080e7          	jalr	1796(ra) # 80002334 <mycpu>
    80003c38:	07852783          	lw	a5,120(a0)
    80003c3c:	01813083          	ld	ra,24(sp)
    80003c40:	01013403          	ld	s0,16(sp)
    80003c44:	0017879b          	addiw	a5,a5,1
    80003c48:	06f52c23          	sw	a5,120(a0)
    80003c4c:	00813483          	ld	s1,8(sp)
    80003c50:	02010113          	addi	sp,sp,32
    80003c54:	00008067          	ret
    80003c58:	0014d493          	srli	s1,s1,0x1
    80003c5c:	ffffe097          	auipc	ra,0xffffe
    80003c60:	6d8080e7          	jalr	1752(ra) # 80002334 <mycpu>
    80003c64:	0014f493          	andi	s1,s1,1
    80003c68:	06952e23          	sw	s1,124(a0)
    80003c6c:	fc5ff06f          	j	80003c30 <push_off+0x34>

0000000080003c70 <pop_off>:
    80003c70:	ff010113          	addi	sp,sp,-16
    80003c74:	00813023          	sd	s0,0(sp)
    80003c78:	00113423          	sd	ra,8(sp)
    80003c7c:	01010413          	addi	s0,sp,16
    80003c80:	ffffe097          	auipc	ra,0xffffe
    80003c84:	6b4080e7          	jalr	1716(ra) # 80002334 <mycpu>
    80003c88:	100027f3          	csrr	a5,sstatus
    80003c8c:	0027f793          	andi	a5,a5,2
    80003c90:	04079663          	bnez	a5,80003cdc <pop_off+0x6c>
    80003c94:	07852783          	lw	a5,120(a0)
    80003c98:	02f05a63          	blez	a5,80003ccc <pop_off+0x5c>
    80003c9c:	fff7871b          	addiw	a4,a5,-1
    80003ca0:	06e52c23          	sw	a4,120(a0)
    80003ca4:	00071c63          	bnez	a4,80003cbc <pop_off+0x4c>
    80003ca8:	07c52783          	lw	a5,124(a0)
    80003cac:	00078863          	beqz	a5,80003cbc <pop_off+0x4c>
    80003cb0:	100027f3          	csrr	a5,sstatus
    80003cb4:	0027e793          	ori	a5,a5,2
    80003cb8:	10079073          	csrw	sstatus,a5
    80003cbc:	00813083          	ld	ra,8(sp)
    80003cc0:	00013403          	ld	s0,0(sp)
    80003cc4:	01010113          	addi	sp,sp,16
    80003cc8:	00008067          	ret
    80003ccc:	00001517          	auipc	a0,0x1
    80003cd0:	57c50513          	addi	a0,a0,1404 # 80005248 <digits+0x48>
    80003cd4:	fffff097          	auipc	ra,0xfffff
    80003cd8:	018080e7          	jalr	24(ra) # 80002cec <panic>
    80003cdc:	00001517          	auipc	a0,0x1
    80003ce0:	55450513          	addi	a0,a0,1364 # 80005230 <digits+0x30>
    80003ce4:	fffff097          	auipc	ra,0xfffff
    80003ce8:	008080e7          	jalr	8(ra) # 80002cec <panic>

0000000080003cec <push_on>:
    80003cec:	fe010113          	addi	sp,sp,-32
    80003cf0:	00813823          	sd	s0,16(sp)
    80003cf4:	00113c23          	sd	ra,24(sp)
    80003cf8:	00913423          	sd	s1,8(sp)
    80003cfc:	02010413          	addi	s0,sp,32
    80003d00:	100024f3          	csrr	s1,sstatus
    80003d04:	100027f3          	csrr	a5,sstatus
    80003d08:	0027e793          	ori	a5,a5,2
    80003d0c:	10079073          	csrw	sstatus,a5
    80003d10:	ffffe097          	auipc	ra,0xffffe
    80003d14:	624080e7          	jalr	1572(ra) # 80002334 <mycpu>
    80003d18:	07852783          	lw	a5,120(a0)
    80003d1c:	02078663          	beqz	a5,80003d48 <push_on+0x5c>
    80003d20:	ffffe097          	auipc	ra,0xffffe
    80003d24:	614080e7          	jalr	1556(ra) # 80002334 <mycpu>
    80003d28:	07852783          	lw	a5,120(a0)
    80003d2c:	01813083          	ld	ra,24(sp)
    80003d30:	01013403          	ld	s0,16(sp)
    80003d34:	0017879b          	addiw	a5,a5,1
    80003d38:	06f52c23          	sw	a5,120(a0)
    80003d3c:	00813483          	ld	s1,8(sp)
    80003d40:	02010113          	addi	sp,sp,32
    80003d44:	00008067          	ret
    80003d48:	0014d493          	srli	s1,s1,0x1
    80003d4c:	ffffe097          	auipc	ra,0xffffe
    80003d50:	5e8080e7          	jalr	1512(ra) # 80002334 <mycpu>
    80003d54:	0014f493          	andi	s1,s1,1
    80003d58:	06952e23          	sw	s1,124(a0)
    80003d5c:	fc5ff06f          	j	80003d20 <push_on+0x34>

0000000080003d60 <pop_on>:
    80003d60:	ff010113          	addi	sp,sp,-16
    80003d64:	00813023          	sd	s0,0(sp)
    80003d68:	00113423          	sd	ra,8(sp)
    80003d6c:	01010413          	addi	s0,sp,16
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	5c4080e7          	jalr	1476(ra) # 80002334 <mycpu>
    80003d78:	100027f3          	csrr	a5,sstatus
    80003d7c:	0027f793          	andi	a5,a5,2
    80003d80:	04078463          	beqz	a5,80003dc8 <pop_on+0x68>
    80003d84:	07852783          	lw	a5,120(a0)
    80003d88:	02f05863          	blez	a5,80003db8 <pop_on+0x58>
    80003d8c:	fff7879b          	addiw	a5,a5,-1
    80003d90:	06f52c23          	sw	a5,120(a0)
    80003d94:	07853783          	ld	a5,120(a0)
    80003d98:	00079863          	bnez	a5,80003da8 <pop_on+0x48>
    80003d9c:	100027f3          	csrr	a5,sstatus
    80003da0:	ffd7f793          	andi	a5,a5,-3
    80003da4:	10079073          	csrw	sstatus,a5
    80003da8:	00813083          	ld	ra,8(sp)
    80003dac:	00013403          	ld	s0,0(sp)
    80003db0:	01010113          	addi	sp,sp,16
    80003db4:	00008067          	ret
    80003db8:	00001517          	auipc	a0,0x1
    80003dbc:	4b850513          	addi	a0,a0,1208 # 80005270 <digits+0x70>
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	f2c080e7          	jalr	-212(ra) # 80002cec <panic>
    80003dc8:	00001517          	auipc	a0,0x1
    80003dcc:	48850513          	addi	a0,a0,1160 # 80005250 <digits+0x50>
    80003dd0:	fffff097          	auipc	ra,0xfffff
    80003dd4:	f1c080e7          	jalr	-228(ra) # 80002cec <panic>

0000000080003dd8 <__memset>:
    80003dd8:	ff010113          	addi	sp,sp,-16
    80003ddc:	00813423          	sd	s0,8(sp)
    80003de0:	01010413          	addi	s0,sp,16
    80003de4:	1a060e63          	beqz	a2,80003fa0 <__memset+0x1c8>
    80003de8:	40a007b3          	neg	a5,a0
    80003dec:	0077f793          	andi	a5,a5,7
    80003df0:	00778693          	addi	a3,a5,7
    80003df4:	00b00813          	li	a6,11
    80003df8:	0ff5f593          	andi	a1,a1,255
    80003dfc:	fff6071b          	addiw	a4,a2,-1
    80003e00:	1b06e663          	bltu	a3,a6,80003fac <__memset+0x1d4>
    80003e04:	1cd76463          	bltu	a4,a3,80003fcc <__memset+0x1f4>
    80003e08:	1a078e63          	beqz	a5,80003fc4 <__memset+0x1ec>
    80003e0c:	00b50023          	sb	a1,0(a0)
    80003e10:	00100713          	li	a4,1
    80003e14:	1ae78463          	beq	a5,a4,80003fbc <__memset+0x1e4>
    80003e18:	00b500a3          	sb	a1,1(a0)
    80003e1c:	00200713          	li	a4,2
    80003e20:	1ae78a63          	beq	a5,a4,80003fd4 <__memset+0x1fc>
    80003e24:	00b50123          	sb	a1,2(a0)
    80003e28:	00300713          	li	a4,3
    80003e2c:	18e78463          	beq	a5,a4,80003fb4 <__memset+0x1dc>
    80003e30:	00b501a3          	sb	a1,3(a0)
    80003e34:	00400713          	li	a4,4
    80003e38:	1ae78263          	beq	a5,a4,80003fdc <__memset+0x204>
    80003e3c:	00b50223          	sb	a1,4(a0)
    80003e40:	00500713          	li	a4,5
    80003e44:	1ae78063          	beq	a5,a4,80003fe4 <__memset+0x20c>
    80003e48:	00b502a3          	sb	a1,5(a0)
    80003e4c:	00700713          	li	a4,7
    80003e50:	18e79e63          	bne	a5,a4,80003fec <__memset+0x214>
    80003e54:	00b50323          	sb	a1,6(a0)
    80003e58:	00700e93          	li	t4,7
    80003e5c:	00859713          	slli	a4,a1,0x8
    80003e60:	00e5e733          	or	a4,a1,a4
    80003e64:	01059e13          	slli	t3,a1,0x10
    80003e68:	01c76e33          	or	t3,a4,t3
    80003e6c:	01859313          	slli	t1,a1,0x18
    80003e70:	006e6333          	or	t1,t3,t1
    80003e74:	02059893          	slli	a7,a1,0x20
    80003e78:	40f60e3b          	subw	t3,a2,a5
    80003e7c:	011368b3          	or	a7,t1,a7
    80003e80:	02859813          	slli	a6,a1,0x28
    80003e84:	0108e833          	or	a6,a7,a6
    80003e88:	03059693          	slli	a3,a1,0x30
    80003e8c:	003e589b          	srliw	a7,t3,0x3
    80003e90:	00d866b3          	or	a3,a6,a3
    80003e94:	03859713          	slli	a4,a1,0x38
    80003e98:	00389813          	slli	a6,a7,0x3
    80003e9c:	00f507b3          	add	a5,a0,a5
    80003ea0:	00e6e733          	or	a4,a3,a4
    80003ea4:	000e089b          	sext.w	a7,t3
    80003ea8:	00f806b3          	add	a3,a6,a5
    80003eac:	00e7b023          	sd	a4,0(a5)
    80003eb0:	00878793          	addi	a5,a5,8
    80003eb4:	fed79ce3          	bne	a5,a3,80003eac <__memset+0xd4>
    80003eb8:	ff8e7793          	andi	a5,t3,-8
    80003ebc:	0007871b          	sext.w	a4,a5
    80003ec0:	01d787bb          	addw	a5,a5,t4
    80003ec4:	0ce88e63          	beq	a7,a4,80003fa0 <__memset+0x1c8>
    80003ec8:	00f50733          	add	a4,a0,a5
    80003ecc:	00b70023          	sb	a1,0(a4)
    80003ed0:	0017871b          	addiw	a4,a5,1
    80003ed4:	0cc77663          	bgeu	a4,a2,80003fa0 <__memset+0x1c8>
    80003ed8:	00e50733          	add	a4,a0,a4
    80003edc:	00b70023          	sb	a1,0(a4)
    80003ee0:	0027871b          	addiw	a4,a5,2
    80003ee4:	0ac77e63          	bgeu	a4,a2,80003fa0 <__memset+0x1c8>
    80003ee8:	00e50733          	add	a4,a0,a4
    80003eec:	00b70023          	sb	a1,0(a4)
    80003ef0:	0037871b          	addiw	a4,a5,3
    80003ef4:	0ac77663          	bgeu	a4,a2,80003fa0 <__memset+0x1c8>
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00b70023          	sb	a1,0(a4)
    80003f00:	0047871b          	addiw	a4,a5,4
    80003f04:	08c77e63          	bgeu	a4,a2,80003fa0 <__memset+0x1c8>
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00b70023          	sb	a1,0(a4)
    80003f10:	0057871b          	addiw	a4,a5,5
    80003f14:	08c77663          	bgeu	a4,a2,80003fa0 <__memset+0x1c8>
    80003f18:	00e50733          	add	a4,a0,a4
    80003f1c:	00b70023          	sb	a1,0(a4)
    80003f20:	0067871b          	addiw	a4,a5,6
    80003f24:	06c77e63          	bgeu	a4,a2,80003fa0 <__memset+0x1c8>
    80003f28:	00e50733          	add	a4,a0,a4
    80003f2c:	00b70023          	sb	a1,0(a4)
    80003f30:	0077871b          	addiw	a4,a5,7
    80003f34:	06c77663          	bgeu	a4,a2,80003fa0 <__memset+0x1c8>
    80003f38:	00e50733          	add	a4,a0,a4
    80003f3c:	00b70023          	sb	a1,0(a4)
    80003f40:	0087871b          	addiw	a4,a5,8
    80003f44:	04c77e63          	bgeu	a4,a2,80003fa0 <__memset+0x1c8>
    80003f48:	00e50733          	add	a4,a0,a4
    80003f4c:	00b70023          	sb	a1,0(a4)
    80003f50:	0097871b          	addiw	a4,a5,9
    80003f54:	04c77663          	bgeu	a4,a2,80003fa0 <__memset+0x1c8>
    80003f58:	00e50733          	add	a4,a0,a4
    80003f5c:	00b70023          	sb	a1,0(a4)
    80003f60:	00a7871b          	addiw	a4,a5,10
    80003f64:	02c77e63          	bgeu	a4,a2,80003fa0 <__memset+0x1c8>
    80003f68:	00e50733          	add	a4,a0,a4
    80003f6c:	00b70023          	sb	a1,0(a4)
    80003f70:	00b7871b          	addiw	a4,a5,11
    80003f74:	02c77663          	bgeu	a4,a2,80003fa0 <__memset+0x1c8>
    80003f78:	00e50733          	add	a4,a0,a4
    80003f7c:	00b70023          	sb	a1,0(a4)
    80003f80:	00c7871b          	addiw	a4,a5,12
    80003f84:	00c77e63          	bgeu	a4,a2,80003fa0 <__memset+0x1c8>
    80003f88:	00e50733          	add	a4,a0,a4
    80003f8c:	00b70023          	sb	a1,0(a4)
    80003f90:	00d7879b          	addiw	a5,a5,13
    80003f94:	00c7f663          	bgeu	a5,a2,80003fa0 <__memset+0x1c8>
    80003f98:	00f507b3          	add	a5,a0,a5
    80003f9c:	00b78023          	sb	a1,0(a5)
    80003fa0:	00813403          	ld	s0,8(sp)
    80003fa4:	01010113          	addi	sp,sp,16
    80003fa8:	00008067          	ret
    80003fac:	00b00693          	li	a3,11
    80003fb0:	e55ff06f          	j	80003e04 <__memset+0x2c>
    80003fb4:	00300e93          	li	t4,3
    80003fb8:	ea5ff06f          	j	80003e5c <__memset+0x84>
    80003fbc:	00100e93          	li	t4,1
    80003fc0:	e9dff06f          	j	80003e5c <__memset+0x84>
    80003fc4:	00000e93          	li	t4,0
    80003fc8:	e95ff06f          	j	80003e5c <__memset+0x84>
    80003fcc:	00000793          	li	a5,0
    80003fd0:	ef9ff06f          	j	80003ec8 <__memset+0xf0>
    80003fd4:	00200e93          	li	t4,2
    80003fd8:	e85ff06f          	j	80003e5c <__memset+0x84>
    80003fdc:	00400e93          	li	t4,4
    80003fe0:	e7dff06f          	j	80003e5c <__memset+0x84>
    80003fe4:	00500e93          	li	t4,5
    80003fe8:	e75ff06f          	j	80003e5c <__memset+0x84>
    80003fec:	00600e93          	li	t4,6
    80003ff0:	e6dff06f          	j	80003e5c <__memset+0x84>

0000000080003ff4 <__memmove>:
    80003ff4:	ff010113          	addi	sp,sp,-16
    80003ff8:	00813423          	sd	s0,8(sp)
    80003ffc:	01010413          	addi	s0,sp,16
    80004000:	0e060863          	beqz	a2,800040f0 <__memmove+0xfc>
    80004004:	fff6069b          	addiw	a3,a2,-1
    80004008:	0006881b          	sext.w	a6,a3
    8000400c:	0ea5e863          	bltu	a1,a0,800040fc <__memmove+0x108>
    80004010:	00758713          	addi	a4,a1,7
    80004014:	00a5e7b3          	or	a5,a1,a0
    80004018:	40a70733          	sub	a4,a4,a0
    8000401c:	0077f793          	andi	a5,a5,7
    80004020:	00f73713          	sltiu	a4,a4,15
    80004024:	00174713          	xori	a4,a4,1
    80004028:	0017b793          	seqz	a5,a5
    8000402c:	00e7f7b3          	and	a5,a5,a4
    80004030:	10078863          	beqz	a5,80004140 <__memmove+0x14c>
    80004034:	00900793          	li	a5,9
    80004038:	1107f463          	bgeu	a5,a6,80004140 <__memmove+0x14c>
    8000403c:	0036581b          	srliw	a6,a2,0x3
    80004040:	fff8081b          	addiw	a6,a6,-1
    80004044:	02081813          	slli	a6,a6,0x20
    80004048:	01d85893          	srli	a7,a6,0x1d
    8000404c:	00858813          	addi	a6,a1,8
    80004050:	00058793          	mv	a5,a1
    80004054:	00050713          	mv	a4,a0
    80004058:	01088833          	add	a6,a7,a6
    8000405c:	0007b883          	ld	a7,0(a5)
    80004060:	00878793          	addi	a5,a5,8
    80004064:	00870713          	addi	a4,a4,8
    80004068:	ff173c23          	sd	a7,-8(a4)
    8000406c:	ff0798e3          	bne	a5,a6,8000405c <__memmove+0x68>
    80004070:	ff867713          	andi	a4,a2,-8
    80004074:	02071793          	slli	a5,a4,0x20
    80004078:	0207d793          	srli	a5,a5,0x20
    8000407c:	00f585b3          	add	a1,a1,a5
    80004080:	40e686bb          	subw	a3,a3,a4
    80004084:	00f507b3          	add	a5,a0,a5
    80004088:	06e60463          	beq	a2,a4,800040f0 <__memmove+0xfc>
    8000408c:	0005c703          	lbu	a4,0(a1)
    80004090:	00e78023          	sb	a4,0(a5)
    80004094:	04068e63          	beqz	a3,800040f0 <__memmove+0xfc>
    80004098:	0015c603          	lbu	a2,1(a1)
    8000409c:	00100713          	li	a4,1
    800040a0:	00c780a3          	sb	a2,1(a5)
    800040a4:	04e68663          	beq	a3,a4,800040f0 <__memmove+0xfc>
    800040a8:	0025c603          	lbu	a2,2(a1)
    800040ac:	00200713          	li	a4,2
    800040b0:	00c78123          	sb	a2,2(a5)
    800040b4:	02e68e63          	beq	a3,a4,800040f0 <__memmove+0xfc>
    800040b8:	0035c603          	lbu	a2,3(a1)
    800040bc:	00300713          	li	a4,3
    800040c0:	00c781a3          	sb	a2,3(a5)
    800040c4:	02e68663          	beq	a3,a4,800040f0 <__memmove+0xfc>
    800040c8:	0045c603          	lbu	a2,4(a1)
    800040cc:	00400713          	li	a4,4
    800040d0:	00c78223          	sb	a2,4(a5)
    800040d4:	00e68e63          	beq	a3,a4,800040f0 <__memmove+0xfc>
    800040d8:	0055c603          	lbu	a2,5(a1)
    800040dc:	00500713          	li	a4,5
    800040e0:	00c782a3          	sb	a2,5(a5)
    800040e4:	00e68663          	beq	a3,a4,800040f0 <__memmove+0xfc>
    800040e8:	0065c703          	lbu	a4,6(a1)
    800040ec:	00e78323          	sb	a4,6(a5)
    800040f0:	00813403          	ld	s0,8(sp)
    800040f4:	01010113          	addi	sp,sp,16
    800040f8:	00008067          	ret
    800040fc:	02061713          	slli	a4,a2,0x20
    80004100:	02075713          	srli	a4,a4,0x20
    80004104:	00e587b3          	add	a5,a1,a4
    80004108:	f0f574e3          	bgeu	a0,a5,80004010 <__memmove+0x1c>
    8000410c:	02069613          	slli	a2,a3,0x20
    80004110:	02065613          	srli	a2,a2,0x20
    80004114:	fff64613          	not	a2,a2
    80004118:	00e50733          	add	a4,a0,a4
    8000411c:	00c78633          	add	a2,a5,a2
    80004120:	fff7c683          	lbu	a3,-1(a5)
    80004124:	fff78793          	addi	a5,a5,-1
    80004128:	fff70713          	addi	a4,a4,-1
    8000412c:	00d70023          	sb	a3,0(a4)
    80004130:	fec798e3          	bne	a5,a2,80004120 <__memmove+0x12c>
    80004134:	00813403          	ld	s0,8(sp)
    80004138:	01010113          	addi	sp,sp,16
    8000413c:	00008067          	ret
    80004140:	02069713          	slli	a4,a3,0x20
    80004144:	02075713          	srli	a4,a4,0x20
    80004148:	00170713          	addi	a4,a4,1
    8000414c:	00e50733          	add	a4,a0,a4
    80004150:	00050793          	mv	a5,a0
    80004154:	0005c683          	lbu	a3,0(a1)
    80004158:	00178793          	addi	a5,a5,1
    8000415c:	00158593          	addi	a1,a1,1
    80004160:	fed78fa3          	sb	a3,-1(a5)
    80004164:	fee798e3          	bne	a5,a4,80004154 <__memmove+0x160>
    80004168:	f89ff06f          	j	800040f0 <__memmove+0xfc>

000000008000416c <__mem_free>:
    8000416c:	ff010113          	addi	sp,sp,-16
    80004170:	00813423          	sd	s0,8(sp)
    80004174:	01010413          	addi	s0,sp,16
    80004178:	00001597          	auipc	a1,0x1
    8000417c:	6f058593          	addi	a1,a1,1776 # 80005868 <freep>
    80004180:	0005b783          	ld	a5,0(a1)
    80004184:	ff050693          	addi	a3,a0,-16
    80004188:	0007b703          	ld	a4,0(a5)
    8000418c:	00d7fc63          	bgeu	a5,a3,800041a4 <__mem_free+0x38>
    80004190:	00e6ee63          	bltu	a3,a4,800041ac <__mem_free+0x40>
    80004194:	00e7fc63          	bgeu	a5,a4,800041ac <__mem_free+0x40>
    80004198:	00070793          	mv	a5,a4
    8000419c:	0007b703          	ld	a4,0(a5)
    800041a0:	fed7e8e3          	bltu	a5,a3,80004190 <__mem_free+0x24>
    800041a4:	fee7eae3          	bltu	a5,a4,80004198 <__mem_free+0x2c>
    800041a8:	fee6f8e3          	bgeu	a3,a4,80004198 <__mem_free+0x2c>
    800041ac:	ff852803          	lw	a6,-8(a0)
    800041b0:	02081613          	slli	a2,a6,0x20
    800041b4:	01c65613          	srli	a2,a2,0x1c
    800041b8:	00c68633          	add	a2,a3,a2
    800041bc:	02c70a63          	beq	a4,a2,800041f0 <__mem_free+0x84>
    800041c0:	fee53823          	sd	a4,-16(a0)
    800041c4:	0087a503          	lw	a0,8(a5)
    800041c8:	02051613          	slli	a2,a0,0x20
    800041cc:	01c65613          	srli	a2,a2,0x1c
    800041d0:	00c78633          	add	a2,a5,a2
    800041d4:	04c68263          	beq	a3,a2,80004218 <__mem_free+0xac>
    800041d8:	00813403          	ld	s0,8(sp)
    800041dc:	00d7b023          	sd	a3,0(a5)
    800041e0:	00f5b023          	sd	a5,0(a1)
    800041e4:	00000513          	li	a0,0
    800041e8:	01010113          	addi	sp,sp,16
    800041ec:	00008067          	ret
    800041f0:	00872603          	lw	a2,8(a4)
    800041f4:	00073703          	ld	a4,0(a4)
    800041f8:	0106083b          	addw	a6,a2,a6
    800041fc:	ff052c23          	sw	a6,-8(a0)
    80004200:	fee53823          	sd	a4,-16(a0)
    80004204:	0087a503          	lw	a0,8(a5)
    80004208:	02051613          	slli	a2,a0,0x20
    8000420c:	01c65613          	srli	a2,a2,0x1c
    80004210:	00c78633          	add	a2,a5,a2
    80004214:	fcc692e3          	bne	a3,a2,800041d8 <__mem_free+0x6c>
    80004218:	00813403          	ld	s0,8(sp)
    8000421c:	0105053b          	addw	a0,a0,a6
    80004220:	00a7a423          	sw	a0,8(a5)
    80004224:	00e7b023          	sd	a4,0(a5)
    80004228:	00f5b023          	sd	a5,0(a1)
    8000422c:	00000513          	li	a0,0
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret

0000000080004238 <__mem_alloc>:
    80004238:	fc010113          	addi	sp,sp,-64
    8000423c:	02813823          	sd	s0,48(sp)
    80004240:	02913423          	sd	s1,40(sp)
    80004244:	03213023          	sd	s2,32(sp)
    80004248:	01513423          	sd	s5,8(sp)
    8000424c:	02113c23          	sd	ra,56(sp)
    80004250:	01313c23          	sd	s3,24(sp)
    80004254:	01413823          	sd	s4,16(sp)
    80004258:	01613023          	sd	s6,0(sp)
    8000425c:	04010413          	addi	s0,sp,64
    80004260:	00001a97          	auipc	s5,0x1
    80004264:	608a8a93          	addi	s5,s5,1544 # 80005868 <freep>
    80004268:	00f50913          	addi	s2,a0,15
    8000426c:	000ab683          	ld	a3,0(s5)
    80004270:	00495913          	srli	s2,s2,0x4
    80004274:	0019049b          	addiw	s1,s2,1
    80004278:	00048913          	mv	s2,s1
    8000427c:	0c068c63          	beqz	a3,80004354 <__mem_alloc+0x11c>
    80004280:	0006b503          	ld	a0,0(a3)
    80004284:	00852703          	lw	a4,8(a0)
    80004288:	10977063          	bgeu	a4,s1,80004388 <__mem_alloc+0x150>
    8000428c:	000017b7          	lui	a5,0x1
    80004290:	0009099b          	sext.w	s3,s2
    80004294:	0af4e863          	bltu	s1,a5,80004344 <__mem_alloc+0x10c>
    80004298:	02099a13          	slli	s4,s3,0x20
    8000429c:	01ca5a13          	srli	s4,s4,0x1c
    800042a0:	fff00b13          	li	s6,-1
    800042a4:	0100006f          	j	800042b4 <__mem_alloc+0x7c>
    800042a8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800042ac:	00852703          	lw	a4,8(a0)
    800042b0:	04977463          	bgeu	a4,s1,800042f8 <__mem_alloc+0xc0>
    800042b4:	00050793          	mv	a5,a0
    800042b8:	fea698e3          	bne	a3,a0,800042a8 <__mem_alloc+0x70>
    800042bc:	000a0513          	mv	a0,s4
    800042c0:	00000097          	auipc	ra,0x0
    800042c4:	1f0080e7          	jalr	496(ra) # 800044b0 <kvmincrease>
    800042c8:	00050793          	mv	a5,a0
    800042cc:	01050513          	addi	a0,a0,16
    800042d0:	07678e63          	beq	a5,s6,8000434c <__mem_alloc+0x114>
    800042d4:	0137a423          	sw	s3,8(a5)
    800042d8:	00000097          	auipc	ra,0x0
    800042dc:	e94080e7          	jalr	-364(ra) # 8000416c <__mem_free>
    800042e0:	000ab783          	ld	a5,0(s5)
    800042e4:	06078463          	beqz	a5,8000434c <__mem_alloc+0x114>
    800042e8:	0007b503          	ld	a0,0(a5)
    800042ec:	00078693          	mv	a3,a5
    800042f0:	00852703          	lw	a4,8(a0)
    800042f4:	fc9760e3          	bltu	a4,s1,800042b4 <__mem_alloc+0x7c>
    800042f8:	08e48263          	beq	s1,a4,8000437c <__mem_alloc+0x144>
    800042fc:	4127073b          	subw	a4,a4,s2
    80004300:	02071693          	slli	a3,a4,0x20
    80004304:	01c6d693          	srli	a3,a3,0x1c
    80004308:	00e52423          	sw	a4,8(a0)
    8000430c:	00d50533          	add	a0,a0,a3
    80004310:	01252423          	sw	s2,8(a0)
    80004314:	00fab023          	sd	a5,0(s5)
    80004318:	01050513          	addi	a0,a0,16
    8000431c:	03813083          	ld	ra,56(sp)
    80004320:	03013403          	ld	s0,48(sp)
    80004324:	02813483          	ld	s1,40(sp)
    80004328:	02013903          	ld	s2,32(sp)
    8000432c:	01813983          	ld	s3,24(sp)
    80004330:	01013a03          	ld	s4,16(sp)
    80004334:	00813a83          	ld	s5,8(sp)
    80004338:	00013b03          	ld	s6,0(sp)
    8000433c:	04010113          	addi	sp,sp,64
    80004340:	00008067          	ret
    80004344:	000019b7          	lui	s3,0x1
    80004348:	f51ff06f          	j	80004298 <__mem_alloc+0x60>
    8000434c:	00000513          	li	a0,0
    80004350:	fcdff06f          	j	8000431c <__mem_alloc+0xe4>
    80004354:	00002797          	auipc	a5,0x2
    80004358:	79c78793          	addi	a5,a5,1948 # 80006af0 <base>
    8000435c:	00078513          	mv	a0,a5
    80004360:	00fab023          	sd	a5,0(s5)
    80004364:	00f7b023          	sd	a5,0(a5)
    80004368:	00000713          	li	a4,0
    8000436c:	00002797          	auipc	a5,0x2
    80004370:	7807a623          	sw	zero,1932(a5) # 80006af8 <base+0x8>
    80004374:	00050693          	mv	a3,a0
    80004378:	f11ff06f          	j	80004288 <__mem_alloc+0x50>
    8000437c:	00053703          	ld	a4,0(a0)
    80004380:	00e7b023          	sd	a4,0(a5)
    80004384:	f91ff06f          	j	80004314 <__mem_alloc+0xdc>
    80004388:	00068793          	mv	a5,a3
    8000438c:	f6dff06f          	j	800042f8 <__mem_alloc+0xc0>

0000000080004390 <__putc>:
    80004390:	fe010113          	addi	sp,sp,-32
    80004394:	00813823          	sd	s0,16(sp)
    80004398:	00113c23          	sd	ra,24(sp)
    8000439c:	02010413          	addi	s0,sp,32
    800043a0:	00050793          	mv	a5,a0
    800043a4:	fef40593          	addi	a1,s0,-17
    800043a8:	00100613          	li	a2,1
    800043ac:	00000513          	li	a0,0
    800043b0:	fef407a3          	sb	a5,-17(s0)
    800043b4:	fffff097          	auipc	ra,0xfffff
    800043b8:	918080e7          	jalr	-1768(ra) # 80002ccc <console_write>
    800043bc:	01813083          	ld	ra,24(sp)
    800043c0:	01013403          	ld	s0,16(sp)
    800043c4:	02010113          	addi	sp,sp,32
    800043c8:	00008067          	ret

00000000800043cc <__getc>:
    800043cc:	fe010113          	addi	sp,sp,-32
    800043d0:	00813823          	sd	s0,16(sp)
    800043d4:	00113c23          	sd	ra,24(sp)
    800043d8:	02010413          	addi	s0,sp,32
    800043dc:	fe840593          	addi	a1,s0,-24
    800043e0:	00100613          	li	a2,1
    800043e4:	00000513          	li	a0,0
    800043e8:	fffff097          	auipc	ra,0xfffff
    800043ec:	8c4080e7          	jalr	-1852(ra) # 80002cac <console_read>
    800043f0:	fe844503          	lbu	a0,-24(s0)
    800043f4:	01813083          	ld	ra,24(sp)
    800043f8:	01013403          	ld	s0,16(sp)
    800043fc:	02010113          	addi	sp,sp,32
    80004400:	00008067          	ret

0000000080004404 <console_handler>:
    80004404:	fe010113          	addi	sp,sp,-32
    80004408:	00813823          	sd	s0,16(sp)
    8000440c:	00113c23          	sd	ra,24(sp)
    80004410:	00913423          	sd	s1,8(sp)
    80004414:	02010413          	addi	s0,sp,32
    80004418:	14202773          	csrr	a4,scause
    8000441c:	100027f3          	csrr	a5,sstatus
    80004420:	0027f793          	andi	a5,a5,2
    80004424:	06079e63          	bnez	a5,800044a0 <console_handler+0x9c>
    80004428:	00074c63          	bltz	a4,80004440 <console_handler+0x3c>
    8000442c:	01813083          	ld	ra,24(sp)
    80004430:	01013403          	ld	s0,16(sp)
    80004434:	00813483          	ld	s1,8(sp)
    80004438:	02010113          	addi	sp,sp,32
    8000443c:	00008067          	ret
    80004440:	0ff77713          	andi	a4,a4,255
    80004444:	00900793          	li	a5,9
    80004448:	fef712e3          	bne	a4,a5,8000442c <console_handler+0x28>
    8000444c:	ffffe097          	auipc	ra,0xffffe
    80004450:	4b8080e7          	jalr	1208(ra) # 80002904 <plic_claim>
    80004454:	00a00793          	li	a5,10
    80004458:	00050493          	mv	s1,a0
    8000445c:	02f50c63          	beq	a0,a5,80004494 <console_handler+0x90>
    80004460:	fc0506e3          	beqz	a0,8000442c <console_handler+0x28>
    80004464:	00050593          	mv	a1,a0
    80004468:	00001517          	auipc	a0,0x1
    8000446c:	d1050513          	addi	a0,a0,-752 # 80005178 <_ZZ12printIntegermE6digits+0xe0>
    80004470:	fffff097          	auipc	ra,0xfffff
    80004474:	8d8080e7          	jalr	-1832(ra) # 80002d48 <__printf>
    80004478:	01013403          	ld	s0,16(sp)
    8000447c:	01813083          	ld	ra,24(sp)
    80004480:	00048513          	mv	a0,s1
    80004484:	00813483          	ld	s1,8(sp)
    80004488:	02010113          	addi	sp,sp,32
    8000448c:	ffffe317          	auipc	t1,0xffffe
    80004490:	4b030067          	jr	1200(t1) # 8000293c <plic_complete>
    80004494:	fffff097          	auipc	ra,0xfffff
    80004498:	1bc080e7          	jalr	444(ra) # 80003650 <uartintr>
    8000449c:	fddff06f          	j	80004478 <console_handler+0x74>
    800044a0:	00001517          	auipc	a0,0x1
    800044a4:	dd850513          	addi	a0,a0,-552 # 80005278 <digits+0x78>
    800044a8:	fffff097          	auipc	ra,0xfffff
    800044ac:	844080e7          	jalr	-1980(ra) # 80002cec <panic>

00000000800044b0 <kvmincrease>:
    800044b0:	fe010113          	addi	sp,sp,-32
    800044b4:	01213023          	sd	s2,0(sp)
    800044b8:	00001937          	lui	s2,0x1
    800044bc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800044c0:	00813823          	sd	s0,16(sp)
    800044c4:	00113c23          	sd	ra,24(sp)
    800044c8:	00913423          	sd	s1,8(sp)
    800044cc:	02010413          	addi	s0,sp,32
    800044d0:	01250933          	add	s2,a0,s2
    800044d4:	00c95913          	srli	s2,s2,0xc
    800044d8:	02090863          	beqz	s2,80004508 <kvmincrease+0x58>
    800044dc:	00000493          	li	s1,0
    800044e0:	00148493          	addi	s1,s1,1
    800044e4:	fffff097          	auipc	ra,0xfffff
    800044e8:	4bc080e7          	jalr	1212(ra) # 800039a0 <kalloc>
    800044ec:	fe991ae3          	bne	s2,s1,800044e0 <kvmincrease+0x30>
    800044f0:	01813083          	ld	ra,24(sp)
    800044f4:	01013403          	ld	s0,16(sp)
    800044f8:	00813483          	ld	s1,8(sp)
    800044fc:	00013903          	ld	s2,0(sp)
    80004500:	02010113          	addi	sp,sp,32
    80004504:	00008067          	ret
    80004508:	01813083          	ld	ra,24(sp)
    8000450c:	01013403          	ld	s0,16(sp)
    80004510:	00813483          	ld	s1,8(sp)
    80004514:	00013903          	ld	s2,0(sp)
    80004518:	00000513          	li	a0,0
    8000451c:	02010113          	addi	sp,sp,32
    80004520:	00008067          	ret
	...


kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	ee813103          	ld	sp,-280(sp) # 80006ee8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	375020ef          	jal	ra,80002b90 <start>

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
    80001084:	684010ef          	jal	ra,80002708 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011e0:	528010ef          	jal	ra,80002708 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012f0:	60c010ef          	jal	ra,800028fc <_ZN5Riscv20handleTimerInterruptEv>

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
    80001400:	4d4010ef          	jal	ra,800028d4 <_ZN5Riscv22handleConsoleInterruptEv>

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
    80001644:	00006797          	auipc	a5,0x6
    80001648:	8bc7b783          	ld	a5,-1860(a5) # 80006f00 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000164c:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001650:	01000513          	li	a0,16
    80001654:	00001097          	auipc	ra,0x1
    80001658:	d94080e7          	jalr	-620(ra) # 800023e8 <_Znwm>
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
    80001674:	00006797          	auipc	a5,0x6
    80001678:	88c7b783          	ld	a5,-1908(a5) # 80006f00 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    80001714:	d28080e7          	jalr	-728(ra) # 80002438 <_ZdlPv>
    80001718:	020480a3          	sb	zero,33(s1)
        Scheduler::put(tcb);
    8000171c:	00048513          	mv	a0,s1
    80001720:	00001097          	auipc	ra,0x1
    80001724:	2a4080e7          	jalr	676(ra) # 800029c4 <_ZN9Scheduler3putEP3TCB>
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
    80001778:	c74080e7          	jalr	-908(ra) # 800023e8 <_Znwm>
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
    800017dc:	c60080e7          	jalr	-928(ra) # 80002438 <_ZdlPv>
    800017e0:	020900a3          	sb	zero,33(s2)

    while (this->blocked.peekFirst()) {
        TCB* tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    800017e4:	00090513          	mv	a0,s2
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	1dc080e7          	jalr	476(ra) # 800029c4 <_ZN9Scheduler3putEP3TCB>
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
    800018cc:	00004517          	auipc	a0,0x4
    800018d0:	75450513          	addi	a0,a0,1876 # 80006020 <CONSOLE_STATUS+0x10>
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	190080e7          	jalr	400(ra) # 80002a64 <_Z11printStringPKc>
        printInteger(i);
    800018dc:	00048513          	mv	a0,s1
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	1f4080e7          	jalr	500(ra) # 80002ad4 <_Z12printIntegerm>
        printString("\n");
    800018e8:	00005517          	auipc	a0,0x5
    800018ec:	8c050513          	addi	a0,a0,-1856 # 800061a8 <CONSOLE_STATUS+0x198>
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	174080e7          	jalr	372(ra) # 80002a64 <_Z11printStringPKc>
    for (; i < 3; i++)
    800018f8:	0014849b          	addiw	s1,s1,1
    800018fc:	0ff4f493          	andi	s1,s1,255
    80001900:	00200793          	li	a5,2
    80001904:	fc97f4e3          	bgeu	a5,s1,800018cc <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001908:	00004517          	auipc	a0,0x4
    8000190c:	72050513          	addi	a0,a0,1824 # 80006028 <CONSOLE_STATUS+0x18>
    80001910:	00001097          	auipc	ra,0x1
    80001914:	154080e7          	jalr	340(ra) # 80002a64 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001918:	00700313          	li	t1,7
    thread_dispatch();
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	bdc080e7          	jalr	-1060(ra) # 800014f8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001924:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001928:	00004517          	auipc	a0,0x4
    8000192c:	71050513          	addi	a0,a0,1808 # 80006038 <CONSOLE_STATUS+0x28>
    80001930:	00001097          	auipc	ra,0x1
    80001934:	134080e7          	jalr	308(ra) # 80002a64 <_Z11printStringPKc>
    printInteger(t1);
    80001938:	00090513          	mv	a0,s2
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	198080e7          	jalr	408(ra) # 80002ad4 <_Z12printIntegerm>
    printString("\n");
    80001944:	00005517          	auipc	a0,0x5
    80001948:	86450513          	addi	a0,a0,-1948 # 800061a8 <CONSOLE_STATUS+0x198>
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	118080e7          	jalr	280(ra) # 80002a64 <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    80001954:	01400513          	li	a0,20
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	ee4080e7          	jalr	-284(ra) # 8000183c <_ZL9fibonaccim>
    80001960:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001964:	00004517          	auipc	a0,0x4
    80001968:	6dc50513          	addi	a0,a0,1756 # 80006040 <CONSOLE_STATUS+0x30>
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	0f8080e7          	jalr	248(ra) # 80002a64 <_Z11printStringPKc>
    printInteger(result);
    80001974:	00090513          	mv	a0,s2
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	15c080e7          	jalr	348(ra) # 80002ad4 <_Z12printIntegerm>
    printString("\n");
    80001980:	00005517          	auipc	a0,0x5
    80001984:	82850513          	addi	a0,a0,-2008 # 800061a8 <CONSOLE_STATUS+0x198>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	0dc080e7          	jalr	220(ra) # 80002a64 <_Z11printStringPKc>
    80001990:	0380006f          	j	800019c8 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001994:	00004517          	auipc	a0,0x4
    80001998:	68c50513          	addi	a0,a0,1676 # 80006020 <CONSOLE_STATUS+0x10>
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	0c8080e7          	jalr	200(ra) # 80002a64 <_Z11printStringPKc>
        printInteger(i);
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	12c080e7          	jalr	300(ra) # 80002ad4 <_Z12printIntegerm>
        printString("\n");
    800019b0:	00004517          	auipc	a0,0x4
    800019b4:	7f850513          	addi	a0,a0,2040 # 800061a8 <CONSOLE_STATUS+0x198>
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	0ac080e7          	jalr	172(ra) # 80002a64 <_Z11printStringPKc>
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
    80001a18:	00004517          	auipc	a0,0x4
    80001a1c:	63850513          	addi	a0,a0,1592 # 80006050 <CONSOLE_STATUS+0x40>
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	044080e7          	jalr	68(ra) # 80002a64 <_Z11printStringPKc>
        printInteger(i);
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	0a8080e7          	jalr	168(ra) # 80002ad4 <_Z12printIntegerm>
        printString("\n");
    80001a34:	00004517          	auipc	a0,0x4
    80001a38:	77450513          	addi	a0,a0,1908 # 800061a8 <CONSOLE_STATUS+0x198>
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	028080e7          	jalr	40(ra) # 80002a64 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a44:	0014849b          	addiw	s1,s1,1
    80001a48:	0ff4f493          	andi	s1,s1,255
    80001a4c:	00c00793          	li	a5,12
    80001a50:	fc97f4e3          	bgeu	a5,s1,80001a18 <_Z11workerBodyBPv+0x28>
    }

    printString("B: yield\n");
    80001a54:	00004517          	auipc	a0,0x4
    80001a58:	60450513          	addi	a0,a0,1540 # 80006058 <CONSOLE_STATUS+0x48>
    80001a5c:	00001097          	auipc	ra,0x1
    80001a60:	008080e7          	jalr	8(ra) # 80002a64 <_Z11printStringPKc>
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
    80001a80:	00004517          	auipc	a0,0x4
    80001a84:	5e850513          	addi	a0,a0,1512 # 80006068 <CONSOLE_STATUS+0x58>
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	fdc080e7          	jalr	-36(ra) # 80002a64 <_Z11printStringPKc>
    printInteger(result);
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	040080e7          	jalr	64(ra) # 80002ad4 <_Z12printIntegerm>
    printString("\n");
    80001a9c:	00004517          	auipc	a0,0x4
    80001aa0:	70c50513          	addi	a0,a0,1804 # 800061a8 <CONSOLE_STATUS+0x198>
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	fc0080e7          	jalr	-64(ra) # 80002a64 <_Z11printStringPKc>
    80001aac:	0380006f          	j	80001ae4 <_Z11workerBodyBPv+0xf4>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001ab0:	00004517          	auipc	a0,0x4
    80001ab4:	5a050513          	addi	a0,a0,1440 # 80006050 <CONSOLE_STATUS+0x40>
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	fac080e7          	jalr	-84(ra) # 80002a64 <_Z11printStringPKc>
        printInteger(i);
    80001ac0:	00048513          	mv	a0,s1
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	010080e7          	jalr	16(ra) # 80002ad4 <_Z12printIntegerm>
        printString("\n");
    80001acc:	00004517          	auipc	a0,0x4
    80001ad0:	6dc50513          	addi	a0,a0,1756 # 800061a8 <CONSOLE_STATUS+0x198>
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	f90080e7          	jalr	-112(ra) # 80002a64 <_Z11printStringPKc>
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
    80001b24:	00004517          	auipc	a0,0x4
    80001b28:	55450513          	addi	a0,a0,1364 # 80006078 <CONSOLE_STATUS+0x68>
    80001b2c:	00001097          	auipc	ra,0x1
    80001b30:	f38080e7          	jalr	-200(ra) # 80002a64 <_Z11printStringPKc>
    thread_dispatch();
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	9c4080e7          	jalr	-1596(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch2..\n");
    80001b3c:	00004517          	auipc	a0,0x4
    80001b40:	55c50513          	addi	a0,a0,1372 # 80006098 <CONSOLE_STATUS+0x88>
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	f20080e7          	jalr	-224(ra) # 80002a64 <_Z11printStringPKc>
    thread_dispatch();
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	9ac080e7          	jalr	-1620(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch3...\n");
    80001b54:	00004517          	auipc	a0,0x4
    80001b58:	56450513          	addi	a0,a0,1380 # 800060b8 <CONSOLE_STATUS+0xa8>
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	f08080e7          	jalr	-248(ra) # 80002a64 <_Z11printStringPKc>
    thread_dispatch();
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	994080e7          	jalr	-1644(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch4....\n");
    80001b6c:	00004517          	auipc	a0,0x4
    80001b70:	56c50513          	addi	a0,a0,1388 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	ef0080e7          	jalr	-272(ra) # 80002a64 <_Z11printStringPKc>
    printString("C: Signal semafora!\n");
    80001b7c:	00004517          	auipc	a0,0x4
    80001b80:	57c50513          	addi	a0,a0,1404 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	ee0080e7          	jalr	-288(ra) # 80002a64 <_Z11printStringPKc>
    sem_close((sem_t) arg);
    80001b8c:	00048513          	mv	a0,s1
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	9dc080e7          	jalr	-1572(ra) # 8000156c <_Z9sem_closeP11MySemaphore>
    thread_dispatch();
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	960080e7          	jalr	-1696(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: posle signala..\n");
    80001ba0:	00004517          	auipc	a0,0x4
    80001ba4:	57050513          	addi	a0,a0,1392 # 80006110 <CONSOLE_STATUS+0x100>
    80001ba8:	00001097          	auipc	ra,0x1
    80001bac:	ebc080e7          	jalr	-324(ra) # 80002a64 <_Z11printStringPKc>
    printString("C: posle signala.2.\n");
    80001bb0:	00004517          	auipc	a0,0x4
    80001bb4:	57850513          	addi	a0,a0,1400 # 80006128 <CONSOLE_STATUS+0x118>
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	eac080e7          	jalr	-340(ra) # 80002a64 <_Z11printStringPKc>
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
    80001bec:	00004517          	auipc	a0,0x4
    80001bf0:	55450513          	addi	a0,a0,1364 # 80006140 <CONSOLE_STATUS+0x130>
    80001bf4:	00001097          	auipc	ra,0x1
    80001bf8:	e70080e7          	jalr	-400(ra) # 80002a64 <_Z11printStringPKc>
    printString("D: Cekamo na semaforu..\n");
    80001bfc:	00004517          	auipc	a0,0x4
    80001c00:	55c50513          	addi	a0,a0,1372 # 80006158 <CONSOLE_STATUS+0x148>
    80001c04:	00001097          	auipc	ra,0x1
    80001c08:	e60080e7          	jalr	-416(ra) # 80002a64 <_Z11printStringPKc>

    int returnValue = sem_wait((sem_t) arg);
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	988080e7          	jalr	-1656(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
    80001c18:	00050493          	mv	s1,a0

    printString("D: rezultat: ");
    80001c1c:	00004517          	auipc	a0,0x4
    80001c20:	55c50513          	addi	a0,a0,1372 # 80006178 <CONSOLE_STATUS+0x168>
    80001c24:	00001097          	auipc	ra,0x1
    80001c28:	e40080e7          	jalr	-448(ra) # 80002a64 <_Z11printStringPKc>
    printInteger(returnValue);
    80001c2c:	00048513          	mv	a0,s1
    80001c30:	00001097          	auipc	ra,0x1
    80001c34:	ea4080e7          	jalr	-348(ra) # 80002ad4 <_Z12printIntegerm>
    printString("\nD: izlazim automatski, pozdrav!\n");
    80001c38:	00004517          	auipc	a0,0x4
    80001c3c:	55050513          	addi	a0,a0,1360 # 80006188 <CONSOLE_STATUS+0x178>
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	e24080e7          	jalr	-476(ra) # 80002a64 <_Z11printStringPKc>
    80001c48:	01813083          	ld	ra,24(sp)
    80001c4c:	01013403          	ld	s0,16(sp)
    80001c50:	00813483          	ld	s1,8(sp)
    80001c54:	02010113          	addi	sp,sp,32
    80001c58:	00008067          	ret

0000000080001c5c <main>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/memoryAllocator.hpp"

int main()
{
    80001c5c:	fa010113          	addi	sp,sp,-96
    80001c60:	04113c23          	sd	ra,88(sp)
    80001c64:	04813823          	sd	s0,80(sp)
    80001c68:	04913423          	sd	s1,72(sp)
    80001c6c:	05213023          	sd	s2,64(sp)
    80001c70:	06010413          	addi	s0,sp,96

    static void tryToJoin(DataBlock* curr);

    static void initFreeBlock() {

        MemoryAllocator::free = (DataBlock*)((char*)HEAP_START_ADDR);
    80001c74:	00005797          	auipc	a5,0x5
    80001c78:	2547b783          	ld	a5,596(a5) # 80006ec8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c7c:	0007b683          	ld	a3,0(a5)
    80001c80:	00005717          	auipc	a4,0x5
    80001c84:	25073703          	ld	a4,592(a4) # 80006ed0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c88:	00d73023          	sd	a3,0(a4)
        used = nullptr;
    80001c8c:	00005617          	auipc	a2,0x5
    80001c90:	26463603          	ld	a2,612(a2) # 80006ef0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c94:	00063023          	sd	zero,0(a2)

        free->next = nullptr;
    80001c98:	0006b023          	sd	zero,0(a3)
        free->prev  = nullptr;
    80001c9c:	00073703          	ld	a4,0(a4)
    80001ca0:	00073423          	sd	zero,8(a4)
        free->size = ((char*)HEAP_START_ADDR - (char*)HEAP_END_ADDR - sizeof(DataBlock)); //FOR NOW
    80001ca4:	0007b783          	ld	a5,0(a5)
    80001ca8:	00005697          	auipc	a3,0x5
    80001cac:	2606b683          	ld	a3,608(a3) # 80006f08 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001cb0:	0006b683          	ld	a3,0(a3)
    80001cb4:	40d787b3          	sub	a5,a5,a3
    80001cb8:	fe878793          	addi	a5,a5,-24
    80001cbc:	00f73823          	sd	a5,16(a4)
    TCB *threads[5];

    MemoryAllocator::initFreeBlock();

    threads[0] = TCB::createThread(nullptr,nullptr);
    80001cc0:	00000593          	li	a1,0
    80001cc4:	00000513          	li	a0,0
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	200080e7          	jalr	512(ra) # 80001ec8 <_ZN3TCB12createThreadEPFvPvES0_>
    80001cd0:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001cd4:	00005797          	auipc	a5,0x5
    80001cd8:	22c7b783          	ld	a5,556(a5) # 80006f00 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001cdc:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    80001ce0:	00005797          	auipc	a5,0x5
    80001ce4:	2007b783          	ld	a5,512(a5) # 80006ee0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ce8:	0017e793          	ori	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001cec:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001cf0:	00200793          	li	a5,2
    80001cf4:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    int return1 = thread_create(&threads[1], workerBodyA, nullptr);
    80001cf8:	00000613          	li	a2,0
    80001cfc:	00005597          	auipc	a1,0x5
    80001d00:	1fc5b583          	ld	a1,508(a1) # 80006ef8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001d04:	fc040513          	addi	a0,s0,-64
    80001d08:	fffff097          	auipc	ra,0xfffff
    80001d0c:	790080e7          	jalr	1936(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001d10:	00050493          	mv	s1,a0
    printString("ThreadA created\n");
    80001d14:	00004517          	auipc	a0,0x4
    80001d18:	49c50513          	addi	a0,a0,1180 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	d48080e7          	jalr	-696(ra) # 80002a64 <_Z11printStringPKc>
    printInteger(return1);
    80001d24:	00048513          	mv	a0,s1
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	dac080e7          	jalr	-596(ra) # 80002ad4 <_Z12printIntegerm>
    int return2 = thread_create(&threads[2], workerBodyB, threads[1]);
    80001d30:	fc043603          	ld	a2,-64(s0)
    80001d34:	00005597          	auipc	a1,0x5
    80001d38:	1dc5b583          	ld	a1,476(a1) # 80006f10 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001d3c:	fc840513          	addi	a0,s0,-56
    80001d40:	fffff097          	auipc	ra,0xfffff
    80001d44:	758080e7          	jalr	1880(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001d48:	00050493          	mv	s1,a0
    printString("ThreadB created\n");
    80001d4c:	00004517          	auipc	a0,0x4
    80001d50:	47c50513          	addi	a0,a0,1148 # 800061c8 <CONSOLE_STATUS+0x1b8>
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	d10080e7          	jalr	-752(ra) # 80002a64 <_Z11printStringPKc>
    printInteger(return2);
    80001d5c:	00048513          	mv	a0,s1
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	d74080e7          	jalr	-652(ra) # 80002ad4 <_Z12printIntegerm>

    MySemaphore* semaphore[2];
    sem_open(&semaphore[0], 0);
    80001d68:	00000593          	li	a1,0
    80001d6c:	fa840513          	addi	a0,s0,-88
    80001d70:	fffff097          	auipc	ra,0xfffff
    80001d74:	7cc080e7          	jalr	1996(ra) # 8000153c <_Z8sem_openPP11MySemaphorej>
    80001d78:	00c0006f          	j	80001d84 <main+0x128>

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        thread_dispatch();
    80001d7c:	fffff097          	auipc	ra,0xfffff
    80001d80:	77c080e7          	jalr	1916(ra) # 800014f8 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    80001d84:	fc043783          	ld	a5,-64(s0)
    bool isFinished() const { return finished; }
    80001d88:	0207c783          	lbu	a5,32(a5)
    80001d8c:	fe0788e3          	beqz	a5,80001d7c <main+0x120>
             threads[2]->isFinished()))
    80001d90:	fc843783          	ld	a5,-56(s0)
    80001d94:	0207c783          	lbu	a5,32(a5)
    while (!(threads[1]->isFinished() &&
    80001d98:	fe0782e3          	beqz	a5,80001d7c <main+0x120>
    }



    thread_create(&threads[3], workerBodyC, semaphore[0]);
    80001d9c:	fa843603          	ld	a2,-88(s0)
    80001da0:	00005597          	auipc	a1,0x5
    80001da4:	1385b583          	ld	a1,312(a1) # 80006ed8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001da8:	fd040493          	addi	s1,s0,-48
    80001dac:	00048513          	mv	a0,s1
    80001db0:	fffff097          	auipc	ra,0xfffff
    80001db4:	6e8080e7          	jalr	1768(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[3], workerBodyD, semaphore[0]);
    80001db8:	fa843603          	ld	a2,-88(s0)
    80001dbc:	00005597          	auipc	a1,0x5
    80001dc0:	15c5b583          	ld	a1,348(a1) # 80006f18 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001dc4:	00048513          	mv	a0,s1
    80001dc8:	fffff097          	auipc	ra,0xfffff
    80001dcc:	6d0080e7          	jalr	1744(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    //thread_dispatch();
    int returnValue = sem_wait(semaphore[0]);
    80001dd0:	fa843503          	ld	a0,-88(s0)
    80001dd4:	fffff097          	auipc	ra,0xfffff
    80001dd8:	7c4080e7          	jalr	1988(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
    80001ddc:	00050493          	mv	s1,a0

    printString("Finished\nReturn value: ");
    80001de0:	00004517          	auipc	a0,0x4
    80001de4:	40050513          	addi	a0,a0,1024 # 800061e0 <CONSOLE_STATUS+0x1d0>
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	c7c080e7          	jalr	-900(ra) # 80002a64 <_Z11printStringPKc>
    printInteger(returnValue);
    80001df0:	00048513          	mv	a0,s1
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	ce0080e7          	jalr	-800(ra) # 80002ad4 <_Z12printIntegerm>
    printString("\n");
    80001dfc:	00004517          	auipc	a0,0x4
    80001e00:	3ac50513          	addi	a0,a0,940 # 800061a8 <CONSOLE_STATUS+0x198>
    80001e04:	00001097          	auipc	ra,0x1
    80001e08:	c60080e7          	jalr	-928(ra) # 80002a64 <_Z11printStringPKc>

    thread_dispatch();
    80001e0c:	fffff097          	auipc	ra,0xfffff
    80001e10:	6ec080e7          	jalr	1772(ra) # 800014f8 <_Z15thread_dispatchv>
    for (auto &thread: threads) {
    80001e14:	fb840493          	addi	s1,s0,-72
    80001e18:	0140006f          	j	80001e2c <main+0x1d0>
        delete thread;
    80001e1c:	00090513          	mv	a0,s2
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	618080e7          	jalr	1560(ra) # 80002438 <_ZdlPv>
    for (auto &thread: threads) {
    80001e28:	00848493          	addi	s1,s1,8
    80001e2c:	fe040793          	addi	a5,s0,-32
    80001e30:	02f48063          	beq	s1,a5,80001e50 <main+0x1f4>
        delete thread;
    80001e34:	0004b903          	ld	s2,0(s1)
    80001e38:	fe0908e3          	beqz	s2,80001e28 <main+0x1cc>
    ~TCB() { delete[] stack; }
    80001e3c:	00893503          	ld	a0,8(s2)
    80001e40:	fc050ee3          	beqz	a0,80001e1c <main+0x1c0>
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	61c080e7          	jalr	1564(ra) # 80002460 <_ZdaPv>
    80001e4c:	fd1ff06f          	j	80001e1c <main+0x1c0>
    }
    return 0;
}
    80001e50:	00000513          	li	a0,0
    80001e54:	05813083          	ld	ra,88(sp)
    80001e58:	05013403          	ld	s0,80(sp)
    80001e5c:	04813483          	ld	s1,72(sp)
    80001e60:	04013903          	ld	s2,64(sp)
    80001e64:	06010113          	addi	sp,sp,96
    80001e68:	00008067          	ret

0000000080001e6c <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001e6c:	fe010113          	addi	sp,sp,-32
    80001e70:	00113c23          	sd	ra,24(sp)
    80001e74:	00813823          	sd	s0,16(sp)
    80001e78:	00913423          	sd	s1,8(sp)
    80001e7c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001e80:	00001097          	auipc	ra,0x1
    80001e84:	868080e7          	jalr	-1944(ra) # 800026e8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001e88:	00005497          	auipc	s1,0x5
    80001e8c:	0e848493          	addi	s1,s1,232 # 80006f70 <_ZN3TCB7runningE>
    80001e90:	0004b783          	ld	a5,0(s1)
    80001e94:	0007b703          	ld	a4,0(a5)
    80001e98:	0287b503          	ld	a0,40(a5)
    80001e9c:	000700e7          	jalr	a4
    running->setFinished(true);
    80001ea0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001ea4:	00100713          	li	a4,1
    80001ea8:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001eac:	fffff097          	auipc	ra,0xfffff
    80001eb0:	64c080e7          	jalr	1612(ra) # 800014f8 <_Z15thread_dispatchv>
}
    80001eb4:	01813083          	ld	ra,24(sp)
    80001eb8:	01013403          	ld	s0,16(sp)
    80001ebc:	00813483          	ld	s1,8(sp)
    80001ec0:	02010113          	addi	sp,sp,32
    80001ec4:	00008067          	ret

0000000080001ec8 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80001ec8:	fd010113          	addi	sp,sp,-48
    80001ecc:	02113423          	sd	ra,40(sp)
    80001ed0:	02813023          	sd	s0,32(sp)
    80001ed4:	00913c23          	sd	s1,24(sp)
    80001ed8:	01213823          	sd	s2,16(sp)
    80001edc:	01313423          	sd	s3,8(sp)
    80001ee0:	03010413          	addi	s0,sp,48
    80001ee4:	00050913          	mv	s2,a0
    80001ee8:	00058993          	mv	s3,a1
    return new TCB(body, arg);
    80001eec:	03000513          	li	a0,48
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	4f8080e7          	jalr	1272(ra) # 800023e8 <_Znwm>
    80001ef8:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            arg(arg)
    80001efc:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001f00:	00090a63          	beqz	s2,80001f14 <_ZN3TCB12createThreadEPFvPvES0_+0x4c>
    80001f04:	00002537          	lui	a0,0x2
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	508080e7          	jalr	1288(ra) # 80002410 <_Znam>
    80001f10:	0080006f          	j	80001f18 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001f14:	00000513          	li	a0,0
            arg(arg)
    80001f18:	00a4b423          	sd	a0,8(s1)
    80001f1c:	00000797          	auipc	a5,0x0
    80001f20:	f5078793          	addi	a5,a5,-176 # 80001e6c <_ZN3TCB13threadWrapperEv>
    80001f24:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001f28:	02050863          	beqz	a0,80001f58 <_ZN3TCB12createThreadEPFvPvES0_+0x90>
    80001f2c:	000027b7          	lui	a5,0x2
    80001f30:	00f507b3          	add	a5,a0,a5
            arg(arg)
    80001f34:	00f4bc23          	sd	a5,24(s1)
    80001f38:	02048023          	sb	zero,32(s1)
    80001f3c:	020480a3          	sb	zero,33(s1)
    80001f40:	0334b423          	sd	s3,40(s1)

    {
        if (body != nullptr) { Scheduler::put(this); }
    80001f44:	02090c63          	beqz	s2,80001f7c <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
    80001f48:	00048513          	mv	a0,s1
    80001f4c:	00001097          	auipc	ra,0x1
    80001f50:	a78080e7          	jalr	-1416(ra) # 800029c4 <_ZN9Scheduler3putEP3TCB>
    80001f54:	0280006f          	j	80001f7c <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001f58:	00000793          	li	a5,0
    80001f5c:	fd9ff06f          	j	80001f34 <_ZN3TCB12createThreadEPFvPvES0_+0x6c>
    80001f60:	00050913          	mv	s2,a0
    80001f64:	00048513          	mv	a0,s1
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	4d0080e7          	jalr	1232(ra) # 80002438 <_ZdlPv>
    80001f70:	00090513          	mv	a0,s2
    80001f74:	00006097          	auipc	ra,0x6
    80001f78:	0f4080e7          	jalr	244(ra) # 80008068 <_Unwind_Resume>
}
    80001f7c:	00048513          	mv	a0,s1
    80001f80:	02813083          	ld	ra,40(sp)
    80001f84:	02013403          	ld	s0,32(sp)
    80001f88:	01813483          	ld	s1,24(sp)
    80001f8c:	01013903          	ld	s2,16(sp)
    80001f90:	00813983          	ld	s3,8(sp)
    80001f94:	03010113          	addi	sp,sp,48
    80001f98:	00008067          	ret

0000000080001f9c <_ZN3TCB5yieldEv>:
{
    80001f9c:	ff010113          	addi	sp,sp,-16
    80001fa0:	00813423          	sd	s0,8(sp)
    80001fa4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    80001fa8:	01300793          	li	a5,19
    80001fac:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001fb0:	00000073          	ecall
}
    80001fb4:	00813403          	ld	s0,8(sp)
    80001fb8:	01010113          	addi	sp,sp,16
    80001fbc:	00008067          	ret

0000000080001fc0 <_ZN3TCB8dispatchEv>:
{
    80001fc0:	fe010113          	addi	sp,sp,-32
    80001fc4:	00113c23          	sd	ra,24(sp)
    80001fc8:	00813823          	sd	s0,16(sp)
    80001fcc:	00913423          	sd	s1,8(sp)
    80001fd0:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001fd4:	00005497          	auipc	s1,0x5
    80001fd8:	f9c4b483          	ld	s1,-100(s1) # 80006f70 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001fdc:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001fe0:	00079663          	bnez	a5,80001fec <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return this->blocked; }
    80001fe4:	0214c783          	lbu	a5,33(s1)
    80001fe8:	02078c63          	beqz	a5,80002020 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001fec:	00001097          	auipc	ra,0x1
    80001ff0:	970080e7          	jalr	-1680(ra) # 8000295c <_ZN9Scheduler3getEv>
    80001ff4:	00005797          	auipc	a5,0x5
    80001ff8:	f6a7be23          	sd	a0,-132(a5) # 80006f70 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001ffc:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80002000:	01048513          	addi	a0,s1,16
    80002004:	fffff097          	auipc	ra,0xfffff
    80002008:	10c080e7          	jalr	268(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000200c:	01813083          	ld	ra,24(sp)
    80002010:	01013403          	ld	s0,16(sp)
    80002014:	00813483          	ld	s1,8(sp)
    80002018:	02010113          	addi	sp,sp,32
    8000201c:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002020:	00048513          	mv	a0,s1
    80002024:	00001097          	auipc	ra,0x1
    80002028:	9a0080e7          	jalr	-1632(ra) # 800029c4 <_ZN9Scheduler3putEP3TCB>
    8000202c:	fc1ff06f          	j	80001fec <_ZN3TCB8dispatchEv+0x2c>

0000000080002030 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB* handle) {
    80002030:	fe010113          	addi	sp,sp,-32
    80002034:	00113c23          	sd	ra,24(sp)
    80002038:	00813823          	sd	s0,16(sp)
    8000203c:	00913423          	sd	s1,8(sp)
    80002040:	02010413          	addi	s0,sp,32
    80002044:	00050493          	mv	s1,a0
    bool isFinished() const { return finished; }
    80002048:	0204c783          	lbu	a5,32(s1)
    while(!handle->isFinished()) {
    8000204c:	00079863          	bnez	a5,8000205c <_ZN3TCB4joinEPS_+0x2c>
        TCB::dispatch();
    80002050:	00000097          	auipc	ra,0x0
    80002054:	f70080e7          	jalr	-144(ra) # 80001fc0 <_ZN3TCB8dispatchEv>
    while(!handle->isFinished()) {
    80002058:	ff1ff06f          	j	80002048 <_ZN3TCB4joinEPS_+0x18>
    }
    8000205c:	01813083          	ld	ra,24(sp)
    80002060:	01013403          	ld	s0,16(sp)
    80002064:	00813483          	ld	s1,8(sp)
    80002068:	02010113          	addi	sp,sp,32
    8000206c:	00008067          	ret

0000000080002070 <_ZN15MemoryAllocator9mem_allocEm>:
DataBlock* MemoryAllocator::free = nullptr;
DataBlock* MemoryAllocator::used = nullptr;



void *MemoryAllocator::mem_alloc(size_t size) {
    80002070:	ff010113          	addi	sp,sp,-16
    80002074:	00813423          	sd	s0,8(sp)
    80002078:	01010413          	addi	s0,sp,16
    8000207c:	00050793          	mv	a5,a0
    size_t newSize;
    if(size%MEM_BLOCK_SIZE != 0) {
    80002080:	03f57713          	andi	a4,a0,63
    80002084:	06070c63          	beqz	a4,800020fc <_ZN15MemoryAllocator9mem_allocEm+0x8c>
        newSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    80002088:	03f50713          	addi	a4,a0,63
    8000208c:	fc077713          	andi	a4,a4,-64
    }
    else {
        newSize = size;
    }

    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
    80002090:	00005517          	auipc	a0,0x5
    80002094:	ee853503          	ld	a0,-280(a0) # 80006f78 <_ZN15MemoryAllocator4freeE>
    80002098:	0a050e63          	beqz	a0,80002154 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if(curr->size<size) continue;
    8000209c:	01053683          	ld	a3,16(a0)
    800020a0:	06f6e263          	bltu	a3,a5,80002104 <_ZN15MemoryAllocator9mem_allocEm+0x94>
        if(curr->size > newSize) {
    800020a4:	0ed77663          	bgeu	a4,a3,80002190 <_ZN15MemoryAllocator9mem_allocEm+0x120>
            //new fragment needs to be created
            //novi ce biti offsetovan od curr za novi size i plus za sizeof(DataBlock) zato sto se posle curr
            // nalazi taj "header"
            DataBlock *newBlock;
            newBlock = (DataBlock*) ((char*)curr + newSize + sizeof(DataBlock));
    800020a8:	01870793          	addi	a5,a4,24
    800020ac:	00f507b3          	add	a5,a0,a5

            //Azuriranje free liste
            if(curr->prev) curr->prev->next = newBlock;
    800020b0:	00853683          	ld	a3,8(a0)
    800020b4:	04068c63          	beqz	a3,8000210c <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    800020b8:	00f6b023          	sd	a5,0(a3)
            else MemoryAllocator::free = newBlock;
            if(curr->next) curr->next->prev = newBlock;
    800020bc:	00053683          	ld	a3,0(a0)
    800020c0:	00068463          	beqz	a3,800020c8 <_ZN15MemoryAllocator9mem_allocEm+0x58>
    800020c4:	00f6b423          	sd	a5,8(a3)
            newBlock->prev = curr->prev;
    800020c8:	00853683          	ld	a3,8(a0)
    800020cc:	00d7b423          	sd	a3,8(a5)
            newBlock->next = curr->next;
    800020d0:	00053683          	ld	a3,0(a0)
    800020d4:	00d7b023          	sd	a3,0(a5)
            //size novi je sada prethodni size - novi size i jos - sizeof(DataBlock) jer se to ne brise kada se zauzme
            //pa mora i to da se cuva
            newBlock->size = curr->size - newSize - sizeof(DataBlock);
    800020d8:	01053683          	ld	a3,16(a0)
    800020dc:	40e68733          	sub	a4,a3,a4
    800020e0:	fe870713          	addi	a4,a4,-24
    800020e4:	00e7b823          	sd	a4,16(a5)

            //azuriranje USED liste
            DataBlock* currUsed = used;
    800020e8:	00005597          	auipc	a1,0x5
    800020ec:	e985b583          	ld	a1,-360(a1) # 80006f80 <_ZN15MemoryAllocator4usedE>
    800020f0:	00058713          	mv	a4,a1
            DataBlock* prevUsed = nullptr;
    800020f4:	00000613          	li	a2,0
    800020f8:	0280006f          	j	80002120 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
        newSize = size;
    800020fc:	00050713          	mv	a4,a0
    80002100:	f91ff06f          	j	80002090 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
    80002104:	00053503          	ld	a0,0(a0)
    80002108:	f91ff06f          	j	80002098 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            else MemoryAllocator::free = newBlock;
    8000210c:	00005697          	auipc	a3,0x5
    80002110:	e6f6b623          	sd	a5,-404(a3) # 80006f78 <_ZN15MemoryAllocator4freeE>
    80002114:	fa9ff06f          	j	800020bc <_ZN15MemoryAllocator9mem_allocEm+0x4c>

            for(;currUsed->next && (char*)currUsed + sizeof(DataBlock) + currUsed->size  < (char*) curr;
                 prevUsed = currUsed, currUsed = currUsed->next);
    80002118:	00070613          	mv	a2,a4
    8000211c:	00068713          	mv	a4,a3
            for(;currUsed->next && (char*)currUsed + sizeof(DataBlock) + currUsed->size  < (char*) curr;
    80002120:	00073683          	ld	a3,0(a4)
    80002124:	00068a63          	beqz	a3,80002138 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    80002128:	01073783          	ld	a5,16(a4)
    8000212c:	01878793          	addi	a5,a5,24
    80002130:	00f707b3          	add	a5,a4,a5
    80002134:	fea7e2e3          	bltu	a5,a0,80002118 <_ZN15MemoryAllocator9mem_allocEm+0xa8>

            if(currUsed == used) {
    80002138:	02b70463          	beq	a4,a1,80002160 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
                curr->next = used;
                curr->prev = nullptr;
                used->prev = curr;
                used = curr;
            }
            else if (currUsed->next == nullptr) {
    8000213c:	04068263          	beqz	a3,80002180 <_ZN15MemoryAllocator9mem_allocEm+0x110>
                curr->prev = currUsed;
                curr->next = nullptr;
            }
            else {
                //Insert into list in the middle (prev, curr, currUsed)
                prevUsed->next = curr;
    80002140:	00a63023          	sd	a0,0(a2)
                curr->prev = prevUsed;
    80002144:	00c53423          	sd	a2,8(a0)
                curr->next = currUsed;
    80002148:	00e53023          	sd	a4,0(a0)
                currUsed->prev = curr;
    8000214c:	00a73423          	sd	a0,8(a4)
            }
            return (char*)curr + sizeof(DataBlock);
    80002150:	01850513          	addi	a0,a0,24
            }
            return (char*)curr + sizeof(DataBlock);
        }
    }
    return nullptr; //should not enter here
}
    80002154:	00813403          	ld	s0,8(sp)
    80002158:	01010113          	addi	sp,sp,16
    8000215c:	00008067          	ret
                curr->next = used;
    80002160:	00b53023          	sd	a1,0(a0)
                curr->prev = nullptr;
    80002164:	00053423          	sd	zero,8(a0)
                used->prev = curr;
    80002168:	00005797          	auipc	a5,0x5
    8000216c:	e1078793          	addi	a5,a5,-496 # 80006f78 <_ZN15MemoryAllocator4freeE>
    80002170:	0087b703          	ld	a4,8(a5)
    80002174:	00a73423          	sd	a0,8(a4)
                used = curr;
    80002178:	00a7b423          	sd	a0,8(a5)
    8000217c:	fd5ff06f          	j	80002150 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
                currUsed->next = curr;
    80002180:	00a73023          	sd	a0,0(a4)
                curr->prev = currUsed;
    80002184:	00e53423          	sd	a4,8(a0)
                curr->next = nullptr;
    80002188:	00053023          	sd	zero,0(a0)
    8000218c:	fc5ff06f          	j	80002150 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
            if (curr->prev) curr->prev->next = curr->next;
    80002190:	00853783          	ld	a5,8(a0)
    80002194:	02078863          	beqz	a5,800021c4 <_ZN15MemoryAllocator9mem_allocEm+0x154>
    80002198:	00053703          	ld	a4,0(a0)
    8000219c:	00e7b023          	sd	a4,0(a5)
            if(curr->next) curr->next->prev = curr->prev;
    800021a0:	00053783          	ld	a5,0(a0)
    800021a4:	00078663          	beqz	a5,800021b0 <_ZN15MemoryAllocator9mem_allocEm+0x140>
    800021a8:	00853703          	ld	a4,8(a0)
    800021ac:	00e7b423          	sd	a4,8(a5)
            DataBlock* currUsed = used;
    800021b0:	00005597          	auipc	a1,0x5
    800021b4:	dd05b583          	ld	a1,-560(a1) # 80006f80 <_ZN15MemoryAllocator4usedE>
    800021b8:	00058713          	mv	a4,a1
            DataBlock* prevUsed = nullptr;
    800021bc:	00000613          	li	a2,0
    800021c0:	01c0006f          	j	800021dc <_ZN15MemoryAllocator9mem_allocEm+0x16c>
            else MemoryAllocator::free = curr->next;
    800021c4:	00053783          	ld	a5,0(a0)
    800021c8:	00005717          	auipc	a4,0x5
    800021cc:	daf73823          	sd	a5,-592(a4) # 80006f78 <_ZN15MemoryAllocator4freeE>
    800021d0:	fd1ff06f          	j	800021a0 <_ZN15MemoryAllocator9mem_allocEm+0x130>
                 prevUsed = currUsed, currUsed = currUsed->next);
    800021d4:	00070613          	mv	a2,a4
    800021d8:	00068713          	mv	a4,a3
            for(;currUsed->next && (char*)currUsed + sizeof(DataBlock) + currUsed->size  < (char*) curr;
    800021dc:	00073683          	ld	a3,0(a4)
    800021e0:	00068a63          	beqz	a3,800021f4 <_ZN15MemoryAllocator9mem_allocEm+0x184>
    800021e4:	01073783          	ld	a5,16(a4)
    800021e8:	01878793          	addi	a5,a5,24
    800021ec:	00f707b3          	add	a5,a4,a5
    800021f0:	fea7e2e3          	bltu	a5,a0,800021d4 <_ZN15MemoryAllocator9mem_allocEm+0x164>
            if(currUsed == used) {
    800021f4:	02b70063          	beq	a4,a1,80002214 <_ZN15MemoryAllocator9mem_allocEm+0x1a4>
            else if (currUsed->next == nullptr) {
    800021f8:	02068e63          	beqz	a3,80002234 <_ZN15MemoryAllocator9mem_allocEm+0x1c4>
                prevUsed->next = curr;
    800021fc:	00a63023          	sd	a0,0(a2)
                curr->prev = prevUsed;
    80002200:	00c53423          	sd	a2,8(a0)
                curr->next = currUsed;
    80002204:	00e53023          	sd	a4,0(a0)
                currUsed->prev = curr;
    80002208:	00a73423          	sd	a0,8(a4)
            return (char*)curr + sizeof(DataBlock);
    8000220c:	01850513          	addi	a0,a0,24
    80002210:	f45ff06f          	j	80002154 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
                curr->next = used;
    80002214:	00b53023          	sd	a1,0(a0)
                curr->prev = nullptr;
    80002218:	00053423          	sd	zero,8(a0)
                used->prev = curr;
    8000221c:	00005797          	auipc	a5,0x5
    80002220:	d5c78793          	addi	a5,a5,-676 # 80006f78 <_ZN15MemoryAllocator4freeE>
    80002224:	0087b703          	ld	a4,8(a5)
    80002228:	00a73423          	sd	a0,8(a4)
                used = curr;
    8000222c:	00a7b423          	sd	a0,8(a5)
    80002230:	fddff06f          	j	8000220c <_ZN15MemoryAllocator9mem_allocEm+0x19c>
                currUsed->next = curr;
    80002234:	00a73023          	sd	a0,0(a4)
                curr->prev = currUsed;
    80002238:	00e53423          	sd	a4,8(a0)
                curr->next = nullptr;
    8000223c:	00053023          	sd	zero,0(a0)
    80002240:	fcdff06f          	j	8000220c <_ZN15MemoryAllocator9mem_allocEm+0x19c>

0000000080002244 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>:
        tryToJoin(currFree);
    }
    return 0;
}

void MemoryAllocator::tryToJoin(DataBlock *curr) {
    80002244:	ff010113          	addi	sp,sp,-16
    80002248:	00813423          	sd	s0,8(sp)
    8000224c:	01010413          	addi	s0,sp,16
    if(curr->next && (char*)curr + sizeof(DataBlock) + curr->size == (char*)curr->next) {
    80002250:	00053783          	ld	a5,0(a0)
    80002254:	00078a63          	beqz	a5,80002268 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>
    80002258:	01053683          	ld	a3,16(a0)
    8000225c:	01868713          	addi	a4,a3,24
    80002260:	00e50733          	add	a4,a0,a4
    80002264:	00e78863          	beq	a5,a4,80002274 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x30>
        curr->size += curr->next->size + sizeof(DataBlock);
        curr->next = curr->next->next;
        if(curr->next) curr->next->prev = curr;
    }
}
    80002268:	00813403          	ld	s0,8(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret
        curr->size += curr->next->size + sizeof(DataBlock);
    80002274:	0107b703          	ld	a4,16(a5)
    80002278:	00e686b3          	add	a3,a3,a4
    8000227c:	01868693          	addi	a3,a3,24
    80002280:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80002284:	0007b783          	ld	a5,0(a5)
    80002288:	00f53023          	sd	a5,0(a0)
        if(curr->next) curr->next->prev = curr;
    8000228c:	fc078ee3          	beqz	a5,80002268 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>
    80002290:	00a7b423          	sd	a0,8(a5)
}
    80002294:	fd5ff06f          	j	80002268 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>

0000000080002298 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(used == nullptr) return -1;
    80002298:	00005797          	auipc	a5,0x5
    8000229c:	ce87b783          	ld	a5,-792(a5) # 80006f80 <_ZN15MemoryAllocator4usedE>
    800022a0:	12078063          	beqz	a5,800023c0 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    800022a4:	00050713          	mv	a4,a0
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;
    800022a8:	12050063          	beqz	a0,800023c8 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    800022ac:	00005697          	auipc	a3,0x5
    800022b0:	c1c6b683          	ld	a3,-996(a3) # 80006ec8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800022b4:	0006b683          	ld	a3,0(a3)
    800022b8:	10d56c63          	bltu	a0,a3,800023d0 <_ZN15MemoryAllocator8mem_freeEPv+0x138>
    800022bc:	00005697          	auipc	a3,0x5
    800022c0:	c4c6b683          	ld	a3,-948(a3) # 80006f08 <_GLOBAL_OFFSET_TABLE_+0x48>
    800022c4:	0006b683          	ld	a3,0(a3)
    800022c8:	10a6e863          	bltu	a3,a0,800023d8 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    DataBlock* curr = (DataBlock*)(char*)ptr - sizeof(DataBlock);
    800022cc:	dc050513          	addi	a0,a0,-576
    if(curr < used) return -3;
    800022d0:	10f56863          	bltu	a0,a5,800023e0 <_ZN15MemoryAllocator8mem_freeEPv+0x148>
    if(used == curr) {
    800022d4:	08a78863          	beq	a5,a0,80002364 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
        curr->prev->next = curr->next;
    800022d8:	dc873683          	ld	a3,-568(a4)
    800022dc:	dc073783          	ld	a5,-576(a4)
    800022e0:	00f6b023          	sd	a5,0(a3)
        curr->next->prev = curr->prev;
    800022e4:	dc873683          	ld	a3,-568(a4)
    800022e8:	00d7b423          	sd	a3,8(a5)
        curr->next = nullptr;
    800022ec:	dc073023          	sd	zero,-576(a4)
        curr->prev = nullptr;
    800022f0:	dc073423          	sd	zero,-568(a4)
    if (free == nullptr) {
    800022f4:	00005797          	auipc	a5,0x5
    800022f8:	c847b783          	ld	a5,-892(a5) # 80006f78 <_ZN15MemoryAllocator4freeE>
    800022fc:	08078463          	beqz	a5,80002384 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
int MemoryAllocator::mem_free(void* ptr) {
    80002300:	fe010113          	addi	sp,sp,-32
    80002304:	00113c23          	sd	ra,24(sp)
    80002308:	00813823          	sd	s0,16(sp)
    8000230c:	00913423          	sd	s1,8(sp)
    80002310:	02010413          	addi	s0,sp,32
    else if(curr < free) {
    80002314:	08f56063          	bltu	a0,a5,80002394 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
        for(currFree = free; currFree->next && (char*)(currFree->next) < (char*) curr; currFree = currFree->next);
    80002318:	00078493          	mv	s1,a5
    8000231c:	0007b783          	ld	a5,0(a5)
    80002320:	00078463          	beqz	a5,80002328 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80002324:	fea7eae3          	bltu	a5,a0,80002318 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        curr->prev = currFree;
    80002328:	dc973423          	sd	s1,-568(a4)
        if(curr->next) curr->next->prev = curr;
    8000232c:	00078463          	beqz	a5,80002334 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80002330:	00a7b423          	sd	a0,8(a5)
        curr->next = curr;
    80002334:	dca73023          	sd	a0,-576(a4)
        tryToJoin(curr);
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	f0c080e7          	jalr	-244(ra) # 80002244 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
        tryToJoin(currFree);
    80002340:	00048513          	mv	a0,s1
    80002344:	00000097          	auipc	ra,0x0
    80002348:	f00080e7          	jalr	-256(ra) # 80002244 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
    return 0;
    8000234c:	00000513          	li	a0,0
}
    80002350:	01813083          	ld	ra,24(sp)
    80002354:	01013403          	ld	s0,16(sp)
    80002358:	00813483          	ld	s1,8(sp)
    8000235c:	02010113          	addi	sp,sp,32
    80002360:	00008067          	ret
        used = curr->next;
    80002364:	dc073783          	ld	a5,-576(a4)
    80002368:	00005697          	auipc	a3,0x5
    8000236c:	c0f6bc23          	sd	a5,-1000(a3) # 80006f80 <_ZN15MemoryAllocator4usedE>
        if(used) used->prev = nullptr;
    80002370:	00078463          	beqz	a5,80002378 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
    80002374:	0007b423          	sd	zero,8(a5)
        curr->next = nullptr;
    80002378:	dc073023          	sd	zero,-576(a4)
        curr->prev = nullptr;
    8000237c:	dc073423          	sd	zero,-568(a4)
    80002380:	f75ff06f          	j	800022f4 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
        free = curr;
    80002384:	00005797          	auipc	a5,0x5
    80002388:	bea7ba23          	sd	a0,-1036(a5) # 80006f78 <_ZN15MemoryAllocator4freeE>
    return 0;
    8000238c:	00000513          	li	a0,0
    80002390:	00008067          	ret
        free->prev = curr;
    80002394:	00a7b423          	sd	a0,8(a5)
        curr->prev = nullptr;
    80002398:	dc073423          	sd	zero,-568(a4)
        curr->next = free;
    8000239c:	00005797          	auipc	a5,0x5
    800023a0:	bdc78793          	addi	a5,a5,-1060 # 80006f78 <_ZN15MemoryAllocator4freeE>
    800023a4:	0007b683          	ld	a3,0(a5)
    800023a8:	dcd73023          	sd	a3,-576(a4)
        free = curr;
    800023ac:	00a7b023          	sd	a0,0(a5)
        tryToJoin(free);
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	e94080e7          	jalr	-364(ra) # 80002244 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
    return 0;
    800023b8:	00000513          	li	a0,0
    800023bc:	f95ff06f          	j	80002350 <_ZN15MemoryAllocator8mem_freeEPv+0xb8>
    if(used == nullptr) return -1;
    800023c0:	fff00513          	li	a0,-1
    800023c4:	00008067          	ret
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;
    800023c8:	ffe00513          	li	a0,-2
    800023cc:	00008067          	ret
    800023d0:	ffe00513          	li	a0,-2
    800023d4:	00008067          	ret
    800023d8:	ffe00513          	li	a0,-2
    800023dc:	00008067          	ret
    if(curr < used) return -3;
    800023e0:	ffd00513          	li	a0,-3
}
    800023e4:	00008067          	ret

00000000800023e8 <_Znwm>:
using size_t = decltype(sizeof(0));

//THEIR MEMORY

void *operator new(size_t n)
{
    800023e8:	ff010113          	addi	sp,sp,-16
    800023ec:	00113423          	sd	ra,8(sp)
    800023f0:	00813023          	sd	s0,0(sp)
    800023f4:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800023f8:	00003097          	auipc	ra,0x3
    800023fc:	920080e7          	jalr	-1760(ra) # 80004d18 <__mem_alloc>
}
    80002400:	00813083          	ld	ra,8(sp)
    80002404:	00013403          	ld	s0,0(sp)
    80002408:	01010113          	addi	sp,sp,16
    8000240c:	00008067          	ret

0000000080002410 <_Znam>:

void *operator new[](size_t n)
{
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00113423          	sd	ra,8(sp)
    80002418:	00813023          	sd	s0,0(sp)
    8000241c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002420:	00003097          	auipc	ra,0x3
    80002424:	8f8080e7          	jalr	-1800(ra) # 80004d18 <__mem_alloc>
}
    80002428:	00813083          	ld	ra,8(sp)
    8000242c:	00013403          	ld	s0,0(sp)
    80002430:	01010113          	addi	sp,sp,16
    80002434:	00008067          	ret

0000000080002438 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002438:	ff010113          	addi	sp,sp,-16
    8000243c:	00113423          	sd	ra,8(sp)
    80002440:	00813023          	sd	s0,0(sp)
    80002444:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80002448:	00003097          	auipc	ra,0x3
    8000244c:	804080e7          	jalr	-2044(ra) # 80004c4c <__mem_free>
}
    80002450:	00813083          	ld	ra,8(sp)
    80002454:	00013403          	ld	s0,0(sp)
    80002458:	01010113          	addi	sp,sp,16
    8000245c:	00008067          	ret

0000000080002460 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002460:	ff010113          	addi	sp,sp,-16
    80002464:	00113423          	sd	ra,8(sp)
    80002468:	00813023          	sd	s0,0(sp)
    8000246c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80002470:	00002097          	auipc	ra,0x2
    80002474:	7dc080e7          	jalr	2012(ra) # 80004c4c <__mem_free>
}
    80002478:	00813083          	ld	ra,8(sp)
    8000247c:	00013403          	ld	s0,0(sp)
    80002480:	01010113          	addi	sp,sp,16
    80002484:	00008067          	ret

0000000080002488 <_ZN6Thread3runEv>:

Thread::Thread() {
    //todo
}

void Thread::run() {
    80002488:	ff010113          	addi	sp,sp,-16
    8000248c:	00813423          	sd	s0,8(sp)
    80002490:	01010413          	addi	s0,sp,16
    //todo
}
    80002494:	00813403          	ld	s0,8(sp)
    80002498:	01010113          	addi	sp,sp,16
    8000249c:	00008067          	ret

00000000800024a0 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    800024a0:	ff010113          	addi	sp,sp,-16
    800024a4:	00113423          	sd	ra,8(sp)
    800024a8:	00813023          	sd	s0,0(sp)
    800024ac:	01010413          	addi	s0,sp,16
    800024b0:	00005797          	auipc	a5,0x5
    800024b4:	9d878793          	addi	a5,a5,-1576 # 80006e88 <_ZTV9Semaphore+0x10>
    800024b8:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    800024bc:	00853503          	ld	a0,8(a0)
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	0ac080e7          	jalr	172(ra) # 8000156c <_Z9sem_closeP11MySemaphore>
}
    800024c8:	00813083          	ld	ra,8(sp)
    800024cc:	00013403          	ld	s0,0(sp)
    800024d0:	01010113          	addi	sp,sp,16
    800024d4:	00008067          	ret

00000000800024d8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800024d8:	fe010113          	addi	sp,sp,-32
    800024dc:	00113c23          	sd	ra,24(sp)
    800024e0:	00813823          	sd	s0,16(sp)
    800024e4:	00913423          	sd	s1,8(sp)
    800024e8:	02010413          	addi	s0,sp,32
    800024ec:	00050493          	mv	s1,a0
}
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	fb0080e7          	jalr	-80(ra) # 800024a0 <_ZN9SemaphoreD1Ev>
    800024f8:	00048513          	mv	a0,s1
    800024fc:	00000097          	auipc	ra,0x0
    80002500:	f3c080e7          	jalr	-196(ra) # 80002438 <_ZdlPv>
    80002504:	01813083          	ld	ra,24(sp)
    80002508:	01013403          	ld	s0,16(sp)
    8000250c:	00813483          	ld	s1,8(sp)
    80002510:	02010113          	addi	sp,sp,32
    80002514:	00008067          	ret

0000000080002518 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00113423          	sd	ra,8(sp)
    80002520:	00813023          	sd	s0,0(sp)
    80002524:	01010413          	addi	s0,sp,16
    80002528:	00005797          	auipc	a5,0x5
    8000252c:	98078793          	addi	a5,a5,-1664 # 80006ea8 <_ZTV6Thread+0x10>
    80002530:	00f53023          	sd	a5,0(a0)
    thread_exit(); //Da li ovo tako treba? Msm da ne
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	f98080e7          	jalr	-104(ra) # 800014cc <_Z11thread_exitv>
}
    8000253c:	00813083          	ld	ra,8(sp)
    80002540:	00013403          	ld	s0,0(sp)
    80002544:	01010113          	addi	sp,sp,16
    80002548:	00008067          	ret

000000008000254c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000254c:	fe010113          	addi	sp,sp,-32
    80002550:	00113c23          	sd	ra,24(sp)
    80002554:	00813823          	sd	s0,16(sp)
    80002558:	00913423          	sd	s1,8(sp)
    8000255c:	02010413          	addi	s0,sp,32
    80002560:	00050493          	mv	s1,a0
}
    80002564:	00000097          	auipc	ra,0x0
    80002568:	fb4080e7          	jalr	-76(ra) # 80002518 <_ZN6ThreadD1Ev>
    8000256c:	00048513          	mv	a0,s1
    80002570:	00000097          	auipc	ra,0x0
    80002574:	ec8080e7          	jalr	-312(ra) # 80002438 <_ZdlPv>
    80002578:	01813083          	ld	ra,24(sp)
    8000257c:	01013403          	ld	s0,16(sp)
    80002580:	00813483          	ld	s1,8(sp)
    80002584:	02010113          	addi	sp,sp,32
    80002588:	00008067          	ret

000000008000258c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    8000258c:	ff010113          	addi	sp,sp,-16
    80002590:	00113423          	sd	ra,8(sp)
    80002594:	00813023          	sd	s0,0(sp)
    80002598:	01010413          	addi	s0,sp,16
    8000259c:	00005797          	auipc	a5,0x5
    800025a0:	8ec78793          	addi	a5,a5,-1812 # 80006e88 <_ZTV9Semaphore+0x10>
    800025a4:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    800025a8:	00850513          	addi	a0,a0,8
    800025ac:	fffff097          	auipc	ra,0xfffff
    800025b0:	f90080e7          	jalr	-112(ra) # 8000153c <_Z8sem_openPP11MySemaphorej>
}
    800025b4:	00813083          	ld	ra,8(sp)
    800025b8:	00013403          	ld	s0,0(sp)
    800025bc:	01010113          	addi	sp,sp,16
    800025c0:	00008067          	ret

00000000800025c4 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800025c4:	ff010113          	addi	sp,sp,-16
    800025c8:	00113423          	sd	ra,8(sp)
    800025cc:	00813023          	sd	s0,0(sp)
    800025d0:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    800025d4:	00853503          	ld	a0,8(a0)
    800025d8:	fffff097          	auipc	ra,0xfffff
    800025dc:	fc0080e7          	jalr	-64(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
}
    800025e0:	00813083          	ld	ra,8(sp)
    800025e4:	00013403          	ld	s0,0(sp)
    800025e8:	01010113          	addi	sp,sp,16
    800025ec:	00008067          	ret

00000000800025f0 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800025f0:	ff010113          	addi	sp,sp,-16
    800025f4:	00113423          	sd	ra,8(sp)
    800025f8:	00813023          	sd	s0,0(sp)
    800025fc:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    80002600:	00853503          	ld	a0,8(a0)
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	fc0080e7          	jalr	-64(ra) # 800015c4 <_Z10sem_signalP11MySemaphore>
}
    8000260c:	00813083          	ld	ra,8(sp)
    80002610:	00013403          	ld	s0,0(sp)
    80002614:	01010113          	addi	sp,sp,16
    80002618:	00008067          	ret

000000008000261c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000261c:	ff010113          	addi	sp,sp,-16
    80002620:	00113423          	sd	ra,8(sp)
    80002624:	00813023          	sd	s0,0(sp)
    80002628:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	ecc080e7          	jalr	-308(ra) # 800014f8 <_Z15thread_dispatchv>
}
    80002634:	00813083          	ld	ra,8(sp)
    80002638:	00013403          	ld	s0,0(sp)
    8000263c:	01010113          	addi	sp,sp,16
    80002640:	00008067          	ret

0000000080002644 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002644:	ff010113          	addi	sp,sp,-16
    80002648:	00113423          	sd	ra,8(sp)
    8000264c:	00813023          	sd	s0,0(sp)
    80002650:	01010413          	addi	s0,sp,16
    80002654:	00005797          	auipc	a5,0x5
    80002658:	85478793          	addi	a5,a5,-1964 # 80006ea8 <_ZTV6Thread+0x10>
    8000265c:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    80002660:	00850513          	addi	a0,a0,8
    80002664:	fffff097          	auipc	ra,0xfffff
    80002668:	e34080e7          	jalr	-460(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
}
    8000266c:	00813083          	ld	ra,8(sp)
    80002670:	00013403          	ld	s0,0(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <_ZN6Thread4joinEv>:
void Thread::join() {
    8000267c:	ff010113          	addi	sp,sp,-16
    80002680:	00113423          	sd	ra,8(sp)
    80002684:	00813023          	sd	s0,0(sp)
    80002688:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    8000268c:	00853503          	ld	a0,8(a0)
    80002690:	fffff097          	auipc	ra,0xfffff
    80002694:	e88080e7          	jalr	-376(ra) # 80001518 <_Z11thread_joinP3TCB>
}
    80002698:	00813083          	ld	ra,8(sp)
    8000269c:	00013403          	ld	s0,0(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_ZN6Thread5startEv>:
int Thread::start() {
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00813423          	sd	s0,8(sp)
    800026b0:	01010413          	addi	s0,sp,16
}
    800026b4:	00000513          	li	a0,0
    800026b8:	00813403          	ld	s0,8(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00813423          	sd	s0,8(sp)
    800026cc:	01010413          	addi	s0,sp,16
    800026d0:	00004797          	auipc	a5,0x4
    800026d4:	7d878793          	addi	a5,a5,2008 # 80006ea8 <_ZTV6Thread+0x10>
    800026d8:	00f53023          	sd	a5,0(a0)
}
    800026dc:	00813403          	ld	s0,8(sp)
    800026e0:	01010113          	addi	sp,sp,16
    800026e4:	00008067          	ret

00000000800026e8 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    800026e8:	ff010113          	addi	sp,sp,-16
    800026ec:	00813423          	sd	s0,8(sp)
    800026f0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800026f4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800026f8:	10200073          	sret
}
    800026fc:	00813403          	ld	s0,8(sp)
    80002700:	01010113          	addi	sp,sp,16
    80002704:	00008067          	ret

0000000080002708 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void*);

void Riscv::handleSupervisorTrap()
{
    80002708:	fb010113          	addi	sp,sp,-80
    8000270c:	04113423          	sd	ra,72(sp)
    80002710:	04813023          	sd	s0,64(sp)
    80002714:	02913c23          	sd	s1,56(sp)
    80002718:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000271c:	142027f3          	csrr	a5,scause
    80002720:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80002724:	fc043783          	ld	a5,-64(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002728:	ff878793          	addi	a5,a5,-8
    8000272c:	00100713          	li	a4,1
    80002730:	00f77c63          	bgeu	a4,a5,80002748 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    else
    {
        // unexpected trap cause
        // Ovde se ulazi ako se desi neki interrupt tabele
    }
}
    80002734:	04813083          	ld	ra,72(sp)
    80002738:	04013403          	ld	s0,64(sp)
    8000273c:	03813483          	ld	s1,56(sp)
    80002740:	05010113          	addi	sp,sp,80
    80002744:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002748:	141027f3          	csrr	a5,sepc
    8000274c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002750:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002754:	00478793          	addi	a5,a5,4
    80002758:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000275c:	100027f3          	csrr	a5,sstatus
    80002760:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002764:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80002768:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    8000276c:	00050793          	mv	a5,a0
    80002770:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80002774:	fc843783          	ld	a5,-56(s0)
        switch (codeOperation) {
    80002778:	fef78793          	addi	a5,a5,-17
    8000277c:	03200713          	li	a4,50
    80002780:	06f76c63          	bltu	a4,a5,800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    80002784:	00279793          	slli	a5,a5,0x2
    80002788:	00004717          	auipc	a4,0x4
    8000278c:	a7070713          	addi	a4,a4,-1424 # 800061f8 <CONSOLE_STATUS+0x1e8>
    80002790:	00e787b3          	add	a5,a5,a4
    80002794:	0007a783          	lw	a5,0(a5)
    80002798:	00e787b3          	add	a5,a5,a4
    8000279c:	00078067          	jr	a5
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    800027a0:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    800027a4:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    800027a8:	00068593          	mv	a1,a3
                *tcb = TCB::createThread(body, arg);
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	71c080e7          	jalr	1820(ra) # 80001ec8 <_ZN3TCB12createThreadEPFvPvES0_>
    800027b4:	00a4b023          	sd	a0,0(s1)
                if(*tcb != nullptr) {
    800027b8:	00050863          	beqz	a0,800027c8 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                    __asm__ volatile ("li t0, 0");
    800027bc:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    800027c0:	04542823          	sw	t0,80(s0)
    800027c4:	0340006f          	j	800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    __asm__ volatile ("li t0, -1");
    800027c8:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    800027cc:	04542823          	sw	t0,80(s0)
    800027d0:	0280006f          	j	800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                TCB::running->setFinished(true);
    800027d4:	00004797          	auipc	a5,0x4
    800027d8:	72c7b783          	ld	a5,1836(a5) # 80006f00 <_GLOBAL_OFFSET_TABLE_+0x40>
    800027dc:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    800027e0:	00100713          	li	a4,1
    800027e4:	02e78023          	sb	a4,32(a5)
                TCB::dispatch();
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	7d8080e7          	jalr	2008(ra) # 80001fc0 <_ZN3TCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    800027f0:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    800027f4:	04542823          	sw	t0,80(s0)
        w_sstatus(sstatus);
    800027f8:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800027fc:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002800:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002804:	14179073          	csrw	sepc,a5
}
    80002808:	f2dff06f          	j	80002734 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                TCB::dispatch();
    8000280c:	fffff097          	auipc	ra,0xfffff
    80002810:	7b4080e7          	jalr	1972(ra) # 80001fc0 <_ZN3TCB8dispatchEv>
                break;
    80002814:	fe5ff06f          	j	800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002818:	00058513          	mv	a0,a1
                TCB::join(handle);
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	814080e7          	jalr	-2028(ra) # 80002030 <_ZN3TCB4joinEPS_>
                break;
    80002824:	fd5ff06f          	j	800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a2" : "=r" (init));
    80002828:	00060513          	mv	a0,a2
    8000282c:	0005051b          	sext.w	a0,a0
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80002830:	00058493          	mv	s1,a1
                *semHandle = MySemaphore::createSemaphore(init);
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	f24080e7          	jalr	-220(ra) # 80001758 <_ZN11MySemaphore15createSemaphoreEj>
    8000283c:	00a4b023          	sd	a0,0(s1)
                if(*semHandle != nullptr) {
    80002840:	00050863          	beqz	a0,80002850 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    __asm__ volatile ("li t0, 0");
    80002844:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002848:	04542823          	sw	t0,80(s0)
    8000284c:	fadff06f          	j	800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    __asm__ volatile ("li t0, -1");
    80002850:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002854:	04542823          	sw	t0,80(s0)
    80002858:	fa1ff06f          	j	800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    8000285c:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    80002860:	00050c63          	beqz	a0,80002878 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    returnValue = semHandlePtr->close();
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	f3c080e7          	jalr	-196(ra) # 800017a0 <_ZN11MySemaphore5closeEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    8000286c:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002870:	04542823          	sw	t0,80(s0)
                break;
    80002874:	f85ff06f          	j	800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                else returnValue = -2;
    80002878:	ffe00513          	li	a0,-2
    8000287c:	ff1ff06f          	j	8000286c <_ZN5Riscv20handleSupervisorTrapEv+0x164>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002880:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    80002884:	00050c63          	beqz	a0,8000289c <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                    returnValue = semHandlePtr->wait();
    80002888:	fffff097          	auipc	ra,0xfffff
    8000288c:	d68080e7          	jalr	-664(ra) # 800015f0 <_ZN11MySemaphore4waitEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002890:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002894:	04542823          	sw	t0,80(s0)
                break;
    80002898:	f61ff06f          	j	800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                else returnValue = -2;
    8000289c:	ffe00513          	li	a0,-2
    800028a0:	ff1ff06f          	j	80002890 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800028a4:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr)
    800028a8:	00050c63          	beqz	a0,800028c0 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    returnValue = semHandlePtr->signal();
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	e10080e7          	jalr	-496(ra) # 800016bc <_ZN11MySemaphore6signalEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800028b4:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800028b8:	04542823          	sw	t0,80(s0)
                break;
    800028bc:	f3dff06f          	j	800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    returnValue = -2;
    800028c0:	ffe00513          	li	a0,-2
    800028c4:	ff1ff06f          	j	800028b4 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                TCB::dispatch();
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	6f8080e7          	jalr	1784(ra) # 80001fc0 <_ZN3TCB8dispatchEv>
                break;
    800028d0:	f29ff06f          	j	800027f8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

00000000800028d4 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    800028d4:	ff010113          	addi	sp,sp,-16
    800028d8:	00113423          	sd	ra,8(sp)
    800028dc:	00813023          	sd	s0,0(sp)
    800028e0:	01010413          	addi	s0,sp,16
    console_handler();
    800028e4:	00002097          	auipc	ra,0x2
    800028e8:	600080e7          	jalr	1536(ra) # 80004ee4 <console_handler>
}
    800028ec:	00813083          	ld	ra,8(sp)
    800028f0:	00013403          	ld	s0,0(sp)
    800028f4:	01010113          	addi	sp,sp,16
    800028f8:	00008067          	ret

00000000800028fc <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    800028fc:	ff010113          	addi	sp,sp,-16
    80002900:	00813423          	sd	s0,8(sp)
    80002904:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002908:	00200793          	li	a5,2
    8000290c:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
    80002910:	00813403          	ld	s0,8(sp)
    80002914:	01010113          	addi	sp,sp,16
    80002918:	00008067          	ret

000000008000291c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    8000291c:	ff010113          	addi	sp,sp,-16
    80002920:	00813423          	sd	s0,8(sp)
    80002924:	01010413          	addi	s0,sp,16
    80002928:	00100793          	li	a5,1
    8000292c:	00f50863          	beq	a0,a5,8000293c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002930:	00813403          	ld	s0,8(sp)
    80002934:	01010113          	addi	sp,sp,16
    80002938:	00008067          	ret
    8000293c:	000107b7          	lui	a5,0x10
    80002940:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002944:	fef596e3          	bne	a1,a5,80002930 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002948:	00004797          	auipc	a5,0x4
    8000294c:	64078793          	addi	a5,a5,1600 # 80006f88 <_ZN9Scheduler16readyThreadQueueE>
    80002950:	0007b023          	sd	zero,0(a5)
    80002954:	0007b423          	sd	zero,8(a5)
    80002958:	fd9ff06f          	j	80002930 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000295c <_ZN9Scheduler3getEv>:
{
    8000295c:	fe010113          	addi	sp,sp,-32
    80002960:	00113c23          	sd	ra,24(sp)
    80002964:	00813823          	sd	s0,16(sp)
    80002968:	00913423          	sd	s1,8(sp)
    8000296c:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002970:	00004517          	auipc	a0,0x4
    80002974:	61853503          	ld	a0,1560(a0) # 80006f88 <_ZN9Scheduler16readyThreadQueueE>
    80002978:	04050263          	beqz	a0,800029bc <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    8000297c:	00853783          	ld	a5,8(a0)
    80002980:	00004717          	auipc	a4,0x4
    80002984:	60f73423          	sd	a5,1544(a4) # 80006f88 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002988:	02078463          	beqz	a5,800029b0 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    8000298c:	00053483          	ld	s1,0(a0)
        delete elem;
    80002990:	00000097          	auipc	ra,0x0
    80002994:	aa8080e7          	jalr	-1368(ra) # 80002438 <_ZdlPv>
}
    80002998:	00048513          	mv	a0,s1
    8000299c:	01813083          	ld	ra,24(sp)
    800029a0:	01013403          	ld	s0,16(sp)
    800029a4:	00813483          	ld	s1,8(sp)
    800029a8:	02010113          	addi	sp,sp,32
    800029ac:	00008067          	ret
        if (!head) { tail = 0; }
    800029b0:	00004797          	auipc	a5,0x4
    800029b4:	5e07b023          	sd	zero,1504(a5) # 80006f90 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800029b8:	fd5ff06f          	j	8000298c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800029bc:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800029c0:	fd9ff06f          	j	80002998 <_ZN9Scheduler3getEv+0x3c>

00000000800029c4 <_ZN9Scheduler3putEP3TCB>:
{
    800029c4:	fe010113          	addi	sp,sp,-32
    800029c8:	00113c23          	sd	ra,24(sp)
    800029cc:	00813823          	sd	s0,16(sp)
    800029d0:	00913423          	sd	s1,8(sp)
    800029d4:	02010413          	addi	s0,sp,32
    800029d8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800029dc:	01000513          	li	a0,16
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	a08080e7          	jalr	-1528(ra) # 800023e8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800029e8:	00953023          	sd	s1,0(a0)
    800029ec:	00053423          	sd	zero,8(a0)
        if (tail)
    800029f0:	00004797          	auipc	a5,0x4
    800029f4:	5a07b783          	ld	a5,1440(a5) # 80006f90 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800029f8:	02078263          	beqz	a5,80002a1c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800029fc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002a00:	00004797          	auipc	a5,0x4
    80002a04:	58a7b823          	sd	a0,1424(a5) # 80006f90 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002a08:	01813083          	ld	ra,24(sp)
    80002a0c:	01013403          	ld	s0,16(sp)
    80002a10:	00813483          	ld	s1,8(sp)
    80002a14:	02010113          	addi	sp,sp,32
    80002a18:	00008067          	ret
            head = tail = elem;
    80002a1c:	00004797          	auipc	a5,0x4
    80002a20:	56c78793          	addi	a5,a5,1388 # 80006f88 <_ZN9Scheduler16readyThreadQueueE>
    80002a24:	00a7b423          	sd	a0,8(a5)
    80002a28:	00a7b023          	sd	a0,0(a5)
    80002a2c:	fddff06f          	j	80002a08 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002a30 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002a30:	ff010113          	addi	sp,sp,-16
    80002a34:	00113423          	sd	ra,8(sp)
    80002a38:	00813023          	sd	s0,0(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    80002a40:	000105b7          	lui	a1,0x10
    80002a44:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a48:	00100513          	li	a0,1
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	ed0080e7          	jalr	-304(ra) # 8000291c <_Z41__static_initialization_and_destruction_0ii>
    80002a54:	00813083          	ld	ra,8(sp)
    80002a58:	00013403          	ld	s0,0(sp)
    80002a5c:	01010113          	addi	sp,sp,16
    80002a60:	00008067          	ret

0000000080002a64 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80002a64:	fd010113          	addi	sp,sp,-48
    80002a68:	02113423          	sd	ra,40(sp)
    80002a6c:	02813023          	sd	s0,32(sp)
    80002a70:	00913c23          	sd	s1,24(sp)
    80002a74:	01213823          	sd	s2,16(sp)
    80002a78:	03010413          	addi	s0,sp,48
    80002a7c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002a80:	100027f3          	csrr	a5,sstatus
    80002a84:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002a88:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002a8c:	00200793          	li	a5,2
    80002a90:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002a94:	0004c503          	lbu	a0,0(s1)
    80002a98:	00050a63          	beqz	a0,80002aac <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80002a9c:	00002097          	auipc	ra,0x2
    80002aa0:	3d4080e7          	jalr	980(ra) # 80004e70 <__putc>
        string++;
    80002aa4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002aa8:	fedff06f          	j	80002a94 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002aac:	0009091b          	sext.w	s2,s2
    80002ab0:	00297913          	andi	s2,s2,2
    80002ab4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002ab8:	10092073          	csrs	sstatus,s2
}
    80002abc:	02813083          	ld	ra,40(sp)
    80002ac0:	02013403          	ld	s0,32(sp)
    80002ac4:	01813483          	ld	s1,24(sp)
    80002ac8:	01013903          	ld	s2,16(sp)
    80002acc:	03010113          	addi	sp,sp,48
    80002ad0:	00008067          	ret

0000000080002ad4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002ad4:	fc010113          	addi	sp,sp,-64
    80002ad8:	02113c23          	sd	ra,56(sp)
    80002adc:	02813823          	sd	s0,48(sp)
    80002ae0:	02913423          	sd	s1,40(sp)
    80002ae4:	03213023          	sd	s2,32(sp)
    80002ae8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002aec:	100027f3          	csrr	a5,sstatus
    80002af0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002af4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002af8:	00200793          	li	a5,2
    80002afc:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002b00:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002b04:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002b08:	00a00613          	li	a2,10
    80002b0c:	02c5773b          	remuw	a4,a0,a2
    80002b10:	02071693          	slli	a3,a4,0x20
    80002b14:	0206d693          	srli	a3,a3,0x20
    80002b18:	00003717          	auipc	a4,0x3
    80002b1c:	7b070713          	addi	a4,a4,1968 # 800062c8 <_ZZ12printIntegermE6digits>
    80002b20:	00d70733          	add	a4,a4,a3
    80002b24:	00074703          	lbu	a4,0(a4)
    80002b28:	fe040693          	addi	a3,s0,-32
    80002b2c:	009687b3          	add	a5,a3,s1
    80002b30:	0014849b          	addiw	s1,s1,1
    80002b34:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002b38:	0005071b          	sext.w	a4,a0
    80002b3c:	02c5553b          	divuw	a0,a0,a2
    80002b40:	00900793          	li	a5,9
    80002b44:	fce7e2e3          	bltu	a5,a4,80002b08 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002b48:	fff4849b          	addiw	s1,s1,-1
    80002b4c:	0004ce63          	bltz	s1,80002b68 <_Z12printIntegerm+0x94>
    80002b50:	fe040793          	addi	a5,s0,-32
    80002b54:	009787b3          	add	a5,a5,s1
    80002b58:	ff07c503          	lbu	a0,-16(a5)
    80002b5c:	00002097          	auipc	ra,0x2
    80002b60:	314080e7          	jalr	788(ra) # 80004e70 <__putc>
    80002b64:	fe5ff06f          	j	80002b48 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002b68:	0009091b          	sext.w	s2,s2
    80002b6c:	00297913          	andi	s2,s2,2
    80002b70:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002b74:	10092073          	csrs	sstatus,s2
    80002b78:	03813083          	ld	ra,56(sp)
    80002b7c:	03013403          	ld	s0,48(sp)
    80002b80:	02813483          	ld	s1,40(sp)
    80002b84:	02013903          	ld	s2,32(sp)
    80002b88:	04010113          	addi	sp,sp,64
    80002b8c:	00008067          	ret

0000000080002b90 <start>:
    80002b90:	ff010113          	addi	sp,sp,-16
    80002b94:	00813423          	sd	s0,8(sp)
    80002b98:	01010413          	addi	s0,sp,16
    80002b9c:	300027f3          	csrr	a5,mstatus
    80002ba0:	ffffe737          	lui	a4,0xffffe
    80002ba4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff65ef>
    80002ba8:	00e7f7b3          	and	a5,a5,a4
    80002bac:	00001737          	lui	a4,0x1
    80002bb0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002bb4:	00e7e7b3          	or	a5,a5,a4
    80002bb8:	30079073          	csrw	mstatus,a5
    80002bbc:	00000797          	auipc	a5,0x0
    80002bc0:	16078793          	addi	a5,a5,352 # 80002d1c <system_main>
    80002bc4:	34179073          	csrw	mepc,a5
    80002bc8:	00000793          	li	a5,0
    80002bcc:	18079073          	csrw	satp,a5
    80002bd0:	000107b7          	lui	a5,0x10
    80002bd4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002bd8:	30279073          	csrw	medeleg,a5
    80002bdc:	30379073          	csrw	mideleg,a5
    80002be0:	104027f3          	csrr	a5,sie
    80002be4:	2227e793          	ori	a5,a5,546
    80002be8:	10479073          	csrw	sie,a5
    80002bec:	fff00793          	li	a5,-1
    80002bf0:	00a7d793          	srli	a5,a5,0xa
    80002bf4:	3b079073          	csrw	pmpaddr0,a5
    80002bf8:	00f00793          	li	a5,15
    80002bfc:	3a079073          	csrw	pmpcfg0,a5
    80002c00:	f14027f3          	csrr	a5,mhartid
    80002c04:	0200c737          	lui	a4,0x200c
    80002c08:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002c0c:	0007869b          	sext.w	a3,a5
    80002c10:	00269713          	slli	a4,a3,0x2
    80002c14:	000f4637          	lui	a2,0xf4
    80002c18:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002c1c:	00d70733          	add	a4,a4,a3
    80002c20:	0037979b          	slliw	a5,a5,0x3
    80002c24:	020046b7          	lui	a3,0x2004
    80002c28:	00d787b3          	add	a5,a5,a3
    80002c2c:	00c585b3          	add	a1,a1,a2
    80002c30:	00371693          	slli	a3,a4,0x3
    80002c34:	00004717          	auipc	a4,0x4
    80002c38:	36c70713          	addi	a4,a4,876 # 80006fa0 <timer_scratch>
    80002c3c:	00b7b023          	sd	a1,0(a5)
    80002c40:	00d70733          	add	a4,a4,a3
    80002c44:	00f73c23          	sd	a5,24(a4)
    80002c48:	02c73023          	sd	a2,32(a4)
    80002c4c:	34071073          	csrw	mscratch,a4
    80002c50:	00000797          	auipc	a5,0x0
    80002c54:	6e078793          	addi	a5,a5,1760 # 80003330 <timervec>
    80002c58:	30579073          	csrw	mtvec,a5
    80002c5c:	300027f3          	csrr	a5,mstatus
    80002c60:	0087e793          	ori	a5,a5,8
    80002c64:	30079073          	csrw	mstatus,a5
    80002c68:	304027f3          	csrr	a5,mie
    80002c6c:	0807e793          	ori	a5,a5,128
    80002c70:	30479073          	csrw	mie,a5
    80002c74:	f14027f3          	csrr	a5,mhartid
    80002c78:	0007879b          	sext.w	a5,a5
    80002c7c:	00078213          	mv	tp,a5
    80002c80:	30200073          	mret
    80002c84:	00813403          	ld	s0,8(sp)
    80002c88:	01010113          	addi	sp,sp,16
    80002c8c:	00008067          	ret

0000000080002c90 <timerinit>:
    80002c90:	ff010113          	addi	sp,sp,-16
    80002c94:	00813423          	sd	s0,8(sp)
    80002c98:	01010413          	addi	s0,sp,16
    80002c9c:	f14027f3          	csrr	a5,mhartid
    80002ca0:	0200c737          	lui	a4,0x200c
    80002ca4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002ca8:	0007869b          	sext.w	a3,a5
    80002cac:	00269713          	slli	a4,a3,0x2
    80002cb0:	000f4637          	lui	a2,0xf4
    80002cb4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002cb8:	00d70733          	add	a4,a4,a3
    80002cbc:	0037979b          	slliw	a5,a5,0x3
    80002cc0:	020046b7          	lui	a3,0x2004
    80002cc4:	00d787b3          	add	a5,a5,a3
    80002cc8:	00c585b3          	add	a1,a1,a2
    80002ccc:	00371693          	slli	a3,a4,0x3
    80002cd0:	00004717          	auipc	a4,0x4
    80002cd4:	2d070713          	addi	a4,a4,720 # 80006fa0 <timer_scratch>
    80002cd8:	00b7b023          	sd	a1,0(a5)
    80002cdc:	00d70733          	add	a4,a4,a3
    80002ce0:	00f73c23          	sd	a5,24(a4)
    80002ce4:	02c73023          	sd	a2,32(a4)
    80002ce8:	34071073          	csrw	mscratch,a4
    80002cec:	00000797          	auipc	a5,0x0
    80002cf0:	64478793          	addi	a5,a5,1604 # 80003330 <timervec>
    80002cf4:	30579073          	csrw	mtvec,a5
    80002cf8:	300027f3          	csrr	a5,mstatus
    80002cfc:	0087e793          	ori	a5,a5,8
    80002d00:	30079073          	csrw	mstatus,a5
    80002d04:	304027f3          	csrr	a5,mie
    80002d08:	0807e793          	ori	a5,a5,128
    80002d0c:	30479073          	csrw	mie,a5
    80002d10:	00813403          	ld	s0,8(sp)
    80002d14:	01010113          	addi	sp,sp,16
    80002d18:	00008067          	ret

0000000080002d1c <system_main>:
    80002d1c:	fe010113          	addi	sp,sp,-32
    80002d20:	00813823          	sd	s0,16(sp)
    80002d24:	00913423          	sd	s1,8(sp)
    80002d28:	00113c23          	sd	ra,24(sp)
    80002d2c:	02010413          	addi	s0,sp,32
    80002d30:	00000097          	auipc	ra,0x0
    80002d34:	0c4080e7          	jalr	196(ra) # 80002df4 <cpuid>
    80002d38:	00004497          	auipc	s1,0x4
    80002d3c:	20848493          	addi	s1,s1,520 # 80006f40 <started>
    80002d40:	02050263          	beqz	a0,80002d64 <system_main+0x48>
    80002d44:	0004a783          	lw	a5,0(s1)
    80002d48:	0007879b          	sext.w	a5,a5
    80002d4c:	fe078ce3          	beqz	a5,80002d44 <system_main+0x28>
    80002d50:	0ff0000f          	fence
    80002d54:	00003517          	auipc	a0,0x3
    80002d58:	5b450513          	addi	a0,a0,1460 # 80006308 <_ZZ12printIntegermE6digits+0x40>
    80002d5c:	00001097          	auipc	ra,0x1
    80002d60:	a70080e7          	jalr	-1424(ra) # 800037cc <panic>
    80002d64:	00001097          	auipc	ra,0x1
    80002d68:	9c4080e7          	jalr	-1596(ra) # 80003728 <consoleinit>
    80002d6c:	00001097          	auipc	ra,0x1
    80002d70:	150080e7          	jalr	336(ra) # 80003ebc <printfinit>
    80002d74:	00003517          	auipc	a0,0x3
    80002d78:	43450513          	addi	a0,a0,1076 # 800061a8 <CONSOLE_STATUS+0x198>
    80002d7c:	00001097          	auipc	ra,0x1
    80002d80:	aac080e7          	jalr	-1364(ra) # 80003828 <__printf>
    80002d84:	00003517          	auipc	a0,0x3
    80002d88:	55450513          	addi	a0,a0,1364 # 800062d8 <_ZZ12printIntegermE6digits+0x10>
    80002d8c:	00001097          	auipc	ra,0x1
    80002d90:	a9c080e7          	jalr	-1380(ra) # 80003828 <__printf>
    80002d94:	00003517          	auipc	a0,0x3
    80002d98:	41450513          	addi	a0,a0,1044 # 800061a8 <CONSOLE_STATUS+0x198>
    80002d9c:	00001097          	auipc	ra,0x1
    80002da0:	a8c080e7          	jalr	-1396(ra) # 80003828 <__printf>
    80002da4:	00001097          	auipc	ra,0x1
    80002da8:	4a4080e7          	jalr	1188(ra) # 80004248 <kinit>
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	148080e7          	jalr	328(ra) # 80002ef4 <trapinit>
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	16c080e7          	jalr	364(ra) # 80002f20 <trapinithart>
    80002dbc:	00000097          	auipc	ra,0x0
    80002dc0:	5b4080e7          	jalr	1460(ra) # 80003370 <plicinit>
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	5d4080e7          	jalr	1492(ra) # 80003398 <plicinithart>
    80002dcc:	00000097          	auipc	ra,0x0
    80002dd0:	078080e7          	jalr	120(ra) # 80002e44 <userinit>
    80002dd4:	0ff0000f          	fence
    80002dd8:	00100793          	li	a5,1
    80002ddc:	00003517          	auipc	a0,0x3
    80002de0:	51450513          	addi	a0,a0,1300 # 800062f0 <_ZZ12printIntegermE6digits+0x28>
    80002de4:	00f4a023          	sw	a5,0(s1)
    80002de8:	00001097          	auipc	ra,0x1
    80002dec:	a40080e7          	jalr	-1472(ra) # 80003828 <__printf>
    80002df0:	0000006f          	j	80002df0 <system_main+0xd4>

0000000080002df4 <cpuid>:
    80002df4:	ff010113          	addi	sp,sp,-16
    80002df8:	00813423          	sd	s0,8(sp)
    80002dfc:	01010413          	addi	s0,sp,16
    80002e00:	00020513          	mv	a0,tp
    80002e04:	00813403          	ld	s0,8(sp)
    80002e08:	0005051b          	sext.w	a0,a0
    80002e0c:	01010113          	addi	sp,sp,16
    80002e10:	00008067          	ret

0000000080002e14 <mycpu>:
    80002e14:	ff010113          	addi	sp,sp,-16
    80002e18:	00813423          	sd	s0,8(sp)
    80002e1c:	01010413          	addi	s0,sp,16
    80002e20:	00020793          	mv	a5,tp
    80002e24:	00813403          	ld	s0,8(sp)
    80002e28:	0007879b          	sext.w	a5,a5
    80002e2c:	00779793          	slli	a5,a5,0x7
    80002e30:	00005517          	auipc	a0,0x5
    80002e34:	1a050513          	addi	a0,a0,416 # 80007fd0 <cpus>
    80002e38:	00f50533          	add	a0,a0,a5
    80002e3c:	01010113          	addi	sp,sp,16
    80002e40:	00008067          	ret

0000000080002e44 <userinit>:
    80002e44:	ff010113          	addi	sp,sp,-16
    80002e48:	00813423          	sd	s0,8(sp)
    80002e4c:	01010413          	addi	s0,sp,16
    80002e50:	00813403          	ld	s0,8(sp)
    80002e54:	01010113          	addi	sp,sp,16
    80002e58:	fffff317          	auipc	t1,0xfffff
    80002e5c:	e0430067          	jr	-508(t1) # 80001c5c <main>

0000000080002e60 <either_copyout>:
    80002e60:	ff010113          	addi	sp,sp,-16
    80002e64:	00813023          	sd	s0,0(sp)
    80002e68:	00113423          	sd	ra,8(sp)
    80002e6c:	01010413          	addi	s0,sp,16
    80002e70:	02051663          	bnez	a0,80002e9c <either_copyout+0x3c>
    80002e74:	00058513          	mv	a0,a1
    80002e78:	00060593          	mv	a1,a2
    80002e7c:	0006861b          	sext.w	a2,a3
    80002e80:	00002097          	auipc	ra,0x2
    80002e84:	c54080e7          	jalr	-940(ra) # 80004ad4 <__memmove>
    80002e88:	00813083          	ld	ra,8(sp)
    80002e8c:	00013403          	ld	s0,0(sp)
    80002e90:	00000513          	li	a0,0
    80002e94:	01010113          	addi	sp,sp,16
    80002e98:	00008067          	ret
    80002e9c:	00003517          	auipc	a0,0x3
    80002ea0:	49450513          	addi	a0,a0,1172 # 80006330 <_ZZ12printIntegermE6digits+0x68>
    80002ea4:	00001097          	auipc	ra,0x1
    80002ea8:	928080e7          	jalr	-1752(ra) # 800037cc <panic>

0000000080002eac <either_copyin>:
    80002eac:	ff010113          	addi	sp,sp,-16
    80002eb0:	00813023          	sd	s0,0(sp)
    80002eb4:	00113423          	sd	ra,8(sp)
    80002eb8:	01010413          	addi	s0,sp,16
    80002ebc:	02059463          	bnez	a1,80002ee4 <either_copyin+0x38>
    80002ec0:	00060593          	mv	a1,a2
    80002ec4:	0006861b          	sext.w	a2,a3
    80002ec8:	00002097          	auipc	ra,0x2
    80002ecc:	c0c080e7          	jalr	-1012(ra) # 80004ad4 <__memmove>
    80002ed0:	00813083          	ld	ra,8(sp)
    80002ed4:	00013403          	ld	s0,0(sp)
    80002ed8:	00000513          	li	a0,0
    80002edc:	01010113          	addi	sp,sp,16
    80002ee0:	00008067          	ret
    80002ee4:	00003517          	auipc	a0,0x3
    80002ee8:	47450513          	addi	a0,a0,1140 # 80006358 <_ZZ12printIntegermE6digits+0x90>
    80002eec:	00001097          	auipc	ra,0x1
    80002ef0:	8e0080e7          	jalr	-1824(ra) # 800037cc <panic>

0000000080002ef4 <trapinit>:
    80002ef4:	ff010113          	addi	sp,sp,-16
    80002ef8:	00813423          	sd	s0,8(sp)
    80002efc:	01010413          	addi	s0,sp,16
    80002f00:	00813403          	ld	s0,8(sp)
    80002f04:	00003597          	auipc	a1,0x3
    80002f08:	47c58593          	addi	a1,a1,1148 # 80006380 <_ZZ12printIntegermE6digits+0xb8>
    80002f0c:	00005517          	auipc	a0,0x5
    80002f10:	14450513          	addi	a0,a0,324 # 80008050 <tickslock>
    80002f14:	01010113          	addi	sp,sp,16
    80002f18:	00001317          	auipc	t1,0x1
    80002f1c:	5c030067          	jr	1472(t1) # 800044d8 <initlock>

0000000080002f20 <trapinithart>:
    80002f20:	ff010113          	addi	sp,sp,-16
    80002f24:	00813423          	sd	s0,8(sp)
    80002f28:	01010413          	addi	s0,sp,16
    80002f2c:	00000797          	auipc	a5,0x0
    80002f30:	2f478793          	addi	a5,a5,756 # 80003220 <kernelvec>
    80002f34:	10579073          	csrw	stvec,a5
    80002f38:	00813403          	ld	s0,8(sp)
    80002f3c:	01010113          	addi	sp,sp,16
    80002f40:	00008067          	ret

0000000080002f44 <usertrap>:
    80002f44:	ff010113          	addi	sp,sp,-16
    80002f48:	00813423          	sd	s0,8(sp)
    80002f4c:	01010413          	addi	s0,sp,16
    80002f50:	00813403          	ld	s0,8(sp)
    80002f54:	01010113          	addi	sp,sp,16
    80002f58:	00008067          	ret

0000000080002f5c <usertrapret>:
    80002f5c:	ff010113          	addi	sp,sp,-16
    80002f60:	00813423          	sd	s0,8(sp)
    80002f64:	01010413          	addi	s0,sp,16
    80002f68:	00813403          	ld	s0,8(sp)
    80002f6c:	01010113          	addi	sp,sp,16
    80002f70:	00008067          	ret

0000000080002f74 <kerneltrap>:
    80002f74:	fe010113          	addi	sp,sp,-32
    80002f78:	00813823          	sd	s0,16(sp)
    80002f7c:	00113c23          	sd	ra,24(sp)
    80002f80:	00913423          	sd	s1,8(sp)
    80002f84:	02010413          	addi	s0,sp,32
    80002f88:	142025f3          	csrr	a1,scause
    80002f8c:	100027f3          	csrr	a5,sstatus
    80002f90:	0027f793          	andi	a5,a5,2
    80002f94:	10079c63          	bnez	a5,800030ac <kerneltrap+0x138>
    80002f98:	142027f3          	csrr	a5,scause
    80002f9c:	0207ce63          	bltz	a5,80002fd8 <kerneltrap+0x64>
    80002fa0:	00003517          	auipc	a0,0x3
    80002fa4:	42850513          	addi	a0,a0,1064 # 800063c8 <_ZZ12printIntegermE6digits+0x100>
    80002fa8:	00001097          	auipc	ra,0x1
    80002fac:	880080e7          	jalr	-1920(ra) # 80003828 <__printf>
    80002fb0:	141025f3          	csrr	a1,sepc
    80002fb4:	14302673          	csrr	a2,stval
    80002fb8:	00003517          	auipc	a0,0x3
    80002fbc:	42050513          	addi	a0,a0,1056 # 800063d8 <_ZZ12printIntegermE6digits+0x110>
    80002fc0:	00001097          	auipc	ra,0x1
    80002fc4:	868080e7          	jalr	-1944(ra) # 80003828 <__printf>
    80002fc8:	00003517          	auipc	a0,0x3
    80002fcc:	42850513          	addi	a0,a0,1064 # 800063f0 <_ZZ12printIntegermE6digits+0x128>
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	7fc080e7          	jalr	2044(ra) # 800037cc <panic>
    80002fd8:	0ff7f713          	andi	a4,a5,255
    80002fdc:	00900693          	li	a3,9
    80002fe0:	04d70063          	beq	a4,a3,80003020 <kerneltrap+0xac>
    80002fe4:	fff00713          	li	a4,-1
    80002fe8:	03f71713          	slli	a4,a4,0x3f
    80002fec:	00170713          	addi	a4,a4,1
    80002ff0:	fae798e3          	bne	a5,a4,80002fa0 <kerneltrap+0x2c>
    80002ff4:	00000097          	auipc	ra,0x0
    80002ff8:	e00080e7          	jalr	-512(ra) # 80002df4 <cpuid>
    80002ffc:	06050663          	beqz	a0,80003068 <kerneltrap+0xf4>
    80003000:	144027f3          	csrr	a5,sip
    80003004:	ffd7f793          	andi	a5,a5,-3
    80003008:	14479073          	csrw	sip,a5
    8000300c:	01813083          	ld	ra,24(sp)
    80003010:	01013403          	ld	s0,16(sp)
    80003014:	00813483          	ld	s1,8(sp)
    80003018:	02010113          	addi	sp,sp,32
    8000301c:	00008067          	ret
    80003020:	00000097          	auipc	ra,0x0
    80003024:	3c4080e7          	jalr	964(ra) # 800033e4 <plic_claim>
    80003028:	00a00793          	li	a5,10
    8000302c:	00050493          	mv	s1,a0
    80003030:	06f50863          	beq	a0,a5,800030a0 <kerneltrap+0x12c>
    80003034:	fc050ce3          	beqz	a0,8000300c <kerneltrap+0x98>
    80003038:	00050593          	mv	a1,a0
    8000303c:	00003517          	auipc	a0,0x3
    80003040:	36c50513          	addi	a0,a0,876 # 800063a8 <_ZZ12printIntegermE6digits+0xe0>
    80003044:	00000097          	auipc	ra,0x0
    80003048:	7e4080e7          	jalr	2020(ra) # 80003828 <__printf>
    8000304c:	01013403          	ld	s0,16(sp)
    80003050:	01813083          	ld	ra,24(sp)
    80003054:	00048513          	mv	a0,s1
    80003058:	00813483          	ld	s1,8(sp)
    8000305c:	02010113          	addi	sp,sp,32
    80003060:	00000317          	auipc	t1,0x0
    80003064:	3bc30067          	jr	956(t1) # 8000341c <plic_complete>
    80003068:	00005517          	auipc	a0,0x5
    8000306c:	fe850513          	addi	a0,a0,-24 # 80008050 <tickslock>
    80003070:	00001097          	auipc	ra,0x1
    80003074:	48c080e7          	jalr	1164(ra) # 800044fc <acquire>
    80003078:	00004717          	auipc	a4,0x4
    8000307c:	ecc70713          	addi	a4,a4,-308 # 80006f44 <ticks>
    80003080:	00072783          	lw	a5,0(a4)
    80003084:	00005517          	auipc	a0,0x5
    80003088:	fcc50513          	addi	a0,a0,-52 # 80008050 <tickslock>
    8000308c:	0017879b          	addiw	a5,a5,1
    80003090:	00f72023          	sw	a5,0(a4)
    80003094:	00001097          	auipc	ra,0x1
    80003098:	534080e7          	jalr	1332(ra) # 800045c8 <release>
    8000309c:	f65ff06f          	j	80003000 <kerneltrap+0x8c>
    800030a0:	00001097          	auipc	ra,0x1
    800030a4:	090080e7          	jalr	144(ra) # 80004130 <uartintr>
    800030a8:	fa5ff06f          	j	8000304c <kerneltrap+0xd8>
    800030ac:	00003517          	auipc	a0,0x3
    800030b0:	2dc50513          	addi	a0,a0,732 # 80006388 <_ZZ12printIntegermE6digits+0xc0>
    800030b4:	00000097          	auipc	ra,0x0
    800030b8:	718080e7          	jalr	1816(ra) # 800037cc <panic>

00000000800030bc <clockintr>:
    800030bc:	fe010113          	addi	sp,sp,-32
    800030c0:	00813823          	sd	s0,16(sp)
    800030c4:	00913423          	sd	s1,8(sp)
    800030c8:	00113c23          	sd	ra,24(sp)
    800030cc:	02010413          	addi	s0,sp,32
    800030d0:	00005497          	auipc	s1,0x5
    800030d4:	f8048493          	addi	s1,s1,-128 # 80008050 <tickslock>
    800030d8:	00048513          	mv	a0,s1
    800030dc:	00001097          	auipc	ra,0x1
    800030e0:	420080e7          	jalr	1056(ra) # 800044fc <acquire>
    800030e4:	00004717          	auipc	a4,0x4
    800030e8:	e6070713          	addi	a4,a4,-416 # 80006f44 <ticks>
    800030ec:	00072783          	lw	a5,0(a4)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	01813083          	ld	ra,24(sp)
    800030f8:	00048513          	mv	a0,s1
    800030fc:	0017879b          	addiw	a5,a5,1
    80003100:	00813483          	ld	s1,8(sp)
    80003104:	00f72023          	sw	a5,0(a4)
    80003108:	02010113          	addi	sp,sp,32
    8000310c:	00001317          	auipc	t1,0x1
    80003110:	4bc30067          	jr	1212(t1) # 800045c8 <release>

0000000080003114 <devintr>:
    80003114:	142027f3          	csrr	a5,scause
    80003118:	00000513          	li	a0,0
    8000311c:	0007c463          	bltz	a5,80003124 <devintr+0x10>
    80003120:	00008067          	ret
    80003124:	fe010113          	addi	sp,sp,-32
    80003128:	00813823          	sd	s0,16(sp)
    8000312c:	00113c23          	sd	ra,24(sp)
    80003130:	00913423          	sd	s1,8(sp)
    80003134:	02010413          	addi	s0,sp,32
    80003138:	0ff7f713          	andi	a4,a5,255
    8000313c:	00900693          	li	a3,9
    80003140:	04d70c63          	beq	a4,a3,80003198 <devintr+0x84>
    80003144:	fff00713          	li	a4,-1
    80003148:	03f71713          	slli	a4,a4,0x3f
    8000314c:	00170713          	addi	a4,a4,1
    80003150:	00e78c63          	beq	a5,a4,80003168 <devintr+0x54>
    80003154:	01813083          	ld	ra,24(sp)
    80003158:	01013403          	ld	s0,16(sp)
    8000315c:	00813483          	ld	s1,8(sp)
    80003160:	02010113          	addi	sp,sp,32
    80003164:	00008067          	ret
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	c8c080e7          	jalr	-884(ra) # 80002df4 <cpuid>
    80003170:	06050663          	beqz	a0,800031dc <devintr+0xc8>
    80003174:	144027f3          	csrr	a5,sip
    80003178:	ffd7f793          	andi	a5,a5,-3
    8000317c:	14479073          	csrw	sip,a5
    80003180:	01813083          	ld	ra,24(sp)
    80003184:	01013403          	ld	s0,16(sp)
    80003188:	00813483          	ld	s1,8(sp)
    8000318c:	00200513          	li	a0,2
    80003190:	02010113          	addi	sp,sp,32
    80003194:	00008067          	ret
    80003198:	00000097          	auipc	ra,0x0
    8000319c:	24c080e7          	jalr	588(ra) # 800033e4 <plic_claim>
    800031a0:	00a00793          	li	a5,10
    800031a4:	00050493          	mv	s1,a0
    800031a8:	06f50663          	beq	a0,a5,80003214 <devintr+0x100>
    800031ac:	00100513          	li	a0,1
    800031b0:	fa0482e3          	beqz	s1,80003154 <devintr+0x40>
    800031b4:	00048593          	mv	a1,s1
    800031b8:	00003517          	auipc	a0,0x3
    800031bc:	1f050513          	addi	a0,a0,496 # 800063a8 <_ZZ12printIntegermE6digits+0xe0>
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	668080e7          	jalr	1640(ra) # 80003828 <__printf>
    800031c8:	00048513          	mv	a0,s1
    800031cc:	00000097          	auipc	ra,0x0
    800031d0:	250080e7          	jalr	592(ra) # 8000341c <plic_complete>
    800031d4:	00100513          	li	a0,1
    800031d8:	f7dff06f          	j	80003154 <devintr+0x40>
    800031dc:	00005517          	auipc	a0,0x5
    800031e0:	e7450513          	addi	a0,a0,-396 # 80008050 <tickslock>
    800031e4:	00001097          	auipc	ra,0x1
    800031e8:	318080e7          	jalr	792(ra) # 800044fc <acquire>
    800031ec:	00004717          	auipc	a4,0x4
    800031f0:	d5870713          	addi	a4,a4,-680 # 80006f44 <ticks>
    800031f4:	00072783          	lw	a5,0(a4)
    800031f8:	00005517          	auipc	a0,0x5
    800031fc:	e5850513          	addi	a0,a0,-424 # 80008050 <tickslock>
    80003200:	0017879b          	addiw	a5,a5,1
    80003204:	00f72023          	sw	a5,0(a4)
    80003208:	00001097          	auipc	ra,0x1
    8000320c:	3c0080e7          	jalr	960(ra) # 800045c8 <release>
    80003210:	f65ff06f          	j	80003174 <devintr+0x60>
    80003214:	00001097          	auipc	ra,0x1
    80003218:	f1c080e7          	jalr	-228(ra) # 80004130 <uartintr>
    8000321c:	fadff06f          	j	800031c8 <devintr+0xb4>

0000000080003220 <kernelvec>:
    80003220:	f0010113          	addi	sp,sp,-256
    80003224:	00113023          	sd	ra,0(sp)
    80003228:	00213423          	sd	sp,8(sp)
    8000322c:	00313823          	sd	gp,16(sp)
    80003230:	00413c23          	sd	tp,24(sp)
    80003234:	02513023          	sd	t0,32(sp)
    80003238:	02613423          	sd	t1,40(sp)
    8000323c:	02713823          	sd	t2,48(sp)
    80003240:	02813c23          	sd	s0,56(sp)
    80003244:	04913023          	sd	s1,64(sp)
    80003248:	04a13423          	sd	a0,72(sp)
    8000324c:	04b13823          	sd	a1,80(sp)
    80003250:	04c13c23          	sd	a2,88(sp)
    80003254:	06d13023          	sd	a3,96(sp)
    80003258:	06e13423          	sd	a4,104(sp)
    8000325c:	06f13823          	sd	a5,112(sp)
    80003260:	07013c23          	sd	a6,120(sp)
    80003264:	09113023          	sd	a7,128(sp)
    80003268:	09213423          	sd	s2,136(sp)
    8000326c:	09313823          	sd	s3,144(sp)
    80003270:	09413c23          	sd	s4,152(sp)
    80003274:	0b513023          	sd	s5,160(sp)
    80003278:	0b613423          	sd	s6,168(sp)
    8000327c:	0b713823          	sd	s7,176(sp)
    80003280:	0b813c23          	sd	s8,184(sp)
    80003284:	0d913023          	sd	s9,192(sp)
    80003288:	0da13423          	sd	s10,200(sp)
    8000328c:	0db13823          	sd	s11,208(sp)
    80003290:	0dc13c23          	sd	t3,216(sp)
    80003294:	0fd13023          	sd	t4,224(sp)
    80003298:	0fe13423          	sd	t5,232(sp)
    8000329c:	0ff13823          	sd	t6,240(sp)
    800032a0:	cd5ff0ef          	jal	ra,80002f74 <kerneltrap>
    800032a4:	00013083          	ld	ra,0(sp)
    800032a8:	00813103          	ld	sp,8(sp)
    800032ac:	01013183          	ld	gp,16(sp)
    800032b0:	02013283          	ld	t0,32(sp)
    800032b4:	02813303          	ld	t1,40(sp)
    800032b8:	03013383          	ld	t2,48(sp)
    800032bc:	03813403          	ld	s0,56(sp)
    800032c0:	04013483          	ld	s1,64(sp)
    800032c4:	04813503          	ld	a0,72(sp)
    800032c8:	05013583          	ld	a1,80(sp)
    800032cc:	05813603          	ld	a2,88(sp)
    800032d0:	06013683          	ld	a3,96(sp)
    800032d4:	06813703          	ld	a4,104(sp)
    800032d8:	07013783          	ld	a5,112(sp)
    800032dc:	07813803          	ld	a6,120(sp)
    800032e0:	08013883          	ld	a7,128(sp)
    800032e4:	08813903          	ld	s2,136(sp)
    800032e8:	09013983          	ld	s3,144(sp)
    800032ec:	09813a03          	ld	s4,152(sp)
    800032f0:	0a013a83          	ld	s5,160(sp)
    800032f4:	0a813b03          	ld	s6,168(sp)
    800032f8:	0b013b83          	ld	s7,176(sp)
    800032fc:	0b813c03          	ld	s8,184(sp)
    80003300:	0c013c83          	ld	s9,192(sp)
    80003304:	0c813d03          	ld	s10,200(sp)
    80003308:	0d013d83          	ld	s11,208(sp)
    8000330c:	0d813e03          	ld	t3,216(sp)
    80003310:	0e013e83          	ld	t4,224(sp)
    80003314:	0e813f03          	ld	t5,232(sp)
    80003318:	0f013f83          	ld	t6,240(sp)
    8000331c:	10010113          	addi	sp,sp,256
    80003320:	10200073          	sret
    80003324:	00000013          	nop
    80003328:	00000013          	nop
    8000332c:	00000013          	nop

0000000080003330 <timervec>:
    80003330:	34051573          	csrrw	a0,mscratch,a0
    80003334:	00b53023          	sd	a1,0(a0)
    80003338:	00c53423          	sd	a2,8(a0)
    8000333c:	00d53823          	sd	a3,16(a0)
    80003340:	01853583          	ld	a1,24(a0)
    80003344:	02053603          	ld	a2,32(a0)
    80003348:	0005b683          	ld	a3,0(a1)
    8000334c:	00c686b3          	add	a3,a3,a2
    80003350:	00d5b023          	sd	a3,0(a1)
    80003354:	00200593          	li	a1,2
    80003358:	14459073          	csrw	sip,a1
    8000335c:	01053683          	ld	a3,16(a0)
    80003360:	00853603          	ld	a2,8(a0)
    80003364:	00053583          	ld	a1,0(a0)
    80003368:	34051573          	csrrw	a0,mscratch,a0
    8000336c:	30200073          	mret

0000000080003370 <plicinit>:
    80003370:	ff010113          	addi	sp,sp,-16
    80003374:	00813423          	sd	s0,8(sp)
    80003378:	01010413          	addi	s0,sp,16
    8000337c:	00813403          	ld	s0,8(sp)
    80003380:	0c0007b7          	lui	a5,0xc000
    80003384:	00100713          	li	a4,1
    80003388:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000338c:	00e7a223          	sw	a4,4(a5)
    80003390:	01010113          	addi	sp,sp,16
    80003394:	00008067          	ret

0000000080003398 <plicinithart>:
    80003398:	ff010113          	addi	sp,sp,-16
    8000339c:	00813023          	sd	s0,0(sp)
    800033a0:	00113423          	sd	ra,8(sp)
    800033a4:	01010413          	addi	s0,sp,16
    800033a8:	00000097          	auipc	ra,0x0
    800033ac:	a4c080e7          	jalr	-1460(ra) # 80002df4 <cpuid>
    800033b0:	0085171b          	slliw	a4,a0,0x8
    800033b4:	0c0027b7          	lui	a5,0xc002
    800033b8:	00e787b3          	add	a5,a5,a4
    800033bc:	40200713          	li	a4,1026
    800033c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800033c4:	00813083          	ld	ra,8(sp)
    800033c8:	00013403          	ld	s0,0(sp)
    800033cc:	00d5151b          	slliw	a0,a0,0xd
    800033d0:	0c2017b7          	lui	a5,0xc201
    800033d4:	00a78533          	add	a0,a5,a0
    800033d8:	00052023          	sw	zero,0(a0)
    800033dc:	01010113          	addi	sp,sp,16
    800033e0:	00008067          	ret

00000000800033e4 <plic_claim>:
    800033e4:	ff010113          	addi	sp,sp,-16
    800033e8:	00813023          	sd	s0,0(sp)
    800033ec:	00113423          	sd	ra,8(sp)
    800033f0:	01010413          	addi	s0,sp,16
    800033f4:	00000097          	auipc	ra,0x0
    800033f8:	a00080e7          	jalr	-1536(ra) # 80002df4 <cpuid>
    800033fc:	00813083          	ld	ra,8(sp)
    80003400:	00013403          	ld	s0,0(sp)
    80003404:	00d5151b          	slliw	a0,a0,0xd
    80003408:	0c2017b7          	lui	a5,0xc201
    8000340c:	00a78533          	add	a0,a5,a0
    80003410:	00452503          	lw	a0,4(a0)
    80003414:	01010113          	addi	sp,sp,16
    80003418:	00008067          	ret

000000008000341c <plic_complete>:
    8000341c:	fe010113          	addi	sp,sp,-32
    80003420:	00813823          	sd	s0,16(sp)
    80003424:	00913423          	sd	s1,8(sp)
    80003428:	00113c23          	sd	ra,24(sp)
    8000342c:	02010413          	addi	s0,sp,32
    80003430:	00050493          	mv	s1,a0
    80003434:	00000097          	auipc	ra,0x0
    80003438:	9c0080e7          	jalr	-1600(ra) # 80002df4 <cpuid>
    8000343c:	01813083          	ld	ra,24(sp)
    80003440:	01013403          	ld	s0,16(sp)
    80003444:	00d5179b          	slliw	a5,a0,0xd
    80003448:	0c201737          	lui	a4,0xc201
    8000344c:	00f707b3          	add	a5,a4,a5
    80003450:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003454:	00813483          	ld	s1,8(sp)
    80003458:	02010113          	addi	sp,sp,32
    8000345c:	00008067          	ret

0000000080003460 <consolewrite>:
    80003460:	fb010113          	addi	sp,sp,-80
    80003464:	04813023          	sd	s0,64(sp)
    80003468:	04113423          	sd	ra,72(sp)
    8000346c:	02913c23          	sd	s1,56(sp)
    80003470:	03213823          	sd	s2,48(sp)
    80003474:	03313423          	sd	s3,40(sp)
    80003478:	03413023          	sd	s4,32(sp)
    8000347c:	01513c23          	sd	s5,24(sp)
    80003480:	05010413          	addi	s0,sp,80
    80003484:	06c05c63          	blez	a2,800034fc <consolewrite+0x9c>
    80003488:	00060993          	mv	s3,a2
    8000348c:	00050a13          	mv	s4,a0
    80003490:	00058493          	mv	s1,a1
    80003494:	00000913          	li	s2,0
    80003498:	fff00a93          	li	s5,-1
    8000349c:	01c0006f          	j	800034b8 <consolewrite+0x58>
    800034a0:	fbf44503          	lbu	a0,-65(s0)
    800034a4:	0019091b          	addiw	s2,s2,1
    800034a8:	00148493          	addi	s1,s1,1
    800034ac:	00001097          	auipc	ra,0x1
    800034b0:	a9c080e7          	jalr	-1380(ra) # 80003f48 <uartputc>
    800034b4:	03298063          	beq	s3,s2,800034d4 <consolewrite+0x74>
    800034b8:	00048613          	mv	a2,s1
    800034bc:	00100693          	li	a3,1
    800034c0:	000a0593          	mv	a1,s4
    800034c4:	fbf40513          	addi	a0,s0,-65
    800034c8:	00000097          	auipc	ra,0x0
    800034cc:	9e4080e7          	jalr	-1564(ra) # 80002eac <either_copyin>
    800034d0:	fd5518e3          	bne	a0,s5,800034a0 <consolewrite+0x40>
    800034d4:	04813083          	ld	ra,72(sp)
    800034d8:	04013403          	ld	s0,64(sp)
    800034dc:	03813483          	ld	s1,56(sp)
    800034e0:	02813983          	ld	s3,40(sp)
    800034e4:	02013a03          	ld	s4,32(sp)
    800034e8:	01813a83          	ld	s5,24(sp)
    800034ec:	00090513          	mv	a0,s2
    800034f0:	03013903          	ld	s2,48(sp)
    800034f4:	05010113          	addi	sp,sp,80
    800034f8:	00008067          	ret
    800034fc:	00000913          	li	s2,0
    80003500:	fd5ff06f          	j	800034d4 <consolewrite+0x74>

0000000080003504 <consoleread>:
    80003504:	f9010113          	addi	sp,sp,-112
    80003508:	06813023          	sd	s0,96(sp)
    8000350c:	04913c23          	sd	s1,88(sp)
    80003510:	05213823          	sd	s2,80(sp)
    80003514:	05313423          	sd	s3,72(sp)
    80003518:	05413023          	sd	s4,64(sp)
    8000351c:	03513c23          	sd	s5,56(sp)
    80003520:	03613823          	sd	s6,48(sp)
    80003524:	03713423          	sd	s7,40(sp)
    80003528:	03813023          	sd	s8,32(sp)
    8000352c:	06113423          	sd	ra,104(sp)
    80003530:	01913c23          	sd	s9,24(sp)
    80003534:	07010413          	addi	s0,sp,112
    80003538:	00060b93          	mv	s7,a2
    8000353c:	00050913          	mv	s2,a0
    80003540:	00058c13          	mv	s8,a1
    80003544:	00060b1b          	sext.w	s6,a2
    80003548:	00005497          	auipc	s1,0x5
    8000354c:	b3048493          	addi	s1,s1,-1232 # 80008078 <cons>
    80003550:	00400993          	li	s3,4
    80003554:	fff00a13          	li	s4,-1
    80003558:	00a00a93          	li	s5,10
    8000355c:	05705e63          	blez	s7,800035b8 <consoleread+0xb4>
    80003560:	09c4a703          	lw	a4,156(s1)
    80003564:	0984a783          	lw	a5,152(s1)
    80003568:	0007071b          	sext.w	a4,a4
    8000356c:	08e78463          	beq	a5,a4,800035f4 <consoleread+0xf0>
    80003570:	07f7f713          	andi	a4,a5,127
    80003574:	00e48733          	add	a4,s1,a4
    80003578:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000357c:	0017869b          	addiw	a3,a5,1
    80003580:	08d4ac23          	sw	a3,152(s1)
    80003584:	00070c9b          	sext.w	s9,a4
    80003588:	0b370663          	beq	a4,s3,80003634 <consoleread+0x130>
    8000358c:	00100693          	li	a3,1
    80003590:	f9f40613          	addi	a2,s0,-97
    80003594:	000c0593          	mv	a1,s8
    80003598:	00090513          	mv	a0,s2
    8000359c:	f8e40fa3          	sb	a4,-97(s0)
    800035a0:	00000097          	auipc	ra,0x0
    800035a4:	8c0080e7          	jalr	-1856(ra) # 80002e60 <either_copyout>
    800035a8:	01450863          	beq	a0,s4,800035b8 <consoleread+0xb4>
    800035ac:	001c0c13          	addi	s8,s8,1
    800035b0:	fffb8b9b          	addiw	s7,s7,-1
    800035b4:	fb5c94e3          	bne	s9,s5,8000355c <consoleread+0x58>
    800035b8:	000b851b          	sext.w	a0,s7
    800035bc:	06813083          	ld	ra,104(sp)
    800035c0:	06013403          	ld	s0,96(sp)
    800035c4:	05813483          	ld	s1,88(sp)
    800035c8:	05013903          	ld	s2,80(sp)
    800035cc:	04813983          	ld	s3,72(sp)
    800035d0:	04013a03          	ld	s4,64(sp)
    800035d4:	03813a83          	ld	s5,56(sp)
    800035d8:	02813b83          	ld	s7,40(sp)
    800035dc:	02013c03          	ld	s8,32(sp)
    800035e0:	01813c83          	ld	s9,24(sp)
    800035e4:	40ab053b          	subw	a0,s6,a0
    800035e8:	03013b03          	ld	s6,48(sp)
    800035ec:	07010113          	addi	sp,sp,112
    800035f0:	00008067          	ret
    800035f4:	00001097          	auipc	ra,0x1
    800035f8:	1d8080e7          	jalr	472(ra) # 800047cc <push_on>
    800035fc:	0984a703          	lw	a4,152(s1)
    80003600:	09c4a783          	lw	a5,156(s1)
    80003604:	0007879b          	sext.w	a5,a5
    80003608:	fef70ce3          	beq	a4,a5,80003600 <consoleread+0xfc>
    8000360c:	00001097          	auipc	ra,0x1
    80003610:	234080e7          	jalr	564(ra) # 80004840 <pop_on>
    80003614:	0984a783          	lw	a5,152(s1)
    80003618:	07f7f713          	andi	a4,a5,127
    8000361c:	00e48733          	add	a4,s1,a4
    80003620:	01874703          	lbu	a4,24(a4)
    80003624:	0017869b          	addiw	a3,a5,1
    80003628:	08d4ac23          	sw	a3,152(s1)
    8000362c:	00070c9b          	sext.w	s9,a4
    80003630:	f5371ee3          	bne	a4,s3,8000358c <consoleread+0x88>
    80003634:	000b851b          	sext.w	a0,s7
    80003638:	f96bf2e3          	bgeu	s7,s6,800035bc <consoleread+0xb8>
    8000363c:	08f4ac23          	sw	a5,152(s1)
    80003640:	f7dff06f          	j	800035bc <consoleread+0xb8>

0000000080003644 <consputc>:
    80003644:	10000793          	li	a5,256
    80003648:	00f50663          	beq	a0,a5,80003654 <consputc+0x10>
    8000364c:	00001317          	auipc	t1,0x1
    80003650:	9f430067          	jr	-1548(t1) # 80004040 <uartputc_sync>
    80003654:	ff010113          	addi	sp,sp,-16
    80003658:	00113423          	sd	ra,8(sp)
    8000365c:	00813023          	sd	s0,0(sp)
    80003660:	01010413          	addi	s0,sp,16
    80003664:	00800513          	li	a0,8
    80003668:	00001097          	auipc	ra,0x1
    8000366c:	9d8080e7          	jalr	-1576(ra) # 80004040 <uartputc_sync>
    80003670:	02000513          	li	a0,32
    80003674:	00001097          	auipc	ra,0x1
    80003678:	9cc080e7          	jalr	-1588(ra) # 80004040 <uartputc_sync>
    8000367c:	00013403          	ld	s0,0(sp)
    80003680:	00813083          	ld	ra,8(sp)
    80003684:	00800513          	li	a0,8
    80003688:	01010113          	addi	sp,sp,16
    8000368c:	00001317          	auipc	t1,0x1
    80003690:	9b430067          	jr	-1612(t1) # 80004040 <uartputc_sync>

0000000080003694 <consoleintr>:
    80003694:	fe010113          	addi	sp,sp,-32
    80003698:	00813823          	sd	s0,16(sp)
    8000369c:	00913423          	sd	s1,8(sp)
    800036a0:	01213023          	sd	s2,0(sp)
    800036a4:	00113c23          	sd	ra,24(sp)
    800036a8:	02010413          	addi	s0,sp,32
    800036ac:	00005917          	auipc	s2,0x5
    800036b0:	9cc90913          	addi	s2,s2,-1588 # 80008078 <cons>
    800036b4:	00050493          	mv	s1,a0
    800036b8:	00090513          	mv	a0,s2
    800036bc:	00001097          	auipc	ra,0x1
    800036c0:	e40080e7          	jalr	-448(ra) # 800044fc <acquire>
    800036c4:	02048c63          	beqz	s1,800036fc <consoleintr+0x68>
    800036c8:	0a092783          	lw	a5,160(s2)
    800036cc:	09892703          	lw	a4,152(s2)
    800036d0:	07f00693          	li	a3,127
    800036d4:	40e7873b          	subw	a4,a5,a4
    800036d8:	02e6e263          	bltu	a3,a4,800036fc <consoleintr+0x68>
    800036dc:	00d00713          	li	a4,13
    800036e0:	04e48063          	beq	s1,a4,80003720 <consoleintr+0x8c>
    800036e4:	07f7f713          	andi	a4,a5,127
    800036e8:	00e90733          	add	a4,s2,a4
    800036ec:	0017879b          	addiw	a5,a5,1
    800036f0:	0af92023          	sw	a5,160(s2)
    800036f4:	00970c23          	sb	s1,24(a4)
    800036f8:	08f92e23          	sw	a5,156(s2)
    800036fc:	01013403          	ld	s0,16(sp)
    80003700:	01813083          	ld	ra,24(sp)
    80003704:	00813483          	ld	s1,8(sp)
    80003708:	00013903          	ld	s2,0(sp)
    8000370c:	00005517          	auipc	a0,0x5
    80003710:	96c50513          	addi	a0,a0,-1684 # 80008078 <cons>
    80003714:	02010113          	addi	sp,sp,32
    80003718:	00001317          	auipc	t1,0x1
    8000371c:	eb030067          	jr	-336(t1) # 800045c8 <release>
    80003720:	00a00493          	li	s1,10
    80003724:	fc1ff06f          	j	800036e4 <consoleintr+0x50>

0000000080003728 <consoleinit>:
    80003728:	fe010113          	addi	sp,sp,-32
    8000372c:	00113c23          	sd	ra,24(sp)
    80003730:	00813823          	sd	s0,16(sp)
    80003734:	00913423          	sd	s1,8(sp)
    80003738:	02010413          	addi	s0,sp,32
    8000373c:	00005497          	auipc	s1,0x5
    80003740:	93c48493          	addi	s1,s1,-1732 # 80008078 <cons>
    80003744:	00048513          	mv	a0,s1
    80003748:	00003597          	auipc	a1,0x3
    8000374c:	cb858593          	addi	a1,a1,-840 # 80006400 <_ZZ12printIntegermE6digits+0x138>
    80003750:	00001097          	auipc	ra,0x1
    80003754:	d88080e7          	jalr	-632(ra) # 800044d8 <initlock>
    80003758:	00000097          	auipc	ra,0x0
    8000375c:	7ac080e7          	jalr	1964(ra) # 80003f04 <uartinit>
    80003760:	01813083          	ld	ra,24(sp)
    80003764:	01013403          	ld	s0,16(sp)
    80003768:	00000797          	auipc	a5,0x0
    8000376c:	d9c78793          	addi	a5,a5,-612 # 80003504 <consoleread>
    80003770:	0af4bc23          	sd	a5,184(s1)
    80003774:	00000797          	auipc	a5,0x0
    80003778:	cec78793          	addi	a5,a5,-788 # 80003460 <consolewrite>
    8000377c:	0cf4b023          	sd	a5,192(s1)
    80003780:	00813483          	ld	s1,8(sp)
    80003784:	02010113          	addi	sp,sp,32
    80003788:	00008067          	ret

000000008000378c <console_read>:
    8000378c:	ff010113          	addi	sp,sp,-16
    80003790:	00813423          	sd	s0,8(sp)
    80003794:	01010413          	addi	s0,sp,16
    80003798:	00813403          	ld	s0,8(sp)
    8000379c:	00005317          	auipc	t1,0x5
    800037a0:	99433303          	ld	t1,-1644(t1) # 80008130 <devsw+0x10>
    800037a4:	01010113          	addi	sp,sp,16
    800037a8:	00030067          	jr	t1

00000000800037ac <console_write>:
    800037ac:	ff010113          	addi	sp,sp,-16
    800037b0:	00813423          	sd	s0,8(sp)
    800037b4:	01010413          	addi	s0,sp,16
    800037b8:	00813403          	ld	s0,8(sp)
    800037bc:	00005317          	auipc	t1,0x5
    800037c0:	97c33303          	ld	t1,-1668(t1) # 80008138 <devsw+0x18>
    800037c4:	01010113          	addi	sp,sp,16
    800037c8:	00030067          	jr	t1

00000000800037cc <panic>:
    800037cc:	fe010113          	addi	sp,sp,-32
    800037d0:	00113c23          	sd	ra,24(sp)
    800037d4:	00813823          	sd	s0,16(sp)
    800037d8:	00913423          	sd	s1,8(sp)
    800037dc:	02010413          	addi	s0,sp,32
    800037e0:	00050493          	mv	s1,a0
    800037e4:	00003517          	auipc	a0,0x3
    800037e8:	c2450513          	addi	a0,a0,-988 # 80006408 <_ZZ12printIntegermE6digits+0x140>
    800037ec:	00005797          	auipc	a5,0x5
    800037f0:	9e07a623          	sw	zero,-1556(a5) # 800081d8 <pr+0x18>
    800037f4:	00000097          	auipc	ra,0x0
    800037f8:	034080e7          	jalr	52(ra) # 80003828 <__printf>
    800037fc:	00048513          	mv	a0,s1
    80003800:	00000097          	auipc	ra,0x0
    80003804:	028080e7          	jalr	40(ra) # 80003828 <__printf>
    80003808:	00003517          	auipc	a0,0x3
    8000380c:	9a050513          	addi	a0,a0,-1632 # 800061a8 <CONSOLE_STATUS+0x198>
    80003810:	00000097          	auipc	ra,0x0
    80003814:	018080e7          	jalr	24(ra) # 80003828 <__printf>
    80003818:	00100793          	li	a5,1
    8000381c:	00003717          	auipc	a4,0x3
    80003820:	72f72623          	sw	a5,1836(a4) # 80006f48 <panicked>
    80003824:	0000006f          	j	80003824 <panic+0x58>

0000000080003828 <__printf>:
    80003828:	f3010113          	addi	sp,sp,-208
    8000382c:	08813023          	sd	s0,128(sp)
    80003830:	07313423          	sd	s3,104(sp)
    80003834:	09010413          	addi	s0,sp,144
    80003838:	05813023          	sd	s8,64(sp)
    8000383c:	08113423          	sd	ra,136(sp)
    80003840:	06913c23          	sd	s1,120(sp)
    80003844:	07213823          	sd	s2,112(sp)
    80003848:	07413023          	sd	s4,96(sp)
    8000384c:	05513c23          	sd	s5,88(sp)
    80003850:	05613823          	sd	s6,80(sp)
    80003854:	05713423          	sd	s7,72(sp)
    80003858:	03913c23          	sd	s9,56(sp)
    8000385c:	03a13823          	sd	s10,48(sp)
    80003860:	03b13423          	sd	s11,40(sp)
    80003864:	00005317          	auipc	t1,0x5
    80003868:	95c30313          	addi	t1,t1,-1700 # 800081c0 <pr>
    8000386c:	01832c03          	lw	s8,24(t1)
    80003870:	00b43423          	sd	a1,8(s0)
    80003874:	00c43823          	sd	a2,16(s0)
    80003878:	00d43c23          	sd	a3,24(s0)
    8000387c:	02e43023          	sd	a4,32(s0)
    80003880:	02f43423          	sd	a5,40(s0)
    80003884:	03043823          	sd	a6,48(s0)
    80003888:	03143c23          	sd	a7,56(s0)
    8000388c:	00050993          	mv	s3,a0
    80003890:	4a0c1663          	bnez	s8,80003d3c <__printf+0x514>
    80003894:	60098c63          	beqz	s3,80003eac <__printf+0x684>
    80003898:	0009c503          	lbu	a0,0(s3)
    8000389c:	00840793          	addi	a5,s0,8
    800038a0:	f6f43c23          	sd	a5,-136(s0)
    800038a4:	00000493          	li	s1,0
    800038a8:	22050063          	beqz	a0,80003ac8 <__printf+0x2a0>
    800038ac:	00002a37          	lui	s4,0x2
    800038b0:	00018ab7          	lui	s5,0x18
    800038b4:	000f4b37          	lui	s6,0xf4
    800038b8:	00989bb7          	lui	s7,0x989
    800038bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800038c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800038c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800038c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800038cc:	00148c9b          	addiw	s9,s1,1
    800038d0:	02500793          	li	a5,37
    800038d4:	01998933          	add	s2,s3,s9
    800038d8:	38f51263          	bne	a0,a5,80003c5c <__printf+0x434>
    800038dc:	00094783          	lbu	a5,0(s2)
    800038e0:	00078c9b          	sext.w	s9,a5
    800038e4:	1e078263          	beqz	a5,80003ac8 <__printf+0x2a0>
    800038e8:	0024849b          	addiw	s1,s1,2
    800038ec:	07000713          	li	a4,112
    800038f0:	00998933          	add	s2,s3,s1
    800038f4:	38e78a63          	beq	a5,a4,80003c88 <__printf+0x460>
    800038f8:	20f76863          	bltu	a4,a5,80003b08 <__printf+0x2e0>
    800038fc:	42a78863          	beq	a5,a0,80003d2c <__printf+0x504>
    80003900:	06400713          	li	a4,100
    80003904:	40e79663          	bne	a5,a4,80003d10 <__printf+0x4e8>
    80003908:	f7843783          	ld	a5,-136(s0)
    8000390c:	0007a603          	lw	a2,0(a5)
    80003910:	00878793          	addi	a5,a5,8
    80003914:	f6f43c23          	sd	a5,-136(s0)
    80003918:	42064a63          	bltz	a2,80003d4c <__printf+0x524>
    8000391c:	00a00713          	li	a4,10
    80003920:	02e677bb          	remuw	a5,a2,a4
    80003924:	00003d97          	auipc	s11,0x3
    80003928:	b0cd8d93          	addi	s11,s11,-1268 # 80006430 <digits>
    8000392c:	00900593          	li	a1,9
    80003930:	0006051b          	sext.w	a0,a2
    80003934:	00000c93          	li	s9,0
    80003938:	02079793          	slli	a5,a5,0x20
    8000393c:	0207d793          	srli	a5,a5,0x20
    80003940:	00fd87b3          	add	a5,s11,a5
    80003944:	0007c783          	lbu	a5,0(a5)
    80003948:	02e656bb          	divuw	a3,a2,a4
    8000394c:	f8f40023          	sb	a5,-128(s0)
    80003950:	14c5d863          	bge	a1,a2,80003aa0 <__printf+0x278>
    80003954:	06300593          	li	a1,99
    80003958:	00100c93          	li	s9,1
    8000395c:	02e6f7bb          	remuw	a5,a3,a4
    80003960:	02079793          	slli	a5,a5,0x20
    80003964:	0207d793          	srli	a5,a5,0x20
    80003968:	00fd87b3          	add	a5,s11,a5
    8000396c:	0007c783          	lbu	a5,0(a5)
    80003970:	02e6d73b          	divuw	a4,a3,a4
    80003974:	f8f400a3          	sb	a5,-127(s0)
    80003978:	12a5f463          	bgeu	a1,a0,80003aa0 <__printf+0x278>
    8000397c:	00a00693          	li	a3,10
    80003980:	00900593          	li	a1,9
    80003984:	02d777bb          	remuw	a5,a4,a3
    80003988:	02079793          	slli	a5,a5,0x20
    8000398c:	0207d793          	srli	a5,a5,0x20
    80003990:	00fd87b3          	add	a5,s11,a5
    80003994:	0007c503          	lbu	a0,0(a5)
    80003998:	02d757bb          	divuw	a5,a4,a3
    8000399c:	f8a40123          	sb	a0,-126(s0)
    800039a0:	48e5f263          	bgeu	a1,a4,80003e24 <__printf+0x5fc>
    800039a4:	06300513          	li	a0,99
    800039a8:	02d7f5bb          	remuw	a1,a5,a3
    800039ac:	02059593          	slli	a1,a1,0x20
    800039b0:	0205d593          	srli	a1,a1,0x20
    800039b4:	00bd85b3          	add	a1,s11,a1
    800039b8:	0005c583          	lbu	a1,0(a1)
    800039bc:	02d7d7bb          	divuw	a5,a5,a3
    800039c0:	f8b401a3          	sb	a1,-125(s0)
    800039c4:	48e57263          	bgeu	a0,a4,80003e48 <__printf+0x620>
    800039c8:	3e700513          	li	a0,999
    800039cc:	02d7f5bb          	remuw	a1,a5,a3
    800039d0:	02059593          	slli	a1,a1,0x20
    800039d4:	0205d593          	srli	a1,a1,0x20
    800039d8:	00bd85b3          	add	a1,s11,a1
    800039dc:	0005c583          	lbu	a1,0(a1)
    800039e0:	02d7d7bb          	divuw	a5,a5,a3
    800039e4:	f8b40223          	sb	a1,-124(s0)
    800039e8:	46e57663          	bgeu	a0,a4,80003e54 <__printf+0x62c>
    800039ec:	02d7f5bb          	remuw	a1,a5,a3
    800039f0:	02059593          	slli	a1,a1,0x20
    800039f4:	0205d593          	srli	a1,a1,0x20
    800039f8:	00bd85b3          	add	a1,s11,a1
    800039fc:	0005c583          	lbu	a1,0(a1)
    80003a00:	02d7d7bb          	divuw	a5,a5,a3
    80003a04:	f8b402a3          	sb	a1,-123(s0)
    80003a08:	46ea7863          	bgeu	s4,a4,80003e78 <__printf+0x650>
    80003a0c:	02d7f5bb          	remuw	a1,a5,a3
    80003a10:	02059593          	slli	a1,a1,0x20
    80003a14:	0205d593          	srli	a1,a1,0x20
    80003a18:	00bd85b3          	add	a1,s11,a1
    80003a1c:	0005c583          	lbu	a1,0(a1)
    80003a20:	02d7d7bb          	divuw	a5,a5,a3
    80003a24:	f8b40323          	sb	a1,-122(s0)
    80003a28:	3eeaf863          	bgeu	s5,a4,80003e18 <__printf+0x5f0>
    80003a2c:	02d7f5bb          	remuw	a1,a5,a3
    80003a30:	02059593          	slli	a1,a1,0x20
    80003a34:	0205d593          	srli	a1,a1,0x20
    80003a38:	00bd85b3          	add	a1,s11,a1
    80003a3c:	0005c583          	lbu	a1,0(a1)
    80003a40:	02d7d7bb          	divuw	a5,a5,a3
    80003a44:	f8b403a3          	sb	a1,-121(s0)
    80003a48:	42eb7e63          	bgeu	s6,a4,80003e84 <__printf+0x65c>
    80003a4c:	02d7f5bb          	remuw	a1,a5,a3
    80003a50:	02059593          	slli	a1,a1,0x20
    80003a54:	0205d593          	srli	a1,a1,0x20
    80003a58:	00bd85b3          	add	a1,s11,a1
    80003a5c:	0005c583          	lbu	a1,0(a1)
    80003a60:	02d7d7bb          	divuw	a5,a5,a3
    80003a64:	f8b40423          	sb	a1,-120(s0)
    80003a68:	42ebfc63          	bgeu	s7,a4,80003ea0 <__printf+0x678>
    80003a6c:	02079793          	slli	a5,a5,0x20
    80003a70:	0207d793          	srli	a5,a5,0x20
    80003a74:	00fd8db3          	add	s11,s11,a5
    80003a78:	000dc703          	lbu	a4,0(s11)
    80003a7c:	00a00793          	li	a5,10
    80003a80:	00900c93          	li	s9,9
    80003a84:	f8e404a3          	sb	a4,-119(s0)
    80003a88:	00065c63          	bgez	a2,80003aa0 <__printf+0x278>
    80003a8c:	f9040713          	addi	a4,s0,-112
    80003a90:	00f70733          	add	a4,a4,a5
    80003a94:	02d00693          	li	a3,45
    80003a98:	fed70823          	sb	a3,-16(a4)
    80003a9c:	00078c93          	mv	s9,a5
    80003aa0:	f8040793          	addi	a5,s0,-128
    80003aa4:	01978cb3          	add	s9,a5,s9
    80003aa8:	f7f40d13          	addi	s10,s0,-129
    80003aac:	000cc503          	lbu	a0,0(s9)
    80003ab0:	fffc8c93          	addi	s9,s9,-1
    80003ab4:	00000097          	auipc	ra,0x0
    80003ab8:	b90080e7          	jalr	-1136(ra) # 80003644 <consputc>
    80003abc:	ffac98e3          	bne	s9,s10,80003aac <__printf+0x284>
    80003ac0:	00094503          	lbu	a0,0(s2)
    80003ac4:	e00514e3          	bnez	a0,800038cc <__printf+0xa4>
    80003ac8:	1a0c1663          	bnez	s8,80003c74 <__printf+0x44c>
    80003acc:	08813083          	ld	ra,136(sp)
    80003ad0:	08013403          	ld	s0,128(sp)
    80003ad4:	07813483          	ld	s1,120(sp)
    80003ad8:	07013903          	ld	s2,112(sp)
    80003adc:	06813983          	ld	s3,104(sp)
    80003ae0:	06013a03          	ld	s4,96(sp)
    80003ae4:	05813a83          	ld	s5,88(sp)
    80003ae8:	05013b03          	ld	s6,80(sp)
    80003aec:	04813b83          	ld	s7,72(sp)
    80003af0:	04013c03          	ld	s8,64(sp)
    80003af4:	03813c83          	ld	s9,56(sp)
    80003af8:	03013d03          	ld	s10,48(sp)
    80003afc:	02813d83          	ld	s11,40(sp)
    80003b00:	0d010113          	addi	sp,sp,208
    80003b04:	00008067          	ret
    80003b08:	07300713          	li	a4,115
    80003b0c:	1ce78a63          	beq	a5,a4,80003ce0 <__printf+0x4b8>
    80003b10:	07800713          	li	a4,120
    80003b14:	1ee79e63          	bne	a5,a4,80003d10 <__printf+0x4e8>
    80003b18:	f7843783          	ld	a5,-136(s0)
    80003b1c:	0007a703          	lw	a4,0(a5)
    80003b20:	00878793          	addi	a5,a5,8
    80003b24:	f6f43c23          	sd	a5,-136(s0)
    80003b28:	28074263          	bltz	a4,80003dac <__printf+0x584>
    80003b2c:	00003d97          	auipc	s11,0x3
    80003b30:	904d8d93          	addi	s11,s11,-1788 # 80006430 <digits>
    80003b34:	00f77793          	andi	a5,a4,15
    80003b38:	00fd87b3          	add	a5,s11,a5
    80003b3c:	0007c683          	lbu	a3,0(a5)
    80003b40:	00f00613          	li	a2,15
    80003b44:	0007079b          	sext.w	a5,a4
    80003b48:	f8d40023          	sb	a3,-128(s0)
    80003b4c:	0047559b          	srliw	a1,a4,0x4
    80003b50:	0047569b          	srliw	a3,a4,0x4
    80003b54:	00000c93          	li	s9,0
    80003b58:	0ee65063          	bge	a2,a4,80003c38 <__printf+0x410>
    80003b5c:	00f6f693          	andi	a3,a3,15
    80003b60:	00dd86b3          	add	a3,s11,a3
    80003b64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003b68:	0087d79b          	srliw	a5,a5,0x8
    80003b6c:	00100c93          	li	s9,1
    80003b70:	f8d400a3          	sb	a3,-127(s0)
    80003b74:	0cb67263          	bgeu	a2,a1,80003c38 <__printf+0x410>
    80003b78:	00f7f693          	andi	a3,a5,15
    80003b7c:	00dd86b3          	add	a3,s11,a3
    80003b80:	0006c583          	lbu	a1,0(a3)
    80003b84:	00f00613          	li	a2,15
    80003b88:	0047d69b          	srliw	a3,a5,0x4
    80003b8c:	f8b40123          	sb	a1,-126(s0)
    80003b90:	0047d593          	srli	a1,a5,0x4
    80003b94:	28f67e63          	bgeu	a2,a5,80003e30 <__printf+0x608>
    80003b98:	00f6f693          	andi	a3,a3,15
    80003b9c:	00dd86b3          	add	a3,s11,a3
    80003ba0:	0006c503          	lbu	a0,0(a3)
    80003ba4:	0087d813          	srli	a6,a5,0x8
    80003ba8:	0087d69b          	srliw	a3,a5,0x8
    80003bac:	f8a401a3          	sb	a0,-125(s0)
    80003bb0:	28b67663          	bgeu	a2,a1,80003e3c <__printf+0x614>
    80003bb4:	00f6f693          	andi	a3,a3,15
    80003bb8:	00dd86b3          	add	a3,s11,a3
    80003bbc:	0006c583          	lbu	a1,0(a3)
    80003bc0:	00c7d513          	srli	a0,a5,0xc
    80003bc4:	00c7d69b          	srliw	a3,a5,0xc
    80003bc8:	f8b40223          	sb	a1,-124(s0)
    80003bcc:	29067a63          	bgeu	a2,a6,80003e60 <__printf+0x638>
    80003bd0:	00f6f693          	andi	a3,a3,15
    80003bd4:	00dd86b3          	add	a3,s11,a3
    80003bd8:	0006c583          	lbu	a1,0(a3)
    80003bdc:	0107d813          	srli	a6,a5,0x10
    80003be0:	0107d69b          	srliw	a3,a5,0x10
    80003be4:	f8b402a3          	sb	a1,-123(s0)
    80003be8:	28a67263          	bgeu	a2,a0,80003e6c <__printf+0x644>
    80003bec:	00f6f693          	andi	a3,a3,15
    80003bf0:	00dd86b3          	add	a3,s11,a3
    80003bf4:	0006c683          	lbu	a3,0(a3)
    80003bf8:	0147d79b          	srliw	a5,a5,0x14
    80003bfc:	f8d40323          	sb	a3,-122(s0)
    80003c00:	21067663          	bgeu	a2,a6,80003e0c <__printf+0x5e4>
    80003c04:	02079793          	slli	a5,a5,0x20
    80003c08:	0207d793          	srli	a5,a5,0x20
    80003c0c:	00fd8db3          	add	s11,s11,a5
    80003c10:	000dc683          	lbu	a3,0(s11)
    80003c14:	00800793          	li	a5,8
    80003c18:	00700c93          	li	s9,7
    80003c1c:	f8d403a3          	sb	a3,-121(s0)
    80003c20:	00075c63          	bgez	a4,80003c38 <__printf+0x410>
    80003c24:	f9040713          	addi	a4,s0,-112
    80003c28:	00f70733          	add	a4,a4,a5
    80003c2c:	02d00693          	li	a3,45
    80003c30:	fed70823          	sb	a3,-16(a4)
    80003c34:	00078c93          	mv	s9,a5
    80003c38:	f8040793          	addi	a5,s0,-128
    80003c3c:	01978cb3          	add	s9,a5,s9
    80003c40:	f7f40d13          	addi	s10,s0,-129
    80003c44:	000cc503          	lbu	a0,0(s9)
    80003c48:	fffc8c93          	addi	s9,s9,-1
    80003c4c:	00000097          	auipc	ra,0x0
    80003c50:	9f8080e7          	jalr	-1544(ra) # 80003644 <consputc>
    80003c54:	ff9d18e3          	bne	s10,s9,80003c44 <__printf+0x41c>
    80003c58:	0100006f          	j	80003c68 <__printf+0x440>
    80003c5c:	00000097          	auipc	ra,0x0
    80003c60:	9e8080e7          	jalr	-1560(ra) # 80003644 <consputc>
    80003c64:	000c8493          	mv	s1,s9
    80003c68:	00094503          	lbu	a0,0(s2)
    80003c6c:	c60510e3          	bnez	a0,800038cc <__printf+0xa4>
    80003c70:	e40c0ee3          	beqz	s8,80003acc <__printf+0x2a4>
    80003c74:	00004517          	auipc	a0,0x4
    80003c78:	54c50513          	addi	a0,a0,1356 # 800081c0 <pr>
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	94c080e7          	jalr	-1716(ra) # 800045c8 <release>
    80003c84:	e49ff06f          	j	80003acc <__printf+0x2a4>
    80003c88:	f7843783          	ld	a5,-136(s0)
    80003c8c:	03000513          	li	a0,48
    80003c90:	01000d13          	li	s10,16
    80003c94:	00878713          	addi	a4,a5,8
    80003c98:	0007bc83          	ld	s9,0(a5)
    80003c9c:	f6e43c23          	sd	a4,-136(s0)
    80003ca0:	00000097          	auipc	ra,0x0
    80003ca4:	9a4080e7          	jalr	-1628(ra) # 80003644 <consputc>
    80003ca8:	07800513          	li	a0,120
    80003cac:	00000097          	auipc	ra,0x0
    80003cb0:	998080e7          	jalr	-1640(ra) # 80003644 <consputc>
    80003cb4:	00002d97          	auipc	s11,0x2
    80003cb8:	77cd8d93          	addi	s11,s11,1916 # 80006430 <digits>
    80003cbc:	03ccd793          	srli	a5,s9,0x3c
    80003cc0:	00fd87b3          	add	a5,s11,a5
    80003cc4:	0007c503          	lbu	a0,0(a5)
    80003cc8:	fffd0d1b          	addiw	s10,s10,-1
    80003ccc:	004c9c93          	slli	s9,s9,0x4
    80003cd0:	00000097          	auipc	ra,0x0
    80003cd4:	974080e7          	jalr	-1676(ra) # 80003644 <consputc>
    80003cd8:	fe0d12e3          	bnez	s10,80003cbc <__printf+0x494>
    80003cdc:	f8dff06f          	j	80003c68 <__printf+0x440>
    80003ce0:	f7843783          	ld	a5,-136(s0)
    80003ce4:	0007bc83          	ld	s9,0(a5)
    80003ce8:	00878793          	addi	a5,a5,8
    80003cec:	f6f43c23          	sd	a5,-136(s0)
    80003cf0:	000c9a63          	bnez	s9,80003d04 <__printf+0x4dc>
    80003cf4:	1080006f          	j	80003dfc <__printf+0x5d4>
    80003cf8:	001c8c93          	addi	s9,s9,1
    80003cfc:	00000097          	auipc	ra,0x0
    80003d00:	948080e7          	jalr	-1720(ra) # 80003644 <consputc>
    80003d04:	000cc503          	lbu	a0,0(s9)
    80003d08:	fe0518e3          	bnez	a0,80003cf8 <__printf+0x4d0>
    80003d0c:	f5dff06f          	j	80003c68 <__printf+0x440>
    80003d10:	02500513          	li	a0,37
    80003d14:	00000097          	auipc	ra,0x0
    80003d18:	930080e7          	jalr	-1744(ra) # 80003644 <consputc>
    80003d1c:	000c8513          	mv	a0,s9
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	924080e7          	jalr	-1756(ra) # 80003644 <consputc>
    80003d28:	f41ff06f          	j	80003c68 <__printf+0x440>
    80003d2c:	02500513          	li	a0,37
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	914080e7          	jalr	-1772(ra) # 80003644 <consputc>
    80003d38:	f31ff06f          	j	80003c68 <__printf+0x440>
    80003d3c:	00030513          	mv	a0,t1
    80003d40:	00000097          	auipc	ra,0x0
    80003d44:	7bc080e7          	jalr	1980(ra) # 800044fc <acquire>
    80003d48:	b4dff06f          	j	80003894 <__printf+0x6c>
    80003d4c:	40c0053b          	negw	a0,a2
    80003d50:	00a00713          	li	a4,10
    80003d54:	02e576bb          	remuw	a3,a0,a4
    80003d58:	00002d97          	auipc	s11,0x2
    80003d5c:	6d8d8d93          	addi	s11,s11,1752 # 80006430 <digits>
    80003d60:	ff700593          	li	a1,-9
    80003d64:	02069693          	slli	a3,a3,0x20
    80003d68:	0206d693          	srli	a3,a3,0x20
    80003d6c:	00dd86b3          	add	a3,s11,a3
    80003d70:	0006c683          	lbu	a3,0(a3)
    80003d74:	02e557bb          	divuw	a5,a0,a4
    80003d78:	f8d40023          	sb	a3,-128(s0)
    80003d7c:	10b65e63          	bge	a2,a1,80003e98 <__printf+0x670>
    80003d80:	06300593          	li	a1,99
    80003d84:	02e7f6bb          	remuw	a3,a5,a4
    80003d88:	02069693          	slli	a3,a3,0x20
    80003d8c:	0206d693          	srli	a3,a3,0x20
    80003d90:	00dd86b3          	add	a3,s11,a3
    80003d94:	0006c683          	lbu	a3,0(a3)
    80003d98:	02e7d73b          	divuw	a4,a5,a4
    80003d9c:	00200793          	li	a5,2
    80003da0:	f8d400a3          	sb	a3,-127(s0)
    80003da4:	bca5ece3          	bltu	a1,a0,8000397c <__printf+0x154>
    80003da8:	ce5ff06f          	j	80003a8c <__printf+0x264>
    80003dac:	40e007bb          	negw	a5,a4
    80003db0:	00002d97          	auipc	s11,0x2
    80003db4:	680d8d93          	addi	s11,s11,1664 # 80006430 <digits>
    80003db8:	00f7f693          	andi	a3,a5,15
    80003dbc:	00dd86b3          	add	a3,s11,a3
    80003dc0:	0006c583          	lbu	a1,0(a3)
    80003dc4:	ff100613          	li	a2,-15
    80003dc8:	0047d69b          	srliw	a3,a5,0x4
    80003dcc:	f8b40023          	sb	a1,-128(s0)
    80003dd0:	0047d59b          	srliw	a1,a5,0x4
    80003dd4:	0ac75e63          	bge	a4,a2,80003e90 <__printf+0x668>
    80003dd8:	00f6f693          	andi	a3,a3,15
    80003ddc:	00dd86b3          	add	a3,s11,a3
    80003de0:	0006c603          	lbu	a2,0(a3)
    80003de4:	00f00693          	li	a3,15
    80003de8:	0087d79b          	srliw	a5,a5,0x8
    80003dec:	f8c400a3          	sb	a2,-127(s0)
    80003df0:	d8b6e4e3          	bltu	a3,a1,80003b78 <__printf+0x350>
    80003df4:	00200793          	li	a5,2
    80003df8:	e2dff06f          	j	80003c24 <__printf+0x3fc>
    80003dfc:	00002c97          	auipc	s9,0x2
    80003e00:	614c8c93          	addi	s9,s9,1556 # 80006410 <_ZZ12printIntegermE6digits+0x148>
    80003e04:	02800513          	li	a0,40
    80003e08:	ef1ff06f          	j	80003cf8 <__printf+0x4d0>
    80003e0c:	00700793          	li	a5,7
    80003e10:	00600c93          	li	s9,6
    80003e14:	e0dff06f          	j	80003c20 <__printf+0x3f8>
    80003e18:	00700793          	li	a5,7
    80003e1c:	00600c93          	li	s9,6
    80003e20:	c69ff06f          	j	80003a88 <__printf+0x260>
    80003e24:	00300793          	li	a5,3
    80003e28:	00200c93          	li	s9,2
    80003e2c:	c5dff06f          	j	80003a88 <__printf+0x260>
    80003e30:	00300793          	li	a5,3
    80003e34:	00200c93          	li	s9,2
    80003e38:	de9ff06f          	j	80003c20 <__printf+0x3f8>
    80003e3c:	00400793          	li	a5,4
    80003e40:	00300c93          	li	s9,3
    80003e44:	dddff06f          	j	80003c20 <__printf+0x3f8>
    80003e48:	00400793          	li	a5,4
    80003e4c:	00300c93          	li	s9,3
    80003e50:	c39ff06f          	j	80003a88 <__printf+0x260>
    80003e54:	00500793          	li	a5,5
    80003e58:	00400c93          	li	s9,4
    80003e5c:	c2dff06f          	j	80003a88 <__printf+0x260>
    80003e60:	00500793          	li	a5,5
    80003e64:	00400c93          	li	s9,4
    80003e68:	db9ff06f          	j	80003c20 <__printf+0x3f8>
    80003e6c:	00600793          	li	a5,6
    80003e70:	00500c93          	li	s9,5
    80003e74:	dadff06f          	j	80003c20 <__printf+0x3f8>
    80003e78:	00600793          	li	a5,6
    80003e7c:	00500c93          	li	s9,5
    80003e80:	c09ff06f          	j	80003a88 <__printf+0x260>
    80003e84:	00800793          	li	a5,8
    80003e88:	00700c93          	li	s9,7
    80003e8c:	bfdff06f          	j	80003a88 <__printf+0x260>
    80003e90:	00100793          	li	a5,1
    80003e94:	d91ff06f          	j	80003c24 <__printf+0x3fc>
    80003e98:	00100793          	li	a5,1
    80003e9c:	bf1ff06f          	j	80003a8c <__printf+0x264>
    80003ea0:	00900793          	li	a5,9
    80003ea4:	00800c93          	li	s9,8
    80003ea8:	be1ff06f          	j	80003a88 <__printf+0x260>
    80003eac:	00002517          	auipc	a0,0x2
    80003eb0:	56c50513          	addi	a0,a0,1388 # 80006418 <_ZZ12printIntegermE6digits+0x150>
    80003eb4:	00000097          	auipc	ra,0x0
    80003eb8:	918080e7          	jalr	-1768(ra) # 800037cc <panic>

0000000080003ebc <printfinit>:
    80003ebc:	fe010113          	addi	sp,sp,-32
    80003ec0:	00813823          	sd	s0,16(sp)
    80003ec4:	00913423          	sd	s1,8(sp)
    80003ec8:	00113c23          	sd	ra,24(sp)
    80003ecc:	02010413          	addi	s0,sp,32
    80003ed0:	00004497          	auipc	s1,0x4
    80003ed4:	2f048493          	addi	s1,s1,752 # 800081c0 <pr>
    80003ed8:	00048513          	mv	a0,s1
    80003edc:	00002597          	auipc	a1,0x2
    80003ee0:	54c58593          	addi	a1,a1,1356 # 80006428 <_ZZ12printIntegermE6digits+0x160>
    80003ee4:	00000097          	auipc	ra,0x0
    80003ee8:	5f4080e7          	jalr	1524(ra) # 800044d8 <initlock>
    80003eec:	01813083          	ld	ra,24(sp)
    80003ef0:	01013403          	ld	s0,16(sp)
    80003ef4:	0004ac23          	sw	zero,24(s1)
    80003ef8:	00813483          	ld	s1,8(sp)
    80003efc:	02010113          	addi	sp,sp,32
    80003f00:	00008067          	ret

0000000080003f04 <uartinit>:
    80003f04:	ff010113          	addi	sp,sp,-16
    80003f08:	00813423          	sd	s0,8(sp)
    80003f0c:	01010413          	addi	s0,sp,16
    80003f10:	100007b7          	lui	a5,0x10000
    80003f14:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003f18:	f8000713          	li	a4,-128
    80003f1c:	00e781a3          	sb	a4,3(a5)
    80003f20:	00300713          	li	a4,3
    80003f24:	00e78023          	sb	a4,0(a5)
    80003f28:	000780a3          	sb	zero,1(a5)
    80003f2c:	00e781a3          	sb	a4,3(a5)
    80003f30:	00700693          	li	a3,7
    80003f34:	00d78123          	sb	a3,2(a5)
    80003f38:	00e780a3          	sb	a4,1(a5)
    80003f3c:	00813403          	ld	s0,8(sp)
    80003f40:	01010113          	addi	sp,sp,16
    80003f44:	00008067          	ret

0000000080003f48 <uartputc>:
    80003f48:	00003797          	auipc	a5,0x3
    80003f4c:	0007a783          	lw	a5,0(a5) # 80006f48 <panicked>
    80003f50:	00078463          	beqz	a5,80003f58 <uartputc+0x10>
    80003f54:	0000006f          	j	80003f54 <uartputc+0xc>
    80003f58:	fd010113          	addi	sp,sp,-48
    80003f5c:	02813023          	sd	s0,32(sp)
    80003f60:	00913c23          	sd	s1,24(sp)
    80003f64:	01213823          	sd	s2,16(sp)
    80003f68:	01313423          	sd	s3,8(sp)
    80003f6c:	02113423          	sd	ra,40(sp)
    80003f70:	03010413          	addi	s0,sp,48
    80003f74:	00003917          	auipc	s2,0x3
    80003f78:	fdc90913          	addi	s2,s2,-36 # 80006f50 <uart_tx_r>
    80003f7c:	00093783          	ld	a5,0(s2)
    80003f80:	00003497          	auipc	s1,0x3
    80003f84:	fd848493          	addi	s1,s1,-40 # 80006f58 <uart_tx_w>
    80003f88:	0004b703          	ld	a4,0(s1)
    80003f8c:	02078693          	addi	a3,a5,32
    80003f90:	00050993          	mv	s3,a0
    80003f94:	02e69c63          	bne	a3,a4,80003fcc <uartputc+0x84>
    80003f98:	00001097          	auipc	ra,0x1
    80003f9c:	834080e7          	jalr	-1996(ra) # 800047cc <push_on>
    80003fa0:	00093783          	ld	a5,0(s2)
    80003fa4:	0004b703          	ld	a4,0(s1)
    80003fa8:	02078793          	addi	a5,a5,32
    80003fac:	00e79463          	bne	a5,a4,80003fb4 <uartputc+0x6c>
    80003fb0:	0000006f          	j	80003fb0 <uartputc+0x68>
    80003fb4:	00001097          	auipc	ra,0x1
    80003fb8:	88c080e7          	jalr	-1908(ra) # 80004840 <pop_on>
    80003fbc:	00093783          	ld	a5,0(s2)
    80003fc0:	0004b703          	ld	a4,0(s1)
    80003fc4:	02078693          	addi	a3,a5,32
    80003fc8:	fce688e3          	beq	a3,a4,80003f98 <uartputc+0x50>
    80003fcc:	01f77693          	andi	a3,a4,31
    80003fd0:	00004597          	auipc	a1,0x4
    80003fd4:	21058593          	addi	a1,a1,528 # 800081e0 <uart_tx_buf>
    80003fd8:	00d586b3          	add	a3,a1,a3
    80003fdc:	00170713          	addi	a4,a4,1
    80003fe0:	01368023          	sb	s3,0(a3)
    80003fe4:	00e4b023          	sd	a4,0(s1)
    80003fe8:	10000637          	lui	a2,0x10000
    80003fec:	02f71063          	bne	a4,a5,8000400c <uartputc+0xc4>
    80003ff0:	0340006f          	j	80004024 <uartputc+0xdc>
    80003ff4:	00074703          	lbu	a4,0(a4)
    80003ff8:	00f93023          	sd	a5,0(s2)
    80003ffc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004000:	00093783          	ld	a5,0(s2)
    80004004:	0004b703          	ld	a4,0(s1)
    80004008:	00f70e63          	beq	a4,a5,80004024 <uartputc+0xdc>
    8000400c:	00564683          	lbu	a3,5(a2)
    80004010:	01f7f713          	andi	a4,a5,31
    80004014:	00e58733          	add	a4,a1,a4
    80004018:	0206f693          	andi	a3,a3,32
    8000401c:	00178793          	addi	a5,a5,1
    80004020:	fc069ae3          	bnez	a3,80003ff4 <uartputc+0xac>
    80004024:	02813083          	ld	ra,40(sp)
    80004028:	02013403          	ld	s0,32(sp)
    8000402c:	01813483          	ld	s1,24(sp)
    80004030:	01013903          	ld	s2,16(sp)
    80004034:	00813983          	ld	s3,8(sp)
    80004038:	03010113          	addi	sp,sp,48
    8000403c:	00008067          	ret

0000000080004040 <uartputc_sync>:
    80004040:	ff010113          	addi	sp,sp,-16
    80004044:	00813423          	sd	s0,8(sp)
    80004048:	01010413          	addi	s0,sp,16
    8000404c:	00003717          	auipc	a4,0x3
    80004050:	efc72703          	lw	a4,-260(a4) # 80006f48 <panicked>
    80004054:	02071663          	bnez	a4,80004080 <uartputc_sync+0x40>
    80004058:	00050793          	mv	a5,a0
    8000405c:	100006b7          	lui	a3,0x10000
    80004060:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004064:	02077713          	andi	a4,a4,32
    80004068:	fe070ce3          	beqz	a4,80004060 <uartputc_sync+0x20>
    8000406c:	0ff7f793          	andi	a5,a5,255
    80004070:	00f68023          	sb	a5,0(a3)
    80004074:	00813403          	ld	s0,8(sp)
    80004078:	01010113          	addi	sp,sp,16
    8000407c:	00008067          	ret
    80004080:	0000006f          	j	80004080 <uartputc_sync+0x40>

0000000080004084 <uartstart>:
    80004084:	ff010113          	addi	sp,sp,-16
    80004088:	00813423          	sd	s0,8(sp)
    8000408c:	01010413          	addi	s0,sp,16
    80004090:	00003617          	auipc	a2,0x3
    80004094:	ec060613          	addi	a2,a2,-320 # 80006f50 <uart_tx_r>
    80004098:	00003517          	auipc	a0,0x3
    8000409c:	ec050513          	addi	a0,a0,-320 # 80006f58 <uart_tx_w>
    800040a0:	00063783          	ld	a5,0(a2)
    800040a4:	00053703          	ld	a4,0(a0)
    800040a8:	04f70263          	beq	a4,a5,800040ec <uartstart+0x68>
    800040ac:	100005b7          	lui	a1,0x10000
    800040b0:	00004817          	auipc	a6,0x4
    800040b4:	13080813          	addi	a6,a6,304 # 800081e0 <uart_tx_buf>
    800040b8:	01c0006f          	j	800040d4 <uartstart+0x50>
    800040bc:	0006c703          	lbu	a4,0(a3)
    800040c0:	00f63023          	sd	a5,0(a2)
    800040c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800040c8:	00063783          	ld	a5,0(a2)
    800040cc:	00053703          	ld	a4,0(a0)
    800040d0:	00f70e63          	beq	a4,a5,800040ec <uartstart+0x68>
    800040d4:	01f7f713          	andi	a4,a5,31
    800040d8:	00e806b3          	add	a3,a6,a4
    800040dc:	0055c703          	lbu	a4,5(a1)
    800040e0:	00178793          	addi	a5,a5,1
    800040e4:	02077713          	andi	a4,a4,32
    800040e8:	fc071ae3          	bnez	a4,800040bc <uartstart+0x38>
    800040ec:	00813403          	ld	s0,8(sp)
    800040f0:	01010113          	addi	sp,sp,16
    800040f4:	00008067          	ret

00000000800040f8 <uartgetc>:
    800040f8:	ff010113          	addi	sp,sp,-16
    800040fc:	00813423          	sd	s0,8(sp)
    80004100:	01010413          	addi	s0,sp,16
    80004104:	10000737          	lui	a4,0x10000
    80004108:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000410c:	0017f793          	andi	a5,a5,1
    80004110:	00078c63          	beqz	a5,80004128 <uartgetc+0x30>
    80004114:	00074503          	lbu	a0,0(a4)
    80004118:	0ff57513          	andi	a0,a0,255
    8000411c:	00813403          	ld	s0,8(sp)
    80004120:	01010113          	addi	sp,sp,16
    80004124:	00008067          	ret
    80004128:	fff00513          	li	a0,-1
    8000412c:	ff1ff06f          	j	8000411c <uartgetc+0x24>

0000000080004130 <uartintr>:
    80004130:	100007b7          	lui	a5,0x10000
    80004134:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004138:	0017f793          	andi	a5,a5,1
    8000413c:	0a078463          	beqz	a5,800041e4 <uartintr+0xb4>
    80004140:	fe010113          	addi	sp,sp,-32
    80004144:	00813823          	sd	s0,16(sp)
    80004148:	00913423          	sd	s1,8(sp)
    8000414c:	00113c23          	sd	ra,24(sp)
    80004150:	02010413          	addi	s0,sp,32
    80004154:	100004b7          	lui	s1,0x10000
    80004158:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000415c:	0ff57513          	andi	a0,a0,255
    80004160:	fffff097          	auipc	ra,0xfffff
    80004164:	534080e7          	jalr	1332(ra) # 80003694 <consoleintr>
    80004168:	0054c783          	lbu	a5,5(s1)
    8000416c:	0017f793          	andi	a5,a5,1
    80004170:	fe0794e3          	bnez	a5,80004158 <uartintr+0x28>
    80004174:	00003617          	auipc	a2,0x3
    80004178:	ddc60613          	addi	a2,a2,-548 # 80006f50 <uart_tx_r>
    8000417c:	00003517          	auipc	a0,0x3
    80004180:	ddc50513          	addi	a0,a0,-548 # 80006f58 <uart_tx_w>
    80004184:	00063783          	ld	a5,0(a2)
    80004188:	00053703          	ld	a4,0(a0)
    8000418c:	04f70263          	beq	a4,a5,800041d0 <uartintr+0xa0>
    80004190:	100005b7          	lui	a1,0x10000
    80004194:	00004817          	auipc	a6,0x4
    80004198:	04c80813          	addi	a6,a6,76 # 800081e0 <uart_tx_buf>
    8000419c:	01c0006f          	j	800041b8 <uartintr+0x88>
    800041a0:	0006c703          	lbu	a4,0(a3)
    800041a4:	00f63023          	sd	a5,0(a2)
    800041a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800041ac:	00063783          	ld	a5,0(a2)
    800041b0:	00053703          	ld	a4,0(a0)
    800041b4:	00f70e63          	beq	a4,a5,800041d0 <uartintr+0xa0>
    800041b8:	01f7f713          	andi	a4,a5,31
    800041bc:	00e806b3          	add	a3,a6,a4
    800041c0:	0055c703          	lbu	a4,5(a1)
    800041c4:	00178793          	addi	a5,a5,1
    800041c8:	02077713          	andi	a4,a4,32
    800041cc:	fc071ae3          	bnez	a4,800041a0 <uartintr+0x70>
    800041d0:	01813083          	ld	ra,24(sp)
    800041d4:	01013403          	ld	s0,16(sp)
    800041d8:	00813483          	ld	s1,8(sp)
    800041dc:	02010113          	addi	sp,sp,32
    800041e0:	00008067          	ret
    800041e4:	00003617          	auipc	a2,0x3
    800041e8:	d6c60613          	addi	a2,a2,-660 # 80006f50 <uart_tx_r>
    800041ec:	00003517          	auipc	a0,0x3
    800041f0:	d6c50513          	addi	a0,a0,-660 # 80006f58 <uart_tx_w>
    800041f4:	00063783          	ld	a5,0(a2)
    800041f8:	00053703          	ld	a4,0(a0)
    800041fc:	04f70263          	beq	a4,a5,80004240 <uartintr+0x110>
    80004200:	100005b7          	lui	a1,0x10000
    80004204:	00004817          	auipc	a6,0x4
    80004208:	fdc80813          	addi	a6,a6,-36 # 800081e0 <uart_tx_buf>
    8000420c:	01c0006f          	j	80004228 <uartintr+0xf8>
    80004210:	0006c703          	lbu	a4,0(a3)
    80004214:	00f63023          	sd	a5,0(a2)
    80004218:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000421c:	00063783          	ld	a5,0(a2)
    80004220:	00053703          	ld	a4,0(a0)
    80004224:	02f70063          	beq	a4,a5,80004244 <uartintr+0x114>
    80004228:	01f7f713          	andi	a4,a5,31
    8000422c:	00e806b3          	add	a3,a6,a4
    80004230:	0055c703          	lbu	a4,5(a1)
    80004234:	00178793          	addi	a5,a5,1
    80004238:	02077713          	andi	a4,a4,32
    8000423c:	fc071ae3          	bnez	a4,80004210 <uartintr+0xe0>
    80004240:	00008067          	ret
    80004244:	00008067          	ret

0000000080004248 <kinit>:
    80004248:	fc010113          	addi	sp,sp,-64
    8000424c:	02913423          	sd	s1,40(sp)
    80004250:	fffff7b7          	lui	a5,0xfffff
    80004254:	00005497          	auipc	s1,0x5
    80004258:	fbb48493          	addi	s1,s1,-69 # 8000920f <end+0xfff>
    8000425c:	02813823          	sd	s0,48(sp)
    80004260:	01313c23          	sd	s3,24(sp)
    80004264:	00f4f4b3          	and	s1,s1,a5
    80004268:	02113c23          	sd	ra,56(sp)
    8000426c:	03213023          	sd	s2,32(sp)
    80004270:	01413823          	sd	s4,16(sp)
    80004274:	01513423          	sd	s5,8(sp)
    80004278:	04010413          	addi	s0,sp,64
    8000427c:	000017b7          	lui	a5,0x1
    80004280:	01100993          	li	s3,17
    80004284:	00f487b3          	add	a5,s1,a5
    80004288:	01b99993          	slli	s3,s3,0x1b
    8000428c:	06f9e063          	bltu	s3,a5,800042ec <kinit+0xa4>
    80004290:	00004a97          	auipc	s5,0x4
    80004294:	f80a8a93          	addi	s5,s5,-128 # 80008210 <end>
    80004298:	0754ec63          	bltu	s1,s5,80004310 <kinit+0xc8>
    8000429c:	0734fa63          	bgeu	s1,s3,80004310 <kinit+0xc8>
    800042a0:	00088a37          	lui	s4,0x88
    800042a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800042a8:	00003917          	auipc	s2,0x3
    800042ac:	cb890913          	addi	s2,s2,-840 # 80006f60 <kmem>
    800042b0:	00ca1a13          	slli	s4,s4,0xc
    800042b4:	0140006f          	j	800042c8 <kinit+0x80>
    800042b8:	000017b7          	lui	a5,0x1
    800042bc:	00f484b3          	add	s1,s1,a5
    800042c0:	0554e863          	bltu	s1,s5,80004310 <kinit+0xc8>
    800042c4:	0534f663          	bgeu	s1,s3,80004310 <kinit+0xc8>
    800042c8:	00001637          	lui	a2,0x1
    800042cc:	00100593          	li	a1,1
    800042d0:	00048513          	mv	a0,s1
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	5e4080e7          	jalr	1508(ra) # 800048b8 <__memset>
    800042dc:	00093783          	ld	a5,0(s2)
    800042e0:	00f4b023          	sd	a5,0(s1)
    800042e4:	00993023          	sd	s1,0(s2)
    800042e8:	fd4498e3          	bne	s1,s4,800042b8 <kinit+0x70>
    800042ec:	03813083          	ld	ra,56(sp)
    800042f0:	03013403          	ld	s0,48(sp)
    800042f4:	02813483          	ld	s1,40(sp)
    800042f8:	02013903          	ld	s2,32(sp)
    800042fc:	01813983          	ld	s3,24(sp)
    80004300:	01013a03          	ld	s4,16(sp)
    80004304:	00813a83          	ld	s5,8(sp)
    80004308:	04010113          	addi	sp,sp,64
    8000430c:	00008067          	ret
    80004310:	00002517          	auipc	a0,0x2
    80004314:	13850513          	addi	a0,a0,312 # 80006448 <digits+0x18>
    80004318:	fffff097          	auipc	ra,0xfffff
    8000431c:	4b4080e7          	jalr	1204(ra) # 800037cc <panic>

0000000080004320 <freerange>:
    80004320:	fc010113          	addi	sp,sp,-64
    80004324:	000017b7          	lui	a5,0x1
    80004328:	02913423          	sd	s1,40(sp)
    8000432c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004330:	009504b3          	add	s1,a0,s1
    80004334:	fffff537          	lui	a0,0xfffff
    80004338:	02813823          	sd	s0,48(sp)
    8000433c:	02113c23          	sd	ra,56(sp)
    80004340:	03213023          	sd	s2,32(sp)
    80004344:	01313c23          	sd	s3,24(sp)
    80004348:	01413823          	sd	s4,16(sp)
    8000434c:	01513423          	sd	s5,8(sp)
    80004350:	01613023          	sd	s6,0(sp)
    80004354:	04010413          	addi	s0,sp,64
    80004358:	00a4f4b3          	and	s1,s1,a0
    8000435c:	00f487b3          	add	a5,s1,a5
    80004360:	06f5e463          	bltu	a1,a5,800043c8 <freerange+0xa8>
    80004364:	00004a97          	auipc	s5,0x4
    80004368:	eaca8a93          	addi	s5,s5,-340 # 80008210 <end>
    8000436c:	0954e263          	bltu	s1,s5,800043f0 <freerange+0xd0>
    80004370:	01100993          	li	s3,17
    80004374:	01b99993          	slli	s3,s3,0x1b
    80004378:	0734fc63          	bgeu	s1,s3,800043f0 <freerange+0xd0>
    8000437c:	00058a13          	mv	s4,a1
    80004380:	00003917          	auipc	s2,0x3
    80004384:	be090913          	addi	s2,s2,-1056 # 80006f60 <kmem>
    80004388:	00002b37          	lui	s6,0x2
    8000438c:	0140006f          	j	800043a0 <freerange+0x80>
    80004390:	000017b7          	lui	a5,0x1
    80004394:	00f484b3          	add	s1,s1,a5
    80004398:	0554ec63          	bltu	s1,s5,800043f0 <freerange+0xd0>
    8000439c:	0534fa63          	bgeu	s1,s3,800043f0 <freerange+0xd0>
    800043a0:	00001637          	lui	a2,0x1
    800043a4:	00100593          	li	a1,1
    800043a8:	00048513          	mv	a0,s1
    800043ac:	00000097          	auipc	ra,0x0
    800043b0:	50c080e7          	jalr	1292(ra) # 800048b8 <__memset>
    800043b4:	00093703          	ld	a4,0(s2)
    800043b8:	016487b3          	add	a5,s1,s6
    800043bc:	00e4b023          	sd	a4,0(s1)
    800043c0:	00993023          	sd	s1,0(s2)
    800043c4:	fcfa76e3          	bgeu	s4,a5,80004390 <freerange+0x70>
    800043c8:	03813083          	ld	ra,56(sp)
    800043cc:	03013403          	ld	s0,48(sp)
    800043d0:	02813483          	ld	s1,40(sp)
    800043d4:	02013903          	ld	s2,32(sp)
    800043d8:	01813983          	ld	s3,24(sp)
    800043dc:	01013a03          	ld	s4,16(sp)
    800043e0:	00813a83          	ld	s5,8(sp)
    800043e4:	00013b03          	ld	s6,0(sp)
    800043e8:	04010113          	addi	sp,sp,64
    800043ec:	00008067          	ret
    800043f0:	00002517          	auipc	a0,0x2
    800043f4:	05850513          	addi	a0,a0,88 # 80006448 <digits+0x18>
    800043f8:	fffff097          	auipc	ra,0xfffff
    800043fc:	3d4080e7          	jalr	980(ra) # 800037cc <panic>

0000000080004400 <kfree>:
    80004400:	fe010113          	addi	sp,sp,-32
    80004404:	00813823          	sd	s0,16(sp)
    80004408:	00113c23          	sd	ra,24(sp)
    8000440c:	00913423          	sd	s1,8(sp)
    80004410:	02010413          	addi	s0,sp,32
    80004414:	03451793          	slli	a5,a0,0x34
    80004418:	04079c63          	bnez	a5,80004470 <kfree+0x70>
    8000441c:	00004797          	auipc	a5,0x4
    80004420:	df478793          	addi	a5,a5,-524 # 80008210 <end>
    80004424:	00050493          	mv	s1,a0
    80004428:	04f56463          	bltu	a0,a5,80004470 <kfree+0x70>
    8000442c:	01100793          	li	a5,17
    80004430:	01b79793          	slli	a5,a5,0x1b
    80004434:	02f57e63          	bgeu	a0,a5,80004470 <kfree+0x70>
    80004438:	00001637          	lui	a2,0x1
    8000443c:	00100593          	li	a1,1
    80004440:	00000097          	auipc	ra,0x0
    80004444:	478080e7          	jalr	1144(ra) # 800048b8 <__memset>
    80004448:	00003797          	auipc	a5,0x3
    8000444c:	b1878793          	addi	a5,a5,-1256 # 80006f60 <kmem>
    80004450:	0007b703          	ld	a4,0(a5)
    80004454:	01813083          	ld	ra,24(sp)
    80004458:	01013403          	ld	s0,16(sp)
    8000445c:	00e4b023          	sd	a4,0(s1)
    80004460:	0097b023          	sd	s1,0(a5)
    80004464:	00813483          	ld	s1,8(sp)
    80004468:	02010113          	addi	sp,sp,32
    8000446c:	00008067          	ret
    80004470:	00002517          	auipc	a0,0x2
    80004474:	fd850513          	addi	a0,a0,-40 # 80006448 <digits+0x18>
    80004478:	fffff097          	auipc	ra,0xfffff
    8000447c:	354080e7          	jalr	852(ra) # 800037cc <panic>

0000000080004480 <kalloc>:
    80004480:	fe010113          	addi	sp,sp,-32
    80004484:	00813823          	sd	s0,16(sp)
    80004488:	00913423          	sd	s1,8(sp)
    8000448c:	00113c23          	sd	ra,24(sp)
    80004490:	02010413          	addi	s0,sp,32
    80004494:	00003797          	auipc	a5,0x3
    80004498:	acc78793          	addi	a5,a5,-1332 # 80006f60 <kmem>
    8000449c:	0007b483          	ld	s1,0(a5)
    800044a0:	02048063          	beqz	s1,800044c0 <kalloc+0x40>
    800044a4:	0004b703          	ld	a4,0(s1)
    800044a8:	00001637          	lui	a2,0x1
    800044ac:	00500593          	li	a1,5
    800044b0:	00048513          	mv	a0,s1
    800044b4:	00e7b023          	sd	a4,0(a5)
    800044b8:	00000097          	auipc	ra,0x0
    800044bc:	400080e7          	jalr	1024(ra) # 800048b8 <__memset>
    800044c0:	01813083          	ld	ra,24(sp)
    800044c4:	01013403          	ld	s0,16(sp)
    800044c8:	00048513          	mv	a0,s1
    800044cc:	00813483          	ld	s1,8(sp)
    800044d0:	02010113          	addi	sp,sp,32
    800044d4:	00008067          	ret

00000000800044d8 <initlock>:
    800044d8:	ff010113          	addi	sp,sp,-16
    800044dc:	00813423          	sd	s0,8(sp)
    800044e0:	01010413          	addi	s0,sp,16
    800044e4:	00813403          	ld	s0,8(sp)
    800044e8:	00b53423          	sd	a1,8(a0)
    800044ec:	00052023          	sw	zero,0(a0)
    800044f0:	00053823          	sd	zero,16(a0)
    800044f4:	01010113          	addi	sp,sp,16
    800044f8:	00008067          	ret

00000000800044fc <acquire>:
    800044fc:	fe010113          	addi	sp,sp,-32
    80004500:	00813823          	sd	s0,16(sp)
    80004504:	00913423          	sd	s1,8(sp)
    80004508:	00113c23          	sd	ra,24(sp)
    8000450c:	01213023          	sd	s2,0(sp)
    80004510:	02010413          	addi	s0,sp,32
    80004514:	00050493          	mv	s1,a0
    80004518:	10002973          	csrr	s2,sstatus
    8000451c:	100027f3          	csrr	a5,sstatus
    80004520:	ffd7f793          	andi	a5,a5,-3
    80004524:	10079073          	csrw	sstatus,a5
    80004528:	fffff097          	auipc	ra,0xfffff
    8000452c:	8ec080e7          	jalr	-1812(ra) # 80002e14 <mycpu>
    80004530:	07852783          	lw	a5,120(a0)
    80004534:	06078e63          	beqz	a5,800045b0 <acquire+0xb4>
    80004538:	fffff097          	auipc	ra,0xfffff
    8000453c:	8dc080e7          	jalr	-1828(ra) # 80002e14 <mycpu>
    80004540:	07852783          	lw	a5,120(a0)
    80004544:	0004a703          	lw	a4,0(s1)
    80004548:	0017879b          	addiw	a5,a5,1
    8000454c:	06f52c23          	sw	a5,120(a0)
    80004550:	04071063          	bnez	a4,80004590 <acquire+0x94>
    80004554:	00100713          	li	a4,1
    80004558:	00070793          	mv	a5,a4
    8000455c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004560:	0007879b          	sext.w	a5,a5
    80004564:	fe079ae3          	bnez	a5,80004558 <acquire+0x5c>
    80004568:	0ff0000f          	fence
    8000456c:	fffff097          	auipc	ra,0xfffff
    80004570:	8a8080e7          	jalr	-1880(ra) # 80002e14 <mycpu>
    80004574:	01813083          	ld	ra,24(sp)
    80004578:	01013403          	ld	s0,16(sp)
    8000457c:	00a4b823          	sd	a0,16(s1)
    80004580:	00013903          	ld	s2,0(sp)
    80004584:	00813483          	ld	s1,8(sp)
    80004588:	02010113          	addi	sp,sp,32
    8000458c:	00008067          	ret
    80004590:	0104b903          	ld	s2,16(s1)
    80004594:	fffff097          	auipc	ra,0xfffff
    80004598:	880080e7          	jalr	-1920(ra) # 80002e14 <mycpu>
    8000459c:	faa91ce3          	bne	s2,a0,80004554 <acquire+0x58>
    800045a0:	00002517          	auipc	a0,0x2
    800045a4:	eb050513          	addi	a0,a0,-336 # 80006450 <digits+0x20>
    800045a8:	fffff097          	auipc	ra,0xfffff
    800045ac:	224080e7          	jalr	548(ra) # 800037cc <panic>
    800045b0:	00195913          	srli	s2,s2,0x1
    800045b4:	fffff097          	auipc	ra,0xfffff
    800045b8:	860080e7          	jalr	-1952(ra) # 80002e14 <mycpu>
    800045bc:	00197913          	andi	s2,s2,1
    800045c0:	07252e23          	sw	s2,124(a0)
    800045c4:	f75ff06f          	j	80004538 <acquire+0x3c>

00000000800045c8 <release>:
    800045c8:	fe010113          	addi	sp,sp,-32
    800045cc:	00813823          	sd	s0,16(sp)
    800045d0:	00113c23          	sd	ra,24(sp)
    800045d4:	00913423          	sd	s1,8(sp)
    800045d8:	01213023          	sd	s2,0(sp)
    800045dc:	02010413          	addi	s0,sp,32
    800045e0:	00052783          	lw	a5,0(a0)
    800045e4:	00079a63          	bnez	a5,800045f8 <release+0x30>
    800045e8:	00002517          	auipc	a0,0x2
    800045ec:	e7050513          	addi	a0,a0,-400 # 80006458 <digits+0x28>
    800045f0:	fffff097          	auipc	ra,0xfffff
    800045f4:	1dc080e7          	jalr	476(ra) # 800037cc <panic>
    800045f8:	01053903          	ld	s2,16(a0)
    800045fc:	00050493          	mv	s1,a0
    80004600:	fffff097          	auipc	ra,0xfffff
    80004604:	814080e7          	jalr	-2028(ra) # 80002e14 <mycpu>
    80004608:	fea910e3          	bne	s2,a0,800045e8 <release+0x20>
    8000460c:	0004b823          	sd	zero,16(s1)
    80004610:	0ff0000f          	fence
    80004614:	0f50000f          	fence	iorw,ow
    80004618:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000461c:	ffffe097          	auipc	ra,0xffffe
    80004620:	7f8080e7          	jalr	2040(ra) # 80002e14 <mycpu>
    80004624:	100027f3          	csrr	a5,sstatus
    80004628:	0027f793          	andi	a5,a5,2
    8000462c:	04079a63          	bnez	a5,80004680 <release+0xb8>
    80004630:	07852783          	lw	a5,120(a0)
    80004634:	02f05e63          	blez	a5,80004670 <release+0xa8>
    80004638:	fff7871b          	addiw	a4,a5,-1
    8000463c:	06e52c23          	sw	a4,120(a0)
    80004640:	00071c63          	bnez	a4,80004658 <release+0x90>
    80004644:	07c52783          	lw	a5,124(a0)
    80004648:	00078863          	beqz	a5,80004658 <release+0x90>
    8000464c:	100027f3          	csrr	a5,sstatus
    80004650:	0027e793          	ori	a5,a5,2
    80004654:	10079073          	csrw	sstatus,a5
    80004658:	01813083          	ld	ra,24(sp)
    8000465c:	01013403          	ld	s0,16(sp)
    80004660:	00813483          	ld	s1,8(sp)
    80004664:	00013903          	ld	s2,0(sp)
    80004668:	02010113          	addi	sp,sp,32
    8000466c:	00008067          	ret
    80004670:	00002517          	auipc	a0,0x2
    80004674:	e0850513          	addi	a0,a0,-504 # 80006478 <digits+0x48>
    80004678:	fffff097          	auipc	ra,0xfffff
    8000467c:	154080e7          	jalr	340(ra) # 800037cc <panic>
    80004680:	00002517          	auipc	a0,0x2
    80004684:	de050513          	addi	a0,a0,-544 # 80006460 <digits+0x30>
    80004688:	fffff097          	auipc	ra,0xfffff
    8000468c:	144080e7          	jalr	324(ra) # 800037cc <panic>

0000000080004690 <holding>:
    80004690:	00052783          	lw	a5,0(a0)
    80004694:	00079663          	bnez	a5,800046a0 <holding+0x10>
    80004698:	00000513          	li	a0,0
    8000469c:	00008067          	ret
    800046a0:	fe010113          	addi	sp,sp,-32
    800046a4:	00813823          	sd	s0,16(sp)
    800046a8:	00913423          	sd	s1,8(sp)
    800046ac:	00113c23          	sd	ra,24(sp)
    800046b0:	02010413          	addi	s0,sp,32
    800046b4:	01053483          	ld	s1,16(a0)
    800046b8:	ffffe097          	auipc	ra,0xffffe
    800046bc:	75c080e7          	jalr	1884(ra) # 80002e14 <mycpu>
    800046c0:	01813083          	ld	ra,24(sp)
    800046c4:	01013403          	ld	s0,16(sp)
    800046c8:	40a48533          	sub	a0,s1,a0
    800046cc:	00153513          	seqz	a0,a0
    800046d0:	00813483          	ld	s1,8(sp)
    800046d4:	02010113          	addi	sp,sp,32
    800046d8:	00008067          	ret

00000000800046dc <push_off>:
    800046dc:	fe010113          	addi	sp,sp,-32
    800046e0:	00813823          	sd	s0,16(sp)
    800046e4:	00113c23          	sd	ra,24(sp)
    800046e8:	00913423          	sd	s1,8(sp)
    800046ec:	02010413          	addi	s0,sp,32
    800046f0:	100024f3          	csrr	s1,sstatus
    800046f4:	100027f3          	csrr	a5,sstatus
    800046f8:	ffd7f793          	andi	a5,a5,-3
    800046fc:	10079073          	csrw	sstatus,a5
    80004700:	ffffe097          	auipc	ra,0xffffe
    80004704:	714080e7          	jalr	1812(ra) # 80002e14 <mycpu>
    80004708:	07852783          	lw	a5,120(a0)
    8000470c:	02078663          	beqz	a5,80004738 <push_off+0x5c>
    80004710:	ffffe097          	auipc	ra,0xffffe
    80004714:	704080e7          	jalr	1796(ra) # 80002e14 <mycpu>
    80004718:	07852783          	lw	a5,120(a0)
    8000471c:	01813083          	ld	ra,24(sp)
    80004720:	01013403          	ld	s0,16(sp)
    80004724:	0017879b          	addiw	a5,a5,1
    80004728:	06f52c23          	sw	a5,120(a0)
    8000472c:	00813483          	ld	s1,8(sp)
    80004730:	02010113          	addi	sp,sp,32
    80004734:	00008067          	ret
    80004738:	0014d493          	srli	s1,s1,0x1
    8000473c:	ffffe097          	auipc	ra,0xffffe
    80004740:	6d8080e7          	jalr	1752(ra) # 80002e14 <mycpu>
    80004744:	0014f493          	andi	s1,s1,1
    80004748:	06952e23          	sw	s1,124(a0)
    8000474c:	fc5ff06f          	j	80004710 <push_off+0x34>

0000000080004750 <pop_off>:
    80004750:	ff010113          	addi	sp,sp,-16
    80004754:	00813023          	sd	s0,0(sp)
    80004758:	00113423          	sd	ra,8(sp)
    8000475c:	01010413          	addi	s0,sp,16
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	6b4080e7          	jalr	1716(ra) # 80002e14 <mycpu>
    80004768:	100027f3          	csrr	a5,sstatus
    8000476c:	0027f793          	andi	a5,a5,2
    80004770:	04079663          	bnez	a5,800047bc <pop_off+0x6c>
    80004774:	07852783          	lw	a5,120(a0)
    80004778:	02f05a63          	blez	a5,800047ac <pop_off+0x5c>
    8000477c:	fff7871b          	addiw	a4,a5,-1
    80004780:	06e52c23          	sw	a4,120(a0)
    80004784:	00071c63          	bnez	a4,8000479c <pop_off+0x4c>
    80004788:	07c52783          	lw	a5,124(a0)
    8000478c:	00078863          	beqz	a5,8000479c <pop_off+0x4c>
    80004790:	100027f3          	csrr	a5,sstatus
    80004794:	0027e793          	ori	a5,a5,2
    80004798:	10079073          	csrw	sstatus,a5
    8000479c:	00813083          	ld	ra,8(sp)
    800047a0:	00013403          	ld	s0,0(sp)
    800047a4:	01010113          	addi	sp,sp,16
    800047a8:	00008067          	ret
    800047ac:	00002517          	auipc	a0,0x2
    800047b0:	ccc50513          	addi	a0,a0,-820 # 80006478 <digits+0x48>
    800047b4:	fffff097          	auipc	ra,0xfffff
    800047b8:	018080e7          	jalr	24(ra) # 800037cc <panic>
    800047bc:	00002517          	auipc	a0,0x2
    800047c0:	ca450513          	addi	a0,a0,-860 # 80006460 <digits+0x30>
    800047c4:	fffff097          	auipc	ra,0xfffff
    800047c8:	008080e7          	jalr	8(ra) # 800037cc <panic>

00000000800047cc <push_on>:
    800047cc:	fe010113          	addi	sp,sp,-32
    800047d0:	00813823          	sd	s0,16(sp)
    800047d4:	00113c23          	sd	ra,24(sp)
    800047d8:	00913423          	sd	s1,8(sp)
    800047dc:	02010413          	addi	s0,sp,32
    800047e0:	100024f3          	csrr	s1,sstatus
    800047e4:	100027f3          	csrr	a5,sstatus
    800047e8:	0027e793          	ori	a5,a5,2
    800047ec:	10079073          	csrw	sstatus,a5
    800047f0:	ffffe097          	auipc	ra,0xffffe
    800047f4:	624080e7          	jalr	1572(ra) # 80002e14 <mycpu>
    800047f8:	07852783          	lw	a5,120(a0)
    800047fc:	02078663          	beqz	a5,80004828 <push_on+0x5c>
    80004800:	ffffe097          	auipc	ra,0xffffe
    80004804:	614080e7          	jalr	1556(ra) # 80002e14 <mycpu>
    80004808:	07852783          	lw	a5,120(a0)
    8000480c:	01813083          	ld	ra,24(sp)
    80004810:	01013403          	ld	s0,16(sp)
    80004814:	0017879b          	addiw	a5,a5,1
    80004818:	06f52c23          	sw	a5,120(a0)
    8000481c:	00813483          	ld	s1,8(sp)
    80004820:	02010113          	addi	sp,sp,32
    80004824:	00008067          	ret
    80004828:	0014d493          	srli	s1,s1,0x1
    8000482c:	ffffe097          	auipc	ra,0xffffe
    80004830:	5e8080e7          	jalr	1512(ra) # 80002e14 <mycpu>
    80004834:	0014f493          	andi	s1,s1,1
    80004838:	06952e23          	sw	s1,124(a0)
    8000483c:	fc5ff06f          	j	80004800 <push_on+0x34>

0000000080004840 <pop_on>:
    80004840:	ff010113          	addi	sp,sp,-16
    80004844:	00813023          	sd	s0,0(sp)
    80004848:	00113423          	sd	ra,8(sp)
    8000484c:	01010413          	addi	s0,sp,16
    80004850:	ffffe097          	auipc	ra,0xffffe
    80004854:	5c4080e7          	jalr	1476(ra) # 80002e14 <mycpu>
    80004858:	100027f3          	csrr	a5,sstatus
    8000485c:	0027f793          	andi	a5,a5,2
    80004860:	04078463          	beqz	a5,800048a8 <pop_on+0x68>
    80004864:	07852783          	lw	a5,120(a0)
    80004868:	02f05863          	blez	a5,80004898 <pop_on+0x58>
    8000486c:	fff7879b          	addiw	a5,a5,-1
    80004870:	06f52c23          	sw	a5,120(a0)
    80004874:	07853783          	ld	a5,120(a0)
    80004878:	00079863          	bnez	a5,80004888 <pop_on+0x48>
    8000487c:	100027f3          	csrr	a5,sstatus
    80004880:	ffd7f793          	andi	a5,a5,-3
    80004884:	10079073          	csrw	sstatus,a5
    80004888:	00813083          	ld	ra,8(sp)
    8000488c:	00013403          	ld	s0,0(sp)
    80004890:	01010113          	addi	sp,sp,16
    80004894:	00008067          	ret
    80004898:	00002517          	auipc	a0,0x2
    8000489c:	c0850513          	addi	a0,a0,-1016 # 800064a0 <digits+0x70>
    800048a0:	fffff097          	auipc	ra,0xfffff
    800048a4:	f2c080e7          	jalr	-212(ra) # 800037cc <panic>
    800048a8:	00002517          	auipc	a0,0x2
    800048ac:	bd850513          	addi	a0,a0,-1064 # 80006480 <digits+0x50>
    800048b0:	fffff097          	auipc	ra,0xfffff
    800048b4:	f1c080e7          	jalr	-228(ra) # 800037cc <panic>

00000000800048b8 <__memset>:
    800048b8:	ff010113          	addi	sp,sp,-16
    800048bc:	00813423          	sd	s0,8(sp)
    800048c0:	01010413          	addi	s0,sp,16
    800048c4:	1a060e63          	beqz	a2,80004a80 <__memset+0x1c8>
    800048c8:	40a007b3          	neg	a5,a0
    800048cc:	0077f793          	andi	a5,a5,7
    800048d0:	00778693          	addi	a3,a5,7
    800048d4:	00b00813          	li	a6,11
    800048d8:	0ff5f593          	andi	a1,a1,255
    800048dc:	fff6071b          	addiw	a4,a2,-1
    800048e0:	1b06e663          	bltu	a3,a6,80004a8c <__memset+0x1d4>
    800048e4:	1cd76463          	bltu	a4,a3,80004aac <__memset+0x1f4>
    800048e8:	1a078e63          	beqz	a5,80004aa4 <__memset+0x1ec>
    800048ec:	00b50023          	sb	a1,0(a0)
    800048f0:	00100713          	li	a4,1
    800048f4:	1ae78463          	beq	a5,a4,80004a9c <__memset+0x1e4>
    800048f8:	00b500a3          	sb	a1,1(a0)
    800048fc:	00200713          	li	a4,2
    80004900:	1ae78a63          	beq	a5,a4,80004ab4 <__memset+0x1fc>
    80004904:	00b50123          	sb	a1,2(a0)
    80004908:	00300713          	li	a4,3
    8000490c:	18e78463          	beq	a5,a4,80004a94 <__memset+0x1dc>
    80004910:	00b501a3          	sb	a1,3(a0)
    80004914:	00400713          	li	a4,4
    80004918:	1ae78263          	beq	a5,a4,80004abc <__memset+0x204>
    8000491c:	00b50223          	sb	a1,4(a0)
    80004920:	00500713          	li	a4,5
    80004924:	1ae78063          	beq	a5,a4,80004ac4 <__memset+0x20c>
    80004928:	00b502a3          	sb	a1,5(a0)
    8000492c:	00700713          	li	a4,7
    80004930:	18e79e63          	bne	a5,a4,80004acc <__memset+0x214>
    80004934:	00b50323          	sb	a1,6(a0)
    80004938:	00700e93          	li	t4,7
    8000493c:	00859713          	slli	a4,a1,0x8
    80004940:	00e5e733          	or	a4,a1,a4
    80004944:	01059e13          	slli	t3,a1,0x10
    80004948:	01c76e33          	or	t3,a4,t3
    8000494c:	01859313          	slli	t1,a1,0x18
    80004950:	006e6333          	or	t1,t3,t1
    80004954:	02059893          	slli	a7,a1,0x20
    80004958:	40f60e3b          	subw	t3,a2,a5
    8000495c:	011368b3          	or	a7,t1,a7
    80004960:	02859813          	slli	a6,a1,0x28
    80004964:	0108e833          	or	a6,a7,a6
    80004968:	03059693          	slli	a3,a1,0x30
    8000496c:	003e589b          	srliw	a7,t3,0x3
    80004970:	00d866b3          	or	a3,a6,a3
    80004974:	03859713          	slli	a4,a1,0x38
    80004978:	00389813          	slli	a6,a7,0x3
    8000497c:	00f507b3          	add	a5,a0,a5
    80004980:	00e6e733          	or	a4,a3,a4
    80004984:	000e089b          	sext.w	a7,t3
    80004988:	00f806b3          	add	a3,a6,a5
    8000498c:	00e7b023          	sd	a4,0(a5)
    80004990:	00878793          	addi	a5,a5,8
    80004994:	fed79ce3          	bne	a5,a3,8000498c <__memset+0xd4>
    80004998:	ff8e7793          	andi	a5,t3,-8
    8000499c:	0007871b          	sext.w	a4,a5
    800049a0:	01d787bb          	addw	a5,a5,t4
    800049a4:	0ce88e63          	beq	a7,a4,80004a80 <__memset+0x1c8>
    800049a8:	00f50733          	add	a4,a0,a5
    800049ac:	00b70023          	sb	a1,0(a4)
    800049b0:	0017871b          	addiw	a4,a5,1
    800049b4:	0cc77663          	bgeu	a4,a2,80004a80 <__memset+0x1c8>
    800049b8:	00e50733          	add	a4,a0,a4
    800049bc:	00b70023          	sb	a1,0(a4)
    800049c0:	0027871b          	addiw	a4,a5,2
    800049c4:	0ac77e63          	bgeu	a4,a2,80004a80 <__memset+0x1c8>
    800049c8:	00e50733          	add	a4,a0,a4
    800049cc:	00b70023          	sb	a1,0(a4)
    800049d0:	0037871b          	addiw	a4,a5,3
    800049d4:	0ac77663          	bgeu	a4,a2,80004a80 <__memset+0x1c8>
    800049d8:	00e50733          	add	a4,a0,a4
    800049dc:	00b70023          	sb	a1,0(a4)
    800049e0:	0047871b          	addiw	a4,a5,4
    800049e4:	08c77e63          	bgeu	a4,a2,80004a80 <__memset+0x1c8>
    800049e8:	00e50733          	add	a4,a0,a4
    800049ec:	00b70023          	sb	a1,0(a4)
    800049f0:	0057871b          	addiw	a4,a5,5
    800049f4:	08c77663          	bgeu	a4,a2,80004a80 <__memset+0x1c8>
    800049f8:	00e50733          	add	a4,a0,a4
    800049fc:	00b70023          	sb	a1,0(a4)
    80004a00:	0067871b          	addiw	a4,a5,6
    80004a04:	06c77e63          	bgeu	a4,a2,80004a80 <__memset+0x1c8>
    80004a08:	00e50733          	add	a4,a0,a4
    80004a0c:	00b70023          	sb	a1,0(a4)
    80004a10:	0077871b          	addiw	a4,a5,7
    80004a14:	06c77663          	bgeu	a4,a2,80004a80 <__memset+0x1c8>
    80004a18:	00e50733          	add	a4,a0,a4
    80004a1c:	00b70023          	sb	a1,0(a4)
    80004a20:	0087871b          	addiw	a4,a5,8
    80004a24:	04c77e63          	bgeu	a4,a2,80004a80 <__memset+0x1c8>
    80004a28:	00e50733          	add	a4,a0,a4
    80004a2c:	00b70023          	sb	a1,0(a4)
    80004a30:	0097871b          	addiw	a4,a5,9
    80004a34:	04c77663          	bgeu	a4,a2,80004a80 <__memset+0x1c8>
    80004a38:	00e50733          	add	a4,a0,a4
    80004a3c:	00b70023          	sb	a1,0(a4)
    80004a40:	00a7871b          	addiw	a4,a5,10
    80004a44:	02c77e63          	bgeu	a4,a2,80004a80 <__memset+0x1c8>
    80004a48:	00e50733          	add	a4,a0,a4
    80004a4c:	00b70023          	sb	a1,0(a4)
    80004a50:	00b7871b          	addiw	a4,a5,11
    80004a54:	02c77663          	bgeu	a4,a2,80004a80 <__memset+0x1c8>
    80004a58:	00e50733          	add	a4,a0,a4
    80004a5c:	00b70023          	sb	a1,0(a4)
    80004a60:	00c7871b          	addiw	a4,a5,12
    80004a64:	00c77e63          	bgeu	a4,a2,80004a80 <__memset+0x1c8>
    80004a68:	00e50733          	add	a4,a0,a4
    80004a6c:	00b70023          	sb	a1,0(a4)
    80004a70:	00d7879b          	addiw	a5,a5,13
    80004a74:	00c7f663          	bgeu	a5,a2,80004a80 <__memset+0x1c8>
    80004a78:	00f507b3          	add	a5,a0,a5
    80004a7c:	00b78023          	sb	a1,0(a5)
    80004a80:	00813403          	ld	s0,8(sp)
    80004a84:	01010113          	addi	sp,sp,16
    80004a88:	00008067          	ret
    80004a8c:	00b00693          	li	a3,11
    80004a90:	e55ff06f          	j	800048e4 <__memset+0x2c>
    80004a94:	00300e93          	li	t4,3
    80004a98:	ea5ff06f          	j	8000493c <__memset+0x84>
    80004a9c:	00100e93          	li	t4,1
    80004aa0:	e9dff06f          	j	8000493c <__memset+0x84>
    80004aa4:	00000e93          	li	t4,0
    80004aa8:	e95ff06f          	j	8000493c <__memset+0x84>
    80004aac:	00000793          	li	a5,0
    80004ab0:	ef9ff06f          	j	800049a8 <__memset+0xf0>
    80004ab4:	00200e93          	li	t4,2
    80004ab8:	e85ff06f          	j	8000493c <__memset+0x84>
    80004abc:	00400e93          	li	t4,4
    80004ac0:	e7dff06f          	j	8000493c <__memset+0x84>
    80004ac4:	00500e93          	li	t4,5
    80004ac8:	e75ff06f          	j	8000493c <__memset+0x84>
    80004acc:	00600e93          	li	t4,6
    80004ad0:	e6dff06f          	j	8000493c <__memset+0x84>

0000000080004ad4 <__memmove>:
    80004ad4:	ff010113          	addi	sp,sp,-16
    80004ad8:	00813423          	sd	s0,8(sp)
    80004adc:	01010413          	addi	s0,sp,16
    80004ae0:	0e060863          	beqz	a2,80004bd0 <__memmove+0xfc>
    80004ae4:	fff6069b          	addiw	a3,a2,-1
    80004ae8:	0006881b          	sext.w	a6,a3
    80004aec:	0ea5e863          	bltu	a1,a0,80004bdc <__memmove+0x108>
    80004af0:	00758713          	addi	a4,a1,7
    80004af4:	00a5e7b3          	or	a5,a1,a0
    80004af8:	40a70733          	sub	a4,a4,a0
    80004afc:	0077f793          	andi	a5,a5,7
    80004b00:	00f73713          	sltiu	a4,a4,15
    80004b04:	00174713          	xori	a4,a4,1
    80004b08:	0017b793          	seqz	a5,a5
    80004b0c:	00e7f7b3          	and	a5,a5,a4
    80004b10:	10078863          	beqz	a5,80004c20 <__memmove+0x14c>
    80004b14:	00900793          	li	a5,9
    80004b18:	1107f463          	bgeu	a5,a6,80004c20 <__memmove+0x14c>
    80004b1c:	0036581b          	srliw	a6,a2,0x3
    80004b20:	fff8081b          	addiw	a6,a6,-1
    80004b24:	02081813          	slli	a6,a6,0x20
    80004b28:	01d85893          	srli	a7,a6,0x1d
    80004b2c:	00858813          	addi	a6,a1,8
    80004b30:	00058793          	mv	a5,a1
    80004b34:	00050713          	mv	a4,a0
    80004b38:	01088833          	add	a6,a7,a6
    80004b3c:	0007b883          	ld	a7,0(a5)
    80004b40:	00878793          	addi	a5,a5,8
    80004b44:	00870713          	addi	a4,a4,8
    80004b48:	ff173c23          	sd	a7,-8(a4)
    80004b4c:	ff0798e3          	bne	a5,a6,80004b3c <__memmove+0x68>
    80004b50:	ff867713          	andi	a4,a2,-8
    80004b54:	02071793          	slli	a5,a4,0x20
    80004b58:	0207d793          	srli	a5,a5,0x20
    80004b5c:	00f585b3          	add	a1,a1,a5
    80004b60:	40e686bb          	subw	a3,a3,a4
    80004b64:	00f507b3          	add	a5,a0,a5
    80004b68:	06e60463          	beq	a2,a4,80004bd0 <__memmove+0xfc>
    80004b6c:	0005c703          	lbu	a4,0(a1)
    80004b70:	00e78023          	sb	a4,0(a5)
    80004b74:	04068e63          	beqz	a3,80004bd0 <__memmove+0xfc>
    80004b78:	0015c603          	lbu	a2,1(a1)
    80004b7c:	00100713          	li	a4,1
    80004b80:	00c780a3          	sb	a2,1(a5)
    80004b84:	04e68663          	beq	a3,a4,80004bd0 <__memmove+0xfc>
    80004b88:	0025c603          	lbu	a2,2(a1)
    80004b8c:	00200713          	li	a4,2
    80004b90:	00c78123          	sb	a2,2(a5)
    80004b94:	02e68e63          	beq	a3,a4,80004bd0 <__memmove+0xfc>
    80004b98:	0035c603          	lbu	a2,3(a1)
    80004b9c:	00300713          	li	a4,3
    80004ba0:	00c781a3          	sb	a2,3(a5)
    80004ba4:	02e68663          	beq	a3,a4,80004bd0 <__memmove+0xfc>
    80004ba8:	0045c603          	lbu	a2,4(a1)
    80004bac:	00400713          	li	a4,4
    80004bb0:	00c78223          	sb	a2,4(a5)
    80004bb4:	00e68e63          	beq	a3,a4,80004bd0 <__memmove+0xfc>
    80004bb8:	0055c603          	lbu	a2,5(a1)
    80004bbc:	00500713          	li	a4,5
    80004bc0:	00c782a3          	sb	a2,5(a5)
    80004bc4:	00e68663          	beq	a3,a4,80004bd0 <__memmove+0xfc>
    80004bc8:	0065c703          	lbu	a4,6(a1)
    80004bcc:	00e78323          	sb	a4,6(a5)
    80004bd0:	00813403          	ld	s0,8(sp)
    80004bd4:	01010113          	addi	sp,sp,16
    80004bd8:	00008067          	ret
    80004bdc:	02061713          	slli	a4,a2,0x20
    80004be0:	02075713          	srli	a4,a4,0x20
    80004be4:	00e587b3          	add	a5,a1,a4
    80004be8:	f0f574e3          	bgeu	a0,a5,80004af0 <__memmove+0x1c>
    80004bec:	02069613          	slli	a2,a3,0x20
    80004bf0:	02065613          	srli	a2,a2,0x20
    80004bf4:	fff64613          	not	a2,a2
    80004bf8:	00e50733          	add	a4,a0,a4
    80004bfc:	00c78633          	add	a2,a5,a2
    80004c00:	fff7c683          	lbu	a3,-1(a5)
    80004c04:	fff78793          	addi	a5,a5,-1
    80004c08:	fff70713          	addi	a4,a4,-1
    80004c0c:	00d70023          	sb	a3,0(a4)
    80004c10:	fec798e3          	bne	a5,a2,80004c00 <__memmove+0x12c>
    80004c14:	00813403          	ld	s0,8(sp)
    80004c18:	01010113          	addi	sp,sp,16
    80004c1c:	00008067          	ret
    80004c20:	02069713          	slli	a4,a3,0x20
    80004c24:	02075713          	srli	a4,a4,0x20
    80004c28:	00170713          	addi	a4,a4,1
    80004c2c:	00e50733          	add	a4,a0,a4
    80004c30:	00050793          	mv	a5,a0
    80004c34:	0005c683          	lbu	a3,0(a1)
    80004c38:	00178793          	addi	a5,a5,1
    80004c3c:	00158593          	addi	a1,a1,1
    80004c40:	fed78fa3          	sb	a3,-1(a5)
    80004c44:	fee798e3          	bne	a5,a4,80004c34 <__memmove+0x160>
    80004c48:	f89ff06f          	j	80004bd0 <__memmove+0xfc>

0000000080004c4c <__mem_free>:
    80004c4c:	ff010113          	addi	sp,sp,-16
    80004c50:	00813423          	sd	s0,8(sp)
    80004c54:	01010413          	addi	s0,sp,16
    80004c58:	00002597          	auipc	a1,0x2
    80004c5c:	31058593          	addi	a1,a1,784 # 80006f68 <freep>
    80004c60:	0005b783          	ld	a5,0(a1)
    80004c64:	ff050693          	addi	a3,a0,-16
    80004c68:	0007b703          	ld	a4,0(a5)
    80004c6c:	00d7fc63          	bgeu	a5,a3,80004c84 <__mem_free+0x38>
    80004c70:	00e6ee63          	bltu	a3,a4,80004c8c <__mem_free+0x40>
    80004c74:	00e7fc63          	bgeu	a5,a4,80004c8c <__mem_free+0x40>
    80004c78:	00070793          	mv	a5,a4
    80004c7c:	0007b703          	ld	a4,0(a5)
    80004c80:	fed7e8e3          	bltu	a5,a3,80004c70 <__mem_free+0x24>
    80004c84:	fee7eae3          	bltu	a5,a4,80004c78 <__mem_free+0x2c>
    80004c88:	fee6f8e3          	bgeu	a3,a4,80004c78 <__mem_free+0x2c>
    80004c8c:	ff852803          	lw	a6,-8(a0)
    80004c90:	02081613          	slli	a2,a6,0x20
    80004c94:	01c65613          	srli	a2,a2,0x1c
    80004c98:	00c68633          	add	a2,a3,a2
    80004c9c:	02c70a63          	beq	a4,a2,80004cd0 <__mem_free+0x84>
    80004ca0:	fee53823          	sd	a4,-16(a0)
    80004ca4:	0087a503          	lw	a0,8(a5)
    80004ca8:	02051613          	slli	a2,a0,0x20
    80004cac:	01c65613          	srli	a2,a2,0x1c
    80004cb0:	00c78633          	add	a2,a5,a2
    80004cb4:	04c68263          	beq	a3,a2,80004cf8 <__mem_free+0xac>
    80004cb8:	00813403          	ld	s0,8(sp)
    80004cbc:	00d7b023          	sd	a3,0(a5)
    80004cc0:	00f5b023          	sd	a5,0(a1)
    80004cc4:	00000513          	li	a0,0
    80004cc8:	01010113          	addi	sp,sp,16
    80004ccc:	00008067          	ret
    80004cd0:	00872603          	lw	a2,8(a4)
    80004cd4:	00073703          	ld	a4,0(a4)
    80004cd8:	0106083b          	addw	a6,a2,a6
    80004cdc:	ff052c23          	sw	a6,-8(a0)
    80004ce0:	fee53823          	sd	a4,-16(a0)
    80004ce4:	0087a503          	lw	a0,8(a5)
    80004ce8:	02051613          	slli	a2,a0,0x20
    80004cec:	01c65613          	srli	a2,a2,0x1c
    80004cf0:	00c78633          	add	a2,a5,a2
    80004cf4:	fcc692e3          	bne	a3,a2,80004cb8 <__mem_free+0x6c>
    80004cf8:	00813403          	ld	s0,8(sp)
    80004cfc:	0105053b          	addw	a0,a0,a6
    80004d00:	00a7a423          	sw	a0,8(a5)
    80004d04:	00e7b023          	sd	a4,0(a5)
    80004d08:	00f5b023          	sd	a5,0(a1)
    80004d0c:	00000513          	li	a0,0
    80004d10:	01010113          	addi	sp,sp,16
    80004d14:	00008067          	ret

0000000080004d18 <__mem_alloc>:
    80004d18:	fc010113          	addi	sp,sp,-64
    80004d1c:	02813823          	sd	s0,48(sp)
    80004d20:	02913423          	sd	s1,40(sp)
    80004d24:	03213023          	sd	s2,32(sp)
    80004d28:	01513423          	sd	s5,8(sp)
    80004d2c:	02113c23          	sd	ra,56(sp)
    80004d30:	01313c23          	sd	s3,24(sp)
    80004d34:	01413823          	sd	s4,16(sp)
    80004d38:	01613023          	sd	s6,0(sp)
    80004d3c:	04010413          	addi	s0,sp,64
    80004d40:	00002a97          	auipc	s5,0x2
    80004d44:	228a8a93          	addi	s5,s5,552 # 80006f68 <freep>
    80004d48:	00f50913          	addi	s2,a0,15
    80004d4c:	000ab683          	ld	a3,0(s5)
    80004d50:	00495913          	srli	s2,s2,0x4
    80004d54:	0019049b          	addiw	s1,s2,1
    80004d58:	00048913          	mv	s2,s1
    80004d5c:	0c068c63          	beqz	a3,80004e34 <__mem_alloc+0x11c>
    80004d60:	0006b503          	ld	a0,0(a3)
    80004d64:	00852703          	lw	a4,8(a0)
    80004d68:	10977063          	bgeu	a4,s1,80004e68 <__mem_alloc+0x150>
    80004d6c:	000017b7          	lui	a5,0x1
    80004d70:	0009099b          	sext.w	s3,s2
    80004d74:	0af4e863          	bltu	s1,a5,80004e24 <__mem_alloc+0x10c>
    80004d78:	02099a13          	slli	s4,s3,0x20
    80004d7c:	01ca5a13          	srli	s4,s4,0x1c
    80004d80:	fff00b13          	li	s6,-1
    80004d84:	0100006f          	j	80004d94 <__mem_alloc+0x7c>
    80004d88:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80004d8c:	00852703          	lw	a4,8(a0)
    80004d90:	04977463          	bgeu	a4,s1,80004dd8 <__mem_alloc+0xc0>
    80004d94:	00050793          	mv	a5,a0
    80004d98:	fea698e3          	bne	a3,a0,80004d88 <__mem_alloc+0x70>
    80004d9c:	000a0513          	mv	a0,s4
    80004da0:	00000097          	auipc	ra,0x0
    80004da4:	1f0080e7          	jalr	496(ra) # 80004f90 <kvmincrease>
    80004da8:	00050793          	mv	a5,a0
    80004dac:	01050513          	addi	a0,a0,16
    80004db0:	07678e63          	beq	a5,s6,80004e2c <__mem_alloc+0x114>
    80004db4:	0137a423          	sw	s3,8(a5)
    80004db8:	00000097          	auipc	ra,0x0
    80004dbc:	e94080e7          	jalr	-364(ra) # 80004c4c <__mem_free>
    80004dc0:	000ab783          	ld	a5,0(s5)
    80004dc4:	06078463          	beqz	a5,80004e2c <__mem_alloc+0x114>
    80004dc8:	0007b503          	ld	a0,0(a5)
    80004dcc:	00078693          	mv	a3,a5
    80004dd0:	00852703          	lw	a4,8(a0)
    80004dd4:	fc9760e3          	bltu	a4,s1,80004d94 <__mem_alloc+0x7c>
    80004dd8:	08e48263          	beq	s1,a4,80004e5c <__mem_alloc+0x144>
    80004ddc:	4127073b          	subw	a4,a4,s2
    80004de0:	02071693          	slli	a3,a4,0x20
    80004de4:	01c6d693          	srli	a3,a3,0x1c
    80004de8:	00e52423          	sw	a4,8(a0)
    80004dec:	00d50533          	add	a0,a0,a3
    80004df0:	01252423          	sw	s2,8(a0)
    80004df4:	00fab023          	sd	a5,0(s5)
    80004df8:	01050513          	addi	a0,a0,16
    80004dfc:	03813083          	ld	ra,56(sp)
    80004e00:	03013403          	ld	s0,48(sp)
    80004e04:	02813483          	ld	s1,40(sp)
    80004e08:	02013903          	ld	s2,32(sp)
    80004e0c:	01813983          	ld	s3,24(sp)
    80004e10:	01013a03          	ld	s4,16(sp)
    80004e14:	00813a83          	ld	s5,8(sp)
    80004e18:	00013b03          	ld	s6,0(sp)
    80004e1c:	04010113          	addi	sp,sp,64
    80004e20:	00008067          	ret
    80004e24:	000019b7          	lui	s3,0x1
    80004e28:	f51ff06f          	j	80004d78 <__mem_alloc+0x60>
    80004e2c:	00000513          	li	a0,0
    80004e30:	fcdff06f          	j	80004dfc <__mem_alloc+0xe4>
    80004e34:	00003797          	auipc	a5,0x3
    80004e38:	3cc78793          	addi	a5,a5,972 # 80008200 <base>
    80004e3c:	00078513          	mv	a0,a5
    80004e40:	00fab023          	sd	a5,0(s5)
    80004e44:	00f7b023          	sd	a5,0(a5)
    80004e48:	00000713          	li	a4,0
    80004e4c:	00003797          	auipc	a5,0x3
    80004e50:	3a07ae23          	sw	zero,956(a5) # 80008208 <base+0x8>
    80004e54:	00050693          	mv	a3,a0
    80004e58:	f11ff06f          	j	80004d68 <__mem_alloc+0x50>
    80004e5c:	00053703          	ld	a4,0(a0)
    80004e60:	00e7b023          	sd	a4,0(a5)
    80004e64:	f91ff06f          	j	80004df4 <__mem_alloc+0xdc>
    80004e68:	00068793          	mv	a5,a3
    80004e6c:	f6dff06f          	j	80004dd8 <__mem_alloc+0xc0>

0000000080004e70 <__putc>:
    80004e70:	fe010113          	addi	sp,sp,-32
    80004e74:	00813823          	sd	s0,16(sp)
    80004e78:	00113c23          	sd	ra,24(sp)
    80004e7c:	02010413          	addi	s0,sp,32
    80004e80:	00050793          	mv	a5,a0
    80004e84:	fef40593          	addi	a1,s0,-17
    80004e88:	00100613          	li	a2,1
    80004e8c:	00000513          	li	a0,0
    80004e90:	fef407a3          	sb	a5,-17(s0)
    80004e94:	fffff097          	auipc	ra,0xfffff
    80004e98:	918080e7          	jalr	-1768(ra) # 800037ac <console_write>
    80004e9c:	01813083          	ld	ra,24(sp)
    80004ea0:	01013403          	ld	s0,16(sp)
    80004ea4:	02010113          	addi	sp,sp,32
    80004ea8:	00008067          	ret

0000000080004eac <__getc>:
    80004eac:	fe010113          	addi	sp,sp,-32
    80004eb0:	00813823          	sd	s0,16(sp)
    80004eb4:	00113c23          	sd	ra,24(sp)
    80004eb8:	02010413          	addi	s0,sp,32
    80004ebc:	fe840593          	addi	a1,s0,-24
    80004ec0:	00100613          	li	a2,1
    80004ec4:	00000513          	li	a0,0
    80004ec8:	fffff097          	auipc	ra,0xfffff
    80004ecc:	8c4080e7          	jalr	-1852(ra) # 8000378c <console_read>
    80004ed0:	fe844503          	lbu	a0,-24(s0)
    80004ed4:	01813083          	ld	ra,24(sp)
    80004ed8:	01013403          	ld	s0,16(sp)
    80004edc:	02010113          	addi	sp,sp,32
    80004ee0:	00008067          	ret

0000000080004ee4 <console_handler>:
    80004ee4:	fe010113          	addi	sp,sp,-32
    80004ee8:	00813823          	sd	s0,16(sp)
    80004eec:	00113c23          	sd	ra,24(sp)
    80004ef0:	00913423          	sd	s1,8(sp)
    80004ef4:	02010413          	addi	s0,sp,32
    80004ef8:	14202773          	csrr	a4,scause
    80004efc:	100027f3          	csrr	a5,sstatus
    80004f00:	0027f793          	andi	a5,a5,2
    80004f04:	06079e63          	bnez	a5,80004f80 <console_handler+0x9c>
    80004f08:	00074c63          	bltz	a4,80004f20 <console_handler+0x3c>
    80004f0c:	01813083          	ld	ra,24(sp)
    80004f10:	01013403          	ld	s0,16(sp)
    80004f14:	00813483          	ld	s1,8(sp)
    80004f18:	02010113          	addi	sp,sp,32
    80004f1c:	00008067          	ret
    80004f20:	0ff77713          	andi	a4,a4,255
    80004f24:	00900793          	li	a5,9
    80004f28:	fef712e3          	bne	a4,a5,80004f0c <console_handler+0x28>
    80004f2c:	ffffe097          	auipc	ra,0xffffe
    80004f30:	4b8080e7          	jalr	1208(ra) # 800033e4 <plic_claim>
    80004f34:	00a00793          	li	a5,10
    80004f38:	00050493          	mv	s1,a0
    80004f3c:	02f50c63          	beq	a0,a5,80004f74 <console_handler+0x90>
    80004f40:	fc0506e3          	beqz	a0,80004f0c <console_handler+0x28>
    80004f44:	00050593          	mv	a1,a0
    80004f48:	00001517          	auipc	a0,0x1
    80004f4c:	46050513          	addi	a0,a0,1120 # 800063a8 <_ZZ12printIntegermE6digits+0xe0>
    80004f50:	fffff097          	auipc	ra,0xfffff
    80004f54:	8d8080e7          	jalr	-1832(ra) # 80003828 <__printf>
    80004f58:	01013403          	ld	s0,16(sp)
    80004f5c:	01813083          	ld	ra,24(sp)
    80004f60:	00048513          	mv	a0,s1
    80004f64:	00813483          	ld	s1,8(sp)
    80004f68:	02010113          	addi	sp,sp,32
    80004f6c:	ffffe317          	auipc	t1,0xffffe
    80004f70:	4b030067          	jr	1200(t1) # 8000341c <plic_complete>
    80004f74:	fffff097          	auipc	ra,0xfffff
    80004f78:	1bc080e7          	jalr	444(ra) # 80004130 <uartintr>
    80004f7c:	fddff06f          	j	80004f58 <console_handler+0x74>
    80004f80:	00001517          	auipc	a0,0x1
    80004f84:	52850513          	addi	a0,a0,1320 # 800064a8 <digits+0x78>
    80004f88:	fffff097          	auipc	ra,0xfffff
    80004f8c:	844080e7          	jalr	-1980(ra) # 800037cc <panic>

0000000080004f90 <kvmincrease>:
    80004f90:	fe010113          	addi	sp,sp,-32
    80004f94:	01213023          	sd	s2,0(sp)
    80004f98:	00001937          	lui	s2,0x1
    80004f9c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004fa0:	00813823          	sd	s0,16(sp)
    80004fa4:	00113c23          	sd	ra,24(sp)
    80004fa8:	00913423          	sd	s1,8(sp)
    80004fac:	02010413          	addi	s0,sp,32
    80004fb0:	01250933          	add	s2,a0,s2
    80004fb4:	00c95913          	srli	s2,s2,0xc
    80004fb8:	02090863          	beqz	s2,80004fe8 <kvmincrease+0x58>
    80004fbc:	00000493          	li	s1,0
    80004fc0:	00148493          	addi	s1,s1,1
    80004fc4:	fffff097          	auipc	ra,0xfffff
    80004fc8:	4bc080e7          	jalr	1212(ra) # 80004480 <kalloc>
    80004fcc:	fe991ae3          	bne	s2,s1,80004fc0 <kvmincrease+0x30>
    80004fd0:	01813083          	ld	ra,24(sp)
    80004fd4:	01013403          	ld	s0,16(sp)
    80004fd8:	00813483          	ld	s1,8(sp)
    80004fdc:	00013903          	ld	s2,0(sp)
    80004fe0:	02010113          	addi	sp,sp,32
    80004fe4:	00008067          	ret
    80004fe8:	01813083          	ld	ra,24(sp)
    80004fec:	01013403          	ld	s0,16(sp)
    80004ff0:	00813483          	ld	s1,8(sp)
    80004ff4:	00013903          	ld	s2,0(sp)
    80004ff8:	00000513          	li	a0,0
    80004ffc:	02010113          	addi	sp,sp,32
    80005000:	00008067          	ret
	...

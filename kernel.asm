
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
    8000001c:	05c020ef          	jal	ra,80002078 <start>

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
    80001084:	465000ef          	jal	ra,80001ce8 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011e0:	309000ef          	jal	ra,80001ce8 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012f0:	2f5000ef          	jal	ra,80001de4 <_ZN5Riscv20handleTimerInterruptEv>

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
    80001400:	1bd000ef          	jal	ra,80001dbc <_ZN5Riscv22handleConsoleInterruptEv>

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

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800014b8:	00050513          	mv	a0,a0
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
    80001560:	6cc080e7          	jalr	1740(ra) # 80001c28 <_Znwm>
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
    800015fc:	680080e7          	jalr	1664(ra) # 80001c78 <_ZdlPv>
        Scheduler::put(tcb);
    80001600:	00048513          	mv	a0,s1
    80001604:	00001097          	auipc	ra,0x1
    80001608:	8a8080e7          	jalr	-1880(ra) # 80001eac <_ZN9Scheduler3putEP3TCB>
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
    800016c8:	93c50513          	addi	a0,a0,-1732 # 80005000 <kvmincrease+0xb80>
    800016cc:	00001097          	auipc	ra,0x1
    800016d0:	880080e7          	jalr	-1920(ra) # 80001f4c <_Z11printStringPKc>
        printInteger(i);
    800016d4:	00048513          	mv	a0,s1
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	8e4080e7          	jalr	-1820(ra) # 80001fbc <_Z12printIntegerm>
        printString("\n");
    800016e0:	00004517          	auipc	a0,0x4
    800016e4:	9b050513          	addi	a0,a0,-1616 # 80005090 <kvmincrease+0xc10>
    800016e8:	00001097          	auipc	ra,0x1
    800016ec:	864080e7          	jalr	-1948(ra) # 80001f4c <_Z11printStringPKc>
    for (; i < 3; i++)
    800016f0:	0014849b          	addiw	s1,s1,1
    800016f4:	0ff4f493          	andi	s1,s1,255
    800016f8:	00200793          	li	a5,2
    800016fc:	fc97f4e3          	bgeu	a5,s1,800016c4 <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001700:	00004517          	auipc	a0,0x4
    80001704:	90850513          	addi	a0,a0,-1784 # 80005008 <kvmincrease+0xb88>
    80001708:	00001097          	auipc	ra,0x1
    8000170c:	844080e7          	jalr	-1980(ra) # 80001f4c <_Z11printStringPKc>
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
    80001724:	8f850513          	addi	a0,a0,-1800 # 80005018 <kvmincrease+0xb98>
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	824080e7          	jalr	-2012(ra) # 80001f4c <_Z11printStringPKc>
    printInteger(t1);
    80001730:	00090513          	mv	a0,s2
    80001734:	00001097          	auipc	ra,0x1
    80001738:	888080e7          	jalr	-1912(ra) # 80001fbc <_Z12printIntegerm>
    printString("\n");
    8000173c:	00004517          	auipc	a0,0x4
    80001740:	95450513          	addi	a0,a0,-1708 # 80005090 <kvmincrease+0xc10>
    80001744:	00001097          	auipc	ra,0x1
    80001748:	808080e7          	jalr	-2040(ra) # 80001f4c <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    8000174c:	01400513          	li	a0,20
    80001750:	00000097          	auipc	ra,0x0
    80001754:	ee4080e7          	jalr	-284(ra) # 80001634 <_ZL9fibonaccim>
    80001758:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    8000175c:	00004517          	auipc	a0,0x4
    80001760:	8c450513          	addi	a0,a0,-1852 # 80005020 <kvmincrease+0xba0>
    80001764:	00000097          	auipc	ra,0x0
    80001768:	7e8080e7          	jalr	2024(ra) # 80001f4c <_Z11printStringPKc>
    printInteger(result);
    8000176c:	00090513          	mv	a0,s2
    80001770:	00001097          	auipc	ra,0x1
    80001774:	84c080e7          	jalr	-1972(ra) # 80001fbc <_Z12printIntegerm>
    printString("\n");
    80001778:	00004517          	auipc	a0,0x4
    8000177c:	91850513          	addi	a0,a0,-1768 # 80005090 <kvmincrease+0xc10>
    80001780:	00000097          	auipc	ra,0x0
    80001784:	7cc080e7          	jalr	1996(ra) # 80001f4c <_Z11printStringPKc>
    80001788:	0380006f          	j	800017c0 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    8000178c:	00004517          	auipc	a0,0x4
    80001790:	87450513          	addi	a0,a0,-1932 # 80005000 <kvmincrease+0xb80>
    80001794:	00000097          	auipc	ra,0x0
    80001798:	7b8080e7          	jalr	1976(ra) # 80001f4c <_Z11printStringPKc>
        printInteger(i);
    8000179c:	00048513          	mv	a0,s1
    800017a0:	00001097          	auipc	ra,0x1
    800017a4:	81c080e7          	jalr	-2020(ra) # 80001fbc <_Z12printIntegerm>
        printString("\n");
    800017a8:	00004517          	auipc	a0,0x4
    800017ac:	8e850513          	addi	a0,a0,-1816 # 80005090 <kvmincrease+0xc10>
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	79c080e7          	jalr	1948(ra) # 80001f4c <_Z11printStringPKc>
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
    80001814:	82050513          	addi	a0,a0,-2016 # 80005030 <kvmincrease+0xbb0>
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	734080e7          	jalr	1844(ra) # 80001f4c <_Z11printStringPKc>
        printInteger(i);
    80001820:	00048513          	mv	a0,s1
    80001824:	00000097          	auipc	ra,0x0
    80001828:	798080e7          	jalr	1944(ra) # 80001fbc <_Z12printIntegerm>
        printString("\n");
    8000182c:	00004517          	auipc	a0,0x4
    80001830:	86450513          	addi	a0,a0,-1948 # 80005090 <kvmincrease+0xc10>
    80001834:	00000097          	auipc	ra,0x0
    80001838:	718080e7          	jalr	1816(ra) # 80001f4c <_Z11printStringPKc>
    for (; i < 13; i++)
    8000183c:	0014849b          	addiw	s1,s1,1
    80001840:	0ff4f493          	andi	s1,s1,255
    80001844:	00c00793          	li	a5,12
    80001848:	fc97f4e3          	bgeu	a5,s1,80001810 <_Z11workerBodyBPv+0x28>
    }

    printString("B: yield\n");
    8000184c:	00003517          	auipc	a0,0x3
    80001850:	7ec50513          	addi	a0,a0,2028 # 80005038 <kvmincrease+0xbb8>
    80001854:	00000097          	auipc	ra,0x0
    80001858:	6f8080e7          	jalr	1784(ra) # 80001f4c <_Z11printStringPKc>
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
    8000187c:	7d050513          	addi	a0,a0,2000 # 80005048 <kvmincrease+0xbc8>
    80001880:	00000097          	auipc	ra,0x0
    80001884:	6cc080e7          	jalr	1740(ra) # 80001f4c <_Z11printStringPKc>
    printInteger(result);
    80001888:	00090513          	mv	a0,s2
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	730080e7          	jalr	1840(ra) # 80001fbc <_Z12printIntegerm>
    printString("\n");
    80001894:	00003517          	auipc	a0,0x3
    80001898:	7fc50513          	addi	a0,a0,2044 # 80005090 <kvmincrease+0xc10>
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	6b0080e7          	jalr	1712(ra) # 80001f4c <_Z11printStringPKc>
    800018a4:	0380006f          	j	800018dc <_Z11workerBodyBPv+0xf4>

    for (; i < 16; i++)
    {
        printString("B: i=");
    800018a8:	00003517          	auipc	a0,0x3
    800018ac:	78850513          	addi	a0,a0,1928 # 80005030 <kvmincrease+0xbb0>
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	69c080e7          	jalr	1692(ra) # 80001f4c <_Z11printStringPKc>
        printInteger(i);
    800018b8:	00048513          	mv	a0,s1
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	700080e7          	jalr	1792(ra) # 80001fbc <_Z12printIntegerm>
        printString("\n");
    800018c4:	00003517          	auipc	a0,0x3
    800018c8:	7cc50513          	addi	a0,a0,1996 # 80005090 <kvmincrease+0xc10>
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	680080e7          	jalr	1664(ra) # 80001f4c <_Z11printStringPKc>
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
    80001928:	10c080e7          	jalr	268(ra) # 80001a30 <_ZN3TCB12createThreadEPFvPvES0_>
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

    thread_create(&threads[1], workerBodyA, nullptr);
    80001954:	00000613          	li	a2,0
    80001958:	00004597          	auipc	a1,0x4
    8000195c:	eb85b583          	ld	a1,-328(a1) # 80005810 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001960:	fc040513          	addi	a0,s0,-64
    80001964:	00000097          	auipc	ra,0x0
    80001968:	b34080e7          	jalr	-1228(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000196c:	00003517          	auipc	a0,0x3
    80001970:	6ec50513          	addi	a0,a0,1772 # 80005058 <kvmincrease+0xbd8>
    80001974:	00000097          	auipc	ra,0x0
    80001978:	5d8080e7          	jalr	1496(ra) # 80001f4c <_Z11printStringPKc>
    thread_create(&threads[2], workerBodyB, threads[1]);
    8000197c:	fc043603          	ld	a2,-64(s0)
    80001980:	00004597          	auipc	a1,0x4
    80001984:	ea05b583          	ld	a1,-352(a1) # 80005820 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001988:	fc840513          	addi	a0,s0,-56
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	b0c080e7          	jalr	-1268(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80001994:	00003517          	auipc	a0,0x3
    80001998:	6dc50513          	addi	a0,a0,1756 # 80005070 <kvmincrease+0xbf0>
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	5b0080e7          	jalr	1456(ra) # 80001f4c <_Z11printStringPKc>
    800019a4:	00c0006f          	j	800019b0 <main+0xac>


    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        thread_dispatch();
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	b24080e7          	jalr	-1244(ra) # 800014cc <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    800019b0:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    800019b4:	0207c783          	lbu	a5,32(a5)
    800019b8:	fe0788e3          	beqz	a5,800019a8 <main+0xa4>
             threads[2]->isFinished()))
    800019bc:	fc843783          	ld	a5,-56(s0)
    800019c0:	0207c783          	lbu	a5,32(a5)
    while (!(threads[1]->isFinished() &&
    800019c4:	fe0782e3          	beqz	a5,800019a8 <main+0xa4>
    800019c8:	fb840493          	addi	s1,s0,-72
    800019cc:	0140006f          	j	800019e0 <main+0xdc>
    }

    for (auto &thread: threads)
    {
        delete thread;
    800019d0:	00090513          	mv	a0,s2
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	2a4080e7          	jalr	676(ra) # 80001c78 <_ZdlPv>
    for (auto &thread: threads)
    800019dc:	00848493          	addi	s1,s1,8
    800019e0:	fe040793          	addi	a5,s0,-32
    800019e4:	02f48063          	beq	s1,a5,80001a04 <main+0x100>
        delete thread;
    800019e8:	0004b903          	ld	s2,0(s1)
    800019ec:	fe0908e3          	beqz	s2,800019dc <main+0xd8>
    ~TCB() { delete[] stack; }
    800019f0:	00893503          	ld	a0,8(s2)
    800019f4:	fc050ee3          	beqz	a0,800019d0 <main+0xcc>
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	2a8080e7          	jalr	680(ra) # 80001ca0 <_ZdaPv>
    80001a00:	fd1ff06f          	j	800019d0 <main+0xcc>
    }
    printString("Finished\n");
    80001a04:	00003517          	auipc	a0,0x3
    80001a08:	68450513          	addi	a0,a0,1668 # 80005088 <kvmincrease+0xc08>
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	540080e7          	jalr	1344(ra) # 80001f4c <_Z11printStringPKc>

    return 0;
}
    80001a14:	00000513          	li	a0,0
    80001a18:	04813083          	ld	ra,72(sp)
    80001a1c:	04013403          	ld	s0,64(sp)
    80001a20:	03813483          	ld	s1,56(sp)
    80001a24:	03013903          	ld	s2,48(sp)
    80001a28:	05010113          	addi	sp,sp,80
    80001a2c:	00008067          	ret

0000000080001a30 <_ZN3TCB12createThreadEPFvPvES0_>:

//uint64 TCB::timeSliceCounter = 0;
//uint64 TCB::timeSliceCounterTest = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    80001a30:	fd010113          	addi	sp,sp,-48
    80001a34:	02113423          	sd	ra,40(sp)
    80001a38:	02813023          	sd	s0,32(sp)
    80001a3c:	00913c23          	sd	s1,24(sp)
    80001a40:	01213823          	sd	s2,16(sp)
    80001a44:	01313423          	sd	s3,8(sp)
    80001a48:	03010413          	addi	s0,sp,48
    80001a4c:	00050913          	mv	s2,a0
    80001a50:	00058993          	mv	s3,a1
    return new TCB(body, arg);
    80001a54:	03000513          	li	a0,48
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	1d0080e7          	jalr	464(ra) # 80001c28 <_Znwm>
    80001a60:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            arg(arg)
    80001a64:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001a68:	00090a63          	beqz	s2,80001a7c <_ZN3TCB12createThreadEPFvPvES0_+0x4c>
    80001a6c:	00002537          	lui	a0,0x2
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	1e0080e7          	jalr	480(ra) # 80001c50 <_Znam>
    80001a78:	0080006f          	j	80001a80 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80001a7c:	00000513          	li	a0,0
            arg(arg)
    80001a80:	00a4b423          	sd	a0,8(s1)
    80001a84:	00000797          	auipc	a5,0x0
    80001a88:	0a078793          	addi	a5,a5,160 # 80001b24 <_ZN3TCB13threadWrapperEv>
    80001a8c:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001a90:	02050663          	beqz	a0,80001abc <_ZN3TCB12createThreadEPFvPvES0_+0x8c>
    80001a94:	000027b7          	lui	a5,0x2
    80001a98:	00f507b3          	add	a5,a0,a5
            arg(arg)
    80001a9c:	00f4bc23          	sd	a5,24(s1)
    80001aa0:	02048023          	sb	zero,32(s1)
    80001aa4:	0334b423          	sd	s3,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001aa8:	02090c63          	beqz	s2,80001ae0 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    80001aac:	00048513          	mv	a0,s1
    80001ab0:	00000097          	auipc	ra,0x0
    80001ab4:	3fc080e7          	jalr	1020(ra) # 80001eac <_ZN9Scheduler3putEP3TCB>
    80001ab8:	0280006f          	j	80001ae0 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001abc:	00000793          	li	a5,0
    80001ac0:	fddff06f          	j	80001a9c <_ZN3TCB12createThreadEPFvPvES0_+0x6c>
    80001ac4:	00050913          	mv	s2,a0
    80001ac8:	00048513          	mv	a0,s1
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	1ac080e7          	jalr	428(ra) # 80001c78 <_ZdlPv>
    80001ad4:	00090513          	mv	a0,s2
    80001ad8:	00005097          	auipc	ra,0x5
    80001adc:	e80080e7          	jalr	-384(ra) # 80006958 <_Unwind_Resume>
}
    80001ae0:	00048513          	mv	a0,s1
    80001ae4:	02813083          	ld	ra,40(sp)
    80001ae8:	02013403          	ld	s0,32(sp)
    80001aec:	01813483          	ld	s1,24(sp)
    80001af0:	01013903          	ld	s2,16(sp)
    80001af4:	00813983          	ld	s3,8(sp)
    80001af8:	03010113          	addi	sp,sp,48
    80001afc:	00008067          	ret

0000000080001b00 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001b00:	ff010113          	addi	sp,sp,-16
    80001b04:	00813423          	sd	s0,8(sp)
    80001b08:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    80001b0c:	01300793          	li	a5,19
    80001b10:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    80001b14:	00000073          	ecall
}
    80001b18:	00813403          	ld	s0,8(sp)
    80001b1c:	01010113          	addi	sp,sp,16
    80001b20:	00008067          	ret

0000000080001b24 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001b24:	fe010113          	addi	sp,sp,-32
    80001b28:	00113c23          	sd	ra,24(sp)
    80001b2c:	00813823          	sd	s0,16(sp)
    80001b30:	00913423          	sd	s1,8(sp)
    80001b34:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	190080e7          	jalr	400(ra) # 80001cc8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001b40:	00004497          	auipc	s1,0x4
    80001b44:	d3048493          	addi	s1,s1,-720 # 80005870 <_ZN3TCB7runningE>
    80001b48:	0004b783          	ld	a5,0(s1)
    80001b4c:	0007b703          	ld	a4,0(a5) # 2000 <_entry-0x7fffe000>
    80001b50:	0287b503          	ld	a0,40(a5)
    80001b54:	000700e7          	jalr	a4
    running->setFinished(true);
    80001b58:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001b5c:	00100713          	li	a4,1
    80001b60:	02e78023          	sb	a4,32(a5)
    TCB::yield();
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	f9c080e7          	jalr	-100(ra) # 80001b00 <_ZN3TCB5yieldEv>
}
    80001b6c:	01813083          	ld	ra,24(sp)
    80001b70:	01013403          	ld	s0,16(sp)
    80001b74:	00813483          	ld	s1,8(sp)
    80001b78:	02010113          	addi	sp,sp,32
    80001b7c:	00008067          	ret

0000000080001b80 <_ZN3TCB8dispatchEv>:
{
    80001b80:	fe010113          	addi	sp,sp,-32
    80001b84:	00113c23          	sd	ra,24(sp)
    80001b88:	00813823          	sd	s0,16(sp)
    80001b8c:	00913423          	sd	s1,8(sp)
    80001b90:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001b94:	00004497          	auipc	s1,0x4
    80001b98:	cdc4b483          	ld	s1,-804(s1) # 80005870 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001b9c:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001ba0:	02078c63          	beqz	a5,80001bd8 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	2a0080e7          	jalr	672(ra) # 80001e44 <_ZN9Scheduler3getEv>
    80001bac:	00004797          	auipc	a5,0x4
    80001bb0:	cca7b223          	sd	a0,-828(a5) # 80005870 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001bb4:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001bb8:	01048513          	addi	a0,s1,16
    80001bbc:	fffff097          	auipc	ra,0xfffff
    80001bc0:	554080e7          	jalr	1364(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001bc4:	01813083          	ld	ra,24(sp)
    80001bc8:	01013403          	ld	s0,16(sp)
    80001bcc:	00813483          	ld	s1,8(sp)
    80001bd0:	02010113          	addi	sp,sp,32
    80001bd4:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001bd8:	00048513          	mv	a0,s1
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	2d0080e7          	jalr	720(ra) # 80001eac <_ZN9Scheduler3putEP3TCB>
    80001be4:	fc1ff06f          	j	80001ba4 <_ZN3TCB8dispatchEv+0x24>

0000000080001be8 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB* handle) {
    80001be8:	fe010113          	addi	sp,sp,-32
    80001bec:	00113c23          	sd	ra,24(sp)
    80001bf0:	00813823          	sd	s0,16(sp)
    80001bf4:	00913423          	sd	s1,8(sp)
    80001bf8:	02010413          	addi	s0,sp,32
    80001bfc:	00050493          	mv	s1,a0
    80001c00:	0204c783          	lbu	a5,32(s1)
    while(!handle->isFinished()) {
    80001c04:	00079863          	bnez	a5,80001c14 <_ZN3TCB4joinEPS_+0x2c>
        TCB::dispatch();
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	f78080e7          	jalr	-136(ra) # 80001b80 <_ZN3TCB8dispatchEv>
    while(!handle->isFinished()) {
    80001c10:	ff1ff06f          	j	80001c00 <_ZN3TCB4joinEPS_+0x18>
    }
}
    80001c14:	01813083          	ld	ra,24(sp)
    80001c18:	01013403          	ld	s0,16(sp)
    80001c1c:	00813483          	ld	s1,8(sp)
    80001c20:	02010113          	addi	sp,sp,32
    80001c24:	00008067          	ret

0000000080001c28 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001c28:	ff010113          	addi	sp,sp,-16
    80001c2c:	00113423          	sd	ra,8(sp)
    80001c30:	00813023          	sd	s0,0(sp)
    80001c34:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001c38:	00002097          	auipc	ra,0x2
    80001c3c:	5d0080e7          	jalr	1488(ra) # 80004208 <__mem_alloc>
}
    80001c40:	00813083          	ld	ra,8(sp)
    80001c44:	00013403          	ld	s0,0(sp)
    80001c48:	01010113          	addi	sp,sp,16
    80001c4c:	00008067          	ret

0000000080001c50 <_Znam>:

void *operator new[](size_t n)
{
    80001c50:	ff010113          	addi	sp,sp,-16
    80001c54:	00113423          	sd	ra,8(sp)
    80001c58:	00813023          	sd	s0,0(sp)
    80001c5c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001c60:	00002097          	auipc	ra,0x2
    80001c64:	5a8080e7          	jalr	1448(ra) # 80004208 <__mem_alloc>
}
    80001c68:	00813083          	ld	ra,8(sp)
    80001c6c:	00013403          	ld	s0,0(sp)
    80001c70:	01010113          	addi	sp,sp,16
    80001c74:	00008067          	ret

0000000080001c78 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001c78:	ff010113          	addi	sp,sp,-16
    80001c7c:	00113423          	sd	ra,8(sp)
    80001c80:	00813023          	sd	s0,0(sp)
    80001c84:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001c88:	00002097          	auipc	ra,0x2
    80001c8c:	4b4080e7          	jalr	1204(ra) # 8000413c <__mem_free>
}
    80001c90:	00813083          	ld	ra,8(sp)
    80001c94:	00013403          	ld	s0,0(sp)
    80001c98:	01010113          	addi	sp,sp,16
    80001c9c:	00008067          	ret

0000000080001ca0 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001ca0:	ff010113          	addi	sp,sp,-16
    80001ca4:	00113423          	sd	ra,8(sp)
    80001ca8:	00813023          	sd	s0,0(sp)
    80001cac:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001cb0:	00002097          	auipc	ra,0x2
    80001cb4:	48c080e7          	jalr	1164(ra) # 8000413c <__mem_free>
    80001cb8:	00813083          	ld	ra,8(sp)
    80001cbc:	00013403          	ld	s0,0(sp)
    80001cc0:	01010113          	addi	sp,sp,16
    80001cc4:	00008067          	ret

0000000080001cc8 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    80001cc8:	ff010113          	addi	sp,sp,-16
    80001ccc:	00813423          	sd	s0,8(sp)
    80001cd0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001cd4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001cd8:	10200073          	sret
}
    80001cdc:	00813403          	ld	s0,8(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void*);

void Riscv::handleSupervisorTrap()
{
    80001ce8:	fb010113          	addi	sp,sp,-80
    80001cec:	04113423          	sd	ra,72(sp)
    80001cf0:	04813023          	sd	s0,64(sp)
    80001cf4:	02913c23          	sd	s1,56(sp)
    80001cf8:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001cfc:	142027f3          	csrr	a5,scause
    80001d00:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001d04:	fc043783          	ld	a5,-64(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001d08:	ff878793          	addi	a5,a5,-8
    80001d0c:	00100713          	li	a4,1
    80001d10:	00f77c63          	bgeu	a4,a5,80001d28 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    else
    {
        // unexpected trap cause
        // Ovde se ulazi ako se desi neki interrupt tabele
    }
}
    80001d14:	04813083          	ld	ra,72(sp)
    80001d18:	04013403          	ld	s0,64(sp)
    80001d1c:	03813483          	ld	s1,56(sp)
    80001d20:	05010113          	addi	sp,sp,80
    80001d24:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d28:	141027f3          	csrr	a5,sepc
    80001d2c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001d30:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001d34:	00478793          	addi	a5,a5,4
    80001d38:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d3c:	100027f3          	csrr	a5,sstatus
    80001d40:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001d44:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80001d48:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001d4c:	00050793          	mv	a5,a0
    80001d50:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80001d54:	fc843783          	ld	a5,-56(s0)
        switch (codeOperation) {
    80001d58:	01300713          	li	a4,19
    80001d5c:	04e78263          	beq	a5,a4,80001da0 <_ZN5Riscv20handleSupervisorTrapEv+0xb8>
    80001d60:	01400713          	li	a4,20
    80001d64:	04e78463          	beq	a5,a4,80001dac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
    80001d68:	01100713          	li	a4,17
    80001d6c:	00e78c63          	beq	a5,a4,80001d84 <_ZN5Riscv20handleSupervisorTrapEv+0x9c>
        w_sstatus(sstatus);
    80001d70:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d74:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001d78:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d7c:	14179073          	csrw	sepc,a5
}
    80001d80:	f95ff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    80001d84:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    80001d88:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    80001d8c:	00068593          	mv	a1,a3
                *tcb = TCB::createThread(body, arg);
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	ca0080e7          	jalr	-864(ra) # 80001a30 <_ZN3TCB12createThreadEPFvPvES0_>
    80001d98:	00a4b023          	sd	a0,0(s1)
                break;
    80001d9c:	fd5ff06f          	j	80001d70 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
                TCB::dispatch();
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	de0080e7          	jalr	-544(ra) # 80001b80 <_ZN3TCB8dispatchEv>
                break;
    80001da8:	fc9ff06f          	j	80001d70 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80001dac:	00058513          	mv	a0,a1
                TCB::join(handle);
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	e38080e7          	jalr	-456(ra) # 80001be8 <_ZN3TCB4joinEPS_>
                break;
    80001db8:	fb9ff06f          	j	80001d70 <_ZN5Riscv20handleSupervisorTrapEv+0x88>

0000000080001dbc <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00113423          	sd	ra,8(sp)
    80001dc4:	00813023          	sd	s0,0(sp)
    80001dc8:	01010413          	addi	s0,sp,16
    console_handler();
    80001dcc:	00002097          	auipc	ra,0x2
    80001dd0:	608080e7          	jalr	1544(ra) # 800043d4 <console_handler>
}
    80001dd4:	00813083          	ld	ra,8(sp)
    80001dd8:	00013403          	ld	s0,0(sp)
    80001ddc:	01010113          	addi	sp,sp,16
    80001de0:	00008067          	ret

0000000080001de4 <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    80001de4:	ff010113          	addi	sp,sp,-16
    80001de8:	00813423          	sd	s0,8(sp)
    80001dec:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001df0:	00200793          	li	a5,2
    80001df4:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
    80001df8:	00813403          	ld	s0,8(sp)
    80001dfc:	01010113          	addi	sp,sp,16
    80001e00:	00008067          	ret

0000000080001e04 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001e04:	ff010113          	addi	sp,sp,-16
    80001e08:	00813423          	sd	s0,8(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    80001e10:	00100793          	li	a5,1
    80001e14:	00f50863          	beq	a0,a5,80001e24 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001e18:	00813403          	ld	s0,8(sp)
    80001e1c:	01010113          	addi	sp,sp,16
    80001e20:	00008067          	ret
    80001e24:	000107b7          	lui	a5,0x10
    80001e28:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e2c:	fef596e3          	bne	a1,a5,80001e18 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80001e30:	00004797          	auipc	a5,0x4
    80001e34:	a4878793          	addi	a5,a5,-1464 # 80005878 <_ZN9Scheduler16readyThreadQueueE>
    80001e38:	0007b023          	sd	zero,0(a5)
    80001e3c:	0007b423          	sd	zero,8(a5)
    80001e40:	fd9ff06f          	j	80001e18 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001e44 <_ZN9Scheduler3getEv>:
{
    80001e44:	fe010113          	addi	sp,sp,-32
    80001e48:	00113c23          	sd	ra,24(sp)
    80001e4c:	00813823          	sd	s0,16(sp)
    80001e50:	00913423          	sd	s1,8(sp)
    80001e54:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80001e58:	00004517          	auipc	a0,0x4
    80001e5c:	a2053503          	ld	a0,-1504(a0) # 80005878 <_ZN9Scheduler16readyThreadQueueE>
    80001e60:	04050263          	beqz	a0,80001ea4 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001e64:	00853783          	ld	a5,8(a0)
    80001e68:	00004717          	auipc	a4,0x4
    80001e6c:	a0f73823          	sd	a5,-1520(a4) # 80005878 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001e70:	02078463          	beqz	a5,80001e98 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80001e74:	00053483          	ld	s1,0(a0)
        delete elem;
    80001e78:	00000097          	auipc	ra,0x0
    80001e7c:	e00080e7          	jalr	-512(ra) # 80001c78 <_ZdlPv>
}
    80001e80:	00048513          	mv	a0,s1
    80001e84:	01813083          	ld	ra,24(sp)
    80001e88:	01013403          	ld	s0,16(sp)
    80001e8c:	00813483          	ld	s1,8(sp)
    80001e90:	02010113          	addi	sp,sp,32
    80001e94:	00008067          	ret
        if (!head) { tail = 0; }
    80001e98:	00004797          	auipc	a5,0x4
    80001e9c:	9e07b423          	sd	zero,-1560(a5) # 80005880 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ea0:	fd5ff06f          	j	80001e74 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001ea4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001ea8:	fd9ff06f          	j	80001e80 <_ZN9Scheduler3getEv+0x3c>

0000000080001eac <_ZN9Scheduler3putEP3TCB>:
{
    80001eac:	fe010113          	addi	sp,sp,-32
    80001eb0:	00113c23          	sd	ra,24(sp)
    80001eb4:	00813823          	sd	s0,16(sp)
    80001eb8:	00913423          	sd	s1,8(sp)
    80001ebc:	02010413          	addi	s0,sp,32
    80001ec0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001ec4:	01000513          	li	a0,16
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	d60080e7          	jalr	-672(ra) # 80001c28 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001ed0:	00953023          	sd	s1,0(a0)
    80001ed4:	00053423          	sd	zero,8(a0)
        if (tail)
    80001ed8:	00004797          	auipc	a5,0x4
    80001edc:	9a87b783          	ld	a5,-1624(a5) # 80005880 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ee0:	02078263          	beqz	a5,80001f04 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001ee4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001ee8:	00004797          	auipc	a5,0x4
    80001eec:	98a7bc23          	sd	a0,-1640(a5) # 80005880 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ef0:	01813083          	ld	ra,24(sp)
    80001ef4:	01013403          	ld	s0,16(sp)
    80001ef8:	00813483          	ld	s1,8(sp)
    80001efc:	02010113          	addi	sp,sp,32
    80001f00:	00008067          	ret
            head = tail = elem;
    80001f04:	00004797          	auipc	a5,0x4
    80001f08:	97478793          	addi	a5,a5,-1676 # 80005878 <_ZN9Scheduler16readyThreadQueueE>
    80001f0c:	00a7b423          	sd	a0,8(a5)
    80001f10:	00a7b023          	sd	a0,0(a5)
    80001f14:	fddff06f          	j	80001ef0 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001f18 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001f18:	ff010113          	addi	sp,sp,-16
    80001f1c:	00113423          	sd	ra,8(sp)
    80001f20:	00813023          	sd	s0,0(sp)
    80001f24:	01010413          	addi	s0,sp,16
    80001f28:	000105b7          	lui	a1,0x10
    80001f2c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001f30:	00100513          	li	a0,1
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	ed0080e7          	jalr	-304(ra) # 80001e04 <_Z41__static_initialization_and_destruction_0ii>
    80001f3c:	00813083          	ld	ra,8(sp)
    80001f40:	00013403          	ld	s0,0(sp)
    80001f44:	01010113          	addi	sp,sp,16
    80001f48:	00008067          	ret

0000000080001f4c <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001f4c:	fd010113          	addi	sp,sp,-48
    80001f50:	02113423          	sd	ra,40(sp)
    80001f54:	02813023          	sd	s0,32(sp)
    80001f58:	00913c23          	sd	s1,24(sp)
    80001f5c:	01213823          	sd	s2,16(sp)
    80001f60:	03010413          	addi	s0,sp,48
    80001f64:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f68:	100027f3          	csrr	a5,sstatus
    80001f6c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001f70:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f74:	00200793          	li	a5,2
    80001f78:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001f7c:	0004c503          	lbu	a0,0(s1)
    80001f80:	00050a63          	beqz	a0,80001f94 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001f84:	00002097          	auipc	ra,0x2
    80001f88:	3dc080e7          	jalr	988(ra) # 80004360 <__putc>
        string++;
    80001f8c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001f90:	fedff06f          	j	80001f7c <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f94:	0009091b          	sext.w	s2,s2
    80001f98:	00297913          	andi	s2,s2,2
    80001f9c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001fa0:	10092073          	csrs	sstatus,s2
}
    80001fa4:	02813083          	ld	ra,40(sp)
    80001fa8:	02013403          	ld	s0,32(sp)
    80001fac:	01813483          	ld	s1,24(sp)
    80001fb0:	01013903          	ld	s2,16(sp)
    80001fb4:	03010113          	addi	sp,sp,48
    80001fb8:	00008067          	ret

0000000080001fbc <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001fbc:	fc010113          	addi	sp,sp,-64
    80001fc0:	02113c23          	sd	ra,56(sp)
    80001fc4:	02813823          	sd	s0,48(sp)
    80001fc8:	02913423          	sd	s1,40(sp)
    80001fcc:	03213023          	sd	s2,32(sp)
    80001fd0:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001fd4:	100027f3          	csrr	a5,sstatus
    80001fd8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001fdc:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001fe0:	00200793          	li	a5,2
    80001fe4:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001fe8:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001fec:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001ff0:	00a00613          	li	a2,10
    80001ff4:	02c5773b          	remuw	a4,a0,a2
    80001ff8:	02071693          	slli	a3,a4,0x20
    80001ffc:	0206d693          	srli	a3,a3,0x20
    80002000:	00003717          	auipc	a4,0x3
    80002004:	09870713          	addi	a4,a4,152 # 80005098 <_ZZ12printIntegermE6digits>
    80002008:	00d70733          	add	a4,a4,a3
    8000200c:	00074703          	lbu	a4,0(a4)
    80002010:	fe040693          	addi	a3,s0,-32
    80002014:	009687b3          	add	a5,a3,s1
    80002018:	0014849b          	addiw	s1,s1,1
    8000201c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002020:	0005071b          	sext.w	a4,a0
    80002024:	02c5553b          	divuw	a0,a0,a2
    80002028:	00900793          	li	a5,9
    8000202c:	fce7e2e3          	bltu	a5,a4,80001ff0 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002030:	fff4849b          	addiw	s1,s1,-1
    80002034:	0004ce63          	bltz	s1,80002050 <_Z12printIntegerm+0x94>
    80002038:	fe040793          	addi	a5,s0,-32
    8000203c:	009787b3          	add	a5,a5,s1
    80002040:	ff07c503          	lbu	a0,-16(a5)
    80002044:	00002097          	auipc	ra,0x2
    80002048:	31c080e7          	jalr	796(ra) # 80004360 <__putc>
    8000204c:	fe5ff06f          	j	80002030 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002050:	0009091b          	sext.w	s2,s2
    80002054:	00297913          	andi	s2,s2,2
    80002058:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000205c:	10092073          	csrs	sstatus,s2
    80002060:	03813083          	ld	ra,56(sp)
    80002064:	03013403          	ld	s0,48(sp)
    80002068:	02813483          	ld	s1,40(sp)
    8000206c:	02013903          	ld	s2,32(sp)
    80002070:	04010113          	addi	sp,sp,64
    80002074:	00008067          	ret

0000000080002078 <start>:
    80002078:	ff010113          	addi	sp,sp,-16
    8000207c:	00813423          	sd	s0,8(sp)
    80002080:	01010413          	addi	s0,sp,16
    80002084:	300027f3          	csrr	a5,mstatus
    80002088:	ffffe737          	lui	a4,0xffffe
    8000208c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7cff>
    80002090:	00e7f7b3          	and	a5,a5,a4
    80002094:	00001737          	lui	a4,0x1
    80002098:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000209c:	00e7e7b3          	or	a5,a5,a4
    800020a0:	30079073          	csrw	mstatus,a5
    800020a4:	00000797          	auipc	a5,0x0
    800020a8:	16078793          	addi	a5,a5,352 # 80002204 <system_main>
    800020ac:	34179073          	csrw	mepc,a5
    800020b0:	00000793          	li	a5,0
    800020b4:	18079073          	csrw	satp,a5
    800020b8:	000107b7          	lui	a5,0x10
    800020bc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800020c0:	30279073          	csrw	medeleg,a5
    800020c4:	30379073          	csrw	mideleg,a5
    800020c8:	104027f3          	csrr	a5,sie
    800020cc:	2227e793          	ori	a5,a5,546
    800020d0:	10479073          	csrw	sie,a5
    800020d4:	fff00793          	li	a5,-1
    800020d8:	00a7d793          	srli	a5,a5,0xa
    800020dc:	3b079073          	csrw	pmpaddr0,a5
    800020e0:	00f00793          	li	a5,15
    800020e4:	3a079073          	csrw	pmpcfg0,a5
    800020e8:	f14027f3          	csrr	a5,mhartid
    800020ec:	0200c737          	lui	a4,0x200c
    800020f0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800020f4:	0007869b          	sext.w	a3,a5
    800020f8:	00269713          	slli	a4,a3,0x2
    800020fc:	000f4637          	lui	a2,0xf4
    80002100:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002104:	00d70733          	add	a4,a4,a3
    80002108:	0037979b          	slliw	a5,a5,0x3
    8000210c:	020046b7          	lui	a3,0x2004
    80002110:	00d787b3          	add	a5,a5,a3
    80002114:	00c585b3          	add	a1,a1,a2
    80002118:	00371693          	slli	a3,a4,0x3
    8000211c:	00003717          	auipc	a4,0x3
    80002120:	77470713          	addi	a4,a4,1908 # 80005890 <timer_scratch>
    80002124:	00b7b023          	sd	a1,0(a5)
    80002128:	00d70733          	add	a4,a4,a3
    8000212c:	00f73c23          	sd	a5,24(a4)
    80002130:	02c73023          	sd	a2,32(a4)
    80002134:	34071073          	csrw	mscratch,a4
    80002138:	00000797          	auipc	a5,0x0
    8000213c:	6e878793          	addi	a5,a5,1768 # 80002820 <timervec>
    80002140:	30579073          	csrw	mtvec,a5
    80002144:	300027f3          	csrr	a5,mstatus
    80002148:	0087e793          	ori	a5,a5,8
    8000214c:	30079073          	csrw	mstatus,a5
    80002150:	304027f3          	csrr	a5,mie
    80002154:	0807e793          	ori	a5,a5,128
    80002158:	30479073          	csrw	mie,a5
    8000215c:	f14027f3          	csrr	a5,mhartid
    80002160:	0007879b          	sext.w	a5,a5
    80002164:	00078213          	mv	tp,a5
    80002168:	30200073          	mret
    8000216c:	00813403          	ld	s0,8(sp)
    80002170:	01010113          	addi	sp,sp,16
    80002174:	00008067          	ret

0000000080002178 <timerinit>:
    80002178:	ff010113          	addi	sp,sp,-16
    8000217c:	00813423          	sd	s0,8(sp)
    80002180:	01010413          	addi	s0,sp,16
    80002184:	f14027f3          	csrr	a5,mhartid
    80002188:	0200c737          	lui	a4,0x200c
    8000218c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002190:	0007869b          	sext.w	a3,a5
    80002194:	00269713          	slli	a4,a3,0x2
    80002198:	000f4637          	lui	a2,0xf4
    8000219c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800021a0:	00d70733          	add	a4,a4,a3
    800021a4:	0037979b          	slliw	a5,a5,0x3
    800021a8:	020046b7          	lui	a3,0x2004
    800021ac:	00d787b3          	add	a5,a5,a3
    800021b0:	00c585b3          	add	a1,a1,a2
    800021b4:	00371693          	slli	a3,a4,0x3
    800021b8:	00003717          	auipc	a4,0x3
    800021bc:	6d870713          	addi	a4,a4,1752 # 80005890 <timer_scratch>
    800021c0:	00b7b023          	sd	a1,0(a5)
    800021c4:	00d70733          	add	a4,a4,a3
    800021c8:	00f73c23          	sd	a5,24(a4)
    800021cc:	02c73023          	sd	a2,32(a4)
    800021d0:	34071073          	csrw	mscratch,a4
    800021d4:	00000797          	auipc	a5,0x0
    800021d8:	64c78793          	addi	a5,a5,1612 # 80002820 <timervec>
    800021dc:	30579073          	csrw	mtvec,a5
    800021e0:	300027f3          	csrr	a5,mstatus
    800021e4:	0087e793          	ori	a5,a5,8
    800021e8:	30079073          	csrw	mstatus,a5
    800021ec:	304027f3          	csrr	a5,mie
    800021f0:	0807e793          	ori	a5,a5,128
    800021f4:	30479073          	csrw	mie,a5
    800021f8:	00813403          	ld	s0,8(sp)
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret

0000000080002204 <system_main>:
    80002204:	fe010113          	addi	sp,sp,-32
    80002208:	00813823          	sd	s0,16(sp)
    8000220c:	00913423          	sd	s1,8(sp)
    80002210:	00113c23          	sd	ra,24(sp)
    80002214:	02010413          	addi	s0,sp,32
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	0c4080e7          	jalr	196(ra) # 800022dc <cpuid>
    80002220:	00003497          	auipc	s1,0x3
    80002224:	62048493          	addi	s1,s1,1568 # 80005840 <started>
    80002228:	02050263          	beqz	a0,8000224c <system_main+0x48>
    8000222c:	0004a783          	lw	a5,0(s1)
    80002230:	0007879b          	sext.w	a5,a5
    80002234:	fe078ce3          	beqz	a5,8000222c <system_main+0x28>
    80002238:	0ff0000f          	fence
    8000223c:	00003517          	auipc	a0,0x3
    80002240:	e9c50513          	addi	a0,a0,-356 # 800050d8 <_ZZ12printIntegermE6digits+0x40>
    80002244:	00001097          	auipc	ra,0x1
    80002248:	a78080e7          	jalr	-1416(ra) # 80002cbc <panic>
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	9cc080e7          	jalr	-1588(ra) # 80002c18 <consoleinit>
    80002254:	00001097          	auipc	ra,0x1
    80002258:	158080e7          	jalr	344(ra) # 800033ac <printfinit>
    8000225c:	00003517          	auipc	a0,0x3
    80002260:	e3450513          	addi	a0,a0,-460 # 80005090 <kvmincrease+0xc10>
    80002264:	00001097          	auipc	ra,0x1
    80002268:	ab4080e7          	jalr	-1356(ra) # 80002d18 <__printf>
    8000226c:	00003517          	auipc	a0,0x3
    80002270:	e3c50513          	addi	a0,a0,-452 # 800050a8 <_ZZ12printIntegermE6digits+0x10>
    80002274:	00001097          	auipc	ra,0x1
    80002278:	aa4080e7          	jalr	-1372(ra) # 80002d18 <__printf>
    8000227c:	00003517          	auipc	a0,0x3
    80002280:	e1450513          	addi	a0,a0,-492 # 80005090 <kvmincrease+0xc10>
    80002284:	00001097          	auipc	ra,0x1
    80002288:	a94080e7          	jalr	-1388(ra) # 80002d18 <__printf>
    8000228c:	00001097          	auipc	ra,0x1
    80002290:	4ac080e7          	jalr	1196(ra) # 80003738 <kinit>
    80002294:	00000097          	auipc	ra,0x0
    80002298:	148080e7          	jalr	328(ra) # 800023dc <trapinit>
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	16c080e7          	jalr	364(ra) # 80002408 <trapinithart>
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	5bc080e7          	jalr	1468(ra) # 80002860 <plicinit>
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	5dc080e7          	jalr	1500(ra) # 80002888 <plicinithart>
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	078080e7          	jalr	120(ra) # 8000232c <userinit>
    800022bc:	0ff0000f          	fence
    800022c0:	00100793          	li	a5,1
    800022c4:	00003517          	auipc	a0,0x3
    800022c8:	dfc50513          	addi	a0,a0,-516 # 800050c0 <_ZZ12printIntegermE6digits+0x28>
    800022cc:	00f4a023          	sw	a5,0(s1)
    800022d0:	00001097          	auipc	ra,0x1
    800022d4:	a48080e7          	jalr	-1464(ra) # 80002d18 <__printf>
    800022d8:	0000006f          	j	800022d8 <system_main+0xd4>

00000000800022dc <cpuid>:
    800022dc:	ff010113          	addi	sp,sp,-16
    800022e0:	00813423          	sd	s0,8(sp)
    800022e4:	01010413          	addi	s0,sp,16
    800022e8:	00020513          	mv	a0,tp
    800022ec:	00813403          	ld	s0,8(sp)
    800022f0:	0005051b          	sext.w	a0,a0
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret

00000000800022fc <mycpu>:
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00813423          	sd	s0,8(sp)
    80002304:	01010413          	addi	s0,sp,16
    80002308:	00020793          	mv	a5,tp
    8000230c:	00813403          	ld	s0,8(sp)
    80002310:	0007879b          	sext.w	a5,a5
    80002314:	00779793          	slli	a5,a5,0x7
    80002318:	00004517          	auipc	a0,0x4
    8000231c:	5a850513          	addi	a0,a0,1448 # 800068c0 <cpus>
    80002320:	00f50533          	add	a0,a0,a5
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00008067          	ret

000000008000232c <userinit>:
    8000232c:	ff010113          	addi	sp,sp,-16
    80002330:	00813423          	sd	s0,8(sp)
    80002334:	01010413          	addi	s0,sp,16
    80002338:	00813403          	ld	s0,8(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	fffff317          	auipc	t1,0xfffff
    80002344:	5c430067          	jr	1476(t1) # 80001904 <main>

0000000080002348 <either_copyout>:
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00813023          	sd	s0,0(sp)
    80002350:	00113423          	sd	ra,8(sp)
    80002354:	01010413          	addi	s0,sp,16
    80002358:	02051663          	bnez	a0,80002384 <either_copyout+0x3c>
    8000235c:	00058513          	mv	a0,a1
    80002360:	00060593          	mv	a1,a2
    80002364:	0006861b          	sext.w	a2,a3
    80002368:	00002097          	auipc	ra,0x2
    8000236c:	c5c080e7          	jalr	-932(ra) # 80003fc4 <__memmove>
    80002370:	00813083          	ld	ra,8(sp)
    80002374:	00013403          	ld	s0,0(sp)
    80002378:	00000513          	li	a0,0
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret
    80002384:	00003517          	auipc	a0,0x3
    80002388:	d7c50513          	addi	a0,a0,-644 # 80005100 <_ZZ12printIntegermE6digits+0x68>
    8000238c:	00001097          	auipc	ra,0x1
    80002390:	930080e7          	jalr	-1744(ra) # 80002cbc <panic>

0000000080002394 <either_copyin>:
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00813023          	sd	s0,0(sp)
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	01010413          	addi	s0,sp,16
    800023a4:	02059463          	bnez	a1,800023cc <either_copyin+0x38>
    800023a8:	00060593          	mv	a1,a2
    800023ac:	0006861b          	sext.w	a2,a3
    800023b0:	00002097          	auipc	ra,0x2
    800023b4:	c14080e7          	jalr	-1004(ra) # 80003fc4 <__memmove>
    800023b8:	00813083          	ld	ra,8(sp)
    800023bc:	00013403          	ld	s0,0(sp)
    800023c0:	00000513          	li	a0,0
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret
    800023cc:	00003517          	auipc	a0,0x3
    800023d0:	d5c50513          	addi	a0,a0,-676 # 80005128 <_ZZ12printIntegermE6digits+0x90>
    800023d4:	00001097          	auipc	ra,0x1
    800023d8:	8e8080e7          	jalr	-1816(ra) # 80002cbc <panic>

00000000800023dc <trapinit>:
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00813423          	sd	s0,8(sp)
    800023e4:	01010413          	addi	s0,sp,16
    800023e8:	00813403          	ld	s0,8(sp)
    800023ec:	00003597          	auipc	a1,0x3
    800023f0:	d6458593          	addi	a1,a1,-668 # 80005150 <_ZZ12printIntegermE6digits+0xb8>
    800023f4:	00004517          	auipc	a0,0x4
    800023f8:	54c50513          	addi	a0,a0,1356 # 80006940 <tickslock>
    800023fc:	01010113          	addi	sp,sp,16
    80002400:	00001317          	auipc	t1,0x1
    80002404:	5c830067          	jr	1480(t1) # 800039c8 <initlock>

0000000080002408 <trapinithart>:
    80002408:	ff010113          	addi	sp,sp,-16
    8000240c:	00813423          	sd	s0,8(sp)
    80002410:	01010413          	addi	s0,sp,16
    80002414:	00000797          	auipc	a5,0x0
    80002418:	2fc78793          	addi	a5,a5,764 # 80002710 <kernelvec>
    8000241c:	10579073          	csrw	stvec,a5
    80002420:	00813403          	ld	s0,8(sp)
    80002424:	01010113          	addi	sp,sp,16
    80002428:	00008067          	ret

000000008000242c <usertrap>:
    8000242c:	ff010113          	addi	sp,sp,-16
    80002430:	00813423          	sd	s0,8(sp)
    80002434:	01010413          	addi	s0,sp,16
    80002438:	00813403          	ld	s0,8(sp)
    8000243c:	01010113          	addi	sp,sp,16
    80002440:	00008067          	ret

0000000080002444 <usertrapret>:
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00813423          	sd	s0,8(sp)
    8000244c:	01010413          	addi	s0,sp,16
    80002450:	00813403          	ld	s0,8(sp)
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00008067          	ret

000000008000245c <kerneltrap>:
    8000245c:	fe010113          	addi	sp,sp,-32
    80002460:	00813823          	sd	s0,16(sp)
    80002464:	00113c23          	sd	ra,24(sp)
    80002468:	00913423          	sd	s1,8(sp)
    8000246c:	02010413          	addi	s0,sp,32
    80002470:	142025f3          	csrr	a1,scause
    80002474:	100027f3          	csrr	a5,sstatus
    80002478:	0027f793          	andi	a5,a5,2
    8000247c:	10079c63          	bnez	a5,80002594 <kerneltrap+0x138>
    80002480:	142027f3          	csrr	a5,scause
    80002484:	0207ce63          	bltz	a5,800024c0 <kerneltrap+0x64>
    80002488:	00003517          	auipc	a0,0x3
    8000248c:	d1050513          	addi	a0,a0,-752 # 80005198 <_ZZ12printIntegermE6digits+0x100>
    80002490:	00001097          	auipc	ra,0x1
    80002494:	888080e7          	jalr	-1912(ra) # 80002d18 <__printf>
    80002498:	141025f3          	csrr	a1,sepc
    8000249c:	14302673          	csrr	a2,stval
    800024a0:	00003517          	auipc	a0,0x3
    800024a4:	d0850513          	addi	a0,a0,-760 # 800051a8 <_ZZ12printIntegermE6digits+0x110>
    800024a8:	00001097          	auipc	ra,0x1
    800024ac:	870080e7          	jalr	-1936(ra) # 80002d18 <__printf>
    800024b0:	00003517          	auipc	a0,0x3
    800024b4:	d1050513          	addi	a0,a0,-752 # 800051c0 <_ZZ12printIntegermE6digits+0x128>
    800024b8:	00001097          	auipc	ra,0x1
    800024bc:	804080e7          	jalr	-2044(ra) # 80002cbc <panic>
    800024c0:	0ff7f713          	andi	a4,a5,255
    800024c4:	00900693          	li	a3,9
    800024c8:	04d70063          	beq	a4,a3,80002508 <kerneltrap+0xac>
    800024cc:	fff00713          	li	a4,-1
    800024d0:	03f71713          	slli	a4,a4,0x3f
    800024d4:	00170713          	addi	a4,a4,1
    800024d8:	fae798e3          	bne	a5,a4,80002488 <kerneltrap+0x2c>
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	e00080e7          	jalr	-512(ra) # 800022dc <cpuid>
    800024e4:	06050663          	beqz	a0,80002550 <kerneltrap+0xf4>
    800024e8:	144027f3          	csrr	a5,sip
    800024ec:	ffd7f793          	andi	a5,a5,-3
    800024f0:	14479073          	csrw	sip,a5
    800024f4:	01813083          	ld	ra,24(sp)
    800024f8:	01013403          	ld	s0,16(sp)
    800024fc:	00813483          	ld	s1,8(sp)
    80002500:	02010113          	addi	sp,sp,32
    80002504:	00008067          	ret
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	3cc080e7          	jalr	972(ra) # 800028d4 <plic_claim>
    80002510:	00a00793          	li	a5,10
    80002514:	00050493          	mv	s1,a0
    80002518:	06f50863          	beq	a0,a5,80002588 <kerneltrap+0x12c>
    8000251c:	fc050ce3          	beqz	a0,800024f4 <kerneltrap+0x98>
    80002520:	00050593          	mv	a1,a0
    80002524:	00003517          	auipc	a0,0x3
    80002528:	c5450513          	addi	a0,a0,-940 # 80005178 <_ZZ12printIntegermE6digits+0xe0>
    8000252c:	00000097          	auipc	ra,0x0
    80002530:	7ec080e7          	jalr	2028(ra) # 80002d18 <__printf>
    80002534:	01013403          	ld	s0,16(sp)
    80002538:	01813083          	ld	ra,24(sp)
    8000253c:	00048513          	mv	a0,s1
    80002540:	00813483          	ld	s1,8(sp)
    80002544:	02010113          	addi	sp,sp,32
    80002548:	00000317          	auipc	t1,0x0
    8000254c:	3c430067          	jr	964(t1) # 8000290c <plic_complete>
    80002550:	00004517          	auipc	a0,0x4
    80002554:	3f050513          	addi	a0,a0,1008 # 80006940 <tickslock>
    80002558:	00001097          	auipc	ra,0x1
    8000255c:	494080e7          	jalr	1172(ra) # 800039ec <acquire>
    80002560:	00003717          	auipc	a4,0x3
    80002564:	2e470713          	addi	a4,a4,740 # 80005844 <ticks>
    80002568:	00072783          	lw	a5,0(a4)
    8000256c:	00004517          	auipc	a0,0x4
    80002570:	3d450513          	addi	a0,a0,980 # 80006940 <tickslock>
    80002574:	0017879b          	addiw	a5,a5,1
    80002578:	00f72023          	sw	a5,0(a4)
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	53c080e7          	jalr	1340(ra) # 80003ab8 <release>
    80002584:	f65ff06f          	j	800024e8 <kerneltrap+0x8c>
    80002588:	00001097          	auipc	ra,0x1
    8000258c:	098080e7          	jalr	152(ra) # 80003620 <uartintr>
    80002590:	fa5ff06f          	j	80002534 <kerneltrap+0xd8>
    80002594:	00003517          	auipc	a0,0x3
    80002598:	bc450513          	addi	a0,a0,-1084 # 80005158 <_ZZ12printIntegermE6digits+0xc0>
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	720080e7          	jalr	1824(ra) # 80002cbc <panic>

00000000800025a4 <clockintr>:
    800025a4:	fe010113          	addi	sp,sp,-32
    800025a8:	00813823          	sd	s0,16(sp)
    800025ac:	00913423          	sd	s1,8(sp)
    800025b0:	00113c23          	sd	ra,24(sp)
    800025b4:	02010413          	addi	s0,sp,32
    800025b8:	00004497          	auipc	s1,0x4
    800025bc:	38848493          	addi	s1,s1,904 # 80006940 <tickslock>
    800025c0:	00048513          	mv	a0,s1
    800025c4:	00001097          	auipc	ra,0x1
    800025c8:	428080e7          	jalr	1064(ra) # 800039ec <acquire>
    800025cc:	00003717          	auipc	a4,0x3
    800025d0:	27870713          	addi	a4,a4,632 # 80005844 <ticks>
    800025d4:	00072783          	lw	a5,0(a4)
    800025d8:	01013403          	ld	s0,16(sp)
    800025dc:	01813083          	ld	ra,24(sp)
    800025e0:	00048513          	mv	a0,s1
    800025e4:	0017879b          	addiw	a5,a5,1
    800025e8:	00813483          	ld	s1,8(sp)
    800025ec:	00f72023          	sw	a5,0(a4)
    800025f0:	02010113          	addi	sp,sp,32
    800025f4:	00001317          	auipc	t1,0x1
    800025f8:	4c430067          	jr	1220(t1) # 80003ab8 <release>

00000000800025fc <devintr>:
    800025fc:	142027f3          	csrr	a5,scause
    80002600:	00000513          	li	a0,0
    80002604:	0007c463          	bltz	a5,8000260c <devintr+0x10>
    80002608:	00008067          	ret
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00813823          	sd	s0,16(sp)
    80002614:	00113c23          	sd	ra,24(sp)
    80002618:	00913423          	sd	s1,8(sp)
    8000261c:	02010413          	addi	s0,sp,32
    80002620:	0ff7f713          	andi	a4,a5,255
    80002624:	00900693          	li	a3,9
    80002628:	04d70c63          	beq	a4,a3,80002680 <devintr+0x84>
    8000262c:	fff00713          	li	a4,-1
    80002630:	03f71713          	slli	a4,a4,0x3f
    80002634:	00170713          	addi	a4,a4,1
    80002638:	00e78c63          	beq	a5,a4,80002650 <devintr+0x54>
    8000263c:	01813083          	ld	ra,24(sp)
    80002640:	01013403          	ld	s0,16(sp)
    80002644:	00813483          	ld	s1,8(sp)
    80002648:	02010113          	addi	sp,sp,32
    8000264c:	00008067          	ret
    80002650:	00000097          	auipc	ra,0x0
    80002654:	c8c080e7          	jalr	-884(ra) # 800022dc <cpuid>
    80002658:	06050663          	beqz	a0,800026c4 <devintr+0xc8>
    8000265c:	144027f3          	csrr	a5,sip
    80002660:	ffd7f793          	andi	a5,a5,-3
    80002664:	14479073          	csrw	sip,a5
    80002668:	01813083          	ld	ra,24(sp)
    8000266c:	01013403          	ld	s0,16(sp)
    80002670:	00813483          	ld	s1,8(sp)
    80002674:	00200513          	li	a0,2
    80002678:	02010113          	addi	sp,sp,32
    8000267c:	00008067          	ret
    80002680:	00000097          	auipc	ra,0x0
    80002684:	254080e7          	jalr	596(ra) # 800028d4 <plic_claim>
    80002688:	00a00793          	li	a5,10
    8000268c:	00050493          	mv	s1,a0
    80002690:	06f50663          	beq	a0,a5,800026fc <devintr+0x100>
    80002694:	00100513          	li	a0,1
    80002698:	fa0482e3          	beqz	s1,8000263c <devintr+0x40>
    8000269c:	00048593          	mv	a1,s1
    800026a0:	00003517          	auipc	a0,0x3
    800026a4:	ad850513          	addi	a0,a0,-1320 # 80005178 <_ZZ12printIntegermE6digits+0xe0>
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	670080e7          	jalr	1648(ra) # 80002d18 <__printf>
    800026b0:	00048513          	mv	a0,s1
    800026b4:	00000097          	auipc	ra,0x0
    800026b8:	258080e7          	jalr	600(ra) # 8000290c <plic_complete>
    800026bc:	00100513          	li	a0,1
    800026c0:	f7dff06f          	j	8000263c <devintr+0x40>
    800026c4:	00004517          	auipc	a0,0x4
    800026c8:	27c50513          	addi	a0,a0,636 # 80006940 <tickslock>
    800026cc:	00001097          	auipc	ra,0x1
    800026d0:	320080e7          	jalr	800(ra) # 800039ec <acquire>
    800026d4:	00003717          	auipc	a4,0x3
    800026d8:	17070713          	addi	a4,a4,368 # 80005844 <ticks>
    800026dc:	00072783          	lw	a5,0(a4)
    800026e0:	00004517          	auipc	a0,0x4
    800026e4:	26050513          	addi	a0,a0,608 # 80006940 <tickslock>
    800026e8:	0017879b          	addiw	a5,a5,1
    800026ec:	00f72023          	sw	a5,0(a4)
    800026f0:	00001097          	auipc	ra,0x1
    800026f4:	3c8080e7          	jalr	968(ra) # 80003ab8 <release>
    800026f8:	f65ff06f          	j	8000265c <devintr+0x60>
    800026fc:	00001097          	auipc	ra,0x1
    80002700:	f24080e7          	jalr	-220(ra) # 80003620 <uartintr>
    80002704:	fadff06f          	j	800026b0 <devintr+0xb4>
	...

0000000080002710 <kernelvec>:
    80002710:	f0010113          	addi	sp,sp,-256
    80002714:	00113023          	sd	ra,0(sp)
    80002718:	00213423          	sd	sp,8(sp)
    8000271c:	00313823          	sd	gp,16(sp)
    80002720:	00413c23          	sd	tp,24(sp)
    80002724:	02513023          	sd	t0,32(sp)
    80002728:	02613423          	sd	t1,40(sp)
    8000272c:	02713823          	sd	t2,48(sp)
    80002730:	02813c23          	sd	s0,56(sp)
    80002734:	04913023          	sd	s1,64(sp)
    80002738:	04a13423          	sd	a0,72(sp)
    8000273c:	04b13823          	sd	a1,80(sp)
    80002740:	04c13c23          	sd	a2,88(sp)
    80002744:	06d13023          	sd	a3,96(sp)
    80002748:	06e13423          	sd	a4,104(sp)
    8000274c:	06f13823          	sd	a5,112(sp)
    80002750:	07013c23          	sd	a6,120(sp)
    80002754:	09113023          	sd	a7,128(sp)
    80002758:	09213423          	sd	s2,136(sp)
    8000275c:	09313823          	sd	s3,144(sp)
    80002760:	09413c23          	sd	s4,152(sp)
    80002764:	0b513023          	sd	s5,160(sp)
    80002768:	0b613423          	sd	s6,168(sp)
    8000276c:	0b713823          	sd	s7,176(sp)
    80002770:	0b813c23          	sd	s8,184(sp)
    80002774:	0d913023          	sd	s9,192(sp)
    80002778:	0da13423          	sd	s10,200(sp)
    8000277c:	0db13823          	sd	s11,208(sp)
    80002780:	0dc13c23          	sd	t3,216(sp)
    80002784:	0fd13023          	sd	t4,224(sp)
    80002788:	0fe13423          	sd	t5,232(sp)
    8000278c:	0ff13823          	sd	t6,240(sp)
    80002790:	ccdff0ef          	jal	ra,8000245c <kerneltrap>
    80002794:	00013083          	ld	ra,0(sp)
    80002798:	00813103          	ld	sp,8(sp)
    8000279c:	01013183          	ld	gp,16(sp)
    800027a0:	02013283          	ld	t0,32(sp)
    800027a4:	02813303          	ld	t1,40(sp)
    800027a8:	03013383          	ld	t2,48(sp)
    800027ac:	03813403          	ld	s0,56(sp)
    800027b0:	04013483          	ld	s1,64(sp)
    800027b4:	04813503          	ld	a0,72(sp)
    800027b8:	05013583          	ld	a1,80(sp)
    800027bc:	05813603          	ld	a2,88(sp)
    800027c0:	06013683          	ld	a3,96(sp)
    800027c4:	06813703          	ld	a4,104(sp)
    800027c8:	07013783          	ld	a5,112(sp)
    800027cc:	07813803          	ld	a6,120(sp)
    800027d0:	08013883          	ld	a7,128(sp)
    800027d4:	08813903          	ld	s2,136(sp)
    800027d8:	09013983          	ld	s3,144(sp)
    800027dc:	09813a03          	ld	s4,152(sp)
    800027e0:	0a013a83          	ld	s5,160(sp)
    800027e4:	0a813b03          	ld	s6,168(sp)
    800027e8:	0b013b83          	ld	s7,176(sp)
    800027ec:	0b813c03          	ld	s8,184(sp)
    800027f0:	0c013c83          	ld	s9,192(sp)
    800027f4:	0c813d03          	ld	s10,200(sp)
    800027f8:	0d013d83          	ld	s11,208(sp)
    800027fc:	0d813e03          	ld	t3,216(sp)
    80002800:	0e013e83          	ld	t4,224(sp)
    80002804:	0e813f03          	ld	t5,232(sp)
    80002808:	0f013f83          	ld	t6,240(sp)
    8000280c:	10010113          	addi	sp,sp,256
    80002810:	10200073          	sret
    80002814:	00000013          	nop
    80002818:	00000013          	nop
    8000281c:	00000013          	nop

0000000080002820 <timervec>:
    80002820:	34051573          	csrrw	a0,mscratch,a0
    80002824:	00b53023          	sd	a1,0(a0)
    80002828:	00c53423          	sd	a2,8(a0)
    8000282c:	00d53823          	sd	a3,16(a0)
    80002830:	01853583          	ld	a1,24(a0)
    80002834:	02053603          	ld	a2,32(a0)
    80002838:	0005b683          	ld	a3,0(a1)
    8000283c:	00c686b3          	add	a3,a3,a2
    80002840:	00d5b023          	sd	a3,0(a1)
    80002844:	00200593          	li	a1,2
    80002848:	14459073          	csrw	sip,a1
    8000284c:	01053683          	ld	a3,16(a0)
    80002850:	00853603          	ld	a2,8(a0)
    80002854:	00053583          	ld	a1,0(a0)
    80002858:	34051573          	csrrw	a0,mscratch,a0
    8000285c:	30200073          	mret

0000000080002860 <plicinit>:
    80002860:	ff010113          	addi	sp,sp,-16
    80002864:	00813423          	sd	s0,8(sp)
    80002868:	01010413          	addi	s0,sp,16
    8000286c:	00813403          	ld	s0,8(sp)
    80002870:	0c0007b7          	lui	a5,0xc000
    80002874:	00100713          	li	a4,1
    80002878:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000287c:	00e7a223          	sw	a4,4(a5)
    80002880:	01010113          	addi	sp,sp,16
    80002884:	00008067          	ret

0000000080002888 <plicinithart>:
    80002888:	ff010113          	addi	sp,sp,-16
    8000288c:	00813023          	sd	s0,0(sp)
    80002890:	00113423          	sd	ra,8(sp)
    80002894:	01010413          	addi	s0,sp,16
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	a44080e7          	jalr	-1468(ra) # 800022dc <cpuid>
    800028a0:	0085171b          	slliw	a4,a0,0x8
    800028a4:	0c0027b7          	lui	a5,0xc002
    800028a8:	00e787b3          	add	a5,a5,a4
    800028ac:	40200713          	li	a4,1026
    800028b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800028b4:	00813083          	ld	ra,8(sp)
    800028b8:	00013403          	ld	s0,0(sp)
    800028bc:	00d5151b          	slliw	a0,a0,0xd
    800028c0:	0c2017b7          	lui	a5,0xc201
    800028c4:	00a78533          	add	a0,a5,a0
    800028c8:	00052023          	sw	zero,0(a0)
    800028cc:	01010113          	addi	sp,sp,16
    800028d0:	00008067          	ret

00000000800028d4 <plic_claim>:
    800028d4:	ff010113          	addi	sp,sp,-16
    800028d8:	00813023          	sd	s0,0(sp)
    800028dc:	00113423          	sd	ra,8(sp)
    800028e0:	01010413          	addi	s0,sp,16
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	9f8080e7          	jalr	-1544(ra) # 800022dc <cpuid>
    800028ec:	00813083          	ld	ra,8(sp)
    800028f0:	00013403          	ld	s0,0(sp)
    800028f4:	00d5151b          	slliw	a0,a0,0xd
    800028f8:	0c2017b7          	lui	a5,0xc201
    800028fc:	00a78533          	add	a0,a5,a0
    80002900:	00452503          	lw	a0,4(a0)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <plic_complete>:
    8000290c:	fe010113          	addi	sp,sp,-32
    80002910:	00813823          	sd	s0,16(sp)
    80002914:	00913423          	sd	s1,8(sp)
    80002918:	00113c23          	sd	ra,24(sp)
    8000291c:	02010413          	addi	s0,sp,32
    80002920:	00050493          	mv	s1,a0
    80002924:	00000097          	auipc	ra,0x0
    80002928:	9b8080e7          	jalr	-1608(ra) # 800022dc <cpuid>
    8000292c:	01813083          	ld	ra,24(sp)
    80002930:	01013403          	ld	s0,16(sp)
    80002934:	00d5179b          	slliw	a5,a0,0xd
    80002938:	0c201737          	lui	a4,0xc201
    8000293c:	00f707b3          	add	a5,a4,a5
    80002940:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002944:	00813483          	ld	s1,8(sp)
    80002948:	02010113          	addi	sp,sp,32
    8000294c:	00008067          	ret

0000000080002950 <consolewrite>:
    80002950:	fb010113          	addi	sp,sp,-80
    80002954:	04813023          	sd	s0,64(sp)
    80002958:	04113423          	sd	ra,72(sp)
    8000295c:	02913c23          	sd	s1,56(sp)
    80002960:	03213823          	sd	s2,48(sp)
    80002964:	03313423          	sd	s3,40(sp)
    80002968:	03413023          	sd	s4,32(sp)
    8000296c:	01513c23          	sd	s5,24(sp)
    80002970:	05010413          	addi	s0,sp,80
    80002974:	06c05c63          	blez	a2,800029ec <consolewrite+0x9c>
    80002978:	00060993          	mv	s3,a2
    8000297c:	00050a13          	mv	s4,a0
    80002980:	00058493          	mv	s1,a1
    80002984:	00000913          	li	s2,0
    80002988:	fff00a93          	li	s5,-1
    8000298c:	01c0006f          	j	800029a8 <consolewrite+0x58>
    80002990:	fbf44503          	lbu	a0,-65(s0)
    80002994:	0019091b          	addiw	s2,s2,1
    80002998:	00148493          	addi	s1,s1,1
    8000299c:	00001097          	auipc	ra,0x1
    800029a0:	a9c080e7          	jalr	-1380(ra) # 80003438 <uartputc>
    800029a4:	03298063          	beq	s3,s2,800029c4 <consolewrite+0x74>
    800029a8:	00048613          	mv	a2,s1
    800029ac:	00100693          	li	a3,1
    800029b0:	000a0593          	mv	a1,s4
    800029b4:	fbf40513          	addi	a0,s0,-65
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	9dc080e7          	jalr	-1572(ra) # 80002394 <either_copyin>
    800029c0:	fd5518e3          	bne	a0,s5,80002990 <consolewrite+0x40>
    800029c4:	04813083          	ld	ra,72(sp)
    800029c8:	04013403          	ld	s0,64(sp)
    800029cc:	03813483          	ld	s1,56(sp)
    800029d0:	02813983          	ld	s3,40(sp)
    800029d4:	02013a03          	ld	s4,32(sp)
    800029d8:	01813a83          	ld	s5,24(sp)
    800029dc:	00090513          	mv	a0,s2
    800029e0:	03013903          	ld	s2,48(sp)
    800029e4:	05010113          	addi	sp,sp,80
    800029e8:	00008067          	ret
    800029ec:	00000913          	li	s2,0
    800029f0:	fd5ff06f          	j	800029c4 <consolewrite+0x74>

00000000800029f4 <consoleread>:
    800029f4:	f9010113          	addi	sp,sp,-112
    800029f8:	06813023          	sd	s0,96(sp)
    800029fc:	04913c23          	sd	s1,88(sp)
    80002a00:	05213823          	sd	s2,80(sp)
    80002a04:	05313423          	sd	s3,72(sp)
    80002a08:	05413023          	sd	s4,64(sp)
    80002a0c:	03513c23          	sd	s5,56(sp)
    80002a10:	03613823          	sd	s6,48(sp)
    80002a14:	03713423          	sd	s7,40(sp)
    80002a18:	03813023          	sd	s8,32(sp)
    80002a1c:	06113423          	sd	ra,104(sp)
    80002a20:	01913c23          	sd	s9,24(sp)
    80002a24:	07010413          	addi	s0,sp,112
    80002a28:	00060b93          	mv	s7,a2
    80002a2c:	00050913          	mv	s2,a0
    80002a30:	00058c13          	mv	s8,a1
    80002a34:	00060b1b          	sext.w	s6,a2
    80002a38:	00004497          	auipc	s1,0x4
    80002a3c:	f3048493          	addi	s1,s1,-208 # 80006968 <cons>
    80002a40:	00400993          	li	s3,4
    80002a44:	fff00a13          	li	s4,-1
    80002a48:	00a00a93          	li	s5,10
    80002a4c:	05705e63          	blez	s7,80002aa8 <consoleread+0xb4>
    80002a50:	09c4a703          	lw	a4,156(s1)
    80002a54:	0984a783          	lw	a5,152(s1)
    80002a58:	0007071b          	sext.w	a4,a4
    80002a5c:	08e78463          	beq	a5,a4,80002ae4 <consoleread+0xf0>
    80002a60:	07f7f713          	andi	a4,a5,127
    80002a64:	00e48733          	add	a4,s1,a4
    80002a68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002a6c:	0017869b          	addiw	a3,a5,1
    80002a70:	08d4ac23          	sw	a3,152(s1)
    80002a74:	00070c9b          	sext.w	s9,a4
    80002a78:	0b370663          	beq	a4,s3,80002b24 <consoleread+0x130>
    80002a7c:	00100693          	li	a3,1
    80002a80:	f9f40613          	addi	a2,s0,-97
    80002a84:	000c0593          	mv	a1,s8
    80002a88:	00090513          	mv	a0,s2
    80002a8c:	f8e40fa3          	sb	a4,-97(s0)
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	8b8080e7          	jalr	-1864(ra) # 80002348 <either_copyout>
    80002a98:	01450863          	beq	a0,s4,80002aa8 <consoleread+0xb4>
    80002a9c:	001c0c13          	addi	s8,s8,1
    80002aa0:	fffb8b9b          	addiw	s7,s7,-1
    80002aa4:	fb5c94e3          	bne	s9,s5,80002a4c <consoleread+0x58>
    80002aa8:	000b851b          	sext.w	a0,s7
    80002aac:	06813083          	ld	ra,104(sp)
    80002ab0:	06013403          	ld	s0,96(sp)
    80002ab4:	05813483          	ld	s1,88(sp)
    80002ab8:	05013903          	ld	s2,80(sp)
    80002abc:	04813983          	ld	s3,72(sp)
    80002ac0:	04013a03          	ld	s4,64(sp)
    80002ac4:	03813a83          	ld	s5,56(sp)
    80002ac8:	02813b83          	ld	s7,40(sp)
    80002acc:	02013c03          	ld	s8,32(sp)
    80002ad0:	01813c83          	ld	s9,24(sp)
    80002ad4:	40ab053b          	subw	a0,s6,a0
    80002ad8:	03013b03          	ld	s6,48(sp)
    80002adc:	07010113          	addi	sp,sp,112
    80002ae0:	00008067          	ret
    80002ae4:	00001097          	auipc	ra,0x1
    80002ae8:	1d8080e7          	jalr	472(ra) # 80003cbc <push_on>
    80002aec:	0984a703          	lw	a4,152(s1)
    80002af0:	09c4a783          	lw	a5,156(s1)
    80002af4:	0007879b          	sext.w	a5,a5
    80002af8:	fef70ce3          	beq	a4,a5,80002af0 <consoleread+0xfc>
    80002afc:	00001097          	auipc	ra,0x1
    80002b00:	234080e7          	jalr	564(ra) # 80003d30 <pop_on>
    80002b04:	0984a783          	lw	a5,152(s1)
    80002b08:	07f7f713          	andi	a4,a5,127
    80002b0c:	00e48733          	add	a4,s1,a4
    80002b10:	01874703          	lbu	a4,24(a4)
    80002b14:	0017869b          	addiw	a3,a5,1
    80002b18:	08d4ac23          	sw	a3,152(s1)
    80002b1c:	00070c9b          	sext.w	s9,a4
    80002b20:	f5371ee3          	bne	a4,s3,80002a7c <consoleread+0x88>
    80002b24:	000b851b          	sext.w	a0,s7
    80002b28:	f96bf2e3          	bgeu	s7,s6,80002aac <consoleread+0xb8>
    80002b2c:	08f4ac23          	sw	a5,152(s1)
    80002b30:	f7dff06f          	j	80002aac <consoleread+0xb8>

0000000080002b34 <consputc>:
    80002b34:	10000793          	li	a5,256
    80002b38:	00f50663          	beq	a0,a5,80002b44 <consputc+0x10>
    80002b3c:	00001317          	auipc	t1,0x1
    80002b40:	9f430067          	jr	-1548(t1) # 80003530 <uartputc_sync>
    80002b44:	ff010113          	addi	sp,sp,-16
    80002b48:	00113423          	sd	ra,8(sp)
    80002b4c:	00813023          	sd	s0,0(sp)
    80002b50:	01010413          	addi	s0,sp,16
    80002b54:	00800513          	li	a0,8
    80002b58:	00001097          	auipc	ra,0x1
    80002b5c:	9d8080e7          	jalr	-1576(ra) # 80003530 <uartputc_sync>
    80002b60:	02000513          	li	a0,32
    80002b64:	00001097          	auipc	ra,0x1
    80002b68:	9cc080e7          	jalr	-1588(ra) # 80003530 <uartputc_sync>
    80002b6c:	00013403          	ld	s0,0(sp)
    80002b70:	00813083          	ld	ra,8(sp)
    80002b74:	00800513          	li	a0,8
    80002b78:	01010113          	addi	sp,sp,16
    80002b7c:	00001317          	auipc	t1,0x1
    80002b80:	9b430067          	jr	-1612(t1) # 80003530 <uartputc_sync>

0000000080002b84 <consoleintr>:
    80002b84:	fe010113          	addi	sp,sp,-32
    80002b88:	00813823          	sd	s0,16(sp)
    80002b8c:	00913423          	sd	s1,8(sp)
    80002b90:	01213023          	sd	s2,0(sp)
    80002b94:	00113c23          	sd	ra,24(sp)
    80002b98:	02010413          	addi	s0,sp,32
    80002b9c:	00004917          	auipc	s2,0x4
    80002ba0:	dcc90913          	addi	s2,s2,-564 # 80006968 <cons>
    80002ba4:	00050493          	mv	s1,a0
    80002ba8:	00090513          	mv	a0,s2
    80002bac:	00001097          	auipc	ra,0x1
    80002bb0:	e40080e7          	jalr	-448(ra) # 800039ec <acquire>
    80002bb4:	02048c63          	beqz	s1,80002bec <consoleintr+0x68>
    80002bb8:	0a092783          	lw	a5,160(s2)
    80002bbc:	09892703          	lw	a4,152(s2)
    80002bc0:	07f00693          	li	a3,127
    80002bc4:	40e7873b          	subw	a4,a5,a4
    80002bc8:	02e6e263          	bltu	a3,a4,80002bec <consoleintr+0x68>
    80002bcc:	00d00713          	li	a4,13
    80002bd0:	04e48063          	beq	s1,a4,80002c10 <consoleintr+0x8c>
    80002bd4:	07f7f713          	andi	a4,a5,127
    80002bd8:	00e90733          	add	a4,s2,a4
    80002bdc:	0017879b          	addiw	a5,a5,1
    80002be0:	0af92023          	sw	a5,160(s2)
    80002be4:	00970c23          	sb	s1,24(a4)
    80002be8:	08f92e23          	sw	a5,156(s2)
    80002bec:	01013403          	ld	s0,16(sp)
    80002bf0:	01813083          	ld	ra,24(sp)
    80002bf4:	00813483          	ld	s1,8(sp)
    80002bf8:	00013903          	ld	s2,0(sp)
    80002bfc:	00004517          	auipc	a0,0x4
    80002c00:	d6c50513          	addi	a0,a0,-660 # 80006968 <cons>
    80002c04:	02010113          	addi	sp,sp,32
    80002c08:	00001317          	auipc	t1,0x1
    80002c0c:	eb030067          	jr	-336(t1) # 80003ab8 <release>
    80002c10:	00a00493          	li	s1,10
    80002c14:	fc1ff06f          	j	80002bd4 <consoleintr+0x50>

0000000080002c18 <consoleinit>:
    80002c18:	fe010113          	addi	sp,sp,-32
    80002c1c:	00113c23          	sd	ra,24(sp)
    80002c20:	00813823          	sd	s0,16(sp)
    80002c24:	00913423          	sd	s1,8(sp)
    80002c28:	02010413          	addi	s0,sp,32
    80002c2c:	00004497          	auipc	s1,0x4
    80002c30:	d3c48493          	addi	s1,s1,-708 # 80006968 <cons>
    80002c34:	00048513          	mv	a0,s1
    80002c38:	00002597          	auipc	a1,0x2
    80002c3c:	59858593          	addi	a1,a1,1432 # 800051d0 <_ZZ12printIntegermE6digits+0x138>
    80002c40:	00001097          	auipc	ra,0x1
    80002c44:	d88080e7          	jalr	-632(ra) # 800039c8 <initlock>
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	7ac080e7          	jalr	1964(ra) # 800033f4 <uartinit>
    80002c50:	01813083          	ld	ra,24(sp)
    80002c54:	01013403          	ld	s0,16(sp)
    80002c58:	00000797          	auipc	a5,0x0
    80002c5c:	d9c78793          	addi	a5,a5,-612 # 800029f4 <consoleread>
    80002c60:	0af4bc23          	sd	a5,184(s1)
    80002c64:	00000797          	auipc	a5,0x0
    80002c68:	cec78793          	addi	a5,a5,-788 # 80002950 <consolewrite>
    80002c6c:	0cf4b023          	sd	a5,192(s1)
    80002c70:	00813483          	ld	s1,8(sp)
    80002c74:	02010113          	addi	sp,sp,32
    80002c78:	00008067          	ret

0000000080002c7c <console_read>:
    80002c7c:	ff010113          	addi	sp,sp,-16
    80002c80:	00813423          	sd	s0,8(sp)
    80002c84:	01010413          	addi	s0,sp,16
    80002c88:	00813403          	ld	s0,8(sp)
    80002c8c:	00004317          	auipc	t1,0x4
    80002c90:	d9433303          	ld	t1,-620(t1) # 80006a20 <devsw+0x10>
    80002c94:	01010113          	addi	sp,sp,16
    80002c98:	00030067          	jr	t1

0000000080002c9c <console_write>:
    80002c9c:	ff010113          	addi	sp,sp,-16
    80002ca0:	00813423          	sd	s0,8(sp)
    80002ca4:	01010413          	addi	s0,sp,16
    80002ca8:	00813403          	ld	s0,8(sp)
    80002cac:	00004317          	auipc	t1,0x4
    80002cb0:	d7c33303          	ld	t1,-644(t1) # 80006a28 <devsw+0x18>
    80002cb4:	01010113          	addi	sp,sp,16
    80002cb8:	00030067          	jr	t1

0000000080002cbc <panic>:
    80002cbc:	fe010113          	addi	sp,sp,-32
    80002cc0:	00113c23          	sd	ra,24(sp)
    80002cc4:	00813823          	sd	s0,16(sp)
    80002cc8:	00913423          	sd	s1,8(sp)
    80002ccc:	02010413          	addi	s0,sp,32
    80002cd0:	00050493          	mv	s1,a0
    80002cd4:	00002517          	auipc	a0,0x2
    80002cd8:	50450513          	addi	a0,a0,1284 # 800051d8 <_ZZ12printIntegermE6digits+0x140>
    80002cdc:	00004797          	auipc	a5,0x4
    80002ce0:	de07a623          	sw	zero,-532(a5) # 80006ac8 <pr+0x18>
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	034080e7          	jalr	52(ra) # 80002d18 <__printf>
    80002cec:	00048513          	mv	a0,s1
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	028080e7          	jalr	40(ra) # 80002d18 <__printf>
    80002cf8:	00002517          	auipc	a0,0x2
    80002cfc:	39850513          	addi	a0,a0,920 # 80005090 <kvmincrease+0xc10>
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	018080e7          	jalr	24(ra) # 80002d18 <__printf>
    80002d08:	00100793          	li	a5,1
    80002d0c:	00003717          	auipc	a4,0x3
    80002d10:	b2f72e23          	sw	a5,-1220(a4) # 80005848 <panicked>
    80002d14:	0000006f          	j	80002d14 <panic+0x58>

0000000080002d18 <__printf>:
    80002d18:	f3010113          	addi	sp,sp,-208
    80002d1c:	08813023          	sd	s0,128(sp)
    80002d20:	07313423          	sd	s3,104(sp)
    80002d24:	09010413          	addi	s0,sp,144
    80002d28:	05813023          	sd	s8,64(sp)
    80002d2c:	08113423          	sd	ra,136(sp)
    80002d30:	06913c23          	sd	s1,120(sp)
    80002d34:	07213823          	sd	s2,112(sp)
    80002d38:	07413023          	sd	s4,96(sp)
    80002d3c:	05513c23          	sd	s5,88(sp)
    80002d40:	05613823          	sd	s6,80(sp)
    80002d44:	05713423          	sd	s7,72(sp)
    80002d48:	03913c23          	sd	s9,56(sp)
    80002d4c:	03a13823          	sd	s10,48(sp)
    80002d50:	03b13423          	sd	s11,40(sp)
    80002d54:	00004317          	auipc	t1,0x4
    80002d58:	d5c30313          	addi	t1,t1,-676 # 80006ab0 <pr>
    80002d5c:	01832c03          	lw	s8,24(t1)
    80002d60:	00b43423          	sd	a1,8(s0)
    80002d64:	00c43823          	sd	a2,16(s0)
    80002d68:	00d43c23          	sd	a3,24(s0)
    80002d6c:	02e43023          	sd	a4,32(s0)
    80002d70:	02f43423          	sd	a5,40(s0)
    80002d74:	03043823          	sd	a6,48(s0)
    80002d78:	03143c23          	sd	a7,56(s0)
    80002d7c:	00050993          	mv	s3,a0
    80002d80:	4a0c1663          	bnez	s8,8000322c <__printf+0x514>
    80002d84:	60098c63          	beqz	s3,8000339c <__printf+0x684>
    80002d88:	0009c503          	lbu	a0,0(s3)
    80002d8c:	00840793          	addi	a5,s0,8
    80002d90:	f6f43c23          	sd	a5,-136(s0)
    80002d94:	00000493          	li	s1,0
    80002d98:	22050063          	beqz	a0,80002fb8 <__printf+0x2a0>
    80002d9c:	00002a37          	lui	s4,0x2
    80002da0:	00018ab7          	lui	s5,0x18
    80002da4:	000f4b37          	lui	s6,0xf4
    80002da8:	00989bb7          	lui	s7,0x989
    80002dac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002db0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002db4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002db8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002dbc:	00148c9b          	addiw	s9,s1,1
    80002dc0:	02500793          	li	a5,37
    80002dc4:	01998933          	add	s2,s3,s9
    80002dc8:	38f51263          	bne	a0,a5,8000314c <__printf+0x434>
    80002dcc:	00094783          	lbu	a5,0(s2)
    80002dd0:	00078c9b          	sext.w	s9,a5
    80002dd4:	1e078263          	beqz	a5,80002fb8 <__printf+0x2a0>
    80002dd8:	0024849b          	addiw	s1,s1,2
    80002ddc:	07000713          	li	a4,112
    80002de0:	00998933          	add	s2,s3,s1
    80002de4:	38e78a63          	beq	a5,a4,80003178 <__printf+0x460>
    80002de8:	20f76863          	bltu	a4,a5,80002ff8 <__printf+0x2e0>
    80002dec:	42a78863          	beq	a5,a0,8000321c <__printf+0x504>
    80002df0:	06400713          	li	a4,100
    80002df4:	40e79663          	bne	a5,a4,80003200 <__printf+0x4e8>
    80002df8:	f7843783          	ld	a5,-136(s0)
    80002dfc:	0007a603          	lw	a2,0(a5)
    80002e00:	00878793          	addi	a5,a5,8
    80002e04:	f6f43c23          	sd	a5,-136(s0)
    80002e08:	42064a63          	bltz	a2,8000323c <__printf+0x524>
    80002e0c:	00a00713          	li	a4,10
    80002e10:	02e677bb          	remuw	a5,a2,a4
    80002e14:	00002d97          	auipc	s11,0x2
    80002e18:	3ecd8d93          	addi	s11,s11,1004 # 80005200 <digits>
    80002e1c:	00900593          	li	a1,9
    80002e20:	0006051b          	sext.w	a0,a2
    80002e24:	00000c93          	li	s9,0
    80002e28:	02079793          	slli	a5,a5,0x20
    80002e2c:	0207d793          	srli	a5,a5,0x20
    80002e30:	00fd87b3          	add	a5,s11,a5
    80002e34:	0007c783          	lbu	a5,0(a5)
    80002e38:	02e656bb          	divuw	a3,a2,a4
    80002e3c:	f8f40023          	sb	a5,-128(s0)
    80002e40:	14c5d863          	bge	a1,a2,80002f90 <__printf+0x278>
    80002e44:	06300593          	li	a1,99
    80002e48:	00100c93          	li	s9,1
    80002e4c:	02e6f7bb          	remuw	a5,a3,a4
    80002e50:	02079793          	slli	a5,a5,0x20
    80002e54:	0207d793          	srli	a5,a5,0x20
    80002e58:	00fd87b3          	add	a5,s11,a5
    80002e5c:	0007c783          	lbu	a5,0(a5)
    80002e60:	02e6d73b          	divuw	a4,a3,a4
    80002e64:	f8f400a3          	sb	a5,-127(s0)
    80002e68:	12a5f463          	bgeu	a1,a0,80002f90 <__printf+0x278>
    80002e6c:	00a00693          	li	a3,10
    80002e70:	00900593          	li	a1,9
    80002e74:	02d777bb          	remuw	a5,a4,a3
    80002e78:	02079793          	slli	a5,a5,0x20
    80002e7c:	0207d793          	srli	a5,a5,0x20
    80002e80:	00fd87b3          	add	a5,s11,a5
    80002e84:	0007c503          	lbu	a0,0(a5)
    80002e88:	02d757bb          	divuw	a5,a4,a3
    80002e8c:	f8a40123          	sb	a0,-126(s0)
    80002e90:	48e5f263          	bgeu	a1,a4,80003314 <__printf+0x5fc>
    80002e94:	06300513          	li	a0,99
    80002e98:	02d7f5bb          	remuw	a1,a5,a3
    80002e9c:	02059593          	slli	a1,a1,0x20
    80002ea0:	0205d593          	srli	a1,a1,0x20
    80002ea4:	00bd85b3          	add	a1,s11,a1
    80002ea8:	0005c583          	lbu	a1,0(a1)
    80002eac:	02d7d7bb          	divuw	a5,a5,a3
    80002eb0:	f8b401a3          	sb	a1,-125(s0)
    80002eb4:	48e57263          	bgeu	a0,a4,80003338 <__printf+0x620>
    80002eb8:	3e700513          	li	a0,999
    80002ebc:	02d7f5bb          	remuw	a1,a5,a3
    80002ec0:	02059593          	slli	a1,a1,0x20
    80002ec4:	0205d593          	srli	a1,a1,0x20
    80002ec8:	00bd85b3          	add	a1,s11,a1
    80002ecc:	0005c583          	lbu	a1,0(a1)
    80002ed0:	02d7d7bb          	divuw	a5,a5,a3
    80002ed4:	f8b40223          	sb	a1,-124(s0)
    80002ed8:	46e57663          	bgeu	a0,a4,80003344 <__printf+0x62c>
    80002edc:	02d7f5bb          	remuw	a1,a5,a3
    80002ee0:	02059593          	slli	a1,a1,0x20
    80002ee4:	0205d593          	srli	a1,a1,0x20
    80002ee8:	00bd85b3          	add	a1,s11,a1
    80002eec:	0005c583          	lbu	a1,0(a1)
    80002ef0:	02d7d7bb          	divuw	a5,a5,a3
    80002ef4:	f8b402a3          	sb	a1,-123(s0)
    80002ef8:	46ea7863          	bgeu	s4,a4,80003368 <__printf+0x650>
    80002efc:	02d7f5bb          	remuw	a1,a5,a3
    80002f00:	02059593          	slli	a1,a1,0x20
    80002f04:	0205d593          	srli	a1,a1,0x20
    80002f08:	00bd85b3          	add	a1,s11,a1
    80002f0c:	0005c583          	lbu	a1,0(a1)
    80002f10:	02d7d7bb          	divuw	a5,a5,a3
    80002f14:	f8b40323          	sb	a1,-122(s0)
    80002f18:	3eeaf863          	bgeu	s5,a4,80003308 <__printf+0x5f0>
    80002f1c:	02d7f5bb          	remuw	a1,a5,a3
    80002f20:	02059593          	slli	a1,a1,0x20
    80002f24:	0205d593          	srli	a1,a1,0x20
    80002f28:	00bd85b3          	add	a1,s11,a1
    80002f2c:	0005c583          	lbu	a1,0(a1)
    80002f30:	02d7d7bb          	divuw	a5,a5,a3
    80002f34:	f8b403a3          	sb	a1,-121(s0)
    80002f38:	42eb7e63          	bgeu	s6,a4,80003374 <__printf+0x65c>
    80002f3c:	02d7f5bb          	remuw	a1,a5,a3
    80002f40:	02059593          	slli	a1,a1,0x20
    80002f44:	0205d593          	srli	a1,a1,0x20
    80002f48:	00bd85b3          	add	a1,s11,a1
    80002f4c:	0005c583          	lbu	a1,0(a1)
    80002f50:	02d7d7bb          	divuw	a5,a5,a3
    80002f54:	f8b40423          	sb	a1,-120(s0)
    80002f58:	42ebfc63          	bgeu	s7,a4,80003390 <__printf+0x678>
    80002f5c:	02079793          	slli	a5,a5,0x20
    80002f60:	0207d793          	srli	a5,a5,0x20
    80002f64:	00fd8db3          	add	s11,s11,a5
    80002f68:	000dc703          	lbu	a4,0(s11)
    80002f6c:	00a00793          	li	a5,10
    80002f70:	00900c93          	li	s9,9
    80002f74:	f8e404a3          	sb	a4,-119(s0)
    80002f78:	00065c63          	bgez	a2,80002f90 <__printf+0x278>
    80002f7c:	f9040713          	addi	a4,s0,-112
    80002f80:	00f70733          	add	a4,a4,a5
    80002f84:	02d00693          	li	a3,45
    80002f88:	fed70823          	sb	a3,-16(a4)
    80002f8c:	00078c93          	mv	s9,a5
    80002f90:	f8040793          	addi	a5,s0,-128
    80002f94:	01978cb3          	add	s9,a5,s9
    80002f98:	f7f40d13          	addi	s10,s0,-129
    80002f9c:	000cc503          	lbu	a0,0(s9)
    80002fa0:	fffc8c93          	addi	s9,s9,-1
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	b90080e7          	jalr	-1136(ra) # 80002b34 <consputc>
    80002fac:	ffac98e3          	bne	s9,s10,80002f9c <__printf+0x284>
    80002fb0:	00094503          	lbu	a0,0(s2)
    80002fb4:	e00514e3          	bnez	a0,80002dbc <__printf+0xa4>
    80002fb8:	1a0c1663          	bnez	s8,80003164 <__printf+0x44c>
    80002fbc:	08813083          	ld	ra,136(sp)
    80002fc0:	08013403          	ld	s0,128(sp)
    80002fc4:	07813483          	ld	s1,120(sp)
    80002fc8:	07013903          	ld	s2,112(sp)
    80002fcc:	06813983          	ld	s3,104(sp)
    80002fd0:	06013a03          	ld	s4,96(sp)
    80002fd4:	05813a83          	ld	s5,88(sp)
    80002fd8:	05013b03          	ld	s6,80(sp)
    80002fdc:	04813b83          	ld	s7,72(sp)
    80002fe0:	04013c03          	ld	s8,64(sp)
    80002fe4:	03813c83          	ld	s9,56(sp)
    80002fe8:	03013d03          	ld	s10,48(sp)
    80002fec:	02813d83          	ld	s11,40(sp)
    80002ff0:	0d010113          	addi	sp,sp,208
    80002ff4:	00008067          	ret
    80002ff8:	07300713          	li	a4,115
    80002ffc:	1ce78a63          	beq	a5,a4,800031d0 <__printf+0x4b8>
    80003000:	07800713          	li	a4,120
    80003004:	1ee79e63          	bne	a5,a4,80003200 <__printf+0x4e8>
    80003008:	f7843783          	ld	a5,-136(s0)
    8000300c:	0007a703          	lw	a4,0(a5)
    80003010:	00878793          	addi	a5,a5,8
    80003014:	f6f43c23          	sd	a5,-136(s0)
    80003018:	28074263          	bltz	a4,8000329c <__printf+0x584>
    8000301c:	00002d97          	auipc	s11,0x2
    80003020:	1e4d8d93          	addi	s11,s11,484 # 80005200 <digits>
    80003024:	00f77793          	andi	a5,a4,15
    80003028:	00fd87b3          	add	a5,s11,a5
    8000302c:	0007c683          	lbu	a3,0(a5)
    80003030:	00f00613          	li	a2,15
    80003034:	0007079b          	sext.w	a5,a4
    80003038:	f8d40023          	sb	a3,-128(s0)
    8000303c:	0047559b          	srliw	a1,a4,0x4
    80003040:	0047569b          	srliw	a3,a4,0x4
    80003044:	00000c93          	li	s9,0
    80003048:	0ee65063          	bge	a2,a4,80003128 <__printf+0x410>
    8000304c:	00f6f693          	andi	a3,a3,15
    80003050:	00dd86b3          	add	a3,s11,a3
    80003054:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003058:	0087d79b          	srliw	a5,a5,0x8
    8000305c:	00100c93          	li	s9,1
    80003060:	f8d400a3          	sb	a3,-127(s0)
    80003064:	0cb67263          	bgeu	a2,a1,80003128 <__printf+0x410>
    80003068:	00f7f693          	andi	a3,a5,15
    8000306c:	00dd86b3          	add	a3,s11,a3
    80003070:	0006c583          	lbu	a1,0(a3)
    80003074:	00f00613          	li	a2,15
    80003078:	0047d69b          	srliw	a3,a5,0x4
    8000307c:	f8b40123          	sb	a1,-126(s0)
    80003080:	0047d593          	srli	a1,a5,0x4
    80003084:	28f67e63          	bgeu	a2,a5,80003320 <__printf+0x608>
    80003088:	00f6f693          	andi	a3,a3,15
    8000308c:	00dd86b3          	add	a3,s11,a3
    80003090:	0006c503          	lbu	a0,0(a3)
    80003094:	0087d813          	srli	a6,a5,0x8
    80003098:	0087d69b          	srliw	a3,a5,0x8
    8000309c:	f8a401a3          	sb	a0,-125(s0)
    800030a0:	28b67663          	bgeu	a2,a1,8000332c <__printf+0x614>
    800030a4:	00f6f693          	andi	a3,a3,15
    800030a8:	00dd86b3          	add	a3,s11,a3
    800030ac:	0006c583          	lbu	a1,0(a3)
    800030b0:	00c7d513          	srli	a0,a5,0xc
    800030b4:	00c7d69b          	srliw	a3,a5,0xc
    800030b8:	f8b40223          	sb	a1,-124(s0)
    800030bc:	29067a63          	bgeu	a2,a6,80003350 <__printf+0x638>
    800030c0:	00f6f693          	andi	a3,a3,15
    800030c4:	00dd86b3          	add	a3,s11,a3
    800030c8:	0006c583          	lbu	a1,0(a3)
    800030cc:	0107d813          	srli	a6,a5,0x10
    800030d0:	0107d69b          	srliw	a3,a5,0x10
    800030d4:	f8b402a3          	sb	a1,-123(s0)
    800030d8:	28a67263          	bgeu	a2,a0,8000335c <__printf+0x644>
    800030dc:	00f6f693          	andi	a3,a3,15
    800030e0:	00dd86b3          	add	a3,s11,a3
    800030e4:	0006c683          	lbu	a3,0(a3)
    800030e8:	0147d79b          	srliw	a5,a5,0x14
    800030ec:	f8d40323          	sb	a3,-122(s0)
    800030f0:	21067663          	bgeu	a2,a6,800032fc <__printf+0x5e4>
    800030f4:	02079793          	slli	a5,a5,0x20
    800030f8:	0207d793          	srli	a5,a5,0x20
    800030fc:	00fd8db3          	add	s11,s11,a5
    80003100:	000dc683          	lbu	a3,0(s11)
    80003104:	00800793          	li	a5,8
    80003108:	00700c93          	li	s9,7
    8000310c:	f8d403a3          	sb	a3,-121(s0)
    80003110:	00075c63          	bgez	a4,80003128 <__printf+0x410>
    80003114:	f9040713          	addi	a4,s0,-112
    80003118:	00f70733          	add	a4,a4,a5
    8000311c:	02d00693          	li	a3,45
    80003120:	fed70823          	sb	a3,-16(a4)
    80003124:	00078c93          	mv	s9,a5
    80003128:	f8040793          	addi	a5,s0,-128
    8000312c:	01978cb3          	add	s9,a5,s9
    80003130:	f7f40d13          	addi	s10,s0,-129
    80003134:	000cc503          	lbu	a0,0(s9)
    80003138:	fffc8c93          	addi	s9,s9,-1
    8000313c:	00000097          	auipc	ra,0x0
    80003140:	9f8080e7          	jalr	-1544(ra) # 80002b34 <consputc>
    80003144:	ff9d18e3          	bne	s10,s9,80003134 <__printf+0x41c>
    80003148:	0100006f          	j	80003158 <__printf+0x440>
    8000314c:	00000097          	auipc	ra,0x0
    80003150:	9e8080e7          	jalr	-1560(ra) # 80002b34 <consputc>
    80003154:	000c8493          	mv	s1,s9
    80003158:	00094503          	lbu	a0,0(s2)
    8000315c:	c60510e3          	bnez	a0,80002dbc <__printf+0xa4>
    80003160:	e40c0ee3          	beqz	s8,80002fbc <__printf+0x2a4>
    80003164:	00004517          	auipc	a0,0x4
    80003168:	94c50513          	addi	a0,a0,-1716 # 80006ab0 <pr>
    8000316c:	00001097          	auipc	ra,0x1
    80003170:	94c080e7          	jalr	-1716(ra) # 80003ab8 <release>
    80003174:	e49ff06f          	j	80002fbc <__printf+0x2a4>
    80003178:	f7843783          	ld	a5,-136(s0)
    8000317c:	03000513          	li	a0,48
    80003180:	01000d13          	li	s10,16
    80003184:	00878713          	addi	a4,a5,8
    80003188:	0007bc83          	ld	s9,0(a5)
    8000318c:	f6e43c23          	sd	a4,-136(s0)
    80003190:	00000097          	auipc	ra,0x0
    80003194:	9a4080e7          	jalr	-1628(ra) # 80002b34 <consputc>
    80003198:	07800513          	li	a0,120
    8000319c:	00000097          	auipc	ra,0x0
    800031a0:	998080e7          	jalr	-1640(ra) # 80002b34 <consputc>
    800031a4:	00002d97          	auipc	s11,0x2
    800031a8:	05cd8d93          	addi	s11,s11,92 # 80005200 <digits>
    800031ac:	03ccd793          	srli	a5,s9,0x3c
    800031b0:	00fd87b3          	add	a5,s11,a5
    800031b4:	0007c503          	lbu	a0,0(a5)
    800031b8:	fffd0d1b          	addiw	s10,s10,-1
    800031bc:	004c9c93          	slli	s9,s9,0x4
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	974080e7          	jalr	-1676(ra) # 80002b34 <consputc>
    800031c8:	fe0d12e3          	bnez	s10,800031ac <__printf+0x494>
    800031cc:	f8dff06f          	j	80003158 <__printf+0x440>
    800031d0:	f7843783          	ld	a5,-136(s0)
    800031d4:	0007bc83          	ld	s9,0(a5)
    800031d8:	00878793          	addi	a5,a5,8
    800031dc:	f6f43c23          	sd	a5,-136(s0)
    800031e0:	000c9a63          	bnez	s9,800031f4 <__printf+0x4dc>
    800031e4:	1080006f          	j	800032ec <__printf+0x5d4>
    800031e8:	001c8c93          	addi	s9,s9,1
    800031ec:	00000097          	auipc	ra,0x0
    800031f0:	948080e7          	jalr	-1720(ra) # 80002b34 <consputc>
    800031f4:	000cc503          	lbu	a0,0(s9)
    800031f8:	fe0518e3          	bnez	a0,800031e8 <__printf+0x4d0>
    800031fc:	f5dff06f          	j	80003158 <__printf+0x440>
    80003200:	02500513          	li	a0,37
    80003204:	00000097          	auipc	ra,0x0
    80003208:	930080e7          	jalr	-1744(ra) # 80002b34 <consputc>
    8000320c:	000c8513          	mv	a0,s9
    80003210:	00000097          	auipc	ra,0x0
    80003214:	924080e7          	jalr	-1756(ra) # 80002b34 <consputc>
    80003218:	f41ff06f          	j	80003158 <__printf+0x440>
    8000321c:	02500513          	li	a0,37
    80003220:	00000097          	auipc	ra,0x0
    80003224:	914080e7          	jalr	-1772(ra) # 80002b34 <consputc>
    80003228:	f31ff06f          	j	80003158 <__printf+0x440>
    8000322c:	00030513          	mv	a0,t1
    80003230:	00000097          	auipc	ra,0x0
    80003234:	7bc080e7          	jalr	1980(ra) # 800039ec <acquire>
    80003238:	b4dff06f          	j	80002d84 <__printf+0x6c>
    8000323c:	40c0053b          	negw	a0,a2
    80003240:	00a00713          	li	a4,10
    80003244:	02e576bb          	remuw	a3,a0,a4
    80003248:	00002d97          	auipc	s11,0x2
    8000324c:	fb8d8d93          	addi	s11,s11,-72 # 80005200 <digits>
    80003250:	ff700593          	li	a1,-9
    80003254:	02069693          	slli	a3,a3,0x20
    80003258:	0206d693          	srli	a3,a3,0x20
    8000325c:	00dd86b3          	add	a3,s11,a3
    80003260:	0006c683          	lbu	a3,0(a3)
    80003264:	02e557bb          	divuw	a5,a0,a4
    80003268:	f8d40023          	sb	a3,-128(s0)
    8000326c:	10b65e63          	bge	a2,a1,80003388 <__printf+0x670>
    80003270:	06300593          	li	a1,99
    80003274:	02e7f6bb          	remuw	a3,a5,a4
    80003278:	02069693          	slli	a3,a3,0x20
    8000327c:	0206d693          	srli	a3,a3,0x20
    80003280:	00dd86b3          	add	a3,s11,a3
    80003284:	0006c683          	lbu	a3,0(a3)
    80003288:	02e7d73b          	divuw	a4,a5,a4
    8000328c:	00200793          	li	a5,2
    80003290:	f8d400a3          	sb	a3,-127(s0)
    80003294:	bca5ece3          	bltu	a1,a0,80002e6c <__printf+0x154>
    80003298:	ce5ff06f          	j	80002f7c <__printf+0x264>
    8000329c:	40e007bb          	negw	a5,a4
    800032a0:	00002d97          	auipc	s11,0x2
    800032a4:	f60d8d93          	addi	s11,s11,-160 # 80005200 <digits>
    800032a8:	00f7f693          	andi	a3,a5,15
    800032ac:	00dd86b3          	add	a3,s11,a3
    800032b0:	0006c583          	lbu	a1,0(a3)
    800032b4:	ff100613          	li	a2,-15
    800032b8:	0047d69b          	srliw	a3,a5,0x4
    800032bc:	f8b40023          	sb	a1,-128(s0)
    800032c0:	0047d59b          	srliw	a1,a5,0x4
    800032c4:	0ac75e63          	bge	a4,a2,80003380 <__printf+0x668>
    800032c8:	00f6f693          	andi	a3,a3,15
    800032cc:	00dd86b3          	add	a3,s11,a3
    800032d0:	0006c603          	lbu	a2,0(a3)
    800032d4:	00f00693          	li	a3,15
    800032d8:	0087d79b          	srliw	a5,a5,0x8
    800032dc:	f8c400a3          	sb	a2,-127(s0)
    800032e0:	d8b6e4e3          	bltu	a3,a1,80003068 <__printf+0x350>
    800032e4:	00200793          	li	a5,2
    800032e8:	e2dff06f          	j	80003114 <__printf+0x3fc>
    800032ec:	00002c97          	auipc	s9,0x2
    800032f0:	ef4c8c93          	addi	s9,s9,-268 # 800051e0 <_ZZ12printIntegermE6digits+0x148>
    800032f4:	02800513          	li	a0,40
    800032f8:	ef1ff06f          	j	800031e8 <__printf+0x4d0>
    800032fc:	00700793          	li	a5,7
    80003300:	00600c93          	li	s9,6
    80003304:	e0dff06f          	j	80003110 <__printf+0x3f8>
    80003308:	00700793          	li	a5,7
    8000330c:	00600c93          	li	s9,6
    80003310:	c69ff06f          	j	80002f78 <__printf+0x260>
    80003314:	00300793          	li	a5,3
    80003318:	00200c93          	li	s9,2
    8000331c:	c5dff06f          	j	80002f78 <__printf+0x260>
    80003320:	00300793          	li	a5,3
    80003324:	00200c93          	li	s9,2
    80003328:	de9ff06f          	j	80003110 <__printf+0x3f8>
    8000332c:	00400793          	li	a5,4
    80003330:	00300c93          	li	s9,3
    80003334:	dddff06f          	j	80003110 <__printf+0x3f8>
    80003338:	00400793          	li	a5,4
    8000333c:	00300c93          	li	s9,3
    80003340:	c39ff06f          	j	80002f78 <__printf+0x260>
    80003344:	00500793          	li	a5,5
    80003348:	00400c93          	li	s9,4
    8000334c:	c2dff06f          	j	80002f78 <__printf+0x260>
    80003350:	00500793          	li	a5,5
    80003354:	00400c93          	li	s9,4
    80003358:	db9ff06f          	j	80003110 <__printf+0x3f8>
    8000335c:	00600793          	li	a5,6
    80003360:	00500c93          	li	s9,5
    80003364:	dadff06f          	j	80003110 <__printf+0x3f8>
    80003368:	00600793          	li	a5,6
    8000336c:	00500c93          	li	s9,5
    80003370:	c09ff06f          	j	80002f78 <__printf+0x260>
    80003374:	00800793          	li	a5,8
    80003378:	00700c93          	li	s9,7
    8000337c:	bfdff06f          	j	80002f78 <__printf+0x260>
    80003380:	00100793          	li	a5,1
    80003384:	d91ff06f          	j	80003114 <__printf+0x3fc>
    80003388:	00100793          	li	a5,1
    8000338c:	bf1ff06f          	j	80002f7c <__printf+0x264>
    80003390:	00900793          	li	a5,9
    80003394:	00800c93          	li	s9,8
    80003398:	be1ff06f          	j	80002f78 <__printf+0x260>
    8000339c:	00002517          	auipc	a0,0x2
    800033a0:	e4c50513          	addi	a0,a0,-436 # 800051e8 <_ZZ12printIntegermE6digits+0x150>
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	918080e7          	jalr	-1768(ra) # 80002cbc <panic>

00000000800033ac <printfinit>:
    800033ac:	fe010113          	addi	sp,sp,-32
    800033b0:	00813823          	sd	s0,16(sp)
    800033b4:	00913423          	sd	s1,8(sp)
    800033b8:	00113c23          	sd	ra,24(sp)
    800033bc:	02010413          	addi	s0,sp,32
    800033c0:	00003497          	auipc	s1,0x3
    800033c4:	6f048493          	addi	s1,s1,1776 # 80006ab0 <pr>
    800033c8:	00048513          	mv	a0,s1
    800033cc:	00002597          	auipc	a1,0x2
    800033d0:	e2c58593          	addi	a1,a1,-468 # 800051f8 <_ZZ12printIntegermE6digits+0x160>
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	5f4080e7          	jalr	1524(ra) # 800039c8 <initlock>
    800033dc:	01813083          	ld	ra,24(sp)
    800033e0:	01013403          	ld	s0,16(sp)
    800033e4:	0004ac23          	sw	zero,24(s1)
    800033e8:	00813483          	ld	s1,8(sp)
    800033ec:	02010113          	addi	sp,sp,32
    800033f0:	00008067          	ret

00000000800033f4 <uartinit>:
    800033f4:	ff010113          	addi	sp,sp,-16
    800033f8:	00813423          	sd	s0,8(sp)
    800033fc:	01010413          	addi	s0,sp,16
    80003400:	100007b7          	lui	a5,0x10000
    80003404:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003408:	f8000713          	li	a4,-128
    8000340c:	00e781a3          	sb	a4,3(a5)
    80003410:	00300713          	li	a4,3
    80003414:	00e78023          	sb	a4,0(a5)
    80003418:	000780a3          	sb	zero,1(a5)
    8000341c:	00e781a3          	sb	a4,3(a5)
    80003420:	00700693          	li	a3,7
    80003424:	00d78123          	sb	a3,2(a5)
    80003428:	00e780a3          	sb	a4,1(a5)
    8000342c:	00813403          	ld	s0,8(sp)
    80003430:	01010113          	addi	sp,sp,16
    80003434:	00008067          	ret

0000000080003438 <uartputc>:
    80003438:	00002797          	auipc	a5,0x2
    8000343c:	4107a783          	lw	a5,1040(a5) # 80005848 <panicked>
    80003440:	00078463          	beqz	a5,80003448 <uartputc+0x10>
    80003444:	0000006f          	j	80003444 <uartputc+0xc>
    80003448:	fd010113          	addi	sp,sp,-48
    8000344c:	02813023          	sd	s0,32(sp)
    80003450:	00913c23          	sd	s1,24(sp)
    80003454:	01213823          	sd	s2,16(sp)
    80003458:	01313423          	sd	s3,8(sp)
    8000345c:	02113423          	sd	ra,40(sp)
    80003460:	03010413          	addi	s0,sp,48
    80003464:	00002917          	auipc	s2,0x2
    80003468:	3ec90913          	addi	s2,s2,1004 # 80005850 <uart_tx_r>
    8000346c:	00093783          	ld	a5,0(s2)
    80003470:	00002497          	auipc	s1,0x2
    80003474:	3e848493          	addi	s1,s1,1000 # 80005858 <uart_tx_w>
    80003478:	0004b703          	ld	a4,0(s1)
    8000347c:	02078693          	addi	a3,a5,32
    80003480:	00050993          	mv	s3,a0
    80003484:	02e69c63          	bne	a3,a4,800034bc <uartputc+0x84>
    80003488:	00001097          	auipc	ra,0x1
    8000348c:	834080e7          	jalr	-1996(ra) # 80003cbc <push_on>
    80003490:	00093783          	ld	a5,0(s2)
    80003494:	0004b703          	ld	a4,0(s1)
    80003498:	02078793          	addi	a5,a5,32
    8000349c:	00e79463          	bne	a5,a4,800034a4 <uartputc+0x6c>
    800034a0:	0000006f          	j	800034a0 <uartputc+0x68>
    800034a4:	00001097          	auipc	ra,0x1
    800034a8:	88c080e7          	jalr	-1908(ra) # 80003d30 <pop_on>
    800034ac:	00093783          	ld	a5,0(s2)
    800034b0:	0004b703          	ld	a4,0(s1)
    800034b4:	02078693          	addi	a3,a5,32
    800034b8:	fce688e3          	beq	a3,a4,80003488 <uartputc+0x50>
    800034bc:	01f77693          	andi	a3,a4,31
    800034c0:	00003597          	auipc	a1,0x3
    800034c4:	61058593          	addi	a1,a1,1552 # 80006ad0 <uart_tx_buf>
    800034c8:	00d586b3          	add	a3,a1,a3
    800034cc:	00170713          	addi	a4,a4,1
    800034d0:	01368023          	sb	s3,0(a3)
    800034d4:	00e4b023          	sd	a4,0(s1)
    800034d8:	10000637          	lui	a2,0x10000
    800034dc:	02f71063          	bne	a4,a5,800034fc <uartputc+0xc4>
    800034e0:	0340006f          	j	80003514 <uartputc+0xdc>
    800034e4:	00074703          	lbu	a4,0(a4)
    800034e8:	00f93023          	sd	a5,0(s2)
    800034ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800034f0:	00093783          	ld	a5,0(s2)
    800034f4:	0004b703          	ld	a4,0(s1)
    800034f8:	00f70e63          	beq	a4,a5,80003514 <uartputc+0xdc>
    800034fc:	00564683          	lbu	a3,5(a2)
    80003500:	01f7f713          	andi	a4,a5,31
    80003504:	00e58733          	add	a4,a1,a4
    80003508:	0206f693          	andi	a3,a3,32
    8000350c:	00178793          	addi	a5,a5,1
    80003510:	fc069ae3          	bnez	a3,800034e4 <uartputc+0xac>
    80003514:	02813083          	ld	ra,40(sp)
    80003518:	02013403          	ld	s0,32(sp)
    8000351c:	01813483          	ld	s1,24(sp)
    80003520:	01013903          	ld	s2,16(sp)
    80003524:	00813983          	ld	s3,8(sp)
    80003528:	03010113          	addi	sp,sp,48
    8000352c:	00008067          	ret

0000000080003530 <uartputc_sync>:
    80003530:	ff010113          	addi	sp,sp,-16
    80003534:	00813423          	sd	s0,8(sp)
    80003538:	01010413          	addi	s0,sp,16
    8000353c:	00002717          	auipc	a4,0x2
    80003540:	30c72703          	lw	a4,780(a4) # 80005848 <panicked>
    80003544:	02071663          	bnez	a4,80003570 <uartputc_sync+0x40>
    80003548:	00050793          	mv	a5,a0
    8000354c:	100006b7          	lui	a3,0x10000
    80003550:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003554:	02077713          	andi	a4,a4,32
    80003558:	fe070ce3          	beqz	a4,80003550 <uartputc_sync+0x20>
    8000355c:	0ff7f793          	andi	a5,a5,255
    80003560:	00f68023          	sb	a5,0(a3)
    80003564:	00813403          	ld	s0,8(sp)
    80003568:	01010113          	addi	sp,sp,16
    8000356c:	00008067          	ret
    80003570:	0000006f          	j	80003570 <uartputc_sync+0x40>

0000000080003574 <uartstart>:
    80003574:	ff010113          	addi	sp,sp,-16
    80003578:	00813423          	sd	s0,8(sp)
    8000357c:	01010413          	addi	s0,sp,16
    80003580:	00002617          	auipc	a2,0x2
    80003584:	2d060613          	addi	a2,a2,720 # 80005850 <uart_tx_r>
    80003588:	00002517          	auipc	a0,0x2
    8000358c:	2d050513          	addi	a0,a0,720 # 80005858 <uart_tx_w>
    80003590:	00063783          	ld	a5,0(a2)
    80003594:	00053703          	ld	a4,0(a0)
    80003598:	04f70263          	beq	a4,a5,800035dc <uartstart+0x68>
    8000359c:	100005b7          	lui	a1,0x10000
    800035a0:	00003817          	auipc	a6,0x3
    800035a4:	53080813          	addi	a6,a6,1328 # 80006ad0 <uart_tx_buf>
    800035a8:	01c0006f          	j	800035c4 <uartstart+0x50>
    800035ac:	0006c703          	lbu	a4,0(a3)
    800035b0:	00f63023          	sd	a5,0(a2)
    800035b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800035b8:	00063783          	ld	a5,0(a2)
    800035bc:	00053703          	ld	a4,0(a0)
    800035c0:	00f70e63          	beq	a4,a5,800035dc <uartstart+0x68>
    800035c4:	01f7f713          	andi	a4,a5,31
    800035c8:	00e806b3          	add	a3,a6,a4
    800035cc:	0055c703          	lbu	a4,5(a1)
    800035d0:	00178793          	addi	a5,a5,1
    800035d4:	02077713          	andi	a4,a4,32
    800035d8:	fc071ae3          	bnez	a4,800035ac <uartstart+0x38>
    800035dc:	00813403          	ld	s0,8(sp)
    800035e0:	01010113          	addi	sp,sp,16
    800035e4:	00008067          	ret

00000000800035e8 <uartgetc>:
    800035e8:	ff010113          	addi	sp,sp,-16
    800035ec:	00813423          	sd	s0,8(sp)
    800035f0:	01010413          	addi	s0,sp,16
    800035f4:	10000737          	lui	a4,0x10000
    800035f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800035fc:	0017f793          	andi	a5,a5,1
    80003600:	00078c63          	beqz	a5,80003618 <uartgetc+0x30>
    80003604:	00074503          	lbu	a0,0(a4)
    80003608:	0ff57513          	andi	a0,a0,255
    8000360c:	00813403          	ld	s0,8(sp)
    80003610:	01010113          	addi	sp,sp,16
    80003614:	00008067          	ret
    80003618:	fff00513          	li	a0,-1
    8000361c:	ff1ff06f          	j	8000360c <uartgetc+0x24>

0000000080003620 <uartintr>:
    80003620:	100007b7          	lui	a5,0x10000
    80003624:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003628:	0017f793          	andi	a5,a5,1
    8000362c:	0a078463          	beqz	a5,800036d4 <uartintr+0xb4>
    80003630:	fe010113          	addi	sp,sp,-32
    80003634:	00813823          	sd	s0,16(sp)
    80003638:	00913423          	sd	s1,8(sp)
    8000363c:	00113c23          	sd	ra,24(sp)
    80003640:	02010413          	addi	s0,sp,32
    80003644:	100004b7          	lui	s1,0x10000
    80003648:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000364c:	0ff57513          	andi	a0,a0,255
    80003650:	fffff097          	auipc	ra,0xfffff
    80003654:	534080e7          	jalr	1332(ra) # 80002b84 <consoleintr>
    80003658:	0054c783          	lbu	a5,5(s1)
    8000365c:	0017f793          	andi	a5,a5,1
    80003660:	fe0794e3          	bnez	a5,80003648 <uartintr+0x28>
    80003664:	00002617          	auipc	a2,0x2
    80003668:	1ec60613          	addi	a2,a2,492 # 80005850 <uart_tx_r>
    8000366c:	00002517          	auipc	a0,0x2
    80003670:	1ec50513          	addi	a0,a0,492 # 80005858 <uart_tx_w>
    80003674:	00063783          	ld	a5,0(a2)
    80003678:	00053703          	ld	a4,0(a0)
    8000367c:	04f70263          	beq	a4,a5,800036c0 <uartintr+0xa0>
    80003680:	100005b7          	lui	a1,0x10000
    80003684:	00003817          	auipc	a6,0x3
    80003688:	44c80813          	addi	a6,a6,1100 # 80006ad0 <uart_tx_buf>
    8000368c:	01c0006f          	j	800036a8 <uartintr+0x88>
    80003690:	0006c703          	lbu	a4,0(a3)
    80003694:	00f63023          	sd	a5,0(a2)
    80003698:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000369c:	00063783          	ld	a5,0(a2)
    800036a0:	00053703          	ld	a4,0(a0)
    800036a4:	00f70e63          	beq	a4,a5,800036c0 <uartintr+0xa0>
    800036a8:	01f7f713          	andi	a4,a5,31
    800036ac:	00e806b3          	add	a3,a6,a4
    800036b0:	0055c703          	lbu	a4,5(a1)
    800036b4:	00178793          	addi	a5,a5,1
    800036b8:	02077713          	andi	a4,a4,32
    800036bc:	fc071ae3          	bnez	a4,80003690 <uartintr+0x70>
    800036c0:	01813083          	ld	ra,24(sp)
    800036c4:	01013403          	ld	s0,16(sp)
    800036c8:	00813483          	ld	s1,8(sp)
    800036cc:	02010113          	addi	sp,sp,32
    800036d0:	00008067          	ret
    800036d4:	00002617          	auipc	a2,0x2
    800036d8:	17c60613          	addi	a2,a2,380 # 80005850 <uart_tx_r>
    800036dc:	00002517          	auipc	a0,0x2
    800036e0:	17c50513          	addi	a0,a0,380 # 80005858 <uart_tx_w>
    800036e4:	00063783          	ld	a5,0(a2)
    800036e8:	00053703          	ld	a4,0(a0)
    800036ec:	04f70263          	beq	a4,a5,80003730 <uartintr+0x110>
    800036f0:	100005b7          	lui	a1,0x10000
    800036f4:	00003817          	auipc	a6,0x3
    800036f8:	3dc80813          	addi	a6,a6,988 # 80006ad0 <uart_tx_buf>
    800036fc:	01c0006f          	j	80003718 <uartintr+0xf8>
    80003700:	0006c703          	lbu	a4,0(a3)
    80003704:	00f63023          	sd	a5,0(a2)
    80003708:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000370c:	00063783          	ld	a5,0(a2)
    80003710:	00053703          	ld	a4,0(a0)
    80003714:	02f70063          	beq	a4,a5,80003734 <uartintr+0x114>
    80003718:	01f7f713          	andi	a4,a5,31
    8000371c:	00e806b3          	add	a3,a6,a4
    80003720:	0055c703          	lbu	a4,5(a1)
    80003724:	00178793          	addi	a5,a5,1
    80003728:	02077713          	andi	a4,a4,32
    8000372c:	fc071ae3          	bnez	a4,80003700 <uartintr+0xe0>
    80003730:	00008067          	ret
    80003734:	00008067          	ret

0000000080003738 <kinit>:
    80003738:	fc010113          	addi	sp,sp,-64
    8000373c:	02913423          	sd	s1,40(sp)
    80003740:	fffff7b7          	lui	a5,0xfffff
    80003744:	00004497          	auipc	s1,0x4
    80003748:	3bb48493          	addi	s1,s1,955 # 80007aff <end+0xfff>
    8000374c:	02813823          	sd	s0,48(sp)
    80003750:	01313c23          	sd	s3,24(sp)
    80003754:	00f4f4b3          	and	s1,s1,a5
    80003758:	02113c23          	sd	ra,56(sp)
    8000375c:	03213023          	sd	s2,32(sp)
    80003760:	01413823          	sd	s4,16(sp)
    80003764:	01513423          	sd	s5,8(sp)
    80003768:	04010413          	addi	s0,sp,64
    8000376c:	000017b7          	lui	a5,0x1
    80003770:	01100993          	li	s3,17
    80003774:	00f487b3          	add	a5,s1,a5
    80003778:	01b99993          	slli	s3,s3,0x1b
    8000377c:	06f9e063          	bltu	s3,a5,800037dc <kinit+0xa4>
    80003780:	00003a97          	auipc	s5,0x3
    80003784:	380a8a93          	addi	s5,s5,896 # 80006b00 <end>
    80003788:	0754ec63          	bltu	s1,s5,80003800 <kinit+0xc8>
    8000378c:	0734fa63          	bgeu	s1,s3,80003800 <kinit+0xc8>
    80003790:	00088a37          	lui	s4,0x88
    80003794:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003798:	00002917          	auipc	s2,0x2
    8000379c:	0c890913          	addi	s2,s2,200 # 80005860 <kmem>
    800037a0:	00ca1a13          	slli	s4,s4,0xc
    800037a4:	0140006f          	j	800037b8 <kinit+0x80>
    800037a8:	000017b7          	lui	a5,0x1
    800037ac:	00f484b3          	add	s1,s1,a5
    800037b0:	0554e863          	bltu	s1,s5,80003800 <kinit+0xc8>
    800037b4:	0534f663          	bgeu	s1,s3,80003800 <kinit+0xc8>
    800037b8:	00001637          	lui	a2,0x1
    800037bc:	00100593          	li	a1,1
    800037c0:	00048513          	mv	a0,s1
    800037c4:	00000097          	auipc	ra,0x0
    800037c8:	5e4080e7          	jalr	1508(ra) # 80003da8 <__memset>
    800037cc:	00093783          	ld	a5,0(s2)
    800037d0:	00f4b023          	sd	a5,0(s1)
    800037d4:	00993023          	sd	s1,0(s2)
    800037d8:	fd4498e3          	bne	s1,s4,800037a8 <kinit+0x70>
    800037dc:	03813083          	ld	ra,56(sp)
    800037e0:	03013403          	ld	s0,48(sp)
    800037e4:	02813483          	ld	s1,40(sp)
    800037e8:	02013903          	ld	s2,32(sp)
    800037ec:	01813983          	ld	s3,24(sp)
    800037f0:	01013a03          	ld	s4,16(sp)
    800037f4:	00813a83          	ld	s5,8(sp)
    800037f8:	04010113          	addi	sp,sp,64
    800037fc:	00008067          	ret
    80003800:	00002517          	auipc	a0,0x2
    80003804:	a1850513          	addi	a0,a0,-1512 # 80005218 <digits+0x18>
    80003808:	fffff097          	auipc	ra,0xfffff
    8000380c:	4b4080e7          	jalr	1204(ra) # 80002cbc <panic>

0000000080003810 <freerange>:
    80003810:	fc010113          	addi	sp,sp,-64
    80003814:	000017b7          	lui	a5,0x1
    80003818:	02913423          	sd	s1,40(sp)
    8000381c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003820:	009504b3          	add	s1,a0,s1
    80003824:	fffff537          	lui	a0,0xfffff
    80003828:	02813823          	sd	s0,48(sp)
    8000382c:	02113c23          	sd	ra,56(sp)
    80003830:	03213023          	sd	s2,32(sp)
    80003834:	01313c23          	sd	s3,24(sp)
    80003838:	01413823          	sd	s4,16(sp)
    8000383c:	01513423          	sd	s5,8(sp)
    80003840:	01613023          	sd	s6,0(sp)
    80003844:	04010413          	addi	s0,sp,64
    80003848:	00a4f4b3          	and	s1,s1,a0
    8000384c:	00f487b3          	add	a5,s1,a5
    80003850:	06f5e463          	bltu	a1,a5,800038b8 <freerange+0xa8>
    80003854:	00003a97          	auipc	s5,0x3
    80003858:	2aca8a93          	addi	s5,s5,684 # 80006b00 <end>
    8000385c:	0954e263          	bltu	s1,s5,800038e0 <freerange+0xd0>
    80003860:	01100993          	li	s3,17
    80003864:	01b99993          	slli	s3,s3,0x1b
    80003868:	0734fc63          	bgeu	s1,s3,800038e0 <freerange+0xd0>
    8000386c:	00058a13          	mv	s4,a1
    80003870:	00002917          	auipc	s2,0x2
    80003874:	ff090913          	addi	s2,s2,-16 # 80005860 <kmem>
    80003878:	00002b37          	lui	s6,0x2
    8000387c:	0140006f          	j	80003890 <freerange+0x80>
    80003880:	000017b7          	lui	a5,0x1
    80003884:	00f484b3          	add	s1,s1,a5
    80003888:	0554ec63          	bltu	s1,s5,800038e0 <freerange+0xd0>
    8000388c:	0534fa63          	bgeu	s1,s3,800038e0 <freerange+0xd0>
    80003890:	00001637          	lui	a2,0x1
    80003894:	00100593          	li	a1,1
    80003898:	00048513          	mv	a0,s1
    8000389c:	00000097          	auipc	ra,0x0
    800038a0:	50c080e7          	jalr	1292(ra) # 80003da8 <__memset>
    800038a4:	00093703          	ld	a4,0(s2)
    800038a8:	016487b3          	add	a5,s1,s6
    800038ac:	00e4b023          	sd	a4,0(s1)
    800038b0:	00993023          	sd	s1,0(s2)
    800038b4:	fcfa76e3          	bgeu	s4,a5,80003880 <freerange+0x70>
    800038b8:	03813083          	ld	ra,56(sp)
    800038bc:	03013403          	ld	s0,48(sp)
    800038c0:	02813483          	ld	s1,40(sp)
    800038c4:	02013903          	ld	s2,32(sp)
    800038c8:	01813983          	ld	s3,24(sp)
    800038cc:	01013a03          	ld	s4,16(sp)
    800038d0:	00813a83          	ld	s5,8(sp)
    800038d4:	00013b03          	ld	s6,0(sp)
    800038d8:	04010113          	addi	sp,sp,64
    800038dc:	00008067          	ret
    800038e0:	00002517          	auipc	a0,0x2
    800038e4:	93850513          	addi	a0,a0,-1736 # 80005218 <digits+0x18>
    800038e8:	fffff097          	auipc	ra,0xfffff
    800038ec:	3d4080e7          	jalr	980(ra) # 80002cbc <panic>

00000000800038f0 <kfree>:
    800038f0:	fe010113          	addi	sp,sp,-32
    800038f4:	00813823          	sd	s0,16(sp)
    800038f8:	00113c23          	sd	ra,24(sp)
    800038fc:	00913423          	sd	s1,8(sp)
    80003900:	02010413          	addi	s0,sp,32
    80003904:	03451793          	slli	a5,a0,0x34
    80003908:	04079c63          	bnez	a5,80003960 <kfree+0x70>
    8000390c:	00003797          	auipc	a5,0x3
    80003910:	1f478793          	addi	a5,a5,500 # 80006b00 <end>
    80003914:	00050493          	mv	s1,a0
    80003918:	04f56463          	bltu	a0,a5,80003960 <kfree+0x70>
    8000391c:	01100793          	li	a5,17
    80003920:	01b79793          	slli	a5,a5,0x1b
    80003924:	02f57e63          	bgeu	a0,a5,80003960 <kfree+0x70>
    80003928:	00001637          	lui	a2,0x1
    8000392c:	00100593          	li	a1,1
    80003930:	00000097          	auipc	ra,0x0
    80003934:	478080e7          	jalr	1144(ra) # 80003da8 <__memset>
    80003938:	00002797          	auipc	a5,0x2
    8000393c:	f2878793          	addi	a5,a5,-216 # 80005860 <kmem>
    80003940:	0007b703          	ld	a4,0(a5)
    80003944:	01813083          	ld	ra,24(sp)
    80003948:	01013403          	ld	s0,16(sp)
    8000394c:	00e4b023          	sd	a4,0(s1)
    80003950:	0097b023          	sd	s1,0(a5)
    80003954:	00813483          	ld	s1,8(sp)
    80003958:	02010113          	addi	sp,sp,32
    8000395c:	00008067          	ret
    80003960:	00002517          	auipc	a0,0x2
    80003964:	8b850513          	addi	a0,a0,-1864 # 80005218 <digits+0x18>
    80003968:	fffff097          	auipc	ra,0xfffff
    8000396c:	354080e7          	jalr	852(ra) # 80002cbc <panic>

0000000080003970 <kalloc>:
    80003970:	fe010113          	addi	sp,sp,-32
    80003974:	00813823          	sd	s0,16(sp)
    80003978:	00913423          	sd	s1,8(sp)
    8000397c:	00113c23          	sd	ra,24(sp)
    80003980:	02010413          	addi	s0,sp,32
    80003984:	00002797          	auipc	a5,0x2
    80003988:	edc78793          	addi	a5,a5,-292 # 80005860 <kmem>
    8000398c:	0007b483          	ld	s1,0(a5)
    80003990:	02048063          	beqz	s1,800039b0 <kalloc+0x40>
    80003994:	0004b703          	ld	a4,0(s1)
    80003998:	00001637          	lui	a2,0x1
    8000399c:	00500593          	li	a1,5
    800039a0:	00048513          	mv	a0,s1
    800039a4:	00e7b023          	sd	a4,0(a5)
    800039a8:	00000097          	auipc	ra,0x0
    800039ac:	400080e7          	jalr	1024(ra) # 80003da8 <__memset>
    800039b0:	01813083          	ld	ra,24(sp)
    800039b4:	01013403          	ld	s0,16(sp)
    800039b8:	00048513          	mv	a0,s1
    800039bc:	00813483          	ld	s1,8(sp)
    800039c0:	02010113          	addi	sp,sp,32
    800039c4:	00008067          	ret

00000000800039c8 <initlock>:
    800039c8:	ff010113          	addi	sp,sp,-16
    800039cc:	00813423          	sd	s0,8(sp)
    800039d0:	01010413          	addi	s0,sp,16
    800039d4:	00813403          	ld	s0,8(sp)
    800039d8:	00b53423          	sd	a1,8(a0)
    800039dc:	00052023          	sw	zero,0(a0)
    800039e0:	00053823          	sd	zero,16(a0)
    800039e4:	01010113          	addi	sp,sp,16
    800039e8:	00008067          	ret

00000000800039ec <acquire>:
    800039ec:	fe010113          	addi	sp,sp,-32
    800039f0:	00813823          	sd	s0,16(sp)
    800039f4:	00913423          	sd	s1,8(sp)
    800039f8:	00113c23          	sd	ra,24(sp)
    800039fc:	01213023          	sd	s2,0(sp)
    80003a00:	02010413          	addi	s0,sp,32
    80003a04:	00050493          	mv	s1,a0
    80003a08:	10002973          	csrr	s2,sstatus
    80003a0c:	100027f3          	csrr	a5,sstatus
    80003a10:	ffd7f793          	andi	a5,a5,-3
    80003a14:	10079073          	csrw	sstatus,a5
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	8e4080e7          	jalr	-1820(ra) # 800022fc <mycpu>
    80003a20:	07852783          	lw	a5,120(a0)
    80003a24:	06078e63          	beqz	a5,80003aa0 <acquire+0xb4>
    80003a28:	fffff097          	auipc	ra,0xfffff
    80003a2c:	8d4080e7          	jalr	-1836(ra) # 800022fc <mycpu>
    80003a30:	07852783          	lw	a5,120(a0)
    80003a34:	0004a703          	lw	a4,0(s1)
    80003a38:	0017879b          	addiw	a5,a5,1
    80003a3c:	06f52c23          	sw	a5,120(a0)
    80003a40:	04071063          	bnez	a4,80003a80 <acquire+0x94>
    80003a44:	00100713          	li	a4,1
    80003a48:	00070793          	mv	a5,a4
    80003a4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003a50:	0007879b          	sext.w	a5,a5
    80003a54:	fe079ae3          	bnez	a5,80003a48 <acquire+0x5c>
    80003a58:	0ff0000f          	fence
    80003a5c:	fffff097          	auipc	ra,0xfffff
    80003a60:	8a0080e7          	jalr	-1888(ra) # 800022fc <mycpu>
    80003a64:	01813083          	ld	ra,24(sp)
    80003a68:	01013403          	ld	s0,16(sp)
    80003a6c:	00a4b823          	sd	a0,16(s1)
    80003a70:	00013903          	ld	s2,0(sp)
    80003a74:	00813483          	ld	s1,8(sp)
    80003a78:	02010113          	addi	sp,sp,32
    80003a7c:	00008067          	ret
    80003a80:	0104b903          	ld	s2,16(s1)
    80003a84:	fffff097          	auipc	ra,0xfffff
    80003a88:	878080e7          	jalr	-1928(ra) # 800022fc <mycpu>
    80003a8c:	faa91ce3          	bne	s2,a0,80003a44 <acquire+0x58>
    80003a90:	00001517          	auipc	a0,0x1
    80003a94:	79050513          	addi	a0,a0,1936 # 80005220 <digits+0x20>
    80003a98:	fffff097          	auipc	ra,0xfffff
    80003a9c:	224080e7          	jalr	548(ra) # 80002cbc <panic>
    80003aa0:	00195913          	srli	s2,s2,0x1
    80003aa4:	fffff097          	auipc	ra,0xfffff
    80003aa8:	858080e7          	jalr	-1960(ra) # 800022fc <mycpu>
    80003aac:	00197913          	andi	s2,s2,1
    80003ab0:	07252e23          	sw	s2,124(a0)
    80003ab4:	f75ff06f          	j	80003a28 <acquire+0x3c>

0000000080003ab8 <release>:
    80003ab8:	fe010113          	addi	sp,sp,-32
    80003abc:	00813823          	sd	s0,16(sp)
    80003ac0:	00113c23          	sd	ra,24(sp)
    80003ac4:	00913423          	sd	s1,8(sp)
    80003ac8:	01213023          	sd	s2,0(sp)
    80003acc:	02010413          	addi	s0,sp,32
    80003ad0:	00052783          	lw	a5,0(a0)
    80003ad4:	00079a63          	bnez	a5,80003ae8 <release+0x30>
    80003ad8:	00001517          	auipc	a0,0x1
    80003adc:	75050513          	addi	a0,a0,1872 # 80005228 <digits+0x28>
    80003ae0:	fffff097          	auipc	ra,0xfffff
    80003ae4:	1dc080e7          	jalr	476(ra) # 80002cbc <panic>
    80003ae8:	01053903          	ld	s2,16(a0)
    80003aec:	00050493          	mv	s1,a0
    80003af0:	fffff097          	auipc	ra,0xfffff
    80003af4:	80c080e7          	jalr	-2036(ra) # 800022fc <mycpu>
    80003af8:	fea910e3          	bne	s2,a0,80003ad8 <release+0x20>
    80003afc:	0004b823          	sd	zero,16(s1)
    80003b00:	0ff0000f          	fence
    80003b04:	0f50000f          	fence	iorw,ow
    80003b08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003b0c:	ffffe097          	auipc	ra,0xffffe
    80003b10:	7f0080e7          	jalr	2032(ra) # 800022fc <mycpu>
    80003b14:	100027f3          	csrr	a5,sstatus
    80003b18:	0027f793          	andi	a5,a5,2
    80003b1c:	04079a63          	bnez	a5,80003b70 <release+0xb8>
    80003b20:	07852783          	lw	a5,120(a0)
    80003b24:	02f05e63          	blez	a5,80003b60 <release+0xa8>
    80003b28:	fff7871b          	addiw	a4,a5,-1
    80003b2c:	06e52c23          	sw	a4,120(a0)
    80003b30:	00071c63          	bnez	a4,80003b48 <release+0x90>
    80003b34:	07c52783          	lw	a5,124(a0)
    80003b38:	00078863          	beqz	a5,80003b48 <release+0x90>
    80003b3c:	100027f3          	csrr	a5,sstatus
    80003b40:	0027e793          	ori	a5,a5,2
    80003b44:	10079073          	csrw	sstatus,a5
    80003b48:	01813083          	ld	ra,24(sp)
    80003b4c:	01013403          	ld	s0,16(sp)
    80003b50:	00813483          	ld	s1,8(sp)
    80003b54:	00013903          	ld	s2,0(sp)
    80003b58:	02010113          	addi	sp,sp,32
    80003b5c:	00008067          	ret
    80003b60:	00001517          	auipc	a0,0x1
    80003b64:	6e850513          	addi	a0,a0,1768 # 80005248 <digits+0x48>
    80003b68:	fffff097          	auipc	ra,0xfffff
    80003b6c:	154080e7          	jalr	340(ra) # 80002cbc <panic>
    80003b70:	00001517          	auipc	a0,0x1
    80003b74:	6c050513          	addi	a0,a0,1728 # 80005230 <digits+0x30>
    80003b78:	fffff097          	auipc	ra,0xfffff
    80003b7c:	144080e7          	jalr	324(ra) # 80002cbc <panic>

0000000080003b80 <holding>:
    80003b80:	00052783          	lw	a5,0(a0)
    80003b84:	00079663          	bnez	a5,80003b90 <holding+0x10>
    80003b88:	00000513          	li	a0,0
    80003b8c:	00008067          	ret
    80003b90:	fe010113          	addi	sp,sp,-32
    80003b94:	00813823          	sd	s0,16(sp)
    80003b98:	00913423          	sd	s1,8(sp)
    80003b9c:	00113c23          	sd	ra,24(sp)
    80003ba0:	02010413          	addi	s0,sp,32
    80003ba4:	01053483          	ld	s1,16(a0)
    80003ba8:	ffffe097          	auipc	ra,0xffffe
    80003bac:	754080e7          	jalr	1876(ra) # 800022fc <mycpu>
    80003bb0:	01813083          	ld	ra,24(sp)
    80003bb4:	01013403          	ld	s0,16(sp)
    80003bb8:	40a48533          	sub	a0,s1,a0
    80003bbc:	00153513          	seqz	a0,a0
    80003bc0:	00813483          	ld	s1,8(sp)
    80003bc4:	02010113          	addi	sp,sp,32
    80003bc8:	00008067          	ret

0000000080003bcc <push_off>:
    80003bcc:	fe010113          	addi	sp,sp,-32
    80003bd0:	00813823          	sd	s0,16(sp)
    80003bd4:	00113c23          	sd	ra,24(sp)
    80003bd8:	00913423          	sd	s1,8(sp)
    80003bdc:	02010413          	addi	s0,sp,32
    80003be0:	100024f3          	csrr	s1,sstatus
    80003be4:	100027f3          	csrr	a5,sstatus
    80003be8:	ffd7f793          	andi	a5,a5,-3
    80003bec:	10079073          	csrw	sstatus,a5
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	70c080e7          	jalr	1804(ra) # 800022fc <mycpu>
    80003bf8:	07852783          	lw	a5,120(a0)
    80003bfc:	02078663          	beqz	a5,80003c28 <push_off+0x5c>
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	6fc080e7          	jalr	1788(ra) # 800022fc <mycpu>
    80003c08:	07852783          	lw	a5,120(a0)
    80003c0c:	01813083          	ld	ra,24(sp)
    80003c10:	01013403          	ld	s0,16(sp)
    80003c14:	0017879b          	addiw	a5,a5,1
    80003c18:	06f52c23          	sw	a5,120(a0)
    80003c1c:	00813483          	ld	s1,8(sp)
    80003c20:	02010113          	addi	sp,sp,32
    80003c24:	00008067          	ret
    80003c28:	0014d493          	srli	s1,s1,0x1
    80003c2c:	ffffe097          	auipc	ra,0xffffe
    80003c30:	6d0080e7          	jalr	1744(ra) # 800022fc <mycpu>
    80003c34:	0014f493          	andi	s1,s1,1
    80003c38:	06952e23          	sw	s1,124(a0)
    80003c3c:	fc5ff06f          	j	80003c00 <push_off+0x34>

0000000080003c40 <pop_off>:
    80003c40:	ff010113          	addi	sp,sp,-16
    80003c44:	00813023          	sd	s0,0(sp)
    80003c48:	00113423          	sd	ra,8(sp)
    80003c4c:	01010413          	addi	s0,sp,16
    80003c50:	ffffe097          	auipc	ra,0xffffe
    80003c54:	6ac080e7          	jalr	1708(ra) # 800022fc <mycpu>
    80003c58:	100027f3          	csrr	a5,sstatus
    80003c5c:	0027f793          	andi	a5,a5,2
    80003c60:	04079663          	bnez	a5,80003cac <pop_off+0x6c>
    80003c64:	07852783          	lw	a5,120(a0)
    80003c68:	02f05a63          	blez	a5,80003c9c <pop_off+0x5c>
    80003c6c:	fff7871b          	addiw	a4,a5,-1
    80003c70:	06e52c23          	sw	a4,120(a0)
    80003c74:	00071c63          	bnez	a4,80003c8c <pop_off+0x4c>
    80003c78:	07c52783          	lw	a5,124(a0)
    80003c7c:	00078863          	beqz	a5,80003c8c <pop_off+0x4c>
    80003c80:	100027f3          	csrr	a5,sstatus
    80003c84:	0027e793          	ori	a5,a5,2
    80003c88:	10079073          	csrw	sstatus,a5
    80003c8c:	00813083          	ld	ra,8(sp)
    80003c90:	00013403          	ld	s0,0(sp)
    80003c94:	01010113          	addi	sp,sp,16
    80003c98:	00008067          	ret
    80003c9c:	00001517          	auipc	a0,0x1
    80003ca0:	5ac50513          	addi	a0,a0,1452 # 80005248 <digits+0x48>
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	018080e7          	jalr	24(ra) # 80002cbc <panic>
    80003cac:	00001517          	auipc	a0,0x1
    80003cb0:	58450513          	addi	a0,a0,1412 # 80005230 <digits+0x30>
    80003cb4:	fffff097          	auipc	ra,0xfffff
    80003cb8:	008080e7          	jalr	8(ra) # 80002cbc <panic>

0000000080003cbc <push_on>:
    80003cbc:	fe010113          	addi	sp,sp,-32
    80003cc0:	00813823          	sd	s0,16(sp)
    80003cc4:	00113c23          	sd	ra,24(sp)
    80003cc8:	00913423          	sd	s1,8(sp)
    80003ccc:	02010413          	addi	s0,sp,32
    80003cd0:	100024f3          	csrr	s1,sstatus
    80003cd4:	100027f3          	csrr	a5,sstatus
    80003cd8:	0027e793          	ori	a5,a5,2
    80003cdc:	10079073          	csrw	sstatus,a5
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	61c080e7          	jalr	1564(ra) # 800022fc <mycpu>
    80003ce8:	07852783          	lw	a5,120(a0)
    80003cec:	02078663          	beqz	a5,80003d18 <push_on+0x5c>
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	60c080e7          	jalr	1548(ra) # 800022fc <mycpu>
    80003cf8:	07852783          	lw	a5,120(a0)
    80003cfc:	01813083          	ld	ra,24(sp)
    80003d00:	01013403          	ld	s0,16(sp)
    80003d04:	0017879b          	addiw	a5,a5,1
    80003d08:	06f52c23          	sw	a5,120(a0)
    80003d0c:	00813483          	ld	s1,8(sp)
    80003d10:	02010113          	addi	sp,sp,32
    80003d14:	00008067          	ret
    80003d18:	0014d493          	srli	s1,s1,0x1
    80003d1c:	ffffe097          	auipc	ra,0xffffe
    80003d20:	5e0080e7          	jalr	1504(ra) # 800022fc <mycpu>
    80003d24:	0014f493          	andi	s1,s1,1
    80003d28:	06952e23          	sw	s1,124(a0)
    80003d2c:	fc5ff06f          	j	80003cf0 <push_on+0x34>

0000000080003d30 <pop_on>:
    80003d30:	ff010113          	addi	sp,sp,-16
    80003d34:	00813023          	sd	s0,0(sp)
    80003d38:	00113423          	sd	ra,8(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	5bc080e7          	jalr	1468(ra) # 800022fc <mycpu>
    80003d48:	100027f3          	csrr	a5,sstatus
    80003d4c:	0027f793          	andi	a5,a5,2
    80003d50:	04078463          	beqz	a5,80003d98 <pop_on+0x68>
    80003d54:	07852783          	lw	a5,120(a0)
    80003d58:	02f05863          	blez	a5,80003d88 <pop_on+0x58>
    80003d5c:	fff7879b          	addiw	a5,a5,-1
    80003d60:	06f52c23          	sw	a5,120(a0)
    80003d64:	07853783          	ld	a5,120(a0)
    80003d68:	00079863          	bnez	a5,80003d78 <pop_on+0x48>
    80003d6c:	100027f3          	csrr	a5,sstatus
    80003d70:	ffd7f793          	andi	a5,a5,-3
    80003d74:	10079073          	csrw	sstatus,a5
    80003d78:	00813083          	ld	ra,8(sp)
    80003d7c:	00013403          	ld	s0,0(sp)
    80003d80:	01010113          	addi	sp,sp,16
    80003d84:	00008067          	ret
    80003d88:	00001517          	auipc	a0,0x1
    80003d8c:	4e850513          	addi	a0,a0,1256 # 80005270 <digits+0x70>
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	f2c080e7          	jalr	-212(ra) # 80002cbc <panic>
    80003d98:	00001517          	auipc	a0,0x1
    80003d9c:	4b850513          	addi	a0,a0,1208 # 80005250 <digits+0x50>
    80003da0:	fffff097          	auipc	ra,0xfffff
    80003da4:	f1c080e7          	jalr	-228(ra) # 80002cbc <panic>

0000000080003da8 <__memset>:
    80003da8:	ff010113          	addi	sp,sp,-16
    80003dac:	00813423          	sd	s0,8(sp)
    80003db0:	01010413          	addi	s0,sp,16
    80003db4:	1a060e63          	beqz	a2,80003f70 <__memset+0x1c8>
    80003db8:	40a007b3          	neg	a5,a0
    80003dbc:	0077f793          	andi	a5,a5,7
    80003dc0:	00778693          	addi	a3,a5,7
    80003dc4:	00b00813          	li	a6,11
    80003dc8:	0ff5f593          	andi	a1,a1,255
    80003dcc:	fff6071b          	addiw	a4,a2,-1
    80003dd0:	1b06e663          	bltu	a3,a6,80003f7c <__memset+0x1d4>
    80003dd4:	1cd76463          	bltu	a4,a3,80003f9c <__memset+0x1f4>
    80003dd8:	1a078e63          	beqz	a5,80003f94 <__memset+0x1ec>
    80003ddc:	00b50023          	sb	a1,0(a0)
    80003de0:	00100713          	li	a4,1
    80003de4:	1ae78463          	beq	a5,a4,80003f8c <__memset+0x1e4>
    80003de8:	00b500a3          	sb	a1,1(a0)
    80003dec:	00200713          	li	a4,2
    80003df0:	1ae78a63          	beq	a5,a4,80003fa4 <__memset+0x1fc>
    80003df4:	00b50123          	sb	a1,2(a0)
    80003df8:	00300713          	li	a4,3
    80003dfc:	18e78463          	beq	a5,a4,80003f84 <__memset+0x1dc>
    80003e00:	00b501a3          	sb	a1,3(a0)
    80003e04:	00400713          	li	a4,4
    80003e08:	1ae78263          	beq	a5,a4,80003fac <__memset+0x204>
    80003e0c:	00b50223          	sb	a1,4(a0)
    80003e10:	00500713          	li	a4,5
    80003e14:	1ae78063          	beq	a5,a4,80003fb4 <__memset+0x20c>
    80003e18:	00b502a3          	sb	a1,5(a0)
    80003e1c:	00700713          	li	a4,7
    80003e20:	18e79e63          	bne	a5,a4,80003fbc <__memset+0x214>
    80003e24:	00b50323          	sb	a1,6(a0)
    80003e28:	00700e93          	li	t4,7
    80003e2c:	00859713          	slli	a4,a1,0x8
    80003e30:	00e5e733          	or	a4,a1,a4
    80003e34:	01059e13          	slli	t3,a1,0x10
    80003e38:	01c76e33          	or	t3,a4,t3
    80003e3c:	01859313          	slli	t1,a1,0x18
    80003e40:	006e6333          	or	t1,t3,t1
    80003e44:	02059893          	slli	a7,a1,0x20
    80003e48:	40f60e3b          	subw	t3,a2,a5
    80003e4c:	011368b3          	or	a7,t1,a7
    80003e50:	02859813          	slli	a6,a1,0x28
    80003e54:	0108e833          	or	a6,a7,a6
    80003e58:	03059693          	slli	a3,a1,0x30
    80003e5c:	003e589b          	srliw	a7,t3,0x3
    80003e60:	00d866b3          	or	a3,a6,a3
    80003e64:	03859713          	slli	a4,a1,0x38
    80003e68:	00389813          	slli	a6,a7,0x3
    80003e6c:	00f507b3          	add	a5,a0,a5
    80003e70:	00e6e733          	or	a4,a3,a4
    80003e74:	000e089b          	sext.w	a7,t3
    80003e78:	00f806b3          	add	a3,a6,a5
    80003e7c:	00e7b023          	sd	a4,0(a5)
    80003e80:	00878793          	addi	a5,a5,8
    80003e84:	fed79ce3          	bne	a5,a3,80003e7c <__memset+0xd4>
    80003e88:	ff8e7793          	andi	a5,t3,-8
    80003e8c:	0007871b          	sext.w	a4,a5
    80003e90:	01d787bb          	addw	a5,a5,t4
    80003e94:	0ce88e63          	beq	a7,a4,80003f70 <__memset+0x1c8>
    80003e98:	00f50733          	add	a4,a0,a5
    80003e9c:	00b70023          	sb	a1,0(a4)
    80003ea0:	0017871b          	addiw	a4,a5,1
    80003ea4:	0cc77663          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003ea8:	00e50733          	add	a4,a0,a4
    80003eac:	00b70023          	sb	a1,0(a4)
    80003eb0:	0027871b          	addiw	a4,a5,2
    80003eb4:	0ac77e63          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003eb8:	00e50733          	add	a4,a0,a4
    80003ebc:	00b70023          	sb	a1,0(a4)
    80003ec0:	0037871b          	addiw	a4,a5,3
    80003ec4:	0ac77663          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003ec8:	00e50733          	add	a4,a0,a4
    80003ecc:	00b70023          	sb	a1,0(a4)
    80003ed0:	0047871b          	addiw	a4,a5,4
    80003ed4:	08c77e63          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003ed8:	00e50733          	add	a4,a0,a4
    80003edc:	00b70023          	sb	a1,0(a4)
    80003ee0:	0057871b          	addiw	a4,a5,5
    80003ee4:	08c77663          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003ee8:	00e50733          	add	a4,a0,a4
    80003eec:	00b70023          	sb	a1,0(a4)
    80003ef0:	0067871b          	addiw	a4,a5,6
    80003ef4:	06c77e63          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00b70023          	sb	a1,0(a4)
    80003f00:	0077871b          	addiw	a4,a5,7
    80003f04:	06c77663          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00b70023          	sb	a1,0(a4)
    80003f10:	0087871b          	addiw	a4,a5,8
    80003f14:	04c77e63          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003f18:	00e50733          	add	a4,a0,a4
    80003f1c:	00b70023          	sb	a1,0(a4)
    80003f20:	0097871b          	addiw	a4,a5,9
    80003f24:	04c77663          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003f28:	00e50733          	add	a4,a0,a4
    80003f2c:	00b70023          	sb	a1,0(a4)
    80003f30:	00a7871b          	addiw	a4,a5,10
    80003f34:	02c77e63          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003f38:	00e50733          	add	a4,a0,a4
    80003f3c:	00b70023          	sb	a1,0(a4)
    80003f40:	00b7871b          	addiw	a4,a5,11
    80003f44:	02c77663          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003f48:	00e50733          	add	a4,a0,a4
    80003f4c:	00b70023          	sb	a1,0(a4)
    80003f50:	00c7871b          	addiw	a4,a5,12
    80003f54:	00c77e63          	bgeu	a4,a2,80003f70 <__memset+0x1c8>
    80003f58:	00e50733          	add	a4,a0,a4
    80003f5c:	00b70023          	sb	a1,0(a4)
    80003f60:	00d7879b          	addiw	a5,a5,13
    80003f64:	00c7f663          	bgeu	a5,a2,80003f70 <__memset+0x1c8>
    80003f68:	00f507b3          	add	a5,a0,a5
    80003f6c:	00b78023          	sb	a1,0(a5)
    80003f70:	00813403          	ld	s0,8(sp)
    80003f74:	01010113          	addi	sp,sp,16
    80003f78:	00008067          	ret
    80003f7c:	00b00693          	li	a3,11
    80003f80:	e55ff06f          	j	80003dd4 <__memset+0x2c>
    80003f84:	00300e93          	li	t4,3
    80003f88:	ea5ff06f          	j	80003e2c <__memset+0x84>
    80003f8c:	00100e93          	li	t4,1
    80003f90:	e9dff06f          	j	80003e2c <__memset+0x84>
    80003f94:	00000e93          	li	t4,0
    80003f98:	e95ff06f          	j	80003e2c <__memset+0x84>
    80003f9c:	00000793          	li	a5,0
    80003fa0:	ef9ff06f          	j	80003e98 <__memset+0xf0>
    80003fa4:	00200e93          	li	t4,2
    80003fa8:	e85ff06f          	j	80003e2c <__memset+0x84>
    80003fac:	00400e93          	li	t4,4
    80003fb0:	e7dff06f          	j	80003e2c <__memset+0x84>
    80003fb4:	00500e93          	li	t4,5
    80003fb8:	e75ff06f          	j	80003e2c <__memset+0x84>
    80003fbc:	00600e93          	li	t4,6
    80003fc0:	e6dff06f          	j	80003e2c <__memset+0x84>

0000000080003fc4 <__memmove>:
    80003fc4:	ff010113          	addi	sp,sp,-16
    80003fc8:	00813423          	sd	s0,8(sp)
    80003fcc:	01010413          	addi	s0,sp,16
    80003fd0:	0e060863          	beqz	a2,800040c0 <__memmove+0xfc>
    80003fd4:	fff6069b          	addiw	a3,a2,-1
    80003fd8:	0006881b          	sext.w	a6,a3
    80003fdc:	0ea5e863          	bltu	a1,a0,800040cc <__memmove+0x108>
    80003fe0:	00758713          	addi	a4,a1,7
    80003fe4:	00a5e7b3          	or	a5,a1,a0
    80003fe8:	40a70733          	sub	a4,a4,a0
    80003fec:	0077f793          	andi	a5,a5,7
    80003ff0:	00f73713          	sltiu	a4,a4,15
    80003ff4:	00174713          	xori	a4,a4,1
    80003ff8:	0017b793          	seqz	a5,a5
    80003ffc:	00e7f7b3          	and	a5,a5,a4
    80004000:	10078863          	beqz	a5,80004110 <__memmove+0x14c>
    80004004:	00900793          	li	a5,9
    80004008:	1107f463          	bgeu	a5,a6,80004110 <__memmove+0x14c>
    8000400c:	0036581b          	srliw	a6,a2,0x3
    80004010:	fff8081b          	addiw	a6,a6,-1
    80004014:	02081813          	slli	a6,a6,0x20
    80004018:	01d85893          	srli	a7,a6,0x1d
    8000401c:	00858813          	addi	a6,a1,8
    80004020:	00058793          	mv	a5,a1
    80004024:	00050713          	mv	a4,a0
    80004028:	01088833          	add	a6,a7,a6
    8000402c:	0007b883          	ld	a7,0(a5)
    80004030:	00878793          	addi	a5,a5,8
    80004034:	00870713          	addi	a4,a4,8
    80004038:	ff173c23          	sd	a7,-8(a4)
    8000403c:	ff0798e3          	bne	a5,a6,8000402c <__memmove+0x68>
    80004040:	ff867713          	andi	a4,a2,-8
    80004044:	02071793          	slli	a5,a4,0x20
    80004048:	0207d793          	srli	a5,a5,0x20
    8000404c:	00f585b3          	add	a1,a1,a5
    80004050:	40e686bb          	subw	a3,a3,a4
    80004054:	00f507b3          	add	a5,a0,a5
    80004058:	06e60463          	beq	a2,a4,800040c0 <__memmove+0xfc>
    8000405c:	0005c703          	lbu	a4,0(a1)
    80004060:	00e78023          	sb	a4,0(a5)
    80004064:	04068e63          	beqz	a3,800040c0 <__memmove+0xfc>
    80004068:	0015c603          	lbu	a2,1(a1)
    8000406c:	00100713          	li	a4,1
    80004070:	00c780a3          	sb	a2,1(a5)
    80004074:	04e68663          	beq	a3,a4,800040c0 <__memmove+0xfc>
    80004078:	0025c603          	lbu	a2,2(a1)
    8000407c:	00200713          	li	a4,2
    80004080:	00c78123          	sb	a2,2(a5)
    80004084:	02e68e63          	beq	a3,a4,800040c0 <__memmove+0xfc>
    80004088:	0035c603          	lbu	a2,3(a1)
    8000408c:	00300713          	li	a4,3
    80004090:	00c781a3          	sb	a2,3(a5)
    80004094:	02e68663          	beq	a3,a4,800040c0 <__memmove+0xfc>
    80004098:	0045c603          	lbu	a2,4(a1)
    8000409c:	00400713          	li	a4,4
    800040a0:	00c78223          	sb	a2,4(a5)
    800040a4:	00e68e63          	beq	a3,a4,800040c0 <__memmove+0xfc>
    800040a8:	0055c603          	lbu	a2,5(a1)
    800040ac:	00500713          	li	a4,5
    800040b0:	00c782a3          	sb	a2,5(a5)
    800040b4:	00e68663          	beq	a3,a4,800040c0 <__memmove+0xfc>
    800040b8:	0065c703          	lbu	a4,6(a1)
    800040bc:	00e78323          	sb	a4,6(a5)
    800040c0:	00813403          	ld	s0,8(sp)
    800040c4:	01010113          	addi	sp,sp,16
    800040c8:	00008067          	ret
    800040cc:	02061713          	slli	a4,a2,0x20
    800040d0:	02075713          	srli	a4,a4,0x20
    800040d4:	00e587b3          	add	a5,a1,a4
    800040d8:	f0f574e3          	bgeu	a0,a5,80003fe0 <__memmove+0x1c>
    800040dc:	02069613          	slli	a2,a3,0x20
    800040e0:	02065613          	srli	a2,a2,0x20
    800040e4:	fff64613          	not	a2,a2
    800040e8:	00e50733          	add	a4,a0,a4
    800040ec:	00c78633          	add	a2,a5,a2
    800040f0:	fff7c683          	lbu	a3,-1(a5)
    800040f4:	fff78793          	addi	a5,a5,-1
    800040f8:	fff70713          	addi	a4,a4,-1
    800040fc:	00d70023          	sb	a3,0(a4)
    80004100:	fec798e3          	bne	a5,a2,800040f0 <__memmove+0x12c>
    80004104:	00813403          	ld	s0,8(sp)
    80004108:	01010113          	addi	sp,sp,16
    8000410c:	00008067          	ret
    80004110:	02069713          	slli	a4,a3,0x20
    80004114:	02075713          	srli	a4,a4,0x20
    80004118:	00170713          	addi	a4,a4,1
    8000411c:	00e50733          	add	a4,a0,a4
    80004120:	00050793          	mv	a5,a0
    80004124:	0005c683          	lbu	a3,0(a1)
    80004128:	00178793          	addi	a5,a5,1
    8000412c:	00158593          	addi	a1,a1,1
    80004130:	fed78fa3          	sb	a3,-1(a5)
    80004134:	fee798e3          	bne	a5,a4,80004124 <__memmove+0x160>
    80004138:	f89ff06f          	j	800040c0 <__memmove+0xfc>

000000008000413c <__mem_free>:
    8000413c:	ff010113          	addi	sp,sp,-16
    80004140:	00813423          	sd	s0,8(sp)
    80004144:	01010413          	addi	s0,sp,16
    80004148:	00001597          	auipc	a1,0x1
    8000414c:	72058593          	addi	a1,a1,1824 # 80005868 <freep>
    80004150:	0005b783          	ld	a5,0(a1)
    80004154:	ff050693          	addi	a3,a0,-16
    80004158:	0007b703          	ld	a4,0(a5)
    8000415c:	00d7fc63          	bgeu	a5,a3,80004174 <__mem_free+0x38>
    80004160:	00e6ee63          	bltu	a3,a4,8000417c <__mem_free+0x40>
    80004164:	00e7fc63          	bgeu	a5,a4,8000417c <__mem_free+0x40>
    80004168:	00070793          	mv	a5,a4
    8000416c:	0007b703          	ld	a4,0(a5)
    80004170:	fed7e8e3          	bltu	a5,a3,80004160 <__mem_free+0x24>
    80004174:	fee7eae3          	bltu	a5,a4,80004168 <__mem_free+0x2c>
    80004178:	fee6f8e3          	bgeu	a3,a4,80004168 <__mem_free+0x2c>
    8000417c:	ff852803          	lw	a6,-8(a0)
    80004180:	02081613          	slli	a2,a6,0x20
    80004184:	01c65613          	srli	a2,a2,0x1c
    80004188:	00c68633          	add	a2,a3,a2
    8000418c:	02c70a63          	beq	a4,a2,800041c0 <__mem_free+0x84>
    80004190:	fee53823          	sd	a4,-16(a0)
    80004194:	0087a503          	lw	a0,8(a5)
    80004198:	02051613          	slli	a2,a0,0x20
    8000419c:	01c65613          	srli	a2,a2,0x1c
    800041a0:	00c78633          	add	a2,a5,a2
    800041a4:	04c68263          	beq	a3,a2,800041e8 <__mem_free+0xac>
    800041a8:	00813403          	ld	s0,8(sp)
    800041ac:	00d7b023          	sd	a3,0(a5)
    800041b0:	00f5b023          	sd	a5,0(a1)
    800041b4:	00000513          	li	a0,0
    800041b8:	01010113          	addi	sp,sp,16
    800041bc:	00008067          	ret
    800041c0:	00872603          	lw	a2,8(a4)
    800041c4:	00073703          	ld	a4,0(a4)
    800041c8:	0106083b          	addw	a6,a2,a6
    800041cc:	ff052c23          	sw	a6,-8(a0)
    800041d0:	fee53823          	sd	a4,-16(a0)
    800041d4:	0087a503          	lw	a0,8(a5)
    800041d8:	02051613          	slli	a2,a0,0x20
    800041dc:	01c65613          	srli	a2,a2,0x1c
    800041e0:	00c78633          	add	a2,a5,a2
    800041e4:	fcc692e3          	bne	a3,a2,800041a8 <__mem_free+0x6c>
    800041e8:	00813403          	ld	s0,8(sp)
    800041ec:	0105053b          	addw	a0,a0,a6
    800041f0:	00a7a423          	sw	a0,8(a5)
    800041f4:	00e7b023          	sd	a4,0(a5)
    800041f8:	00f5b023          	sd	a5,0(a1)
    800041fc:	00000513          	li	a0,0
    80004200:	01010113          	addi	sp,sp,16
    80004204:	00008067          	ret

0000000080004208 <__mem_alloc>:
    80004208:	fc010113          	addi	sp,sp,-64
    8000420c:	02813823          	sd	s0,48(sp)
    80004210:	02913423          	sd	s1,40(sp)
    80004214:	03213023          	sd	s2,32(sp)
    80004218:	01513423          	sd	s5,8(sp)
    8000421c:	02113c23          	sd	ra,56(sp)
    80004220:	01313c23          	sd	s3,24(sp)
    80004224:	01413823          	sd	s4,16(sp)
    80004228:	01613023          	sd	s6,0(sp)
    8000422c:	04010413          	addi	s0,sp,64
    80004230:	00001a97          	auipc	s5,0x1
    80004234:	638a8a93          	addi	s5,s5,1592 # 80005868 <freep>
    80004238:	00f50913          	addi	s2,a0,15
    8000423c:	000ab683          	ld	a3,0(s5)
    80004240:	00495913          	srli	s2,s2,0x4
    80004244:	0019049b          	addiw	s1,s2,1
    80004248:	00048913          	mv	s2,s1
    8000424c:	0c068c63          	beqz	a3,80004324 <__mem_alloc+0x11c>
    80004250:	0006b503          	ld	a0,0(a3)
    80004254:	00852703          	lw	a4,8(a0)
    80004258:	10977063          	bgeu	a4,s1,80004358 <__mem_alloc+0x150>
    8000425c:	000017b7          	lui	a5,0x1
    80004260:	0009099b          	sext.w	s3,s2
    80004264:	0af4e863          	bltu	s1,a5,80004314 <__mem_alloc+0x10c>
    80004268:	02099a13          	slli	s4,s3,0x20
    8000426c:	01ca5a13          	srli	s4,s4,0x1c
    80004270:	fff00b13          	li	s6,-1
    80004274:	0100006f          	j	80004284 <__mem_alloc+0x7c>
    80004278:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000427c:	00852703          	lw	a4,8(a0)
    80004280:	04977463          	bgeu	a4,s1,800042c8 <__mem_alloc+0xc0>
    80004284:	00050793          	mv	a5,a0
    80004288:	fea698e3          	bne	a3,a0,80004278 <__mem_alloc+0x70>
    8000428c:	000a0513          	mv	a0,s4
    80004290:	00000097          	auipc	ra,0x0
    80004294:	1f0080e7          	jalr	496(ra) # 80004480 <kvmincrease>
    80004298:	00050793          	mv	a5,a0
    8000429c:	01050513          	addi	a0,a0,16
    800042a0:	07678e63          	beq	a5,s6,8000431c <__mem_alloc+0x114>
    800042a4:	0137a423          	sw	s3,8(a5)
    800042a8:	00000097          	auipc	ra,0x0
    800042ac:	e94080e7          	jalr	-364(ra) # 8000413c <__mem_free>
    800042b0:	000ab783          	ld	a5,0(s5)
    800042b4:	06078463          	beqz	a5,8000431c <__mem_alloc+0x114>
    800042b8:	0007b503          	ld	a0,0(a5)
    800042bc:	00078693          	mv	a3,a5
    800042c0:	00852703          	lw	a4,8(a0)
    800042c4:	fc9760e3          	bltu	a4,s1,80004284 <__mem_alloc+0x7c>
    800042c8:	08e48263          	beq	s1,a4,8000434c <__mem_alloc+0x144>
    800042cc:	4127073b          	subw	a4,a4,s2
    800042d0:	02071693          	slli	a3,a4,0x20
    800042d4:	01c6d693          	srli	a3,a3,0x1c
    800042d8:	00e52423          	sw	a4,8(a0)
    800042dc:	00d50533          	add	a0,a0,a3
    800042e0:	01252423          	sw	s2,8(a0)
    800042e4:	00fab023          	sd	a5,0(s5)
    800042e8:	01050513          	addi	a0,a0,16
    800042ec:	03813083          	ld	ra,56(sp)
    800042f0:	03013403          	ld	s0,48(sp)
    800042f4:	02813483          	ld	s1,40(sp)
    800042f8:	02013903          	ld	s2,32(sp)
    800042fc:	01813983          	ld	s3,24(sp)
    80004300:	01013a03          	ld	s4,16(sp)
    80004304:	00813a83          	ld	s5,8(sp)
    80004308:	00013b03          	ld	s6,0(sp)
    8000430c:	04010113          	addi	sp,sp,64
    80004310:	00008067          	ret
    80004314:	000019b7          	lui	s3,0x1
    80004318:	f51ff06f          	j	80004268 <__mem_alloc+0x60>
    8000431c:	00000513          	li	a0,0
    80004320:	fcdff06f          	j	800042ec <__mem_alloc+0xe4>
    80004324:	00002797          	auipc	a5,0x2
    80004328:	7cc78793          	addi	a5,a5,1996 # 80006af0 <base>
    8000432c:	00078513          	mv	a0,a5
    80004330:	00fab023          	sd	a5,0(s5)
    80004334:	00f7b023          	sd	a5,0(a5)
    80004338:	00000713          	li	a4,0
    8000433c:	00002797          	auipc	a5,0x2
    80004340:	7a07ae23          	sw	zero,1980(a5) # 80006af8 <base+0x8>
    80004344:	00050693          	mv	a3,a0
    80004348:	f11ff06f          	j	80004258 <__mem_alloc+0x50>
    8000434c:	00053703          	ld	a4,0(a0)
    80004350:	00e7b023          	sd	a4,0(a5)
    80004354:	f91ff06f          	j	800042e4 <__mem_alloc+0xdc>
    80004358:	00068793          	mv	a5,a3
    8000435c:	f6dff06f          	j	800042c8 <__mem_alloc+0xc0>

0000000080004360 <__putc>:
    80004360:	fe010113          	addi	sp,sp,-32
    80004364:	00813823          	sd	s0,16(sp)
    80004368:	00113c23          	sd	ra,24(sp)
    8000436c:	02010413          	addi	s0,sp,32
    80004370:	00050793          	mv	a5,a0
    80004374:	fef40593          	addi	a1,s0,-17
    80004378:	00100613          	li	a2,1
    8000437c:	00000513          	li	a0,0
    80004380:	fef407a3          	sb	a5,-17(s0)
    80004384:	fffff097          	auipc	ra,0xfffff
    80004388:	918080e7          	jalr	-1768(ra) # 80002c9c <console_write>
    8000438c:	01813083          	ld	ra,24(sp)
    80004390:	01013403          	ld	s0,16(sp)
    80004394:	02010113          	addi	sp,sp,32
    80004398:	00008067          	ret

000000008000439c <__getc>:
    8000439c:	fe010113          	addi	sp,sp,-32
    800043a0:	00813823          	sd	s0,16(sp)
    800043a4:	00113c23          	sd	ra,24(sp)
    800043a8:	02010413          	addi	s0,sp,32
    800043ac:	fe840593          	addi	a1,s0,-24
    800043b0:	00100613          	li	a2,1
    800043b4:	00000513          	li	a0,0
    800043b8:	fffff097          	auipc	ra,0xfffff
    800043bc:	8c4080e7          	jalr	-1852(ra) # 80002c7c <console_read>
    800043c0:	fe844503          	lbu	a0,-24(s0)
    800043c4:	01813083          	ld	ra,24(sp)
    800043c8:	01013403          	ld	s0,16(sp)
    800043cc:	02010113          	addi	sp,sp,32
    800043d0:	00008067          	ret

00000000800043d4 <console_handler>:
    800043d4:	fe010113          	addi	sp,sp,-32
    800043d8:	00813823          	sd	s0,16(sp)
    800043dc:	00113c23          	sd	ra,24(sp)
    800043e0:	00913423          	sd	s1,8(sp)
    800043e4:	02010413          	addi	s0,sp,32
    800043e8:	14202773          	csrr	a4,scause
    800043ec:	100027f3          	csrr	a5,sstatus
    800043f0:	0027f793          	andi	a5,a5,2
    800043f4:	06079e63          	bnez	a5,80004470 <console_handler+0x9c>
    800043f8:	00074c63          	bltz	a4,80004410 <console_handler+0x3c>
    800043fc:	01813083          	ld	ra,24(sp)
    80004400:	01013403          	ld	s0,16(sp)
    80004404:	00813483          	ld	s1,8(sp)
    80004408:	02010113          	addi	sp,sp,32
    8000440c:	00008067          	ret
    80004410:	0ff77713          	andi	a4,a4,255
    80004414:	00900793          	li	a5,9
    80004418:	fef712e3          	bne	a4,a5,800043fc <console_handler+0x28>
    8000441c:	ffffe097          	auipc	ra,0xffffe
    80004420:	4b8080e7          	jalr	1208(ra) # 800028d4 <plic_claim>
    80004424:	00a00793          	li	a5,10
    80004428:	00050493          	mv	s1,a0
    8000442c:	02f50c63          	beq	a0,a5,80004464 <console_handler+0x90>
    80004430:	fc0506e3          	beqz	a0,800043fc <console_handler+0x28>
    80004434:	00050593          	mv	a1,a0
    80004438:	00001517          	auipc	a0,0x1
    8000443c:	d4050513          	addi	a0,a0,-704 # 80005178 <_ZZ12printIntegermE6digits+0xe0>
    80004440:	fffff097          	auipc	ra,0xfffff
    80004444:	8d8080e7          	jalr	-1832(ra) # 80002d18 <__printf>
    80004448:	01013403          	ld	s0,16(sp)
    8000444c:	01813083          	ld	ra,24(sp)
    80004450:	00048513          	mv	a0,s1
    80004454:	00813483          	ld	s1,8(sp)
    80004458:	02010113          	addi	sp,sp,32
    8000445c:	ffffe317          	auipc	t1,0xffffe
    80004460:	4b030067          	jr	1200(t1) # 8000290c <plic_complete>
    80004464:	fffff097          	auipc	ra,0xfffff
    80004468:	1bc080e7          	jalr	444(ra) # 80003620 <uartintr>
    8000446c:	fddff06f          	j	80004448 <console_handler+0x74>
    80004470:	00001517          	auipc	a0,0x1
    80004474:	e0850513          	addi	a0,a0,-504 # 80005278 <digits+0x78>
    80004478:	fffff097          	auipc	ra,0xfffff
    8000447c:	844080e7          	jalr	-1980(ra) # 80002cbc <panic>

0000000080004480 <kvmincrease>:
    80004480:	fe010113          	addi	sp,sp,-32
    80004484:	01213023          	sd	s2,0(sp)
    80004488:	00001937          	lui	s2,0x1
    8000448c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004490:	00813823          	sd	s0,16(sp)
    80004494:	00113c23          	sd	ra,24(sp)
    80004498:	00913423          	sd	s1,8(sp)
    8000449c:	02010413          	addi	s0,sp,32
    800044a0:	01250933          	add	s2,a0,s2
    800044a4:	00c95913          	srli	s2,s2,0xc
    800044a8:	02090863          	beqz	s2,800044d8 <kvmincrease+0x58>
    800044ac:	00000493          	li	s1,0
    800044b0:	00148493          	addi	s1,s1,1
    800044b4:	fffff097          	auipc	ra,0xfffff
    800044b8:	4bc080e7          	jalr	1212(ra) # 80003970 <kalloc>
    800044bc:	fe991ae3          	bne	s2,s1,800044b0 <kvmincrease+0x30>
    800044c0:	01813083          	ld	ra,24(sp)
    800044c4:	01013403          	ld	s0,16(sp)
    800044c8:	00813483          	ld	s1,8(sp)
    800044cc:	00013903          	ld	s2,0(sp)
    800044d0:	02010113          	addi	sp,sp,32
    800044d4:	00008067          	ret
    800044d8:	01813083          	ld	ra,24(sp)
    800044dc:	01013403          	ld	s0,16(sp)
    800044e0:	00813483          	ld	s1,8(sp)
    800044e4:	00013903          	ld	s2,0(sp)
    800044e8:	00000513          	li	a0,0
    800044ec:	02010113          	addi	sp,sp,32
    800044f0:	00008067          	ret
	...

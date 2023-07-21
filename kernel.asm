
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	ee013103          	ld	sp,-288(sp) # 80005ee0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	325020ef          	jal	ra,80002b40 <start>

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
    80001084:	634010ef          	jal	ra,800026b8 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011e0:	4d8010ef          	jal	ra,800026b8 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012f0:	5bc010ef          	jal	ra,800028ac <_ZN5Riscv20handleTimerInterruptEv>

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
    80001400:	484010ef          	jal	ra,80002884 <_ZN5Riscv22handleConsoleInterruptEv>

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
    80001644:	00005797          	auipc	a5,0x5
    80001648:	8ac7b783          	ld	a5,-1876(a5) # 80005ef0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000164c:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001650:	01000513          	li	a0,16
    80001654:	00001097          	auipc	ra,0x1
    80001658:	d44080e7          	jalr	-700(ra) # 80002398 <_Znwm>
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
    80001674:	00005797          	auipc	a5,0x5
    80001678:	87c7b783          	ld	a5,-1924(a5) # 80005ef0 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001714:	cd8080e7          	jalr	-808(ra) # 800023e8 <_ZdlPv>
    80001718:	020480a3          	sb	zero,33(s1)
        Scheduler::put(tcb);
    8000171c:	00048513          	mv	a0,s1
    80001720:	00001097          	auipc	ra,0x1
    80001724:	254080e7          	jalr	596(ra) # 80002974 <_ZN9Scheduler3putEP3TCB>
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
    80001778:	c24080e7          	jalr	-988(ra) # 80002398 <_Znwm>
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
    800017dc:	c10080e7          	jalr	-1008(ra) # 800023e8 <_ZdlPv>
    800017e0:	020900a3          	sb	zero,33(s2)

    while (this->blocked.peekFirst()) {
        TCB* tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    800017e4:	00090513          	mv	a0,s2
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	18c080e7          	jalr	396(ra) # 80002974 <_ZN9Scheduler3putEP3TCB>
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
    800018d0:	75450513          	addi	a0,a0,1876 # 80005020 <CONSOLE_STATUS+0x10>
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	140080e7          	jalr	320(ra) # 80002a14 <_Z11printStringPKc>
        printInteger(i);
    800018dc:	00048513          	mv	a0,s1
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	1a4080e7          	jalr	420(ra) # 80002a84 <_Z12printIntegerm>
        printString("\n");
    800018e8:	00004517          	auipc	a0,0x4
    800018ec:	8c050513          	addi	a0,a0,-1856 # 800051a8 <CONSOLE_STATUS+0x198>
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	124080e7          	jalr	292(ra) # 80002a14 <_Z11printStringPKc>
    for (; i < 3; i++)
    800018f8:	0014849b          	addiw	s1,s1,1
    800018fc:	0ff4f493          	andi	s1,s1,255
    80001900:	00200793          	li	a5,2
    80001904:	fc97f4e3          	bgeu	a5,s1,800018cc <_Z11workerBodyAPv+0x20>
    }

    printString("A: yield\n");
    80001908:	00003517          	auipc	a0,0x3
    8000190c:	72050513          	addi	a0,a0,1824 # 80005028 <CONSOLE_STATUS+0x18>
    80001910:	00001097          	auipc	ra,0x1
    80001914:	104080e7          	jalr	260(ra) # 80002a14 <_Z11printStringPKc>
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
    8000192c:	71050513          	addi	a0,a0,1808 # 80005038 <CONSOLE_STATUS+0x28>
    80001930:	00001097          	auipc	ra,0x1
    80001934:	0e4080e7          	jalr	228(ra) # 80002a14 <_Z11printStringPKc>
    printInteger(t1);
    80001938:	00090513          	mv	a0,s2
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	148080e7          	jalr	328(ra) # 80002a84 <_Z12printIntegerm>
    printString("\n");
    80001944:	00004517          	auipc	a0,0x4
    80001948:	86450513          	addi	a0,a0,-1948 # 800051a8 <CONSOLE_STATUS+0x198>
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	0c8080e7          	jalr	200(ra) # 80002a14 <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    80001954:	01400513          	li	a0,20
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	ee4080e7          	jalr	-284(ra) # 8000183c <_ZL9fibonaccim>
    80001960:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001964:	00003517          	auipc	a0,0x3
    80001968:	6dc50513          	addi	a0,a0,1756 # 80005040 <CONSOLE_STATUS+0x30>
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	0a8080e7          	jalr	168(ra) # 80002a14 <_Z11printStringPKc>
    printInteger(result);
    80001974:	00090513          	mv	a0,s2
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	10c080e7          	jalr	268(ra) # 80002a84 <_Z12printIntegerm>
    printString("\n");
    80001980:	00004517          	auipc	a0,0x4
    80001984:	82850513          	addi	a0,a0,-2008 # 800051a8 <CONSOLE_STATUS+0x198>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	08c080e7          	jalr	140(ra) # 80002a14 <_Z11printStringPKc>
    80001990:	0380006f          	j	800019c8 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001994:	00003517          	auipc	a0,0x3
    80001998:	68c50513          	addi	a0,a0,1676 # 80005020 <CONSOLE_STATUS+0x10>
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	078080e7          	jalr	120(ra) # 80002a14 <_Z11printStringPKc>
        printInteger(i);
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	0dc080e7          	jalr	220(ra) # 80002a84 <_Z12printIntegerm>
        printString("\n");
    800019b0:	00003517          	auipc	a0,0x3
    800019b4:	7f850513          	addi	a0,a0,2040 # 800051a8 <CONSOLE_STATUS+0x198>
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	05c080e7          	jalr	92(ra) # 80002a14 <_Z11printStringPKc>
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
    80001a1c:	63850513          	addi	a0,a0,1592 # 80005050 <CONSOLE_STATUS+0x40>
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	ff4080e7          	jalr	-12(ra) # 80002a14 <_Z11printStringPKc>
        printInteger(i);
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	058080e7          	jalr	88(ra) # 80002a84 <_Z12printIntegerm>
        printString("\n");
    80001a34:	00003517          	auipc	a0,0x3
    80001a38:	77450513          	addi	a0,a0,1908 # 800051a8 <CONSOLE_STATUS+0x198>
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	fd8080e7          	jalr	-40(ra) # 80002a14 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a44:	0014849b          	addiw	s1,s1,1
    80001a48:	0ff4f493          	andi	s1,s1,255
    80001a4c:	00c00793          	li	a5,12
    80001a50:	fc97f4e3          	bgeu	a5,s1,80001a18 <_Z11workerBodyBPv+0x28>
    }

    printString("B: yield\n");
    80001a54:	00003517          	auipc	a0,0x3
    80001a58:	60450513          	addi	a0,a0,1540 # 80005058 <CONSOLE_STATUS+0x48>
    80001a5c:	00001097          	auipc	ra,0x1
    80001a60:	fb8080e7          	jalr	-72(ra) # 80002a14 <_Z11printStringPKc>
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
    80001a84:	5e850513          	addi	a0,a0,1512 # 80005068 <CONSOLE_STATUS+0x58>
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	f8c080e7          	jalr	-116(ra) # 80002a14 <_Z11printStringPKc>
    printInteger(result);
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	ff0080e7          	jalr	-16(ra) # 80002a84 <_Z12printIntegerm>
    printString("\n");
    80001a9c:	00003517          	auipc	a0,0x3
    80001aa0:	70c50513          	addi	a0,a0,1804 # 800051a8 <CONSOLE_STATUS+0x198>
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	f70080e7          	jalr	-144(ra) # 80002a14 <_Z11printStringPKc>
    80001aac:	0380006f          	j	80001ae4 <_Z11workerBodyBPv+0xf4>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001ab0:	00003517          	auipc	a0,0x3
    80001ab4:	5a050513          	addi	a0,a0,1440 # 80005050 <CONSOLE_STATUS+0x40>
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	f5c080e7          	jalr	-164(ra) # 80002a14 <_Z11printStringPKc>
        printInteger(i);
    80001ac0:	00048513          	mv	a0,s1
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	fc0080e7          	jalr	-64(ra) # 80002a84 <_Z12printIntegerm>
        printString("\n");
    80001acc:	00003517          	auipc	a0,0x3
    80001ad0:	6dc50513          	addi	a0,a0,1756 # 800051a8 <CONSOLE_STATUS+0x198>
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	f40080e7          	jalr	-192(ra) # 80002a14 <_Z11printStringPKc>
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
    80001b28:	55450513          	addi	a0,a0,1364 # 80005078 <CONSOLE_STATUS+0x68>
    80001b2c:	00001097          	auipc	ra,0x1
    80001b30:	ee8080e7          	jalr	-280(ra) # 80002a14 <_Z11printStringPKc>
    thread_dispatch();
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	9c4080e7          	jalr	-1596(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch2..\n");
    80001b3c:	00003517          	auipc	a0,0x3
    80001b40:	55c50513          	addi	a0,a0,1372 # 80005098 <CONSOLE_STATUS+0x88>
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	ed0080e7          	jalr	-304(ra) # 80002a14 <_Z11printStringPKc>
    thread_dispatch();
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	9ac080e7          	jalr	-1620(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch3...\n");
    80001b54:	00003517          	auipc	a0,0x3
    80001b58:	56450513          	addi	a0,a0,1380 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	eb8080e7          	jalr	-328(ra) # 80002a14 <_Z11printStringPKc>
    thread_dispatch();
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	994080e7          	jalr	-1644(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch4....\n");
    80001b6c:	00003517          	auipc	a0,0x3
    80001b70:	56c50513          	addi	a0,a0,1388 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	ea0080e7          	jalr	-352(ra) # 80002a14 <_Z11printStringPKc>
    printString("C: Signal semafora!\n");
    80001b7c:	00003517          	auipc	a0,0x3
    80001b80:	57c50513          	addi	a0,a0,1404 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	e90080e7          	jalr	-368(ra) # 80002a14 <_Z11printStringPKc>
    sem_close((sem_t) arg);
    80001b8c:	00048513          	mv	a0,s1
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	9dc080e7          	jalr	-1572(ra) # 8000156c <_Z9sem_closeP11MySemaphore>
    thread_dispatch();
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	960080e7          	jalr	-1696(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: posle signala..\n");
    80001ba0:	00003517          	auipc	a0,0x3
    80001ba4:	57050513          	addi	a0,a0,1392 # 80005110 <CONSOLE_STATUS+0x100>
    80001ba8:	00001097          	auipc	ra,0x1
    80001bac:	e6c080e7          	jalr	-404(ra) # 80002a14 <_Z11printStringPKc>
    printString("C: posle signala.2.\n");
    80001bb0:	00003517          	auipc	a0,0x3
    80001bb4:	57850513          	addi	a0,a0,1400 # 80005128 <CONSOLE_STATUS+0x118>
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	e5c080e7          	jalr	-420(ra) # 80002a14 <_Z11printStringPKc>
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
    80001bf0:	55450513          	addi	a0,a0,1364 # 80005140 <CONSOLE_STATUS+0x130>
    80001bf4:	00001097          	auipc	ra,0x1
    80001bf8:	e20080e7          	jalr	-480(ra) # 80002a14 <_Z11printStringPKc>
    printString("D: Cekamo na semaforu..\n");
    80001bfc:	00003517          	auipc	a0,0x3
    80001c00:	55c50513          	addi	a0,a0,1372 # 80005158 <CONSOLE_STATUS+0x148>
    80001c04:	00001097          	auipc	ra,0x1
    80001c08:	e10080e7          	jalr	-496(ra) # 80002a14 <_Z11printStringPKc>

    int returnValue = sem_wait((sem_t) arg);
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	988080e7          	jalr	-1656(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
    80001c18:	00050493          	mv	s1,a0

    printString("D: rezultat: ");
    80001c1c:	00003517          	auipc	a0,0x3
    80001c20:	55c50513          	addi	a0,a0,1372 # 80005178 <CONSOLE_STATUS+0x168>
    80001c24:	00001097          	auipc	ra,0x1
    80001c28:	df0080e7          	jalr	-528(ra) # 80002a14 <_Z11printStringPKc>
    printInteger(returnValue);
    80001c2c:	00048513          	mv	a0,s1
    80001c30:	00001097          	auipc	ra,0x1
    80001c34:	e54080e7          	jalr	-428(ra) # 80002a84 <_Z12printIntegerm>
    printString("\nD: izlazim automatski, pozdrav!\n");
    80001c38:	00003517          	auipc	a0,0x3
    80001c3c:	55050513          	addi	a0,a0,1360 # 80005188 <CONSOLE_STATUS+0x178>
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	dd4080e7          	jalr	-556(ra) # 80002a14 <_Z11printStringPKc>
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
    80001c8c:	2687b783          	ld	a5,616(a5) # 80005ef0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c90:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    80001c94:	00004797          	auipc	a5,0x4
    80001c98:	2447b783          	ld	a5,580(a5) # 80005ed8 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001cb4:	2385b583          	ld	a1,568(a1) # 80005ee8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001cb8:	fc040513          	addi	a0,s0,-64
    80001cbc:	fffff097          	auipc	ra,0xfffff
    80001cc0:	7dc080e7          	jalr	2012(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001cc4:	00050493          	mv	s1,a0
    printString("ThreadA created\n");
    80001cc8:	00003517          	auipc	a0,0x3
    80001ccc:	4e850513          	addi	a0,a0,1256 # 800051b0 <CONSOLE_STATUS+0x1a0>
    80001cd0:	00001097          	auipc	ra,0x1
    80001cd4:	d44080e7          	jalr	-700(ra) # 80002a14 <_Z11printStringPKc>
    printInteger(return1);
    80001cd8:	00048513          	mv	a0,s1
    80001cdc:	00001097          	auipc	ra,0x1
    80001ce0:	da8080e7          	jalr	-600(ra) # 80002a84 <_Z12printIntegerm>
    int return2 = thread_create(&threads[2], workerBodyB, threads[1]);
    80001ce4:	fc043603          	ld	a2,-64(s0)
    80001ce8:	00004597          	auipc	a1,0x4
    80001cec:	2185b583          	ld	a1,536(a1) # 80005f00 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001cf0:	fc840513          	addi	a0,s0,-56
    80001cf4:	fffff097          	auipc	ra,0xfffff
    80001cf8:	7a4080e7          	jalr	1956(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001cfc:	00050493          	mv	s1,a0
    printString("ThreadB created\n");
    80001d00:	00003517          	auipc	a0,0x3
    80001d04:	4c850513          	addi	a0,a0,1224 # 800051c8 <CONSOLE_STATUS+0x1b8>
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	d0c080e7          	jalr	-756(ra) # 80002a14 <_Z11printStringPKc>
    printInteger(return2);
    80001d10:	00048513          	mv	a0,s1
    80001d14:	00001097          	auipc	ra,0x1
    80001d18:	d70080e7          	jalr	-656(ra) # 80002a84 <_Z12printIntegerm>

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
    80001d58:	17c5b583          	ld	a1,380(a1) # 80005ed0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d5c:	fd040493          	addi	s1,s0,-48
    80001d60:	00048513          	mv	a0,s1
    80001d64:	fffff097          	auipc	ra,0xfffff
    80001d68:	734080e7          	jalr	1844(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[3], workerBodyD, semaphore[0]);
    80001d6c:	fa843603          	ld	a2,-88(s0)
    80001d70:	00004597          	auipc	a1,0x4
    80001d74:	1985b583          	ld	a1,408(a1) # 80005f08 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    80001d98:	44c50513          	addi	a0,a0,1100 # 800051e0 <CONSOLE_STATUS+0x1d0>
    80001d9c:	00001097          	auipc	ra,0x1
    80001da0:	c78080e7          	jalr	-904(ra) # 80002a14 <_Z11printStringPKc>
    printInteger(returnValue);
    80001da4:	00048513          	mv	a0,s1
    80001da8:	00001097          	auipc	ra,0x1
    80001dac:	cdc080e7          	jalr	-804(ra) # 80002a84 <_Z12printIntegerm>
    printString("\n");
    80001db0:	00003517          	auipc	a0,0x3
    80001db4:	3f850513          	addi	a0,a0,1016 # 800051a8 <CONSOLE_STATUS+0x198>
    80001db8:	00001097          	auipc	ra,0x1
    80001dbc:	c5c080e7          	jalr	-932(ra) # 80002a14 <_Z11printStringPKc>

    thread_dispatch();
    80001dc0:	fffff097          	auipc	ra,0xfffff
    80001dc4:	738080e7          	jalr	1848(ra) # 800014f8 <_Z15thread_dispatchv>
    for (auto &thread: threads) {
    80001dc8:	fb840493          	addi	s1,s0,-72
    80001dcc:	0140006f          	j	80001de0 <main+0x184>
        delete thread;
    80001dd0:	00090513          	mv	a0,s2
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	614080e7          	jalr	1556(ra) # 800023e8 <_ZdlPv>
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
    80001dfc:	618080e7          	jalr	1560(ra) # 80002410 <_ZdaPv>
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
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	864080e7          	jalr	-1948(ra) # 80002698 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001e3c:	00004497          	auipc	s1,0x4
    80001e40:	12448493          	addi	s1,s1,292 # 80005f60 <_ZN3TCB7runningE>
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
    80001ea8:	4f4080e7          	jalr	1268(ra) # 80002398 <_Znwm>
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
    80001ec0:	504080e7          	jalr	1284(ra) # 800023c0 <_Znam>
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
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	a74080e7          	jalr	-1420(ra) # 80002974 <_ZN9Scheduler3putEP3TCB>
    80001f08:	0280006f          	j	80001f30 <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001f0c:	00000793          	li	a5,0
    80001f10:	fd9ff06f          	j	80001ee8 <_ZN3TCB12createThreadEPFvPvES0_+0x6c>
    80001f14:	00050913          	mv	s2,a0
    80001f18:	00048513          	mv	a0,s1
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	4cc080e7          	jalr	1228(ra) # 800023e8 <_ZdlPv>
    80001f24:	00090513          	mv	a0,s2
    80001f28:	00005097          	auipc	ra,0x5
    80001f2c:	130080e7          	jalr	304(ra) # 80007058 <_Unwind_Resume>
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
    80001f8c:	fd84b483          	ld	s1,-40(s1) # 80005f60 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001f90:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001f94:	00079663          	bnez	a5,80001fa0 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return this->blocked; }
    80001f98:	0214c783          	lbu	a5,33(s1)
    80001f9c:	02078c63          	beqz	a5,80001fd4 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001fa0:	00001097          	auipc	ra,0x1
    80001fa4:	96c080e7          	jalr	-1684(ra) # 8000290c <_ZN9Scheduler3getEv>
    80001fa8:	00004797          	auipc	a5,0x4
    80001fac:	faa7bc23          	sd	a0,-72(a5) # 80005f60 <_ZN3TCB7runningE>
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
    80001fd8:	00001097          	auipc	ra,0x1
    80001fdc:	99c080e7          	jalr	-1636(ra) # 80002974 <_ZN9Scheduler3putEP3TCB>
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

0000000080002024 <_ZN15MemoryAllocator9mem_allocEm>:
DataBlock* MemoryAllocator::free = nullptr;
DataBlock* MemoryAllocator::used = nullptr;



void *MemoryAllocator::mem_alloc(size_t size) {
    80002024:	ff010113          	addi	sp,sp,-16
    80002028:	00813423          	sd	s0,8(sp)
    8000202c:	01010413          	addi	s0,sp,16
    size_t newSize;
    if(size%MEM_BLOCK_SIZE != 0) {
    80002030:	03f5f793          	andi	a5,a1,63
    80002034:	06078e63          	beqz	a5,800020b0 <_ZN15MemoryAllocator9mem_allocEm+0x8c>
        newSize = size/MEM_BLOCK_SIZE + (MEM_BLOCK_SIZE - size);
    80002038:	0065d793          	srli	a5,a1,0x6
    8000203c:	40b787b3          	sub	a5,a5,a1
    80002040:	04078793          	addi	a5,a5,64
    }
    else {
        newSize = size;
    }

    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
    80002044:	00004517          	auipc	a0,0x4
    80002048:	f2453503          	ld	a0,-220(a0) # 80005f68 <_ZN15MemoryAllocator4freeE>
    8000204c:	0a050e63          	beqz	a0,80002108 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
        if(curr->size<size) continue;
    80002050:	01053703          	ld	a4,16(a0)
    80002054:	06b76263          	bltu	a4,a1,800020b8 <_ZN15MemoryAllocator9mem_allocEm+0x94>
        if(curr->size > newSize) {
    80002058:	0ee7f663          	bgeu	a5,a4,80002144 <_ZN15MemoryAllocator9mem_allocEm+0x120>
            //new fragment needs to be created
            //novi ce biti offsetovan od curr za novi size i plus za sizeof(DataBlock) zato sto se posle curr
            // nalazi taj "header"
            DataBlock *newBlock;
            newBlock = (DataBlock*) ((char*)curr + newSize + sizeof(DataBlock));
    8000205c:	01878713          	addi	a4,a5,24
    80002060:	00e50733          	add	a4,a0,a4

            //Azuriranje free liste
            if(curr->prev) curr->prev->next = newBlock;
    80002064:	00853683          	ld	a3,8(a0)
    80002068:	04068c63          	beqz	a3,800020c0 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    8000206c:	00e6b023          	sd	a4,0(a3)
            else MemoryAllocator::free = newBlock;
            if(curr->next) curr->next->prev = newBlock;
    80002070:	00053683          	ld	a3,0(a0)
    80002074:	00068463          	beqz	a3,8000207c <_ZN15MemoryAllocator9mem_allocEm+0x58>
    80002078:	00e6b423          	sd	a4,8(a3)
            newBlock->prev = curr->prev;
    8000207c:	00853683          	ld	a3,8(a0)
    80002080:	00d73423          	sd	a3,8(a4)
            newBlock->next = curr->next;
    80002084:	00053683          	ld	a3,0(a0)
    80002088:	00d73023          	sd	a3,0(a4)
            //size novi je sada prethodni size - novi size i jos - sizeof(DataBlock) jer se to ne brise kada se zauzme
            //pa mora i to da se cuva
            newBlock->size = curr->size - newSize - sizeof(DataBlock);
    8000208c:	01053683          	ld	a3,16(a0)
    80002090:	40f687b3          	sub	a5,a3,a5
    80002094:	fe878793          	addi	a5,a5,-24
    80002098:	00f73823          	sd	a5,16(a4)

            //azuriranje USED liste
            DataBlock* currUsed = used;
    8000209c:	00004597          	auipc	a1,0x4
    800020a0:	ed45b583          	ld	a1,-300(a1) # 80005f70 <_ZN15MemoryAllocator4usedE>
    800020a4:	00058713          	mv	a4,a1
            DataBlock* prevUsed = nullptr;
    800020a8:	00000613          	li	a2,0
    800020ac:	0280006f          	j	800020d4 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
        newSize = size;
    800020b0:	00058793          	mv	a5,a1
    800020b4:	f91ff06f          	j	80002044 <_ZN15MemoryAllocator9mem_allocEm+0x20>
    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
    800020b8:	00053503          	ld	a0,0(a0)
    800020bc:	f91ff06f          	j	8000204c <_ZN15MemoryAllocator9mem_allocEm+0x28>
            else MemoryAllocator::free = newBlock;
    800020c0:	00004697          	auipc	a3,0x4
    800020c4:	eae6b423          	sd	a4,-344(a3) # 80005f68 <_ZN15MemoryAllocator4freeE>
    800020c8:	fa9ff06f          	j	80002070 <_ZN15MemoryAllocator9mem_allocEm+0x4c>

            for(;currUsed->next && (char*)currUsed + sizeof(DataBlock) + currUsed->size  < (char*) curr;
                 prevUsed = currUsed, currUsed = currUsed->next);
    800020cc:	00070613          	mv	a2,a4
    800020d0:	00068713          	mv	a4,a3
            for(;currUsed->next && (char*)currUsed + sizeof(DataBlock) + currUsed->size  < (char*) curr;
    800020d4:	00073683          	ld	a3,0(a4)
    800020d8:	00068a63          	beqz	a3,800020ec <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    800020dc:	01073783          	ld	a5,16(a4)
    800020e0:	01878793          	addi	a5,a5,24
    800020e4:	00f707b3          	add	a5,a4,a5
    800020e8:	fea7e2e3          	bltu	a5,a0,800020cc <_ZN15MemoryAllocator9mem_allocEm+0xa8>

            if(currUsed == used) {
    800020ec:	02b70463          	beq	a4,a1,80002114 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
                curr->next = used;
                curr->prev = nullptr;
                used->prev = curr;
                used = curr;
            }
            else if (currUsed->next == nullptr) {
    800020f0:	04068263          	beqz	a3,80002134 <_ZN15MemoryAllocator9mem_allocEm+0x110>
                curr->prev = currUsed;
                curr->next = nullptr;
            }
            else {
                //Insert into list in the middle (prev, curr, currUsed)
                prevUsed->next = curr;
    800020f4:	00a63023          	sd	a0,0(a2)
                curr->prev = prevUsed;
    800020f8:	00c53423          	sd	a2,8(a0)
                curr->next = currUsed;
    800020fc:	00e53023          	sd	a4,0(a0)
                currUsed->prev = curr;
    80002100:	00a73423          	sd	a0,8(a4)
            }
            return (char*)curr + sizeof(DataBlock);
    80002104:	01850513          	addi	a0,a0,24
            }
            return (char*)curr + sizeof(DataBlock);
        }
    }
    return nullptr; //should not enter here
}
    80002108:	00813403          	ld	s0,8(sp)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret
                curr->next = used;
    80002114:	00b53023          	sd	a1,0(a0)
                curr->prev = nullptr;
    80002118:	00053423          	sd	zero,8(a0)
                used->prev = curr;
    8000211c:	00004797          	auipc	a5,0x4
    80002120:	e4c78793          	addi	a5,a5,-436 # 80005f68 <_ZN15MemoryAllocator4freeE>
    80002124:	0087b703          	ld	a4,8(a5)
    80002128:	00a73423          	sd	a0,8(a4)
                used = curr;
    8000212c:	00a7b423          	sd	a0,8(a5)
    80002130:	fd5ff06f          	j	80002104 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
                currUsed->next = curr;
    80002134:	00a73023          	sd	a0,0(a4)
                curr->prev = currUsed;
    80002138:	00e53423          	sd	a4,8(a0)
                curr->next = nullptr;
    8000213c:	00053023          	sd	zero,0(a0)
    80002140:	fc5ff06f          	j	80002104 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
            if (curr->prev) curr->prev->next = curr->next;
    80002144:	00853783          	ld	a5,8(a0)
    80002148:	02078863          	beqz	a5,80002178 <_ZN15MemoryAllocator9mem_allocEm+0x154>
    8000214c:	00053703          	ld	a4,0(a0)
    80002150:	00e7b023          	sd	a4,0(a5)
            if(curr->next) curr->next->prev = curr->prev;
    80002154:	00053783          	ld	a5,0(a0)
    80002158:	00078663          	beqz	a5,80002164 <_ZN15MemoryAllocator9mem_allocEm+0x140>
    8000215c:	00853703          	ld	a4,8(a0)
    80002160:	00e7b423          	sd	a4,8(a5)
            DataBlock* currUsed = used;
    80002164:	00004597          	auipc	a1,0x4
    80002168:	e0c5b583          	ld	a1,-500(a1) # 80005f70 <_ZN15MemoryAllocator4usedE>
    8000216c:	00058713          	mv	a4,a1
            DataBlock* prevUsed = nullptr;
    80002170:	00000613          	li	a2,0
    80002174:	01c0006f          	j	80002190 <_ZN15MemoryAllocator9mem_allocEm+0x16c>
            else MemoryAllocator::free = curr->next;
    80002178:	00053783          	ld	a5,0(a0)
    8000217c:	00004717          	auipc	a4,0x4
    80002180:	def73623          	sd	a5,-532(a4) # 80005f68 <_ZN15MemoryAllocator4freeE>
    80002184:	fd1ff06f          	j	80002154 <_ZN15MemoryAllocator9mem_allocEm+0x130>
                 prevUsed = currUsed, currUsed = currUsed->next);
    80002188:	00070613          	mv	a2,a4
    8000218c:	00068713          	mv	a4,a3
            for(;currUsed->next && (char*)currUsed + sizeof(DataBlock) + currUsed->size  < (char*) curr;
    80002190:	00073683          	ld	a3,0(a4)
    80002194:	00068a63          	beqz	a3,800021a8 <_ZN15MemoryAllocator9mem_allocEm+0x184>
    80002198:	01073783          	ld	a5,16(a4)
    8000219c:	01878793          	addi	a5,a5,24
    800021a0:	00f707b3          	add	a5,a4,a5
    800021a4:	fea7e2e3          	bltu	a5,a0,80002188 <_ZN15MemoryAllocator9mem_allocEm+0x164>
            if(currUsed == used) {
    800021a8:	02b70063          	beq	a4,a1,800021c8 <_ZN15MemoryAllocator9mem_allocEm+0x1a4>
            else if (currUsed->next == nullptr) {
    800021ac:	02068e63          	beqz	a3,800021e8 <_ZN15MemoryAllocator9mem_allocEm+0x1c4>
                prevUsed->next = curr;
    800021b0:	00a63023          	sd	a0,0(a2)
                curr->prev = prevUsed;
    800021b4:	00c53423          	sd	a2,8(a0)
                curr->next = currUsed;
    800021b8:	00e53023          	sd	a4,0(a0)
                currUsed->prev = curr;
    800021bc:	00a73423          	sd	a0,8(a4)
            return (char*)curr + sizeof(DataBlock);
    800021c0:	01850513          	addi	a0,a0,24
    800021c4:	f45ff06f          	j	80002108 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
                curr->next = used;
    800021c8:	00b53023          	sd	a1,0(a0)
                curr->prev = nullptr;
    800021cc:	00053423          	sd	zero,8(a0)
                used->prev = curr;
    800021d0:	00004797          	auipc	a5,0x4
    800021d4:	d9878793          	addi	a5,a5,-616 # 80005f68 <_ZN15MemoryAllocator4freeE>
    800021d8:	0087b703          	ld	a4,8(a5)
    800021dc:	00a73423          	sd	a0,8(a4)
                used = curr;
    800021e0:	00a7b423          	sd	a0,8(a5)
    800021e4:	fddff06f          	j	800021c0 <_ZN15MemoryAllocator9mem_allocEm+0x19c>
                currUsed->next = curr;
    800021e8:	00a73023          	sd	a0,0(a4)
                curr->prev = currUsed;
    800021ec:	00e53423          	sd	a4,8(a0)
                curr->next = nullptr;
    800021f0:	00053023          	sd	zero,0(a0)
    800021f4:	fcdff06f          	j	800021c0 <_ZN15MemoryAllocator9mem_allocEm+0x19c>

00000000800021f8 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>:
        tryToJoin(currFree);
    }
    return 0;
}

void MemoryAllocator::tryToJoin(DataBlock *curr) {
    800021f8:	ff010113          	addi	sp,sp,-16
    800021fc:	00813423          	sd	s0,8(sp)
    80002200:	01010413          	addi	s0,sp,16
    if(curr->next && (char*)curr + sizeof(DataBlock) + curr->size == (char*)curr->next) {
    80002204:	00053783          	ld	a5,0(a0)
    80002208:	00078a63          	beqz	a5,8000221c <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>
    8000220c:	01053683          	ld	a3,16(a0)
    80002210:	01868713          	addi	a4,a3,24
    80002214:	00e50733          	add	a4,a0,a4
    80002218:	00e78863          	beq	a5,a4,80002228 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x30>
        curr->size += curr->next->size + sizeof(DataBlock);
        curr->next = curr->next->next;
        if(curr->next) curr->next->prev = curr;
    }
}
    8000221c:	00813403          	ld	s0,8(sp)
    80002220:	01010113          	addi	sp,sp,16
    80002224:	00008067          	ret
        curr->size += curr->next->size + sizeof(DataBlock);
    80002228:	0107b703          	ld	a4,16(a5)
    8000222c:	00e686b3          	add	a3,a3,a4
    80002230:	01868693          	addi	a3,a3,24
    80002234:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80002238:	0007b783          	ld	a5,0(a5)
    8000223c:	00f53023          	sd	a5,0(a0)
        if(curr->next) curr->next->prev = curr;
    80002240:	fc078ee3          	beqz	a5,8000221c <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>
    80002244:	00a7b423          	sd	a0,8(a5)
}
    80002248:	fd5ff06f          	j	8000221c <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>

000000008000224c <_ZN15MemoryAllocator8mem_freeEPv>:
    if(used == nullptr) return -1;
    8000224c:	00004797          	auipc	a5,0x4
    80002250:	d247b783          	ld	a5,-732(a5) # 80005f70 <_ZN15MemoryAllocator4usedE>
    80002254:	10078e63          	beqz	a5,80002370 <_ZN15MemoryAllocator8mem_freeEPv+0x124>
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;
    80002258:	12058063          	beqz	a1,80002378 <_ZN15MemoryAllocator8mem_freeEPv+0x12c>
    8000225c:	00004717          	auipc	a4,0x4
    80002260:	c6c73703          	ld	a4,-916(a4) # 80005ec8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002264:	00073703          	ld	a4,0(a4)
    80002268:	10e5ec63          	bltu	a1,a4,80002380 <_ZN15MemoryAllocator8mem_freeEPv+0x134>
    8000226c:	00004717          	auipc	a4,0x4
    80002270:	c8c73703          	ld	a4,-884(a4) # 80005ef8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002274:	00073703          	ld	a4,0(a4)
    80002278:	10b76863          	bltu	a4,a1,80002388 <_ZN15MemoryAllocator8mem_freeEPv+0x13c>
    DataBlock* curr = (DataBlock*)(char*)ptr - sizeof(DataBlock);
    8000227c:	dc058513          	addi	a0,a1,-576
    if(curr < used) return -3;
    80002280:	10f56863          	bltu	a0,a5,80002390 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
    if(used == curr) {
    80002284:	08a78863          	beq	a5,a0,80002314 <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
        curr->prev->next = curr->next;
    80002288:	dc85b703          	ld	a4,-568(a1)
    8000228c:	dc05b783          	ld	a5,-576(a1)
    80002290:	00f73023          	sd	a5,0(a4)
        curr->next->prev = curr->prev;
    80002294:	dc85b703          	ld	a4,-568(a1)
    80002298:	00e7b423          	sd	a4,8(a5)
        curr->next = nullptr;
    8000229c:	dc05b023          	sd	zero,-576(a1)
        curr->prev = nullptr;
    800022a0:	dc05b423          	sd	zero,-568(a1)
    if (free == nullptr) {
    800022a4:	00004797          	auipc	a5,0x4
    800022a8:	cc47b783          	ld	a5,-828(a5) # 80005f68 <_ZN15MemoryAllocator4freeE>
    800022ac:	08078463          	beqz	a5,80002334 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
int MemoryAllocator::mem_free(void* ptr) {
    800022b0:	fe010113          	addi	sp,sp,-32
    800022b4:	00113c23          	sd	ra,24(sp)
    800022b8:	00813823          	sd	s0,16(sp)
    800022bc:	00913423          	sd	s1,8(sp)
    800022c0:	02010413          	addi	s0,sp,32
    else if(curr < free) {
    800022c4:	08f56063          	bltu	a0,a5,80002344 <_ZN15MemoryAllocator8mem_freeEPv+0xf8>
        for(currFree = free; currFree->next && (char*)(currFree->next) < (char*) curr; currFree = currFree->next);
    800022c8:	00078493          	mv	s1,a5
    800022cc:	0007b783          	ld	a5,0(a5)
    800022d0:	00078463          	beqz	a5,800022d8 <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
    800022d4:	fea7eae3          	bltu	a5,a0,800022c8 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
        curr->prev = currFree;
    800022d8:	dc95b423          	sd	s1,-568(a1)
        if(curr->next) curr->next->prev = curr;
    800022dc:	00078463          	beqz	a5,800022e4 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    800022e0:	00a7b423          	sd	a0,8(a5)
        curr->next = curr;
    800022e4:	dca5b023          	sd	a0,-576(a1)
        tryToJoin(curr);
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	f10080e7          	jalr	-240(ra) # 800021f8 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
        tryToJoin(currFree);
    800022f0:	00048513          	mv	a0,s1
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	f04080e7          	jalr	-252(ra) # 800021f8 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
    return 0;
    800022fc:	00000513          	li	a0,0
}
    80002300:	01813083          	ld	ra,24(sp)
    80002304:	01013403          	ld	s0,16(sp)
    80002308:	00813483          	ld	s1,8(sp)
    8000230c:	02010113          	addi	sp,sp,32
    80002310:	00008067          	ret
        used = curr->next;
    80002314:	dc05b783          	ld	a5,-576(a1)
    80002318:	00004717          	auipc	a4,0x4
    8000231c:	c4f73c23          	sd	a5,-936(a4) # 80005f70 <_ZN15MemoryAllocator4usedE>
        if(used) used->prev = nullptr;
    80002320:	00078463          	beqz	a5,80002328 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    80002324:	0007b423          	sd	zero,8(a5)
        curr->next = nullptr;
    80002328:	dc05b023          	sd	zero,-576(a1)
        curr->prev = nullptr;
    8000232c:	dc05b423          	sd	zero,-568(a1)
    80002330:	f75ff06f          	j	800022a4 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        free = curr;
    80002334:	00004797          	auipc	a5,0x4
    80002338:	c2a7ba23          	sd	a0,-972(a5) # 80005f68 <_ZN15MemoryAllocator4freeE>
    return 0;
    8000233c:	00000513          	li	a0,0
    80002340:	00008067          	ret
        free->prev = curr;
    80002344:	00a7b423          	sd	a0,8(a5)
        curr->prev = nullptr;
    80002348:	dc05b423          	sd	zero,-568(a1)
        curr->next = free;
    8000234c:	00004797          	auipc	a5,0x4
    80002350:	c1c78793          	addi	a5,a5,-996 # 80005f68 <_ZN15MemoryAllocator4freeE>
    80002354:	0007b703          	ld	a4,0(a5)
    80002358:	dce5b023          	sd	a4,-576(a1)
        free = curr;
    8000235c:	00a7b023          	sd	a0,0(a5)
        tryToJoin(free);
    80002360:	00000097          	auipc	ra,0x0
    80002364:	e98080e7          	jalr	-360(ra) # 800021f8 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
    return 0;
    80002368:	00000513          	li	a0,0
    8000236c:	f95ff06f          	j	80002300 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    if(used == nullptr) return -1;
    80002370:	fff00513          	li	a0,-1
    80002374:	00008067          	ret
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;
    80002378:	ffe00513          	li	a0,-2
    8000237c:	00008067          	ret
    80002380:	ffe00513          	li	a0,-2
    80002384:	00008067          	ret
    80002388:	ffe00513          	li	a0,-2
    8000238c:	00008067          	ret
    if(curr < used) return -3;
    80002390:	ffd00513          	li	a0,-3
}
    80002394:	00008067          	ret

0000000080002398 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800023a8:	00003097          	auipc	ra,0x3
    800023ac:	920080e7          	jalr	-1760(ra) # 80004cc8 <__mem_alloc>
}
    800023b0:	00813083          	ld	ra,8(sp)
    800023b4:	00013403          	ld	s0,0(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_Znam>:

void *operator new[](size_t n)
{
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00113423          	sd	ra,8(sp)
    800023c8:	00813023          	sd	s0,0(sp)
    800023cc:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800023d0:	00003097          	auipc	ra,0x3
    800023d4:	8f8080e7          	jalr	-1800(ra) # 80004cc8 <__mem_alloc>
}
    800023d8:	00813083          	ld	ra,8(sp)
    800023dc:	00013403          	ld	s0,0(sp)
    800023e0:	01010113          	addi	sp,sp,16
    800023e4:	00008067          	ret

00000000800023e8 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800023e8:	ff010113          	addi	sp,sp,-16
    800023ec:	00113423          	sd	ra,8(sp)
    800023f0:	00813023          	sd	s0,0(sp)
    800023f4:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800023f8:	00003097          	auipc	ra,0x3
    800023fc:	804080e7          	jalr	-2044(ra) # 80004bfc <__mem_free>
}
    80002400:	00813083          	ld	ra,8(sp)
    80002404:	00013403          	ld	s0,0(sp)
    80002408:	01010113          	addi	sp,sp,16
    8000240c:	00008067          	ret

0000000080002410 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00113423          	sd	ra,8(sp)
    80002418:	00813023          	sd	s0,0(sp)
    8000241c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80002420:	00002097          	auipc	ra,0x2
    80002424:	7dc080e7          	jalr	2012(ra) # 80004bfc <__mem_free>
}
    80002428:	00813083          	ld	ra,8(sp)
    8000242c:	00013403          	ld	s0,0(sp)
    80002430:	01010113          	addi	sp,sp,16
    80002434:	00008067          	ret

0000000080002438 <_ZN6Thread3runEv>:

Thread::Thread() {
    //todo
}

void Thread::run() {
    80002438:	ff010113          	addi	sp,sp,-16
    8000243c:	00813423          	sd	s0,8(sp)
    80002440:	01010413          	addi	s0,sp,16
    //todo
}
    80002444:	00813403          	ld	s0,8(sp)
    80002448:	01010113          	addi	sp,sp,16
    8000244c:	00008067          	ret

0000000080002450 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00113423          	sd	ra,8(sp)
    80002458:	00813023          	sd	s0,0(sp)
    8000245c:	01010413          	addi	s0,sp,16
    80002460:	00004797          	auipc	a5,0x4
    80002464:	a2878793          	addi	a5,a5,-1496 # 80005e88 <_ZTV9Semaphore+0x10>
    80002468:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    8000246c:	00853503          	ld	a0,8(a0)
    80002470:	fffff097          	auipc	ra,0xfffff
    80002474:	0fc080e7          	jalr	252(ra) # 8000156c <_Z9sem_closeP11MySemaphore>
}
    80002478:	00813083          	ld	ra,8(sp)
    8000247c:	00013403          	ld	s0,0(sp)
    80002480:	01010113          	addi	sp,sp,16
    80002484:	00008067          	ret

0000000080002488 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002488:	fe010113          	addi	sp,sp,-32
    8000248c:	00113c23          	sd	ra,24(sp)
    80002490:	00813823          	sd	s0,16(sp)
    80002494:	00913423          	sd	s1,8(sp)
    80002498:	02010413          	addi	s0,sp,32
    8000249c:	00050493          	mv	s1,a0
}
    800024a0:	00000097          	auipc	ra,0x0
    800024a4:	fb0080e7          	jalr	-80(ra) # 80002450 <_ZN9SemaphoreD1Ev>
    800024a8:	00048513          	mv	a0,s1
    800024ac:	00000097          	auipc	ra,0x0
    800024b0:	f3c080e7          	jalr	-196(ra) # 800023e8 <_ZdlPv>
    800024b4:	01813083          	ld	ra,24(sp)
    800024b8:	01013403          	ld	s0,16(sp)
    800024bc:	00813483          	ld	s1,8(sp)
    800024c0:	02010113          	addi	sp,sp,32
    800024c4:	00008067          	ret

00000000800024c8 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00113423          	sd	ra,8(sp)
    800024d0:	00813023          	sd	s0,0(sp)
    800024d4:	01010413          	addi	s0,sp,16
    800024d8:	00004797          	auipc	a5,0x4
    800024dc:	9d078793          	addi	a5,a5,-1584 # 80005ea8 <_ZTV6Thread+0x10>
    800024e0:	00f53023          	sd	a5,0(a0)
    thread_exit(); //Da li ovo tako treba? Msm da ne
    800024e4:	fffff097          	auipc	ra,0xfffff
    800024e8:	fe8080e7          	jalr	-24(ra) # 800014cc <_Z11thread_exitv>
}
    800024ec:	00813083          	ld	ra,8(sp)
    800024f0:	00013403          	ld	s0,0(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800024fc:	fe010113          	addi	sp,sp,-32
    80002500:	00113c23          	sd	ra,24(sp)
    80002504:	00813823          	sd	s0,16(sp)
    80002508:	00913423          	sd	s1,8(sp)
    8000250c:	02010413          	addi	s0,sp,32
    80002510:	00050493          	mv	s1,a0
}
    80002514:	00000097          	auipc	ra,0x0
    80002518:	fb4080e7          	jalr	-76(ra) # 800024c8 <_ZN6ThreadD1Ev>
    8000251c:	00048513          	mv	a0,s1
    80002520:	00000097          	auipc	ra,0x0
    80002524:	ec8080e7          	jalr	-312(ra) # 800023e8 <_ZdlPv>
    80002528:	01813083          	ld	ra,24(sp)
    8000252c:	01013403          	ld	s0,16(sp)
    80002530:	00813483          	ld	s1,8(sp)
    80002534:	02010113          	addi	sp,sp,32
    80002538:	00008067          	ret

000000008000253c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    8000253c:	ff010113          	addi	sp,sp,-16
    80002540:	00113423          	sd	ra,8(sp)
    80002544:	00813023          	sd	s0,0(sp)
    80002548:	01010413          	addi	s0,sp,16
    8000254c:	00004797          	auipc	a5,0x4
    80002550:	93c78793          	addi	a5,a5,-1732 # 80005e88 <_ZTV9Semaphore+0x10>
    80002554:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    80002558:	00850513          	addi	a0,a0,8
    8000255c:	fffff097          	auipc	ra,0xfffff
    80002560:	fe0080e7          	jalr	-32(ra) # 8000153c <_Z8sem_openPP11MySemaphorej>
}
    80002564:	00813083          	ld	ra,8(sp)
    80002568:	00013403          	ld	s0,0(sp)
    8000256c:	01010113          	addi	sp,sp,16
    80002570:	00008067          	ret

0000000080002574 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002574:	ff010113          	addi	sp,sp,-16
    80002578:	00113423          	sd	ra,8(sp)
    8000257c:	00813023          	sd	s0,0(sp)
    80002580:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    80002584:	00853503          	ld	a0,8(a0)
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	010080e7          	jalr	16(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
}
    80002590:	00813083          	ld	ra,8(sp)
    80002594:	00013403          	ld	s0,0(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00113423          	sd	ra,8(sp)
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    800025b0:	00853503          	ld	a0,8(a0)
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	010080e7          	jalr	16(ra) # 800015c4 <_Z10sem_signalP11MySemaphore>
}
    800025bc:	00813083          	ld	ra,8(sp)
    800025c0:	00013403          	ld	s0,0(sp)
    800025c4:	01010113          	addi	sp,sp,16
    800025c8:	00008067          	ret

00000000800025cc <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800025cc:	ff010113          	addi	sp,sp,-16
    800025d0:	00113423          	sd	ra,8(sp)
    800025d4:	00813023          	sd	s0,0(sp)
    800025d8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800025dc:	fffff097          	auipc	ra,0xfffff
    800025e0:	f1c080e7          	jalr	-228(ra) # 800014f8 <_Z15thread_dispatchv>
}
    800025e4:	00813083          	ld	ra,8(sp)
    800025e8:	00013403          	ld	s0,0(sp)
    800025ec:	01010113          	addi	sp,sp,16
    800025f0:	00008067          	ret

00000000800025f4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800025f4:	ff010113          	addi	sp,sp,-16
    800025f8:	00113423          	sd	ra,8(sp)
    800025fc:	00813023          	sd	s0,0(sp)
    80002600:	01010413          	addi	s0,sp,16
    80002604:	00004797          	auipc	a5,0x4
    80002608:	8a478793          	addi	a5,a5,-1884 # 80005ea8 <_ZTV6Thread+0x10>
    8000260c:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    80002610:	00850513          	addi	a0,a0,8
    80002614:	fffff097          	auipc	ra,0xfffff
    80002618:	e84080e7          	jalr	-380(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
}
    8000261c:	00813083          	ld	ra,8(sp)
    80002620:	00013403          	ld	s0,0(sp)
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret

000000008000262c <_ZN6Thread4joinEv>:
void Thread::join() {
    8000262c:	ff010113          	addi	sp,sp,-16
    80002630:	00113423          	sd	ra,8(sp)
    80002634:	00813023          	sd	s0,0(sp)
    80002638:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    8000263c:	00853503          	ld	a0,8(a0)
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	ed8080e7          	jalr	-296(ra) # 80001518 <_Z11thread_joinP3TCB>
}
    80002648:	00813083          	ld	ra,8(sp)
    8000264c:	00013403          	ld	s0,0(sp)
    80002650:	01010113          	addi	sp,sp,16
    80002654:	00008067          	ret

0000000080002658 <_ZN6Thread5startEv>:
int Thread::start() {
    80002658:	ff010113          	addi	sp,sp,-16
    8000265c:	00813423          	sd	s0,8(sp)
    80002660:	01010413          	addi	s0,sp,16
}
    80002664:	00000513          	li	a0,0
    80002668:	00813403          	ld	s0,8(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret

0000000080002674 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00813423          	sd	s0,8(sp)
    8000267c:	01010413          	addi	s0,sp,16
    80002680:	00004797          	auipc	a5,0x4
    80002684:	82878793          	addi	a5,a5,-2008 # 80005ea8 <_ZTV6Thread+0x10>
    80002688:	00f53023          	sd	a5,0(a0)
}
    8000268c:	00813403          	ld	s0,8(sp)
    80002690:	01010113          	addi	sp,sp,16
    80002694:	00008067          	ret

0000000080002698 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    80002698:	ff010113          	addi	sp,sp,-16
    8000269c:	00813423          	sd	s0,8(sp)
    800026a0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800026a4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800026a8:	10200073          	sret
}
    800026ac:	00813403          	ld	s0,8(sp)
    800026b0:	01010113          	addi	sp,sp,16
    800026b4:	00008067          	ret

00000000800026b8 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void*);

void Riscv::handleSupervisorTrap()
{
    800026b8:	fb010113          	addi	sp,sp,-80
    800026bc:	04113423          	sd	ra,72(sp)
    800026c0:	04813023          	sd	s0,64(sp)
    800026c4:	02913c23          	sd	s1,56(sp)
    800026c8:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800026cc:	142027f3          	csrr	a5,scause
    800026d0:	fcf43023          	sd	a5,-64(s0)
    return scause;
    800026d4:	fc043783          	ld	a5,-64(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800026d8:	ff878793          	addi	a5,a5,-8
    800026dc:	00100713          	li	a4,1
    800026e0:	00f77c63          	bgeu	a4,a5,800026f8 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    else
    {
        // unexpected trap cause
        // Ovde se ulazi ako se desi neki interrupt tabele
    }
}
    800026e4:	04813083          	ld	ra,72(sp)
    800026e8:	04013403          	ld	s0,64(sp)
    800026ec:	03813483          	ld	s1,56(sp)
    800026f0:	05010113          	addi	sp,sp,80
    800026f4:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800026f8:	141027f3          	csrr	a5,sepc
    800026fc:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002700:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002704:	00478793          	addi	a5,a5,4
    80002708:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000270c:	100027f3          	csrr	a5,sstatus
    80002710:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002714:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80002718:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    8000271c:	00050793          	mv	a5,a0
    80002720:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80002724:	fc843783          	ld	a5,-56(s0)
        switch (codeOperation) {
    80002728:	fef78793          	addi	a5,a5,-17
    8000272c:	03200713          	li	a4,50
    80002730:	06f76c63          	bltu	a4,a5,800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    80002734:	00279793          	slli	a5,a5,0x2
    80002738:	00003717          	auipc	a4,0x3
    8000273c:	ac070713          	addi	a4,a4,-1344 # 800051f8 <CONSOLE_STATUS+0x1e8>
    80002740:	00e787b3          	add	a5,a5,a4
    80002744:	0007a783          	lw	a5,0(a5)
    80002748:	00e787b3          	add	a5,a5,a4
    8000274c:	00078067          	jr	a5
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    80002750:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    80002754:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    80002758:	00068593          	mv	a1,a3
                *tcb = TCB::createThread(body, arg);
    8000275c:	fffff097          	auipc	ra,0xfffff
    80002760:	720080e7          	jalr	1824(ra) # 80001e7c <_ZN3TCB12createThreadEPFvPvES0_>
    80002764:	00a4b023          	sd	a0,0(s1)
                if(*tcb != nullptr) {
    80002768:	00050863          	beqz	a0,80002778 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                    __asm__ volatile ("li t0, 0");
    8000276c:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002770:	04542823          	sw	t0,80(s0)
    80002774:	0340006f          	j	800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    __asm__ volatile ("li t0, -1");
    80002778:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    8000277c:	04542823          	sw	t0,80(s0)
    80002780:	0280006f          	j	800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                TCB::running->setFinished(true);
    80002784:	00003797          	auipc	a5,0x3
    80002788:	76c7b783          	ld	a5,1900(a5) # 80005ef0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000278c:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002790:	00100713          	li	a4,1
    80002794:	02e78023          	sb	a4,32(a5)
                TCB::dispatch();
    80002798:	fffff097          	auipc	ra,0xfffff
    8000279c:	7dc080e7          	jalr	2012(ra) # 80001f74 <_ZN3TCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    800027a0:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    800027a4:	04542823          	sw	t0,80(s0)
        w_sstatus(sstatus);
    800027a8:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800027ac:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800027b0:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800027b4:	14179073          	csrw	sepc,a5
}
    800027b8:	f2dff06f          	j	800026e4 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                TCB::dispatch();
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	7b8080e7          	jalr	1976(ra) # 80001f74 <_ZN3TCB8dispatchEv>
                break;
    800027c4:	fe5ff06f          	j	800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    800027c8:	00058513          	mv	a0,a1
                TCB::join(handle);
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	818080e7          	jalr	-2024(ra) # 80001fe4 <_ZN3TCB4joinEPS_>
                break;
    800027d4:	fd5ff06f          	j	800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a2" : "=r" (init));
    800027d8:	00060513          	mv	a0,a2
    800027dc:	0005051b          	sext.w	a0,a0
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    800027e0:	00058493          	mv	s1,a1
                *semHandle = MySemaphore::createSemaphore(init);
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	f74080e7          	jalr	-140(ra) # 80001758 <_ZN11MySemaphore15createSemaphoreEj>
    800027ec:	00a4b023          	sd	a0,0(s1)
                if(*semHandle != nullptr) {
    800027f0:	00050863          	beqz	a0,80002800 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    __asm__ volatile ("li t0, 0");
    800027f4:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    800027f8:	04542823          	sw	t0,80(s0)
    800027fc:	fadff06f          	j	800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    __asm__ volatile ("li t0, -1");
    80002800:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002804:	04542823          	sw	t0,80(s0)
    80002808:	fa1ff06f          	j	800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    8000280c:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    80002810:	00050c63          	beqz	a0,80002828 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    returnValue = semHandlePtr->close();
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	f8c080e7          	jalr	-116(ra) # 800017a0 <_ZN11MySemaphore5closeEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    8000281c:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002820:	04542823          	sw	t0,80(s0)
                break;
    80002824:	f85ff06f          	j	800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                else returnValue = -2;
    80002828:	ffe00513          	li	a0,-2
    8000282c:	ff1ff06f          	j	8000281c <_ZN5Riscv20handleSupervisorTrapEv+0x164>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002830:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    80002834:	00050c63          	beqz	a0,8000284c <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                    returnValue = semHandlePtr->wait();
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	db8080e7          	jalr	-584(ra) # 800015f0 <_ZN11MySemaphore4waitEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002840:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002844:	04542823          	sw	t0,80(s0)
                break;
    80002848:	f61ff06f          	j	800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                else returnValue = -2;
    8000284c:	ffe00513          	li	a0,-2
    80002850:	ff1ff06f          	j	80002840 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002854:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr)
    80002858:	00050c63          	beqz	a0,80002870 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    returnValue = semHandlePtr->signal();
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	e60080e7          	jalr	-416(ra) # 800016bc <_ZN11MySemaphore6signalEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002864:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002868:	04542823          	sw	t0,80(s0)
                break;
    8000286c:	f3dff06f          	j	800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    returnValue = -2;
    80002870:	ffe00513          	li	a0,-2
    80002874:	ff1ff06f          	j	80002864 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                TCB::dispatch();
    80002878:	fffff097          	auipc	ra,0xfffff
    8000287c:	6fc080e7          	jalr	1788(ra) # 80001f74 <_ZN3TCB8dispatchEv>
                break;
    80002880:	f29ff06f          	j	800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

0000000080002884 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00113423          	sd	ra,8(sp)
    8000288c:	00813023          	sd	s0,0(sp)
    80002890:	01010413          	addi	s0,sp,16
    console_handler();
    80002894:	00002097          	auipc	ra,0x2
    80002898:	600080e7          	jalr	1536(ra) # 80004e94 <console_handler>
}
    8000289c:	00813083          	ld	ra,8(sp)
    800028a0:	00013403          	ld	s0,0(sp)
    800028a4:	01010113          	addi	sp,sp,16
    800028a8:	00008067          	ret

00000000800028ac <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    800028ac:	ff010113          	addi	sp,sp,-16
    800028b0:	00813423          	sd	s0,8(sp)
    800028b4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800028b8:	00200793          	li	a5,2
    800028bc:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
    800028c0:	00813403          	ld	s0,8(sp)
    800028c4:	01010113          	addi	sp,sp,16
    800028c8:	00008067          	ret

00000000800028cc <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    800028cc:	ff010113          	addi	sp,sp,-16
    800028d0:	00813423          	sd	s0,8(sp)
    800028d4:	01010413          	addi	s0,sp,16
    800028d8:	00100793          	li	a5,1
    800028dc:	00f50863          	beq	a0,a5,800028ec <_Z41__static_initialization_and_destruction_0ii+0x20>
    800028e0:	00813403          	ld	s0,8(sp)
    800028e4:	01010113          	addi	sp,sp,16
    800028e8:	00008067          	ret
    800028ec:	000107b7          	lui	a5,0x10
    800028f0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800028f4:	fef596e3          	bne	a1,a5,800028e0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    800028f8:	00003797          	auipc	a5,0x3
    800028fc:	68078793          	addi	a5,a5,1664 # 80005f78 <_ZN9Scheduler16readyThreadQueueE>
    80002900:	0007b023          	sd	zero,0(a5)
    80002904:	0007b423          	sd	zero,8(a5)
    80002908:	fd9ff06f          	j	800028e0 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000290c <_ZN9Scheduler3getEv>:
{
    8000290c:	fe010113          	addi	sp,sp,-32
    80002910:	00113c23          	sd	ra,24(sp)
    80002914:	00813823          	sd	s0,16(sp)
    80002918:	00913423          	sd	s1,8(sp)
    8000291c:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002920:	00003517          	auipc	a0,0x3
    80002924:	65853503          	ld	a0,1624(a0) # 80005f78 <_ZN9Scheduler16readyThreadQueueE>
    80002928:	04050263          	beqz	a0,8000296c <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    8000292c:	00853783          	ld	a5,8(a0)
    80002930:	00003717          	auipc	a4,0x3
    80002934:	64f73423          	sd	a5,1608(a4) # 80005f78 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002938:	02078463          	beqz	a5,80002960 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    8000293c:	00053483          	ld	s1,0(a0)
        delete elem;
    80002940:	00000097          	auipc	ra,0x0
    80002944:	aa8080e7          	jalr	-1368(ra) # 800023e8 <_ZdlPv>
}
    80002948:	00048513          	mv	a0,s1
    8000294c:	01813083          	ld	ra,24(sp)
    80002950:	01013403          	ld	s0,16(sp)
    80002954:	00813483          	ld	s1,8(sp)
    80002958:	02010113          	addi	sp,sp,32
    8000295c:	00008067          	ret
        if (!head) { tail = 0; }
    80002960:	00003797          	auipc	a5,0x3
    80002964:	6207b023          	sd	zero,1568(a5) # 80005f80 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002968:	fd5ff06f          	j	8000293c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000296c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002970:	fd9ff06f          	j	80002948 <_ZN9Scheduler3getEv+0x3c>

0000000080002974 <_ZN9Scheduler3putEP3TCB>:
{
    80002974:	fe010113          	addi	sp,sp,-32
    80002978:	00113c23          	sd	ra,24(sp)
    8000297c:	00813823          	sd	s0,16(sp)
    80002980:	00913423          	sd	s1,8(sp)
    80002984:	02010413          	addi	s0,sp,32
    80002988:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    8000298c:	01000513          	li	a0,16
    80002990:	00000097          	auipc	ra,0x0
    80002994:	a08080e7          	jalr	-1528(ra) # 80002398 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002998:	00953023          	sd	s1,0(a0)
    8000299c:	00053423          	sd	zero,8(a0)
        if (tail)
    800029a0:	00003797          	auipc	a5,0x3
    800029a4:	5e07b783          	ld	a5,1504(a5) # 80005f80 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800029a8:	02078263          	beqz	a5,800029cc <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800029ac:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800029b0:	00003797          	auipc	a5,0x3
    800029b4:	5ca7b823          	sd	a0,1488(a5) # 80005f80 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800029b8:	01813083          	ld	ra,24(sp)
    800029bc:	01013403          	ld	s0,16(sp)
    800029c0:	00813483          	ld	s1,8(sp)
    800029c4:	02010113          	addi	sp,sp,32
    800029c8:	00008067          	ret
            head = tail = elem;
    800029cc:	00003797          	auipc	a5,0x3
    800029d0:	5ac78793          	addi	a5,a5,1452 # 80005f78 <_ZN9Scheduler16readyThreadQueueE>
    800029d4:	00a7b423          	sd	a0,8(a5)
    800029d8:	00a7b023          	sd	a0,0(a5)
    800029dc:	fddff06f          	j	800029b8 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800029e0 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800029e0:	ff010113          	addi	sp,sp,-16
    800029e4:	00113423          	sd	ra,8(sp)
    800029e8:	00813023          	sd	s0,0(sp)
    800029ec:	01010413          	addi	s0,sp,16
    800029f0:	000105b7          	lui	a1,0x10
    800029f4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800029f8:	00100513          	li	a0,1
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	ed0080e7          	jalr	-304(ra) # 800028cc <_Z41__static_initialization_and_destruction_0ii>
    80002a04:	00813083          	ld	ra,8(sp)
    80002a08:	00013403          	ld	s0,0(sp)
    80002a0c:	01010113          	addi	sp,sp,16
    80002a10:	00008067          	ret

0000000080002a14 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80002a14:	fd010113          	addi	sp,sp,-48
    80002a18:	02113423          	sd	ra,40(sp)
    80002a1c:	02813023          	sd	s0,32(sp)
    80002a20:	00913c23          	sd	s1,24(sp)
    80002a24:	01213823          	sd	s2,16(sp)
    80002a28:	03010413          	addi	s0,sp,48
    80002a2c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002a30:	100027f3          	csrr	a5,sstatus
    80002a34:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002a38:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002a3c:	00200793          	li	a5,2
    80002a40:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002a44:	0004c503          	lbu	a0,0(s1)
    80002a48:	00050a63          	beqz	a0,80002a5c <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80002a4c:	00002097          	auipc	ra,0x2
    80002a50:	3d4080e7          	jalr	980(ra) # 80004e20 <__putc>
        string++;
    80002a54:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002a58:	fedff06f          	j	80002a44 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002a5c:	0009091b          	sext.w	s2,s2
    80002a60:	00297913          	andi	s2,s2,2
    80002a64:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002a68:	10092073          	csrs	sstatus,s2
}
    80002a6c:	02813083          	ld	ra,40(sp)
    80002a70:	02013403          	ld	s0,32(sp)
    80002a74:	01813483          	ld	s1,24(sp)
    80002a78:	01013903          	ld	s2,16(sp)
    80002a7c:	03010113          	addi	sp,sp,48
    80002a80:	00008067          	ret

0000000080002a84 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002a84:	fc010113          	addi	sp,sp,-64
    80002a88:	02113c23          	sd	ra,56(sp)
    80002a8c:	02813823          	sd	s0,48(sp)
    80002a90:	02913423          	sd	s1,40(sp)
    80002a94:	03213023          	sd	s2,32(sp)
    80002a98:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002a9c:	100027f3          	csrr	a5,sstatus
    80002aa0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002aa4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002aa8:	00200793          	li	a5,2
    80002aac:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002ab0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002ab4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002ab8:	00a00613          	li	a2,10
    80002abc:	02c5773b          	remuw	a4,a0,a2
    80002ac0:	02071693          	slli	a3,a4,0x20
    80002ac4:	0206d693          	srli	a3,a3,0x20
    80002ac8:	00003717          	auipc	a4,0x3
    80002acc:	80070713          	addi	a4,a4,-2048 # 800052c8 <_ZZ12printIntegermE6digits>
    80002ad0:	00d70733          	add	a4,a4,a3
    80002ad4:	00074703          	lbu	a4,0(a4)
    80002ad8:	fe040693          	addi	a3,s0,-32
    80002adc:	009687b3          	add	a5,a3,s1
    80002ae0:	0014849b          	addiw	s1,s1,1
    80002ae4:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002ae8:	0005071b          	sext.w	a4,a0
    80002aec:	02c5553b          	divuw	a0,a0,a2
    80002af0:	00900793          	li	a5,9
    80002af4:	fce7e2e3          	bltu	a5,a4,80002ab8 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002af8:	fff4849b          	addiw	s1,s1,-1
    80002afc:	0004ce63          	bltz	s1,80002b18 <_Z12printIntegerm+0x94>
    80002b00:	fe040793          	addi	a5,s0,-32
    80002b04:	009787b3          	add	a5,a5,s1
    80002b08:	ff07c503          	lbu	a0,-16(a5)
    80002b0c:	00002097          	auipc	ra,0x2
    80002b10:	314080e7          	jalr	788(ra) # 80004e20 <__putc>
    80002b14:	fe5ff06f          	j	80002af8 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002b18:	0009091b          	sext.w	s2,s2
    80002b1c:	00297913          	andi	s2,s2,2
    80002b20:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002b24:	10092073          	csrs	sstatus,s2
    80002b28:	03813083          	ld	ra,56(sp)
    80002b2c:	03013403          	ld	s0,48(sp)
    80002b30:	02813483          	ld	s1,40(sp)
    80002b34:	02013903          	ld	s2,32(sp)
    80002b38:	04010113          	addi	sp,sp,64
    80002b3c:	00008067          	ret

0000000080002b40 <start>:
    80002b40:	ff010113          	addi	sp,sp,-16
    80002b44:	00813423          	sd	s0,8(sp)
    80002b48:	01010413          	addi	s0,sp,16
    80002b4c:	300027f3          	csrr	a5,mstatus
    80002b50:	ffffe737          	lui	a4,0xffffe
    80002b54:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff75ff>
    80002b58:	00e7f7b3          	and	a5,a5,a4
    80002b5c:	00001737          	lui	a4,0x1
    80002b60:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002b64:	00e7e7b3          	or	a5,a5,a4
    80002b68:	30079073          	csrw	mstatus,a5
    80002b6c:	00000797          	auipc	a5,0x0
    80002b70:	16078793          	addi	a5,a5,352 # 80002ccc <system_main>
    80002b74:	34179073          	csrw	mepc,a5
    80002b78:	00000793          	li	a5,0
    80002b7c:	18079073          	csrw	satp,a5
    80002b80:	000107b7          	lui	a5,0x10
    80002b84:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002b88:	30279073          	csrw	medeleg,a5
    80002b8c:	30379073          	csrw	mideleg,a5
    80002b90:	104027f3          	csrr	a5,sie
    80002b94:	2227e793          	ori	a5,a5,546
    80002b98:	10479073          	csrw	sie,a5
    80002b9c:	fff00793          	li	a5,-1
    80002ba0:	00a7d793          	srli	a5,a5,0xa
    80002ba4:	3b079073          	csrw	pmpaddr0,a5
    80002ba8:	00f00793          	li	a5,15
    80002bac:	3a079073          	csrw	pmpcfg0,a5
    80002bb0:	f14027f3          	csrr	a5,mhartid
    80002bb4:	0200c737          	lui	a4,0x200c
    80002bb8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002bbc:	0007869b          	sext.w	a3,a5
    80002bc0:	00269713          	slli	a4,a3,0x2
    80002bc4:	000f4637          	lui	a2,0xf4
    80002bc8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002bcc:	00d70733          	add	a4,a4,a3
    80002bd0:	0037979b          	slliw	a5,a5,0x3
    80002bd4:	020046b7          	lui	a3,0x2004
    80002bd8:	00d787b3          	add	a5,a5,a3
    80002bdc:	00c585b3          	add	a1,a1,a2
    80002be0:	00371693          	slli	a3,a4,0x3
    80002be4:	00003717          	auipc	a4,0x3
    80002be8:	3ac70713          	addi	a4,a4,940 # 80005f90 <timer_scratch>
    80002bec:	00b7b023          	sd	a1,0(a5)
    80002bf0:	00d70733          	add	a4,a4,a3
    80002bf4:	00f73c23          	sd	a5,24(a4)
    80002bf8:	02c73023          	sd	a2,32(a4)
    80002bfc:	34071073          	csrw	mscratch,a4
    80002c00:	00000797          	auipc	a5,0x0
    80002c04:	6e078793          	addi	a5,a5,1760 # 800032e0 <timervec>
    80002c08:	30579073          	csrw	mtvec,a5
    80002c0c:	300027f3          	csrr	a5,mstatus
    80002c10:	0087e793          	ori	a5,a5,8
    80002c14:	30079073          	csrw	mstatus,a5
    80002c18:	304027f3          	csrr	a5,mie
    80002c1c:	0807e793          	ori	a5,a5,128
    80002c20:	30479073          	csrw	mie,a5
    80002c24:	f14027f3          	csrr	a5,mhartid
    80002c28:	0007879b          	sext.w	a5,a5
    80002c2c:	00078213          	mv	tp,a5
    80002c30:	30200073          	mret
    80002c34:	00813403          	ld	s0,8(sp)
    80002c38:	01010113          	addi	sp,sp,16
    80002c3c:	00008067          	ret

0000000080002c40 <timerinit>:
    80002c40:	ff010113          	addi	sp,sp,-16
    80002c44:	00813423          	sd	s0,8(sp)
    80002c48:	01010413          	addi	s0,sp,16
    80002c4c:	f14027f3          	csrr	a5,mhartid
    80002c50:	0200c737          	lui	a4,0x200c
    80002c54:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002c58:	0007869b          	sext.w	a3,a5
    80002c5c:	00269713          	slli	a4,a3,0x2
    80002c60:	000f4637          	lui	a2,0xf4
    80002c64:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002c68:	00d70733          	add	a4,a4,a3
    80002c6c:	0037979b          	slliw	a5,a5,0x3
    80002c70:	020046b7          	lui	a3,0x2004
    80002c74:	00d787b3          	add	a5,a5,a3
    80002c78:	00c585b3          	add	a1,a1,a2
    80002c7c:	00371693          	slli	a3,a4,0x3
    80002c80:	00003717          	auipc	a4,0x3
    80002c84:	31070713          	addi	a4,a4,784 # 80005f90 <timer_scratch>
    80002c88:	00b7b023          	sd	a1,0(a5)
    80002c8c:	00d70733          	add	a4,a4,a3
    80002c90:	00f73c23          	sd	a5,24(a4)
    80002c94:	02c73023          	sd	a2,32(a4)
    80002c98:	34071073          	csrw	mscratch,a4
    80002c9c:	00000797          	auipc	a5,0x0
    80002ca0:	64478793          	addi	a5,a5,1604 # 800032e0 <timervec>
    80002ca4:	30579073          	csrw	mtvec,a5
    80002ca8:	300027f3          	csrr	a5,mstatus
    80002cac:	0087e793          	ori	a5,a5,8
    80002cb0:	30079073          	csrw	mstatus,a5
    80002cb4:	304027f3          	csrr	a5,mie
    80002cb8:	0807e793          	ori	a5,a5,128
    80002cbc:	30479073          	csrw	mie,a5
    80002cc0:	00813403          	ld	s0,8(sp)
    80002cc4:	01010113          	addi	sp,sp,16
    80002cc8:	00008067          	ret

0000000080002ccc <system_main>:
    80002ccc:	fe010113          	addi	sp,sp,-32
    80002cd0:	00813823          	sd	s0,16(sp)
    80002cd4:	00913423          	sd	s1,8(sp)
    80002cd8:	00113c23          	sd	ra,24(sp)
    80002cdc:	02010413          	addi	s0,sp,32
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	0c4080e7          	jalr	196(ra) # 80002da4 <cpuid>
    80002ce8:	00003497          	auipc	s1,0x3
    80002cec:	24848493          	addi	s1,s1,584 # 80005f30 <started>
    80002cf0:	02050263          	beqz	a0,80002d14 <system_main+0x48>
    80002cf4:	0004a783          	lw	a5,0(s1)
    80002cf8:	0007879b          	sext.w	a5,a5
    80002cfc:	fe078ce3          	beqz	a5,80002cf4 <system_main+0x28>
    80002d00:	0ff0000f          	fence
    80002d04:	00002517          	auipc	a0,0x2
    80002d08:	60450513          	addi	a0,a0,1540 # 80005308 <_ZZ12printIntegermE6digits+0x40>
    80002d0c:	00001097          	auipc	ra,0x1
    80002d10:	a70080e7          	jalr	-1424(ra) # 8000377c <panic>
    80002d14:	00001097          	auipc	ra,0x1
    80002d18:	9c4080e7          	jalr	-1596(ra) # 800036d8 <consoleinit>
    80002d1c:	00001097          	auipc	ra,0x1
    80002d20:	150080e7          	jalr	336(ra) # 80003e6c <printfinit>
    80002d24:	00002517          	auipc	a0,0x2
    80002d28:	48450513          	addi	a0,a0,1156 # 800051a8 <CONSOLE_STATUS+0x198>
    80002d2c:	00001097          	auipc	ra,0x1
    80002d30:	aac080e7          	jalr	-1364(ra) # 800037d8 <__printf>
    80002d34:	00002517          	auipc	a0,0x2
    80002d38:	5a450513          	addi	a0,a0,1444 # 800052d8 <_ZZ12printIntegermE6digits+0x10>
    80002d3c:	00001097          	auipc	ra,0x1
    80002d40:	a9c080e7          	jalr	-1380(ra) # 800037d8 <__printf>
    80002d44:	00002517          	auipc	a0,0x2
    80002d48:	46450513          	addi	a0,a0,1124 # 800051a8 <CONSOLE_STATUS+0x198>
    80002d4c:	00001097          	auipc	ra,0x1
    80002d50:	a8c080e7          	jalr	-1396(ra) # 800037d8 <__printf>
    80002d54:	00001097          	auipc	ra,0x1
    80002d58:	4a4080e7          	jalr	1188(ra) # 800041f8 <kinit>
    80002d5c:	00000097          	auipc	ra,0x0
    80002d60:	148080e7          	jalr	328(ra) # 80002ea4 <trapinit>
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	16c080e7          	jalr	364(ra) # 80002ed0 <trapinithart>
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	5b4080e7          	jalr	1460(ra) # 80003320 <plicinit>
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	5d4080e7          	jalr	1492(ra) # 80003348 <plicinithart>
    80002d7c:	00000097          	auipc	ra,0x0
    80002d80:	078080e7          	jalr	120(ra) # 80002df4 <userinit>
    80002d84:	0ff0000f          	fence
    80002d88:	00100793          	li	a5,1
    80002d8c:	00002517          	auipc	a0,0x2
    80002d90:	56450513          	addi	a0,a0,1380 # 800052f0 <_ZZ12printIntegermE6digits+0x28>
    80002d94:	00f4a023          	sw	a5,0(s1)
    80002d98:	00001097          	auipc	ra,0x1
    80002d9c:	a40080e7          	jalr	-1472(ra) # 800037d8 <__printf>
    80002da0:	0000006f          	j	80002da0 <system_main+0xd4>

0000000080002da4 <cpuid>:
    80002da4:	ff010113          	addi	sp,sp,-16
    80002da8:	00813423          	sd	s0,8(sp)
    80002dac:	01010413          	addi	s0,sp,16
    80002db0:	00020513          	mv	a0,tp
    80002db4:	00813403          	ld	s0,8(sp)
    80002db8:	0005051b          	sext.w	a0,a0
    80002dbc:	01010113          	addi	sp,sp,16
    80002dc0:	00008067          	ret

0000000080002dc4 <mycpu>:
    80002dc4:	ff010113          	addi	sp,sp,-16
    80002dc8:	00813423          	sd	s0,8(sp)
    80002dcc:	01010413          	addi	s0,sp,16
    80002dd0:	00020793          	mv	a5,tp
    80002dd4:	00813403          	ld	s0,8(sp)
    80002dd8:	0007879b          	sext.w	a5,a5
    80002ddc:	00779793          	slli	a5,a5,0x7
    80002de0:	00004517          	auipc	a0,0x4
    80002de4:	1e050513          	addi	a0,a0,480 # 80006fc0 <cpus>
    80002de8:	00f50533          	add	a0,a0,a5
    80002dec:	01010113          	addi	sp,sp,16
    80002df0:	00008067          	ret

0000000080002df4 <userinit>:
    80002df4:	ff010113          	addi	sp,sp,-16
    80002df8:	00813423          	sd	s0,8(sp)
    80002dfc:	01010413          	addi	s0,sp,16
    80002e00:	00813403          	ld	s0,8(sp)
    80002e04:	01010113          	addi	sp,sp,16
    80002e08:	fffff317          	auipc	t1,0xfffff
    80002e0c:	e5430067          	jr	-428(t1) # 80001c5c <main>

0000000080002e10 <either_copyout>:
    80002e10:	ff010113          	addi	sp,sp,-16
    80002e14:	00813023          	sd	s0,0(sp)
    80002e18:	00113423          	sd	ra,8(sp)
    80002e1c:	01010413          	addi	s0,sp,16
    80002e20:	02051663          	bnez	a0,80002e4c <either_copyout+0x3c>
    80002e24:	00058513          	mv	a0,a1
    80002e28:	00060593          	mv	a1,a2
    80002e2c:	0006861b          	sext.w	a2,a3
    80002e30:	00002097          	auipc	ra,0x2
    80002e34:	c54080e7          	jalr	-940(ra) # 80004a84 <__memmove>
    80002e38:	00813083          	ld	ra,8(sp)
    80002e3c:	00013403          	ld	s0,0(sp)
    80002e40:	00000513          	li	a0,0
    80002e44:	01010113          	addi	sp,sp,16
    80002e48:	00008067          	ret
    80002e4c:	00002517          	auipc	a0,0x2
    80002e50:	4e450513          	addi	a0,a0,1252 # 80005330 <_ZZ12printIntegermE6digits+0x68>
    80002e54:	00001097          	auipc	ra,0x1
    80002e58:	928080e7          	jalr	-1752(ra) # 8000377c <panic>

0000000080002e5c <either_copyin>:
    80002e5c:	ff010113          	addi	sp,sp,-16
    80002e60:	00813023          	sd	s0,0(sp)
    80002e64:	00113423          	sd	ra,8(sp)
    80002e68:	01010413          	addi	s0,sp,16
    80002e6c:	02059463          	bnez	a1,80002e94 <either_copyin+0x38>
    80002e70:	00060593          	mv	a1,a2
    80002e74:	0006861b          	sext.w	a2,a3
    80002e78:	00002097          	auipc	ra,0x2
    80002e7c:	c0c080e7          	jalr	-1012(ra) # 80004a84 <__memmove>
    80002e80:	00813083          	ld	ra,8(sp)
    80002e84:	00013403          	ld	s0,0(sp)
    80002e88:	00000513          	li	a0,0
    80002e8c:	01010113          	addi	sp,sp,16
    80002e90:	00008067          	ret
    80002e94:	00002517          	auipc	a0,0x2
    80002e98:	4c450513          	addi	a0,a0,1220 # 80005358 <_ZZ12printIntegermE6digits+0x90>
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	8e0080e7          	jalr	-1824(ra) # 8000377c <panic>

0000000080002ea4 <trapinit>:
    80002ea4:	ff010113          	addi	sp,sp,-16
    80002ea8:	00813423          	sd	s0,8(sp)
    80002eac:	01010413          	addi	s0,sp,16
    80002eb0:	00813403          	ld	s0,8(sp)
    80002eb4:	00002597          	auipc	a1,0x2
    80002eb8:	4cc58593          	addi	a1,a1,1228 # 80005380 <_ZZ12printIntegermE6digits+0xb8>
    80002ebc:	00004517          	auipc	a0,0x4
    80002ec0:	18450513          	addi	a0,a0,388 # 80007040 <tickslock>
    80002ec4:	01010113          	addi	sp,sp,16
    80002ec8:	00001317          	auipc	t1,0x1
    80002ecc:	5c030067          	jr	1472(t1) # 80004488 <initlock>

0000000080002ed0 <trapinithart>:
    80002ed0:	ff010113          	addi	sp,sp,-16
    80002ed4:	00813423          	sd	s0,8(sp)
    80002ed8:	01010413          	addi	s0,sp,16
    80002edc:	00000797          	auipc	a5,0x0
    80002ee0:	2f478793          	addi	a5,a5,756 # 800031d0 <kernelvec>
    80002ee4:	10579073          	csrw	stvec,a5
    80002ee8:	00813403          	ld	s0,8(sp)
    80002eec:	01010113          	addi	sp,sp,16
    80002ef0:	00008067          	ret

0000000080002ef4 <usertrap>:
    80002ef4:	ff010113          	addi	sp,sp,-16
    80002ef8:	00813423          	sd	s0,8(sp)
    80002efc:	01010413          	addi	s0,sp,16
    80002f00:	00813403          	ld	s0,8(sp)
    80002f04:	01010113          	addi	sp,sp,16
    80002f08:	00008067          	ret

0000000080002f0c <usertrapret>:
    80002f0c:	ff010113          	addi	sp,sp,-16
    80002f10:	00813423          	sd	s0,8(sp)
    80002f14:	01010413          	addi	s0,sp,16
    80002f18:	00813403          	ld	s0,8(sp)
    80002f1c:	01010113          	addi	sp,sp,16
    80002f20:	00008067          	ret

0000000080002f24 <kerneltrap>:
    80002f24:	fe010113          	addi	sp,sp,-32
    80002f28:	00813823          	sd	s0,16(sp)
    80002f2c:	00113c23          	sd	ra,24(sp)
    80002f30:	00913423          	sd	s1,8(sp)
    80002f34:	02010413          	addi	s0,sp,32
    80002f38:	142025f3          	csrr	a1,scause
    80002f3c:	100027f3          	csrr	a5,sstatus
    80002f40:	0027f793          	andi	a5,a5,2
    80002f44:	10079c63          	bnez	a5,8000305c <kerneltrap+0x138>
    80002f48:	142027f3          	csrr	a5,scause
    80002f4c:	0207ce63          	bltz	a5,80002f88 <kerneltrap+0x64>
    80002f50:	00002517          	auipc	a0,0x2
    80002f54:	47850513          	addi	a0,a0,1144 # 800053c8 <_ZZ12printIntegermE6digits+0x100>
    80002f58:	00001097          	auipc	ra,0x1
    80002f5c:	880080e7          	jalr	-1920(ra) # 800037d8 <__printf>
    80002f60:	141025f3          	csrr	a1,sepc
    80002f64:	14302673          	csrr	a2,stval
    80002f68:	00002517          	auipc	a0,0x2
    80002f6c:	47050513          	addi	a0,a0,1136 # 800053d8 <_ZZ12printIntegermE6digits+0x110>
    80002f70:	00001097          	auipc	ra,0x1
    80002f74:	868080e7          	jalr	-1944(ra) # 800037d8 <__printf>
    80002f78:	00002517          	auipc	a0,0x2
    80002f7c:	47850513          	addi	a0,a0,1144 # 800053f0 <_ZZ12printIntegermE6digits+0x128>
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	7fc080e7          	jalr	2044(ra) # 8000377c <panic>
    80002f88:	0ff7f713          	andi	a4,a5,255
    80002f8c:	00900693          	li	a3,9
    80002f90:	04d70063          	beq	a4,a3,80002fd0 <kerneltrap+0xac>
    80002f94:	fff00713          	li	a4,-1
    80002f98:	03f71713          	slli	a4,a4,0x3f
    80002f9c:	00170713          	addi	a4,a4,1
    80002fa0:	fae798e3          	bne	a5,a4,80002f50 <kerneltrap+0x2c>
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	e00080e7          	jalr	-512(ra) # 80002da4 <cpuid>
    80002fac:	06050663          	beqz	a0,80003018 <kerneltrap+0xf4>
    80002fb0:	144027f3          	csrr	a5,sip
    80002fb4:	ffd7f793          	andi	a5,a5,-3
    80002fb8:	14479073          	csrw	sip,a5
    80002fbc:	01813083          	ld	ra,24(sp)
    80002fc0:	01013403          	ld	s0,16(sp)
    80002fc4:	00813483          	ld	s1,8(sp)
    80002fc8:	02010113          	addi	sp,sp,32
    80002fcc:	00008067          	ret
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	3c4080e7          	jalr	964(ra) # 80003394 <plic_claim>
    80002fd8:	00a00793          	li	a5,10
    80002fdc:	00050493          	mv	s1,a0
    80002fe0:	06f50863          	beq	a0,a5,80003050 <kerneltrap+0x12c>
    80002fe4:	fc050ce3          	beqz	a0,80002fbc <kerneltrap+0x98>
    80002fe8:	00050593          	mv	a1,a0
    80002fec:	00002517          	auipc	a0,0x2
    80002ff0:	3bc50513          	addi	a0,a0,956 # 800053a8 <_ZZ12printIntegermE6digits+0xe0>
    80002ff4:	00000097          	auipc	ra,0x0
    80002ff8:	7e4080e7          	jalr	2020(ra) # 800037d8 <__printf>
    80002ffc:	01013403          	ld	s0,16(sp)
    80003000:	01813083          	ld	ra,24(sp)
    80003004:	00048513          	mv	a0,s1
    80003008:	00813483          	ld	s1,8(sp)
    8000300c:	02010113          	addi	sp,sp,32
    80003010:	00000317          	auipc	t1,0x0
    80003014:	3bc30067          	jr	956(t1) # 800033cc <plic_complete>
    80003018:	00004517          	auipc	a0,0x4
    8000301c:	02850513          	addi	a0,a0,40 # 80007040 <tickslock>
    80003020:	00001097          	auipc	ra,0x1
    80003024:	48c080e7          	jalr	1164(ra) # 800044ac <acquire>
    80003028:	00003717          	auipc	a4,0x3
    8000302c:	f0c70713          	addi	a4,a4,-244 # 80005f34 <ticks>
    80003030:	00072783          	lw	a5,0(a4)
    80003034:	00004517          	auipc	a0,0x4
    80003038:	00c50513          	addi	a0,a0,12 # 80007040 <tickslock>
    8000303c:	0017879b          	addiw	a5,a5,1
    80003040:	00f72023          	sw	a5,0(a4)
    80003044:	00001097          	auipc	ra,0x1
    80003048:	534080e7          	jalr	1332(ra) # 80004578 <release>
    8000304c:	f65ff06f          	j	80002fb0 <kerneltrap+0x8c>
    80003050:	00001097          	auipc	ra,0x1
    80003054:	090080e7          	jalr	144(ra) # 800040e0 <uartintr>
    80003058:	fa5ff06f          	j	80002ffc <kerneltrap+0xd8>
    8000305c:	00002517          	auipc	a0,0x2
    80003060:	32c50513          	addi	a0,a0,812 # 80005388 <_ZZ12printIntegermE6digits+0xc0>
    80003064:	00000097          	auipc	ra,0x0
    80003068:	718080e7          	jalr	1816(ra) # 8000377c <panic>

000000008000306c <clockintr>:
    8000306c:	fe010113          	addi	sp,sp,-32
    80003070:	00813823          	sd	s0,16(sp)
    80003074:	00913423          	sd	s1,8(sp)
    80003078:	00113c23          	sd	ra,24(sp)
    8000307c:	02010413          	addi	s0,sp,32
    80003080:	00004497          	auipc	s1,0x4
    80003084:	fc048493          	addi	s1,s1,-64 # 80007040 <tickslock>
    80003088:	00048513          	mv	a0,s1
    8000308c:	00001097          	auipc	ra,0x1
    80003090:	420080e7          	jalr	1056(ra) # 800044ac <acquire>
    80003094:	00003717          	auipc	a4,0x3
    80003098:	ea070713          	addi	a4,a4,-352 # 80005f34 <ticks>
    8000309c:	00072783          	lw	a5,0(a4)
    800030a0:	01013403          	ld	s0,16(sp)
    800030a4:	01813083          	ld	ra,24(sp)
    800030a8:	00048513          	mv	a0,s1
    800030ac:	0017879b          	addiw	a5,a5,1
    800030b0:	00813483          	ld	s1,8(sp)
    800030b4:	00f72023          	sw	a5,0(a4)
    800030b8:	02010113          	addi	sp,sp,32
    800030bc:	00001317          	auipc	t1,0x1
    800030c0:	4bc30067          	jr	1212(t1) # 80004578 <release>

00000000800030c4 <devintr>:
    800030c4:	142027f3          	csrr	a5,scause
    800030c8:	00000513          	li	a0,0
    800030cc:	0007c463          	bltz	a5,800030d4 <devintr+0x10>
    800030d0:	00008067          	ret
    800030d4:	fe010113          	addi	sp,sp,-32
    800030d8:	00813823          	sd	s0,16(sp)
    800030dc:	00113c23          	sd	ra,24(sp)
    800030e0:	00913423          	sd	s1,8(sp)
    800030e4:	02010413          	addi	s0,sp,32
    800030e8:	0ff7f713          	andi	a4,a5,255
    800030ec:	00900693          	li	a3,9
    800030f0:	04d70c63          	beq	a4,a3,80003148 <devintr+0x84>
    800030f4:	fff00713          	li	a4,-1
    800030f8:	03f71713          	slli	a4,a4,0x3f
    800030fc:	00170713          	addi	a4,a4,1
    80003100:	00e78c63          	beq	a5,a4,80003118 <devintr+0x54>
    80003104:	01813083          	ld	ra,24(sp)
    80003108:	01013403          	ld	s0,16(sp)
    8000310c:	00813483          	ld	s1,8(sp)
    80003110:	02010113          	addi	sp,sp,32
    80003114:	00008067          	ret
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	c8c080e7          	jalr	-884(ra) # 80002da4 <cpuid>
    80003120:	06050663          	beqz	a0,8000318c <devintr+0xc8>
    80003124:	144027f3          	csrr	a5,sip
    80003128:	ffd7f793          	andi	a5,a5,-3
    8000312c:	14479073          	csrw	sip,a5
    80003130:	01813083          	ld	ra,24(sp)
    80003134:	01013403          	ld	s0,16(sp)
    80003138:	00813483          	ld	s1,8(sp)
    8000313c:	00200513          	li	a0,2
    80003140:	02010113          	addi	sp,sp,32
    80003144:	00008067          	ret
    80003148:	00000097          	auipc	ra,0x0
    8000314c:	24c080e7          	jalr	588(ra) # 80003394 <plic_claim>
    80003150:	00a00793          	li	a5,10
    80003154:	00050493          	mv	s1,a0
    80003158:	06f50663          	beq	a0,a5,800031c4 <devintr+0x100>
    8000315c:	00100513          	li	a0,1
    80003160:	fa0482e3          	beqz	s1,80003104 <devintr+0x40>
    80003164:	00048593          	mv	a1,s1
    80003168:	00002517          	auipc	a0,0x2
    8000316c:	24050513          	addi	a0,a0,576 # 800053a8 <_ZZ12printIntegermE6digits+0xe0>
    80003170:	00000097          	auipc	ra,0x0
    80003174:	668080e7          	jalr	1640(ra) # 800037d8 <__printf>
    80003178:	00048513          	mv	a0,s1
    8000317c:	00000097          	auipc	ra,0x0
    80003180:	250080e7          	jalr	592(ra) # 800033cc <plic_complete>
    80003184:	00100513          	li	a0,1
    80003188:	f7dff06f          	j	80003104 <devintr+0x40>
    8000318c:	00004517          	auipc	a0,0x4
    80003190:	eb450513          	addi	a0,a0,-332 # 80007040 <tickslock>
    80003194:	00001097          	auipc	ra,0x1
    80003198:	318080e7          	jalr	792(ra) # 800044ac <acquire>
    8000319c:	00003717          	auipc	a4,0x3
    800031a0:	d9870713          	addi	a4,a4,-616 # 80005f34 <ticks>
    800031a4:	00072783          	lw	a5,0(a4)
    800031a8:	00004517          	auipc	a0,0x4
    800031ac:	e9850513          	addi	a0,a0,-360 # 80007040 <tickslock>
    800031b0:	0017879b          	addiw	a5,a5,1
    800031b4:	00f72023          	sw	a5,0(a4)
    800031b8:	00001097          	auipc	ra,0x1
    800031bc:	3c0080e7          	jalr	960(ra) # 80004578 <release>
    800031c0:	f65ff06f          	j	80003124 <devintr+0x60>
    800031c4:	00001097          	auipc	ra,0x1
    800031c8:	f1c080e7          	jalr	-228(ra) # 800040e0 <uartintr>
    800031cc:	fadff06f          	j	80003178 <devintr+0xb4>

00000000800031d0 <kernelvec>:
    800031d0:	f0010113          	addi	sp,sp,-256
    800031d4:	00113023          	sd	ra,0(sp)
    800031d8:	00213423          	sd	sp,8(sp)
    800031dc:	00313823          	sd	gp,16(sp)
    800031e0:	00413c23          	sd	tp,24(sp)
    800031e4:	02513023          	sd	t0,32(sp)
    800031e8:	02613423          	sd	t1,40(sp)
    800031ec:	02713823          	sd	t2,48(sp)
    800031f0:	02813c23          	sd	s0,56(sp)
    800031f4:	04913023          	sd	s1,64(sp)
    800031f8:	04a13423          	sd	a0,72(sp)
    800031fc:	04b13823          	sd	a1,80(sp)
    80003200:	04c13c23          	sd	a2,88(sp)
    80003204:	06d13023          	sd	a3,96(sp)
    80003208:	06e13423          	sd	a4,104(sp)
    8000320c:	06f13823          	sd	a5,112(sp)
    80003210:	07013c23          	sd	a6,120(sp)
    80003214:	09113023          	sd	a7,128(sp)
    80003218:	09213423          	sd	s2,136(sp)
    8000321c:	09313823          	sd	s3,144(sp)
    80003220:	09413c23          	sd	s4,152(sp)
    80003224:	0b513023          	sd	s5,160(sp)
    80003228:	0b613423          	sd	s6,168(sp)
    8000322c:	0b713823          	sd	s7,176(sp)
    80003230:	0b813c23          	sd	s8,184(sp)
    80003234:	0d913023          	sd	s9,192(sp)
    80003238:	0da13423          	sd	s10,200(sp)
    8000323c:	0db13823          	sd	s11,208(sp)
    80003240:	0dc13c23          	sd	t3,216(sp)
    80003244:	0fd13023          	sd	t4,224(sp)
    80003248:	0fe13423          	sd	t5,232(sp)
    8000324c:	0ff13823          	sd	t6,240(sp)
    80003250:	cd5ff0ef          	jal	ra,80002f24 <kerneltrap>
    80003254:	00013083          	ld	ra,0(sp)
    80003258:	00813103          	ld	sp,8(sp)
    8000325c:	01013183          	ld	gp,16(sp)
    80003260:	02013283          	ld	t0,32(sp)
    80003264:	02813303          	ld	t1,40(sp)
    80003268:	03013383          	ld	t2,48(sp)
    8000326c:	03813403          	ld	s0,56(sp)
    80003270:	04013483          	ld	s1,64(sp)
    80003274:	04813503          	ld	a0,72(sp)
    80003278:	05013583          	ld	a1,80(sp)
    8000327c:	05813603          	ld	a2,88(sp)
    80003280:	06013683          	ld	a3,96(sp)
    80003284:	06813703          	ld	a4,104(sp)
    80003288:	07013783          	ld	a5,112(sp)
    8000328c:	07813803          	ld	a6,120(sp)
    80003290:	08013883          	ld	a7,128(sp)
    80003294:	08813903          	ld	s2,136(sp)
    80003298:	09013983          	ld	s3,144(sp)
    8000329c:	09813a03          	ld	s4,152(sp)
    800032a0:	0a013a83          	ld	s5,160(sp)
    800032a4:	0a813b03          	ld	s6,168(sp)
    800032a8:	0b013b83          	ld	s7,176(sp)
    800032ac:	0b813c03          	ld	s8,184(sp)
    800032b0:	0c013c83          	ld	s9,192(sp)
    800032b4:	0c813d03          	ld	s10,200(sp)
    800032b8:	0d013d83          	ld	s11,208(sp)
    800032bc:	0d813e03          	ld	t3,216(sp)
    800032c0:	0e013e83          	ld	t4,224(sp)
    800032c4:	0e813f03          	ld	t5,232(sp)
    800032c8:	0f013f83          	ld	t6,240(sp)
    800032cc:	10010113          	addi	sp,sp,256
    800032d0:	10200073          	sret
    800032d4:	00000013          	nop
    800032d8:	00000013          	nop
    800032dc:	00000013          	nop

00000000800032e0 <timervec>:
    800032e0:	34051573          	csrrw	a0,mscratch,a0
    800032e4:	00b53023          	sd	a1,0(a0)
    800032e8:	00c53423          	sd	a2,8(a0)
    800032ec:	00d53823          	sd	a3,16(a0)
    800032f0:	01853583          	ld	a1,24(a0)
    800032f4:	02053603          	ld	a2,32(a0)
    800032f8:	0005b683          	ld	a3,0(a1)
    800032fc:	00c686b3          	add	a3,a3,a2
    80003300:	00d5b023          	sd	a3,0(a1)
    80003304:	00200593          	li	a1,2
    80003308:	14459073          	csrw	sip,a1
    8000330c:	01053683          	ld	a3,16(a0)
    80003310:	00853603          	ld	a2,8(a0)
    80003314:	00053583          	ld	a1,0(a0)
    80003318:	34051573          	csrrw	a0,mscratch,a0
    8000331c:	30200073          	mret

0000000080003320 <plicinit>:
    80003320:	ff010113          	addi	sp,sp,-16
    80003324:	00813423          	sd	s0,8(sp)
    80003328:	01010413          	addi	s0,sp,16
    8000332c:	00813403          	ld	s0,8(sp)
    80003330:	0c0007b7          	lui	a5,0xc000
    80003334:	00100713          	li	a4,1
    80003338:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000333c:	00e7a223          	sw	a4,4(a5)
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret

0000000080003348 <plicinithart>:
    80003348:	ff010113          	addi	sp,sp,-16
    8000334c:	00813023          	sd	s0,0(sp)
    80003350:	00113423          	sd	ra,8(sp)
    80003354:	01010413          	addi	s0,sp,16
    80003358:	00000097          	auipc	ra,0x0
    8000335c:	a4c080e7          	jalr	-1460(ra) # 80002da4 <cpuid>
    80003360:	0085171b          	slliw	a4,a0,0x8
    80003364:	0c0027b7          	lui	a5,0xc002
    80003368:	00e787b3          	add	a5,a5,a4
    8000336c:	40200713          	li	a4,1026
    80003370:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003374:	00813083          	ld	ra,8(sp)
    80003378:	00013403          	ld	s0,0(sp)
    8000337c:	00d5151b          	slliw	a0,a0,0xd
    80003380:	0c2017b7          	lui	a5,0xc201
    80003384:	00a78533          	add	a0,a5,a0
    80003388:	00052023          	sw	zero,0(a0)
    8000338c:	01010113          	addi	sp,sp,16
    80003390:	00008067          	ret

0000000080003394 <plic_claim>:
    80003394:	ff010113          	addi	sp,sp,-16
    80003398:	00813023          	sd	s0,0(sp)
    8000339c:	00113423          	sd	ra,8(sp)
    800033a0:	01010413          	addi	s0,sp,16
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	a00080e7          	jalr	-1536(ra) # 80002da4 <cpuid>
    800033ac:	00813083          	ld	ra,8(sp)
    800033b0:	00013403          	ld	s0,0(sp)
    800033b4:	00d5151b          	slliw	a0,a0,0xd
    800033b8:	0c2017b7          	lui	a5,0xc201
    800033bc:	00a78533          	add	a0,a5,a0
    800033c0:	00452503          	lw	a0,4(a0)
    800033c4:	01010113          	addi	sp,sp,16
    800033c8:	00008067          	ret

00000000800033cc <plic_complete>:
    800033cc:	fe010113          	addi	sp,sp,-32
    800033d0:	00813823          	sd	s0,16(sp)
    800033d4:	00913423          	sd	s1,8(sp)
    800033d8:	00113c23          	sd	ra,24(sp)
    800033dc:	02010413          	addi	s0,sp,32
    800033e0:	00050493          	mv	s1,a0
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	9c0080e7          	jalr	-1600(ra) # 80002da4 <cpuid>
    800033ec:	01813083          	ld	ra,24(sp)
    800033f0:	01013403          	ld	s0,16(sp)
    800033f4:	00d5179b          	slliw	a5,a0,0xd
    800033f8:	0c201737          	lui	a4,0xc201
    800033fc:	00f707b3          	add	a5,a4,a5
    80003400:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003404:	00813483          	ld	s1,8(sp)
    80003408:	02010113          	addi	sp,sp,32
    8000340c:	00008067          	ret

0000000080003410 <consolewrite>:
    80003410:	fb010113          	addi	sp,sp,-80
    80003414:	04813023          	sd	s0,64(sp)
    80003418:	04113423          	sd	ra,72(sp)
    8000341c:	02913c23          	sd	s1,56(sp)
    80003420:	03213823          	sd	s2,48(sp)
    80003424:	03313423          	sd	s3,40(sp)
    80003428:	03413023          	sd	s4,32(sp)
    8000342c:	01513c23          	sd	s5,24(sp)
    80003430:	05010413          	addi	s0,sp,80
    80003434:	06c05c63          	blez	a2,800034ac <consolewrite+0x9c>
    80003438:	00060993          	mv	s3,a2
    8000343c:	00050a13          	mv	s4,a0
    80003440:	00058493          	mv	s1,a1
    80003444:	00000913          	li	s2,0
    80003448:	fff00a93          	li	s5,-1
    8000344c:	01c0006f          	j	80003468 <consolewrite+0x58>
    80003450:	fbf44503          	lbu	a0,-65(s0)
    80003454:	0019091b          	addiw	s2,s2,1
    80003458:	00148493          	addi	s1,s1,1
    8000345c:	00001097          	auipc	ra,0x1
    80003460:	a9c080e7          	jalr	-1380(ra) # 80003ef8 <uartputc>
    80003464:	03298063          	beq	s3,s2,80003484 <consolewrite+0x74>
    80003468:	00048613          	mv	a2,s1
    8000346c:	00100693          	li	a3,1
    80003470:	000a0593          	mv	a1,s4
    80003474:	fbf40513          	addi	a0,s0,-65
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	9e4080e7          	jalr	-1564(ra) # 80002e5c <either_copyin>
    80003480:	fd5518e3          	bne	a0,s5,80003450 <consolewrite+0x40>
    80003484:	04813083          	ld	ra,72(sp)
    80003488:	04013403          	ld	s0,64(sp)
    8000348c:	03813483          	ld	s1,56(sp)
    80003490:	02813983          	ld	s3,40(sp)
    80003494:	02013a03          	ld	s4,32(sp)
    80003498:	01813a83          	ld	s5,24(sp)
    8000349c:	00090513          	mv	a0,s2
    800034a0:	03013903          	ld	s2,48(sp)
    800034a4:	05010113          	addi	sp,sp,80
    800034a8:	00008067          	ret
    800034ac:	00000913          	li	s2,0
    800034b0:	fd5ff06f          	j	80003484 <consolewrite+0x74>

00000000800034b4 <consoleread>:
    800034b4:	f9010113          	addi	sp,sp,-112
    800034b8:	06813023          	sd	s0,96(sp)
    800034bc:	04913c23          	sd	s1,88(sp)
    800034c0:	05213823          	sd	s2,80(sp)
    800034c4:	05313423          	sd	s3,72(sp)
    800034c8:	05413023          	sd	s4,64(sp)
    800034cc:	03513c23          	sd	s5,56(sp)
    800034d0:	03613823          	sd	s6,48(sp)
    800034d4:	03713423          	sd	s7,40(sp)
    800034d8:	03813023          	sd	s8,32(sp)
    800034dc:	06113423          	sd	ra,104(sp)
    800034e0:	01913c23          	sd	s9,24(sp)
    800034e4:	07010413          	addi	s0,sp,112
    800034e8:	00060b93          	mv	s7,a2
    800034ec:	00050913          	mv	s2,a0
    800034f0:	00058c13          	mv	s8,a1
    800034f4:	00060b1b          	sext.w	s6,a2
    800034f8:	00004497          	auipc	s1,0x4
    800034fc:	b7048493          	addi	s1,s1,-1168 # 80007068 <cons>
    80003500:	00400993          	li	s3,4
    80003504:	fff00a13          	li	s4,-1
    80003508:	00a00a93          	li	s5,10
    8000350c:	05705e63          	blez	s7,80003568 <consoleread+0xb4>
    80003510:	09c4a703          	lw	a4,156(s1)
    80003514:	0984a783          	lw	a5,152(s1)
    80003518:	0007071b          	sext.w	a4,a4
    8000351c:	08e78463          	beq	a5,a4,800035a4 <consoleread+0xf0>
    80003520:	07f7f713          	andi	a4,a5,127
    80003524:	00e48733          	add	a4,s1,a4
    80003528:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000352c:	0017869b          	addiw	a3,a5,1
    80003530:	08d4ac23          	sw	a3,152(s1)
    80003534:	00070c9b          	sext.w	s9,a4
    80003538:	0b370663          	beq	a4,s3,800035e4 <consoleread+0x130>
    8000353c:	00100693          	li	a3,1
    80003540:	f9f40613          	addi	a2,s0,-97
    80003544:	000c0593          	mv	a1,s8
    80003548:	00090513          	mv	a0,s2
    8000354c:	f8e40fa3          	sb	a4,-97(s0)
    80003550:	00000097          	auipc	ra,0x0
    80003554:	8c0080e7          	jalr	-1856(ra) # 80002e10 <either_copyout>
    80003558:	01450863          	beq	a0,s4,80003568 <consoleread+0xb4>
    8000355c:	001c0c13          	addi	s8,s8,1
    80003560:	fffb8b9b          	addiw	s7,s7,-1
    80003564:	fb5c94e3          	bne	s9,s5,8000350c <consoleread+0x58>
    80003568:	000b851b          	sext.w	a0,s7
    8000356c:	06813083          	ld	ra,104(sp)
    80003570:	06013403          	ld	s0,96(sp)
    80003574:	05813483          	ld	s1,88(sp)
    80003578:	05013903          	ld	s2,80(sp)
    8000357c:	04813983          	ld	s3,72(sp)
    80003580:	04013a03          	ld	s4,64(sp)
    80003584:	03813a83          	ld	s5,56(sp)
    80003588:	02813b83          	ld	s7,40(sp)
    8000358c:	02013c03          	ld	s8,32(sp)
    80003590:	01813c83          	ld	s9,24(sp)
    80003594:	40ab053b          	subw	a0,s6,a0
    80003598:	03013b03          	ld	s6,48(sp)
    8000359c:	07010113          	addi	sp,sp,112
    800035a0:	00008067          	ret
    800035a4:	00001097          	auipc	ra,0x1
    800035a8:	1d8080e7          	jalr	472(ra) # 8000477c <push_on>
    800035ac:	0984a703          	lw	a4,152(s1)
    800035b0:	09c4a783          	lw	a5,156(s1)
    800035b4:	0007879b          	sext.w	a5,a5
    800035b8:	fef70ce3          	beq	a4,a5,800035b0 <consoleread+0xfc>
    800035bc:	00001097          	auipc	ra,0x1
    800035c0:	234080e7          	jalr	564(ra) # 800047f0 <pop_on>
    800035c4:	0984a783          	lw	a5,152(s1)
    800035c8:	07f7f713          	andi	a4,a5,127
    800035cc:	00e48733          	add	a4,s1,a4
    800035d0:	01874703          	lbu	a4,24(a4)
    800035d4:	0017869b          	addiw	a3,a5,1
    800035d8:	08d4ac23          	sw	a3,152(s1)
    800035dc:	00070c9b          	sext.w	s9,a4
    800035e0:	f5371ee3          	bne	a4,s3,8000353c <consoleread+0x88>
    800035e4:	000b851b          	sext.w	a0,s7
    800035e8:	f96bf2e3          	bgeu	s7,s6,8000356c <consoleread+0xb8>
    800035ec:	08f4ac23          	sw	a5,152(s1)
    800035f0:	f7dff06f          	j	8000356c <consoleread+0xb8>

00000000800035f4 <consputc>:
    800035f4:	10000793          	li	a5,256
    800035f8:	00f50663          	beq	a0,a5,80003604 <consputc+0x10>
    800035fc:	00001317          	auipc	t1,0x1
    80003600:	9f430067          	jr	-1548(t1) # 80003ff0 <uartputc_sync>
    80003604:	ff010113          	addi	sp,sp,-16
    80003608:	00113423          	sd	ra,8(sp)
    8000360c:	00813023          	sd	s0,0(sp)
    80003610:	01010413          	addi	s0,sp,16
    80003614:	00800513          	li	a0,8
    80003618:	00001097          	auipc	ra,0x1
    8000361c:	9d8080e7          	jalr	-1576(ra) # 80003ff0 <uartputc_sync>
    80003620:	02000513          	li	a0,32
    80003624:	00001097          	auipc	ra,0x1
    80003628:	9cc080e7          	jalr	-1588(ra) # 80003ff0 <uartputc_sync>
    8000362c:	00013403          	ld	s0,0(sp)
    80003630:	00813083          	ld	ra,8(sp)
    80003634:	00800513          	li	a0,8
    80003638:	01010113          	addi	sp,sp,16
    8000363c:	00001317          	auipc	t1,0x1
    80003640:	9b430067          	jr	-1612(t1) # 80003ff0 <uartputc_sync>

0000000080003644 <consoleintr>:
    80003644:	fe010113          	addi	sp,sp,-32
    80003648:	00813823          	sd	s0,16(sp)
    8000364c:	00913423          	sd	s1,8(sp)
    80003650:	01213023          	sd	s2,0(sp)
    80003654:	00113c23          	sd	ra,24(sp)
    80003658:	02010413          	addi	s0,sp,32
    8000365c:	00004917          	auipc	s2,0x4
    80003660:	a0c90913          	addi	s2,s2,-1524 # 80007068 <cons>
    80003664:	00050493          	mv	s1,a0
    80003668:	00090513          	mv	a0,s2
    8000366c:	00001097          	auipc	ra,0x1
    80003670:	e40080e7          	jalr	-448(ra) # 800044ac <acquire>
    80003674:	02048c63          	beqz	s1,800036ac <consoleintr+0x68>
    80003678:	0a092783          	lw	a5,160(s2)
    8000367c:	09892703          	lw	a4,152(s2)
    80003680:	07f00693          	li	a3,127
    80003684:	40e7873b          	subw	a4,a5,a4
    80003688:	02e6e263          	bltu	a3,a4,800036ac <consoleintr+0x68>
    8000368c:	00d00713          	li	a4,13
    80003690:	04e48063          	beq	s1,a4,800036d0 <consoleintr+0x8c>
    80003694:	07f7f713          	andi	a4,a5,127
    80003698:	00e90733          	add	a4,s2,a4
    8000369c:	0017879b          	addiw	a5,a5,1
    800036a0:	0af92023          	sw	a5,160(s2)
    800036a4:	00970c23          	sb	s1,24(a4)
    800036a8:	08f92e23          	sw	a5,156(s2)
    800036ac:	01013403          	ld	s0,16(sp)
    800036b0:	01813083          	ld	ra,24(sp)
    800036b4:	00813483          	ld	s1,8(sp)
    800036b8:	00013903          	ld	s2,0(sp)
    800036bc:	00004517          	auipc	a0,0x4
    800036c0:	9ac50513          	addi	a0,a0,-1620 # 80007068 <cons>
    800036c4:	02010113          	addi	sp,sp,32
    800036c8:	00001317          	auipc	t1,0x1
    800036cc:	eb030067          	jr	-336(t1) # 80004578 <release>
    800036d0:	00a00493          	li	s1,10
    800036d4:	fc1ff06f          	j	80003694 <consoleintr+0x50>

00000000800036d8 <consoleinit>:
    800036d8:	fe010113          	addi	sp,sp,-32
    800036dc:	00113c23          	sd	ra,24(sp)
    800036e0:	00813823          	sd	s0,16(sp)
    800036e4:	00913423          	sd	s1,8(sp)
    800036e8:	02010413          	addi	s0,sp,32
    800036ec:	00004497          	auipc	s1,0x4
    800036f0:	97c48493          	addi	s1,s1,-1668 # 80007068 <cons>
    800036f4:	00048513          	mv	a0,s1
    800036f8:	00002597          	auipc	a1,0x2
    800036fc:	d0858593          	addi	a1,a1,-760 # 80005400 <_ZZ12printIntegermE6digits+0x138>
    80003700:	00001097          	auipc	ra,0x1
    80003704:	d88080e7          	jalr	-632(ra) # 80004488 <initlock>
    80003708:	00000097          	auipc	ra,0x0
    8000370c:	7ac080e7          	jalr	1964(ra) # 80003eb4 <uartinit>
    80003710:	01813083          	ld	ra,24(sp)
    80003714:	01013403          	ld	s0,16(sp)
    80003718:	00000797          	auipc	a5,0x0
    8000371c:	d9c78793          	addi	a5,a5,-612 # 800034b4 <consoleread>
    80003720:	0af4bc23          	sd	a5,184(s1)
    80003724:	00000797          	auipc	a5,0x0
    80003728:	cec78793          	addi	a5,a5,-788 # 80003410 <consolewrite>
    8000372c:	0cf4b023          	sd	a5,192(s1)
    80003730:	00813483          	ld	s1,8(sp)
    80003734:	02010113          	addi	sp,sp,32
    80003738:	00008067          	ret

000000008000373c <console_read>:
    8000373c:	ff010113          	addi	sp,sp,-16
    80003740:	00813423          	sd	s0,8(sp)
    80003744:	01010413          	addi	s0,sp,16
    80003748:	00813403          	ld	s0,8(sp)
    8000374c:	00004317          	auipc	t1,0x4
    80003750:	9d433303          	ld	t1,-1580(t1) # 80007120 <devsw+0x10>
    80003754:	01010113          	addi	sp,sp,16
    80003758:	00030067          	jr	t1

000000008000375c <console_write>:
    8000375c:	ff010113          	addi	sp,sp,-16
    80003760:	00813423          	sd	s0,8(sp)
    80003764:	01010413          	addi	s0,sp,16
    80003768:	00813403          	ld	s0,8(sp)
    8000376c:	00004317          	auipc	t1,0x4
    80003770:	9bc33303          	ld	t1,-1604(t1) # 80007128 <devsw+0x18>
    80003774:	01010113          	addi	sp,sp,16
    80003778:	00030067          	jr	t1

000000008000377c <panic>:
    8000377c:	fe010113          	addi	sp,sp,-32
    80003780:	00113c23          	sd	ra,24(sp)
    80003784:	00813823          	sd	s0,16(sp)
    80003788:	00913423          	sd	s1,8(sp)
    8000378c:	02010413          	addi	s0,sp,32
    80003790:	00050493          	mv	s1,a0
    80003794:	00002517          	auipc	a0,0x2
    80003798:	c7450513          	addi	a0,a0,-908 # 80005408 <_ZZ12printIntegermE6digits+0x140>
    8000379c:	00004797          	auipc	a5,0x4
    800037a0:	a207a623          	sw	zero,-1492(a5) # 800071c8 <pr+0x18>
    800037a4:	00000097          	auipc	ra,0x0
    800037a8:	034080e7          	jalr	52(ra) # 800037d8 <__printf>
    800037ac:	00048513          	mv	a0,s1
    800037b0:	00000097          	auipc	ra,0x0
    800037b4:	028080e7          	jalr	40(ra) # 800037d8 <__printf>
    800037b8:	00002517          	auipc	a0,0x2
    800037bc:	9f050513          	addi	a0,a0,-1552 # 800051a8 <CONSOLE_STATUS+0x198>
    800037c0:	00000097          	auipc	ra,0x0
    800037c4:	018080e7          	jalr	24(ra) # 800037d8 <__printf>
    800037c8:	00100793          	li	a5,1
    800037cc:	00002717          	auipc	a4,0x2
    800037d0:	76f72623          	sw	a5,1900(a4) # 80005f38 <panicked>
    800037d4:	0000006f          	j	800037d4 <panic+0x58>

00000000800037d8 <__printf>:
    800037d8:	f3010113          	addi	sp,sp,-208
    800037dc:	08813023          	sd	s0,128(sp)
    800037e0:	07313423          	sd	s3,104(sp)
    800037e4:	09010413          	addi	s0,sp,144
    800037e8:	05813023          	sd	s8,64(sp)
    800037ec:	08113423          	sd	ra,136(sp)
    800037f0:	06913c23          	sd	s1,120(sp)
    800037f4:	07213823          	sd	s2,112(sp)
    800037f8:	07413023          	sd	s4,96(sp)
    800037fc:	05513c23          	sd	s5,88(sp)
    80003800:	05613823          	sd	s6,80(sp)
    80003804:	05713423          	sd	s7,72(sp)
    80003808:	03913c23          	sd	s9,56(sp)
    8000380c:	03a13823          	sd	s10,48(sp)
    80003810:	03b13423          	sd	s11,40(sp)
    80003814:	00004317          	auipc	t1,0x4
    80003818:	99c30313          	addi	t1,t1,-1636 # 800071b0 <pr>
    8000381c:	01832c03          	lw	s8,24(t1)
    80003820:	00b43423          	sd	a1,8(s0)
    80003824:	00c43823          	sd	a2,16(s0)
    80003828:	00d43c23          	sd	a3,24(s0)
    8000382c:	02e43023          	sd	a4,32(s0)
    80003830:	02f43423          	sd	a5,40(s0)
    80003834:	03043823          	sd	a6,48(s0)
    80003838:	03143c23          	sd	a7,56(s0)
    8000383c:	00050993          	mv	s3,a0
    80003840:	4a0c1663          	bnez	s8,80003cec <__printf+0x514>
    80003844:	60098c63          	beqz	s3,80003e5c <__printf+0x684>
    80003848:	0009c503          	lbu	a0,0(s3)
    8000384c:	00840793          	addi	a5,s0,8
    80003850:	f6f43c23          	sd	a5,-136(s0)
    80003854:	00000493          	li	s1,0
    80003858:	22050063          	beqz	a0,80003a78 <__printf+0x2a0>
    8000385c:	00002a37          	lui	s4,0x2
    80003860:	00018ab7          	lui	s5,0x18
    80003864:	000f4b37          	lui	s6,0xf4
    80003868:	00989bb7          	lui	s7,0x989
    8000386c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003870:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003874:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003878:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000387c:	00148c9b          	addiw	s9,s1,1
    80003880:	02500793          	li	a5,37
    80003884:	01998933          	add	s2,s3,s9
    80003888:	38f51263          	bne	a0,a5,80003c0c <__printf+0x434>
    8000388c:	00094783          	lbu	a5,0(s2)
    80003890:	00078c9b          	sext.w	s9,a5
    80003894:	1e078263          	beqz	a5,80003a78 <__printf+0x2a0>
    80003898:	0024849b          	addiw	s1,s1,2
    8000389c:	07000713          	li	a4,112
    800038a0:	00998933          	add	s2,s3,s1
    800038a4:	38e78a63          	beq	a5,a4,80003c38 <__printf+0x460>
    800038a8:	20f76863          	bltu	a4,a5,80003ab8 <__printf+0x2e0>
    800038ac:	42a78863          	beq	a5,a0,80003cdc <__printf+0x504>
    800038b0:	06400713          	li	a4,100
    800038b4:	40e79663          	bne	a5,a4,80003cc0 <__printf+0x4e8>
    800038b8:	f7843783          	ld	a5,-136(s0)
    800038bc:	0007a603          	lw	a2,0(a5)
    800038c0:	00878793          	addi	a5,a5,8
    800038c4:	f6f43c23          	sd	a5,-136(s0)
    800038c8:	42064a63          	bltz	a2,80003cfc <__printf+0x524>
    800038cc:	00a00713          	li	a4,10
    800038d0:	02e677bb          	remuw	a5,a2,a4
    800038d4:	00002d97          	auipc	s11,0x2
    800038d8:	b5cd8d93          	addi	s11,s11,-1188 # 80005430 <digits>
    800038dc:	00900593          	li	a1,9
    800038e0:	0006051b          	sext.w	a0,a2
    800038e4:	00000c93          	li	s9,0
    800038e8:	02079793          	slli	a5,a5,0x20
    800038ec:	0207d793          	srli	a5,a5,0x20
    800038f0:	00fd87b3          	add	a5,s11,a5
    800038f4:	0007c783          	lbu	a5,0(a5)
    800038f8:	02e656bb          	divuw	a3,a2,a4
    800038fc:	f8f40023          	sb	a5,-128(s0)
    80003900:	14c5d863          	bge	a1,a2,80003a50 <__printf+0x278>
    80003904:	06300593          	li	a1,99
    80003908:	00100c93          	li	s9,1
    8000390c:	02e6f7bb          	remuw	a5,a3,a4
    80003910:	02079793          	slli	a5,a5,0x20
    80003914:	0207d793          	srli	a5,a5,0x20
    80003918:	00fd87b3          	add	a5,s11,a5
    8000391c:	0007c783          	lbu	a5,0(a5)
    80003920:	02e6d73b          	divuw	a4,a3,a4
    80003924:	f8f400a3          	sb	a5,-127(s0)
    80003928:	12a5f463          	bgeu	a1,a0,80003a50 <__printf+0x278>
    8000392c:	00a00693          	li	a3,10
    80003930:	00900593          	li	a1,9
    80003934:	02d777bb          	remuw	a5,a4,a3
    80003938:	02079793          	slli	a5,a5,0x20
    8000393c:	0207d793          	srli	a5,a5,0x20
    80003940:	00fd87b3          	add	a5,s11,a5
    80003944:	0007c503          	lbu	a0,0(a5)
    80003948:	02d757bb          	divuw	a5,a4,a3
    8000394c:	f8a40123          	sb	a0,-126(s0)
    80003950:	48e5f263          	bgeu	a1,a4,80003dd4 <__printf+0x5fc>
    80003954:	06300513          	li	a0,99
    80003958:	02d7f5bb          	remuw	a1,a5,a3
    8000395c:	02059593          	slli	a1,a1,0x20
    80003960:	0205d593          	srli	a1,a1,0x20
    80003964:	00bd85b3          	add	a1,s11,a1
    80003968:	0005c583          	lbu	a1,0(a1)
    8000396c:	02d7d7bb          	divuw	a5,a5,a3
    80003970:	f8b401a3          	sb	a1,-125(s0)
    80003974:	48e57263          	bgeu	a0,a4,80003df8 <__printf+0x620>
    80003978:	3e700513          	li	a0,999
    8000397c:	02d7f5bb          	remuw	a1,a5,a3
    80003980:	02059593          	slli	a1,a1,0x20
    80003984:	0205d593          	srli	a1,a1,0x20
    80003988:	00bd85b3          	add	a1,s11,a1
    8000398c:	0005c583          	lbu	a1,0(a1)
    80003990:	02d7d7bb          	divuw	a5,a5,a3
    80003994:	f8b40223          	sb	a1,-124(s0)
    80003998:	46e57663          	bgeu	a0,a4,80003e04 <__printf+0x62c>
    8000399c:	02d7f5bb          	remuw	a1,a5,a3
    800039a0:	02059593          	slli	a1,a1,0x20
    800039a4:	0205d593          	srli	a1,a1,0x20
    800039a8:	00bd85b3          	add	a1,s11,a1
    800039ac:	0005c583          	lbu	a1,0(a1)
    800039b0:	02d7d7bb          	divuw	a5,a5,a3
    800039b4:	f8b402a3          	sb	a1,-123(s0)
    800039b8:	46ea7863          	bgeu	s4,a4,80003e28 <__printf+0x650>
    800039bc:	02d7f5bb          	remuw	a1,a5,a3
    800039c0:	02059593          	slli	a1,a1,0x20
    800039c4:	0205d593          	srli	a1,a1,0x20
    800039c8:	00bd85b3          	add	a1,s11,a1
    800039cc:	0005c583          	lbu	a1,0(a1)
    800039d0:	02d7d7bb          	divuw	a5,a5,a3
    800039d4:	f8b40323          	sb	a1,-122(s0)
    800039d8:	3eeaf863          	bgeu	s5,a4,80003dc8 <__printf+0x5f0>
    800039dc:	02d7f5bb          	remuw	a1,a5,a3
    800039e0:	02059593          	slli	a1,a1,0x20
    800039e4:	0205d593          	srli	a1,a1,0x20
    800039e8:	00bd85b3          	add	a1,s11,a1
    800039ec:	0005c583          	lbu	a1,0(a1)
    800039f0:	02d7d7bb          	divuw	a5,a5,a3
    800039f4:	f8b403a3          	sb	a1,-121(s0)
    800039f8:	42eb7e63          	bgeu	s6,a4,80003e34 <__printf+0x65c>
    800039fc:	02d7f5bb          	remuw	a1,a5,a3
    80003a00:	02059593          	slli	a1,a1,0x20
    80003a04:	0205d593          	srli	a1,a1,0x20
    80003a08:	00bd85b3          	add	a1,s11,a1
    80003a0c:	0005c583          	lbu	a1,0(a1)
    80003a10:	02d7d7bb          	divuw	a5,a5,a3
    80003a14:	f8b40423          	sb	a1,-120(s0)
    80003a18:	42ebfc63          	bgeu	s7,a4,80003e50 <__printf+0x678>
    80003a1c:	02079793          	slli	a5,a5,0x20
    80003a20:	0207d793          	srli	a5,a5,0x20
    80003a24:	00fd8db3          	add	s11,s11,a5
    80003a28:	000dc703          	lbu	a4,0(s11)
    80003a2c:	00a00793          	li	a5,10
    80003a30:	00900c93          	li	s9,9
    80003a34:	f8e404a3          	sb	a4,-119(s0)
    80003a38:	00065c63          	bgez	a2,80003a50 <__printf+0x278>
    80003a3c:	f9040713          	addi	a4,s0,-112
    80003a40:	00f70733          	add	a4,a4,a5
    80003a44:	02d00693          	li	a3,45
    80003a48:	fed70823          	sb	a3,-16(a4)
    80003a4c:	00078c93          	mv	s9,a5
    80003a50:	f8040793          	addi	a5,s0,-128
    80003a54:	01978cb3          	add	s9,a5,s9
    80003a58:	f7f40d13          	addi	s10,s0,-129
    80003a5c:	000cc503          	lbu	a0,0(s9)
    80003a60:	fffc8c93          	addi	s9,s9,-1
    80003a64:	00000097          	auipc	ra,0x0
    80003a68:	b90080e7          	jalr	-1136(ra) # 800035f4 <consputc>
    80003a6c:	ffac98e3          	bne	s9,s10,80003a5c <__printf+0x284>
    80003a70:	00094503          	lbu	a0,0(s2)
    80003a74:	e00514e3          	bnez	a0,8000387c <__printf+0xa4>
    80003a78:	1a0c1663          	bnez	s8,80003c24 <__printf+0x44c>
    80003a7c:	08813083          	ld	ra,136(sp)
    80003a80:	08013403          	ld	s0,128(sp)
    80003a84:	07813483          	ld	s1,120(sp)
    80003a88:	07013903          	ld	s2,112(sp)
    80003a8c:	06813983          	ld	s3,104(sp)
    80003a90:	06013a03          	ld	s4,96(sp)
    80003a94:	05813a83          	ld	s5,88(sp)
    80003a98:	05013b03          	ld	s6,80(sp)
    80003a9c:	04813b83          	ld	s7,72(sp)
    80003aa0:	04013c03          	ld	s8,64(sp)
    80003aa4:	03813c83          	ld	s9,56(sp)
    80003aa8:	03013d03          	ld	s10,48(sp)
    80003aac:	02813d83          	ld	s11,40(sp)
    80003ab0:	0d010113          	addi	sp,sp,208
    80003ab4:	00008067          	ret
    80003ab8:	07300713          	li	a4,115
    80003abc:	1ce78a63          	beq	a5,a4,80003c90 <__printf+0x4b8>
    80003ac0:	07800713          	li	a4,120
    80003ac4:	1ee79e63          	bne	a5,a4,80003cc0 <__printf+0x4e8>
    80003ac8:	f7843783          	ld	a5,-136(s0)
    80003acc:	0007a703          	lw	a4,0(a5)
    80003ad0:	00878793          	addi	a5,a5,8
    80003ad4:	f6f43c23          	sd	a5,-136(s0)
    80003ad8:	28074263          	bltz	a4,80003d5c <__printf+0x584>
    80003adc:	00002d97          	auipc	s11,0x2
    80003ae0:	954d8d93          	addi	s11,s11,-1708 # 80005430 <digits>
    80003ae4:	00f77793          	andi	a5,a4,15
    80003ae8:	00fd87b3          	add	a5,s11,a5
    80003aec:	0007c683          	lbu	a3,0(a5)
    80003af0:	00f00613          	li	a2,15
    80003af4:	0007079b          	sext.w	a5,a4
    80003af8:	f8d40023          	sb	a3,-128(s0)
    80003afc:	0047559b          	srliw	a1,a4,0x4
    80003b00:	0047569b          	srliw	a3,a4,0x4
    80003b04:	00000c93          	li	s9,0
    80003b08:	0ee65063          	bge	a2,a4,80003be8 <__printf+0x410>
    80003b0c:	00f6f693          	andi	a3,a3,15
    80003b10:	00dd86b3          	add	a3,s11,a3
    80003b14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003b18:	0087d79b          	srliw	a5,a5,0x8
    80003b1c:	00100c93          	li	s9,1
    80003b20:	f8d400a3          	sb	a3,-127(s0)
    80003b24:	0cb67263          	bgeu	a2,a1,80003be8 <__printf+0x410>
    80003b28:	00f7f693          	andi	a3,a5,15
    80003b2c:	00dd86b3          	add	a3,s11,a3
    80003b30:	0006c583          	lbu	a1,0(a3)
    80003b34:	00f00613          	li	a2,15
    80003b38:	0047d69b          	srliw	a3,a5,0x4
    80003b3c:	f8b40123          	sb	a1,-126(s0)
    80003b40:	0047d593          	srli	a1,a5,0x4
    80003b44:	28f67e63          	bgeu	a2,a5,80003de0 <__printf+0x608>
    80003b48:	00f6f693          	andi	a3,a3,15
    80003b4c:	00dd86b3          	add	a3,s11,a3
    80003b50:	0006c503          	lbu	a0,0(a3)
    80003b54:	0087d813          	srli	a6,a5,0x8
    80003b58:	0087d69b          	srliw	a3,a5,0x8
    80003b5c:	f8a401a3          	sb	a0,-125(s0)
    80003b60:	28b67663          	bgeu	a2,a1,80003dec <__printf+0x614>
    80003b64:	00f6f693          	andi	a3,a3,15
    80003b68:	00dd86b3          	add	a3,s11,a3
    80003b6c:	0006c583          	lbu	a1,0(a3)
    80003b70:	00c7d513          	srli	a0,a5,0xc
    80003b74:	00c7d69b          	srliw	a3,a5,0xc
    80003b78:	f8b40223          	sb	a1,-124(s0)
    80003b7c:	29067a63          	bgeu	a2,a6,80003e10 <__printf+0x638>
    80003b80:	00f6f693          	andi	a3,a3,15
    80003b84:	00dd86b3          	add	a3,s11,a3
    80003b88:	0006c583          	lbu	a1,0(a3)
    80003b8c:	0107d813          	srli	a6,a5,0x10
    80003b90:	0107d69b          	srliw	a3,a5,0x10
    80003b94:	f8b402a3          	sb	a1,-123(s0)
    80003b98:	28a67263          	bgeu	a2,a0,80003e1c <__printf+0x644>
    80003b9c:	00f6f693          	andi	a3,a3,15
    80003ba0:	00dd86b3          	add	a3,s11,a3
    80003ba4:	0006c683          	lbu	a3,0(a3)
    80003ba8:	0147d79b          	srliw	a5,a5,0x14
    80003bac:	f8d40323          	sb	a3,-122(s0)
    80003bb0:	21067663          	bgeu	a2,a6,80003dbc <__printf+0x5e4>
    80003bb4:	02079793          	slli	a5,a5,0x20
    80003bb8:	0207d793          	srli	a5,a5,0x20
    80003bbc:	00fd8db3          	add	s11,s11,a5
    80003bc0:	000dc683          	lbu	a3,0(s11)
    80003bc4:	00800793          	li	a5,8
    80003bc8:	00700c93          	li	s9,7
    80003bcc:	f8d403a3          	sb	a3,-121(s0)
    80003bd0:	00075c63          	bgez	a4,80003be8 <__printf+0x410>
    80003bd4:	f9040713          	addi	a4,s0,-112
    80003bd8:	00f70733          	add	a4,a4,a5
    80003bdc:	02d00693          	li	a3,45
    80003be0:	fed70823          	sb	a3,-16(a4)
    80003be4:	00078c93          	mv	s9,a5
    80003be8:	f8040793          	addi	a5,s0,-128
    80003bec:	01978cb3          	add	s9,a5,s9
    80003bf0:	f7f40d13          	addi	s10,s0,-129
    80003bf4:	000cc503          	lbu	a0,0(s9)
    80003bf8:	fffc8c93          	addi	s9,s9,-1
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	9f8080e7          	jalr	-1544(ra) # 800035f4 <consputc>
    80003c04:	ff9d18e3          	bne	s10,s9,80003bf4 <__printf+0x41c>
    80003c08:	0100006f          	j	80003c18 <__printf+0x440>
    80003c0c:	00000097          	auipc	ra,0x0
    80003c10:	9e8080e7          	jalr	-1560(ra) # 800035f4 <consputc>
    80003c14:	000c8493          	mv	s1,s9
    80003c18:	00094503          	lbu	a0,0(s2)
    80003c1c:	c60510e3          	bnez	a0,8000387c <__printf+0xa4>
    80003c20:	e40c0ee3          	beqz	s8,80003a7c <__printf+0x2a4>
    80003c24:	00003517          	auipc	a0,0x3
    80003c28:	58c50513          	addi	a0,a0,1420 # 800071b0 <pr>
    80003c2c:	00001097          	auipc	ra,0x1
    80003c30:	94c080e7          	jalr	-1716(ra) # 80004578 <release>
    80003c34:	e49ff06f          	j	80003a7c <__printf+0x2a4>
    80003c38:	f7843783          	ld	a5,-136(s0)
    80003c3c:	03000513          	li	a0,48
    80003c40:	01000d13          	li	s10,16
    80003c44:	00878713          	addi	a4,a5,8
    80003c48:	0007bc83          	ld	s9,0(a5)
    80003c4c:	f6e43c23          	sd	a4,-136(s0)
    80003c50:	00000097          	auipc	ra,0x0
    80003c54:	9a4080e7          	jalr	-1628(ra) # 800035f4 <consputc>
    80003c58:	07800513          	li	a0,120
    80003c5c:	00000097          	auipc	ra,0x0
    80003c60:	998080e7          	jalr	-1640(ra) # 800035f4 <consputc>
    80003c64:	00001d97          	auipc	s11,0x1
    80003c68:	7ccd8d93          	addi	s11,s11,1996 # 80005430 <digits>
    80003c6c:	03ccd793          	srli	a5,s9,0x3c
    80003c70:	00fd87b3          	add	a5,s11,a5
    80003c74:	0007c503          	lbu	a0,0(a5)
    80003c78:	fffd0d1b          	addiw	s10,s10,-1
    80003c7c:	004c9c93          	slli	s9,s9,0x4
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	974080e7          	jalr	-1676(ra) # 800035f4 <consputc>
    80003c88:	fe0d12e3          	bnez	s10,80003c6c <__printf+0x494>
    80003c8c:	f8dff06f          	j	80003c18 <__printf+0x440>
    80003c90:	f7843783          	ld	a5,-136(s0)
    80003c94:	0007bc83          	ld	s9,0(a5)
    80003c98:	00878793          	addi	a5,a5,8
    80003c9c:	f6f43c23          	sd	a5,-136(s0)
    80003ca0:	000c9a63          	bnez	s9,80003cb4 <__printf+0x4dc>
    80003ca4:	1080006f          	j	80003dac <__printf+0x5d4>
    80003ca8:	001c8c93          	addi	s9,s9,1
    80003cac:	00000097          	auipc	ra,0x0
    80003cb0:	948080e7          	jalr	-1720(ra) # 800035f4 <consputc>
    80003cb4:	000cc503          	lbu	a0,0(s9)
    80003cb8:	fe0518e3          	bnez	a0,80003ca8 <__printf+0x4d0>
    80003cbc:	f5dff06f          	j	80003c18 <__printf+0x440>
    80003cc0:	02500513          	li	a0,37
    80003cc4:	00000097          	auipc	ra,0x0
    80003cc8:	930080e7          	jalr	-1744(ra) # 800035f4 <consputc>
    80003ccc:	000c8513          	mv	a0,s9
    80003cd0:	00000097          	auipc	ra,0x0
    80003cd4:	924080e7          	jalr	-1756(ra) # 800035f4 <consputc>
    80003cd8:	f41ff06f          	j	80003c18 <__printf+0x440>
    80003cdc:	02500513          	li	a0,37
    80003ce0:	00000097          	auipc	ra,0x0
    80003ce4:	914080e7          	jalr	-1772(ra) # 800035f4 <consputc>
    80003ce8:	f31ff06f          	j	80003c18 <__printf+0x440>
    80003cec:	00030513          	mv	a0,t1
    80003cf0:	00000097          	auipc	ra,0x0
    80003cf4:	7bc080e7          	jalr	1980(ra) # 800044ac <acquire>
    80003cf8:	b4dff06f          	j	80003844 <__printf+0x6c>
    80003cfc:	40c0053b          	negw	a0,a2
    80003d00:	00a00713          	li	a4,10
    80003d04:	02e576bb          	remuw	a3,a0,a4
    80003d08:	00001d97          	auipc	s11,0x1
    80003d0c:	728d8d93          	addi	s11,s11,1832 # 80005430 <digits>
    80003d10:	ff700593          	li	a1,-9
    80003d14:	02069693          	slli	a3,a3,0x20
    80003d18:	0206d693          	srli	a3,a3,0x20
    80003d1c:	00dd86b3          	add	a3,s11,a3
    80003d20:	0006c683          	lbu	a3,0(a3)
    80003d24:	02e557bb          	divuw	a5,a0,a4
    80003d28:	f8d40023          	sb	a3,-128(s0)
    80003d2c:	10b65e63          	bge	a2,a1,80003e48 <__printf+0x670>
    80003d30:	06300593          	li	a1,99
    80003d34:	02e7f6bb          	remuw	a3,a5,a4
    80003d38:	02069693          	slli	a3,a3,0x20
    80003d3c:	0206d693          	srli	a3,a3,0x20
    80003d40:	00dd86b3          	add	a3,s11,a3
    80003d44:	0006c683          	lbu	a3,0(a3)
    80003d48:	02e7d73b          	divuw	a4,a5,a4
    80003d4c:	00200793          	li	a5,2
    80003d50:	f8d400a3          	sb	a3,-127(s0)
    80003d54:	bca5ece3          	bltu	a1,a0,8000392c <__printf+0x154>
    80003d58:	ce5ff06f          	j	80003a3c <__printf+0x264>
    80003d5c:	40e007bb          	negw	a5,a4
    80003d60:	00001d97          	auipc	s11,0x1
    80003d64:	6d0d8d93          	addi	s11,s11,1744 # 80005430 <digits>
    80003d68:	00f7f693          	andi	a3,a5,15
    80003d6c:	00dd86b3          	add	a3,s11,a3
    80003d70:	0006c583          	lbu	a1,0(a3)
    80003d74:	ff100613          	li	a2,-15
    80003d78:	0047d69b          	srliw	a3,a5,0x4
    80003d7c:	f8b40023          	sb	a1,-128(s0)
    80003d80:	0047d59b          	srliw	a1,a5,0x4
    80003d84:	0ac75e63          	bge	a4,a2,80003e40 <__printf+0x668>
    80003d88:	00f6f693          	andi	a3,a3,15
    80003d8c:	00dd86b3          	add	a3,s11,a3
    80003d90:	0006c603          	lbu	a2,0(a3)
    80003d94:	00f00693          	li	a3,15
    80003d98:	0087d79b          	srliw	a5,a5,0x8
    80003d9c:	f8c400a3          	sb	a2,-127(s0)
    80003da0:	d8b6e4e3          	bltu	a3,a1,80003b28 <__printf+0x350>
    80003da4:	00200793          	li	a5,2
    80003da8:	e2dff06f          	j	80003bd4 <__printf+0x3fc>
    80003dac:	00001c97          	auipc	s9,0x1
    80003db0:	664c8c93          	addi	s9,s9,1636 # 80005410 <_ZZ12printIntegermE6digits+0x148>
    80003db4:	02800513          	li	a0,40
    80003db8:	ef1ff06f          	j	80003ca8 <__printf+0x4d0>
    80003dbc:	00700793          	li	a5,7
    80003dc0:	00600c93          	li	s9,6
    80003dc4:	e0dff06f          	j	80003bd0 <__printf+0x3f8>
    80003dc8:	00700793          	li	a5,7
    80003dcc:	00600c93          	li	s9,6
    80003dd0:	c69ff06f          	j	80003a38 <__printf+0x260>
    80003dd4:	00300793          	li	a5,3
    80003dd8:	00200c93          	li	s9,2
    80003ddc:	c5dff06f          	j	80003a38 <__printf+0x260>
    80003de0:	00300793          	li	a5,3
    80003de4:	00200c93          	li	s9,2
    80003de8:	de9ff06f          	j	80003bd0 <__printf+0x3f8>
    80003dec:	00400793          	li	a5,4
    80003df0:	00300c93          	li	s9,3
    80003df4:	dddff06f          	j	80003bd0 <__printf+0x3f8>
    80003df8:	00400793          	li	a5,4
    80003dfc:	00300c93          	li	s9,3
    80003e00:	c39ff06f          	j	80003a38 <__printf+0x260>
    80003e04:	00500793          	li	a5,5
    80003e08:	00400c93          	li	s9,4
    80003e0c:	c2dff06f          	j	80003a38 <__printf+0x260>
    80003e10:	00500793          	li	a5,5
    80003e14:	00400c93          	li	s9,4
    80003e18:	db9ff06f          	j	80003bd0 <__printf+0x3f8>
    80003e1c:	00600793          	li	a5,6
    80003e20:	00500c93          	li	s9,5
    80003e24:	dadff06f          	j	80003bd0 <__printf+0x3f8>
    80003e28:	00600793          	li	a5,6
    80003e2c:	00500c93          	li	s9,5
    80003e30:	c09ff06f          	j	80003a38 <__printf+0x260>
    80003e34:	00800793          	li	a5,8
    80003e38:	00700c93          	li	s9,7
    80003e3c:	bfdff06f          	j	80003a38 <__printf+0x260>
    80003e40:	00100793          	li	a5,1
    80003e44:	d91ff06f          	j	80003bd4 <__printf+0x3fc>
    80003e48:	00100793          	li	a5,1
    80003e4c:	bf1ff06f          	j	80003a3c <__printf+0x264>
    80003e50:	00900793          	li	a5,9
    80003e54:	00800c93          	li	s9,8
    80003e58:	be1ff06f          	j	80003a38 <__printf+0x260>
    80003e5c:	00001517          	auipc	a0,0x1
    80003e60:	5bc50513          	addi	a0,a0,1468 # 80005418 <_ZZ12printIntegermE6digits+0x150>
    80003e64:	00000097          	auipc	ra,0x0
    80003e68:	918080e7          	jalr	-1768(ra) # 8000377c <panic>

0000000080003e6c <printfinit>:
    80003e6c:	fe010113          	addi	sp,sp,-32
    80003e70:	00813823          	sd	s0,16(sp)
    80003e74:	00913423          	sd	s1,8(sp)
    80003e78:	00113c23          	sd	ra,24(sp)
    80003e7c:	02010413          	addi	s0,sp,32
    80003e80:	00003497          	auipc	s1,0x3
    80003e84:	33048493          	addi	s1,s1,816 # 800071b0 <pr>
    80003e88:	00048513          	mv	a0,s1
    80003e8c:	00001597          	auipc	a1,0x1
    80003e90:	59c58593          	addi	a1,a1,1436 # 80005428 <_ZZ12printIntegermE6digits+0x160>
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	5f4080e7          	jalr	1524(ra) # 80004488 <initlock>
    80003e9c:	01813083          	ld	ra,24(sp)
    80003ea0:	01013403          	ld	s0,16(sp)
    80003ea4:	0004ac23          	sw	zero,24(s1)
    80003ea8:	00813483          	ld	s1,8(sp)
    80003eac:	02010113          	addi	sp,sp,32
    80003eb0:	00008067          	ret

0000000080003eb4 <uartinit>:
    80003eb4:	ff010113          	addi	sp,sp,-16
    80003eb8:	00813423          	sd	s0,8(sp)
    80003ebc:	01010413          	addi	s0,sp,16
    80003ec0:	100007b7          	lui	a5,0x10000
    80003ec4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003ec8:	f8000713          	li	a4,-128
    80003ecc:	00e781a3          	sb	a4,3(a5)
    80003ed0:	00300713          	li	a4,3
    80003ed4:	00e78023          	sb	a4,0(a5)
    80003ed8:	000780a3          	sb	zero,1(a5)
    80003edc:	00e781a3          	sb	a4,3(a5)
    80003ee0:	00700693          	li	a3,7
    80003ee4:	00d78123          	sb	a3,2(a5)
    80003ee8:	00e780a3          	sb	a4,1(a5)
    80003eec:	00813403          	ld	s0,8(sp)
    80003ef0:	01010113          	addi	sp,sp,16
    80003ef4:	00008067          	ret

0000000080003ef8 <uartputc>:
    80003ef8:	00002797          	auipc	a5,0x2
    80003efc:	0407a783          	lw	a5,64(a5) # 80005f38 <panicked>
    80003f00:	00078463          	beqz	a5,80003f08 <uartputc+0x10>
    80003f04:	0000006f          	j	80003f04 <uartputc+0xc>
    80003f08:	fd010113          	addi	sp,sp,-48
    80003f0c:	02813023          	sd	s0,32(sp)
    80003f10:	00913c23          	sd	s1,24(sp)
    80003f14:	01213823          	sd	s2,16(sp)
    80003f18:	01313423          	sd	s3,8(sp)
    80003f1c:	02113423          	sd	ra,40(sp)
    80003f20:	03010413          	addi	s0,sp,48
    80003f24:	00002917          	auipc	s2,0x2
    80003f28:	01c90913          	addi	s2,s2,28 # 80005f40 <uart_tx_r>
    80003f2c:	00093783          	ld	a5,0(s2)
    80003f30:	00002497          	auipc	s1,0x2
    80003f34:	01848493          	addi	s1,s1,24 # 80005f48 <uart_tx_w>
    80003f38:	0004b703          	ld	a4,0(s1)
    80003f3c:	02078693          	addi	a3,a5,32
    80003f40:	00050993          	mv	s3,a0
    80003f44:	02e69c63          	bne	a3,a4,80003f7c <uartputc+0x84>
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	834080e7          	jalr	-1996(ra) # 8000477c <push_on>
    80003f50:	00093783          	ld	a5,0(s2)
    80003f54:	0004b703          	ld	a4,0(s1)
    80003f58:	02078793          	addi	a5,a5,32
    80003f5c:	00e79463          	bne	a5,a4,80003f64 <uartputc+0x6c>
    80003f60:	0000006f          	j	80003f60 <uartputc+0x68>
    80003f64:	00001097          	auipc	ra,0x1
    80003f68:	88c080e7          	jalr	-1908(ra) # 800047f0 <pop_on>
    80003f6c:	00093783          	ld	a5,0(s2)
    80003f70:	0004b703          	ld	a4,0(s1)
    80003f74:	02078693          	addi	a3,a5,32
    80003f78:	fce688e3          	beq	a3,a4,80003f48 <uartputc+0x50>
    80003f7c:	01f77693          	andi	a3,a4,31
    80003f80:	00003597          	auipc	a1,0x3
    80003f84:	25058593          	addi	a1,a1,592 # 800071d0 <uart_tx_buf>
    80003f88:	00d586b3          	add	a3,a1,a3
    80003f8c:	00170713          	addi	a4,a4,1
    80003f90:	01368023          	sb	s3,0(a3)
    80003f94:	00e4b023          	sd	a4,0(s1)
    80003f98:	10000637          	lui	a2,0x10000
    80003f9c:	02f71063          	bne	a4,a5,80003fbc <uartputc+0xc4>
    80003fa0:	0340006f          	j	80003fd4 <uartputc+0xdc>
    80003fa4:	00074703          	lbu	a4,0(a4)
    80003fa8:	00f93023          	sd	a5,0(s2)
    80003fac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003fb0:	00093783          	ld	a5,0(s2)
    80003fb4:	0004b703          	ld	a4,0(s1)
    80003fb8:	00f70e63          	beq	a4,a5,80003fd4 <uartputc+0xdc>
    80003fbc:	00564683          	lbu	a3,5(a2)
    80003fc0:	01f7f713          	andi	a4,a5,31
    80003fc4:	00e58733          	add	a4,a1,a4
    80003fc8:	0206f693          	andi	a3,a3,32
    80003fcc:	00178793          	addi	a5,a5,1
    80003fd0:	fc069ae3          	bnez	a3,80003fa4 <uartputc+0xac>
    80003fd4:	02813083          	ld	ra,40(sp)
    80003fd8:	02013403          	ld	s0,32(sp)
    80003fdc:	01813483          	ld	s1,24(sp)
    80003fe0:	01013903          	ld	s2,16(sp)
    80003fe4:	00813983          	ld	s3,8(sp)
    80003fe8:	03010113          	addi	sp,sp,48
    80003fec:	00008067          	ret

0000000080003ff0 <uartputc_sync>:
    80003ff0:	ff010113          	addi	sp,sp,-16
    80003ff4:	00813423          	sd	s0,8(sp)
    80003ff8:	01010413          	addi	s0,sp,16
    80003ffc:	00002717          	auipc	a4,0x2
    80004000:	f3c72703          	lw	a4,-196(a4) # 80005f38 <panicked>
    80004004:	02071663          	bnez	a4,80004030 <uartputc_sync+0x40>
    80004008:	00050793          	mv	a5,a0
    8000400c:	100006b7          	lui	a3,0x10000
    80004010:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004014:	02077713          	andi	a4,a4,32
    80004018:	fe070ce3          	beqz	a4,80004010 <uartputc_sync+0x20>
    8000401c:	0ff7f793          	andi	a5,a5,255
    80004020:	00f68023          	sb	a5,0(a3)
    80004024:	00813403          	ld	s0,8(sp)
    80004028:	01010113          	addi	sp,sp,16
    8000402c:	00008067          	ret
    80004030:	0000006f          	j	80004030 <uartputc_sync+0x40>

0000000080004034 <uartstart>:
    80004034:	ff010113          	addi	sp,sp,-16
    80004038:	00813423          	sd	s0,8(sp)
    8000403c:	01010413          	addi	s0,sp,16
    80004040:	00002617          	auipc	a2,0x2
    80004044:	f0060613          	addi	a2,a2,-256 # 80005f40 <uart_tx_r>
    80004048:	00002517          	auipc	a0,0x2
    8000404c:	f0050513          	addi	a0,a0,-256 # 80005f48 <uart_tx_w>
    80004050:	00063783          	ld	a5,0(a2)
    80004054:	00053703          	ld	a4,0(a0)
    80004058:	04f70263          	beq	a4,a5,8000409c <uartstart+0x68>
    8000405c:	100005b7          	lui	a1,0x10000
    80004060:	00003817          	auipc	a6,0x3
    80004064:	17080813          	addi	a6,a6,368 # 800071d0 <uart_tx_buf>
    80004068:	01c0006f          	j	80004084 <uartstart+0x50>
    8000406c:	0006c703          	lbu	a4,0(a3)
    80004070:	00f63023          	sd	a5,0(a2)
    80004074:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004078:	00063783          	ld	a5,0(a2)
    8000407c:	00053703          	ld	a4,0(a0)
    80004080:	00f70e63          	beq	a4,a5,8000409c <uartstart+0x68>
    80004084:	01f7f713          	andi	a4,a5,31
    80004088:	00e806b3          	add	a3,a6,a4
    8000408c:	0055c703          	lbu	a4,5(a1)
    80004090:	00178793          	addi	a5,a5,1
    80004094:	02077713          	andi	a4,a4,32
    80004098:	fc071ae3          	bnez	a4,8000406c <uartstart+0x38>
    8000409c:	00813403          	ld	s0,8(sp)
    800040a0:	01010113          	addi	sp,sp,16
    800040a4:	00008067          	ret

00000000800040a8 <uartgetc>:
    800040a8:	ff010113          	addi	sp,sp,-16
    800040ac:	00813423          	sd	s0,8(sp)
    800040b0:	01010413          	addi	s0,sp,16
    800040b4:	10000737          	lui	a4,0x10000
    800040b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800040bc:	0017f793          	andi	a5,a5,1
    800040c0:	00078c63          	beqz	a5,800040d8 <uartgetc+0x30>
    800040c4:	00074503          	lbu	a0,0(a4)
    800040c8:	0ff57513          	andi	a0,a0,255
    800040cc:	00813403          	ld	s0,8(sp)
    800040d0:	01010113          	addi	sp,sp,16
    800040d4:	00008067          	ret
    800040d8:	fff00513          	li	a0,-1
    800040dc:	ff1ff06f          	j	800040cc <uartgetc+0x24>

00000000800040e0 <uartintr>:
    800040e0:	100007b7          	lui	a5,0x10000
    800040e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800040e8:	0017f793          	andi	a5,a5,1
    800040ec:	0a078463          	beqz	a5,80004194 <uartintr+0xb4>
    800040f0:	fe010113          	addi	sp,sp,-32
    800040f4:	00813823          	sd	s0,16(sp)
    800040f8:	00913423          	sd	s1,8(sp)
    800040fc:	00113c23          	sd	ra,24(sp)
    80004100:	02010413          	addi	s0,sp,32
    80004104:	100004b7          	lui	s1,0x10000
    80004108:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000410c:	0ff57513          	andi	a0,a0,255
    80004110:	fffff097          	auipc	ra,0xfffff
    80004114:	534080e7          	jalr	1332(ra) # 80003644 <consoleintr>
    80004118:	0054c783          	lbu	a5,5(s1)
    8000411c:	0017f793          	andi	a5,a5,1
    80004120:	fe0794e3          	bnez	a5,80004108 <uartintr+0x28>
    80004124:	00002617          	auipc	a2,0x2
    80004128:	e1c60613          	addi	a2,a2,-484 # 80005f40 <uart_tx_r>
    8000412c:	00002517          	auipc	a0,0x2
    80004130:	e1c50513          	addi	a0,a0,-484 # 80005f48 <uart_tx_w>
    80004134:	00063783          	ld	a5,0(a2)
    80004138:	00053703          	ld	a4,0(a0)
    8000413c:	04f70263          	beq	a4,a5,80004180 <uartintr+0xa0>
    80004140:	100005b7          	lui	a1,0x10000
    80004144:	00003817          	auipc	a6,0x3
    80004148:	08c80813          	addi	a6,a6,140 # 800071d0 <uart_tx_buf>
    8000414c:	01c0006f          	j	80004168 <uartintr+0x88>
    80004150:	0006c703          	lbu	a4,0(a3)
    80004154:	00f63023          	sd	a5,0(a2)
    80004158:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000415c:	00063783          	ld	a5,0(a2)
    80004160:	00053703          	ld	a4,0(a0)
    80004164:	00f70e63          	beq	a4,a5,80004180 <uartintr+0xa0>
    80004168:	01f7f713          	andi	a4,a5,31
    8000416c:	00e806b3          	add	a3,a6,a4
    80004170:	0055c703          	lbu	a4,5(a1)
    80004174:	00178793          	addi	a5,a5,1
    80004178:	02077713          	andi	a4,a4,32
    8000417c:	fc071ae3          	bnez	a4,80004150 <uartintr+0x70>
    80004180:	01813083          	ld	ra,24(sp)
    80004184:	01013403          	ld	s0,16(sp)
    80004188:	00813483          	ld	s1,8(sp)
    8000418c:	02010113          	addi	sp,sp,32
    80004190:	00008067          	ret
    80004194:	00002617          	auipc	a2,0x2
    80004198:	dac60613          	addi	a2,a2,-596 # 80005f40 <uart_tx_r>
    8000419c:	00002517          	auipc	a0,0x2
    800041a0:	dac50513          	addi	a0,a0,-596 # 80005f48 <uart_tx_w>
    800041a4:	00063783          	ld	a5,0(a2)
    800041a8:	00053703          	ld	a4,0(a0)
    800041ac:	04f70263          	beq	a4,a5,800041f0 <uartintr+0x110>
    800041b0:	100005b7          	lui	a1,0x10000
    800041b4:	00003817          	auipc	a6,0x3
    800041b8:	01c80813          	addi	a6,a6,28 # 800071d0 <uart_tx_buf>
    800041bc:	01c0006f          	j	800041d8 <uartintr+0xf8>
    800041c0:	0006c703          	lbu	a4,0(a3)
    800041c4:	00f63023          	sd	a5,0(a2)
    800041c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800041cc:	00063783          	ld	a5,0(a2)
    800041d0:	00053703          	ld	a4,0(a0)
    800041d4:	02f70063          	beq	a4,a5,800041f4 <uartintr+0x114>
    800041d8:	01f7f713          	andi	a4,a5,31
    800041dc:	00e806b3          	add	a3,a6,a4
    800041e0:	0055c703          	lbu	a4,5(a1)
    800041e4:	00178793          	addi	a5,a5,1
    800041e8:	02077713          	andi	a4,a4,32
    800041ec:	fc071ae3          	bnez	a4,800041c0 <uartintr+0xe0>
    800041f0:	00008067          	ret
    800041f4:	00008067          	ret

00000000800041f8 <kinit>:
    800041f8:	fc010113          	addi	sp,sp,-64
    800041fc:	02913423          	sd	s1,40(sp)
    80004200:	fffff7b7          	lui	a5,0xfffff
    80004204:	00004497          	auipc	s1,0x4
    80004208:	ffb48493          	addi	s1,s1,-5 # 800081ff <end+0xfff>
    8000420c:	02813823          	sd	s0,48(sp)
    80004210:	01313c23          	sd	s3,24(sp)
    80004214:	00f4f4b3          	and	s1,s1,a5
    80004218:	02113c23          	sd	ra,56(sp)
    8000421c:	03213023          	sd	s2,32(sp)
    80004220:	01413823          	sd	s4,16(sp)
    80004224:	01513423          	sd	s5,8(sp)
    80004228:	04010413          	addi	s0,sp,64
    8000422c:	000017b7          	lui	a5,0x1
    80004230:	01100993          	li	s3,17
    80004234:	00f487b3          	add	a5,s1,a5
    80004238:	01b99993          	slli	s3,s3,0x1b
    8000423c:	06f9e063          	bltu	s3,a5,8000429c <kinit+0xa4>
    80004240:	00003a97          	auipc	s5,0x3
    80004244:	fc0a8a93          	addi	s5,s5,-64 # 80007200 <end>
    80004248:	0754ec63          	bltu	s1,s5,800042c0 <kinit+0xc8>
    8000424c:	0734fa63          	bgeu	s1,s3,800042c0 <kinit+0xc8>
    80004250:	00088a37          	lui	s4,0x88
    80004254:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004258:	00002917          	auipc	s2,0x2
    8000425c:	cf890913          	addi	s2,s2,-776 # 80005f50 <kmem>
    80004260:	00ca1a13          	slli	s4,s4,0xc
    80004264:	0140006f          	j	80004278 <kinit+0x80>
    80004268:	000017b7          	lui	a5,0x1
    8000426c:	00f484b3          	add	s1,s1,a5
    80004270:	0554e863          	bltu	s1,s5,800042c0 <kinit+0xc8>
    80004274:	0534f663          	bgeu	s1,s3,800042c0 <kinit+0xc8>
    80004278:	00001637          	lui	a2,0x1
    8000427c:	00100593          	li	a1,1
    80004280:	00048513          	mv	a0,s1
    80004284:	00000097          	auipc	ra,0x0
    80004288:	5e4080e7          	jalr	1508(ra) # 80004868 <__memset>
    8000428c:	00093783          	ld	a5,0(s2)
    80004290:	00f4b023          	sd	a5,0(s1)
    80004294:	00993023          	sd	s1,0(s2)
    80004298:	fd4498e3          	bne	s1,s4,80004268 <kinit+0x70>
    8000429c:	03813083          	ld	ra,56(sp)
    800042a0:	03013403          	ld	s0,48(sp)
    800042a4:	02813483          	ld	s1,40(sp)
    800042a8:	02013903          	ld	s2,32(sp)
    800042ac:	01813983          	ld	s3,24(sp)
    800042b0:	01013a03          	ld	s4,16(sp)
    800042b4:	00813a83          	ld	s5,8(sp)
    800042b8:	04010113          	addi	sp,sp,64
    800042bc:	00008067          	ret
    800042c0:	00001517          	auipc	a0,0x1
    800042c4:	18850513          	addi	a0,a0,392 # 80005448 <digits+0x18>
    800042c8:	fffff097          	auipc	ra,0xfffff
    800042cc:	4b4080e7          	jalr	1204(ra) # 8000377c <panic>

00000000800042d0 <freerange>:
    800042d0:	fc010113          	addi	sp,sp,-64
    800042d4:	000017b7          	lui	a5,0x1
    800042d8:	02913423          	sd	s1,40(sp)
    800042dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800042e0:	009504b3          	add	s1,a0,s1
    800042e4:	fffff537          	lui	a0,0xfffff
    800042e8:	02813823          	sd	s0,48(sp)
    800042ec:	02113c23          	sd	ra,56(sp)
    800042f0:	03213023          	sd	s2,32(sp)
    800042f4:	01313c23          	sd	s3,24(sp)
    800042f8:	01413823          	sd	s4,16(sp)
    800042fc:	01513423          	sd	s5,8(sp)
    80004300:	01613023          	sd	s6,0(sp)
    80004304:	04010413          	addi	s0,sp,64
    80004308:	00a4f4b3          	and	s1,s1,a0
    8000430c:	00f487b3          	add	a5,s1,a5
    80004310:	06f5e463          	bltu	a1,a5,80004378 <freerange+0xa8>
    80004314:	00003a97          	auipc	s5,0x3
    80004318:	eeca8a93          	addi	s5,s5,-276 # 80007200 <end>
    8000431c:	0954e263          	bltu	s1,s5,800043a0 <freerange+0xd0>
    80004320:	01100993          	li	s3,17
    80004324:	01b99993          	slli	s3,s3,0x1b
    80004328:	0734fc63          	bgeu	s1,s3,800043a0 <freerange+0xd0>
    8000432c:	00058a13          	mv	s4,a1
    80004330:	00002917          	auipc	s2,0x2
    80004334:	c2090913          	addi	s2,s2,-992 # 80005f50 <kmem>
    80004338:	00002b37          	lui	s6,0x2
    8000433c:	0140006f          	j	80004350 <freerange+0x80>
    80004340:	000017b7          	lui	a5,0x1
    80004344:	00f484b3          	add	s1,s1,a5
    80004348:	0554ec63          	bltu	s1,s5,800043a0 <freerange+0xd0>
    8000434c:	0534fa63          	bgeu	s1,s3,800043a0 <freerange+0xd0>
    80004350:	00001637          	lui	a2,0x1
    80004354:	00100593          	li	a1,1
    80004358:	00048513          	mv	a0,s1
    8000435c:	00000097          	auipc	ra,0x0
    80004360:	50c080e7          	jalr	1292(ra) # 80004868 <__memset>
    80004364:	00093703          	ld	a4,0(s2)
    80004368:	016487b3          	add	a5,s1,s6
    8000436c:	00e4b023          	sd	a4,0(s1)
    80004370:	00993023          	sd	s1,0(s2)
    80004374:	fcfa76e3          	bgeu	s4,a5,80004340 <freerange+0x70>
    80004378:	03813083          	ld	ra,56(sp)
    8000437c:	03013403          	ld	s0,48(sp)
    80004380:	02813483          	ld	s1,40(sp)
    80004384:	02013903          	ld	s2,32(sp)
    80004388:	01813983          	ld	s3,24(sp)
    8000438c:	01013a03          	ld	s4,16(sp)
    80004390:	00813a83          	ld	s5,8(sp)
    80004394:	00013b03          	ld	s6,0(sp)
    80004398:	04010113          	addi	sp,sp,64
    8000439c:	00008067          	ret
    800043a0:	00001517          	auipc	a0,0x1
    800043a4:	0a850513          	addi	a0,a0,168 # 80005448 <digits+0x18>
    800043a8:	fffff097          	auipc	ra,0xfffff
    800043ac:	3d4080e7          	jalr	980(ra) # 8000377c <panic>

00000000800043b0 <kfree>:
    800043b0:	fe010113          	addi	sp,sp,-32
    800043b4:	00813823          	sd	s0,16(sp)
    800043b8:	00113c23          	sd	ra,24(sp)
    800043bc:	00913423          	sd	s1,8(sp)
    800043c0:	02010413          	addi	s0,sp,32
    800043c4:	03451793          	slli	a5,a0,0x34
    800043c8:	04079c63          	bnez	a5,80004420 <kfree+0x70>
    800043cc:	00003797          	auipc	a5,0x3
    800043d0:	e3478793          	addi	a5,a5,-460 # 80007200 <end>
    800043d4:	00050493          	mv	s1,a0
    800043d8:	04f56463          	bltu	a0,a5,80004420 <kfree+0x70>
    800043dc:	01100793          	li	a5,17
    800043e0:	01b79793          	slli	a5,a5,0x1b
    800043e4:	02f57e63          	bgeu	a0,a5,80004420 <kfree+0x70>
    800043e8:	00001637          	lui	a2,0x1
    800043ec:	00100593          	li	a1,1
    800043f0:	00000097          	auipc	ra,0x0
    800043f4:	478080e7          	jalr	1144(ra) # 80004868 <__memset>
    800043f8:	00002797          	auipc	a5,0x2
    800043fc:	b5878793          	addi	a5,a5,-1192 # 80005f50 <kmem>
    80004400:	0007b703          	ld	a4,0(a5)
    80004404:	01813083          	ld	ra,24(sp)
    80004408:	01013403          	ld	s0,16(sp)
    8000440c:	00e4b023          	sd	a4,0(s1)
    80004410:	0097b023          	sd	s1,0(a5)
    80004414:	00813483          	ld	s1,8(sp)
    80004418:	02010113          	addi	sp,sp,32
    8000441c:	00008067          	ret
    80004420:	00001517          	auipc	a0,0x1
    80004424:	02850513          	addi	a0,a0,40 # 80005448 <digits+0x18>
    80004428:	fffff097          	auipc	ra,0xfffff
    8000442c:	354080e7          	jalr	852(ra) # 8000377c <panic>

0000000080004430 <kalloc>:
    80004430:	fe010113          	addi	sp,sp,-32
    80004434:	00813823          	sd	s0,16(sp)
    80004438:	00913423          	sd	s1,8(sp)
    8000443c:	00113c23          	sd	ra,24(sp)
    80004440:	02010413          	addi	s0,sp,32
    80004444:	00002797          	auipc	a5,0x2
    80004448:	b0c78793          	addi	a5,a5,-1268 # 80005f50 <kmem>
    8000444c:	0007b483          	ld	s1,0(a5)
    80004450:	02048063          	beqz	s1,80004470 <kalloc+0x40>
    80004454:	0004b703          	ld	a4,0(s1)
    80004458:	00001637          	lui	a2,0x1
    8000445c:	00500593          	li	a1,5
    80004460:	00048513          	mv	a0,s1
    80004464:	00e7b023          	sd	a4,0(a5)
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	400080e7          	jalr	1024(ra) # 80004868 <__memset>
    80004470:	01813083          	ld	ra,24(sp)
    80004474:	01013403          	ld	s0,16(sp)
    80004478:	00048513          	mv	a0,s1
    8000447c:	00813483          	ld	s1,8(sp)
    80004480:	02010113          	addi	sp,sp,32
    80004484:	00008067          	ret

0000000080004488 <initlock>:
    80004488:	ff010113          	addi	sp,sp,-16
    8000448c:	00813423          	sd	s0,8(sp)
    80004490:	01010413          	addi	s0,sp,16
    80004494:	00813403          	ld	s0,8(sp)
    80004498:	00b53423          	sd	a1,8(a0)
    8000449c:	00052023          	sw	zero,0(a0)
    800044a0:	00053823          	sd	zero,16(a0)
    800044a4:	01010113          	addi	sp,sp,16
    800044a8:	00008067          	ret

00000000800044ac <acquire>:
    800044ac:	fe010113          	addi	sp,sp,-32
    800044b0:	00813823          	sd	s0,16(sp)
    800044b4:	00913423          	sd	s1,8(sp)
    800044b8:	00113c23          	sd	ra,24(sp)
    800044bc:	01213023          	sd	s2,0(sp)
    800044c0:	02010413          	addi	s0,sp,32
    800044c4:	00050493          	mv	s1,a0
    800044c8:	10002973          	csrr	s2,sstatus
    800044cc:	100027f3          	csrr	a5,sstatus
    800044d0:	ffd7f793          	andi	a5,a5,-3
    800044d4:	10079073          	csrw	sstatus,a5
    800044d8:	fffff097          	auipc	ra,0xfffff
    800044dc:	8ec080e7          	jalr	-1812(ra) # 80002dc4 <mycpu>
    800044e0:	07852783          	lw	a5,120(a0)
    800044e4:	06078e63          	beqz	a5,80004560 <acquire+0xb4>
    800044e8:	fffff097          	auipc	ra,0xfffff
    800044ec:	8dc080e7          	jalr	-1828(ra) # 80002dc4 <mycpu>
    800044f0:	07852783          	lw	a5,120(a0)
    800044f4:	0004a703          	lw	a4,0(s1)
    800044f8:	0017879b          	addiw	a5,a5,1
    800044fc:	06f52c23          	sw	a5,120(a0)
    80004500:	04071063          	bnez	a4,80004540 <acquire+0x94>
    80004504:	00100713          	li	a4,1
    80004508:	00070793          	mv	a5,a4
    8000450c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004510:	0007879b          	sext.w	a5,a5
    80004514:	fe079ae3          	bnez	a5,80004508 <acquire+0x5c>
    80004518:	0ff0000f          	fence
    8000451c:	fffff097          	auipc	ra,0xfffff
    80004520:	8a8080e7          	jalr	-1880(ra) # 80002dc4 <mycpu>
    80004524:	01813083          	ld	ra,24(sp)
    80004528:	01013403          	ld	s0,16(sp)
    8000452c:	00a4b823          	sd	a0,16(s1)
    80004530:	00013903          	ld	s2,0(sp)
    80004534:	00813483          	ld	s1,8(sp)
    80004538:	02010113          	addi	sp,sp,32
    8000453c:	00008067          	ret
    80004540:	0104b903          	ld	s2,16(s1)
    80004544:	fffff097          	auipc	ra,0xfffff
    80004548:	880080e7          	jalr	-1920(ra) # 80002dc4 <mycpu>
    8000454c:	faa91ce3          	bne	s2,a0,80004504 <acquire+0x58>
    80004550:	00001517          	auipc	a0,0x1
    80004554:	f0050513          	addi	a0,a0,-256 # 80005450 <digits+0x20>
    80004558:	fffff097          	auipc	ra,0xfffff
    8000455c:	224080e7          	jalr	548(ra) # 8000377c <panic>
    80004560:	00195913          	srli	s2,s2,0x1
    80004564:	fffff097          	auipc	ra,0xfffff
    80004568:	860080e7          	jalr	-1952(ra) # 80002dc4 <mycpu>
    8000456c:	00197913          	andi	s2,s2,1
    80004570:	07252e23          	sw	s2,124(a0)
    80004574:	f75ff06f          	j	800044e8 <acquire+0x3c>

0000000080004578 <release>:
    80004578:	fe010113          	addi	sp,sp,-32
    8000457c:	00813823          	sd	s0,16(sp)
    80004580:	00113c23          	sd	ra,24(sp)
    80004584:	00913423          	sd	s1,8(sp)
    80004588:	01213023          	sd	s2,0(sp)
    8000458c:	02010413          	addi	s0,sp,32
    80004590:	00052783          	lw	a5,0(a0)
    80004594:	00079a63          	bnez	a5,800045a8 <release+0x30>
    80004598:	00001517          	auipc	a0,0x1
    8000459c:	ec050513          	addi	a0,a0,-320 # 80005458 <digits+0x28>
    800045a0:	fffff097          	auipc	ra,0xfffff
    800045a4:	1dc080e7          	jalr	476(ra) # 8000377c <panic>
    800045a8:	01053903          	ld	s2,16(a0)
    800045ac:	00050493          	mv	s1,a0
    800045b0:	fffff097          	auipc	ra,0xfffff
    800045b4:	814080e7          	jalr	-2028(ra) # 80002dc4 <mycpu>
    800045b8:	fea910e3          	bne	s2,a0,80004598 <release+0x20>
    800045bc:	0004b823          	sd	zero,16(s1)
    800045c0:	0ff0000f          	fence
    800045c4:	0f50000f          	fence	iorw,ow
    800045c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800045cc:	ffffe097          	auipc	ra,0xffffe
    800045d0:	7f8080e7          	jalr	2040(ra) # 80002dc4 <mycpu>
    800045d4:	100027f3          	csrr	a5,sstatus
    800045d8:	0027f793          	andi	a5,a5,2
    800045dc:	04079a63          	bnez	a5,80004630 <release+0xb8>
    800045e0:	07852783          	lw	a5,120(a0)
    800045e4:	02f05e63          	blez	a5,80004620 <release+0xa8>
    800045e8:	fff7871b          	addiw	a4,a5,-1
    800045ec:	06e52c23          	sw	a4,120(a0)
    800045f0:	00071c63          	bnez	a4,80004608 <release+0x90>
    800045f4:	07c52783          	lw	a5,124(a0)
    800045f8:	00078863          	beqz	a5,80004608 <release+0x90>
    800045fc:	100027f3          	csrr	a5,sstatus
    80004600:	0027e793          	ori	a5,a5,2
    80004604:	10079073          	csrw	sstatus,a5
    80004608:	01813083          	ld	ra,24(sp)
    8000460c:	01013403          	ld	s0,16(sp)
    80004610:	00813483          	ld	s1,8(sp)
    80004614:	00013903          	ld	s2,0(sp)
    80004618:	02010113          	addi	sp,sp,32
    8000461c:	00008067          	ret
    80004620:	00001517          	auipc	a0,0x1
    80004624:	e5850513          	addi	a0,a0,-424 # 80005478 <digits+0x48>
    80004628:	fffff097          	auipc	ra,0xfffff
    8000462c:	154080e7          	jalr	340(ra) # 8000377c <panic>
    80004630:	00001517          	auipc	a0,0x1
    80004634:	e3050513          	addi	a0,a0,-464 # 80005460 <digits+0x30>
    80004638:	fffff097          	auipc	ra,0xfffff
    8000463c:	144080e7          	jalr	324(ra) # 8000377c <panic>

0000000080004640 <holding>:
    80004640:	00052783          	lw	a5,0(a0)
    80004644:	00079663          	bnez	a5,80004650 <holding+0x10>
    80004648:	00000513          	li	a0,0
    8000464c:	00008067          	ret
    80004650:	fe010113          	addi	sp,sp,-32
    80004654:	00813823          	sd	s0,16(sp)
    80004658:	00913423          	sd	s1,8(sp)
    8000465c:	00113c23          	sd	ra,24(sp)
    80004660:	02010413          	addi	s0,sp,32
    80004664:	01053483          	ld	s1,16(a0)
    80004668:	ffffe097          	auipc	ra,0xffffe
    8000466c:	75c080e7          	jalr	1884(ra) # 80002dc4 <mycpu>
    80004670:	01813083          	ld	ra,24(sp)
    80004674:	01013403          	ld	s0,16(sp)
    80004678:	40a48533          	sub	a0,s1,a0
    8000467c:	00153513          	seqz	a0,a0
    80004680:	00813483          	ld	s1,8(sp)
    80004684:	02010113          	addi	sp,sp,32
    80004688:	00008067          	ret

000000008000468c <push_off>:
    8000468c:	fe010113          	addi	sp,sp,-32
    80004690:	00813823          	sd	s0,16(sp)
    80004694:	00113c23          	sd	ra,24(sp)
    80004698:	00913423          	sd	s1,8(sp)
    8000469c:	02010413          	addi	s0,sp,32
    800046a0:	100024f3          	csrr	s1,sstatus
    800046a4:	100027f3          	csrr	a5,sstatus
    800046a8:	ffd7f793          	andi	a5,a5,-3
    800046ac:	10079073          	csrw	sstatus,a5
    800046b0:	ffffe097          	auipc	ra,0xffffe
    800046b4:	714080e7          	jalr	1812(ra) # 80002dc4 <mycpu>
    800046b8:	07852783          	lw	a5,120(a0)
    800046bc:	02078663          	beqz	a5,800046e8 <push_off+0x5c>
    800046c0:	ffffe097          	auipc	ra,0xffffe
    800046c4:	704080e7          	jalr	1796(ra) # 80002dc4 <mycpu>
    800046c8:	07852783          	lw	a5,120(a0)
    800046cc:	01813083          	ld	ra,24(sp)
    800046d0:	01013403          	ld	s0,16(sp)
    800046d4:	0017879b          	addiw	a5,a5,1
    800046d8:	06f52c23          	sw	a5,120(a0)
    800046dc:	00813483          	ld	s1,8(sp)
    800046e0:	02010113          	addi	sp,sp,32
    800046e4:	00008067          	ret
    800046e8:	0014d493          	srli	s1,s1,0x1
    800046ec:	ffffe097          	auipc	ra,0xffffe
    800046f0:	6d8080e7          	jalr	1752(ra) # 80002dc4 <mycpu>
    800046f4:	0014f493          	andi	s1,s1,1
    800046f8:	06952e23          	sw	s1,124(a0)
    800046fc:	fc5ff06f          	j	800046c0 <push_off+0x34>

0000000080004700 <pop_off>:
    80004700:	ff010113          	addi	sp,sp,-16
    80004704:	00813023          	sd	s0,0(sp)
    80004708:	00113423          	sd	ra,8(sp)
    8000470c:	01010413          	addi	s0,sp,16
    80004710:	ffffe097          	auipc	ra,0xffffe
    80004714:	6b4080e7          	jalr	1716(ra) # 80002dc4 <mycpu>
    80004718:	100027f3          	csrr	a5,sstatus
    8000471c:	0027f793          	andi	a5,a5,2
    80004720:	04079663          	bnez	a5,8000476c <pop_off+0x6c>
    80004724:	07852783          	lw	a5,120(a0)
    80004728:	02f05a63          	blez	a5,8000475c <pop_off+0x5c>
    8000472c:	fff7871b          	addiw	a4,a5,-1
    80004730:	06e52c23          	sw	a4,120(a0)
    80004734:	00071c63          	bnez	a4,8000474c <pop_off+0x4c>
    80004738:	07c52783          	lw	a5,124(a0)
    8000473c:	00078863          	beqz	a5,8000474c <pop_off+0x4c>
    80004740:	100027f3          	csrr	a5,sstatus
    80004744:	0027e793          	ori	a5,a5,2
    80004748:	10079073          	csrw	sstatus,a5
    8000474c:	00813083          	ld	ra,8(sp)
    80004750:	00013403          	ld	s0,0(sp)
    80004754:	01010113          	addi	sp,sp,16
    80004758:	00008067          	ret
    8000475c:	00001517          	auipc	a0,0x1
    80004760:	d1c50513          	addi	a0,a0,-740 # 80005478 <digits+0x48>
    80004764:	fffff097          	auipc	ra,0xfffff
    80004768:	018080e7          	jalr	24(ra) # 8000377c <panic>
    8000476c:	00001517          	auipc	a0,0x1
    80004770:	cf450513          	addi	a0,a0,-780 # 80005460 <digits+0x30>
    80004774:	fffff097          	auipc	ra,0xfffff
    80004778:	008080e7          	jalr	8(ra) # 8000377c <panic>

000000008000477c <push_on>:
    8000477c:	fe010113          	addi	sp,sp,-32
    80004780:	00813823          	sd	s0,16(sp)
    80004784:	00113c23          	sd	ra,24(sp)
    80004788:	00913423          	sd	s1,8(sp)
    8000478c:	02010413          	addi	s0,sp,32
    80004790:	100024f3          	csrr	s1,sstatus
    80004794:	100027f3          	csrr	a5,sstatus
    80004798:	0027e793          	ori	a5,a5,2
    8000479c:	10079073          	csrw	sstatus,a5
    800047a0:	ffffe097          	auipc	ra,0xffffe
    800047a4:	624080e7          	jalr	1572(ra) # 80002dc4 <mycpu>
    800047a8:	07852783          	lw	a5,120(a0)
    800047ac:	02078663          	beqz	a5,800047d8 <push_on+0x5c>
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	614080e7          	jalr	1556(ra) # 80002dc4 <mycpu>
    800047b8:	07852783          	lw	a5,120(a0)
    800047bc:	01813083          	ld	ra,24(sp)
    800047c0:	01013403          	ld	s0,16(sp)
    800047c4:	0017879b          	addiw	a5,a5,1
    800047c8:	06f52c23          	sw	a5,120(a0)
    800047cc:	00813483          	ld	s1,8(sp)
    800047d0:	02010113          	addi	sp,sp,32
    800047d4:	00008067          	ret
    800047d8:	0014d493          	srli	s1,s1,0x1
    800047dc:	ffffe097          	auipc	ra,0xffffe
    800047e0:	5e8080e7          	jalr	1512(ra) # 80002dc4 <mycpu>
    800047e4:	0014f493          	andi	s1,s1,1
    800047e8:	06952e23          	sw	s1,124(a0)
    800047ec:	fc5ff06f          	j	800047b0 <push_on+0x34>

00000000800047f0 <pop_on>:
    800047f0:	ff010113          	addi	sp,sp,-16
    800047f4:	00813023          	sd	s0,0(sp)
    800047f8:	00113423          	sd	ra,8(sp)
    800047fc:	01010413          	addi	s0,sp,16
    80004800:	ffffe097          	auipc	ra,0xffffe
    80004804:	5c4080e7          	jalr	1476(ra) # 80002dc4 <mycpu>
    80004808:	100027f3          	csrr	a5,sstatus
    8000480c:	0027f793          	andi	a5,a5,2
    80004810:	04078463          	beqz	a5,80004858 <pop_on+0x68>
    80004814:	07852783          	lw	a5,120(a0)
    80004818:	02f05863          	blez	a5,80004848 <pop_on+0x58>
    8000481c:	fff7879b          	addiw	a5,a5,-1
    80004820:	06f52c23          	sw	a5,120(a0)
    80004824:	07853783          	ld	a5,120(a0)
    80004828:	00079863          	bnez	a5,80004838 <pop_on+0x48>
    8000482c:	100027f3          	csrr	a5,sstatus
    80004830:	ffd7f793          	andi	a5,a5,-3
    80004834:	10079073          	csrw	sstatus,a5
    80004838:	00813083          	ld	ra,8(sp)
    8000483c:	00013403          	ld	s0,0(sp)
    80004840:	01010113          	addi	sp,sp,16
    80004844:	00008067          	ret
    80004848:	00001517          	auipc	a0,0x1
    8000484c:	c5850513          	addi	a0,a0,-936 # 800054a0 <digits+0x70>
    80004850:	fffff097          	auipc	ra,0xfffff
    80004854:	f2c080e7          	jalr	-212(ra) # 8000377c <panic>
    80004858:	00001517          	auipc	a0,0x1
    8000485c:	c2850513          	addi	a0,a0,-984 # 80005480 <digits+0x50>
    80004860:	fffff097          	auipc	ra,0xfffff
    80004864:	f1c080e7          	jalr	-228(ra) # 8000377c <panic>

0000000080004868 <__memset>:
    80004868:	ff010113          	addi	sp,sp,-16
    8000486c:	00813423          	sd	s0,8(sp)
    80004870:	01010413          	addi	s0,sp,16
    80004874:	1a060e63          	beqz	a2,80004a30 <__memset+0x1c8>
    80004878:	40a007b3          	neg	a5,a0
    8000487c:	0077f793          	andi	a5,a5,7
    80004880:	00778693          	addi	a3,a5,7
    80004884:	00b00813          	li	a6,11
    80004888:	0ff5f593          	andi	a1,a1,255
    8000488c:	fff6071b          	addiw	a4,a2,-1
    80004890:	1b06e663          	bltu	a3,a6,80004a3c <__memset+0x1d4>
    80004894:	1cd76463          	bltu	a4,a3,80004a5c <__memset+0x1f4>
    80004898:	1a078e63          	beqz	a5,80004a54 <__memset+0x1ec>
    8000489c:	00b50023          	sb	a1,0(a0)
    800048a0:	00100713          	li	a4,1
    800048a4:	1ae78463          	beq	a5,a4,80004a4c <__memset+0x1e4>
    800048a8:	00b500a3          	sb	a1,1(a0)
    800048ac:	00200713          	li	a4,2
    800048b0:	1ae78a63          	beq	a5,a4,80004a64 <__memset+0x1fc>
    800048b4:	00b50123          	sb	a1,2(a0)
    800048b8:	00300713          	li	a4,3
    800048bc:	18e78463          	beq	a5,a4,80004a44 <__memset+0x1dc>
    800048c0:	00b501a3          	sb	a1,3(a0)
    800048c4:	00400713          	li	a4,4
    800048c8:	1ae78263          	beq	a5,a4,80004a6c <__memset+0x204>
    800048cc:	00b50223          	sb	a1,4(a0)
    800048d0:	00500713          	li	a4,5
    800048d4:	1ae78063          	beq	a5,a4,80004a74 <__memset+0x20c>
    800048d8:	00b502a3          	sb	a1,5(a0)
    800048dc:	00700713          	li	a4,7
    800048e0:	18e79e63          	bne	a5,a4,80004a7c <__memset+0x214>
    800048e4:	00b50323          	sb	a1,6(a0)
    800048e8:	00700e93          	li	t4,7
    800048ec:	00859713          	slli	a4,a1,0x8
    800048f0:	00e5e733          	or	a4,a1,a4
    800048f4:	01059e13          	slli	t3,a1,0x10
    800048f8:	01c76e33          	or	t3,a4,t3
    800048fc:	01859313          	slli	t1,a1,0x18
    80004900:	006e6333          	or	t1,t3,t1
    80004904:	02059893          	slli	a7,a1,0x20
    80004908:	40f60e3b          	subw	t3,a2,a5
    8000490c:	011368b3          	or	a7,t1,a7
    80004910:	02859813          	slli	a6,a1,0x28
    80004914:	0108e833          	or	a6,a7,a6
    80004918:	03059693          	slli	a3,a1,0x30
    8000491c:	003e589b          	srliw	a7,t3,0x3
    80004920:	00d866b3          	or	a3,a6,a3
    80004924:	03859713          	slli	a4,a1,0x38
    80004928:	00389813          	slli	a6,a7,0x3
    8000492c:	00f507b3          	add	a5,a0,a5
    80004930:	00e6e733          	or	a4,a3,a4
    80004934:	000e089b          	sext.w	a7,t3
    80004938:	00f806b3          	add	a3,a6,a5
    8000493c:	00e7b023          	sd	a4,0(a5)
    80004940:	00878793          	addi	a5,a5,8
    80004944:	fed79ce3          	bne	a5,a3,8000493c <__memset+0xd4>
    80004948:	ff8e7793          	andi	a5,t3,-8
    8000494c:	0007871b          	sext.w	a4,a5
    80004950:	01d787bb          	addw	a5,a5,t4
    80004954:	0ce88e63          	beq	a7,a4,80004a30 <__memset+0x1c8>
    80004958:	00f50733          	add	a4,a0,a5
    8000495c:	00b70023          	sb	a1,0(a4)
    80004960:	0017871b          	addiw	a4,a5,1
    80004964:	0cc77663          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    80004968:	00e50733          	add	a4,a0,a4
    8000496c:	00b70023          	sb	a1,0(a4)
    80004970:	0027871b          	addiw	a4,a5,2
    80004974:	0ac77e63          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    80004978:	00e50733          	add	a4,a0,a4
    8000497c:	00b70023          	sb	a1,0(a4)
    80004980:	0037871b          	addiw	a4,a5,3
    80004984:	0ac77663          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    80004988:	00e50733          	add	a4,a0,a4
    8000498c:	00b70023          	sb	a1,0(a4)
    80004990:	0047871b          	addiw	a4,a5,4
    80004994:	08c77e63          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    80004998:	00e50733          	add	a4,a0,a4
    8000499c:	00b70023          	sb	a1,0(a4)
    800049a0:	0057871b          	addiw	a4,a5,5
    800049a4:	08c77663          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    800049a8:	00e50733          	add	a4,a0,a4
    800049ac:	00b70023          	sb	a1,0(a4)
    800049b0:	0067871b          	addiw	a4,a5,6
    800049b4:	06c77e63          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    800049b8:	00e50733          	add	a4,a0,a4
    800049bc:	00b70023          	sb	a1,0(a4)
    800049c0:	0077871b          	addiw	a4,a5,7
    800049c4:	06c77663          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    800049c8:	00e50733          	add	a4,a0,a4
    800049cc:	00b70023          	sb	a1,0(a4)
    800049d0:	0087871b          	addiw	a4,a5,8
    800049d4:	04c77e63          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    800049d8:	00e50733          	add	a4,a0,a4
    800049dc:	00b70023          	sb	a1,0(a4)
    800049e0:	0097871b          	addiw	a4,a5,9
    800049e4:	04c77663          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    800049e8:	00e50733          	add	a4,a0,a4
    800049ec:	00b70023          	sb	a1,0(a4)
    800049f0:	00a7871b          	addiw	a4,a5,10
    800049f4:	02c77e63          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    800049f8:	00e50733          	add	a4,a0,a4
    800049fc:	00b70023          	sb	a1,0(a4)
    80004a00:	00b7871b          	addiw	a4,a5,11
    80004a04:	02c77663          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    80004a08:	00e50733          	add	a4,a0,a4
    80004a0c:	00b70023          	sb	a1,0(a4)
    80004a10:	00c7871b          	addiw	a4,a5,12
    80004a14:	00c77e63          	bgeu	a4,a2,80004a30 <__memset+0x1c8>
    80004a18:	00e50733          	add	a4,a0,a4
    80004a1c:	00b70023          	sb	a1,0(a4)
    80004a20:	00d7879b          	addiw	a5,a5,13
    80004a24:	00c7f663          	bgeu	a5,a2,80004a30 <__memset+0x1c8>
    80004a28:	00f507b3          	add	a5,a0,a5
    80004a2c:	00b78023          	sb	a1,0(a5)
    80004a30:	00813403          	ld	s0,8(sp)
    80004a34:	01010113          	addi	sp,sp,16
    80004a38:	00008067          	ret
    80004a3c:	00b00693          	li	a3,11
    80004a40:	e55ff06f          	j	80004894 <__memset+0x2c>
    80004a44:	00300e93          	li	t4,3
    80004a48:	ea5ff06f          	j	800048ec <__memset+0x84>
    80004a4c:	00100e93          	li	t4,1
    80004a50:	e9dff06f          	j	800048ec <__memset+0x84>
    80004a54:	00000e93          	li	t4,0
    80004a58:	e95ff06f          	j	800048ec <__memset+0x84>
    80004a5c:	00000793          	li	a5,0
    80004a60:	ef9ff06f          	j	80004958 <__memset+0xf0>
    80004a64:	00200e93          	li	t4,2
    80004a68:	e85ff06f          	j	800048ec <__memset+0x84>
    80004a6c:	00400e93          	li	t4,4
    80004a70:	e7dff06f          	j	800048ec <__memset+0x84>
    80004a74:	00500e93          	li	t4,5
    80004a78:	e75ff06f          	j	800048ec <__memset+0x84>
    80004a7c:	00600e93          	li	t4,6
    80004a80:	e6dff06f          	j	800048ec <__memset+0x84>

0000000080004a84 <__memmove>:
    80004a84:	ff010113          	addi	sp,sp,-16
    80004a88:	00813423          	sd	s0,8(sp)
    80004a8c:	01010413          	addi	s0,sp,16
    80004a90:	0e060863          	beqz	a2,80004b80 <__memmove+0xfc>
    80004a94:	fff6069b          	addiw	a3,a2,-1
    80004a98:	0006881b          	sext.w	a6,a3
    80004a9c:	0ea5e863          	bltu	a1,a0,80004b8c <__memmove+0x108>
    80004aa0:	00758713          	addi	a4,a1,7
    80004aa4:	00a5e7b3          	or	a5,a1,a0
    80004aa8:	40a70733          	sub	a4,a4,a0
    80004aac:	0077f793          	andi	a5,a5,7
    80004ab0:	00f73713          	sltiu	a4,a4,15
    80004ab4:	00174713          	xori	a4,a4,1
    80004ab8:	0017b793          	seqz	a5,a5
    80004abc:	00e7f7b3          	and	a5,a5,a4
    80004ac0:	10078863          	beqz	a5,80004bd0 <__memmove+0x14c>
    80004ac4:	00900793          	li	a5,9
    80004ac8:	1107f463          	bgeu	a5,a6,80004bd0 <__memmove+0x14c>
    80004acc:	0036581b          	srliw	a6,a2,0x3
    80004ad0:	fff8081b          	addiw	a6,a6,-1
    80004ad4:	02081813          	slli	a6,a6,0x20
    80004ad8:	01d85893          	srli	a7,a6,0x1d
    80004adc:	00858813          	addi	a6,a1,8
    80004ae0:	00058793          	mv	a5,a1
    80004ae4:	00050713          	mv	a4,a0
    80004ae8:	01088833          	add	a6,a7,a6
    80004aec:	0007b883          	ld	a7,0(a5)
    80004af0:	00878793          	addi	a5,a5,8
    80004af4:	00870713          	addi	a4,a4,8
    80004af8:	ff173c23          	sd	a7,-8(a4)
    80004afc:	ff0798e3          	bne	a5,a6,80004aec <__memmove+0x68>
    80004b00:	ff867713          	andi	a4,a2,-8
    80004b04:	02071793          	slli	a5,a4,0x20
    80004b08:	0207d793          	srli	a5,a5,0x20
    80004b0c:	00f585b3          	add	a1,a1,a5
    80004b10:	40e686bb          	subw	a3,a3,a4
    80004b14:	00f507b3          	add	a5,a0,a5
    80004b18:	06e60463          	beq	a2,a4,80004b80 <__memmove+0xfc>
    80004b1c:	0005c703          	lbu	a4,0(a1)
    80004b20:	00e78023          	sb	a4,0(a5)
    80004b24:	04068e63          	beqz	a3,80004b80 <__memmove+0xfc>
    80004b28:	0015c603          	lbu	a2,1(a1)
    80004b2c:	00100713          	li	a4,1
    80004b30:	00c780a3          	sb	a2,1(a5)
    80004b34:	04e68663          	beq	a3,a4,80004b80 <__memmove+0xfc>
    80004b38:	0025c603          	lbu	a2,2(a1)
    80004b3c:	00200713          	li	a4,2
    80004b40:	00c78123          	sb	a2,2(a5)
    80004b44:	02e68e63          	beq	a3,a4,80004b80 <__memmove+0xfc>
    80004b48:	0035c603          	lbu	a2,3(a1)
    80004b4c:	00300713          	li	a4,3
    80004b50:	00c781a3          	sb	a2,3(a5)
    80004b54:	02e68663          	beq	a3,a4,80004b80 <__memmove+0xfc>
    80004b58:	0045c603          	lbu	a2,4(a1)
    80004b5c:	00400713          	li	a4,4
    80004b60:	00c78223          	sb	a2,4(a5)
    80004b64:	00e68e63          	beq	a3,a4,80004b80 <__memmove+0xfc>
    80004b68:	0055c603          	lbu	a2,5(a1)
    80004b6c:	00500713          	li	a4,5
    80004b70:	00c782a3          	sb	a2,5(a5)
    80004b74:	00e68663          	beq	a3,a4,80004b80 <__memmove+0xfc>
    80004b78:	0065c703          	lbu	a4,6(a1)
    80004b7c:	00e78323          	sb	a4,6(a5)
    80004b80:	00813403          	ld	s0,8(sp)
    80004b84:	01010113          	addi	sp,sp,16
    80004b88:	00008067          	ret
    80004b8c:	02061713          	slli	a4,a2,0x20
    80004b90:	02075713          	srli	a4,a4,0x20
    80004b94:	00e587b3          	add	a5,a1,a4
    80004b98:	f0f574e3          	bgeu	a0,a5,80004aa0 <__memmove+0x1c>
    80004b9c:	02069613          	slli	a2,a3,0x20
    80004ba0:	02065613          	srli	a2,a2,0x20
    80004ba4:	fff64613          	not	a2,a2
    80004ba8:	00e50733          	add	a4,a0,a4
    80004bac:	00c78633          	add	a2,a5,a2
    80004bb0:	fff7c683          	lbu	a3,-1(a5)
    80004bb4:	fff78793          	addi	a5,a5,-1
    80004bb8:	fff70713          	addi	a4,a4,-1
    80004bbc:	00d70023          	sb	a3,0(a4)
    80004bc0:	fec798e3          	bne	a5,a2,80004bb0 <__memmove+0x12c>
    80004bc4:	00813403          	ld	s0,8(sp)
    80004bc8:	01010113          	addi	sp,sp,16
    80004bcc:	00008067          	ret
    80004bd0:	02069713          	slli	a4,a3,0x20
    80004bd4:	02075713          	srli	a4,a4,0x20
    80004bd8:	00170713          	addi	a4,a4,1
    80004bdc:	00e50733          	add	a4,a0,a4
    80004be0:	00050793          	mv	a5,a0
    80004be4:	0005c683          	lbu	a3,0(a1)
    80004be8:	00178793          	addi	a5,a5,1
    80004bec:	00158593          	addi	a1,a1,1
    80004bf0:	fed78fa3          	sb	a3,-1(a5)
    80004bf4:	fee798e3          	bne	a5,a4,80004be4 <__memmove+0x160>
    80004bf8:	f89ff06f          	j	80004b80 <__memmove+0xfc>

0000000080004bfc <__mem_free>:
    80004bfc:	ff010113          	addi	sp,sp,-16
    80004c00:	00813423          	sd	s0,8(sp)
    80004c04:	01010413          	addi	s0,sp,16
    80004c08:	00001597          	auipc	a1,0x1
    80004c0c:	35058593          	addi	a1,a1,848 # 80005f58 <freep>
    80004c10:	0005b783          	ld	a5,0(a1)
    80004c14:	ff050693          	addi	a3,a0,-16
    80004c18:	0007b703          	ld	a4,0(a5)
    80004c1c:	00d7fc63          	bgeu	a5,a3,80004c34 <__mem_free+0x38>
    80004c20:	00e6ee63          	bltu	a3,a4,80004c3c <__mem_free+0x40>
    80004c24:	00e7fc63          	bgeu	a5,a4,80004c3c <__mem_free+0x40>
    80004c28:	00070793          	mv	a5,a4
    80004c2c:	0007b703          	ld	a4,0(a5)
    80004c30:	fed7e8e3          	bltu	a5,a3,80004c20 <__mem_free+0x24>
    80004c34:	fee7eae3          	bltu	a5,a4,80004c28 <__mem_free+0x2c>
    80004c38:	fee6f8e3          	bgeu	a3,a4,80004c28 <__mem_free+0x2c>
    80004c3c:	ff852803          	lw	a6,-8(a0)
    80004c40:	02081613          	slli	a2,a6,0x20
    80004c44:	01c65613          	srli	a2,a2,0x1c
    80004c48:	00c68633          	add	a2,a3,a2
    80004c4c:	02c70a63          	beq	a4,a2,80004c80 <__mem_free+0x84>
    80004c50:	fee53823          	sd	a4,-16(a0)
    80004c54:	0087a503          	lw	a0,8(a5)
    80004c58:	02051613          	slli	a2,a0,0x20
    80004c5c:	01c65613          	srli	a2,a2,0x1c
    80004c60:	00c78633          	add	a2,a5,a2
    80004c64:	04c68263          	beq	a3,a2,80004ca8 <__mem_free+0xac>
    80004c68:	00813403          	ld	s0,8(sp)
    80004c6c:	00d7b023          	sd	a3,0(a5)
    80004c70:	00f5b023          	sd	a5,0(a1)
    80004c74:	00000513          	li	a0,0
    80004c78:	01010113          	addi	sp,sp,16
    80004c7c:	00008067          	ret
    80004c80:	00872603          	lw	a2,8(a4)
    80004c84:	00073703          	ld	a4,0(a4)
    80004c88:	0106083b          	addw	a6,a2,a6
    80004c8c:	ff052c23          	sw	a6,-8(a0)
    80004c90:	fee53823          	sd	a4,-16(a0)
    80004c94:	0087a503          	lw	a0,8(a5)
    80004c98:	02051613          	slli	a2,a0,0x20
    80004c9c:	01c65613          	srli	a2,a2,0x1c
    80004ca0:	00c78633          	add	a2,a5,a2
    80004ca4:	fcc692e3          	bne	a3,a2,80004c68 <__mem_free+0x6c>
    80004ca8:	00813403          	ld	s0,8(sp)
    80004cac:	0105053b          	addw	a0,a0,a6
    80004cb0:	00a7a423          	sw	a0,8(a5)
    80004cb4:	00e7b023          	sd	a4,0(a5)
    80004cb8:	00f5b023          	sd	a5,0(a1)
    80004cbc:	00000513          	li	a0,0
    80004cc0:	01010113          	addi	sp,sp,16
    80004cc4:	00008067          	ret

0000000080004cc8 <__mem_alloc>:
    80004cc8:	fc010113          	addi	sp,sp,-64
    80004ccc:	02813823          	sd	s0,48(sp)
    80004cd0:	02913423          	sd	s1,40(sp)
    80004cd4:	03213023          	sd	s2,32(sp)
    80004cd8:	01513423          	sd	s5,8(sp)
    80004cdc:	02113c23          	sd	ra,56(sp)
    80004ce0:	01313c23          	sd	s3,24(sp)
    80004ce4:	01413823          	sd	s4,16(sp)
    80004ce8:	01613023          	sd	s6,0(sp)
    80004cec:	04010413          	addi	s0,sp,64
    80004cf0:	00001a97          	auipc	s5,0x1
    80004cf4:	268a8a93          	addi	s5,s5,616 # 80005f58 <freep>
    80004cf8:	00f50913          	addi	s2,a0,15
    80004cfc:	000ab683          	ld	a3,0(s5)
    80004d00:	00495913          	srli	s2,s2,0x4
    80004d04:	0019049b          	addiw	s1,s2,1
    80004d08:	00048913          	mv	s2,s1
    80004d0c:	0c068c63          	beqz	a3,80004de4 <__mem_alloc+0x11c>
    80004d10:	0006b503          	ld	a0,0(a3)
    80004d14:	00852703          	lw	a4,8(a0)
    80004d18:	10977063          	bgeu	a4,s1,80004e18 <__mem_alloc+0x150>
    80004d1c:	000017b7          	lui	a5,0x1
    80004d20:	0009099b          	sext.w	s3,s2
    80004d24:	0af4e863          	bltu	s1,a5,80004dd4 <__mem_alloc+0x10c>
    80004d28:	02099a13          	slli	s4,s3,0x20
    80004d2c:	01ca5a13          	srli	s4,s4,0x1c
    80004d30:	fff00b13          	li	s6,-1
    80004d34:	0100006f          	j	80004d44 <__mem_alloc+0x7c>
    80004d38:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80004d3c:	00852703          	lw	a4,8(a0)
    80004d40:	04977463          	bgeu	a4,s1,80004d88 <__mem_alloc+0xc0>
    80004d44:	00050793          	mv	a5,a0
    80004d48:	fea698e3          	bne	a3,a0,80004d38 <__mem_alloc+0x70>
    80004d4c:	000a0513          	mv	a0,s4
    80004d50:	00000097          	auipc	ra,0x0
    80004d54:	1f0080e7          	jalr	496(ra) # 80004f40 <kvmincrease>
    80004d58:	00050793          	mv	a5,a0
    80004d5c:	01050513          	addi	a0,a0,16
    80004d60:	07678e63          	beq	a5,s6,80004ddc <__mem_alloc+0x114>
    80004d64:	0137a423          	sw	s3,8(a5)
    80004d68:	00000097          	auipc	ra,0x0
    80004d6c:	e94080e7          	jalr	-364(ra) # 80004bfc <__mem_free>
    80004d70:	000ab783          	ld	a5,0(s5)
    80004d74:	06078463          	beqz	a5,80004ddc <__mem_alloc+0x114>
    80004d78:	0007b503          	ld	a0,0(a5)
    80004d7c:	00078693          	mv	a3,a5
    80004d80:	00852703          	lw	a4,8(a0)
    80004d84:	fc9760e3          	bltu	a4,s1,80004d44 <__mem_alloc+0x7c>
    80004d88:	08e48263          	beq	s1,a4,80004e0c <__mem_alloc+0x144>
    80004d8c:	4127073b          	subw	a4,a4,s2
    80004d90:	02071693          	slli	a3,a4,0x20
    80004d94:	01c6d693          	srli	a3,a3,0x1c
    80004d98:	00e52423          	sw	a4,8(a0)
    80004d9c:	00d50533          	add	a0,a0,a3
    80004da0:	01252423          	sw	s2,8(a0)
    80004da4:	00fab023          	sd	a5,0(s5)
    80004da8:	01050513          	addi	a0,a0,16
    80004dac:	03813083          	ld	ra,56(sp)
    80004db0:	03013403          	ld	s0,48(sp)
    80004db4:	02813483          	ld	s1,40(sp)
    80004db8:	02013903          	ld	s2,32(sp)
    80004dbc:	01813983          	ld	s3,24(sp)
    80004dc0:	01013a03          	ld	s4,16(sp)
    80004dc4:	00813a83          	ld	s5,8(sp)
    80004dc8:	00013b03          	ld	s6,0(sp)
    80004dcc:	04010113          	addi	sp,sp,64
    80004dd0:	00008067          	ret
    80004dd4:	000019b7          	lui	s3,0x1
    80004dd8:	f51ff06f          	j	80004d28 <__mem_alloc+0x60>
    80004ddc:	00000513          	li	a0,0
    80004de0:	fcdff06f          	j	80004dac <__mem_alloc+0xe4>
    80004de4:	00002797          	auipc	a5,0x2
    80004de8:	40c78793          	addi	a5,a5,1036 # 800071f0 <base>
    80004dec:	00078513          	mv	a0,a5
    80004df0:	00fab023          	sd	a5,0(s5)
    80004df4:	00f7b023          	sd	a5,0(a5)
    80004df8:	00000713          	li	a4,0
    80004dfc:	00002797          	auipc	a5,0x2
    80004e00:	3e07ae23          	sw	zero,1020(a5) # 800071f8 <base+0x8>
    80004e04:	00050693          	mv	a3,a0
    80004e08:	f11ff06f          	j	80004d18 <__mem_alloc+0x50>
    80004e0c:	00053703          	ld	a4,0(a0)
    80004e10:	00e7b023          	sd	a4,0(a5)
    80004e14:	f91ff06f          	j	80004da4 <__mem_alloc+0xdc>
    80004e18:	00068793          	mv	a5,a3
    80004e1c:	f6dff06f          	j	80004d88 <__mem_alloc+0xc0>

0000000080004e20 <__putc>:
    80004e20:	fe010113          	addi	sp,sp,-32
    80004e24:	00813823          	sd	s0,16(sp)
    80004e28:	00113c23          	sd	ra,24(sp)
    80004e2c:	02010413          	addi	s0,sp,32
    80004e30:	00050793          	mv	a5,a0
    80004e34:	fef40593          	addi	a1,s0,-17
    80004e38:	00100613          	li	a2,1
    80004e3c:	00000513          	li	a0,0
    80004e40:	fef407a3          	sb	a5,-17(s0)
    80004e44:	fffff097          	auipc	ra,0xfffff
    80004e48:	918080e7          	jalr	-1768(ra) # 8000375c <console_write>
    80004e4c:	01813083          	ld	ra,24(sp)
    80004e50:	01013403          	ld	s0,16(sp)
    80004e54:	02010113          	addi	sp,sp,32
    80004e58:	00008067          	ret

0000000080004e5c <__getc>:
    80004e5c:	fe010113          	addi	sp,sp,-32
    80004e60:	00813823          	sd	s0,16(sp)
    80004e64:	00113c23          	sd	ra,24(sp)
    80004e68:	02010413          	addi	s0,sp,32
    80004e6c:	fe840593          	addi	a1,s0,-24
    80004e70:	00100613          	li	a2,1
    80004e74:	00000513          	li	a0,0
    80004e78:	fffff097          	auipc	ra,0xfffff
    80004e7c:	8c4080e7          	jalr	-1852(ra) # 8000373c <console_read>
    80004e80:	fe844503          	lbu	a0,-24(s0)
    80004e84:	01813083          	ld	ra,24(sp)
    80004e88:	01013403          	ld	s0,16(sp)
    80004e8c:	02010113          	addi	sp,sp,32
    80004e90:	00008067          	ret

0000000080004e94 <console_handler>:
    80004e94:	fe010113          	addi	sp,sp,-32
    80004e98:	00813823          	sd	s0,16(sp)
    80004e9c:	00113c23          	sd	ra,24(sp)
    80004ea0:	00913423          	sd	s1,8(sp)
    80004ea4:	02010413          	addi	s0,sp,32
    80004ea8:	14202773          	csrr	a4,scause
    80004eac:	100027f3          	csrr	a5,sstatus
    80004eb0:	0027f793          	andi	a5,a5,2
    80004eb4:	06079e63          	bnez	a5,80004f30 <console_handler+0x9c>
    80004eb8:	00074c63          	bltz	a4,80004ed0 <console_handler+0x3c>
    80004ebc:	01813083          	ld	ra,24(sp)
    80004ec0:	01013403          	ld	s0,16(sp)
    80004ec4:	00813483          	ld	s1,8(sp)
    80004ec8:	02010113          	addi	sp,sp,32
    80004ecc:	00008067          	ret
    80004ed0:	0ff77713          	andi	a4,a4,255
    80004ed4:	00900793          	li	a5,9
    80004ed8:	fef712e3          	bne	a4,a5,80004ebc <console_handler+0x28>
    80004edc:	ffffe097          	auipc	ra,0xffffe
    80004ee0:	4b8080e7          	jalr	1208(ra) # 80003394 <plic_claim>
    80004ee4:	00a00793          	li	a5,10
    80004ee8:	00050493          	mv	s1,a0
    80004eec:	02f50c63          	beq	a0,a5,80004f24 <console_handler+0x90>
    80004ef0:	fc0506e3          	beqz	a0,80004ebc <console_handler+0x28>
    80004ef4:	00050593          	mv	a1,a0
    80004ef8:	00000517          	auipc	a0,0x0
    80004efc:	4b050513          	addi	a0,a0,1200 # 800053a8 <_ZZ12printIntegermE6digits+0xe0>
    80004f00:	fffff097          	auipc	ra,0xfffff
    80004f04:	8d8080e7          	jalr	-1832(ra) # 800037d8 <__printf>
    80004f08:	01013403          	ld	s0,16(sp)
    80004f0c:	01813083          	ld	ra,24(sp)
    80004f10:	00048513          	mv	a0,s1
    80004f14:	00813483          	ld	s1,8(sp)
    80004f18:	02010113          	addi	sp,sp,32
    80004f1c:	ffffe317          	auipc	t1,0xffffe
    80004f20:	4b030067          	jr	1200(t1) # 800033cc <plic_complete>
    80004f24:	fffff097          	auipc	ra,0xfffff
    80004f28:	1bc080e7          	jalr	444(ra) # 800040e0 <uartintr>
    80004f2c:	fddff06f          	j	80004f08 <console_handler+0x74>
    80004f30:	00000517          	auipc	a0,0x0
    80004f34:	57850513          	addi	a0,a0,1400 # 800054a8 <digits+0x78>
    80004f38:	fffff097          	auipc	ra,0xfffff
    80004f3c:	844080e7          	jalr	-1980(ra) # 8000377c <panic>

0000000080004f40 <kvmincrease>:
    80004f40:	fe010113          	addi	sp,sp,-32
    80004f44:	01213023          	sd	s2,0(sp)
    80004f48:	00001937          	lui	s2,0x1
    80004f4c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004f50:	00813823          	sd	s0,16(sp)
    80004f54:	00113c23          	sd	ra,24(sp)
    80004f58:	00913423          	sd	s1,8(sp)
    80004f5c:	02010413          	addi	s0,sp,32
    80004f60:	01250933          	add	s2,a0,s2
    80004f64:	00c95913          	srli	s2,s2,0xc
    80004f68:	02090863          	beqz	s2,80004f98 <kvmincrease+0x58>
    80004f6c:	00000493          	li	s1,0
    80004f70:	00148493          	addi	s1,s1,1
    80004f74:	fffff097          	auipc	ra,0xfffff
    80004f78:	4bc080e7          	jalr	1212(ra) # 80004430 <kalloc>
    80004f7c:	fe991ae3          	bne	s2,s1,80004f70 <kvmincrease+0x30>
    80004f80:	01813083          	ld	ra,24(sp)
    80004f84:	01013403          	ld	s0,16(sp)
    80004f88:	00813483          	ld	s1,8(sp)
    80004f8c:	00013903          	ld	s2,0(sp)
    80004f90:	02010113          	addi	sp,sp,32
    80004f94:	00008067          	ret
    80004f98:	01813083          	ld	ra,24(sp)
    80004f9c:	01013403          	ld	s0,16(sp)
    80004fa0:	00813483          	ld	s1,8(sp)
    80004fa4:	00013903          	ld	s2,0(sp)
    80004fa8:	00000513          	li	a0,0
    80004fac:	02010113          	addi	sp,sp,32
    80004fb0:	00008067          	ret
	...

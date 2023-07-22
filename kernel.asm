
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	ee813103          	ld	sp,-280(sp) # 80005ee8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	391020ef          	jal	ra,80002bac <start>

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
    80001084:	6a0010ef          	jal	ra,80002724 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011e0:	544010ef          	jal	ra,80002724 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012f0:	628010ef          	jal	ra,80002918 <_ZN5Riscv20handleTimerInterruptEv>

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
    80001400:	4f0010ef          	jal	ra,800028f0 <_ZN5Riscv22handleConsoleInterruptEv>

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
    80001648:	8bc7b783          	ld	a5,-1860(a5) # 80005f00 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000164c:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001650:	01000513          	li	a0,16
    80001654:	00001097          	auipc	ra,0x1
    80001658:	db0080e7          	jalr	-592(ra) # 80002404 <_Znwm>
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
    80001678:	88c7b783          	ld	a5,-1908(a5) # 80005f00 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    80001714:	d44080e7          	jalr	-700(ra) # 80002454 <_ZdlPv>
    80001718:	020480a3          	sb	zero,33(s1)
        Scheduler::put(tcb);
    8000171c:	00048513          	mv	a0,s1
    80001720:	00001097          	auipc	ra,0x1
    80001724:	2c0080e7          	jalr	704(ra) # 800029e0 <_ZN9Scheduler3putEP3TCB>
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
    80001778:	c90080e7          	jalr	-880(ra) # 80002404 <_Znwm>
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
    800017dc:	c7c080e7          	jalr	-900(ra) # 80002454 <_ZdlPv>
    800017e0:	020900a3          	sb	zero,33(s2)

    while (this->blocked.peekFirst()) {
        TCB* tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    800017e4:	00090513          	mv	a0,s2
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	1f8080e7          	jalr	504(ra) # 800029e0 <_ZN9Scheduler3putEP3TCB>
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
    800018d8:	1ac080e7          	jalr	428(ra) # 80002a80 <_Z11printStringPKc>
        printInteger(i);
    800018dc:	00048513          	mv	a0,s1
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	210080e7          	jalr	528(ra) # 80002af0 <_Z12printIntegerm>
        printString("\n");
    800018e8:	00004517          	auipc	a0,0x4
    800018ec:	8c050513          	addi	a0,a0,-1856 # 800051a8 <CONSOLE_STATUS+0x198>
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	190080e7          	jalr	400(ra) # 80002a80 <_Z11printStringPKc>
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
    80001914:	170080e7          	jalr	368(ra) # 80002a80 <_Z11printStringPKc>
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
    80001934:	150080e7          	jalr	336(ra) # 80002a80 <_Z11printStringPKc>
    printInteger(t1);
    80001938:	00090513          	mv	a0,s2
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	1b4080e7          	jalr	436(ra) # 80002af0 <_Z12printIntegerm>
    printString("\n");
    80001944:	00004517          	auipc	a0,0x4
    80001948:	86450513          	addi	a0,a0,-1948 # 800051a8 <CONSOLE_STATUS+0x198>
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	134080e7          	jalr	308(ra) # 80002a80 <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    80001954:	01400513          	li	a0,20
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	ee4080e7          	jalr	-284(ra) # 8000183c <_ZL9fibonaccim>
    80001960:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001964:	00003517          	auipc	a0,0x3
    80001968:	6dc50513          	addi	a0,a0,1756 # 80005040 <CONSOLE_STATUS+0x30>
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	114080e7          	jalr	276(ra) # 80002a80 <_Z11printStringPKc>
    printInteger(result);
    80001974:	00090513          	mv	a0,s2
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	178080e7          	jalr	376(ra) # 80002af0 <_Z12printIntegerm>
    printString("\n");
    80001980:	00004517          	auipc	a0,0x4
    80001984:	82850513          	addi	a0,a0,-2008 # 800051a8 <CONSOLE_STATUS+0x198>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	0f8080e7          	jalr	248(ra) # 80002a80 <_Z11printStringPKc>
    80001990:	0380006f          	j	800019c8 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001994:	00003517          	auipc	a0,0x3
    80001998:	68c50513          	addi	a0,a0,1676 # 80005020 <CONSOLE_STATUS+0x10>
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	0e4080e7          	jalr	228(ra) # 80002a80 <_Z11printStringPKc>
        printInteger(i);
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	148080e7          	jalr	328(ra) # 80002af0 <_Z12printIntegerm>
        printString("\n");
    800019b0:	00003517          	auipc	a0,0x3
    800019b4:	7f850513          	addi	a0,a0,2040 # 800051a8 <CONSOLE_STATUS+0x198>
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	0c8080e7          	jalr	200(ra) # 80002a80 <_Z11printStringPKc>
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
    80001a24:	060080e7          	jalr	96(ra) # 80002a80 <_Z11printStringPKc>
        printInteger(i);
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	0c4080e7          	jalr	196(ra) # 80002af0 <_Z12printIntegerm>
        printString("\n");
    80001a34:	00003517          	auipc	a0,0x3
    80001a38:	77450513          	addi	a0,a0,1908 # 800051a8 <CONSOLE_STATUS+0x198>
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	044080e7          	jalr	68(ra) # 80002a80 <_Z11printStringPKc>
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
    80001a60:	024080e7          	jalr	36(ra) # 80002a80 <_Z11printStringPKc>
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
    80001a8c:	ff8080e7          	jalr	-8(ra) # 80002a80 <_Z11printStringPKc>
    printInteger(result);
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	05c080e7          	jalr	92(ra) # 80002af0 <_Z12printIntegerm>
    printString("\n");
    80001a9c:	00003517          	auipc	a0,0x3
    80001aa0:	70c50513          	addi	a0,a0,1804 # 800051a8 <CONSOLE_STATUS+0x198>
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	fdc080e7          	jalr	-36(ra) # 80002a80 <_Z11printStringPKc>
    80001aac:	0380006f          	j	80001ae4 <_Z11workerBodyBPv+0xf4>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001ab0:	00003517          	auipc	a0,0x3
    80001ab4:	5a050513          	addi	a0,a0,1440 # 80005050 <CONSOLE_STATUS+0x40>
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	fc8080e7          	jalr	-56(ra) # 80002a80 <_Z11printStringPKc>
        printInteger(i);
    80001ac0:	00048513          	mv	a0,s1
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	02c080e7          	jalr	44(ra) # 80002af0 <_Z12printIntegerm>
        printString("\n");
    80001acc:	00003517          	auipc	a0,0x3
    80001ad0:	6dc50513          	addi	a0,a0,1756 # 800051a8 <CONSOLE_STATUS+0x198>
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	fac080e7          	jalr	-84(ra) # 80002a80 <_Z11printStringPKc>
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
    80001b30:	f54080e7          	jalr	-172(ra) # 80002a80 <_Z11printStringPKc>
    thread_dispatch();
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	9c4080e7          	jalr	-1596(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch2..\n");
    80001b3c:	00003517          	auipc	a0,0x3
    80001b40:	55c50513          	addi	a0,a0,1372 # 80005098 <CONSOLE_STATUS+0x88>
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	f3c080e7          	jalr	-196(ra) # 80002a80 <_Z11printStringPKc>
    thread_dispatch();
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	9ac080e7          	jalr	-1620(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch3...\n");
    80001b54:	00003517          	auipc	a0,0x3
    80001b58:	56450513          	addi	a0,a0,1380 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	f24080e7          	jalr	-220(ra) # 80002a80 <_Z11printStringPKc>
    thread_dispatch();
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	994080e7          	jalr	-1644(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch4....\n");
    80001b6c:	00003517          	auipc	a0,0x3
    80001b70:	56c50513          	addi	a0,a0,1388 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	f0c080e7          	jalr	-244(ra) # 80002a80 <_Z11printStringPKc>
    printString("C: Signal semafora!\n");
    80001b7c:	00003517          	auipc	a0,0x3
    80001b80:	57c50513          	addi	a0,a0,1404 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	efc080e7          	jalr	-260(ra) # 80002a80 <_Z11printStringPKc>
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
    80001bac:	ed8080e7          	jalr	-296(ra) # 80002a80 <_Z11printStringPKc>
    printString("C: posle signala.2.\n");
    80001bb0:	00003517          	auipc	a0,0x3
    80001bb4:	57850513          	addi	a0,a0,1400 # 80005128 <CONSOLE_STATUS+0x118>
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	ec8080e7          	jalr	-312(ra) # 80002a80 <_Z11printStringPKc>
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
    80001bf8:	e8c080e7          	jalr	-372(ra) # 80002a80 <_Z11printStringPKc>
    printString("D: Cekamo na semaforu..\n");
    80001bfc:	00003517          	auipc	a0,0x3
    80001c00:	55c50513          	addi	a0,a0,1372 # 80005158 <CONSOLE_STATUS+0x148>
    80001c04:	00001097          	auipc	ra,0x1
    80001c08:	e7c080e7          	jalr	-388(ra) # 80002a80 <_Z11printStringPKc>

    int returnValue = sem_wait((sem_t) arg);
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	988080e7          	jalr	-1656(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
    80001c18:	00050493          	mv	s1,a0

    printString("D: rezultat: ");
    80001c1c:	00003517          	auipc	a0,0x3
    80001c20:	55c50513          	addi	a0,a0,1372 # 80005178 <CONSOLE_STATUS+0x168>
    80001c24:	00001097          	auipc	ra,0x1
    80001c28:	e5c080e7          	jalr	-420(ra) # 80002a80 <_Z11printStringPKc>
    printInteger(returnValue);
    80001c2c:	00048513          	mv	a0,s1
    80001c30:	00001097          	auipc	ra,0x1
    80001c34:	ec0080e7          	jalr	-320(ra) # 80002af0 <_Z12printIntegerm>
    printString("\nD: izlazim automatski, pozdrav!\n");
    80001c38:	00003517          	auipc	a0,0x3
    80001c3c:	55050513          	addi	a0,a0,1360 # 80005188 <CONSOLE_STATUS+0x178>
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	e40080e7          	jalr	-448(ra) # 80002a80 <_Z11printStringPKc>
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
    80001c74:	00004797          	auipc	a5,0x4
    80001c78:	2547b783          	ld	a5,596(a5) # 80005ec8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c7c:	0007b683          	ld	a3,0(a5)
    80001c80:	00004717          	auipc	a4,0x4
    80001c84:	25073703          	ld	a4,592(a4) # 80005ed0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c88:	00d73023          	sd	a3,0(a4)
        used = nullptr;
    80001c8c:	00004617          	auipc	a2,0x4
    80001c90:	26463603          	ld	a2,612(a2) # 80005ef0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c94:	00063023          	sd	zero,0(a2)

        free->next = nullptr;
    80001c98:	0006b023          	sd	zero,0(a3)
        free->prev  = nullptr;
    80001c9c:	00073703          	ld	a4,0(a4)
    80001ca0:	00073423          	sd	zero,8(a4)
        free->size = ((char*)HEAP_START_ADDR - (char*)HEAP_END_ADDR - sizeof(DataBlock)); //FOR NOW
    80001ca4:	0007b783          	ld	a5,0(a5)
    80001ca8:	00004697          	auipc	a3,0x4
    80001cac:	2606b683          	ld	a3,608(a3) # 80005f08 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    80001cd4:	00004797          	auipc	a5,0x4
    80001cd8:	22c7b783          	ld	a5,556(a5) # 80005f00 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001cdc:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    80001ce0:	00004797          	auipc	a5,0x4
    80001ce4:	2007b783          	ld	a5,512(a5) # 80005ee0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ce8:	0017e793          	ori	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001cec:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001cf0:	00200793          	li	a5,2
    80001cf4:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    int return1 = thread_create(&threads[1], workerBodyA, nullptr);
    80001cf8:	00000613          	li	a2,0
    80001cfc:	00004597          	auipc	a1,0x4
    80001d00:	1fc5b583          	ld	a1,508(a1) # 80005ef8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001d04:	fc040513          	addi	a0,s0,-64
    80001d08:	fffff097          	auipc	ra,0xfffff
    80001d0c:	790080e7          	jalr	1936(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001d10:	00050493          	mv	s1,a0
    printString("ThreadA created\n");
    80001d14:	00003517          	auipc	a0,0x3
    80001d18:	49c50513          	addi	a0,a0,1180 # 800051b0 <CONSOLE_STATUS+0x1a0>
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	d64080e7          	jalr	-668(ra) # 80002a80 <_Z11printStringPKc>
    printInteger(return1);
    80001d24:	00048513          	mv	a0,s1
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	dc8080e7          	jalr	-568(ra) # 80002af0 <_Z12printIntegerm>
    int return2 = thread_create(&threads[2], workerBodyB, threads[1]);
    80001d30:	fc043603          	ld	a2,-64(s0)
    80001d34:	00004597          	auipc	a1,0x4
    80001d38:	1dc5b583          	ld	a1,476(a1) # 80005f10 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001d3c:	fc840513          	addi	a0,s0,-56
    80001d40:	fffff097          	auipc	ra,0xfffff
    80001d44:	758080e7          	jalr	1880(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001d48:	00050493          	mv	s1,a0
    printString("ThreadB created\n");
    80001d4c:	00003517          	auipc	a0,0x3
    80001d50:	47c50513          	addi	a0,a0,1148 # 800051c8 <CONSOLE_STATUS+0x1b8>
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	d2c080e7          	jalr	-724(ra) # 80002a80 <_Z11printStringPKc>
    printInteger(return2);
    80001d5c:	00048513          	mv	a0,s1
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	d90080e7          	jalr	-624(ra) # 80002af0 <_Z12printIntegerm>

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
    80001da0:	00004597          	auipc	a1,0x4
    80001da4:	1385b583          	ld	a1,312(a1) # 80005ed8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001da8:	fd040493          	addi	s1,s0,-48
    80001dac:	00048513          	mv	a0,s1
    80001db0:	fffff097          	auipc	ra,0xfffff
    80001db4:	6e8080e7          	jalr	1768(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[3], workerBodyD, semaphore[0]);
    80001db8:	fa843603          	ld	a2,-88(s0)
    80001dbc:	00004597          	auipc	a1,0x4
    80001dc0:	15c5b583          	ld	a1,348(a1) # 80005f18 <_GLOBAL_OFFSET_TABLE_+0x58>
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
    80001de0:	00003517          	auipc	a0,0x3
    80001de4:	40050513          	addi	a0,a0,1024 # 800051e0 <CONSOLE_STATUS+0x1d0>
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	c98080e7          	jalr	-872(ra) # 80002a80 <_Z11printStringPKc>
    printInteger(returnValue);
    80001df0:	00048513          	mv	a0,s1
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	cfc080e7          	jalr	-772(ra) # 80002af0 <_Z12printIntegerm>
    printString("\n");
    80001dfc:	00003517          	auipc	a0,0x3
    80001e00:	3ac50513          	addi	a0,a0,940 # 800051a8 <CONSOLE_STATUS+0x198>
    80001e04:	00001097          	auipc	ra,0x1
    80001e08:	c7c080e7          	jalr	-900(ra) # 80002a80 <_Z11printStringPKc>

    thread_dispatch();
    80001e0c:	fffff097          	auipc	ra,0xfffff
    80001e10:	6ec080e7          	jalr	1772(ra) # 800014f8 <_Z15thread_dispatchv>
    for (auto &thread: threads) {
    80001e14:	fb840493          	addi	s1,s0,-72
    80001e18:	0140006f          	j	80001e2c <main+0x1d0>
        delete thread;
    80001e1c:	00090513          	mv	a0,s2
    80001e20:	00000097          	auipc	ra,0x0
    80001e24:	634080e7          	jalr	1588(ra) # 80002454 <_ZdlPv>
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
    80001e48:	638080e7          	jalr	1592(ra) # 8000247c <_ZdaPv>
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
    80001e84:	884080e7          	jalr	-1916(ra) # 80002704 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001e88:	00004497          	auipc	s1,0x4
    80001e8c:	0e848493          	addi	s1,s1,232 # 80005f70 <_ZN3TCB7runningE>
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
    80001ef4:	514080e7          	jalr	1300(ra) # 80002404 <_Znwm>
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
    80001f0c:	524080e7          	jalr	1316(ra) # 8000242c <_Znam>
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
    80001f50:	a94080e7          	jalr	-1388(ra) # 800029e0 <_ZN9Scheduler3putEP3TCB>
    80001f54:	0280006f          	j	80001f7c <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001f58:	00000793          	li	a5,0
    80001f5c:	fd9ff06f          	j	80001f34 <_ZN3TCB12createThreadEPFvPvES0_+0x6c>
    80001f60:	00050913          	mv	s2,a0
    80001f64:	00048513          	mv	a0,s1
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	4ec080e7          	jalr	1260(ra) # 80002454 <_ZdlPv>
    80001f70:	00090513          	mv	a0,s2
    80001f74:	00005097          	auipc	ra,0x5
    80001f78:	0f4080e7          	jalr	244(ra) # 80007068 <_Unwind_Resume>
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
    80001fd4:	00004497          	auipc	s1,0x4
    80001fd8:	f9c4b483          	ld	s1,-100(s1) # 80005f70 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001fdc:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001fe0:	00079663          	bnez	a5,80001fec <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return this->blocked; }
    80001fe4:	0214c783          	lbu	a5,33(s1)
    80001fe8:	02078c63          	beqz	a5,80002020 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001fec:	00001097          	auipc	ra,0x1
    80001ff0:	98c080e7          	jalr	-1652(ra) # 80002978 <_ZN9Scheduler3getEv>
    80001ff4:	00004797          	auipc	a5,0x4
    80001ff8:	f6a7be23          	sd	a0,-132(a5) # 80005f70 <_ZN3TCB7runningE>
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
    80002028:	9bc080e7          	jalr	-1604(ra) # 800029e0 <_ZN9Scheduler3putEP3TCB>
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
    80002084:	00070663          	beqz	a4,80002090 <_ZN15MemoryAllocator9mem_allocEm+0x20>
        newSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    80002088:	03f50793          	addi	a5,a0,63
    8000208c:	fc07f793          	andi	a5,a5,-64
    }
    else {
        newSize = size;
    }

    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
    80002090:	00004517          	auipc	a0,0x4
    80002094:	ee853503          	ld	a0,-280(a0) # 80005f78 <_ZN15MemoryAllocator4freeE>
    80002098:	0c050a63          	beqz	a0,8000216c <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        if(curr->size<newSize) continue;
    8000209c:	01053703          	ld	a4,16(a0)
    800020a0:	06f76263          	bltu	a4,a5,80002104 <_ZN15MemoryAllocator9mem_allocEm+0x94>
        if(curr->size > newSize) {
    800020a4:	10e7f463          	bgeu	a5,a4,800021ac <_ZN15MemoryAllocator9mem_allocEm+0x13c>
            //new fragment needs to be created
            //novi ce biti offsetovan od curr za novi size i plus za sizeof(DataBlock) zato sto se posle curr
            // nalazi taj "header"
            DataBlock *newBlock;
            newBlock = (DataBlock*) ((char*)curr + newSize + sizeof(DataBlock));
    800020a8:	01878713          	addi	a4,a5,24
    800020ac:	00e50733          	add	a4,a0,a4

            //Azuriranje free liste
            if(curr->prev) curr->prev->next = newBlock;
    800020b0:	00853683          	ld	a3,8(a0)
    800020b4:	04068c63          	beqz	a3,8000210c <_ZN15MemoryAllocator9mem_allocEm+0x9c>
    800020b8:	00e6b023          	sd	a4,0(a3)
            else MemoryAllocator::free = newBlock;
            if(curr->next) curr->next->prev = newBlock;
    800020bc:	00053683          	ld	a3,0(a0)
    800020c0:	00068463          	beqz	a3,800020c8 <_ZN15MemoryAllocator9mem_allocEm+0x58>
    800020c4:	00e6b423          	sd	a4,8(a3)
            newBlock->prev = curr->prev;
    800020c8:	00853683          	ld	a3,8(a0)
    800020cc:	00d73423          	sd	a3,8(a4)
            newBlock->next = curr->next;
    800020d0:	00053683          	ld	a3,0(a0)
    800020d4:	00d73023          	sd	a3,0(a4)
            //size novi je sada prethodni size - novi size i jos - sizeof(DataBlock) jer se to ne brise kada se zauzme
            //pa mora i to da se cuva
            newBlock->size = curr->size - newSize - sizeof(DataBlock);
    800020d8:	01053683          	ld	a3,16(a0)
    800020dc:	40f686b3          	sub	a3,a3,a5
    800020e0:	fe868693          	addi	a3,a3,-24
    800020e4:	00d73823          	sd	a3,16(a4)
            curr->size = newSize;
    800020e8:	00f53823          	sd	a5,16(a0)


            //azuriranje USED liste
            DataBlock* currUsed = used;
    800020ec:	00004597          	auipc	a1,0x4
    800020f0:	e945b583          	ld	a1,-364(a1) # 80005f80 <_ZN15MemoryAllocator4usedE>
            DataBlock* prevUsed = nullptr;

            if(used == nullptr) {
    800020f4:	02058263          	beqz	a1,80002118 <_ZN15MemoryAllocator9mem_allocEm+0xa8>
            DataBlock* currUsed = used;
    800020f8:	00058713          	mv	a4,a1
            DataBlock* prevUsed = nullptr;
    800020fc:	00000613          	li	a2,0
    80002100:	0380006f          	j	80002138 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
    80002104:	00053503          	ld	a0,0(a0)
    80002108:	f91ff06f          	j	80002098 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            else MemoryAllocator::free = newBlock;
    8000210c:	00004697          	auipc	a3,0x4
    80002110:	e6e6b623          	sd	a4,-404(a3) # 80005f78 <_ZN15MemoryAllocator4freeE>
    80002114:	fa9ff06f          	j	800020bc <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                used = curr;
    80002118:	00004797          	auipc	a5,0x4
    8000211c:	e6a7b423          	sd	a0,-408(a5) # 80005f80 <_ZN15MemoryAllocator4usedE>
                curr->next = nullptr;
    80002120:	00053023          	sd	zero,0(a0)
                curr->prev = nullptr;
    80002124:	00053423          	sd	zero,8(a0)
                return (char*)curr + sizeof(DataBlock);
    80002128:	01850513          	addi	a0,a0,24
    8000212c:	0400006f          	j	8000216c <_ZN15MemoryAllocator9mem_allocEm+0xfc>
            }

            for(;currUsed->next && (char*)currUsed + sizeof(DataBlock) + currUsed->size  < (char*) curr;
                 prevUsed = currUsed, currUsed = currUsed->next);
    80002130:	00070613          	mv	a2,a4
    80002134:	00068713          	mv	a4,a3
            for(;currUsed->next && (char*)currUsed + sizeof(DataBlock) + currUsed->size  < (char*) curr;
    80002138:	00073683          	ld	a3,0(a4)
    8000213c:	00068a63          	beqz	a3,80002150 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80002140:	01073783          	ld	a5,16(a4)
    80002144:	01878793          	addi	a5,a5,24
    80002148:	00f707b3          	add	a5,a4,a5
    8000214c:	fea7e2e3          	bltu	a5,a0,80002130 <_ZN15MemoryAllocator9mem_allocEm+0xc0>


            if(currUsed == used && (char*)currUsed < (char*)used) {
    80002150:	02b70463          	beq	a4,a1,80002178 <_ZN15MemoryAllocator9mem_allocEm+0x108>
                curr->next = used;
                curr->prev = nullptr;
                used->prev = curr;
                used = curr;
            }
            else if (currUsed->next == nullptr) {
    80002154:	04068463          	beqz	a3,8000219c <_ZN15MemoryAllocator9mem_allocEm+0x12c>
                curr->prev = currUsed;
                curr->next = nullptr;
            }
            else {
                //Insert into list in the middle (prev, curr, currUsed)
                prevUsed->next = curr;
    80002158:	00a63023          	sd	a0,0(a2)
                curr->prev = prevUsed;
    8000215c:	00c53423          	sd	a2,8(a0)
                curr->next = currUsed;
    80002160:	00e53023          	sd	a4,0(a0)
                currUsed->prev = curr;
    80002164:	00a73423          	sd	a0,8(a4)
            }
            return (char*)curr + sizeof(DataBlock);
    80002168:	01850513          	addi	a0,a0,24
            }
            return (char*)curr + sizeof(DataBlock);
        }
    }
    return nullptr; //should not enter here
}
    8000216c:	00813403          	ld	s0,8(sp)
    80002170:	01010113          	addi	sp,sp,16
    80002174:	00008067          	ret
            if(currUsed == used && (char*)currUsed < (char*)used) {
    80002178:	fcb77ee3          	bgeu	a4,a1,80002154 <_ZN15MemoryAllocator9mem_allocEm+0xe4>
                curr->next = used;
    8000217c:	00b53023          	sd	a1,0(a0)
                curr->prev = nullptr;
    80002180:	00053423          	sd	zero,8(a0)
                used->prev = curr;
    80002184:	00004797          	auipc	a5,0x4
    80002188:	df478793          	addi	a5,a5,-524 # 80005f78 <_ZN15MemoryAllocator4freeE>
    8000218c:	0087b703          	ld	a4,8(a5)
    80002190:	00a73423          	sd	a0,8(a4)
                used = curr;
    80002194:	00a7b423          	sd	a0,8(a5)
    80002198:	fd1ff06f          	j	80002168 <_ZN15MemoryAllocator9mem_allocEm+0xf8>
                currUsed->next = curr;
    8000219c:	00a73023          	sd	a0,0(a4)
                curr->prev = currUsed;
    800021a0:	00e53423          	sd	a4,8(a0)
                curr->next = nullptr;
    800021a4:	00053023          	sd	zero,0(a0)
    800021a8:	fc1ff06f          	j	80002168 <_ZN15MemoryAllocator9mem_allocEm+0xf8>
            if (curr->prev) curr->prev->next = curr->next;
    800021ac:	00853783          	ld	a5,8(a0)
    800021b0:	02078863          	beqz	a5,800021e0 <_ZN15MemoryAllocator9mem_allocEm+0x170>
    800021b4:	00053703          	ld	a4,0(a0)
    800021b8:	00e7b023          	sd	a4,0(a5)
            if(curr->next) curr->next->prev = curr->prev;
    800021bc:	00053783          	ld	a5,0(a0)
    800021c0:	00078663          	beqz	a5,800021cc <_ZN15MemoryAllocator9mem_allocEm+0x15c>
    800021c4:	00853703          	ld	a4,8(a0)
    800021c8:	00e7b423          	sd	a4,8(a5)
            DataBlock* currUsed = used;
    800021cc:	00004597          	auipc	a1,0x4
    800021d0:	db45b583          	ld	a1,-588(a1) # 80005f80 <_ZN15MemoryAllocator4usedE>
    800021d4:	00058713          	mv	a4,a1
            DataBlock* prevUsed = nullptr;
    800021d8:	00000613          	li	a2,0
    800021dc:	01c0006f          	j	800021f8 <_ZN15MemoryAllocator9mem_allocEm+0x188>
            else MemoryAllocator::free = curr->next;
    800021e0:	00053783          	ld	a5,0(a0)
    800021e4:	00004717          	auipc	a4,0x4
    800021e8:	d8f73a23          	sd	a5,-620(a4) # 80005f78 <_ZN15MemoryAllocator4freeE>
    800021ec:	fd1ff06f          	j	800021bc <_ZN15MemoryAllocator9mem_allocEm+0x14c>
                 prevUsed = currUsed, currUsed = currUsed->next);
    800021f0:	00070613          	mv	a2,a4
    800021f4:	00068713          	mv	a4,a3
            for(;currUsed->next && (char*)currUsed + sizeof(DataBlock) + currUsed->size  < (char*) curr;
    800021f8:	00073683          	ld	a3,0(a4)
    800021fc:	00068a63          	beqz	a3,80002210 <_ZN15MemoryAllocator9mem_allocEm+0x1a0>
    80002200:	01073783          	ld	a5,16(a4)
    80002204:	01878793          	addi	a5,a5,24
    80002208:	00f707b3          	add	a5,a4,a5
    8000220c:	fea7e2e3          	bltu	a5,a0,800021f0 <_ZN15MemoryAllocator9mem_allocEm+0x180>
            if(currUsed == used) {
    80002210:	02b70063          	beq	a4,a1,80002230 <_ZN15MemoryAllocator9mem_allocEm+0x1c0>
            else if (currUsed->next == nullptr) {
    80002214:	02068e63          	beqz	a3,80002250 <_ZN15MemoryAllocator9mem_allocEm+0x1e0>
                prevUsed->next = curr;
    80002218:	00a63023          	sd	a0,0(a2)
                curr->prev = prevUsed;
    8000221c:	00c53423          	sd	a2,8(a0)
                curr->next = currUsed;
    80002220:	00e53023          	sd	a4,0(a0)
                currUsed->prev = curr;
    80002224:	00a73423          	sd	a0,8(a4)
            return (char*)curr + sizeof(DataBlock);
    80002228:	01850513          	addi	a0,a0,24
    8000222c:	f41ff06f          	j	8000216c <_ZN15MemoryAllocator9mem_allocEm+0xfc>
                curr->next = used;
    80002230:	00b53023          	sd	a1,0(a0)
                curr->prev = nullptr;
    80002234:	00053423          	sd	zero,8(a0)
                used->prev = curr;
    80002238:	00004797          	auipc	a5,0x4
    8000223c:	d4078793          	addi	a5,a5,-704 # 80005f78 <_ZN15MemoryAllocator4freeE>
    80002240:	0087b703          	ld	a4,8(a5)
    80002244:	00a73423          	sd	a0,8(a4)
                used = curr;
    80002248:	00a7b423          	sd	a0,8(a5)
    8000224c:	fddff06f          	j	80002228 <_ZN15MemoryAllocator9mem_allocEm+0x1b8>
                currUsed->next = curr;
    80002250:	00a73023          	sd	a0,0(a4)
                curr->prev = currUsed;
    80002254:	00e53423          	sd	a4,8(a0)
                curr->next = nullptr;
    80002258:	00053023          	sd	zero,0(a0)
    8000225c:	fcdff06f          	j	80002228 <_ZN15MemoryAllocator9mem_allocEm+0x1b8>

0000000080002260 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>:
        tryToJoin(currFree);
    }
    return 0;
}

void MemoryAllocator::tryToJoin(DataBlock *curr) {
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00813423          	sd	s0,8(sp)
    80002268:	01010413          	addi	s0,sp,16
    if(curr->next && (char*)curr + sizeof(DataBlock) + curr->size == (char*)curr->next) {
    8000226c:	00053783          	ld	a5,0(a0)
    80002270:	00078a63          	beqz	a5,80002284 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>
    80002274:	01053683          	ld	a3,16(a0)
    80002278:	01868713          	addi	a4,a3,24
    8000227c:	00e50733          	add	a4,a0,a4
    80002280:	00e78863          	beq	a5,a4,80002290 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x30>
        curr->size += curr->next->size + sizeof(DataBlock);
        curr->next = curr->next->next;
        if(curr->next) curr->next->prev = curr;
    }
}
    80002284:	00813403          	ld	s0,8(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret
        curr->size += curr->next->size + sizeof(DataBlock);
    80002290:	0107b703          	ld	a4,16(a5)
    80002294:	00e686b3          	add	a3,a3,a4
    80002298:	01868693          	addi	a3,a3,24
    8000229c:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    800022a0:	0007b783          	ld	a5,0(a5)
    800022a4:	00f53023          	sd	a5,0(a0)
        if(curr->next) curr->next->prev = curr;
    800022a8:	fc078ee3          	beqz	a5,80002284 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>
    800022ac:	00a7b423          	sd	a0,8(a5)
}
    800022b0:	fd5ff06f          	j	80002284 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>

00000000800022b4 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(used == nullptr) return -1;
    800022b4:	00004797          	auipc	a5,0x4
    800022b8:	ccc7b783          	ld	a5,-820(a5) # 80005f80 <_ZN15MemoryAllocator4usedE>
    800022bc:	12078063          	beqz	a5,800023dc <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    800022c0:	00050713          	mv	a4,a0
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;
    800022c4:	12050063          	beqz	a0,800023e4 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    800022c8:	00004697          	auipc	a3,0x4
    800022cc:	c006b683          	ld	a3,-1024(a3) # 80005ec8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800022d0:	0006b683          	ld	a3,0(a3)
    800022d4:	10d56c63          	bltu	a0,a3,800023ec <_ZN15MemoryAllocator8mem_freeEPv+0x138>
    800022d8:	00004697          	auipc	a3,0x4
    800022dc:	c306b683          	ld	a3,-976(a3) # 80005f08 <_GLOBAL_OFFSET_TABLE_+0x48>
    800022e0:	0006b683          	ld	a3,0(a3)
    800022e4:	10a6e863          	bltu	a3,a0,800023f4 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    DataBlock* curr = (DataBlock*)((char*)ptr - sizeof(DataBlock));
    800022e8:	fe850513          	addi	a0,a0,-24
    if(curr < used) return -3;
    800022ec:	10f56863          	bltu	a0,a5,800023fc <_ZN15MemoryAllocator8mem_freeEPv+0x148>
    if(used == curr) {
    800022f0:	08a78863          	beq	a5,a0,80002380 <_ZN15MemoryAllocator8mem_freeEPv+0xcc>
        curr->prev->next = curr->next;
    800022f4:	ff073683          	ld	a3,-16(a4)
    800022f8:	fe873783          	ld	a5,-24(a4)
    800022fc:	00f6b023          	sd	a5,0(a3)
        curr->next->prev = curr->prev;
    80002300:	ff073683          	ld	a3,-16(a4)
    80002304:	00d7b423          	sd	a3,8(a5)
        curr->next = nullptr;
    80002308:	fe073423          	sd	zero,-24(a4)
        curr->prev = nullptr;
    8000230c:	fe073823          	sd	zero,-16(a4)
    if (free == nullptr) {
    80002310:	00004797          	auipc	a5,0x4
    80002314:	c687b783          	ld	a5,-920(a5) # 80005f78 <_ZN15MemoryAllocator4freeE>
    80002318:	08078463          	beqz	a5,800023a0 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
int MemoryAllocator::mem_free(void* ptr) {
    8000231c:	fe010113          	addi	sp,sp,-32
    80002320:	00113c23          	sd	ra,24(sp)
    80002324:	00813823          	sd	s0,16(sp)
    80002328:	00913423          	sd	s1,8(sp)
    8000232c:	02010413          	addi	s0,sp,32
    else if(curr < free) {
    80002330:	08f56063          	bltu	a0,a5,800023b0 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
        for(currFree = free; currFree->next && (char*)(currFree->next) < (char*) curr; currFree = currFree->next);
    80002334:	00078493          	mv	s1,a5
    80002338:	0007b783          	ld	a5,0(a5)
    8000233c:	00078463          	beqz	a5,80002344 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80002340:	fea7eae3          	bltu	a5,a0,80002334 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        curr->prev = currFree;
    80002344:	fe973823          	sd	s1,-16(a4)
        if(curr->next) curr->next->prev = curr;
    80002348:	00078463          	beqz	a5,80002350 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    8000234c:	00a7b423          	sd	a0,8(a5)
        curr->next = curr;
    80002350:	fea73423          	sd	a0,-24(a4)
        tryToJoin(curr);
    80002354:	00000097          	auipc	ra,0x0
    80002358:	f0c080e7          	jalr	-244(ra) # 80002260 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
        tryToJoin(currFree);
    8000235c:	00048513          	mv	a0,s1
    80002360:	00000097          	auipc	ra,0x0
    80002364:	f00080e7          	jalr	-256(ra) # 80002260 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
    return 0;
    80002368:	00000513          	li	a0,0
}
    8000236c:	01813083          	ld	ra,24(sp)
    80002370:	01013403          	ld	s0,16(sp)
    80002374:	00813483          	ld	s1,8(sp)
    80002378:	02010113          	addi	sp,sp,32
    8000237c:	00008067          	ret
        used = curr->next;
    80002380:	fe873783          	ld	a5,-24(a4)
    80002384:	00004697          	auipc	a3,0x4
    80002388:	bef6be23          	sd	a5,-1028(a3) # 80005f80 <_ZN15MemoryAllocator4usedE>
        if(used) used->prev = nullptr;
    8000238c:	00078463          	beqz	a5,80002394 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
    80002390:	0007b423          	sd	zero,8(a5)
        curr->next = nullptr;
    80002394:	fe073423          	sd	zero,-24(a4)
        curr->prev = nullptr;
    80002398:	fe073823          	sd	zero,-16(a4)
    8000239c:	f75ff06f          	j	80002310 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
        free = curr;
    800023a0:	00004797          	auipc	a5,0x4
    800023a4:	bca7bc23          	sd	a0,-1064(a5) # 80005f78 <_ZN15MemoryAllocator4freeE>
    return 0;
    800023a8:	00000513          	li	a0,0
    800023ac:	00008067          	ret
        free->prev = curr;
    800023b0:	00a7b423          	sd	a0,8(a5)
        curr->prev = nullptr;
    800023b4:	fe073823          	sd	zero,-16(a4)
        curr->next = free;
    800023b8:	00004797          	auipc	a5,0x4
    800023bc:	bc078793          	addi	a5,a5,-1088 # 80005f78 <_ZN15MemoryAllocator4freeE>
    800023c0:	0007b683          	ld	a3,0(a5)
    800023c4:	fed73423          	sd	a3,-24(a4)
        free = curr;
    800023c8:	00a7b023          	sd	a0,0(a5)
        tryToJoin(free);
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	e94080e7          	jalr	-364(ra) # 80002260 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
    return 0;
    800023d4:	00000513          	li	a0,0
    800023d8:	f95ff06f          	j	8000236c <_ZN15MemoryAllocator8mem_freeEPv+0xb8>
    if(used == nullptr) return -1;
    800023dc:	fff00513          	li	a0,-1
    800023e0:	00008067          	ret
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;
    800023e4:	ffe00513          	li	a0,-2
    800023e8:	00008067          	ret
    800023ec:	ffe00513          	li	a0,-2
    800023f0:	00008067          	ret
    800023f4:	ffe00513          	li	a0,-2
    800023f8:	00008067          	ret
    if(curr < used) return -3;
    800023fc:	ffd00513          	li	a0,-3
}
    80002400:	00008067          	ret

0000000080002404 <_Znwm>:

//****************************MY MEMORY********************************


void *operator new(size_t n)
{
    80002404:	ff010113          	addi	sp,sp,-16
    80002408:	00113423          	sd	ra,8(sp)
    8000240c:	00813023          	sd	s0,0(sp)
    80002410:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80002414:	00000097          	auipc	ra,0x0
    80002418:	c5c080e7          	jalr	-932(ra) # 80002070 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000241c:	00813083          	ld	ra,8(sp)
    80002420:	00013403          	ld	s0,0(sp)
    80002424:	01010113          	addi	sp,sp,16
    80002428:	00008067          	ret

000000008000242c <_Znam>:

void *operator new[](size_t n)
{
    8000242c:	ff010113          	addi	sp,sp,-16
    80002430:	00113423          	sd	ra,8(sp)
    80002434:	00813023          	sd	s0,0(sp)
    80002438:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    8000243c:	00000097          	auipc	ra,0x0
    80002440:	c34080e7          	jalr	-972(ra) # 80002070 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002444:	00813083          	ld	ra,8(sp)
    80002448:	00013403          	ld	s0,0(sp)
    8000244c:	01010113          	addi	sp,sp,16
    80002450:	00008067          	ret

0000000080002454 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002454:	ff010113          	addi	sp,sp,-16
    80002458:	00113423          	sd	ra,8(sp)
    8000245c:	00813023          	sd	s0,0(sp)
    80002460:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80002464:	00000097          	auipc	ra,0x0
    80002468:	e50080e7          	jalr	-432(ra) # 800022b4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000246c:	00813083          	ld	ra,8(sp)
    80002470:	00013403          	ld	s0,0(sp)
    80002474:	01010113          	addi	sp,sp,16
    80002478:	00008067          	ret

000000008000247c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    8000247c:	ff010113          	addi	sp,sp,-16
    80002480:	00113423          	sd	ra,8(sp)
    80002484:	00813023          	sd	s0,0(sp)
    80002488:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    8000248c:	00000097          	auipc	ra,0x0
    80002490:	e28080e7          	jalr	-472(ra) # 800022b4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002494:	00813083          	ld	ra,8(sp)
    80002498:	00013403          	ld	s0,0(sp)
    8000249c:	01010113          	addi	sp,sp,16
    800024a0:	00008067          	ret

00000000800024a4 <_ZN6Thread3runEv>:

Thread::Thread() {
    //todo
}

void Thread::run() {
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00813423          	sd	s0,8(sp)
    800024ac:	01010413          	addi	s0,sp,16
    //todo
}
    800024b0:	00813403          	ld	s0,8(sp)
    800024b4:	01010113          	addi	sp,sp,16
    800024b8:	00008067          	ret

00000000800024bc <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    800024bc:	ff010113          	addi	sp,sp,-16
    800024c0:	00113423          	sd	ra,8(sp)
    800024c4:	00813023          	sd	s0,0(sp)
    800024c8:	01010413          	addi	s0,sp,16
    800024cc:	00004797          	auipc	a5,0x4
    800024d0:	9bc78793          	addi	a5,a5,-1604 # 80005e88 <_ZTV9Semaphore+0x10>
    800024d4:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    800024d8:	00853503          	ld	a0,8(a0)
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	090080e7          	jalr	144(ra) # 8000156c <_Z9sem_closeP11MySemaphore>
}
    800024e4:	00813083          	ld	ra,8(sp)
    800024e8:	00013403          	ld	s0,0(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800024f4:	fe010113          	addi	sp,sp,-32
    800024f8:	00113c23          	sd	ra,24(sp)
    800024fc:	00813823          	sd	s0,16(sp)
    80002500:	00913423          	sd	s1,8(sp)
    80002504:	02010413          	addi	s0,sp,32
    80002508:	00050493          	mv	s1,a0
}
    8000250c:	00000097          	auipc	ra,0x0
    80002510:	fb0080e7          	jalr	-80(ra) # 800024bc <_ZN9SemaphoreD1Ev>
    80002514:	00048513          	mv	a0,s1
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	f3c080e7          	jalr	-196(ra) # 80002454 <_ZdlPv>
    80002520:	01813083          	ld	ra,24(sp)
    80002524:	01013403          	ld	s0,16(sp)
    80002528:	00813483          	ld	s1,8(sp)
    8000252c:	02010113          	addi	sp,sp,32
    80002530:	00008067          	ret

0000000080002534 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002534:	ff010113          	addi	sp,sp,-16
    80002538:	00113423          	sd	ra,8(sp)
    8000253c:	00813023          	sd	s0,0(sp)
    80002540:	01010413          	addi	s0,sp,16
    80002544:	00004797          	auipc	a5,0x4
    80002548:	96478793          	addi	a5,a5,-1692 # 80005ea8 <_ZTV6Thread+0x10>
    8000254c:	00f53023          	sd	a5,0(a0)
    thread_exit(); //Da li ovo tako treba? Msm da ne
    80002550:	fffff097          	auipc	ra,0xfffff
    80002554:	f7c080e7          	jalr	-132(ra) # 800014cc <_Z11thread_exitv>
}
    80002558:	00813083          	ld	ra,8(sp)
    8000255c:	00013403          	ld	s0,0(sp)
    80002560:	01010113          	addi	sp,sp,16
    80002564:	00008067          	ret

0000000080002568 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002568:	fe010113          	addi	sp,sp,-32
    8000256c:	00113c23          	sd	ra,24(sp)
    80002570:	00813823          	sd	s0,16(sp)
    80002574:	00913423          	sd	s1,8(sp)
    80002578:	02010413          	addi	s0,sp,32
    8000257c:	00050493          	mv	s1,a0
}
    80002580:	00000097          	auipc	ra,0x0
    80002584:	fb4080e7          	jalr	-76(ra) # 80002534 <_ZN6ThreadD1Ev>
    80002588:	00048513          	mv	a0,s1
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	ec8080e7          	jalr	-312(ra) # 80002454 <_ZdlPv>
    80002594:	01813083          	ld	ra,24(sp)
    80002598:	01013403          	ld	s0,16(sp)
    8000259c:	00813483          	ld	s1,8(sp)
    800025a0:	02010113          	addi	sp,sp,32
    800025a4:	00008067          	ret

00000000800025a8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00113423          	sd	ra,8(sp)
    800025b0:	00813023          	sd	s0,0(sp)
    800025b4:	01010413          	addi	s0,sp,16
    800025b8:	00004797          	auipc	a5,0x4
    800025bc:	8d078793          	addi	a5,a5,-1840 # 80005e88 <_ZTV9Semaphore+0x10>
    800025c0:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    800025c4:	00850513          	addi	a0,a0,8
    800025c8:	fffff097          	auipc	ra,0xfffff
    800025cc:	f74080e7          	jalr	-140(ra) # 8000153c <_Z8sem_openPP11MySemaphorej>
}
    800025d0:	00813083          	ld	ra,8(sp)
    800025d4:	00013403          	ld	s0,0(sp)
    800025d8:	01010113          	addi	sp,sp,16
    800025dc:	00008067          	ret

00000000800025e0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800025e0:	ff010113          	addi	sp,sp,-16
    800025e4:	00113423          	sd	ra,8(sp)
    800025e8:	00813023          	sd	s0,0(sp)
    800025ec:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    800025f0:	00853503          	ld	a0,8(a0)
    800025f4:	fffff097          	auipc	ra,0xfffff
    800025f8:	fa4080e7          	jalr	-92(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
}
    800025fc:	00813083          	ld	ra,8(sp)
    80002600:	00013403          	ld	s0,0(sp)
    80002604:	01010113          	addi	sp,sp,16
    80002608:	00008067          	ret

000000008000260c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    8000260c:	ff010113          	addi	sp,sp,-16
    80002610:	00113423          	sd	ra,8(sp)
    80002614:	00813023          	sd	s0,0(sp)
    80002618:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    8000261c:	00853503          	ld	a0,8(a0)
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	fa4080e7          	jalr	-92(ra) # 800015c4 <_Z10sem_signalP11MySemaphore>
}
    80002628:	00813083          	ld	ra,8(sp)
    8000262c:	00013403          	ld	s0,0(sp)
    80002630:	01010113          	addi	sp,sp,16
    80002634:	00008067          	ret

0000000080002638 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002638:	ff010113          	addi	sp,sp,-16
    8000263c:	00113423          	sd	ra,8(sp)
    80002640:	00813023          	sd	s0,0(sp)
    80002644:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002648:	fffff097          	auipc	ra,0xfffff
    8000264c:	eb0080e7          	jalr	-336(ra) # 800014f8 <_Z15thread_dispatchv>
}
    80002650:	00813083          	ld	ra,8(sp)
    80002654:	00013403          	ld	s0,0(sp)
    80002658:	01010113          	addi	sp,sp,16
    8000265c:	00008067          	ret

0000000080002660 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00113423          	sd	ra,8(sp)
    80002668:	00813023          	sd	s0,0(sp)
    8000266c:	01010413          	addi	s0,sp,16
    80002670:	00004797          	auipc	a5,0x4
    80002674:	83878793          	addi	a5,a5,-1992 # 80005ea8 <_ZTV6Thread+0x10>
    80002678:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    8000267c:	00850513          	addi	a0,a0,8
    80002680:	fffff097          	auipc	ra,0xfffff
    80002684:	e18080e7          	jalr	-488(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002688:	00813083          	ld	ra,8(sp)
    8000268c:	00013403          	ld	s0,0(sp)
    80002690:	01010113          	addi	sp,sp,16
    80002694:	00008067          	ret

0000000080002698 <_ZN6Thread4joinEv>:
void Thread::join() {
    80002698:	ff010113          	addi	sp,sp,-16
    8000269c:	00113423          	sd	ra,8(sp)
    800026a0:	00813023          	sd	s0,0(sp)
    800026a4:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    800026a8:	00853503          	ld	a0,8(a0)
    800026ac:	fffff097          	auipc	ra,0xfffff
    800026b0:	e6c080e7          	jalr	-404(ra) # 80001518 <_Z11thread_joinP3TCB>
}
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN6Thread5startEv>:
int Thread::start() {
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00813423          	sd	s0,8(sp)
    800026cc:	01010413          	addi	s0,sp,16
}
    800026d0:	00000513          	li	a0,0
    800026d4:	00813403          	ld	s0,8(sp)
    800026d8:	01010113          	addi	sp,sp,16
    800026dc:	00008067          	ret

00000000800026e0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800026e0:	ff010113          	addi	sp,sp,-16
    800026e4:	00813423          	sd	s0,8(sp)
    800026e8:	01010413          	addi	s0,sp,16
    800026ec:	00003797          	auipc	a5,0x3
    800026f0:	7bc78793          	addi	a5,a5,1980 # 80005ea8 <_ZTV6Thread+0x10>
    800026f4:	00f53023          	sd	a5,0(a0)
}
    800026f8:	00813403          	ld	s0,8(sp)
    800026fc:	01010113          	addi	sp,sp,16
    80002700:	00008067          	ret

0000000080002704 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00813423          	sd	s0,8(sp)
    8000270c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002710:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002714:	10200073          	sret
}
    80002718:	00813403          	ld	s0,8(sp)
    8000271c:	01010113          	addi	sp,sp,16
    80002720:	00008067          	ret

0000000080002724 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void*);

void Riscv::handleSupervisorTrap()
{
    80002724:	fb010113          	addi	sp,sp,-80
    80002728:	04113423          	sd	ra,72(sp)
    8000272c:	04813023          	sd	s0,64(sp)
    80002730:	02913c23          	sd	s1,56(sp)
    80002734:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002738:	142027f3          	csrr	a5,scause
    8000273c:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80002740:	fc043783          	ld	a5,-64(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002744:	ff878793          	addi	a5,a5,-8
    80002748:	00100713          	li	a4,1
    8000274c:	00f77c63          	bgeu	a4,a5,80002764 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    else
    {
        // unexpected trap cause
        // Ovde se ulazi ako se desi neki interrupt tabele
    }
}
    80002750:	04813083          	ld	ra,72(sp)
    80002754:	04013403          	ld	s0,64(sp)
    80002758:	03813483          	ld	s1,56(sp)
    8000275c:	05010113          	addi	sp,sp,80
    80002760:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002764:	141027f3          	csrr	a5,sepc
    80002768:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    8000276c:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002770:	00478793          	addi	a5,a5,4
    80002774:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002778:	100027f3          	csrr	a5,sstatus
    8000277c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002780:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80002784:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80002788:	00050793          	mv	a5,a0
    8000278c:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80002790:	fc843783          	ld	a5,-56(s0)
        switch (codeOperation) {
    80002794:	fef78793          	addi	a5,a5,-17
    80002798:	03200713          	li	a4,50
    8000279c:	06f76c63          	bltu	a4,a5,80002814 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    800027a0:	00279793          	slli	a5,a5,0x2
    800027a4:	00003717          	auipc	a4,0x3
    800027a8:	a5470713          	addi	a4,a4,-1452 # 800051f8 <CONSOLE_STATUS+0x1e8>
    800027ac:	00e787b3          	add	a5,a5,a4
    800027b0:	0007a783          	lw	a5,0(a5)
    800027b4:	00e787b3          	add	a5,a5,a4
    800027b8:	00078067          	jr	a5
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    800027bc:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    800027c0:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    800027c4:	00068593          	mv	a1,a3
                *tcb = TCB::createThread(body, arg);
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	700080e7          	jalr	1792(ra) # 80001ec8 <_ZN3TCB12createThreadEPFvPvES0_>
    800027d0:	00a4b023          	sd	a0,0(s1)
                if(*tcb != nullptr) {
    800027d4:	00050863          	beqz	a0,800027e4 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                    __asm__ volatile ("li t0, 0");
    800027d8:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    800027dc:	04542823          	sw	t0,80(s0)
    800027e0:	0340006f          	j	80002814 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    __asm__ volatile ("li t0, -1");
    800027e4:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    800027e8:	04542823          	sw	t0,80(s0)
    800027ec:	0280006f          	j	80002814 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                TCB::running->setFinished(true);
    800027f0:	00003797          	auipc	a5,0x3
    800027f4:	7107b783          	ld	a5,1808(a5) # 80005f00 <_GLOBAL_OFFSET_TABLE_+0x40>
    800027f8:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    800027fc:	00100713          	li	a4,1
    80002800:	02e78023          	sb	a4,32(a5)
                TCB::dispatch();
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	7bc080e7          	jalr	1980(ra) # 80001fc0 <_ZN3TCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    8000280c:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    80002810:	04542823          	sw	t0,80(s0)
        w_sstatus(sstatus);
    80002814:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002818:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    8000281c:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002820:	14179073          	csrw	sepc,a5
}
    80002824:	f2dff06f          	j	80002750 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                TCB::dispatch();
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	798080e7          	jalr	1944(ra) # 80001fc0 <_ZN3TCB8dispatchEv>
                break;
    80002830:	fe5ff06f          	j	80002814 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002834:	00058513          	mv	a0,a1
                TCB::join(handle);
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	7f8080e7          	jalr	2040(ra) # 80002030 <_ZN3TCB4joinEPS_>
                break;
    80002840:	fd5ff06f          	j	80002814 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a2" : "=r" (init));
    80002844:	00060513          	mv	a0,a2
    80002848:	0005051b          	sext.w	a0,a0
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    8000284c:	00058493          	mv	s1,a1
                *semHandle = MySemaphore::createSemaphore(init);
    80002850:	fffff097          	auipc	ra,0xfffff
    80002854:	f08080e7          	jalr	-248(ra) # 80001758 <_ZN11MySemaphore15createSemaphoreEj>
    80002858:	00a4b023          	sd	a0,0(s1)
                if(*semHandle != nullptr) {
    8000285c:	00050863          	beqz	a0,8000286c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    __asm__ volatile ("li t0, 0");
    80002860:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002864:	04542823          	sw	t0,80(s0)
    80002868:	fadff06f          	j	80002814 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    __asm__ volatile ("li t0, -1");
    8000286c:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002870:	04542823          	sw	t0,80(s0)
    80002874:	fa1ff06f          	j	80002814 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80002878:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    8000287c:	00050c63          	beqz	a0,80002894 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    returnValue = semHandlePtr->close();
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	f20080e7          	jalr	-224(ra) # 800017a0 <_ZN11MySemaphore5closeEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80002888:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    8000288c:	04542823          	sw	t0,80(s0)
                break;
    80002890:	f85ff06f          	j	80002814 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                else returnValue = -2;
    80002894:	ffe00513          	li	a0,-2
    80002898:	ff1ff06f          	j	80002888 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    8000289c:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    800028a0:	00050c63          	beqz	a0,800028b8 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                    returnValue = semHandlePtr->wait();
    800028a4:	fffff097          	auipc	ra,0xfffff
    800028a8:	d4c080e7          	jalr	-692(ra) # 800015f0 <_ZN11MySemaphore4waitEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800028ac:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800028b0:	04542823          	sw	t0,80(s0)
                break;
    800028b4:	f61ff06f          	j	80002814 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                else returnValue = -2;
    800028b8:	ffe00513          	li	a0,-2
    800028bc:	ff1ff06f          	j	800028ac <_ZN5Riscv20handleSupervisorTrapEv+0x188>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800028c0:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr)
    800028c4:	00050c63          	beqz	a0,800028dc <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    returnValue = semHandlePtr->signal();
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	df4080e7          	jalr	-524(ra) # 800016bc <_ZN11MySemaphore6signalEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800028d0:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800028d4:	04542823          	sw	t0,80(s0)
                break;
    800028d8:	f3dff06f          	j	80002814 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    returnValue = -2;
    800028dc:	ffe00513          	li	a0,-2
    800028e0:	ff1ff06f          	j	800028d0 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                TCB::dispatch();
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	6dc080e7          	jalr	1756(ra) # 80001fc0 <_ZN3TCB8dispatchEv>
                break;
    800028ec:	f29ff06f          	j	80002814 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

00000000800028f0 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00113423          	sd	ra,8(sp)
    800028f8:	00813023          	sd	s0,0(sp)
    800028fc:	01010413          	addi	s0,sp,16
    console_handler();
    80002900:	00002097          	auipc	ra,0x2
    80002904:	3e0080e7          	jalr	992(ra) # 80004ce0 <console_handler>
}
    80002908:	00813083          	ld	ra,8(sp)
    8000290c:	00013403          	ld	s0,0(sp)
    80002910:	01010113          	addi	sp,sp,16
    80002914:	00008067          	ret

0000000080002918 <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    80002918:	ff010113          	addi	sp,sp,-16
    8000291c:	00813423          	sd	s0,8(sp)
    80002920:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002924:	00200793          	li	a5,2
    80002928:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
    8000292c:	00813403          	ld	s0,8(sp)
    80002930:	01010113          	addi	sp,sp,16
    80002934:	00008067          	ret

0000000080002938 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002938:	ff010113          	addi	sp,sp,-16
    8000293c:	00813423          	sd	s0,8(sp)
    80002940:	01010413          	addi	s0,sp,16
    80002944:	00100793          	li	a5,1
    80002948:	00f50863          	beq	a0,a5,80002958 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000294c:	00813403          	ld	s0,8(sp)
    80002950:	01010113          	addi	sp,sp,16
    80002954:	00008067          	ret
    80002958:	000107b7          	lui	a5,0x10
    8000295c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002960:	fef596e3          	bne	a1,a5,8000294c <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002964:	00003797          	auipc	a5,0x3
    80002968:	62478793          	addi	a5,a5,1572 # 80005f88 <_ZN9Scheduler16readyThreadQueueE>
    8000296c:	0007b023          	sd	zero,0(a5)
    80002970:	0007b423          	sd	zero,8(a5)
    80002974:	fd9ff06f          	j	8000294c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002978 <_ZN9Scheduler3getEv>:
{
    80002978:	fe010113          	addi	sp,sp,-32
    8000297c:	00113c23          	sd	ra,24(sp)
    80002980:	00813823          	sd	s0,16(sp)
    80002984:	00913423          	sd	s1,8(sp)
    80002988:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    8000298c:	00003517          	auipc	a0,0x3
    80002990:	5fc53503          	ld	a0,1532(a0) # 80005f88 <_ZN9Scheduler16readyThreadQueueE>
    80002994:	04050263          	beqz	a0,800029d8 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002998:	00853783          	ld	a5,8(a0)
    8000299c:	00003717          	auipc	a4,0x3
    800029a0:	5ef73623          	sd	a5,1516(a4) # 80005f88 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800029a4:	02078463          	beqz	a5,800029cc <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    800029a8:	00053483          	ld	s1,0(a0)
        delete elem;
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	aa8080e7          	jalr	-1368(ra) # 80002454 <_ZdlPv>
}
    800029b4:	00048513          	mv	a0,s1
    800029b8:	01813083          	ld	ra,24(sp)
    800029bc:	01013403          	ld	s0,16(sp)
    800029c0:	00813483          	ld	s1,8(sp)
    800029c4:	02010113          	addi	sp,sp,32
    800029c8:	00008067          	ret
        if (!head) { tail = 0; }
    800029cc:	00003797          	auipc	a5,0x3
    800029d0:	5c07b223          	sd	zero,1476(a5) # 80005f90 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800029d4:	fd5ff06f          	j	800029a8 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800029d8:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800029dc:	fd9ff06f          	j	800029b4 <_ZN9Scheduler3getEv+0x3c>

00000000800029e0 <_ZN9Scheduler3putEP3TCB>:
{
    800029e0:	fe010113          	addi	sp,sp,-32
    800029e4:	00113c23          	sd	ra,24(sp)
    800029e8:	00813823          	sd	s0,16(sp)
    800029ec:	00913423          	sd	s1,8(sp)
    800029f0:	02010413          	addi	s0,sp,32
    800029f4:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800029f8:	01000513          	li	a0,16
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	a08080e7          	jalr	-1528(ra) # 80002404 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002a04:	00953023          	sd	s1,0(a0)
    80002a08:	00053423          	sd	zero,8(a0)
        if (tail)
    80002a0c:	00003797          	auipc	a5,0x3
    80002a10:	5847b783          	ld	a5,1412(a5) # 80005f90 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002a14:	02078263          	beqz	a5,80002a38 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002a18:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002a1c:	00003797          	auipc	a5,0x3
    80002a20:	56a7ba23          	sd	a0,1396(a5) # 80005f90 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002a24:	01813083          	ld	ra,24(sp)
    80002a28:	01013403          	ld	s0,16(sp)
    80002a2c:	00813483          	ld	s1,8(sp)
    80002a30:	02010113          	addi	sp,sp,32
    80002a34:	00008067          	ret
            head = tail = elem;
    80002a38:	00003797          	auipc	a5,0x3
    80002a3c:	55078793          	addi	a5,a5,1360 # 80005f88 <_ZN9Scheduler16readyThreadQueueE>
    80002a40:	00a7b423          	sd	a0,8(a5)
    80002a44:	00a7b023          	sd	a0,0(a5)
    80002a48:	fddff06f          	j	80002a24 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002a4c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002a4c:	ff010113          	addi	sp,sp,-16
    80002a50:	00113423          	sd	ra,8(sp)
    80002a54:	00813023          	sd	s0,0(sp)
    80002a58:	01010413          	addi	s0,sp,16
    80002a5c:	000105b7          	lui	a1,0x10
    80002a60:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a64:	00100513          	li	a0,1
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	ed0080e7          	jalr	-304(ra) # 80002938 <_Z41__static_initialization_and_destruction_0ii>
    80002a70:	00813083          	ld	ra,8(sp)
    80002a74:	00013403          	ld	s0,0(sp)
    80002a78:	01010113          	addi	sp,sp,16
    80002a7c:	00008067          	ret

0000000080002a80 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80002a80:	fd010113          	addi	sp,sp,-48
    80002a84:	02113423          	sd	ra,40(sp)
    80002a88:	02813023          	sd	s0,32(sp)
    80002a8c:	00913c23          	sd	s1,24(sp)
    80002a90:	01213823          	sd	s2,16(sp)
    80002a94:	03010413          	addi	s0,sp,48
    80002a98:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002a9c:	100027f3          	csrr	a5,sstatus
    80002aa0:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002aa4:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002aa8:	00200793          	li	a5,2
    80002aac:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002ab0:	0004c503          	lbu	a0,0(s1)
    80002ab4:	00050a63          	beqz	a0,80002ac8 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80002ab8:	00002097          	auipc	ra,0x2
    80002abc:	1b4080e7          	jalr	436(ra) # 80004c6c <__putc>
        string++;
    80002ac0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002ac4:	fedff06f          	j	80002ab0 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002ac8:	0009091b          	sext.w	s2,s2
    80002acc:	00297913          	andi	s2,s2,2
    80002ad0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002ad4:	10092073          	csrs	sstatus,s2
}
    80002ad8:	02813083          	ld	ra,40(sp)
    80002adc:	02013403          	ld	s0,32(sp)
    80002ae0:	01813483          	ld	s1,24(sp)
    80002ae4:	01013903          	ld	s2,16(sp)
    80002ae8:	03010113          	addi	sp,sp,48
    80002aec:	00008067          	ret

0000000080002af0 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002af0:	fc010113          	addi	sp,sp,-64
    80002af4:	02113c23          	sd	ra,56(sp)
    80002af8:	02813823          	sd	s0,48(sp)
    80002afc:	02913423          	sd	s1,40(sp)
    80002b00:	03213023          	sd	s2,32(sp)
    80002b04:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002b08:	100027f3          	csrr	a5,sstatus
    80002b0c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002b10:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002b14:	00200793          	li	a5,2
    80002b18:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002b1c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002b20:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002b24:	00a00613          	li	a2,10
    80002b28:	02c5773b          	remuw	a4,a0,a2
    80002b2c:	02071693          	slli	a3,a4,0x20
    80002b30:	0206d693          	srli	a3,a3,0x20
    80002b34:	00002717          	auipc	a4,0x2
    80002b38:	79470713          	addi	a4,a4,1940 # 800052c8 <_ZZ12printIntegermE6digits>
    80002b3c:	00d70733          	add	a4,a4,a3
    80002b40:	00074703          	lbu	a4,0(a4)
    80002b44:	fe040693          	addi	a3,s0,-32
    80002b48:	009687b3          	add	a5,a3,s1
    80002b4c:	0014849b          	addiw	s1,s1,1
    80002b50:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002b54:	0005071b          	sext.w	a4,a0
    80002b58:	02c5553b          	divuw	a0,a0,a2
    80002b5c:	00900793          	li	a5,9
    80002b60:	fce7e2e3          	bltu	a5,a4,80002b24 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002b64:	fff4849b          	addiw	s1,s1,-1
    80002b68:	0004ce63          	bltz	s1,80002b84 <_Z12printIntegerm+0x94>
    80002b6c:	fe040793          	addi	a5,s0,-32
    80002b70:	009787b3          	add	a5,a5,s1
    80002b74:	ff07c503          	lbu	a0,-16(a5)
    80002b78:	00002097          	auipc	ra,0x2
    80002b7c:	0f4080e7          	jalr	244(ra) # 80004c6c <__putc>
    80002b80:	fe5ff06f          	j	80002b64 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002b84:	0009091b          	sext.w	s2,s2
    80002b88:	00297913          	andi	s2,s2,2
    80002b8c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002b90:	10092073          	csrs	sstatus,s2
    80002b94:	03813083          	ld	ra,56(sp)
    80002b98:	03013403          	ld	s0,48(sp)
    80002b9c:	02813483          	ld	s1,40(sp)
    80002ba0:	02013903          	ld	s2,32(sp)
    80002ba4:	04010113          	addi	sp,sp,64
    80002ba8:	00008067          	ret

0000000080002bac <start>:
    80002bac:	ff010113          	addi	sp,sp,-16
    80002bb0:	00813423          	sd	s0,8(sp)
    80002bb4:	01010413          	addi	s0,sp,16
    80002bb8:	300027f3          	csrr	a5,mstatus
    80002bbc:	ffffe737          	lui	a4,0xffffe
    80002bc0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff75ff>
    80002bc4:	00e7f7b3          	and	a5,a5,a4
    80002bc8:	00001737          	lui	a4,0x1
    80002bcc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002bd0:	00e7e7b3          	or	a5,a5,a4
    80002bd4:	30079073          	csrw	mstatus,a5
    80002bd8:	00000797          	auipc	a5,0x0
    80002bdc:	16078793          	addi	a5,a5,352 # 80002d38 <system_main>
    80002be0:	34179073          	csrw	mepc,a5
    80002be4:	00000793          	li	a5,0
    80002be8:	18079073          	csrw	satp,a5
    80002bec:	000107b7          	lui	a5,0x10
    80002bf0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002bf4:	30279073          	csrw	medeleg,a5
    80002bf8:	30379073          	csrw	mideleg,a5
    80002bfc:	104027f3          	csrr	a5,sie
    80002c00:	2227e793          	ori	a5,a5,546
    80002c04:	10479073          	csrw	sie,a5
    80002c08:	fff00793          	li	a5,-1
    80002c0c:	00a7d793          	srli	a5,a5,0xa
    80002c10:	3b079073          	csrw	pmpaddr0,a5
    80002c14:	00f00793          	li	a5,15
    80002c18:	3a079073          	csrw	pmpcfg0,a5
    80002c1c:	f14027f3          	csrr	a5,mhartid
    80002c20:	0200c737          	lui	a4,0x200c
    80002c24:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002c28:	0007869b          	sext.w	a3,a5
    80002c2c:	00269713          	slli	a4,a3,0x2
    80002c30:	000f4637          	lui	a2,0xf4
    80002c34:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002c38:	00d70733          	add	a4,a4,a3
    80002c3c:	0037979b          	slliw	a5,a5,0x3
    80002c40:	020046b7          	lui	a3,0x2004
    80002c44:	00d787b3          	add	a5,a5,a3
    80002c48:	00c585b3          	add	a1,a1,a2
    80002c4c:	00371693          	slli	a3,a4,0x3
    80002c50:	00003717          	auipc	a4,0x3
    80002c54:	35070713          	addi	a4,a4,848 # 80005fa0 <timer_scratch>
    80002c58:	00b7b023          	sd	a1,0(a5)
    80002c5c:	00d70733          	add	a4,a4,a3
    80002c60:	00f73c23          	sd	a5,24(a4)
    80002c64:	02c73023          	sd	a2,32(a4)
    80002c68:	34071073          	csrw	mscratch,a4
    80002c6c:	00000797          	auipc	a5,0x0
    80002c70:	6e478793          	addi	a5,a5,1764 # 80003350 <timervec>
    80002c74:	30579073          	csrw	mtvec,a5
    80002c78:	300027f3          	csrr	a5,mstatus
    80002c7c:	0087e793          	ori	a5,a5,8
    80002c80:	30079073          	csrw	mstatus,a5
    80002c84:	304027f3          	csrr	a5,mie
    80002c88:	0807e793          	ori	a5,a5,128
    80002c8c:	30479073          	csrw	mie,a5
    80002c90:	f14027f3          	csrr	a5,mhartid
    80002c94:	0007879b          	sext.w	a5,a5
    80002c98:	00078213          	mv	tp,a5
    80002c9c:	30200073          	mret
    80002ca0:	00813403          	ld	s0,8(sp)
    80002ca4:	01010113          	addi	sp,sp,16
    80002ca8:	00008067          	ret

0000000080002cac <timerinit>:
    80002cac:	ff010113          	addi	sp,sp,-16
    80002cb0:	00813423          	sd	s0,8(sp)
    80002cb4:	01010413          	addi	s0,sp,16
    80002cb8:	f14027f3          	csrr	a5,mhartid
    80002cbc:	0200c737          	lui	a4,0x200c
    80002cc0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002cc4:	0007869b          	sext.w	a3,a5
    80002cc8:	00269713          	slli	a4,a3,0x2
    80002ccc:	000f4637          	lui	a2,0xf4
    80002cd0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002cd4:	00d70733          	add	a4,a4,a3
    80002cd8:	0037979b          	slliw	a5,a5,0x3
    80002cdc:	020046b7          	lui	a3,0x2004
    80002ce0:	00d787b3          	add	a5,a5,a3
    80002ce4:	00c585b3          	add	a1,a1,a2
    80002ce8:	00371693          	slli	a3,a4,0x3
    80002cec:	00003717          	auipc	a4,0x3
    80002cf0:	2b470713          	addi	a4,a4,692 # 80005fa0 <timer_scratch>
    80002cf4:	00b7b023          	sd	a1,0(a5)
    80002cf8:	00d70733          	add	a4,a4,a3
    80002cfc:	00f73c23          	sd	a5,24(a4)
    80002d00:	02c73023          	sd	a2,32(a4)
    80002d04:	34071073          	csrw	mscratch,a4
    80002d08:	00000797          	auipc	a5,0x0
    80002d0c:	64878793          	addi	a5,a5,1608 # 80003350 <timervec>
    80002d10:	30579073          	csrw	mtvec,a5
    80002d14:	300027f3          	csrr	a5,mstatus
    80002d18:	0087e793          	ori	a5,a5,8
    80002d1c:	30079073          	csrw	mstatus,a5
    80002d20:	304027f3          	csrr	a5,mie
    80002d24:	0807e793          	ori	a5,a5,128
    80002d28:	30479073          	csrw	mie,a5
    80002d2c:	00813403          	ld	s0,8(sp)
    80002d30:	01010113          	addi	sp,sp,16
    80002d34:	00008067          	ret

0000000080002d38 <system_main>:
    80002d38:	fe010113          	addi	sp,sp,-32
    80002d3c:	00813823          	sd	s0,16(sp)
    80002d40:	00913423          	sd	s1,8(sp)
    80002d44:	00113c23          	sd	ra,24(sp)
    80002d48:	02010413          	addi	s0,sp,32
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	0c4080e7          	jalr	196(ra) # 80002e10 <cpuid>
    80002d54:	00003497          	auipc	s1,0x3
    80002d58:	1ec48493          	addi	s1,s1,492 # 80005f40 <started>
    80002d5c:	02050263          	beqz	a0,80002d80 <system_main+0x48>
    80002d60:	0004a783          	lw	a5,0(s1)
    80002d64:	0007879b          	sext.w	a5,a5
    80002d68:	fe078ce3          	beqz	a5,80002d60 <system_main+0x28>
    80002d6c:	0ff0000f          	fence
    80002d70:	00002517          	auipc	a0,0x2
    80002d74:	59850513          	addi	a0,a0,1432 # 80005308 <_ZZ12printIntegermE6digits+0x40>
    80002d78:	00001097          	auipc	ra,0x1
    80002d7c:	a74080e7          	jalr	-1420(ra) # 800037ec <panic>
    80002d80:	00001097          	auipc	ra,0x1
    80002d84:	9c8080e7          	jalr	-1592(ra) # 80003748 <consoleinit>
    80002d88:	00001097          	auipc	ra,0x1
    80002d8c:	154080e7          	jalr	340(ra) # 80003edc <printfinit>
    80002d90:	00002517          	auipc	a0,0x2
    80002d94:	41850513          	addi	a0,a0,1048 # 800051a8 <CONSOLE_STATUS+0x198>
    80002d98:	00001097          	auipc	ra,0x1
    80002d9c:	ab0080e7          	jalr	-1360(ra) # 80003848 <__printf>
    80002da0:	00002517          	auipc	a0,0x2
    80002da4:	53850513          	addi	a0,a0,1336 # 800052d8 <_ZZ12printIntegermE6digits+0x10>
    80002da8:	00001097          	auipc	ra,0x1
    80002dac:	aa0080e7          	jalr	-1376(ra) # 80003848 <__printf>
    80002db0:	00002517          	auipc	a0,0x2
    80002db4:	3f850513          	addi	a0,a0,1016 # 800051a8 <CONSOLE_STATUS+0x198>
    80002db8:	00001097          	auipc	ra,0x1
    80002dbc:	a90080e7          	jalr	-1392(ra) # 80003848 <__printf>
    80002dc0:	00001097          	auipc	ra,0x1
    80002dc4:	4a8080e7          	jalr	1192(ra) # 80004268 <kinit>
    80002dc8:	00000097          	auipc	ra,0x0
    80002dcc:	148080e7          	jalr	328(ra) # 80002f10 <trapinit>
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	16c080e7          	jalr	364(ra) # 80002f3c <trapinithart>
    80002dd8:	00000097          	auipc	ra,0x0
    80002ddc:	5b8080e7          	jalr	1464(ra) # 80003390 <plicinit>
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	5d8080e7          	jalr	1496(ra) # 800033b8 <plicinithart>
    80002de8:	00000097          	auipc	ra,0x0
    80002dec:	078080e7          	jalr	120(ra) # 80002e60 <userinit>
    80002df0:	0ff0000f          	fence
    80002df4:	00100793          	li	a5,1
    80002df8:	00002517          	auipc	a0,0x2
    80002dfc:	4f850513          	addi	a0,a0,1272 # 800052f0 <_ZZ12printIntegermE6digits+0x28>
    80002e00:	00f4a023          	sw	a5,0(s1)
    80002e04:	00001097          	auipc	ra,0x1
    80002e08:	a44080e7          	jalr	-1468(ra) # 80003848 <__printf>
    80002e0c:	0000006f          	j	80002e0c <system_main+0xd4>

0000000080002e10 <cpuid>:
    80002e10:	ff010113          	addi	sp,sp,-16
    80002e14:	00813423          	sd	s0,8(sp)
    80002e18:	01010413          	addi	s0,sp,16
    80002e1c:	00020513          	mv	a0,tp
    80002e20:	00813403          	ld	s0,8(sp)
    80002e24:	0005051b          	sext.w	a0,a0
    80002e28:	01010113          	addi	sp,sp,16
    80002e2c:	00008067          	ret

0000000080002e30 <mycpu>:
    80002e30:	ff010113          	addi	sp,sp,-16
    80002e34:	00813423          	sd	s0,8(sp)
    80002e38:	01010413          	addi	s0,sp,16
    80002e3c:	00020793          	mv	a5,tp
    80002e40:	00813403          	ld	s0,8(sp)
    80002e44:	0007879b          	sext.w	a5,a5
    80002e48:	00779793          	slli	a5,a5,0x7
    80002e4c:	00004517          	auipc	a0,0x4
    80002e50:	18450513          	addi	a0,a0,388 # 80006fd0 <cpus>
    80002e54:	00f50533          	add	a0,a0,a5
    80002e58:	01010113          	addi	sp,sp,16
    80002e5c:	00008067          	ret

0000000080002e60 <userinit>:
    80002e60:	ff010113          	addi	sp,sp,-16
    80002e64:	00813423          	sd	s0,8(sp)
    80002e68:	01010413          	addi	s0,sp,16
    80002e6c:	00813403          	ld	s0,8(sp)
    80002e70:	01010113          	addi	sp,sp,16
    80002e74:	fffff317          	auipc	t1,0xfffff
    80002e78:	de830067          	jr	-536(t1) # 80001c5c <main>

0000000080002e7c <either_copyout>:
    80002e7c:	ff010113          	addi	sp,sp,-16
    80002e80:	00813023          	sd	s0,0(sp)
    80002e84:	00113423          	sd	ra,8(sp)
    80002e88:	01010413          	addi	s0,sp,16
    80002e8c:	02051663          	bnez	a0,80002eb8 <either_copyout+0x3c>
    80002e90:	00058513          	mv	a0,a1
    80002e94:	00060593          	mv	a1,a2
    80002e98:	0006861b          	sext.w	a2,a3
    80002e9c:	00002097          	auipc	ra,0x2
    80002ea0:	c58080e7          	jalr	-936(ra) # 80004af4 <__memmove>
    80002ea4:	00813083          	ld	ra,8(sp)
    80002ea8:	00013403          	ld	s0,0(sp)
    80002eac:	00000513          	li	a0,0
    80002eb0:	01010113          	addi	sp,sp,16
    80002eb4:	00008067          	ret
    80002eb8:	00002517          	auipc	a0,0x2
    80002ebc:	47850513          	addi	a0,a0,1144 # 80005330 <_ZZ12printIntegermE6digits+0x68>
    80002ec0:	00001097          	auipc	ra,0x1
    80002ec4:	92c080e7          	jalr	-1748(ra) # 800037ec <panic>

0000000080002ec8 <either_copyin>:
    80002ec8:	ff010113          	addi	sp,sp,-16
    80002ecc:	00813023          	sd	s0,0(sp)
    80002ed0:	00113423          	sd	ra,8(sp)
    80002ed4:	01010413          	addi	s0,sp,16
    80002ed8:	02059463          	bnez	a1,80002f00 <either_copyin+0x38>
    80002edc:	00060593          	mv	a1,a2
    80002ee0:	0006861b          	sext.w	a2,a3
    80002ee4:	00002097          	auipc	ra,0x2
    80002ee8:	c10080e7          	jalr	-1008(ra) # 80004af4 <__memmove>
    80002eec:	00813083          	ld	ra,8(sp)
    80002ef0:	00013403          	ld	s0,0(sp)
    80002ef4:	00000513          	li	a0,0
    80002ef8:	01010113          	addi	sp,sp,16
    80002efc:	00008067          	ret
    80002f00:	00002517          	auipc	a0,0x2
    80002f04:	45850513          	addi	a0,a0,1112 # 80005358 <_ZZ12printIntegermE6digits+0x90>
    80002f08:	00001097          	auipc	ra,0x1
    80002f0c:	8e4080e7          	jalr	-1820(ra) # 800037ec <panic>

0000000080002f10 <trapinit>:
    80002f10:	ff010113          	addi	sp,sp,-16
    80002f14:	00813423          	sd	s0,8(sp)
    80002f18:	01010413          	addi	s0,sp,16
    80002f1c:	00813403          	ld	s0,8(sp)
    80002f20:	00002597          	auipc	a1,0x2
    80002f24:	46058593          	addi	a1,a1,1120 # 80005380 <_ZZ12printIntegermE6digits+0xb8>
    80002f28:	00004517          	auipc	a0,0x4
    80002f2c:	12850513          	addi	a0,a0,296 # 80007050 <tickslock>
    80002f30:	01010113          	addi	sp,sp,16
    80002f34:	00001317          	auipc	t1,0x1
    80002f38:	5c430067          	jr	1476(t1) # 800044f8 <initlock>

0000000080002f3c <trapinithart>:
    80002f3c:	ff010113          	addi	sp,sp,-16
    80002f40:	00813423          	sd	s0,8(sp)
    80002f44:	01010413          	addi	s0,sp,16
    80002f48:	00000797          	auipc	a5,0x0
    80002f4c:	2f878793          	addi	a5,a5,760 # 80003240 <kernelvec>
    80002f50:	10579073          	csrw	stvec,a5
    80002f54:	00813403          	ld	s0,8(sp)
    80002f58:	01010113          	addi	sp,sp,16
    80002f5c:	00008067          	ret

0000000080002f60 <usertrap>:
    80002f60:	ff010113          	addi	sp,sp,-16
    80002f64:	00813423          	sd	s0,8(sp)
    80002f68:	01010413          	addi	s0,sp,16
    80002f6c:	00813403          	ld	s0,8(sp)
    80002f70:	01010113          	addi	sp,sp,16
    80002f74:	00008067          	ret

0000000080002f78 <usertrapret>:
    80002f78:	ff010113          	addi	sp,sp,-16
    80002f7c:	00813423          	sd	s0,8(sp)
    80002f80:	01010413          	addi	s0,sp,16
    80002f84:	00813403          	ld	s0,8(sp)
    80002f88:	01010113          	addi	sp,sp,16
    80002f8c:	00008067          	ret

0000000080002f90 <kerneltrap>:
    80002f90:	fe010113          	addi	sp,sp,-32
    80002f94:	00813823          	sd	s0,16(sp)
    80002f98:	00113c23          	sd	ra,24(sp)
    80002f9c:	00913423          	sd	s1,8(sp)
    80002fa0:	02010413          	addi	s0,sp,32
    80002fa4:	142025f3          	csrr	a1,scause
    80002fa8:	100027f3          	csrr	a5,sstatus
    80002fac:	0027f793          	andi	a5,a5,2
    80002fb0:	10079c63          	bnez	a5,800030c8 <kerneltrap+0x138>
    80002fb4:	142027f3          	csrr	a5,scause
    80002fb8:	0207ce63          	bltz	a5,80002ff4 <kerneltrap+0x64>
    80002fbc:	00002517          	auipc	a0,0x2
    80002fc0:	40c50513          	addi	a0,a0,1036 # 800053c8 <_ZZ12printIntegermE6digits+0x100>
    80002fc4:	00001097          	auipc	ra,0x1
    80002fc8:	884080e7          	jalr	-1916(ra) # 80003848 <__printf>
    80002fcc:	141025f3          	csrr	a1,sepc
    80002fd0:	14302673          	csrr	a2,stval
    80002fd4:	00002517          	auipc	a0,0x2
    80002fd8:	40450513          	addi	a0,a0,1028 # 800053d8 <_ZZ12printIntegermE6digits+0x110>
    80002fdc:	00001097          	auipc	ra,0x1
    80002fe0:	86c080e7          	jalr	-1940(ra) # 80003848 <__printf>
    80002fe4:	00002517          	auipc	a0,0x2
    80002fe8:	40c50513          	addi	a0,a0,1036 # 800053f0 <_ZZ12printIntegermE6digits+0x128>
    80002fec:	00001097          	auipc	ra,0x1
    80002ff0:	800080e7          	jalr	-2048(ra) # 800037ec <panic>
    80002ff4:	0ff7f713          	andi	a4,a5,255
    80002ff8:	00900693          	li	a3,9
    80002ffc:	04d70063          	beq	a4,a3,8000303c <kerneltrap+0xac>
    80003000:	fff00713          	li	a4,-1
    80003004:	03f71713          	slli	a4,a4,0x3f
    80003008:	00170713          	addi	a4,a4,1
    8000300c:	fae798e3          	bne	a5,a4,80002fbc <kerneltrap+0x2c>
    80003010:	00000097          	auipc	ra,0x0
    80003014:	e00080e7          	jalr	-512(ra) # 80002e10 <cpuid>
    80003018:	06050663          	beqz	a0,80003084 <kerneltrap+0xf4>
    8000301c:	144027f3          	csrr	a5,sip
    80003020:	ffd7f793          	andi	a5,a5,-3
    80003024:	14479073          	csrw	sip,a5
    80003028:	01813083          	ld	ra,24(sp)
    8000302c:	01013403          	ld	s0,16(sp)
    80003030:	00813483          	ld	s1,8(sp)
    80003034:	02010113          	addi	sp,sp,32
    80003038:	00008067          	ret
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	3c8080e7          	jalr	968(ra) # 80003404 <plic_claim>
    80003044:	00a00793          	li	a5,10
    80003048:	00050493          	mv	s1,a0
    8000304c:	06f50863          	beq	a0,a5,800030bc <kerneltrap+0x12c>
    80003050:	fc050ce3          	beqz	a0,80003028 <kerneltrap+0x98>
    80003054:	00050593          	mv	a1,a0
    80003058:	00002517          	auipc	a0,0x2
    8000305c:	35050513          	addi	a0,a0,848 # 800053a8 <_ZZ12printIntegermE6digits+0xe0>
    80003060:	00000097          	auipc	ra,0x0
    80003064:	7e8080e7          	jalr	2024(ra) # 80003848 <__printf>
    80003068:	01013403          	ld	s0,16(sp)
    8000306c:	01813083          	ld	ra,24(sp)
    80003070:	00048513          	mv	a0,s1
    80003074:	00813483          	ld	s1,8(sp)
    80003078:	02010113          	addi	sp,sp,32
    8000307c:	00000317          	auipc	t1,0x0
    80003080:	3c030067          	jr	960(t1) # 8000343c <plic_complete>
    80003084:	00004517          	auipc	a0,0x4
    80003088:	fcc50513          	addi	a0,a0,-52 # 80007050 <tickslock>
    8000308c:	00001097          	auipc	ra,0x1
    80003090:	490080e7          	jalr	1168(ra) # 8000451c <acquire>
    80003094:	00003717          	auipc	a4,0x3
    80003098:	eb070713          	addi	a4,a4,-336 # 80005f44 <ticks>
    8000309c:	00072783          	lw	a5,0(a4)
    800030a0:	00004517          	auipc	a0,0x4
    800030a4:	fb050513          	addi	a0,a0,-80 # 80007050 <tickslock>
    800030a8:	0017879b          	addiw	a5,a5,1
    800030ac:	00f72023          	sw	a5,0(a4)
    800030b0:	00001097          	auipc	ra,0x1
    800030b4:	538080e7          	jalr	1336(ra) # 800045e8 <release>
    800030b8:	f65ff06f          	j	8000301c <kerneltrap+0x8c>
    800030bc:	00001097          	auipc	ra,0x1
    800030c0:	094080e7          	jalr	148(ra) # 80004150 <uartintr>
    800030c4:	fa5ff06f          	j	80003068 <kerneltrap+0xd8>
    800030c8:	00002517          	auipc	a0,0x2
    800030cc:	2c050513          	addi	a0,a0,704 # 80005388 <_ZZ12printIntegermE6digits+0xc0>
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	71c080e7          	jalr	1820(ra) # 800037ec <panic>

00000000800030d8 <clockintr>:
    800030d8:	fe010113          	addi	sp,sp,-32
    800030dc:	00813823          	sd	s0,16(sp)
    800030e0:	00913423          	sd	s1,8(sp)
    800030e4:	00113c23          	sd	ra,24(sp)
    800030e8:	02010413          	addi	s0,sp,32
    800030ec:	00004497          	auipc	s1,0x4
    800030f0:	f6448493          	addi	s1,s1,-156 # 80007050 <tickslock>
    800030f4:	00048513          	mv	a0,s1
    800030f8:	00001097          	auipc	ra,0x1
    800030fc:	424080e7          	jalr	1060(ra) # 8000451c <acquire>
    80003100:	00003717          	auipc	a4,0x3
    80003104:	e4470713          	addi	a4,a4,-444 # 80005f44 <ticks>
    80003108:	00072783          	lw	a5,0(a4)
    8000310c:	01013403          	ld	s0,16(sp)
    80003110:	01813083          	ld	ra,24(sp)
    80003114:	00048513          	mv	a0,s1
    80003118:	0017879b          	addiw	a5,a5,1
    8000311c:	00813483          	ld	s1,8(sp)
    80003120:	00f72023          	sw	a5,0(a4)
    80003124:	02010113          	addi	sp,sp,32
    80003128:	00001317          	auipc	t1,0x1
    8000312c:	4c030067          	jr	1216(t1) # 800045e8 <release>

0000000080003130 <devintr>:
    80003130:	142027f3          	csrr	a5,scause
    80003134:	00000513          	li	a0,0
    80003138:	0007c463          	bltz	a5,80003140 <devintr+0x10>
    8000313c:	00008067          	ret
    80003140:	fe010113          	addi	sp,sp,-32
    80003144:	00813823          	sd	s0,16(sp)
    80003148:	00113c23          	sd	ra,24(sp)
    8000314c:	00913423          	sd	s1,8(sp)
    80003150:	02010413          	addi	s0,sp,32
    80003154:	0ff7f713          	andi	a4,a5,255
    80003158:	00900693          	li	a3,9
    8000315c:	04d70c63          	beq	a4,a3,800031b4 <devintr+0x84>
    80003160:	fff00713          	li	a4,-1
    80003164:	03f71713          	slli	a4,a4,0x3f
    80003168:	00170713          	addi	a4,a4,1
    8000316c:	00e78c63          	beq	a5,a4,80003184 <devintr+0x54>
    80003170:	01813083          	ld	ra,24(sp)
    80003174:	01013403          	ld	s0,16(sp)
    80003178:	00813483          	ld	s1,8(sp)
    8000317c:	02010113          	addi	sp,sp,32
    80003180:	00008067          	ret
    80003184:	00000097          	auipc	ra,0x0
    80003188:	c8c080e7          	jalr	-884(ra) # 80002e10 <cpuid>
    8000318c:	06050663          	beqz	a0,800031f8 <devintr+0xc8>
    80003190:	144027f3          	csrr	a5,sip
    80003194:	ffd7f793          	andi	a5,a5,-3
    80003198:	14479073          	csrw	sip,a5
    8000319c:	01813083          	ld	ra,24(sp)
    800031a0:	01013403          	ld	s0,16(sp)
    800031a4:	00813483          	ld	s1,8(sp)
    800031a8:	00200513          	li	a0,2
    800031ac:	02010113          	addi	sp,sp,32
    800031b0:	00008067          	ret
    800031b4:	00000097          	auipc	ra,0x0
    800031b8:	250080e7          	jalr	592(ra) # 80003404 <plic_claim>
    800031bc:	00a00793          	li	a5,10
    800031c0:	00050493          	mv	s1,a0
    800031c4:	06f50663          	beq	a0,a5,80003230 <devintr+0x100>
    800031c8:	00100513          	li	a0,1
    800031cc:	fa0482e3          	beqz	s1,80003170 <devintr+0x40>
    800031d0:	00048593          	mv	a1,s1
    800031d4:	00002517          	auipc	a0,0x2
    800031d8:	1d450513          	addi	a0,a0,468 # 800053a8 <_ZZ12printIntegermE6digits+0xe0>
    800031dc:	00000097          	auipc	ra,0x0
    800031e0:	66c080e7          	jalr	1644(ra) # 80003848 <__printf>
    800031e4:	00048513          	mv	a0,s1
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	254080e7          	jalr	596(ra) # 8000343c <plic_complete>
    800031f0:	00100513          	li	a0,1
    800031f4:	f7dff06f          	j	80003170 <devintr+0x40>
    800031f8:	00004517          	auipc	a0,0x4
    800031fc:	e5850513          	addi	a0,a0,-424 # 80007050 <tickslock>
    80003200:	00001097          	auipc	ra,0x1
    80003204:	31c080e7          	jalr	796(ra) # 8000451c <acquire>
    80003208:	00003717          	auipc	a4,0x3
    8000320c:	d3c70713          	addi	a4,a4,-708 # 80005f44 <ticks>
    80003210:	00072783          	lw	a5,0(a4)
    80003214:	00004517          	auipc	a0,0x4
    80003218:	e3c50513          	addi	a0,a0,-452 # 80007050 <tickslock>
    8000321c:	0017879b          	addiw	a5,a5,1
    80003220:	00f72023          	sw	a5,0(a4)
    80003224:	00001097          	auipc	ra,0x1
    80003228:	3c4080e7          	jalr	964(ra) # 800045e8 <release>
    8000322c:	f65ff06f          	j	80003190 <devintr+0x60>
    80003230:	00001097          	auipc	ra,0x1
    80003234:	f20080e7          	jalr	-224(ra) # 80004150 <uartintr>
    80003238:	fadff06f          	j	800031e4 <devintr+0xb4>
    8000323c:	0000                	unimp
	...

0000000080003240 <kernelvec>:
    80003240:	f0010113          	addi	sp,sp,-256
    80003244:	00113023          	sd	ra,0(sp)
    80003248:	00213423          	sd	sp,8(sp)
    8000324c:	00313823          	sd	gp,16(sp)
    80003250:	00413c23          	sd	tp,24(sp)
    80003254:	02513023          	sd	t0,32(sp)
    80003258:	02613423          	sd	t1,40(sp)
    8000325c:	02713823          	sd	t2,48(sp)
    80003260:	02813c23          	sd	s0,56(sp)
    80003264:	04913023          	sd	s1,64(sp)
    80003268:	04a13423          	sd	a0,72(sp)
    8000326c:	04b13823          	sd	a1,80(sp)
    80003270:	04c13c23          	sd	a2,88(sp)
    80003274:	06d13023          	sd	a3,96(sp)
    80003278:	06e13423          	sd	a4,104(sp)
    8000327c:	06f13823          	sd	a5,112(sp)
    80003280:	07013c23          	sd	a6,120(sp)
    80003284:	09113023          	sd	a7,128(sp)
    80003288:	09213423          	sd	s2,136(sp)
    8000328c:	09313823          	sd	s3,144(sp)
    80003290:	09413c23          	sd	s4,152(sp)
    80003294:	0b513023          	sd	s5,160(sp)
    80003298:	0b613423          	sd	s6,168(sp)
    8000329c:	0b713823          	sd	s7,176(sp)
    800032a0:	0b813c23          	sd	s8,184(sp)
    800032a4:	0d913023          	sd	s9,192(sp)
    800032a8:	0da13423          	sd	s10,200(sp)
    800032ac:	0db13823          	sd	s11,208(sp)
    800032b0:	0dc13c23          	sd	t3,216(sp)
    800032b4:	0fd13023          	sd	t4,224(sp)
    800032b8:	0fe13423          	sd	t5,232(sp)
    800032bc:	0ff13823          	sd	t6,240(sp)
    800032c0:	cd1ff0ef          	jal	ra,80002f90 <kerneltrap>
    800032c4:	00013083          	ld	ra,0(sp)
    800032c8:	00813103          	ld	sp,8(sp)
    800032cc:	01013183          	ld	gp,16(sp)
    800032d0:	02013283          	ld	t0,32(sp)
    800032d4:	02813303          	ld	t1,40(sp)
    800032d8:	03013383          	ld	t2,48(sp)
    800032dc:	03813403          	ld	s0,56(sp)
    800032e0:	04013483          	ld	s1,64(sp)
    800032e4:	04813503          	ld	a0,72(sp)
    800032e8:	05013583          	ld	a1,80(sp)
    800032ec:	05813603          	ld	a2,88(sp)
    800032f0:	06013683          	ld	a3,96(sp)
    800032f4:	06813703          	ld	a4,104(sp)
    800032f8:	07013783          	ld	a5,112(sp)
    800032fc:	07813803          	ld	a6,120(sp)
    80003300:	08013883          	ld	a7,128(sp)
    80003304:	08813903          	ld	s2,136(sp)
    80003308:	09013983          	ld	s3,144(sp)
    8000330c:	09813a03          	ld	s4,152(sp)
    80003310:	0a013a83          	ld	s5,160(sp)
    80003314:	0a813b03          	ld	s6,168(sp)
    80003318:	0b013b83          	ld	s7,176(sp)
    8000331c:	0b813c03          	ld	s8,184(sp)
    80003320:	0c013c83          	ld	s9,192(sp)
    80003324:	0c813d03          	ld	s10,200(sp)
    80003328:	0d013d83          	ld	s11,208(sp)
    8000332c:	0d813e03          	ld	t3,216(sp)
    80003330:	0e013e83          	ld	t4,224(sp)
    80003334:	0e813f03          	ld	t5,232(sp)
    80003338:	0f013f83          	ld	t6,240(sp)
    8000333c:	10010113          	addi	sp,sp,256
    80003340:	10200073          	sret
    80003344:	00000013          	nop
    80003348:	00000013          	nop
    8000334c:	00000013          	nop

0000000080003350 <timervec>:
    80003350:	34051573          	csrrw	a0,mscratch,a0
    80003354:	00b53023          	sd	a1,0(a0)
    80003358:	00c53423          	sd	a2,8(a0)
    8000335c:	00d53823          	sd	a3,16(a0)
    80003360:	01853583          	ld	a1,24(a0)
    80003364:	02053603          	ld	a2,32(a0)
    80003368:	0005b683          	ld	a3,0(a1)
    8000336c:	00c686b3          	add	a3,a3,a2
    80003370:	00d5b023          	sd	a3,0(a1)
    80003374:	00200593          	li	a1,2
    80003378:	14459073          	csrw	sip,a1
    8000337c:	01053683          	ld	a3,16(a0)
    80003380:	00853603          	ld	a2,8(a0)
    80003384:	00053583          	ld	a1,0(a0)
    80003388:	34051573          	csrrw	a0,mscratch,a0
    8000338c:	30200073          	mret

0000000080003390 <plicinit>:
    80003390:	ff010113          	addi	sp,sp,-16
    80003394:	00813423          	sd	s0,8(sp)
    80003398:	01010413          	addi	s0,sp,16
    8000339c:	00813403          	ld	s0,8(sp)
    800033a0:	0c0007b7          	lui	a5,0xc000
    800033a4:	00100713          	li	a4,1
    800033a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800033ac:	00e7a223          	sw	a4,4(a5)
    800033b0:	01010113          	addi	sp,sp,16
    800033b4:	00008067          	ret

00000000800033b8 <plicinithart>:
    800033b8:	ff010113          	addi	sp,sp,-16
    800033bc:	00813023          	sd	s0,0(sp)
    800033c0:	00113423          	sd	ra,8(sp)
    800033c4:	01010413          	addi	s0,sp,16
    800033c8:	00000097          	auipc	ra,0x0
    800033cc:	a48080e7          	jalr	-1464(ra) # 80002e10 <cpuid>
    800033d0:	0085171b          	slliw	a4,a0,0x8
    800033d4:	0c0027b7          	lui	a5,0xc002
    800033d8:	00e787b3          	add	a5,a5,a4
    800033dc:	40200713          	li	a4,1026
    800033e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800033e4:	00813083          	ld	ra,8(sp)
    800033e8:	00013403          	ld	s0,0(sp)
    800033ec:	00d5151b          	slliw	a0,a0,0xd
    800033f0:	0c2017b7          	lui	a5,0xc201
    800033f4:	00a78533          	add	a0,a5,a0
    800033f8:	00052023          	sw	zero,0(a0)
    800033fc:	01010113          	addi	sp,sp,16
    80003400:	00008067          	ret

0000000080003404 <plic_claim>:
    80003404:	ff010113          	addi	sp,sp,-16
    80003408:	00813023          	sd	s0,0(sp)
    8000340c:	00113423          	sd	ra,8(sp)
    80003410:	01010413          	addi	s0,sp,16
    80003414:	00000097          	auipc	ra,0x0
    80003418:	9fc080e7          	jalr	-1540(ra) # 80002e10 <cpuid>
    8000341c:	00813083          	ld	ra,8(sp)
    80003420:	00013403          	ld	s0,0(sp)
    80003424:	00d5151b          	slliw	a0,a0,0xd
    80003428:	0c2017b7          	lui	a5,0xc201
    8000342c:	00a78533          	add	a0,a5,a0
    80003430:	00452503          	lw	a0,4(a0)
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00008067          	ret

000000008000343c <plic_complete>:
    8000343c:	fe010113          	addi	sp,sp,-32
    80003440:	00813823          	sd	s0,16(sp)
    80003444:	00913423          	sd	s1,8(sp)
    80003448:	00113c23          	sd	ra,24(sp)
    8000344c:	02010413          	addi	s0,sp,32
    80003450:	00050493          	mv	s1,a0
    80003454:	00000097          	auipc	ra,0x0
    80003458:	9bc080e7          	jalr	-1604(ra) # 80002e10 <cpuid>
    8000345c:	01813083          	ld	ra,24(sp)
    80003460:	01013403          	ld	s0,16(sp)
    80003464:	00d5179b          	slliw	a5,a0,0xd
    80003468:	0c201737          	lui	a4,0xc201
    8000346c:	00f707b3          	add	a5,a4,a5
    80003470:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003474:	00813483          	ld	s1,8(sp)
    80003478:	02010113          	addi	sp,sp,32
    8000347c:	00008067          	ret

0000000080003480 <consolewrite>:
    80003480:	fb010113          	addi	sp,sp,-80
    80003484:	04813023          	sd	s0,64(sp)
    80003488:	04113423          	sd	ra,72(sp)
    8000348c:	02913c23          	sd	s1,56(sp)
    80003490:	03213823          	sd	s2,48(sp)
    80003494:	03313423          	sd	s3,40(sp)
    80003498:	03413023          	sd	s4,32(sp)
    8000349c:	01513c23          	sd	s5,24(sp)
    800034a0:	05010413          	addi	s0,sp,80
    800034a4:	06c05c63          	blez	a2,8000351c <consolewrite+0x9c>
    800034a8:	00060993          	mv	s3,a2
    800034ac:	00050a13          	mv	s4,a0
    800034b0:	00058493          	mv	s1,a1
    800034b4:	00000913          	li	s2,0
    800034b8:	fff00a93          	li	s5,-1
    800034bc:	01c0006f          	j	800034d8 <consolewrite+0x58>
    800034c0:	fbf44503          	lbu	a0,-65(s0)
    800034c4:	0019091b          	addiw	s2,s2,1
    800034c8:	00148493          	addi	s1,s1,1
    800034cc:	00001097          	auipc	ra,0x1
    800034d0:	a9c080e7          	jalr	-1380(ra) # 80003f68 <uartputc>
    800034d4:	03298063          	beq	s3,s2,800034f4 <consolewrite+0x74>
    800034d8:	00048613          	mv	a2,s1
    800034dc:	00100693          	li	a3,1
    800034e0:	000a0593          	mv	a1,s4
    800034e4:	fbf40513          	addi	a0,s0,-65
    800034e8:	00000097          	auipc	ra,0x0
    800034ec:	9e0080e7          	jalr	-1568(ra) # 80002ec8 <either_copyin>
    800034f0:	fd5518e3          	bne	a0,s5,800034c0 <consolewrite+0x40>
    800034f4:	04813083          	ld	ra,72(sp)
    800034f8:	04013403          	ld	s0,64(sp)
    800034fc:	03813483          	ld	s1,56(sp)
    80003500:	02813983          	ld	s3,40(sp)
    80003504:	02013a03          	ld	s4,32(sp)
    80003508:	01813a83          	ld	s5,24(sp)
    8000350c:	00090513          	mv	a0,s2
    80003510:	03013903          	ld	s2,48(sp)
    80003514:	05010113          	addi	sp,sp,80
    80003518:	00008067          	ret
    8000351c:	00000913          	li	s2,0
    80003520:	fd5ff06f          	j	800034f4 <consolewrite+0x74>

0000000080003524 <consoleread>:
    80003524:	f9010113          	addi	sp,sp,-112
    80003528:	06813023          	sd	s0,96(sp)
    8000352c:	04913c23          	sd	s1,88(sp)
    80003530:	05213823          	sd	s2,80(sp)
    80003534:	05313423          	sd	s3,72(sp)
    80003538:	05413023          	sd	s4,64(sp)
    8000353c:	03513c23          	sd	s5,56(sp)
    80003540:	03613823          	sd	s6,48(sp)
    80003544:	03713423          	sd	s7,40(sp)
    80003548:	03813023          	sd	s8,32(sp)
    8000354c:	06113423          	sd	ra,104(sp)
    80003550:	01913c23          	sd	s9,24(sp)
    80003554:	07010413          	addi	s0,sp,112
    80003558:	00060b93          	mv	s7,a2
    8000355c:	00050913          	mv	s2,a0
    80003560:	00058c13          	mv	s8,a1
    80003564:	00060b1b          	sext.w	s6,a2
    80003568:	00004497          	auipc	s1,0x4
    8000356c:	b1048493          	addi	s1,s1,-1264 # 80007078 <cons>
    80003570:	00400993          	li	s3,4
    80003574:	fff00a13          	li	s4,-1
    80003578:	00a00a93          	li	s5,10
    8000357c:	05705e63          	blez	s7,800035d8 <consoleread+0xb4>
    80003580:	09c4a703          	lw	a4,156(s1)
    80003584:	0984a783          	lw	a5,152(s1)
    80003588:	0007071b          	sext.w	a4,a4
    8000358c:	08e78463          	beq	a5,a4,80003614 <consoleread+0xf0>
    80003590:	07f7f713          	andi	a4,a5,127
    80003594:	00e48733          	add	a4,s1,a4
    80003598:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000359c:	0017869b          	addiw	a3,a5,1
    800035a0:	08d4ac23          	sw	a3,152(s1)
    800035a4:	00070c9b          	sext.w	s9,a4
    800035a8:	0b370663          	beq	a4,s3,80003654 <consoleread+0x130>
    800035ac:	00100693          	li	a3,1
    800035b0:	f9f40613          	addi	a2,s0,-97
    800035b4:	000c0593          	mv	a1,s8
    800035b8:	00090513          	mv	a0,s2
    800035bc:	f8e40fa3          	sb	a4,-97(s0)
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	8bc080e7          	jalr	-1860(ra) # 80002e7c <either_copyout>
    800035c8:	01450863          	beq	a0,s4,800035d8 <consoleread+0xb4>
    800035cc:	001c0c13          	addi	s8,s8,1
    800035d0:	fffb8b9b          	addiw	s7,s7,-1
    800035d4:	fb5c94e3          	bne	s9,s5,8000357c <consoleread+0x58>
    800035d8:	000b851b          	sext.w	a0,s7
    800035dc:	06813083          	ld	ra,104(sp)
    800035e0:	06013403          	ld	s0,96(sp)
    800035e4:	05813483          	ld	s1,88(sp)
    800035e8:	05013903          	ld	s2,80(sp)
    800035ec:	04813983          	ld	s3,72(sp)
    800035f0:	04013a03          	ld	s4,64(sp)
    800035f4:	03813a83          	ld	s5,56(sp)
    800035f8:	02813b83          	ld	s7,40(sp)
    800035fc:	02013c03          	ld	s8,32(sp)
    80003600:	01813c83          	ld	s9,24(sp)
    80003604:	40ab053b          	subw	a0,s6,a0
    80003608:	03013b03          	ld	s6,48(sp)
    8000360c:	07010113          	addi	sp,sp,112
    80003610:	00008067          	ret
    80003614:	00001097          	auipc	ra,0x1
    80003618:	1d8080e7          	jalr	472(ra) # 800047ec <push_on>
    8000361c:	0984a703          	lw	a4,152(s1)
    80003620:	09c4a783          	lw	a5,156(s1)
    80003624:	0007879b          	sext.w	a5,a5
    80003628:	fef70ce3          	beq	a4,a5,80003620 <consoleread+0xfc>
    8000362c:	00001097          	auipc	ra,0x1
    80003630:	234080e7          	jalr	564(ra) # 80004860 <pop_on>
    80003634:	0984a783          	lw	a5,152(s1)
    80003638:	07f7f713          	andi	a4,a5,127
    8000363c:	00e48733          	add	a4,s1,a4
    80003640:	01874703          	lbu	a4,24(a4)
    80003644:	0017869b          	addiw	a3,a5,1
    80003648:	08d4ac23          	sw	a3,152(s1)
    8000364c:	00070c9b          	sext.w	s9,a4
    80003650:	f5371ee3          	bne	a4,s3,800035ac <consoleread+0x88>
    80003654:	000b851b          	sext.w	a0,s7
    80003658:	f96bf2e3          	bgeu	s7,s6,800035dc <consoleread+0xb8>
    8000365c:	08f4ac23          	sw	a5,152(s1)
    80003660:	f7dff06f          	j	800035dc <consoleread+0xb8>

0000000080003664 <consputc>:
    80003664:	10000793          	li	a5,256
    80003668:	00f50663          	beq	a0,a5,80003674 <consputc+0x10>
    8000366c:	00001317          	auipc	t1,0x1
    80003670:	9f430067          	jr	-1548(t1) # 80004060 <uartputc_sync>
    80003674:	ff010113          	addi	sp,sp,-16
    80003678:	00113423          	sd	ra,8(sp)
    8000367c:	00813023          	sd	s0,0(sp)
    80003680:	01010413          	addi	s0,sp,16
    80003684:	00800513          	li	a0,8
    80003688:	00001097          	auipc	ra,0x1
    8000368c:	9d8080e7          	jalr	-1576(ra) # 80004060 <uartputc_sync>
    80003690:	02000513          	li	a0,32
    80003694:	00001097          	auipc	ra,0x1
    80003698:	9cc080e7          	jalr	-1588(ra) # 80004060 <uartputc_sync>
    8000369c:	00013403          	ld	s0,0(sp)
    800036a0:	00813083          	ld	ra,8(sp)
    800036a4:	00800513          	li	a0,8
    800036a8:	01010113          	addi	sp,sp,16
    800036ac:	00001317          	auipc	t1,0x1
    800036b0:	9b430067          	jr	-1612(t1) # 80004060 <uartputc_sync>

00000000800036b4 <consoleintr>:
    800036b4:	fe010113          	addi	sp,sp,-32
    800036b8:	00813823          	sd	s0,16(sp)
    800036bc:	00913423          	sd	s1,8(sp)
    800036c0:	01213023          	sd	s2,0(sp)
    800036c4:	00113c23          	sd	ra,24(sp)
    800036c8:	02010413          	addi	s0,sp,32
    800036cc:	00004917          	auipc	s2,0x4
    800036d0:	9ac90913          	addi	s2,s2,-1620 # 80007078 <cons>
    800036d4:	00050493          	mv	s1,a0
    800036d8:	00090513          	mv	a0,s2
    800036dc:	00001097          	auipc	ra,0x1
    800036e0:	e40080e7          	jalr	-448(ra) # 8000451c <acquire>
    800036e4:	02048c63          	beqz	s1,8000371c <consoleintr+0x68>
    800036e8:	0a092783          	lw	a5,160(s2)
    800036ec:	09892703          	lw	a4,152(s2)
    800036f0:	07f00693          	li	a3,127
    800036f4:	40e7873b          	subw	a4,a5,a4
    800036f8:	02e6e263          	bltu	a3,a4,8000371c <consoleintr+0x68>
    800036fc:	00d00713          	li	a4,13
    80003700:	04e48063          	beq	s1,a4,80003740 <consoleintr+0x8c>
    80003704:	07f7f713          	andi	a4,a5,127
    80003708:	00e90733          	add	a4,s2,a4
    8000370c:	0017879b          	addiw	a5,a5,1
    80003710:	0af92023          	sw	a5,160(s2)
    80003714:	00970c23          	sb	s1,24(a4)
    80003718:	08f92e23          	sw	a5,156(s2)
    8000371c:	01013403          	ld	s0,16(sp)
    80003720:	01813083          	ld	ra,24(sp)
    80003724:	00813483          	ld	s1,8(sp)
    80003728:	00013903          	ld	s2,0(sp)
    8000372c:	00004517          	auipc	a0,0x4
    80003730:	94c50513          	addi	a0,a0,-1716 # 80007078 <cons>
    80003734:	02010113          	addi	sp,sp,32
    80003738:	00001317          	auipc	t1,0x1
    8000373c:	eb030067          	jr	-336(t1) # 800045e8 <release>
    80003740:	00a00493          	li	s1,10
    80003744:	fc1ff06f          	j	80003704 <consoleintr+0x50>

0000000080003748 <consoleinit>:
    80003748:	fe010113          	addi	sp,sp,-32
    8000374c:	00113c23          	sd	ra,24(sp)
    80003750:	00813823          	sd	s0,16(sp)
    80003754:	00913423          	sd	s1,8(sp)
    80003758:	02010413          	addi	s0,sp,32
    8000375c:	00004497          	auipc	s1,0x4
    80003760:	91c48493          	addi	s1,s1,-1764 # 80007078 <cons>
    80003764:	00048513          	mv	a0,s1
    80003768:	00002597          	auipc	a1,0x2
    8000376c:	c9858593          	addi	a1,a1,-872 # 80005400 <_ZZ12printIntegermE6digits+0x138>
    80003770:	00001097          	auipc	ra,0x1
    80003774:	d88080e7          	jalr	-632(ra) # 800044f8 <initlock>
    80003778:	00000097          	auipc	ra,0x0
    8000377c:	7ac080e7          	jalr	1964(ra) # 80003f24 <uartinit>
    80003780:	01813083          	ld	ra,24(sp)
    80003784:	01013403          	ld	s0,16(sp)
    80003788:	00000797          	auipc	a5,0x0
    8000378c:	d9c78793          	addi	a5,a5,-612 # 80003524 <consoleread>
    80003790:	0af4bc23          	sd	a5,184(s1)
    80003794:	00000797          	auipc	a5,0x0
    80003798:	cec78793          	addi	a5,a5,-788 # 80003480 <consolewrite>
    8000379c:	0cf4b023          	sd	a5,192(s1)
    800037a0:	00813483          	ld	s1,8(sp)
    800037a4:	02010113          	addi	sp,sp,32
    800037a8:	00008067          	ret

00000000800037ac <console_read>:
    800037ac:	ff010113          	addi	sp,sp,-16
    800037b0:	00813423          	sd	s0,8(sp)
    800037b4:	01010413          	addi	s0,sp,16
    800037b8:	00813403          	ld	s0,8(sp)
    800037bc:	00004317          	auipc	t1,0x4
    800037c0:	97433303          	ld	t1,-1676(t1) # 80007130 <devsw+0x10>
    800037c4:	01010113          	addi	sp,sp,16
    800037c8:	00030067          	jr	t1

00000000800037cc <console_write>:
    800037cc:	ff010113          	addi	sp,sp,-16
    800037d0:	00813423          	sd	s0,8(sp)
    800037d4:	01010413          	addi	s0,sp,16
    800037d8:	00813403          	ld	s0,8(sp)
    800037dc:	00004317          	auipc	t1,0x4
    800037e0:	95c33303          	ld	t1,-1700(t1) # 80007138 <devsw+0x18>
    800037e4:	01010113          	addi	sp,sp,16
    800037e8:	00030067          	jr	t1

00000000800037ec <panic>:
    800037ec:	fe010113          	addi	sp,sp,-32
    800037f0:	00113c23          	sd	ra,24(sp)
    800037f4:	00813823          	sd	s0,16(sp)
    800037f8:	00913423          	sd	s1,8(sp)
    800037fc:	02010413          	addi	s0,sp,32
    80003800:	00050493          	mv	s1,a0
    80003804:	00002517          	auipc	a0,0x2
    80003808:	c0450513          	addi	a0,a0,-1020 # 80005408 <_ZZ12printIntegermE6digits+0x140>
    8000380c:	00004797          	auipc	a5,0x4
    80003810:	9c07a623          	sw	zero,-1588(a5) # 800071d8 <pr+0x18>
    80003814:	00000097          	auipc	ra,0x0
    80003818:	034080e7          	jalr	52(ra) # 80003848 <__printf>
    8000381c:	00048513          	mv	a0,s1
    80003820:	00000097          	auipc	ra,0x0
    80003824:	028080e7          	jalr	40(ra) # 80003848 <__printf>
    80003828:	00002517          	auipc	a0,0x2
    8000382c:	98050513          	addi	a0,a0,-1664 # 800051a8 <CONSOLE_STATUS+0x198>
    80003830:	00000097          	auipc	ra,0x0
    80003834:	018080e7          	jalr	24(ra) # 80003848 <__printf>
    80003838:	00100793          	li	a5,1
    8000383c:	00002717          	auipc	a4,0x2
    80003840:	70f72623          	sw	a5,1804(a4) # 80005f48 <panicked>
    80003844:	0000006f          	j	80003844 <panic+0x58>

0000000080003848 <__printf>:
    80003848:	f3010113          	addi	sp,sp,-208
    8000384c:	08813023          	sd	s0,128(sp)
    80003850:	07313423          	sd	s3,104(sp)
    80003854:	09010413          	addi	s0,sp,144
    80003858:	05813023          	sd	s8,64(sp)
    8000385c:	08113423          	sd	ra,136(sp)
    80003860:	06913c23          	sd	s1,120(sp)
    80003864:	07213823          	sd	s2,112(sp)
    80003868:	07413023          	sd	s4,96(sp)
    8000386c:	05513c23          	sd	s5,88(sp)
    80003870:	05613823          	sd	s6,80(sp)
    80003874:	05713423          	sd	s7,72(sp)
    80003878:	03913c23          	sd	s9,56(sp)
    8000387c:	03a13823          	sd	s10,48(sp)
    80003880:	03b13423          	sd	s11,40(sp)
    80003884:	00004317          	auipc	t1,0x4
    80003888:	93c30313          	addi	t1,t1,-1732 # 800071c0 <pr>
    8000388c:	01832c03          	lw	s8,24(t1)
    80003890:	00b43423          	sd	a1,8(s0)
    80003894:	00c43823          	sd	a2,16(s0)
    80003898:	00d43c23          	sd	a3,24(s0)
    8000389c:	02e43023          	sd	a4,32(s0)
    800038a0:	02f43423          	sd	a5,40(s0)
    800038a4:	03043823          	sd	a6,48(s0)
    800038a8:	03143c23          	sd	a7,56(s0)
    800038ac:	00050993          	mv	s3,a0
    800038b0:	4a0c1663          	bnez	s8,80003d5c <__printf+0x514>
    800038b4:	60098c63          	beqz	s3,80003ecc <__printf+0x684>
    800038b8:	0009c503          	lbu	a0,0(s3)
    800038bc:	00840793          	addi	a5,s0,8
    800038c0:	f6f43c23          	sd	a5,-136(s0)
    800038c4:	00000493          	li	s1,0
    800038c8:	22050063          	beqz	a0,80003ae8 <__printf+0x2a0>
    800038cc:	00002a37          	lui	s4,0x2
    800038d0:	00018ab7          	lui	s5,0x18
    800038d4:	000f4b37          	lui	s6,0xf4
    800038d8:	00989bb7          	lui	s7,0x989
    800038dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800038e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800038e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800038e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800038ec:	00148c9b          	addiw	s9,s1,1
    800038f0:	02500793          	li	a5,37
    800038f4:	01998933          	add	s2,s3,s9
    800038f8:	38f51263          	bne	a0,a5,80003c7c <__printf+0x434>
    800038fc:	00094783          	lbu	a5,0(s2)
    80003900:	00078c9b          	sext.w	s9,a5
    80003904:	1e078263          	beqz	a5,80003ae8 <__printf+0x2a0>
    80003908:	0024849b          	addiw	s1,s1,2
    8000390c:	07000713          	li	a4,112
    80003910:	00998933          	add	s2,s3,s1
    80003914:	38e78a63          	beq	a5,a4,80003ca8 <__printf+0x460>
    80003918:	20f76863          	bltu	a4,a5,80003b28 <__printf+0x2e0>
    8000391c:	42a78863          	beq	a5,a0,80003d4c <__printf+0x504>
    80003920:	06400713          	li	a4,100
    80003924:	40e79663          	bne	a5,a4,80003d30 <__printf+0x4e8>
    80003928:	f7843783          	ld	a5,-136(s0)
    8000392c:	0007a603          	lw	a2,0(a5)
    80003930:	00878793          	addi	a5,a5,8
    80003934:	f6f43c23          	sd	a5,-136(s0)
    80003938:	42064a63          	bltz	a2,80003d6c <__printf+0x524>
    8000393c:	00a00713          	li	a4,10
    80003940:	02e677bb          	remuw	a5,a2,a4
    80003944:	00002d97          	auipc	s11,0x2
    80003948:	aecd8d93          	addi	s11,s11,-1300 # 80005430 <digits>
    8000394c:	00900593          	li	a1,9
    80003950:	0006051b          	sext.w	a0,a2
    80003954:	00000c93          	li	s9,0
    80003958:	02079793          	slli	a5,a5,0x20
    8000395c:	0207d793          	srli	a5,a5,0x20
    80003960:	00fd87b3          	add	a5,s11,a5
    80003964:	0007c783          	lbu	a5,0(a5)
    80003968:	02e656bb          	divuw	a3,a2,a4
    8000396c:	f8f40023          	sb	a5,-128(s0)
    80003970:	14c5d863          	bge	a1,a2,80003ac0 <__printf+0x278>
    80003974:	06300593          	li	a1,99
    80003978:	00100c93          	li	s9,1
    8000397c:	02e6f7bb          	remuw	a5,a3,a4
    80003980:	02079793          	slli	a5,a5,0x20
    80003984:	0207d793          	srli	a5,a5,0x20
    80003988:	00fd87b3          	add	a5,s11,a5
    8000398c:	0007c783          	lbu	a5,0(a5)
    80003990:	02e6d73b          	divuw	a4,a3,a4
    80003994:	f8f400a3          	sb	a5,-127(s0)
    80003998:	12a5f463          	bgeu	a1,a0,80003ac0 <__printf+0x278>
    8000399c:	00a00693          	li	a3,10
    800039a0:	00900593          	li	a1,9
    800039a4:	02d777bb          	remuw	a5,a4,a3
    800039a8:	02079793          	slli	a5,a5,0x20
    800039ac:	0207d793          	srli	a5,a5,0x20
    800039b0:	00fd87b3          	add	a5,s11,a5
    800039b4:	0007c503          	lbu	a0,0(a5)
    800039b8:	02d757bb          	divuw	a5,a4,a3
    800039bc:	f8a40123          	sb	a0,-126(s0)
    800039c0:	48e5f263          	bgeu	a1,a4,80003e44 <__printf+0x5fc>
    800039c4:	06300513          	li	a0,99
    800039c8:	02d7f5bb          	remuw	a1,a5,a3
    800039cc:	02059593          	slli	a1,a1,0x20
    800039d0:	0205d593          	srli	a1,a1,0x20
    800039d4:	00bd85b3          	add	a1,s11,a1
    800039d8:	0005c583          	lbu	a1,0(a1)
    800039dc:	02d7d7bb          	divuw	a5,a5,a3
    800039e0:	f8b401a3          	sb	a1,-125(s0)
    800039e4:	48e57263          	bgeu	a0,a4,80003e68 <__printf+0x620>
    800039e8:	3e700513          	li	a0,999
    800039ec:	02d7f5bb          	remuw	a1,a5,a3
    800039f0:	02059593          	slli	a1,a1,0x20
    800039f4:	0205d593          	srli	a1,a1,0x20
    800039f8:	00bd85b3          	add	a1,s11,a1
    800039fc:	0005c583          	lbu	a1,0(a1)
    80003a00:	02d7d7bb          	divuw	a5,a5,a3
    80003a04:	f8b40223          	sb	a1,-124(s0)
    80003a08:	46e57663          	bgeu	a0,a4,80003e74 <__printf+0x62c>
    80003a0c:	02d7f5bb          	remuw	a1,a5,a3
    80003a10:	02059593          	slli	a1,a1,0x20
    80003a14:	0205d593          	srli	a1,a1,0x20
    80003a18:	00bd85b3          	add	a1,s11,a1
    80003a1c:	0005c583          	lbu	a1,0(a1)
    80003a20:	02d7d7bb          	divuw	a5,a5,a3
    80003a24:	f8b402a3          	sb	a1,-123(s0)
    80003a28:	46ea7863          	bgeu	s4,a4,80003e98 <__printf+0x650>
    80003a2c:	02d7f5bb          	remuw	a1,a5,a3
    80003a30:	02059593          	slli	a1,a1,0x20
    80003a34:	0205d593          	srli	a1,a1,0x20
    80003a38:	00bd85b3          	add	a1,s11,a1
    80003a3c:	0005c583          	lbu	a1,0(a1)
    80003a40:	02d7d7bb          	divuw	a5,a5,a3
    80003a44:	f8b40323          	sb	a1,-122(s0)
    80003a48:	3eeaf863          	bgeu	s5,a4,80003e38 <__printf+0x5f0>
    80003a4c:	02d7f5bb          	remuw	a1,a5,a3
    80003a50:	02059593          	slli	a1,a1,0x20
    80003a54:	0205d593          	srli	a1,a1,0x20
    80003a58:	00bd85b3          	add	a1,s11,a1
    80003a5c:	0005c583          	lbu	a1,0(a1)
    80003a60:	02d7d7bb          	divuw	a5,a5,a3
    80003a64:	f8b403a3          	sb	a1,-121(s0)
    80003a68:	42eb7e63          	bgeu	s6,a4,80003ea4 <__printf+0x65c>
    80003a6c:	02d7f5bb          	remuw	a1,a5,a3
    80003a70:	02059593          	slli	a1,a1,0x20
    80003a74:	0205d593          	srli	a1,a1,0x20
    80003a78:	00bd85b3          	add	a1,s11,a1
    80003a7c:	0005c583          	lbu	a1,0(a1)
    80003a80:	02d7d7bb          	divuw	a5,a5,a3
    80003a84:	f8b40423          	sb	a1,-120(s0)
    80003a88:	42ebfc63          	bgeu	s7,a4,80003ec0 <__printf+0x678>
    80003a8c:	02079793          	slli	a5,a5,0x20
    80003a90:	0207d793          	srli	a5,a5,0x20
    80003a94:	00fd8db3          	add	s11,s11,a5
    80003a98:	000dc703          	lbu	a4,0(s11)
    80003a9c:	00a00793          	li	a5,10
    80003aa0:	00900c93          	li	s9,9
    80003aa4:	f8e404a3          	sb	a4,-119(s0)
    80003aa8:	00065c63          	bgez	a2,80003ac0 <__printf+0x278>
    80003aac:	f9040713          	addi	a4,s0,-112
    80003ab0:	00f70733          	add	a4,a4,a5
    80003ab4:	02d00693          	li	a3,45
    80003ab8:	fed70823          	sb	a3,-16(a4)
    80003abc:	00078c93          	mv	s9,a5
    80003ac0:	f8040793          	addi	a5,s0,-128
    80003ac4:	01978cb3          	add	s9,a5,s9
    80003ac8:	f7f40d13          	addi	s10,s0,-129
    80003acc:	000cc503          	lbu	a0,0(s9)
    80003ad0:	fffc8c93          	addi	s9,s9,-1
    80003ad4:	00000097          	auipc	ra,0x0
    80003ad8:	b90080e7          	jalr	-1136(ra) # 80003664 <consputc>
    80003adc:	ffac98e3          	bne	s9,s10,80003acc <__printf+0x284>
    80003ae0:	00094503          	lbu	a0,0(s2)
    80003ae4:	e00514e3          	bnez	a0,800038ec <__printf+0xa4>
    80003ae8:	1a0c1663          	bnez	s8,80003c94 <__printf+0x44c>
    80003aec:	08813083          	ld	ra,136(sp)
    80003af0:	08013403          	ld	s0,128(sp)
    80003af4:	07813483          	ld	s1,120(sp)
    80003af8:	07013903          	ld	s2,112(sp)
    80003afc:	06813983          	ld	s3,104(sp)
    80003b00:	06013a03          	ld	s4,96(sp)
    80003b04:	05813a83          	ld	s5,88(sp)
    80003b08:	05013b03          	ld	s6,80(sp)
    80003b0c:	04813b83          	ld	s7,72(sp)
    80003b10:	04013c03          	ld	s8,64(sp)
    80003b14:	03813c83          	ld	s9,56(sp)
    80003b18:	03013d03          	ld	s10,48(sp)
    80003b1c:	02813d83          	ld	s11,40(sp)
    80003b20:	0d010113          	addi	sp,sp,208
    80003b24:	00008067          	ret
    80003b28:	07300713          	li	a4,115
    80003b2c:	1ce78a63          	beq	a5,a4,80003d00 <__printf+0x4b8>
    80003b30:	07800713          	li	a4,120
    80003b34:	1ee79e63          	bne	a5,a4,80003d30 <__printf+0x4e8>
    80003b38:	f7843783          	ld	a5,-136(s0)
    80003b3c:	0007a703          	lw	a4,0(a5)
    80003b40:	00878793          	addi	a5,a5,8
    80003b44:	f6f43c23          	sd	a5,-136(s0)
    80003b48:	28074263          	bltz	a4,80003dcc <__printf+0x584>
    80003b4c:	00002d97          	auipc	s11,0x2
    80003b50:	8e4d8d93          	addi	s11,s11,-1820 # 80005430 <digits>
    80003b54:	00f77793          	andi	a5,a4,15
    80003b58:	00fd87b3          	add	a5,s11,a5
    80003b5c:	0007c683          	lbu	a3,0(a5)
    80003b60:	00f00613          	li	a2,15
    80003b64:	0007079b          	sext.w	a5,a4
    80003b68:	f8d40023          	sb	a3,-128(s0)
    80003b6c:	0047559b          	srliw	a1,a4,0x4
    80003b70:	0047569b          	srliw	a3,a4,0x4
    80003b74:	00000c93          	li	s9,0
    80003b78:	0ee65063          	bge	a2,a4,80003c58 <__printf+0x410>
    80003b7c:	00f6f693          	andi	a3,a3,15
    80003b80:	00dd86b3          	add	a3,s11,a3
    80003b84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003b88:	0087d79b          	srliw	a5,a5,0x8
    80003b8c:	00100c93          	li	s9,1
    80003b90:	f8d400a3          	sb	a3,-127(s0)
    80003b94:	0cb67263          	bgeu	a2,a1,80003c58 <__printf+0x410>
    80003b98:	00f7f693          	andi	a3,a5,15
    80003b9c:	00dd86b3          	add	a3,s11,a3
    80003ba0:	0006c583          	lbu	a1,0(a3)
    80003ba4:	00f00613          	li	a2,15
    80003ba8:	0047d69b          	srliw	a3,a5,0x4
    80003bac:	f8b40123          	sb	a1,-126(s0)
    80003bb0:	0047d593          	srli	a1,a5,0x4
    80003bb4:	28f67e63          	bgeu	a2,a5,80003e50 <__printf+0x608>
    80003bb8:	00f6f693          	andi	a3,a3,15
    80003bbc:	00dd86b3          	add	a3,s11,a3
    80003bc0:	0006c503          	lbu	a0,0(a3)
    80003bc4:	0087d813          	srli	a6,a5,0x8
    80003bc8:	0087d69b          	srliw	a3,a5,0x8
    80003bcc:	f8a401a3          	sb	a0,-125(s0)
    80003bd0:	28b67663          	bgeu	a2,a1,80003e5c <__printf+0x614>
    80003bd4:	00f6f693          	andi	a3,a3,15
    80003bd8:	00dd86b3          	add	a3,s11,a3
    80003bdc:	0006c583          	lbu	a1,0(a3)
    80003be0:	00c7d513          	srli	a0,a5,0xc
    80003be4:	00c7d69b          	srliw	a3,a5,0xc
    80003be8:	f8b40223          	sb	a1,-124(s0)
    80003bec:	29067a63          	bgeu	a2,a6,80003e80 <__printf+0x638>
    80003bf0:	00f6f693          	andi	a3,a3,15
    80003bf4:	00dd86b3          	add	a3,s11,a3
    80003bf8:	0006c583          	lbu	a1,0(a3)
    80003bfc:	0107d813          	srli	a6,a5,0x10
    80003c00:	0107d69b          	srliw	a3,a5,0x10
    80003c04:	f8b402a3          	sb	a1,-123(s0)
    80003c08:	28a67263          	bgeu	a2,a0,80003e8c <__printf+0x644>
    80003c0c:	00f6f693          	andi	a3,a3,15
    80003c10:	00dd86b3          	add	a3,s11,a3
    80003c14:	0006c683          	lbu	a3,0(a3)
    80003c18:	0147d79b          	srliw	a5,a5,0x14
    80003c1c:	f8d40323          	sb	a3,-122(s0)
    80003c20:	21067663          	bgeu	a2,a6,80003e2c <__printf+0x5e4>
    80003c24:	02079793          	slli	a5,a5,0x20
    80003c28:	0207d793          	srli	a5,a5,0x20
    80003c2c:	00fd8db3          	add	s11,s11,a5
    80003c30:	000dc683          	lbu	a3,0(s11)
    80003c34:	00800793          	li	a5,8
    80003c38:	00700c93          	li	s9,7
    80003c3c:	f8d403a3          	sb	a3,-121(s0)
    80003c40:	00075c63          	bgez	a4,80003c58 <__printf+0x410>
    80003c44:	f9040713          	addi	a4,s0,-112
    80003c48:	00f70733          	add	a4,a4,a5
    80003c4c:	02d00693          	li	a3,45
    80003c50:	fed70823          	sb	a3,-16(a4)
    80003c54:	00078c93          	mv	s9,a5
    80003c58:	f8040793          	addi	a5,s0,-128
    80003c5c:	01978cb3          	add	s9,a5,s9
    80003c60:	f7f40d13          	addi	s10,s0,-129
    80003c64:	000cc503          	lbu	a0,0(s9)
    80003c68:	fffc8c93          	addi	s9,s9,-1
    80003c6c:	00000097          	auipc	ra,0x0
    80003c70:	9f8080e7          	jalr	-1544(ra) # 80003664 <consputc>
    80003c74:	ff9d18e3          	bne	s10,s9,80003c64 <__printf+0x41c>
    80003c78:	0100006f          	j	80003c88 <__printf+0x440>
    80003c7c:	00000097          	auipc	ra,0x0
    80003c80:	9e8080e7          	jalr	-1560(ra) # 80003664 <consputc>
    80003c84:	000c8493          	mv	s1,s9
    80003c88:	00094503          	lbu	a0,0(s2)
    80003c8c:	c60510e3          	bnez	a0,800038ec <__printf+0xa4>
    80003c90:	e40c0ee3          	beqz	s8,80003aec <__printf+0x2a4>
    80003c94:	00003517          	auipc	a0,0x3
    80003c98:	52c50513          	addi	a0,a0,1324 # 800071c0 <pr>
    80003c9c:	00001097          	auipc	ra,0x1
    80003ca0:	94c080e7          	jalr	-1716(ra) # 800045e8 <release>
    80003ca4:	e49ff06f          	j	80003aec <__printf+0x2a4>
    80003ca8:	f7843783          	ld	a5,-136(s0)
    80003cac:	03000513          	li	a0,48
    80003cb0:	01000d13          	li	s10,16
    80003cb4:	00878713          	addi	a4,a5,8
    80003cb8:	0007bc83          	ld	s9,0(a5)
    80003cbc:	f6e43c23          	sd	a4,-136(s0)
    80003cc0:	00000097          	auipc	ra,0x0
    80003cc4:	9a4080e7          	jalr	-1628(ra) # 80003664 <consputc>
    80003cc8:	07800513          	li	a0,120
    80003ccc:	00000097          	auipc	ra,0x0
    80003cd0:	998080e7          	jalr	-1640(ra) # 80003664 <consputc>
    80003cd4:	00001d97          	auipc	s11,0x1
    80003cd8:	75cd8d93          	addi	s11,s11,1884 # 80005430 <digits>
    80003cdc:	03ccd793          	srli	a5,s9,0x3c
    80003ce0:	00fd87b3          	add	a5,s11,a5
    80003ce4:	0007c503          	lbu	a0,0(a5)
    80003ce8:	fffd0d1b          	addiw	s10,s10,-1
    80003cec:	004c9c93          	slli	s9,s9,0x4
    80003cf0:	00000097          	auipc	ra,0x0
    80003cf4:	974080e7          	jalr	-1676(ra) # 80003664 <consputc>
    80003cf8:	fe0d12e3          	bnez	s10,80003cdc <__printf+0x494>
    80003cfc:	f8dff06f          	j	80003c88 <__printf+0x440>
    80003d00:	f7843783          	ld	a5,-136(s0)
    80003d04:	0007bc83          	ld	s9,0(a5)
    80003d08:	00878793          	addi	a5,a5,8
    80003d0c:	f6f43c23          	sd	a5,-136(s0)
    80003d10:	000c9a63          	bnez	s9,80003d24 <__printf+0x4dc>
    80003d14:	1080006f          	j	80003e1c <__printf+0x5d4>
    80003d18:	001c8c93          	addi	s9,s9,1
    80003d1c:	00000097          	auipc	ra,0x0
    80003d20:	948080e7          	jalr	-1720(ra) # 80003664 <consputc>
    80003d24:	000cc503          	lbu	a0,0(s9)
    80003d28:	fe0518e3          	bnez	a0,80003d18 <__printf+0x4d0>
    80003d2c:	f5dff06f          	j	80003c88 <__printf+0x440>
    80003d30:	02500513          	li	a0,37
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	930080e7          	jalr	-1744(ra) # 80003664 <consputc>
    80003d3c:	000c8513          	mv	a0,s9
    80003d40:	00000097          	auipc	ra,0x0
    80003d44:	924080e7          	jalr	-1756(ra) # 80003664 <consputc>
    80003d48:	f41ff06f          	j	80003c88 <__printf+0x440>
    80003d4c:	02500513          	li	a0,37
    80003d50:	00000097          	auipc	ra,0x0
    80003d54:	914080e7          	jalr	-1772(ra) # 80003664 <consputc>
    80003d58:	f31ff06f          	j	80003c88 <__printf+0x440>
    80003d5c:	00030513          	mv	a0,t1
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	7bc080e7          	jalr	1980(ra) # 8000451c <acquire>
    80003d68:	b4dff06f          	j	800038b4 <__printf+0x6c>
    80003d6c:	40c0053b          	negw	a0,a2
    80003d70:	00a00713          	li	a4,10
    80003d74:	02e576bb          	remuw	a3,a0,a4
    80003d78:	00001d97          	auipc	s11,0x1
    80003d7c:	6b8d8d93          	addi	s11,s11,1720 # 80005430 <digits>
    80003d80:	ff700593          	li	a1,-9
    80003d84:	02069693          	slli	a3,a3,0x20
    80003d88:	0206d693          	srli	a3,a3,0x20
    80003d8c:	00dd86b3          	add	a3,s11,a3
    80003d90:	0006c683          	lbu	a3,0(a3)
    80003d94:	02e557bb          	divuw	a5,a0,a4
    80003d98:	f8d40023          	sb	a3,-128(s0)
    80003d9c:	10b65e63          	bge	a2,a1,80003eb8 <__printf+0x670>
    80003da0:	06300593          	li	a1,99
    80003da4:	02e7f6bb          	remuw	a3,a5,a4
    80003da8:	02069693          	slli	a3,a3,0x20
    80003dac:	0206d693          	srli	a3,a3,0x20
    80003db0:	00dd86b3          	add	a3,s11,a3
    80003db4:	0006c683          	lbu	a3,0(a3)
    80003db8:	02e7d73b          	divuw	a4,a5,a4
    80003dbc:	00200793          	li	a5,2
    80003dc0:	f8d400a3          	sb	a3,-127(s0)
    80003dc4:	bca5ece3          	bltu	a1,a0,8000399c <__printf+0x154>
    80003dc8:	ce5ff06f          	j	80003aac <__printf+0x264>
    80003dcc:	40e007bb          	negw	a5,a4
    80003dd0:	00001d97          	auipc	s11,0x1
    80003dd4:	660d8d93          	addi	s11,s11,1632 # 80005430 <digits>
    80003dd8:	00f7f693          	andi	a3,a5,15
    80003ddc:	00dd86b3          	add	a3,s11,a3
    80003de0:	0006c583          	lbu	a1,0(a3)
    80003de4:	ff100613          	li	a2,-15
    80003de8:	0047d69b          	srliw	a3,a5,0x4
    80003dec:	f8b40023          	sb	a1,-128(s0)
    80003df0:	0047d59b          	srliw	a1,a5,0x4
    80003df4:	0ac75e63          	bge	a4,a2,80003eb0 <__printf+0x668>
    80003df8:	00f6f693          	andi	a3,a3,15
    80003dfc:	00dd86b3          	add	a3,s11,a3
    80003e00:	0006c603          	lbu	a2,0(a3)
    80003e04:	00f00693          	li	a3,15
    80003e08:	0087d79b          	srliw	a5,a5,0x8
    80003e0c:	f8c400a3          	sb	a2,-127(s0)
    80003e10:	d8b6e4e3          	bltu	a3,a1,80003b98 <__printf+0x350>
    80003e14:	00200793          	li	a5,2
    80003e18:	e2dff06f          	j	80003c44 <__printf+0x3fc>
    80003e1c:	00001c97          	auipc	s9,0x1
    80003e20:	5f4c8c93          	addi	s9,s9,1524 # 80005410 <_ZZ12printIntegermE6digits+0x148>
    80003e24:	02800513          	li	a0,40
    80003e28:	ef1ff06f          	j	80003d18 <__printf+0x4d0>
    80003e2c:	00700793          	li	a5,7
    80003e30:	00600c93          	li	s9,6
    80003e34:	e0dff06f          	j	80003c40 <__printf+0x3f8>
    80003e38:	00700793          	li	a5,7
    80003e3c:	00600c93          	li	s9,6
    80003e40:	c69ff06f          	j	80003aa8 <__printf+0x260>
    80003e44:	00300793          	li	a5,3
    80003e48:	00200c93          	li	s9,2
    80003e4c:	c5dff06f          	j	80003aa8 <__printf+0x260>
    80003e50:	00300793          	li	a5,3
    80003e54:	00200c93          	li	s9,2
    80003e58:	de9ff06f          	j	80003c40 <__printf+0x3f8>
    80003e5c:	00400793          	li	a5,4
    80003e60:	00300c93          	li	s9,3
    80003e64:	dddff06f          	j	80003c40 <__printf+0x3f8>
    80003e68:	00400793          	li	a5,4
    80003e6c:	00300c93          	li	s9,3
    80003e70:	c39ff06f          	j	80003aa8 <__printf+0x260>
    80003e74:	00500793          	li	a5,5
    80003e78:	00400c93          	li	s9,4
    80003e7c:	c2dff06f          	j	80003aa8 <__printf+0x260>
    80003e80:	00500793          	li	a5,5
    80003e84:	00400c93          	li	s9,4
    80003e88:	db9ff06f          	j	80003c40 <__printf+0x3f8>
    80003e8c:	00600793          	li	a5,6
    80003e90:	00500c93          	li	s9,5
    80003e94:	dadff06f          	j	80003c40 <__printf+0x3f8>
    80003e98:	00600793          	li	a5,6
    80003e9c:	00500c93          	li	s9,5
    80003ea0:	c09ff06f          	j	80003aa8 <__printf+0x260>
    80003ea4:	00800793          	li	a5,8
    80003ea8:	00700c93          	li	s9,7
    80003eac:	bfdff06f          	j	80003aa8 <__printf+0x260>
    80003eb0:	00100793          	li	a5,1
    80003eb4:	d91ff06f          	j	80003c44 <__printf+0x3fc>
    80003eb8:	00100793          	li	a5,1
    80003ebc:	bf1ff06f          	j	80003aac <__printf+0x264>
    80003ec0:	00900793          	li	a5,9
    80003ec4:	00800c93          	li	s9,8
    80003ec8:	be1ff06f          	j	80003aa8 <__printf+0x260>
    80003ecc:	00001517          	auipc	a0,0x1
    80003ed0:	54c50513          	addi	a0,a0,1356 # 80005418 <_ZZ12printIntegermE6digits+0x150>
    80003ed4:	00000097          	auipc	ra,0x0
    80003ed8:	918080e7          	jalr	-1768(ra) # 800037ec <panic>

0000000080003edc <printfinit>:
    80003edc:	fe010113          	addi	sp,sp,-32
    80003ee0:	00813823          	sd	s0,16(sp)
    80003ee4:	00913423          	sd	s1,8(sp)
    80003ee8:	00113c23          	sd	ra,24(sp)
    80003eec:	02010413          	addi	s0,sp,32
    80003ef0:	00003497          	auipc	s1,0x3
    80003ef4:	2d048493          	addi	s1,s1,720 # 800071c0 <pr>
    80003ef8:	00048513          	mv	a0,s1
    80003efc:	00001597          	auipc	a1,0x1
    80003f00:	52c58593          	addi	a1,a1,1324 # 80005428 <_ZZ12printIntegermE6digits+0x160>
    80003f04:	00000097          	auipc	ra,0x0
    80003f08:	5f4080e7          	jalr	1524(ra) # 800044f8 <initlock>
    80003f0c:	01813083          	ld	ra,24(sp)
    80003f10:	01013403          	ld	s0,16(sp)
    80003f14:	0004ac23          	sw	zero,24(s1)
    80003f18:	00813483          	ld	s1,8(sp)
    80003f1c:	02010113          	addi	sp,sp,32
    80003f20:	00008067          	ret

0000000080003f24 <uartinit>:
    80003f24:	ff010113          	addi	sp,sp,-16
    80003f28:	00813423          	sd	s0,8(sp)
    80003f2c:	01010413          	addi	s0,sp,16
    80003f30:	100007b7          	lui	a5,0x10000
    80003f34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003f38:	f8000713          	li	a4,-128
    80003f3c:	00e781a3          	sb	a4,3(a5)
    80003f40:	00300713          	li	a4,3
    80003f44:	00e78023          	sb	a4,0(a5)
    80003f48:	000780a3          	sb	zero,1(a5)
    80003f4c:	00e781a3          	sb	a4,3(a5)
    80003f50:	00700693          	li	a3,7
    80003f54:	00d78123          	sb	a3,2(a5)
    80003f58:	00e780a3          	sb	a4,1(a5)
    80003f5c:	00813403          	ld	s0,8(sp)
    80003f60:	01010113          	addi	sp,sp,16
    80003f64:	00008067          	ret

0000000080003f68 <uartputc>:
    80003f68:	00002797          	auipc	a5,0x2
    80003f6c:	fe07a783          	lw	a5,-32(a5) # 80005f48 <panicked>
    80003f70:	00078463          	beqz	a5,80003f78 <uartputc+0x10>
    80003f74:	0000006f          	j	80003f74 <uartputc+0xc>
    80003f78:	fd010113          	addi	sp,sp,-48
    80003f7c:	02813023          	sd	s0,32(sp)
    80003f80:	00913c23          	sd	s1,24(sp)
    80003f84:	01213823          	sd	s2,16(sp)
    80003f88:	01313423          	sd	s3,8(sp)
    80003f8c:	02113423          	sd	ra,40(sp)
    80003f90:	03010413          	addi	s0,sp,48
    80003f94:	00002917          	auipc	s2,0x2
    80003f98:	fbc90913          	addi	s2,s2,-68 # 80005f50 <uart_tx_r>
    80003f9c:	00093783          	ld	a5,0(s2)
    80003fa0:	00002497          	auipc	s1,0x2
    80003fa4:	fb848493          	addi	s1,s1,-72 # 80005f58 <uart_tx_w>
    80003fa8:	0004b703          	ld	a4,0(s1)
    80003fac:	02078693          	addi	a3,a5,32
    80003fb0:	00050993          	mv	s3,a0
    80003fb4:	02e69c63          	bne	a3,a4,80003fec <uartputc+0x84>
    80003fb8:	00001097          	auipc	ra,0x1
    80003fbc:	834080e7          	jalr	-1996(ra) # 800047ec <push_on>
    80003fc0:	00093783          	ld	a5,0(s2)
    80003fc4:	0004b703          	ld	a4,0(s1)
    80003fc8:	02078793          	addi	a5,a5,32
    80003fcc:	00e79463          	bne	a5,a4,80003fd4 <uartputc+0x6c>
    80003fd0:	0000006f          	j	80003fd0 <uartputc+0x68>
    80003fd4:	00001097          	auipc	ra,0x1
    80003fd8:	88c080e7          	jalr	-1908(ra) # 80004860 <pop_on>
    80003fdc:	00093783          	ld	a5,0(s2)
    80003fe0:	0004b703          	ld	a4,0(s1)
    80003fe4:	02078693          	addi	a3,a5,32
    80003fe8:	fce688e3          	beq	a3,a4,80003fb8 <uartputc+0x50>
    80003fec:	01f77693          	andi	a3,a4,31
    80003ff0:	00003597          	auipc	a1,0x3
    80003ff4:	1f058593          	addi	a1,a1,496 # 800071e0 <uart_tx_buf>
    80003ff8:	00d586b3          	add	a3,a1,a3
    80003ffc:	00170713          	addi	a4,a4,1
    80004000:	01368023          	sb	s3,0(a3)
    80004004:	00e4b023          	sd	a4,0(s1)
    80004008:	10000637          	lui	a2,0x10000
    8000400c:	02f71063          	bne	a4,a5,8000402c <uartputc+0xc4>
    80004010:	0340006f          	j	80004044 <uartputc+0xdc>
    80004014:	00074703          	lbu	a4,0(a4)
    80004018:	00f93023          	sd	a5,0(s2)
    8000401c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004020:	00093783          	ld	a5,0(s2)
    80004024:	0004b703          	ld	a4,0(s1)
    80004028:	00f70e63          	beq	a4,a5,80004044 <uartputc+0xdc>
    8000402c:	00564683          	lbu	a3,5(a2)
    80004030:	01f7f713          	andi	a4,a5,31
    80004034:	00e58733          	add	a4,a1,a4
    80004038:	0206f693          	andi	a3,a3,32
    8000403c:	00178793          	addi	a5,a5,1
    80004040:	fc069ae3          	bnez	a3,80004014 <uartputc+0xac>
    80004044:	02813083          	ld	ra,40(sp)
    80004048:	02013403          	ld	s0,32(sp)
    8000404c:	01813483          	ld	s1,24(sp)
    80004050:	01013903          	ld	s2,16(sp)
    80004054:	00813983          	ld	s3,8(sp)
    80004058:	03010113          	addi	sp,sp,48
    8000405c:	00008067          	ret

0000000080004060 <uartputc_sync>:
    80004060:	ff010113          	addi	sp,sp,-16
    80004064:	00813423          	sd	s0,8(sp)
    80004068:	01010413          	addi	s0,sp,16
    8000406c:	00002717          	auipc	a4,0x2
    80004070:	edc72703          	lw	a4,-292(a4) # 80005f48 <panicked>
    80004074:	02071663          	bnez	a4,800040a0 <uartputc_sync+0x40>
    80004078:	00050793          	mv	a5,a0
    8000407c:	100006b7          	lui	a3,0x10000
    80004080:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004084:	02077713          	andi	a4,a4,32
    80004088:	fe070ce3          	beqz	a4,80004080 <uartputc_sync+0x20>
    8000408c:	0ff7f793          	andi	a5,a5,255
    80004090:	00f68023          	sb	a5,0(a3)
    80004094:	00813403          	ld	s0,8(sp)
    80004098:	01010113          	addi	sp,sp,16
    8000409c:	00008067          	ret
    800040a0:	0000006f          	j	800040a0 <uartputc_sync+0x40>

00000000800040a4 <uartstart>:
    800040a4:	ff010113          	addi	sp,sp,-16
    800040a8:	00813423          	sd	s0,8(sp)
    800040ac:	01010413          	addi	s0,sp,16
    800040b0:	00002617          	auipc	a2,0x2
    800040b4:	ea060613          	addi	a2,a2,-352 # 80005f50 <uart_tx_r>
    800040b8:	00002517          	auipc	a0,0x2
    800040bc:	ea050513          	addi	a0,a0,-352 # 80005f58 <uart_tx_w>
    800040c0:	00063783          	ld	a5,0(a2)
    800040c4:	00053703          	ld	a4,0(a0)
    800040c8:	04f70263          	beq	a4,a5,8000410c <uartstart+0x68>
    800040cc:	100005b7          	lui	a1,0x10000
    800040d0:	00003817          	auipc	a6,0x3
    800040d4:	11080813          	addi	a6,a6,272 # 800071e0 <uart_tx_buf>
    800040d8:	01c0006f          	j	800040f4 <uartstart+0x50>
    800040dc:	0006c703          	lbu	a4,0(a3)
    800040e0:	00f63023          	sd	a5,0(a2)
    800040e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800040e8:	00063783          	ld	a5,0(a2)
    800040ec:	00053703          	ld	a4,0(a0)
    800040f0:	00f70e63          	beq	a4,a5,8000410c <uartstart+0x68>
    800040f4:	01f7f713          	andi	a4,a5,31
    800040f8:	00e806b3          	add	a3,a6,a4
    800040fc:	0055c703          	lbu	a4,5(a1)
    80004100:	00178793          	addi	a5,a5,1
    80004104:	02077713          	andi	a4,a4,32
    80004108:	fc071ae3          	bnez	a4,800040dc <uartstart+0x38>
    8000410c:	00813403          	ld	s0,8(sp)
    80004110:	01010113          	addi	sp,sp,16
    80004114:	00008067          	ret

0000000080004118 <uartgetc>:
    80004118:	ff010113          	addi	sp,sp,-16
    8000411c:	00813423          	sd	s0,8(sp)
    80004120:	01010413          	addi	s0,sp,16
    80004124:	10000737          	lui	a4,0x10000
    80004128:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000412c:	0017f793          	andi	a5,a5,1
    80004130:	00078c63          	beqz	a5,80004148 <uartgetc+0x30>
    80004134:	00074503          	lbu	a0,0(a4)
    80004138:	0ff57513          	andi	a0,a0,255
    8000413c:	00813403          	ld	s0,8(sp)
    80004140:	01010113          	addi	sp,sp,16
    80004144:	00008067          	ret
    80004148:	fff00513          	li	a0,-1
    8000414c:	ff1ff06f          	j	8000413c <uartgetc+0x24>

0000000080004150 <uartintr>:
    80004150:	100007b7          	lui	a5,0x10000
    80004154:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004158:	0017f793          	andi	a5,a5,1
    8000415c:	0a078463          	beqz	a5,80004204 <uartintr+0xb4>
    80004160:	fe010113          	addi	sp,sp,-32
    80004164:	00813823          	sd	s0,16(sp)
    80004168:	00913423          	sd	s1,8(sp)
    8000416c:	00113c23          	sd	ra,24(sp)
    80004170:	02010413          	addi	s0,sp,32
    80004174:	100004b7          	lui	s1,0x10000
    80004178:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000417c:	0ff57513          	andi	a0,a0,255
    80004180:	fffff097          	auipc	ra,0xfffff
    80004184:	534080e7          	jalr	1332(ra) # 800036b4 <consoleintr>
    80004188:	0054c783          	lbu	a5,5(s1)
    8000418c:	0017f793          	andi	a5,a5,1
    80004190:	fe0794e3          	bnez	a5,80004178 <uartintr+0x28>
    80004194:	00002617          	auipc	a2,0x2
    80004198:	dbc60613          	addi	a2,a2,-580 # 80005f50 <uart_tx_r>
    8000419c:	00002517          	auipc	a0,0x2
    800041a0:	dbc50513          	addi	a0,a0,-580 # 80005f58 <uart_tx_w>
    800041a4:	00063783          	ld	a5,0(a2)
    800041a8:	00053703          	ld	a4,0(a0)
    800041ac:	04f70263          	beq	a4,a5,800041f0 <uartintr+0xa0>
    800041b0:	100005b7          	lui	a1,0x10000
    800041b4:	00003817          	auipc	a6,0x3
    800041b8:	02c80813          	addi	a6,a6,44 # 800071e0 <uart_tx_buf>
    800041bc:	01c0006f          	j	800041d8 <uartintr+0x88>
    800041c0:	0006c703          	lbu	a4,0(a3)
    800041c4:	00f63023          	sd	a5,0(a2)
    800041c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800041cc:	00063783          	ld	a5,0(a2)
    800041d0:	00053703          	ld	a4,0(a0)
    800041d4:	00f70e63          	beq	a4,a5,800041f0 <uartintr+0xa0>
    800041d8:	01f7f713          	andi	a4,a5,31
    800041dc:	00e806b3          	add	a3,a6,a4
    800041e0:	0055c703          	lbu	a4,5(a1)
    800041e4:	00178793          	addi	a5,a5,1
    800041e8:	02077713          	andi	a4,a4,32
    800041ec:	fc071ae3          	bnez	a4,800041c0 <uartintr+0x70>
    800041f0:	01813083          	ld	ra,24(sp)
    800041f4:	01013403          	ld	s0,16(sp)
    800041f8:	00813483          	ld	s1,8(sp)
    800041fc:	02010113          	addi	sp,sp,32
    80004200:	00008067          	ret
    80004204:	00002617          	auipc	a2,0x2
    80004208:	d4c60613          	addi	a2,a2,-692 # 80005f50 <uart_tx_r>
    8000420c:	00002517          	auipc	a0,0x2
    80004210:	d4c50513          	addi	a0,a0,-692 # 80005f58 <uart_tx_w>
    80004214:	00063783          	ld	a5,0(a2)
    80004218:	00053703          	ld	a4,0(a0)
    8000421c:	04f70263          	beq	a4,a5,80004260 <uartintr+0x110>
    80004220:	100005b7          	lui	a1,0x10000
    80004224:	00003817          	auipc	a6,0x3
    80004228:	fbc80813          	addi	a6,a6,-68 # 800071e0 <uart_tx_buf>
    8000422c:	01c0006f          	j	80004248 <uartintr+0xf8>
    80004230:	0006c703          	lbu	a4,0(a3)
    80004234:	00f63023          	sd	a5,0(a2)
    80004238:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000423c:	00063783          	ld	a5,0(a2)
    80004240:	00053703          	ld	a4,0(a0)
    80004244:	02f70063          	beq	a4,a5,80004264 <uartintr+0x114>
    80004248:	01f7f713          	andi	a4,a5,31
    8000424c:	00e806b3          	add	a3,a6,a4
    80004250:	0055c703          	lbu	a4,5(a1)
    80004254:	00178793          	addi	a5,a5,1
    80004258:	02077713          	andi	a4,a4,32
    8000425c:	fc071ae3          	bnez	a4,80004230 <uartintr+0xe0>
    80004260:	00008067          	ret
    80004264:	00008067          	ret

0000000080004268 <kinit>:
    80004268:	fc010113          	addi	sp,sp,-64
    8000426c:	02913423          	sd	s1,40(sp)
    80004270:	fffff7b7          	lui	a5,0xfffff
    80004274:	00004497          	auipc	s1,0x4
    80004278:	f8b48493          	addi	s1,s1,-117 # 800081ff <end+0xfff>
    8000427c:	02813823          	sd	s0,48(sp)
    80004280:	01313c23          	sd	s3,24(sp)
    80004284:	00f4f4b3          	and	s1,s1,a5
    80004288:	02113c23          	sd	ra,56(sp)
    8000428c:	03213023          	sd	s2,32(sp)
    80004290:	01413823          	sd	s4,16(sp)
    80004294:	01513423          	sd	s5,8(sp)
    80004298:	04010413          	addi	s0,sp,64
    8000429c:	000017b7          	lui	a5,0x1
    800042a0:	01100993          	li	s3,17
    800042a4:	00f487b3          	add	a5,s1,a5
    800042a8:	01b99993          	slli	s3,s3,0x1b
    800042ac:	06f9e063          	bltu	s3,a5,8000430c <kinit+0xa4>
    800042b0:	00003a97          	auipc	s5,0x3
    800042b4:	f50a8a93          	addi	s5,s5,-176 # 80007200 <end>
    800042b8:	0754ec63          	bltu	s1,s5,80004330 <kinit+0xc8>
    800042bc:	0734fa63          	bgeu	s1,s3,80004330 <kinit+0xc8>
    800042c0:	00088a37          	lui	s4,0x88
    800042c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800042c8:	00002917          	auipc	s2,0x2
    800042cc:	c9890913          	addi	s2,s2,-872 # 80005f60 <kmem>
    800042d0:	00ca1a13          	slli	s4,s4,0xc
    800042d4:	0140006f          	j	800042e8 <kinit+0x80>
    800042d8:	000017b7          	lui	a5,0x1
    800042dc:	00f484b3          	add	s1,s1,a5
    800042e0:	0554e863          	bltu	s1,s5,80004330 <kinit+0xc8>
    800042e4:	0534f663          	bgeu	s1,s3,80004330 <kinit+0xc8>
    800042e8:	00001637          	lui	a2,0x1
    800042ec:	00100593          	li	a1,1
    800042f0:	00048513          	mv	a0,s1
    800042f4:	00000097          	auipc	ra,0x0
    800042f8:	5e4080e7          	jalr	1508(ra) # 800048d8 <__memset>
    800042fc:	00093783          	ld	a5,0(s2)
    80004300:	00f4b023          	sd	a5,0(s1)
    80004304:	00993023          	sd	s1,0(s2)
    80004308:	fd4498e3          	bne	s1,s4,800042d8 <kinit+0x70>
    8000430c:	03813083          	ld	ra,56(sp)
    80004310:	03013403          	ld	s0,48(sp)
    80004314:	02813483          	ld	s1,40(sp)
    80004318:	02013903          	ld	s2,32(sp)
    8000431c:	01813983          	ld	s3,24(sp)
    80004320:	01013a03          	ld	s4,16(sp)
    80004324:	00813a83          	ld	s5,8(sp)
    80004328:	04010113          	addi	sp,sp,64
    8000432c:	00008067          	ret
    80004330:	00001517          	auipc	a0,0x1
    80004334:	11850513          	addi	a0,a0,280 # 80005448 <digits+0x18>
    80004338:	fffff097          	auipc	ra,0xfffff
    8000433c:	4b4080e7          	jalr	1204(ra) # 800037ec <panic>

0000000080004340 <freerange>:
    80004340:	fc010113          	addi	sp,sp,-64
    80004344:	000017b7          	lui	a5,0x1
    80004348:	02913423          	sd	s1,40(sp)
    8000434c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004350:	009504b3          	add	s1,a0,s1
    80004354:	fffff537          	lui	a0,0xfffff
    80004358:	02813823          	sd	s0,48(sp)
    8000435c:	02113c23          	sd	ra,56(sp)
    80004360:	03213023          	sd	s2,32(sp)
    80004364:	01313c23          	sd	s3,24(sp)
    80004368:	01413823          	sd	s4,16(sp)
    8000436c:	01513423          	sd	s5,8(sp)
    80004370:	01613023          	sd	s6,0(sp)
    80004374:	04010413          	addi	s0,sp,64
    80004378:	00a4f4b3          	and	s1,s1,a0
    8000437c:	00f487b3          	add	a5,s1,a5
    80004380:	06f5e463          	bltu	a1,a5,800043e8 <freerange+0xa8>
    80004384:	00003a97          	auipc	s5,0x3
    80004388:	e7ca8a93          	addi	s5,s5,-388 # 80007200 <end>
    8000438c:	0954e263          	bltu	s1,s5,80004410 <freerange+0xd0>
    80004390:	01100993          	li	s3,17
    80004394:	01b99993          	slli	s3,s3,0x1b
    80004398:	0734fc63          	bgeu	s1,s3,80004410 <freerange+0xd0>
    8000439c:	00058a13          	mv	s4,a1
    800043a0:	00002917          	auipc	s2,0x2
    800043a4:	bc090913          	addi	s2,s2,-1088 # 80005f60 <kmem>
    800043a8:	00002b37          	lui	s6,0x2
    800043ac:	0140006f          	j	800043c0 <freerange+0x80>
    800043b0:	000017b7          	lui	a5,0x1
    800043b4:	00f484b3          	add	s1,s1,a5
    800043b8:	0554ec63          	bltu	s1,s5,80004410 <freerange+0xd0>
    800043bc:	0534fa63          	bgeu	s1,s3,80004410 <freerange+0xd0>
    800043c0:	00001637          	lui	a2,0x1
    800043c4:	00100593          	li	a1,1
    800043c8:	00048513          	mv	a0,s1
    800043cc:	00000097          	auipc	ra,0x0
    800043d0:	50c080e7          	jalr	1292(ra) # 800048d8 <__memset>
    800043d4:	00093703          	ld	a4,0(s2)
    800043d8:	016487b3          	add	a5,s1,s6
    800043dc:	00e4b023          	sd	a4,0(s1)
    800043e0:	00993023          	sd	s1,0(s2)
    800043e4:	fcfa76e3          	bgeu	s4,a5,800043b0 <freerange+0x70>
    800043e8:	03813083          	ld	ra,56(sp)
    800043ec:	03013403          	ld	s0,48(sp)
    800043f0:	02813483          	ld	s1,40(sp)
    800043f4:	02013903          	ld	s2,32(sp)
    800043f8:	01813983          	ld	s3,24(sp)
    800043fc:	01013a03          	ld	s4,16(sp)
    80004400:	00813a83          	ld	s5,8(sp)
    80004404:	00013b03          	ld	s6,0(sp)
    80004408:	04010113          	addi	sp,sp,64
    8000440c:	00008067          	ret
    80004410:	00001517          	auipc	a0,0x1
    80004414:	03850513          	addi	a0,a0,56 # 80005448 <digits+0x18>
    80004418:	fffff097          	auipc	ra,0xfffff
    8000441c:	3d4080e7          	jalr	980(ra) # 800037ec <panic>

0000000080004420 <kfree>:
    80004420:	fe010113          	addi	sp,sp,-32
    80004424:	00813823          	sd	s0,16(sp)
    80004428:	00113c23          	sd	ra,24(sp)
    8000442c:	00913423          	sd	s1,8(sp)
    80004430:	02010413          	addi	s0,sp,32
    80004434:	03451793          	slli	a5,a0,0x34
    80004438:	04079c63          	bnez	a5,80004490 <kfree+0x70>
    8000443c:	00003797          	auipc	a5,0x3
    80004440:	dc478793          	addi	a5,a5,-572 # 80007200 <end>
    80004444:	00050493          	mv	s1,a0
    80004448:	04f56463          	bltu	a0,a5,80004490 <kfree+0x70>
    8000444c:	01100793          	li	a5,17
    80004450:	01b79793          	slli	a5,a5,0x1b
    80004454:	02f57e63          	bgeu	a0,a5,80004490 <kfree+0x70>
    80004458:	00001637          	lui	a2,0x1
    8000445c:	00100593          	li	a1,1
    80004460:	00000097          	auipc	ra,0x0
    80004464:	478080e7          	jalr	1144(ra) # 800048d8 <__memset>
    80004468:	00002797          	auipc	a5,0x2
    8000446c:	af878793          	addi	a5,a5,-1288 # 80005f60 <kmem>
    80004470:	0007b703          	ld	a4,0(a5)
    80004474:	01813083          	ld	ra,24(sp)
    80004478:	01013403          	ld	s0,16(sp)
    8000447c:	00e4b023          	sd	a4,0(s1)
    80004480:	0097b023          	sd	s1,0(a5)
    80004484:	00813483          	ld	s1,8(sp)
    80004488:	02010113          	addi	sp,sp,32
    8000448c:	00008067          	ret
    80004490:	00001517          	auipc	a0,0x1
    80004494:	fb850513          	addi	a0,a0,-72 # 80005448 <digits+0x18>
    80004498:	fffff097          	auipc	ra,0xfffff
    8000449c:	354080e7          	jalr	852(ra) # 800037ec <panic>

00000000800044a0 <kalloc>:
    800044a0:	fe010113          	addi	sp,sp,-32
    800044a4:	00813823          	sd	s0,16(sp)
    800044a8:	00913423          	sd	s1,8(sp)
    800044ac:	00113c23          	sd	ra,24(sp)
    800044b0:	02010413          	addi	s0,sp,32
    800044b4:	00002797          	auipc	a5,0x2
    800044b8:	aac78793          	addi	a5,a5,-1364 # 80005f60 <kmem>
    800044bc:	0007b483          	ld	s1,0(a5)
    800044c0:	02048063          	beqz	s1,800044e0 <kalloc+0x40>
    800044c4:	0004b703          	ld	a4,0(s1)
    800044c8:	00001637          	lui	a2,0x1
    800044cc:	00500593          	li	a1,5
    800044d0:	00048513          	mv	a0,s1
    800044d4:	00e7b023          	sd	a4,0(a5)
    800044d8:	00000097          	auipc	ra,0x0
    800044dc:	400080e7          	jalr	1024(ra) # 800048d8 <__memset>
    800044e0:	01813083          	ld	ra,24(sp)
    800044e4:	01013403          	ld	s0,16(sp)
    800044e8:	00048513          	mv	a0,s1
    800044ec:	00813483          	ld	s1,8(sp)
    800044f0:	02010113          	addi	sp,sp,32
    800044f4:	00008067          	ret

00000000800044f8 <initlock>:
    800044f8:	ff010113          	addi	sp,sp,-16
    800044fc:	00813423          	sd	s0,8(sp)
    80004500:	01010413          	addi	s0,sp,16
    80004504:	00813403          	ld	s0,8(sp)
    80004508:	00b53423          	sd	a1,8(a0)
    8000450c:	00052023          	sw	zero,0(a0)
    80004510:	00053823          	sd	zero,16(a0)
    80004514:	01010113          	addi	sp,sp,16
    80004518:	00008067          	ret

000000008000451c <acquire>:
    8000451c:	fe010113          	addi	sp,sp,-32
    80004520:	00813823          	sd	s0,16(sp)
    80004524:	00913423          	sd	s1,8(sp)
    80004528:	00113c23          	sd	ra,24(sp)
    8000452c:	01213023          	sd	s2,0(sp)
    80004530:	02010413          	addi	s0,sp,32
    80004534:	00050493          	mv	s1,a0
    80004538:	10002973          	csrr	s2,sstatus
    8000453c:	100027f3          	csrr	a5,sstatus
    80004540:	ffd7f793          	andi	a5,a5,-3
    80004544:	10079073          	csrw	sstatus,a5
    80004548:	fffff097          	auipc	ra,0xfffff
    8000454c:	8e8080e7          	jalr	-1816(ra) # 80002e30 <mycpu>
    80004550:	07852783          	lw	a5,120(a0)
    80004554:	06078e63          	beqz	a5,800045d0 <acquire+0xb4>
    80004558:	fffff097          	auipc	ra,0xfffff
    8000455c:	8d8080e7          	jalr	-1832(ra) # 80002e30 <mycpu>
    80004560:	07852783          	lw	a5,120(a0)
    80004564:	0004a703          	lw	a4,0(s1)
    80004568:	0017879b          	addiw	a5,a5,1
    8000456c:	06f52c23          	sw	a5,120(a0)
    80004570:	04071063          	bnez	a4,800045b0 <acquire+0x94>
    80004574:	00100713          	li	a4,1
    80004578:	00070793          	mv	a5,a4
    8000457c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004580:	0007879b          	sext.w	a5,a5
    80004584:	fe079ae3          	bnez	a5,80004578 <acquire+0x5c>
    80004588:	0ff0000f          	fence
    8000458c:	fffff097          	auipc	ra,0xfffff
    80004590:	8a4080e7          	jalr	-1884(ra) # 80002e30 <mycpu>
    80004594:	01813083          	ld	ra,24(sp)
    80004598:	01013403          	ld	s0,16(sp)
    8000459c:	00a4b823          	sd	a0,16(s1)
    800045a0:	00013903          	ld	s2,0(sp)
    800045a4:	00813483          	ld	s1,8(sp)
    800045a8:	02010113          	addi	sp,sp,32
    800045ac:	00008067          	ret
    800045b0:	0104b903          	ld	s2,16(s1)
    800045b4:	fffff097          	auipc	ra,0xfffff
    800045b8:	87c080e7          	jalr	-1924(ra) # 80002e30 <mycpu>
    800045bc:	faa91ce3          	bne	s2,a0,80004574 <acquire+0x58>
    800045c0:	00001517          	auipc	a0,0x1
    800045c4:	e9050513          	addi	a0,a0,-368 # 80005450 <digits+0x20>
    800045c8:	fffff097          	auipc	ra,0xfffff
    800045cc:	224080e7          	jalr	548(ra) # 800037ec <panic>
    800045d0:	00195913          	srli	s2,s2,0x1
    800045d4:	fffff097          	auipc	ra,0xfffff
    800045d8:	85c080e7          	jalr	-1956(ra) # 80002e30 <mycpu>
    800045dc:	00197913          	andi	s2,s2,1
    800045e0:	07252e23          	sw	s2,124(a0)
    800045e4:	f75ff06f          	j	80004558 <acquire+0x3c>

00000000800045e8 <release>:
    800045e8:	fe010113          	addi	sp,sp,-32
    800045ec:	00813823          	sd	s0,16(sp)
    800045f0:	00113c23          	sd	ra,24(sp)
    800045f4:	00913423          	sd	s1,8(sp)
    800045f8:	01213023          	sd	s2,0(sp)
    800045fc:	02010413          	addi	s0,sp,32
    80004600:	00052783          	lw	a5,0(a0)
    80004604:	00079a63          	bnez	a5,80004618 <release+0x30>
    80004608:	00001517          	auipc	a0,0x1
    8000460c:	e5050513          	addi	a0,a0,-432 # 80005458 <digits+0x28>
    80004610:	fffff097          	auipc	ra,0xfffff
    80004614:	1dc080e7          	jalr	476(ra) # 800037ec <panic>
    80004618:	01053903          	ld	s2,16(a0)
    8000461c:	00050493          	mv	s1,a0
    80004620:	fffff097          	auipc	ra,0xfffff
    80004624:	810080e7          	jalr	-2032(ra) # 80002e30 <mycpu>
    80004628:	fea910e3          	bne	s2,a0,80004608 <release+0x20>
    8000462c:	0004b823          	sd	zero,16(s1)
    80004630:	0ff0000f          	fence
    80004634:	0f50000f          	fence	iorw,ow
    80004638:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000463c:	ffffe097          	auipc	ra,0xffffe
    80004640:	7f4080e7          	jalr	2036(ra) # 80002e30 <mycpu>
    80004644:	100027f3          	csrr	a5,sstatus
    80004648:	0027f793          	andi	a5,a5,2
    8000464c:	04079a63          	bnez	a5,800046a0 <release+0xb8>
    80004650:	07852783          	lw	a5,120(a0)
    80004654:	02f05e63          	blez	a5,80004690 <release+0xa8>
    80004658:	fff7871b          	addiw	a4,a5,-1
    8000465c:	06e52c23          	sw	a4,120(a0)
    80004660:	00071c63          	bnez	a4,80004678 <release+0x90>
    80004664:	07c52783          	lw	a5,124(a0)
    80004668:	00078863          	beqz	a5,80004678 <release+0x90>
    8000466c:	100027f3          	csrr	a5,sstatus
    80004670:	0027e793          	ori	a5,a5,2
    80004674:	10079073          	csrw	sstatus,a5
    80004678:	01813083          	ld	ra,24(sp)
    8000467c:	01013403          	ld	s0,16(sp)
    80004680:	00813483          	ld	s1,8(sp)
    80004684:	00013903          	ld	s2,0(sp)
    80004688:	02010113          	addi	sp,sp,32
    8000468c:	00008067          	ret
    80004690:	00001517          	auipc	a0,0x1
    80004694:	de850513          	addi	a0,a0,-536 # 80005478 <digits+0x48>
    80004698:	fffff097          	auipc	ra,0xfffff
    8000469c:	154080e7          	jalr	340(ra) # 800037ec <panic>
    800046a0:	00001517          	auipc	a0,0x1
    800046a4:	dc050513          	addi	a0,a0,-576 # 80005460 <digits+0x30>
    800046a8:	fffff097          	auipc	ra,0xfffff
    800046ac:	144080e7          	jalr	324(ra) # 800037ec <panic>

00000000800046b0 <holding>:
    800046b0:	00052783          	lw	a5,0(a0)
    800046b4:	00079663          	bnez	a5,800046c0 <holding+0x10>
    800046b8:	00000513          	li	a0,0
    800046bc:	00008067          	ret
    800046c0:	fe010113          	addi	sp,sp,-32
    800046c4:	00813823          	sd	s0,16(sp)
    800046c8:	00913423          	sd	s1,8(sp)
    800046cc:	00113c23          	sd	ra,24(sp)
    800046d0:	02010413          	addi	s0,sp,32
    800046d4:	01053483          	ld	s1,16(a0)
    800046d8:	ffffe097          	auipc	ra,0xffffe
    800046dc:	758080e7          	jalr	1880(ra) # 80002e30 <mycpu>
    800046e0:	01813083          	ld	ra,24(sp)
    800046e4:	01013403          	ld	s0,16(sp)
    800046e8:	40a48533          	sub	a0,s1,a0
    800046ec:	00153513          	seqz	a0,a0
    800046f0:	00813483          	ld	s1,8(sp)
    800046f4:	02010113          	addi	sp,sp,32
    800046f8:	00008067          	ret

00000000800046fc <push_off>:
    800046fc:	fe010113          	addi	sp,sp,-32
    80004700:	00813823          	sd	s0,16(sp)
    80004704:	00113c23          	sd	ra,24(sp)
    80004708:	00913423          	sd	s1,8(sp)
    8000470c:	02010413          	addi	s0,sp,32
    80004710:	100024f3          	csrr	s1,sstatus
    80004714:	100027f3          	csrr	a5,sstatus
    80004718:	ffd7f793          	andi	a5,a5,-3
    8000471c:	10079073          	csrw	sstatus,a5
    80004720:	ffffe097          	auipc	ra,0xffffe
    80004724:	710080e7          	jalr	1808(ra) # 80002e30 <mycpu>
    80004728:	07852783          	lw	a5,120(a0)
    8000472c:	02078663          	beqz	a5,80004758 <push_off+0x5c>
    80004730:	ffffe097          	auipc	ra,0xffffe
    80004734:	700080e7          	jalr	1792(ra) # 80002e30 <mycpu>
    80004738:	07852783          	lw	a5,120(a0)
    8000473c:	01813083          	ld	ra,24(sp)
    80004740:	01013403          	ld	s0,16(sp)
    80004744:	0017879b          	addiw	a5,a5,1
    80004748:	06f52c23          	sw	a5,120(a0)
    8000474c:	00813483          	ld	s1,8(sp)
    80004750:	02010113          	addi	sp,sp,32
    80004754:	00008067          	ret
    80004758:	0014d493          	srli	s1,s1,0x1
    8000475c:	ffffe097          	auipc	ra,0xffffe
    80004760:	6d4080e7          	jalr	1748(ra) # 80002e30 <mycpu>
    80004764:	0014f493          	andi	s1,s1,1
    80004768:	06952e23          	sw	s1,124(a0)
    8000476c:	fc5ff06f          	j	80004730 <push_off+0x34>

0000000080004770 <pop_off>:
    80004770:	ff010113          	addi	sp,sp,-16
    80004774:	00813023          	sd	s0,0(sp)
    80004778:	00113423          	sd	ra,8(sp)
    8000477c:	01010413          	addi	s0,sp,16
    80004780:	ffffe097          	auipc	ra,0xffffe
    80004784:	6b0080e7          	jalr	1712(ra) # 80002e30 <mycpu>
    80004788:	100027f3          	csrr	a5,sstatus
    8000478c:	0027f793          	andi	a5,a5,2
    80004790:	04079663          	bnez	a5,800047dc <pop_off+0x6c>
    80004794:	07852783          	lw	a5,120(a0)
    80004798:	02f05a63          	blez	a5,800047cc <pop_off+0x5c>
    8000479c:	fff7871b          	addiw	a4,a5,-1
    800047a0:	06e52c23          	sw	a4,120(a0)
    800047a4:	00071c63          	bnez	a4,800047bc <pop_off+0x4c>
    800047a8:	07c52783          	lw	a5,124(a0)
    800047ac:	00078863          	beqz	a5,800047bc <pop_off+0x4c>
    800047b0:	100027f3          	csrr	a5,sstatus
    800047b4:	0027e793          	ori	a5,a5,2
    800047b8:	10079073          	csrw	sstatus,a5
    800047bc:	00813083          	ld	ra,8(sp)
    800047c0:	00013403          	ld	s0,0(sp)
    800047c4:	01010113          	addi	sp,sp,16
    800047c8:	00008067          	ret
    800047cc:	00001517          	auipc	a0,0x1
    800047d0:	cac50513          	addi	a0,a0,-852 # 80005478 <digits+0x48>
    800047d4:	fffff097          	auipc	ra,0xfffff
    800047d8:	018080e7          	jalr	24(ra) # 800037ec <panic>
    800047dc:	00001517          	auipc	a0,0x1
    800047e0:	c8450513          	addi	a0,a0,-892 # 80005460 <digits+0x30>
    800047e4:	fffff097          	auipc	ra,0xfffff
    800047e8:	008080e7          	jalr	8(ra) # 800037ec <panic>

00000000800047ec <push_on>:
    800047ec:	fe010113          	addi	sp,sp,-32
    800047f0:	00813823          	sd	s0,16(sp)
    800047f4:	00113c23          	sd	ra,24(sp)
    800047f8:	00913423          	sd	s1,8(sp)
    800047fc:	02010413          	addi	s0,sp,32
    80004800:	100024f3          	csrr	s1,sstatus
    80004804:	100027f3          	csrr	a5,sstatus
    80004808:	0027e793          	ori	a5,a5,2
    8000480c:	10079073          	csrw	sstatus,a5
    80004810:	ffffe097          	auipc	ra,0xffffe
    80004814:	620080e7          	jalr	1568(ra) # 80002e30 <mycpu>
    80004818:	07852783          	lw	a5,120(a0)
    8000481c:	02078663          	beqz	a5,80004848 <push_on+0x5c>
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	610080e7          	jalr	1552(ra) # 80002e30 <mycpu>
    80004828:	07852783          	lw	a5,120(a0)
    8000482c:	01813083          	ld	ra,24(sp)
    80004830:	01013403          	ld	s0,16(sp)
    80004834:	0017879b          	addiw	a5,a5,1
    80004838:	06f52c23          	sw	a5,120(a0)
    8000483c:	00813483          	ld	s1,8(sp)
    80004840:	02010113          	addi	sp,sp,32
    80004844:	00008067          	ret
    80004848:	0014d493          	srli	s1,s1,0x1
    8000484c:	ffffe097          	auipc	ra,0xffffe
    80004850:	5e4080e7          	jalr	1508(ra) # 80002e30 <mycpu>
    80004854:	0014f493          	andi	s1,s1,1
    80004858:	06952e23          	sw	s1,124(a0)
    8000485c:	fc5ff06f          	j	80004820 <push_on+0x34>

0000000080004860 <pop_on>:
    80004860:	ff010113          	addi	sp,sp,-16
    80004864:	00813023          	sd	s0,0(sp)
    80004868:	00113423          	sd	ra,8(sp)
    8000486c:	01010413          	addi	s0,sp,16
    80004870:	ffffe097          	auipc	ra,0xffffe
    80004874:	5c0080e7          	jalr	1472(ra) # 80002e30 <mycpu>
    80004878:	100027f3          	csrr	a5,sstatus
    8000487c:	0027f793          	andi	a5,a5,2
    80004880:	04078463          	beqz	a5,800048c8 <pop_on+0x68>
    80004884:	07852783          	lw	a5,120(a0)
    80004888:	02f05863          	blez	a5,800048b8 <pop_on+0x58>
    8000488c:	fff7879b          	addiw	a5,a5,-1
    80004890:	06f52c23          	sw	a5,120(a0)
    80004894:	07853783          	ld	a5,120(a0)
    80004898:	00079863          	bnez	a5,800048a8 <pop_on+0x48>
    8000489c:	100027f3          	csrr	a5,sstatus
    800048a0:	ffd7f793          	andi	a5,a5,-3
    800048a4:	10079073          	csrw	sstatus,a5
    800048a8:	00813083          	ld	ra,8(sp)
    800048ac:	00013403          	ld	s0,0(sp)
    800048b0:	01010113          	addi	sp,sp,16
    800048b4:	00008067          	ret
    800048b8:	00001517          	auipc	a0,0x1
    800048bc:	be850513          	addi	a0,a0,-1048 # 800054a0 <digits+0x70>
    800048c0:	fffff097          	auipc	ra,0xfffff
    800048c4:	f2c080e7          	jalr	-212(ra) # 800037ec <panic>
    800048c8:	00001517          	auipc	a0,0x1
    800048cc:	bb850513          	addi	a0,a0,-1096 # 80005480 <digits+0x50>
    800048d0:	fffff097          	auipc	ra,0xfffff
    800048d4:	f1c080e7          	jalr	-228(ra) # 800037ec <panic>

00000000800048d8 <__memset>:
    800048d8:	ff010113          	addi	sp,sp,-16
    800048dc:	00813423          	sd	s0,8(sp)
    800048e0:	01010413          	addi	s0,sp,16
    800048e4:	1a060e63          	beqz	a2,80004aa0 <__memset+0x1c8>
    800048e8:	40a007b3          	neg	a5,a0
    800048ec:	0077f793          	andi	a5,a5,7
    800048f0:	00778693          	addi	a3,a5,7
    800048f4:	00b00813          	li	a6,11
    800048f8:	0ff5f593          	andi	a1,a1,255
    800048fc:	fff6071b          	addiw	a4,a2,-1
    80004900:	1b06e663          	bltu	a3,a6,80004aac <__memset+0x1d4>
    80004904:	1cd76463          	bltu	a4,a3,80004acc <__memset+0x1f4>
    80004908:	1a078e63          	beqz	a5,80004ac4 <__memset+0x1ec>
    8000490c:	00b50023          	sb	a1,0(a0)
    80004910:	00100713          	li	a4,1
    80004914:	1ae78463          	beq	a5,a4,80004abc <__memset+0x1e4>
    80004918:	00b500a3          	sb	a1,1(a0)
    8000491c:	00200713          	li	a4,2
    80004920:	1ae78a63          	beq	a5,a4,80004ad4 <__memset+0x1fc>
    80004924:	00b50123          	sb	a1,2(a0)
    80004928:	00300713          	li	a4,3
    8000492c:	18e78463          	beq	a5,a4,80004ab4 <__memset+0x1dc>
    80004930:	00b501a3          	sb	a1,3(a0)
    80004934:	00400713          	li	a4,4
    80004938:	1ae78263          	beq	a5,a4,80004adc <__memset+0x204>
    8000493c:	00b50223          	sb	a1,4(a0)
    80004940:	00500713          	li	a4,5
    80004944:	1ae78063          	beq	a5,a4,80004ae4 <__memset+0x20c>
    80004948:	00b502a3          	sb	a1,5(a0)
    8000494c:	00700713          	li	a4,7
    80004950:	18e79e63          	bne	a5,a4,80004aec <__memset+0x214>
    80004954:	00b50323          	sb	a1,6(a0)
    80004958:	00700e93          	li	t4,7
    8000495c:	00859713          	slli	a4,a1,0x8
    80004960:	00e5e733          	or	a4,a1,a4
    80004964:	01059e13          	slli	t3,a1,0x10
    80004968:	01c76e33          	or	t3,a4,t3
    8000496c:	01859313          	slli	t1,a1,0x18
    80004970:	006e6333          	or	t1,t3,t1
    80004974:	02059893          	slli	a7,a1,0x20
    80004978:	40f60e3b          	subw	t3,a2,a5
    8000497c:	011368b3          	or	a7,t1,a7
    80004980:	02859813          	slli	a6,a1,0x28
    80004984:	0108e833          	or	a6,a7,a6
    80004988:	03059693          	slli	a3,a1,0x30
    8000498c:	003e589b          	srliw	a7,t3,0x3
    80004990:	00d866b3          	or	a3,a6,a3
    80004994:	03859713          	slli	a4,a1,0x38
    80004998:	00389813          	slli	a6,a7,0x3
    8000499c:	00f507b3          	add	a5,a0,a5
    800049a0:	00e6e733          	or	a4,a3,a4
    800049a4:	000e089b          	sext.w	a7,t3
    800049a8:	00f806b3          	add	a3,a6,a5
    800049ac:	00e7b023          	sd	a4,0(a5)
    800049b0:	00878793          	addi	a5,a5,8
    800049b4:	fed79ce3          	bne	a5,a3,800049ac <__memset+0xd4>
    800049b8:	ff8e7793          	andi	a5,t3,-8
    800049bc:	0007871b          	sext.w	a4,a5
    800049c0:	01d787bb          	addw	a5,a5,t4
    800049c4:	0ce88e63          	beq	a7,a4,80004aa0 <__memset+0x1c8>
    800049c8:	00f50733          	add	a4,a0,a5
    800049cc:	00b70023          	sb	a1,0(a4)
    800049d0:	0017871b          	addiw	a4,a5,1
    800049d4:	0cc77663          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    800049d8:	00e50733          	add	a4,a0,a4
    800049dc:	00b70023          	sb	a1,0(a4)
    800049e0:	0027871b          	addiw	a4,a5,2
    800049e4:	0ac77e63          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    800049e8:	00e50733          	add	a4,a0,a4
    800049ec:	00b70023          	sb	a1,0(a4)
    800049f0:	0037871b          	addiw	a4,a5,3
    800049f4:	0ac77663          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    800049f8:	00e50733          	add	a4,a0,a4
    800049fc:	00b70023          	sb	a1,0(a4)
    80004a00:	0047871b          	addiw	a4,a5,4
    80004a04:	08c77e63          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a08:	00e50733          	add	a4,a0,a4
    80004a0c:	00b70023          	sb	a1,0(a4)
    80004a10:	0057871b          	addiw	a4,a5,5
    80004a14:	08c77663          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a18:	00e50733          	add	a4,a0,a4
    80004a1c:	00b70023          	sb	a1,0(a4)
    80004a20:	0067871b          	addiw	a4,a5,6
    80004a24:	06c77e63          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a28:	00e50733          	add	a4,a0,a4
    80004a2c:	00b70023          	sb	a1,0(a4)
    80004a30:	0077871b          	addiw	a4,a5,7
    80004a34:	06c77663          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a38:	00e50733          	add	a4,a0,a4
    80004a3c:	00b70023          	sb	a1,0(a4)
    80004a40:	0087871b          	addiw	a4,a5,8
    80004a44:	04c77e63          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a48:	00e50733          	add	a4,a0,a4
    80004a4c:	00b70023          	sb	a1,0(a4)
    80004a50:	0097871b          	addiw	a4,a5,9
    80004a54:	04c77663          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a58:	00e50733          	add	a4,a0,a4
    80004a5c:	00b70023          	sb	a1,0(a4)
    80004a60:	00a7871b          	addiw	a4,a5,10
    80004a64:	02c77e63          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a68:	00e50733          	add	a4,a0,a4
    80004a6c:	00b70023          	sb	a1,0(a4)
    80004a70:	00b7871b          	addiw	a4,a5,11
    80004a74:	02c77663          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a78:	00e50733          	add	a4,a0,a4
    80004a7c:	00b70023          	sb	a1,0(a4)
    80004a80:	00c7871b          	addiw	a4,a5,12
    80004a84:	00c77e63          	bgeu	a4,a2,80004aa0 <__memset+0x1c8>
    80004a88:	00e50733          	add	a4,a0,a4
    80004a8c:	00b70023          	sb	a1,0(a4)
    80004a90:	00d7879b          	addiw	a5,a5,13
    80004a94:	00c7f663          	bgeu	a5,a2,80004aa0 <__memset+0x1c8>
    80004a98:	00f507b3          	add	a5,a0,a5
    80004a9c:	00b78023          	sb	a1,0(a5)
    80004aa0:	00813403          	ld	s0,8(sp)
    80004aa4:	01010113          	addi	sp,sp,16
    80004aa8:	00008067          	ret
    80004aac:	00b00693          	li	a3,11
    80004ab0:	e55ff06f          	j	80004904 <__memset+0x2c>
    80004ab4:	00300e93          	li	t4,3
    80004ab8:	ea5ff06f          	j	8000495c <__memset+0x84>
    80004abc:	00100e93          	li	t4,1
    80004ac0:	e9dff06f          	j	8000495c <__memset+0x84>
    80004ac4:	00000e93          	li	t4,0
    80004ac8:	e95ff06f          	j	8000495c <__memset+0x84>
    80004acc:	00000793          	li	a5,0
    80004ad0:	ef9ff06f          	j	800049c8 <__memset+0xf0>
    80004ad4:	00200e93          	li	t4,2
    80004ad8:	e85ff06f          	j	8000495c <__memset+0x84>
    80004adc:	00400e93          	li	t4,4
    80004ae0:	e7dff06f          	j	8000495c <__memset+0x84>
    80004ae4:	00500e93          	li	t4,5
    80004ae8:	e75ff06f          	j	8000495c <__memset+0x84>
    80004aec:	00600e93          	li	t4,6
    80004af0:	e6dff06f          	j	8000495c <__memset+0x84>

0000000080004af4 <__memmove>:
    80004af4:	ff010113          	addi	sp,sp,-16
    80004af8:	00813423          	sd	s0,8(sp)
    80004afc:	01010413          	addi	s0,sp,16
    80004b00:	0e060863          	beqz	a2,80004bf0 <__memmove+0xfc>
    80004b04:	fff6069b          	addiw	a3,a2,-1
    80004b08:	0006881b          	sext.w	a6,a3
    80004b0c:	0ea5e863          	bltu	a1,a0,80004bfc <__memmove+0x108>
    80004b10:	00758713          	addi	a4,a1,7
    80004b14:	00a5e7b3          	or	a5,a1,a0
    80004b18:	40a70733          	sub	a4,a4,a0
    80004b1c:	0077f793          	andi	a5,a5,7
    80004b20:	00f73713          	sltiu	a4,a4,15
    80004b24:	00174713          	xori	a4,a4,1
    80004b28:	0017b793          	seqz	a5,a5
    80004b2c:	00e7f7b3          	and	a5,a5,a4
    80004b30:	10078863          	beqz	a5,80004c40 <__memmove+0x14c>
    80004b34:	00900793          	li	a5,9
    80004b38:	1107f463          	bgeu	a5,a6,80004c40 <__memmove+0x14c>
    80004b3c:	0036581b          	srliw	a6,a2,0x3
    80004b40:	fff8081b          	addiw	a6,a6,-1
    80004b44:	02081813          	slli	a6,a6,0x20
    80004b48:	01d85893          	srli	a7,a6,0x1d
    80004b4c:	00858813          	addi	a6,a1,8
    80004b50:	00058793          	mv	a5,a1
    80004b54:	00050713          	mv	a4,a0
    80004b58:	01088833          	add	a6,a7,a6
    80004b5c:	0007b883          	ld	a7,0(a5)
    80004b60:	00878793          	addi	a5,a5,8
    80004b64:	00870713          	addi	a4,a4,8
    80004b68:	ff173c23          	sd	a7,-8(a4)
    80004b6c:	ff0798e3          	bne	a5,a6,80004b5c <__memmove+0x68>
    80004b70:	ff867713          	andi	a4,a2,-8
    80004b74:	02071793          	slli	a5,a4,0x20
    80004b78:	0207d793          	srli	a5,a5,0x20
    80004b7c:	00f585b3          	add	a1,a1,a5
    80004b80:	40e686bb          	subw	a3,a3,a4
    80004b84:	00f507b3          	add	a5,a0,a5
    80004b88:	06e60463          	beq	a2,a4,80004bf0 <__memmove+0xfc>
    80004b8c:	0005c703          	lbu	a4,0(a1)
    80004b90:	00e78023          	sb	a4,0(a5)
    80004b94:	04068e63          	beqz	a3,80004bf0 <__memmove+0xfc>
    80004b98:	0015c603          	lbu	a2,1(a1)
    80004b9c:	00100713          	li	a4,1
    80004ba0:	00c780a3          	sb	a2,1(a5)
    80004ba4:	04e68663          	beq	a3,a4,80004bf0 <__memmove+0xfc>
    80004ba8:	0025c603          	lbu	a2,2(a1)
    80004bac:	00200713          	li	a4,2
    80004bb0:	00c78123          	sb	a2,2(a5)
    80004bb4:	02e68e63          	beq	a3,a4,80004bf0 <__memmove+0xfc>
    80004bb8:	0035c603          	lbu	a2,3(a1)
    80004bbc:	00300713          	li	a4,3
    80004bc0:	00c781a3          	sb	a2,3(a5)
    80004bc4:	02e68663          	beq	a3,a4,80004bf0 <__memmove+0xfc>
    80004bc8:	0045c603          	lbu	a2,4(a1)
    80004bcc:	00400713          	li	a4,4
    80004bd0:	00c78223          	sb	a2,4(a5)
    80004bd4:	00e68e63          	beq	a3,a4,80004bf0 <__memmove+0xfc>
    80004bd8:	0055c603          	lbu	a2,5(a1)
    80004bdc:	00500713          	li	a4,5
    80004be0:	00c782a3          	sb	a2,5(a5)
    80004be4:	00e68663          	beq	a3,a4,80004bf0 <__memmove+0xfc>
    80004be8:	0065c703          	lbu	a4,6(a1)
    80004bec:	00e78323          	sb	a4,6(a5)
    80004bf0:	00813403          	ld	s0,8(sp)
    80004bf4:	01010113          	addi	sp,sp,16
    80004bf8:	00008067          	ret
    80004bfc:	02061713          	slli	a4,a2,0x20
    80004c00:	02075713          	srli	a4,a4,0x20
    80004c04:	00e587b3          	add	a5,a1,a4
    80004c08:	f0f574e3          	bgeu	a0,a5,80004b10 <__memmove+0x1c>
    80004c0c:	02069613          	slli	a2,a3,0x20
    80004c10:	02065613          	srli	a2,a2,0x20
    80004c14:	fff64613          	not	a2,a2
    80004c18:	00e50733          	add	a4,a0,a4
    80004c1c:	00c78633          	add	a2,a5,a2
    80004c20:	fff7c683          	lbu	a3,-1(a5)
    80004c24:	fff78793          	addi	a5,a5,-1
    80004c28:	fff70713          	addi	a4,a4,-1
    80004c2c:	00d70023          	sb	a3,0(a4)
    80004c30:	fec798e3          	bne	a5,a2,80004c20 <__memmove+0x12c>
    80004c34:	00813403          	ld	s0,8(sp)
    80004c38:	01010113          	addi	sp,sp,16
    80004c3c:	00008067          	ret
    80004c40:	02069713          	slli	a4,a3,0x20
    80004c44:	02075713          	srli	a4,a4,0x20
    80004c48:	00170713          	addi	a4,a4,1
    80004c4c:	00e50733          	add	a4,a0,a4
    80004c50:	00050793          	mv	a5,a0
    80004c54:	0005c683          	lbu	a3,0(a1)
    80004c58:	00178793          	addi	a5,a5,1
    80004c5c:	00158593          	addi	a1,a1,1
    80004c60:	fed78fa3          	sb	a3,-1(a5)
    80004c64:	fee798e3          	bne	a5,a4,80004c54 <__memmove+0x160>
    80004c68:	f89ff06f          	j	80004bf0 <__memmove+0xfc>

0000000080004c6c <__putc>:
    80004c6c:	fe010113          	addi	sp,sp,-32
    80004c70:	00813823          	sd	s0,16(sp)
    80004c74:	00113c23          	sd	ra,24(sp)
    80004c78:	02010413          	addi	s0,sp,32
    80004c7c:	00050793          	mv	a5,a0
    80004c80:	fef40593          	addi	a1,s0,-17
    80004c84:	00100613          	li	a2,1
    80004c88:	00000513          	li	a0,0
    80004c8c:	fef407a3          	sb	a5,-17(s0)
    80004c90:	fffff097          	auipc	ra,0xfffff
    80004c94:	b3c080e7          	jalr	-1220(ra) # 800037cc <console_write>
    80004c98:	01813083          	ld	ra,24(sp)
    80004c9c:	01013403          	ld	s0,16(sp)
    80004ca0:	02010113          	addi	sp,sp,32
    80004ca4:	00008067          	ret

0000000080004ca8 <__getc>:
    80004ca8:	fe010113          	addi	sp,sp,-32
    80004cac:	00813823          	sd	s0,16(sp)
    80004cb0:	00113c23          	sd	ra,24(sp)
    80004cb4:	02010413          	addi	s0,sp,32
    80004cb8:	fe840593          	addi	a1,s0,-24
    80004cbc:	00100613          	li	a2,1
    80004cc0:	00000513          	li	a0,0
    80004cc4:	fffff097          	auipc	ra,0xfffff
    80004cc8:	ae8080e7          	jalr	-1304(ra) # 800037ac <console_read>
    80004ccc:	fe844503          	lbu	a0,-24(s0)
    80004cd0:	01813083          	ld	ra,24(sp)
    80004cd4:	01013403          	ld	s0,16(sp)
    80004cd8:	02010113          	addi	sp,sp,32
    80004cdc:	00008067          	ret

0000000080004ce0 <console_handler>:
    80004ce0:	fe010113          	addi	sp,sp,-32
    80004ce4:	00813823          	sd	s0,16(sp)
    80004ce8:	00113c23          	sd	ra,24(sp)
    80004cec:	00913423          	sd	s1,8(sp)
    80004cf0:	02010413          	addi	s0,sp,32
    80004cf4:	14202773          	csrr	a4,scause
    80004cf8:	100027f3          	csrr	a5,sstatus
    80004cfc:	0027f793          	andi	a5,a5,2
    80004d00:	06079e63          	bnez	a5,80004d7c <console_handler+0x9c>
    80004d04:	00074c63          	bltz	a4,80004d1c <console_handler+0x3c>
    80004d08:	01813083          	ld	ra,24(sp)
    80004d0c:	01013403          	ld	s0,16(sp)
    80004d10:	00813483          	ld	s1,8(sp)
    80004d14:	02010113          	addi	sp,sp,32
    80004d18:	00008067          	ret
    80004d1c:	0ff77713          	andi	a4,a4,255
    80004d20:	00900793          	li	a5,9
    80004d24:	fef712e3          	bne	a4,a5,80004d08 <console_handler+0x28>
    80004d28:	ffffe097          	auipc	ra,0xffffe
    80004d2c:	6dc080e7          	jalr	1756(ra) # 80003404 <plic_claim>
    80004d30:	00a00793          	li	a5,10
    80004d34:	00050493          	mv	s1,a0
    80004d38:	02f50c63          	beq	a0,a5,80004d70 <console_handler+0x90>
    80004d3c:	fc0506e3          	beqz	a0,80004d08 <console_handler+0x28>
    80004d40:	00050593          	mv	a1,a0
    80004d44:	00000517          	auipc	a0,0x0
    80004d48:	66450513          	addi	a0,a0,1636 # 800053a8 <_ZZ12printIntegermE6digits+0xe0>
    80004d4c:	fffff097          	auipc	ra,0xfffff
    80004d50:	afc080e7          	jalr	-1284(ra) # 80003848 <__printf>
    80004d54:	01013403          	ld	s0,16(sp)
    80004d58:	01813083          	ld	ra,24(sp)
    80004d5c:	00048513          	mv	a0,s1
    80004d60:	00813483          	ld	s1,8(sp)
    80004d64:	02010113          	addi	sp,sp,32
    80004d68:	ffffe317          	auipc	t1,0xffffe
    80004d6c:	6d430067          	jr	1748(t1) # 8000343c <plic_complete>
    80004d70:	fffff097          	auipc	ra,0xfffff
    80004d74:	3e0080e7          	jalr	992(ra) # 80004150 <uartintr>
    80004d78:	fddff06f          	j	80004d54 <console_handler+0x74>
    80004d7c:	00000517          	auipc	a0,0x0
    80004d80:	72c50513          	addi	a0,a0,1836 # 800054a8 <digits+0x78>
    80004d84:	fffff097          	auipc	ra,0xfffff
    80004d88:	a68080e7          	jalr	-1432(ra) # 800037ec <panic>
	...

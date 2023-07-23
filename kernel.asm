
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	f6813103          	ld	sp,-152(sp) # 80005f68 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4b5020ef          	jal	ra,80002cd0 <start>

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
    80001084:	7c4010ef          	jal	ra,80002848 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800011e0:	668010ef          	jal	ra,80002848 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800012f0:	74c010ef          	jal	ra,80002a3c <_ZN5Riscv20handleTimerInterruptEv>

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
    80001400:	614010ef          	jal	ra,80002a14 <_ZN5Riscv22handleConsoleInterruptEv>

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
    80001648:	94c7b783          	ld	a5,-1716(a5) # 80005f90 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000164c:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001650:	01000513          	li	a0,16
    80001654:	00001097          	auipc	ra,0x1
    80001658:	e84080e7          	jalr	-380(ra) # 800024d8 <_Znwm>
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
    80001678:	91c7b783          	ld	a5,-1764(a5) # 80005f90 <_GLOBAL_OFFSET_TABLE_+0x60>
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
    80001714:	e40080e7          	jalr	-448(ra) # 80002550 <_ZdlPv>
    80001718:	020480a3          	sb	zero,33(s1)
        Scheduler::put(tcb);
    8000171c:	00048513          	mv	a0,s1
    80001720:	00001097          	auipc	ra,0x1
    80001724:	3e4080e7          	jalr	996(ra) # 80002b04 <_ZN9Scheduler3putEP3TCB>
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
    80001778:	d64080e7          	jalr	-668(ra) # 800024d8 <_Znwm>
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
    800017dc:	d78080e7          	jalr	-648(ra) # 80002550 <_ZdlPv>
    800017e0:	020900a3          	sb	zero,33(s2)

    while (this->blocked.peekFirst()) {
        TCB* tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    800017e4:	00090513          	mv	a0,s2
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	31c080e7          	jalr	796(ra) # 80002b04 <_ZN9Scheduler3putEP3TCB>
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
    800018d8:	2d0080e7          	jalr	720(ra) # 80002ba4 <_Z11printStringPKc>
        printInteger(i);
    800018dc:	00048513          	mv	a0,s1
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	334080e7          	jalr	820(ra) # 80002c14 <_Z12printIntegerm>
        printString("\n");
    800018e8:	00004517          	auipc	a0,0x4
    800018ec:	8c050513          	addi	a0,a0,-1856 # 800051a8 <CONSOLE_STATUS+0x198>
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	2b4080e7          	jalr	692(ra) # 80002ba4 <_Z11printStringPKc>
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
    80001914:	294080e7          	jalr	660(ra) # 80002ba4 <_Z11printStringPKc>
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
    80001934:	274080e7          	jalr	628(ra) # 80002ba4 <_Z11printStringPKc>
    printInteger(t1);
    80001938:	00090513          	mv	a0,s2
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	2d8080e7          	jalr	728(ra) # 80002c14 <_Z12printIntegerm>
    printString("\n");
    80001944:	00004517          	auipc	a0,0x4
    80001948:	86450513          	addi	a0,a0,-1948 # 800051a8 <CONSOLE_STATUS+0x198>
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	258080e7          	jalr	600(ra) # 80002ba4 <_Z11printStringPKc>



    uint64 result = fibonacci(20);
    80001954:	01400513          	li	a0,20
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	ee4080e7          	jalr	-284(ra) # 8000183c <_ZL9fibonaccim>
    80001960:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001964:	00003517          	auipc	a0,0x3
    80001968:	6dc50513          	addi	a0,a0,1756 # 80005040 <CONSOLE_STATUS+0x30>
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	238080e7          	jalr	568(ra) # 80002ba4 <_Z11printStringPKc>
    printInteger(result);
    80001974:	00090513          	mv	a0,s2
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	29c080e7          	jalr	668(ra) # 80002c14 <_Z12printIntegerm>
    printString("\n");
    80001980:	00004517          	auipc	a0,0x4
    80001984:	82850513          	addi	a0,a0,-2008 # 800051a8 <CONSOLE_STATUS+0x198>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	21c080e7          	jalr	540(ra) # 80002ba4 <_Z11printStringPKc>
    80001990:	0380006f          	j	800019c8 <_Z11workerBodyAPv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001994:	00003517          	auipc	a0,0x3
    80001998:	68c50513          	addi	a0,a0,1676 # 80005020 <CONSOLE_STATUS+0x10>
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	208080e7          	jalr	520(ra) # 80002ba4 <_Z11printStringPKc>
        printInteger(i);
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	26c080e7          	jalr	620(ra) # 80002c14 <_Z12printIntegerm>
        printString("\n");
    800019b0:	00003517          	auipc	a0,0x3
    800019b4:	7f850513          	addi	a0,a0,2040 # 800051a8 <CONSOLE_STATUS+0x198>
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	1ec080e7          	jalr	492(ra) # 80002ba4 <_Z11printStringPKc>
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
    80001a24:	184080e7          	jalr	388(ra) # 80002ba4 <_Z11printStringPKc>
        printInteger(i);
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	1e8080e7          	jalr	488(ra) # 80002c14 <_Z12printIntegerm>
        printString("\n");
    80001a34:	00003517          	auipc	a0,0x3
    80001a38:	77450513          	addi	a0,a0,1908 # 800051a8 <CONSOLE_STATUS+0x198>
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	168080e7          	jalr	360(ra) # 80002ba4 <_Z11printStringPKc>
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
    80001a60:	148080e7          	jalr	328(ra) # 80002ba4 <_Z11printStringPKc>
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
    80001a8c:	11c080e7          	jalr	284(ra) # 80002ba4 <_Z11printStringPKc>
    printInteger(result);
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	180080e7          	jalr	384(ra) # 80002c14 <_Z12printIntegerm>
    printString("\n");
    80001a9c:	00003517          	auipc	a0,0x3
    80001aa0:	70c50513          	addi	a0,a0,1804 # 800051a8 <CONSOLE_STATUS+0x198>
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	100080e7          	jalr	256(ra) # 80002ba4 <_Z11printStringPKc>
    80001aac:	0380006f          	j	80001ae4 <_Z11workerBodyBPv+0xf4>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001ab0:	00003517          	auipc	a0,0x3
    80001ab4:	5a050513          	addi	a0,a0,1440 # 80005050 <CONSOLE_STATUS+0x40>
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	0ec080e7          	jalr	236(ra) # 80002ba4 <_Z11printStringPKc>
        printInteger(i);
    80001ac0:	00048513          	mv	a0,s1
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	150080e7          	jalr	336(ra) # 80002c14 <_Z12printIntegerm>
        printString("\n");
    80001acc:	00003517          	auipc	a0,0x3
    80001ad0:	6dc50513          	addi	a0,a0,1756 # 800051a8 <CONSOLE_STATUS+0x198>
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	0d0080e7          	jalr	208(ra) # 80002ba4 <_Z11printStringPKc>
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
    80001b30:	078080e7          	jalr	120(ra) # 80002ba4 <_Z11printStringPKc>
    thread_dispatch();
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	9c4080e7          	jalr	-1596(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch2..\n");
    80001b3c:	00003517          	auipc	a0,0x3
    80001b40:	55c50513          	addi	a0,a0,1372 # 80005098 <CONSOLE_STATUS+0x88>
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	060080e7          	jalr	96(ra) # 80002ba4 <_Z11printStringPKc>
    thread_dispatch();
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	9ac080e7          	jalr	-1620(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch3...\n");
    80001b54:	00003517          	auipc	a0,0x3
    80001b58:	56450513          	addi	a0,a0,1380 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	048080e7          	jalr	72(ra) # 80002ba4 <_Z11printStringPKc>
    thread_dispatch();
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	994080e7          	jalr	-1644(ra) # 800014f8 <_Z15thread_dispatchv>
    printString("C: poziva se dispatch4....\n");
    80001b6c:	00003517          	auipc	a0,0x3
    80001b70:	56c50513          	addi	a0,a0,1388 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001b74:	00001097          	auipc	ra,0x1
    80001b78:	030080e7          	jalr	48(ra) # 80002ba4 <_Z11printStringPKc>
    printString("C: Signal semafora!\n");
    80001b7c:	00003517          	auipc	a0,0x3
    80001b80:	57c50513          	addi	a0,a0,1404 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	020080e7          	jalr	32(ra) # 80002ba4 <_Z11printStringPKc>
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
    80001bac:	ffc080e7          	jalr	-4(ra) # 80002ba4 <_Z11printStringPKc>
    printString("C: posle signala.2.\n");
    80001bb0:	00003517          	auipc	a0,0x3
    80001bb4:	57850513          	addi	a0,a0,1400 # 80005128 <CONSOLE_STATUS+0x118>
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	fec080e7          	jalr	-20(ra) # 80002ba4 <_Z11printStringPKc>
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
    80001bf8:	fb0080e7          	jalr	-80(ra) # 80002ba4 <_Z11printStringPKc>
    printString("D: Cekamo na semaforu..\n");
    80001bfc:	00003517          	auipc	a0,0x3
    80001c00:	55c50513          	addi	a0,a0,1372 # 80005158 <CONSOLE_STATUS+0x148>
    80001c04:	00001097          	auipc	ra,0x1
    80001c08:	fa0080e7          	jalr	-96(ra) # 80002ba4 <_Z11printStringPKc>

    int returnValue = sem_wait((sem_t) arg);
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	988080e7          	jalr	-1656(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
    80001c18:	00050493          	mv	s1,a0

    printString("D: rezultat: ");
    80001c1c:	00003517          	auipc	a0,0x3
    80001c20:	55c50513          	addi	a0,a0,1372 # 80005178 <CONSOLE_STATUS+0x168>
    80001c24:	00001097          	auipc	ra,0x1
    80001c28:	f80080e7          	jalr	-128(ra) # 80002ba4 <_Z11printStringPKc>
    printInteger(returnValue);
    80001c2c:	00048513          	mv	a0,s1
    80001c30:	00001097          	auipc	ra,0x1
    80001c34:	fe4080e7          	jalr	-28(ra) # 80002c14 <_Z12printIntegerm>
    printString("\nD: izlazim automatski, pozdrav!\n");
    80001c38:	00003517          	auipc	a0,0x3
    80001c3c:	55050513          	addi	a0,a0,1360 # 80005188 <CONSOLE_STATUS+0x178>
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	f64080e7          	jalr	-156(ra) # 80002ba4 <_Z11printStringPKc>
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
    80001c78:	2c47b783          	ld	a5,708(a5) # 80005f38 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c7c:	0007b683          	ld	a3,0(a5)
    80001c80:	00004717          	auipc	a4,0x4
    80001c84:	2c073703          	ld	a4,704(a4) # 80005f40 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c88:	00d73023          	sd	a3,0(a4)
        used = nullptr;
    80001c8c:	00004617          	auipc	a2,0x4
    80001c90:	2ec63603          	ld	a2,748(a2) # 80005f78 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001c94:	00063023          	sd	zero,0(a2)

        free->next = nullptr;
    80001c98:	0006b023          	sd	zero,0(a3)
        free->prev  = nullptr;
    80001c9c:	00073703          	ld	a4,0(a4)
    80001ca0:	00073423          	sd	zero,8(a4)
        free->size = ((char*)HEAP_START_ADDR - (char*)HEAP_END_ADDR - sizeof(DataBlock)); //FOR NOW
    80001ca4:	0007b783          	ld	a5,0(a5)
    80001ca8:	00004697          	auipc	a3,0x4
    80001cac:	2f06b683          	ld	a3,752(a3) # 80005f98 <_GLOBAL_OFFSET_TABLE_+0x68>
    80001cb0:	0006b683          	ld	a3,0(a3)
    80001cb4:	40d787b3          	sub	a5,a5,a3
    80001cb8:	fe878793          	addi	a5,a5,-24
    80001cbc:	00f73823          	sd	a5,16(a4)


        //testing purposes
        newCalled = 0;
    80001cc0:	00004797          	auipc	a5,0x4
    80001cc4:	2c07b783          	ld	a5,704(a5) # 80005f80 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001cc8:	0007a023          	sw	zero,0(a5)
        newArrayCalled = 0;
    80001ccc:	00004797          	auipc	a5,0x4
    80001cd0:	2a47b783          	ld	a5,676(a5) # 80005f70 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001cd4:	0007a023          	sw	zero,0(a5)
        deleteCalled= 0;
    80001cd8:	00004797          	auipc	a5,0x4
    80001cdc:	2807b783          	ld	a5,640(a5) # 80005f58 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ce0:	0007a023          	sw	zero,0(a5)
        deleteArrayCalled = 0;
    80001ce4:	00004797          	auipc	a5,0x4
    80001ce8:	27c7b783          	ld	a5,636(a5) # 80005f60 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cec:	0007a023          	sw	zero,0(a5)
    TCB *threads[5];

    MemoryAllocator::initFreeBlock();

    threads[0] = TCB::createThread(nullptr,nullptr);
    80001cf0:	00000593          	li	a1,0
    80001cf4:	00000513          	li	a0,0
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	2f0080e7          	jalr	752(ra) # 80001fe8 <_ZN3TCB12createThreadEPFvPvES0_>
    80001d00:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001d04:	00004797          	auipc	a5,0x4
    80001d08:	28c7b783          	ld	a5,652(a5) # 80005f90 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001d0c:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    80001d10:	00004797          	auipc	a5,0x4
    80001d14:	2407b783          	ld	a5,576(a5) # 80005f50 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d18:	0017e793          	ori	a5,a5,1
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001d1c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d20:	00200793          	li	a5,2
    80001d24:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    int return1 = thread_create(&threads[1], workerBodyA, nullptr);
    80001d28:	00000613          	li	a2,0
    80001d2c:	00004597          	auipc	a1,0x4
    80001d30:	25c5b583          	ld	a1,604(a1) # 80005f88 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001d34:	fc040513          	addi	a0,s0,-64
    80001d38:	fffff097          	auipc	ra,0xfffff
    80001d3c:	760080e7          	jalr	1888(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001d40:	00050493          	mv	s1,a0
    printString("ThreadA created\n");
    80001d44:	00003517          	auipc	a0,0x3
    80001d48:	46c50513          	addi	a0,a0,1132 # 800051b0 <CONSOLE_STATUS+0x1a0>
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	e58080e7          	jalr	-424(ra) # 80002ba4 <_Z11printStringPKc>
    printInteger(return1);
    80001d54:	00048513          	mv	a0,s1
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	ebc080e7          	jalr	-324(ra) # 80002c14 <_Z12printIntegerm>
    int return2 = thread_create(&threads[2], workerBodyB, threads[1]);
    80001d60:	fc043603          	ld	a2,-64(s0)
    80001d64:	00004597          	auipc	a1,0x4
    80001d68:	23c5b583          	ld	a1,572(a1) # 80005fa0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80001d6c:	fc840513          	addi	a0,s0,-56
    80001d70:	fffff097          	auipc	ra,0xfffff
    80001d74:	728080e7          	jalr	1832(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    80001d78:	00050493          	mv	s1,a0
    printString("ThreadB created\n");
    80001d7c:	00003517          	auipc	a0,0x3
    80001d80:	44c50513          	addi	a0,a0,1100 # 800051c8 <CONSOLE_STATUS+0x1b8>
    80001d84:	00001097          	auipc	ra,0x1
    80001d88:	e20080e7          	jalr	-480(ra) # 80002ba4 <_Z11printStringPKc>
    printInteger(return2);
    80001d8c:	00048513          	mv	a0,s1
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	e84080e7          	jalr	-380(ra) # 80002c14 <_Z12printIntegerm>

    MySemaphore* semaphore[2];
    sem_open(&semaphore[0], 0);
    80001d98:	00000593          	li	a1,0
    80001d9c:	fa840513          	addi	a0,s0,-88
    80001da0:	fffff097          	auipc	ra,0xfffff
    80001da4:	79c080e7          	jalr	1948(ra) # 8000153c <_Z8sem_openPP11MySemaphorej>
    80001da8:	00c0006f          	j	80001db4 <main+0x158>

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        thread_dispatch();
    80001dac:	fffff097          	auipc	ra,0xfffff
    80001db0:	74c080e7          	jalr	1868(ra) # 800014f8 <_Z15thread_dispatchv>
    while (!(threads[1]->isFinished() &&
    80001db4:	fc043783          	ld	a5,-64(s0)
    bool isFinished() const { return finished; }
    80001db8:	0207c783          	lbu	a5,32(a5)
    80001dbc:	fe0788e3          	beqz	a5,80001dac <main+0x150>
             threads[2]->isFinished()))
    80001dc0:	fc843783          	ld	a5,-56(s0)
    80001dc4:	0207c783          	lbu	a5,32(a5)
    while (!(threads[1]->isFinished() &&
    80001dc8:	fe0782e3          	beqz	a5,80001dac <main+0x150>
    }


    printString("main: Pravimo C...");
    80001dcc:	00003517          	auipc	a0,0x3
    80001dd0:	41450513          	addi	a0,a0,1044 # 800051e0 <CONSOLE_STATUS+0x1d0>
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	dd0080e7          	jalr	-560(ra) # 80002ba4 <_Z11printStringPKc>
    thread_create(&threads[3], workerBodyC, semaphore[0]);
    80001ddc:	fa843603          	ld	a2,-88(s0)
    80001de0:	00004597          	auipc	a1,0x4
    80001de4:	1685b583          	ld	a1,360(a1) # 80005f48 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001de8:	fd040493          	addi	s1,s0,-48
    80001dec:	00048513          	mv	a0,s1
    80001df0:	fffff097          	auipc	ra,0xfffff
    80001df4:	6a8080e7          	jalr	1704(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("main: Pravimo D....");
    80001df8:	00003517          	auipc	a0,0x3
    80001dfc:	40050513          	addi	a0,a0,1024 # 800051f8 <CONSOLE_STATUS+0x1e8>
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	da4080e7          	jalr	-604(ra) # 80002ba4 <_Z11printStringPKc>
    thread_create(&threads[3], workerBodyD, semaphore[0]);
    80001e08:	fa843603          	ld	a2,-88(s0)
    80001e0c:	00004597          	auipc	a1,0x4
    80001e10:	19c5b583          	ld	a1,412(a1) # 80005fa8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80001e14:	00048513          	mv	a0,s1
    80001e18:	fffff097          	auipc	ra,0xfffff
    80001e1c:	680080e7          	jalr	1664(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
    //thread_dispatch();
    int returnValue = sem_wait(semaphore[0]);
    80001e20:	fa843503          	ld	a0,-88(s0)
    80001e24:	fffff097          	auipc	ra,0xfffff
    80001e28:	774080e7          	jalr	1908(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
    80001e2c:	00050493          	mv	s1,a0

    printString("Finished\nReturn value: ");
    80001e30:	00003517          	auipc	a0,0x3
    80001e34:	3e050513          	addi	a0,a0,992 # 80005210 <CONSOLE_STATUS+0x200>
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	d6c080e7          	jalr	-660(ra) # 80002ba4 <_Z11printStringPKc>
    printInteger(returnValue);
    80001e40:	00048513          	mv	a0,s1
    80001e44:	00001097          	auipc	ra,0x1
    80001e48:	dd0080e7          	jalr	-560(ra) # 80002c14 <_Z12printIntegerm>
    printString("\n");
    80001e4c:	00003517          	auipc	a0,0x3
    80001e50:	35c50513          	addi	a0,a0,860 # 800051a8 <CONSOLE_STATUS+0x198>
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	d50080e7          	jalr	-688(ra) # 80002ba4 <_Z11printStringPKc>

    thread_dispatch();
    80001e5c:	fffff097          	auipc	ra,0xfffff
    80001e60:	69c080e7          	jalr	1692(ra) # 800014f8 <_Z15thread_dispatchv>
    for (auto &thread: threads) {
    80001e64:	fb840493          	addi	s1,s0,-72
    80001e68:	0140006f          	j	80001e7c <main+0x220>
        delete thread;
    80001e6c:	00090513          	mv	a0,s2
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	6e0080e7          	jalr	1760(ra) # 80002550 <_ZdlPv>
    for (auto &thread: threads) {
    80001e78:	00848493          	addi	s1,s1,8
    80001e7c:	fe040793          	addi	a5,s0,-32
    80001e80:	02f48063          	beq	s1,a5,80001ea0 <main+0x244>
        delete thread;
    80001e84:	0004b903          	ld	s2,0(s1)
    80001e88:	fe0908e3          	beqz	s2,80001e78 <main+0x21c>
    ~TCB() { delete[] stack; }
    80001e8c:	00893503          	ld	a0,8(s2)
    80001e90:	fc050ee3          	beqz	a0,80001e6c <main+0x210>
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	6f8080e7          	jalr	1784(ra) # 8000258c <_ZdaPv>
    80001e9c:	fd1ff06f          	j	80001e6c <main+0x210>
    }


    //Testing
    printString("New called: ");
    80001ea0:	00003517          	auipc	a0,0x3
    80001ea4:	38850513          	addi	a0,a0,904 # 80005228 <CONSOLE_STATUS+0x218>
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	cfc080e7          	jalr	-772(ra) # 80002ba4 <_Z11printStringPKc>
    printInteger(MemoryAllocator::newCalled);
    80001eb0:	00004797          	auipc	a5,0x4
    80001eb4:	0d07b783          	ld	a5,208(a5) # 80005f80 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001eb8:	0007a503          	lw	a0,0(a5)
    80001ebc:	00001097          	auipc	ra,0x1
    80001ec0:	d58080e7          	jalr	-680(ra) # 80002c14 <_Z12printIntegerm>
    printString("\n");
    80001ec4:	00003517          	auipc	a0,0x3
    80001ec8:	2e450513          	addi	a0,a0,740 # 800051a8 <CONSOLE_STATUS+0x198>
    80001ecc:	00001097          	auipc	ra,0x1
    80001ed0:	cd8080e7          	jalr	-808(ra) # 80002ba4 <_Z11printStringPKc>

    printString("New[] called: ");
    80001ed4:	00003517          	auipc	a0,0x3
    80001ed8:	36450513          	addi	a0,a0,868 # 80005238 <CONSOLE_STATUS+0x228>
    80001edc:	00001097          	auipc	ra,0x1
    80001ee0:	cc8080e7          	jalr	-824(ra) # 80002ba4 <_Z11printStringPKc>
    printInteger(MemoryAllocator::newArrayCalled);
    80001ee4:	00004797          	auipc	a5,0x4
    80001ee8:	08c7b783          	ld	a5,140(a5) # 80005f70 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001eec:	0007a503          	lw	a0,0(a5)
    80001ef0:	00001097          	auipc	ra,0x1
    80001ef4:	d24080e7          	jalr	-732(ra) # 80002c14 <_Z12printIntegerm>
    printString("\n");
    80001ef8:	00003517          	auipc	a0,0x3
    80001efc:	2b050513          	addi	a0,a0,688 # 800051a8 <CONSOLE_STATUS+0x198>
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	ca4080e7          	jalr	-860(ra) # 80002ba4 <_Z11printStringPKc>


    printString("Delete called: ");
    80001f08:	00003517          	auipc	a0,0x3
    80001f0c:	34050513          	addi	a0,a0,832 # 80005248 <CONSOLE_STATUS+0x238>
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	c94080e7          	jalr	-876(ra) # 80002ba4 <_Z11printStringPKc>
    printInteger(MemoryAllocator::deleteCalled);
    80001f18:	00004797          	auipc	a5,0x4
    80001f1c:	0407b783          	ld	a5,64(a5) # 80005f58 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f20:	0007a503          	lw	a0,0(a5)
    80001f24:	00001097          	auipc	ra,0x1
    80001f28:	cf0080e7          	jalr	-784(ra) # 80002c14 <_Z12printIntegerm>
    printString("\n");
    80001f2c:	00003517          	auipc	a0,0x3
    80001f30:	27c50513          	addi	a0,a0,636 # 800051a8 <CONSOLE_STATUS+0x198>
    80001f34:	00001097          	auipc	ra,0x1
    80001f38:	c70080e7          	jalr	-912(ra) # 80002ba4 <_Z11printStringPKc>

    printString("Delete[] called: ");
    80001f3c:	00003517          	auipc	a0,0x3
    80001f40:	31c50513          	addi	a0,a0,796 # 80005258 <CONSOLE_STATUS+0x248>
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	c60080e7          	jalr	-928(ra) # 80002ba4 <_Z11printStringPKc>
    printInteger(MemoryAllocator::deleteArrayCalled);
    80001f4c:	00004797          	auipc	a5,0x4
    80001f50:	0147b783          	ld	a5,20(a5) # 80005f60 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f54:	0007a503          	lw	a0,0(a5)
    80001f58:	00001097          	auipc	ra,0x1
    80001f5c:	cbc080e7          	jalr	-836(ra) # 80002c14 <_Z12printIntegerm>
    printString("\n");
    80001f60:	00003517          	auipc	a0,0x3
    80001f64:	24850513          	addi	a0,a0,584 # 800051a8 <CONSOLE_STATUS+0x198>
    80001f68:	00001097          	auipc	ra,0x1
    80001f6c:	c3c080e7          	jalr	-964(ra) # 80002ba4 <_Z11printStringPKc>

    return 0;
}
    80001f70:	00000513          	li	a0,0
    80001f74:	05813083          	ld	ra,88(sp)
    80001f78:	05013403          	ld	s0,80(sp)
    80001f7c:	04813483          	ld	s1,72(sp)
    80001f80:	04013903          	ld	s2,64(sp)
    80001f84:	06010113          	addi	sp,sp,96
    80001f88:	00008067          	ret

0000000080001f8c <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001f8c:	fe010113          	addi	sp,sp,-32
    80001f90:	00113c23          	sd	ra,24(sp)
    80001f94:	00813823          	sd	s0,16(sp)
    80001f98:	00913423          	sd	s1,8(sp)
    80001f9c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001fa0:	00001097          	auipc	ra,0x1
    80001fa4:	888080e7          	jalr	-1912(ra) # 80002828 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001fa8:	00004497          	auipc	s1,0x4
    80001fac:	05848493          	addi	s1,s1,88 # 80006000 <_ZN3TCB7runningE>
    80001fb0:	0004b783          	ld	a5,0(s1)
    80001fb4:	0007b703          	ld	a4,0(a5)
    80001fb8:	0287b503          	ld	a0,40(a5)
    80001fbc:	000700e7          	jalr	a4
    running->setFinished(true);
    80001fc0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001fc4:	00100713          	li	a4,1
    80001fc8:	02e78023          	sb	a4,32(a5)
    thread_dispatch();
    80001fcc:	fffff097          	auipc	ra,0xfffff
    80001fd0:	52c080e7          	jalr	1324(ra) # 800014f8 <_Z15thread_dispatchv>
}
    80001fd4:	01813083          	ld	ra,24(sp)
    80001fd8:	01013403          	ld	s0,16(sp)
    80001fdc:	00813483          	ld	s1,8(sp)
    80001fe0:	02010113          	addi	sp,sp,32
    80001fe4:	00008067          	ret

0000000080001fe8 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80001fe8:	fd010113          	addi	sp,sp,-48
    80001fec:	02113423          	sd	ra,40(sp)
    80001ff0:	02813023          	sd	s0,32(sp)
    80001ff4:	00913c23          	sd	s1,24(sp)
    80001ff8:	01213823          	sd	s2,16(sp)
    80001ffc:	01313423          	sd	s3,8(sp)
    80002000:	03010413          	addi	s0,sp,48
    80002004:	00050913          	mv	s2,a0
    80002008:	00058993          	mv	s3,a1
    return new TCB(body, arg);
    8000200c:	03000513          	li	a0,48
    80002010:	00000097          	auipc	ra,0x0
    80002014:	4c8080e7          	jalr	1224(ra) # 800024d8 <_Znwm>
    80002018:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            arg(arg)
    8000201c:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80002020:	00090a63          	beqz	s2,80002034 <_ZN3TCB12createThreadEPFvPvES0_+0x4c>
    80002024:	00002537          	lui	a0,0x2
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	4ec080e7          	jalr	1260(ra) # 80002514 <_Znam>
    80002030:	0080006f          	j	80002038 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80002034:	00000513          	li	a0,0
            arg(arg)
    80002038:	00a4b423          	sd	a0,8(s1)
    8000203c:	00000797          	auipc	a5,0x0
    80002040:	f5078793          	addi	a5,a5,-176 # 80001f8c <_ZN3TCB13threadWrapperEv>
    80002044:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002048:	02050863          	beqz	a0,80002078 <_ZN3TCB12createThreadEPFvPvES0_+0x90>
    8000204c:	000027b7          	lui	a5,0x2
    80002050:	00f507b3          	add	a5,a0,a5
            arg(arg)
    80002054:	00f4bc23          	sd	a5,24(s1)
    80002058:	02048023          	sb	zero,32(s1)
    8000205c:	020480a3          	sb	zero,33(s1)
    80002060:	0334b423          	sd	s3,40(s1)

    {
        if (body != nullptr) { Scheduler::put(this); }
    80002064:	02090c63          	beqz	s2,8000209c <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
    80002068:	00048513          	mv	a0,s1
    8000206c:	00001097          	auipc	ra,0x1
    80002070:	a98080e7          	jalr	-1384(ra) # 80002b04 <_ZN9Scheduler3putEP3TCB>
    80002074:	0280006f          	j	8000209c <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002078:	00000793          	li	a5,0
    8000207c:	fd9ff06f          	j	80002054 <_ZN3TCB12createThreadEPFvPvES0_+0x6c>
    80002080:	00050913          	mv	s2,a0
    80002084:	00048513          	mv	a0,s1
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	4c8080e7          	jalr	1224(ra) # 80002550 <_ZdlPv>
    80002090:	00090513          	mv	a0,s2
    80002094:	00005097          	auipc	ra,0x5
    80002098:	074080e7          	jalr	116(ra) # 80007108 <_Unwind_Resume>
}
    8000209c:	00048513          	mv	a0,s1
    800020a0:	02813083          	ld	ra,40(sp)
    800020a4:	02013403          	ld	s0,32(sp)
    800020a8:	01813483          	ld	s1,24(sp)
    800020ac:	01013903          	ld	s2,16(sp)
    800020b0:	00813983          	ld	s3,8(sp)
    800020b4:	03010113          	addi	sp,sp,48
    800020b8:	00008067          	ret

00000000800020bc <_ZN3TCB5yieldEv>:
{
    800020bc:	ff010113          	addi	sp,sp,-16
    800020c0:	00813423          	sd	s0,8(sp)
    800020c4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    800020c8:	01300793          	li	a5,19
    800020cc:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800020d0:	00000073          	ecall
}
    800020d4:	00813403          	ld	s0,8(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <_ZN3TCB8dispatchEv>:
{
    800020e0:	fe010113          	addi	sp,sp,-32
    800020e4:	00113c23          	sd	ra,24(sp)
    800020e8:	00813823          	sd	s0,16(sp)
    800020ec:	00913423          	sd	s1,8(sp)
    800020f0:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800020f4:	00004497          	auipc	s1,0x4
    800020f8:	f0c4b483          	ld	s1,-244(s1) # 80006000 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800020fc:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002100:	00079663          	bnez	a5,8000210c <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return this->blocked; }
    80002104:	0214c783          	lbu	a5,33(s1)
    80002108:	02078c63          	beqz	a5,80002140 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	990080e7          	jalr	-1648(ra) # 80002a9c <_ZN9Scheduler3getEv>
    80002114:	00004797          	auipc	a5,0x4
    80002118:	eea7b623          	sd	a0,-276(a5) # 80006000 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    8000211c:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80002120:	01048513          	addi	a0,s1,16
    80002124:	fffff097          	auipc	ra,0xfffff
    80002128:	fec080e7          	jalr	-20(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000212c:	01813083          	ld	ra,24(sp)
    80002130:	01013403          	ld	s0,16(sp)
    80002134:	00813483          	ld	s1,8(sp)
    80002138:	02010113          	addi	sp,sp,32
    8000213c:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80002140:	00048513          	mv	a0,s1
    80002144:	00001097          	auipc	ra,0x1
    80002148:	9c0080e7          	jalr	-1600(ra) # 80002b04 <_ZN9Scheduler3putEP3TCB>
    8000214c:	fc1ff06f          	j	8000210c <_ZN3TCB8dispatchEv+0x2c>

0000000080002150 <_ZN3TCB4joinEPS_>:

void TCB::join(TCB* handle) {
    80002150:	fe010113          	addi	sp,sp,-32
    80002154:	00113c23          	sd	ra,24(sp)
    80002158:	00813823          	sd	s0,16(sp)
    8000215c:	00913423          	sd	s1,8(sp)
    80002160:	02010413          	addi	s0,sp,32
    80002164:	00050493          	mv	s1,a0
    bool isFinished() const { return finished; }
    80002168:	0204c783          	lbu	a5,32(s1)
    while(!handle->isFinished()) {
    8000216c:	00079863          	bnez	a5,8000217c <_ZN3TCB4joinEPS_+0x2c>
        TCB::dispatch();
    80002170:	00000097          	auipc	ra,0x0
    80002174:	f70080e7          	jalr	-144(ra) # 800020e0 <_ZN3TCB8dispatchEv>
    while(!handle->isFinished()) {
    80002178:	ff1ff06f          	j	80002168 <_ZN3TCB4joinEPS_+0x18>
    }
    8000217c:	01813083          	ld	ra,24(sp)
    80002180:	01013403          	ld	s0,16(sp)
    80002184:	00813483          	ld	s1,8(sp)
    80002188:	02010113          	addi	sp,sp,32
    8000218c:	00008067          	ret

0000000080002190 <_ZN15MemoryAllocator9mem_allocEm>:
int MemoryAllocator::newArrayCalled = 0;
int MemoryAllocator::deleteCalled = 0;
int MemoryAllocator::deleteArrayCalled = 0;


void *MemoryAllocator::mem_alloc(size_t size) {
    80002190:	ff010113          	addi	sp,sp,-16
    80002194:	00813423          	sd	s0,8(sp)
    80002198:	01010413          	addi	s0,sp,16
    8000219c:	00050793          	mv	a5,a0
    size_t newSize;
    if(size%MEM_BLOCK_SIZE != 0) {
    800021a0:	03f57713          	andi	a4,a0,63
    800021a4:	00070663          	beqz	a4,800021b0 <_ZN15MemoryAllocator9mem_allocEm+0x20>
        newSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    800021a8:	03f50793          	addi	a5,a0,63
    800021ac:	fc07f793          	andi	a5,a5,-64
    }
    else {
        newSize = size;
    }

    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
    800021b0:	00004517          	auipc	a0,0x4
    800021b4:	e5853503          	ld	a0,-424(a0) # 80006008 <_ZN15MemoryAllocator4freeE>
    800021b8:	06050e63          	beqz	a0,80002234 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        if(curr->size<newSize) continue;
    800021bc:	01053703          	ld	a4,16(a0)
    800021c0:	08f76063          	bltu	a4,a5,80002240 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
        if(curr->size > newSize) {
    800021c4:	0ce7f663          	bgeu	a5,a4,80002290 <_ZN15MemoryAllocator9mem_allocEm+0x100>
            //new fragment needs to be created
            //novi ce biti offsetovan od curr za novi size i plus za sizeof(DataBlock) zato sto se posle curr
            // nalazi taj "header"
            DataBlock *newBlock;
            newBlock = (DataBlock*) ((char*)curr + newSize + sizeof(DataBlock));
    800021c8:	01878713          	addi	a4,a5,24
    800021cc:	00e50733          	add	a4,a0,a4

            //Azuriranje free liste
            if(curr->prev) curr->prev->next = newBlock;
    800021d0:	00853683          	ld	a3,8(a0)
    800021d4:	06068a63          	beqz	a3,80002248 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
    800021d8:	00e6b023          	sd	a4,0(a3)
            else MemoryAllocator::free = newBlock;
            if(curr->next) curr->next->prev = newBlock;
    800021dc:	00053683          	ld	a3,0(a0)
    800021e0:	00068463          	beqz	a3,800021e8 <_ZN15MemoryAllocator9mem_allocEm+0x58>
    800021e4:	00e6b423          	sd	a4,8(a3)
            newBlock->prev = curr->prev;
    800021e8:	00853683          	ld	a3,8(a0)
    800021ec:	00d73423          	sd	a3,8(a4)
            newBlock->next = curr->next;
    800021f0:	00053683          	ld	a3,0(a0)
    800021f4:	00d73023          	sd	a3,0(a4)
            //size novi je sada prethodni size - novi size i jos - sizeof(DataBlock) jer se to ne brise kada se zauzme
            //pa mora i to da se cuva
            newBlock->size = curr->size - newSize - sizeof(DataBlock);
    800021f8:	01053683          	ld	a3,16(a0)
    800021fc:	40f686b3          	sub	a3,a3,a5
    80002200:	fe868693          	addi	a3,a3,-24
    80002204:	00d73823          	sd	a3,16(a4)
            curr->size = newSize;
    80002208:	00f53823          	sd	a5,16(a0)


            //azuriranje USED liste
            if(used == nullptr) {
    8000220c:	00004797          	auipc	a5,0x4
    80002210:	e047b783          	ld	a5,-508(a5) # 80006010 <_ZN15MemoryAllocator4usedE>
    80002214:	04078063          	beqz	a5,80002254 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
                used = curr;
                curr->next = nullptr;
                curr->prev = nullptr;
            }
            else if((char*) curr < (char*)used) {
    80002218:	04f57863          	bgeu	a0,a5,80002268 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
                //treba da ide pre trenutnog used
                used->prev = curr;
    8000221c:	00a7b423          	sd	a0,8(a5)
                curr->prev = nullptr;
    80002220:	00053423          	sd	zero,8(a0)
                curr->next = used;
    80002224:	00f53023          	sd	a5,0(a0)
                used = curr;
    80002228:	00004797          	auipc	a5,0x4
    8000222c:	dea7b423          	sd	a0,-536(a5) # 80006010 <_ZN15MemoryAllocator4usedE>
                curr->prev = currUsed;
                if(curr->next) curr->next->prev = curr;
                currUsed->next = curr;
            }
        }
        return (char*)curr + sizeof(DataBlock);
    80002230:	01850513          	addi	a0,a0,24
    }
    return nullptr; //should not enter here
}
    80002234:	00813403          	ld	s0,8(sp)
    80002238:	01010113          	addi	sp,sp,16
    8000223c:	00008067          	ret
    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
    80002240:	00053503          	ld	a0,0(a0)
    80002244:	f75ff06f          	j	800021b8 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            else MemoryAllocator::free = newBlock;
    80002248:	00004697          	auipc	a3,0x4
    8000224c:	dce6b023          	sd	a4,-576(a3) # 80006008 <_ZN15MemoryAllocator4freeE>
    80002250:	f8dff06f          	j	800021dc <_ZN15MemoryAllocator9mem_allocEm+0x4c>
                used = curr;
    80002254:	00004797          	auipc	a5,0x4
    80002258:	daa7be23          	sd	a0,-580(a5) # 80006010 <_ZN15MemoryAllocator4usedE>
                curr->next = nullptr;
    8000225c:	00053023          	sd	zero,0(a0)
                curr->prev = nullptr;
    80002260:	00053423          	sd	zero,8(a0)
    80002264:	fcdff06f          	j	80002230 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
                for(; currUsed->next && (char*)(currUsed->next) < (char*) curr; currUsed = currUsed->next);
    80002268:	00078713          	mv	a4,a5
    8000226c:	0007b783          	ld	a5,0(a5)
    80002270:	00078463          	beqz	a5,80002278 <_ZN15MemoryAllocator9mem_allocEm+0xe8>
    80002274:	fea7eae3          	bltu	a5,a0,80002268 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
                curr->next = currUsed->next;
    80002278:	00f53023          	sd	a5,0(a0)
                curr->prev = currUsed;
    8000227c:	00e53423          	sd	a4,8(a0)
                if(curr->next) curr->next->prev = curr;
    80002280:	00078463          	beqz	a5,80002288 <_ZN15MemoryAllocator9mem_allocEm+0xf8>
    80002284:	00a7b423          	sd	a0,8(a5)
                currUsed->next = curr;
    80002288:	00a73023          	sd	a0,0(a4)
    8000228c:	fa5ff06f          	j	80002230 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            if (curr->prev) curr->prev->next = curr->next;
    80002290:	00853783          	ld	a5,8(a0)
    80002294:	04078263          	beqz	a5,800022d8 <_ZN15MemoryAllocator9mem_allocEm+0x148>
    80002298:	00053703          	ld	a4,0(a0)
    8000229c:	00e7b023          	sd	a4,0(a5)
            if(curr->next) curr->next->prev = curr->prev;
    800022a0:	00053783          	ld	a5,0(a0)
    800022a4:	00078663          	beqz	a5,800022b0 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    800022a8:	00853703          	ld	a4,8(a0)
    800022ac:	00e7b423          	sd	a4,8(a5)
            if(used == nullptr) {
    800022b0:	00004797          	auipc	a5,0x4
    800022b4:	d607b783          	ld	a5,-672(a5) # 80006010 <_ZN15MemoryAllocator4usedE>
    800022b8:	02078863          	beqz	a5,800022e8 <_ZN15MemoryAllocator9mem_allocEm+0x158>
            else if((char*) curr < (char*)used) {
    800022bc:	04f57063          	bgeu	a0,a5,800022fc <_ZN15MemoryAllocator9mem_allocEm+0x16c>
                used->prev = curr;
    800022c0:	00a7b423          	sd	a0,8(a5)
                curr->prev = nullptr;
    800022c4:	00053423          	sd	zero,8(a0)
                curr->next = used;
    800022c8:	00f53023          	sd	a5,0(a0)
                used = curr;
    800022cc:	00004797          	auipc	a5,0x4
    800022d0:	d4a7b223          	sd	a0,-700(a5) # 80006010 <_ZN15MemoryAllocator4usedE>
    800022d4:	f5dff06f          	j	80002230 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            else MemoryAllocator::free = curr->next;
    800022d8:	00053783          	ld	a5,0(a0)
    800022dc:	00004717          	auipc	a4,0x4
    800022e0:	d2f73623          	sd	a5,-724(a4) # 80006008 <_ZN15MemoryAllocator4freeE>
    800022e4:	fbdff06f          	j	800022a0 <_ZN15MemoryAllocator9mem_allocEm+0x110>
                used = curr;
    800022e8:	00004797          	auipc	a5,0x4
    800022ec:	d2a7b423          	sd	a0,-728(a5) # 80006010 <_ZN15MemoryAllocator4usedE>
                curr->next = nullptr;
    800022f0:	00053023          	sd	zero,0(a0)
                curr->prev = nullptr;
    800022f4:	00053423          	sd	zero,8(a0)
    800022f8:	f39ff06f          	j	80002230 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
                for(; currUsed->next && (char*)(currUsed->next) < (char*) curr; currUsed = currUsed->next);
    800022fc:	00078713          	mv	a4,a5
    80002300:	0007b783          	ld	a5,0(a5)
    80002304:	00078463          	beqz	a5,8000230c <_ZN15MemoryAllocator9mem_allocEm+0x17c>
    80002308:	fea7eae3          	bltu	a5,a0,800022fc <_ZN15MemoryAllocator9mem_allocEm+0x16c>
                curr->next = currUsed->next;
    8000230c:	00f53023          	sd	a5,0(a0)
                curr->prev = currUsed;
    80002310:	00e53423          	sd	a4,8(a0)
                if(curr->next) curr->next->prev = curr;
    80002314:	00078463          	beqz	a5,8000231c <_ZN15MemoryAllocator9mem_allocEm+0x18c>
    80002318:	00a7b423          	sd	a0,8(a5)
                currUsed->next = curr;
    8000231c:	00a73023          	sd	a0,0(a4)
    80002320:	f11ff06f          	j	80002230 <_ZN15MemoryAllocator9mem_allocEm+0xa0>

0000000080002324 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>:
        tryToJoin(currFree);
    }
    return 0;
}

void MemoryAllocator::tryToJoin(DataBlock *curr) {
    80002324:	ff010113          	addi	sp,sp,-16
    80002328:	00813423          	sd	s0,8(sp)
    8000232c:	01010413          	addi	s0,sp,16
    if(curr->next && (char*)curr + sizeof(DataBlock) + curr->size == (char*)curr->next) {
    80002330:	00053783          	ld	a5,0(a0)
    80002334:	00078a63          	beqz	a5,80002348 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>
    80002338:	01053683          	ld	a3,16(a0)
    8000233c:	01868713          	addi	a4,a3,24
    80002340:	00e50733          	add	a4,a0,a4
    80002344:	00e78863          	beq	a5,a4,80002354 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x30>
        curr->size += curr->next->size + sizeof(DataBlock);
        curr->next = curr->next->next;
        if(curr->next) curr->next->prev = curr;
    }
}
    80002348:	00813403          	ld	s0,8(sp)
    8000234c:	01010113          	addi	sp,sp,16
    80002350:	00008067          	ret
        curr->size += curr->next->size + sizeof(DataBlock);
    80002354:	0107b703          	ld	a4,16(a5)
    80002358:	00e686b3          	add	a3,a3,a4
    8000235c:	01868693          	addi	a3,a3,24
    80002360:	00d53823          	sd	a3,16(a0)
        curr->next = curr->next->next;
    80002364:	0007b783          	ld	a5,0(a5)
    80002368:	00f53023          	sd	a5,0(a0)
        if(curr->next) curr->next->prev = curr;
    8000236c:	fc078ee3          	beqz	a5,80002348 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>
    80002370:	00a7b423          	sd	a0,8(a5)
}
    80002374:	fd5ff06f          	j	80002348 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock+0x24>

0000000080002378 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(used == nullptr) return -1;
    80002378:	00004797          	auipc	a5,0x4
    8000237c:	c987b783          	ld	a5,-872(a5) # 80006010 <_ZN15MemoryAllocator4usedE>
    80002380:	12078863          	beqz	a5,800024b0 <_ZN15MemoryAllocator8mem_freeEPv+0x138>
    80002384:	00050713          	mv	a4,a0
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;
    80002388:	12050863          	beqz	a0,800024b8 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    8000238c:	00004697          	auipc	a3,0x4
    80002390:	bac6b683          	ld	a3,-1108(a3) # 80005f38 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002394:	0006b683          	ld	a3,0(a3)
    80002398:	12d56463          	bltu	a0,a3,800024c0 <_ZN15MemoryAllocator8mem_freeEPv+0x148>
    8000239c:	00004697          	auipc	a3,0x4
    800023a0:	bfc6b683          	ld	a3,-1028(a3) # 80005f98 <_GLOBAL_OFFSET_TABLE_+0x68>
    800023a4:	0006b683          	ld	a3,0(a3)
    800023a8:	12a6e063          	bltu	a3,a0,800024c8 <_ZN15MemoryAllocator8mem_freeEPv+0x150>
    DataBlock* curr = (DataBlock*)((char*)ptr - sizeof(DataBlock));
    800023ac:	fe850513          	addi	a0,a0,-24
    if(curr < used) return -3;
    800023b0:	12f56063          	bltu	a0,a5,800024d0 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    if(used == curr) {
    800023b4:	08a78c63          	beq	a5,a0,8000244c <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
        curr->prev->next = curr->next;
    800023b8:	ff073683          	ld	a3,-16(a4)
    800023bc:	fe873783          	ld	a5,-24(a4)
    800023c0:	00f6b023          	sd	a5,0(a3)
        if(curr->next) curr->next->prev = curr->prev;
    800023c4:	00078663          	beqz	a5,800023d0 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    800023c8:	ff073683          	ld	a3,-16(a4)
    800023cc:	00d7b423          	sd	a3,8(a5)
        curr->next = nullptr;
    800023d0:	fe073423          	sd	zero,-24(a4)
        curr->prev = nullptr;
    800023d4:	fe073823          	sd	zero,-16(a4)
    if (free == nullptr) {
    800023d8:	00004797          	auipc	a5,0x4
    800023dc:	c307b783          	ld	a5,-976(a5) # 80006008 <_ZN15MemoryAllocator4freeE>
    800023e0:	08078663          	beqz	a5,8000246c <_ZN15MemoryAllocator8mem_freeEPv+0xf4>
int MemoryAllocator::mem_free(void* ptr) {
    800023e4:	fe010113          	addi	sp,sp,-32
    800023e8:	00113c23          	sd	ra,24(sp)
    800023ec:	00813823          	sd	s0,16(sp)
    800023f0:	00913423          	sd	s1,8(sp)
    800023f4:	02010413          	addi	s0,sp,32
    else if((char*)curr < (char*)free) {
    800023f8:	08f56663          	bltu	a0,a5,80002484 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        for(currFree = free; currFree->next && (char*)(currFree->next) < (char*) curr; currFree = currFree->next);
    800023fc:	00078493          	mv	s1,a5
    80002400:	0007b783          	ld	a5,0(a5)
    80002404:	00078463          	beqz	a5,8000240c <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002408:	fea7eae3          	bltu	a5,a0,800023fc <_ZN15MemoryAllocator8mem_freeEPv+0x84>
        curr->next = currFree->next;
    8000240c:	fef73423          	sd	a5,-24(a4)
        curr->prev = currFree;
    80002410:	fe973823          	sd	s1,-16(a4)
        if(curr->next) curr->next->prev = curr;
    80002414:	00078463          	beqz	a5,8000241c <_ZN15MemoryAllocator8mem_freeEPv+0xa4>
    80002418:	00a7b423          	sd	a0,8(a5)
        currFree->next = curr;
    8000241c:	00a4b023          	sd	a0,0(s1)
        tryToJoin(curr);
    80002420:	00000097          	auipc	ra,0x0
    80002424:	f04080e7          	jalr	-252(ra) # 80002324 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
        tryToJoin(currFree);
    80002428:	00048513          	mv	a0,s1
    8000242c:	00000097          	auipc	ra,0x0
    80002430:	ef8080e7          	jalr	-264(ra) # 80002324 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
    return 0;
    80002434:	00000513          	li	a0,0
}
    80002438:	01813083          	ld	ra,24(sp)
    8000243c:	01013403          	ld	s0,16(sp)
    80002440:	00813483          	ld	s1,8(sp)
    80002444:	02010113          	addi	sp,sp,32
    80002448:	00008067          	ret
        used = curr->next;
    8000244c:	fe873783          	ld	a5,-24(a4)
    80002450:	00004697          	auipc	a3,0x4
    80002454:	bcf6b023          	sd	a5,-1088(a3) # 80006010 <_ZN15MemoryAllocator4usedE>
        if(used) used->prev = nullptr;
    80002458:	00078463          	beqz	a5,80002460 <_ZN15MemoryAllocator8mem_freeEPv+0xe8>
    8000245c:	0007b423          	sd	zero,8(a5)
        curr->next = nullptr;
    80002460:	fe073423          	sd	zero,-24(a4)
        curr->prev = nullptr;
    80002464:	fe073823          	sd	zero,-16(a4)
    80002468:	f71ff06f          	j	800023d8 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
        free = curr;
    8000246c:	00004797          	auipc	a5,0x4
    80002470:	b8a7be23          	sd	a0,-1124(a5) # 80006008 <_ZN15MemoryAllocator4freeE>
        curr->next = nullptr;
    80002474:	fe073423          	sd	zero,-24(a4)
        curr->prev = nullptr;
    80002478:	fe073823          	sd	zero,-16(a4)
    return 0;
    8000247c:	00000513          	li	a0,0
    80002480:	00008067          	ret
        free->prev = curr;
    80002484:	00a7b423          	sd	a0,8(a5)
        curr->prev = nullptr;
    80002488:	fe073823          	sd	zero,-16(a4)
        curr->next = free;
    8000248c:	00004797          	auipc	a5,0x4
    80002490:	b7c78793          	addi	a5,a5,-1156 # 80006008 <_ZN15MemoryAllocator4freeE>
    80002494:	0007b683          	ld	a3,0(a5)
    80002498:	fed73423          	sd	a3,-24(a4)
        free = curr;
    8000249c:	00a7b023          	sd	a0,0(a5)
        tryToJoin(free);
    800024a0:	00000097          	auipc	ra,0x0
    800024a4:	e84080e7          	jalr	-380(ra) # 80002324 <_ZN15MemoryAllocator9tryToJoinEP9DataBlock>
    return 0;
    800024a8:	00000513          	li	a0,0
    800024ac:	f8dff06f          	j	80002438 <_ZN15MemoryAllocator8mem_freeEPv+0xc0>
    if(used == nullptr) return -1;
    800024b0:	fff00513          	li	a0,-1
    800024b4:	00008067          	ret
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;
    800024b8:	ffe00513          	li	a0,-2
    800024bc:	00008067          	ret
    800024c0:	ffe00513          	li	a0,-2
    800024c4:	00008067          	ret
    800024c8:	ffe00513          	li	a0,-2
    800024cc:	00008067          	ret
    if(curr < used) return -3;
    800024d0:	ffd00513          	li	a0,-3
}
    800024d4:	00008067          	ret

00000000800024d8 <_Znwm>:

//****************************MY MEMORY********************************


void *operator new(size_t n)
{
    800024d8:	ff010113          	addi	sp,sp,-16
    800024dc:	00113423          	sd	ra,8(sp)
    800024e0:	00813023          	sd	s0,0(sp)
    800024e4:	01010413          	addi	s0,sp,16
    MemoryAllocator::newCalled++;
    800024e8:	00004717          	auipc	a4,0x4
    800024ec:	a9873703          	ld	a4,-1384(a4) # 80005f80 <_GLOBAL_OFFSET_TABLE_+0x50>
    800024f0:	00072783          	lw	a5,0(a4)
    800024f4:	0017879b          	addiw	a5,a5,1
    800024f8:	00f72023          	sw	a5,0(a4)
    return MemoryAllocator::mem_alloc(n);
    800024fc:	00000097          	auipc	ra,0x0
    80002500:	c94080e7          	jalr	-876(ra) # 80002190 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002504:	00813083          	ld	ra,8(sp)
    80002508:	00013403          	ld	s0,0(sp)
    8000250c:	01010113          	addi	sp,sp,16
    80002510:	00008067          	ret

0000000080002514 <_Znam>:

void *operator new[](size_t n)
{
    80002514:	ff010113          	addi	sp,sp,-16
    80002518:	00113423          	sd	ra,8(sp)
    8000251c:	00813023          	sd	s0,0(sp)
    80002520:	01010413          	addi	s0,sp,16
    MemoryAllocator::newArrayCalled++;
    80002524:	00004717          	auipc	a4,0x4
    80002528:	a4c73703          	ld	a4,-1460(a4) # 80005f70 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000252c:	00072783          	lw	a5,0(a4)
    80002530:	0017879b          	addiw	a5,a5,1
    80002534:	00f72023          	sw	a5,0(a4)
    return MemoryAllocator::mem_alloc(n);
    80002538:	00000097          	auipc	ra,0x0
    8000253c:	c58080e7          	jalr	-936(ra) # 80002190 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002540:	00813083          	ld	ra,8(sp)
    80002544:	00013403          	ld	s0,0(sp)
    80002548:	01010113          	addi	sp,sp,16
    8000254c:	00008067          	ret

0000000080002550 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00113423          	sd	ra,8(sp)
    80002558:	00813023          	sd	s0,0(sp)
    8000255c:	01010413          	addi	s0,sp,16
    MemoryAllocator::deleteCalled++;
    80002560:	00004717          	auipc	a4,0x4
    80002564:	9f873703          	ld	a4,-1544(a4) # 80005f58 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002568:	00072783          	lw	a5,0(a4)
    8000256c:	0017879b          	addiw	a5,a5,1
    80002570:	00f72023          	sw	a5,0(a4)
    MemoryAllocator::mem_free(p);
    80002574:	00000097          	auipc	ra,0x0
    80002578:	e04080e7          	jalr	-508(ra) # 80002378 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000257c:	00813083          	ld	ra,8(sp)
    80002580:	00013403          	ld	s0,0(sp)
    80002584:	01010113          	addi	sp,sp,16
    80002588:	00008067          	ret

000000008000258c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    8000258c:	ff010113          	addi	sp,sp,-16
    80002590:	00113423          	sd	ra,8(sp)
    80002594:	00813023          	sd	s0,0(sp)
    80002598:	01010413          	addi	s0,sp,16
    MemoryAllocator::deleteArrayCalled++;
    8000259c:	00004717          	auipc	a4,0x4
    800025a0:	9c473703          	ld	a4,-1596(a4) # 80005f60 <_GLOBAL_OFFSET_TABLE_+0x30>
    800025a4:	00072783          	lw	a5,0(a4)
    800025a8:	0017879b          	addiw	a5,a5,1
    800025ac:	00f72023          	sw	a5,0(a4)
    MemoryAllocator::mem_free(p);
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	dc8080e7          	jalr	-568(ra) # 80002378 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800025b8:	00813083          	ld	ra,8(sp)
    800025bc:	00013403          	ld	s0,0(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <_ZN6Thread3runEv>:

Thread::Thread() {
    //todo
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
    800025f0:	00004797          	auipc	a5,0x4
    800025f4:	90878793          	addi	a5,a5,-1784 # 80005ef8 <_ZTV9Semaphore+0x10>
    800025f8:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    800025fc:	00853503          	ld	a0,8(a0)
    80002600:	fffff097          	auipc	ra,0xfffff
    80002604:	f6c080e7          	jalr	-148(ra) # 8000156c <_Z9sem_closeP11MySemaphore>
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
    80002640:	f14080e7          	jalr	-236(ra) # 80002550 <_ZdlPv>
    80002644:	01813083          	ld	ra,24(sp)
    80002648:	01013403          	ld	s0,16(sp)
    8000264c:	00813483          	ld	s1,8(sp)
    80002650:	02010113          	addi	sp,sp,32
    80002654:	00008067          	ret

0000000080002658 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80002658:	ff010113          	addi	sp,sp,-16
    8000265c:	00113423          	sd	ra,8(sp)
    80002660:	00813023          	sd	s0,0(sp)
    80002664:	01010413          	addi	s0,sp,16
    80002668:	00004797          	auipc	a5,0x4
    8000266c:	8b078793          	addi	a5,a5,-1872 # 80005f18 <_ZTV6Thread+0x10>
    80002670:	00f53023          	sd	a5,0(a0)
    thread_exit(); //Da li ovo tako treba? Msm da ne
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	e58080e7          	jalr	-424(ra) # 800014cc <_Z11thread_exitv>
}
    8000267c:	00813083          	ld	ra,8(sp)
    80002680:	00013403          	ld	s0,0(sp)
    80002684:	01010113          	addi	sp,sp,16
    80002688:	00008067          	ret

000000008000268c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000268c:	fe010113          	addi	sp,sp,-32
    80002690:	00113c23          	sd	ra,24(sp)
    80002694:	00813823          	sd	s0,16(sp)
    80002698:	00913423          	sd	s1,8(sp)
    8000269c:	02010413          	addi	s0,sp,32
    800026a0:	00050493          	mv	s1,a0
}
    800026a4:	00000097          	auipc	ra,0x0
    800026a8:	fb4080e7          	jalr	-76(ra) # 80002658 <_ZN6ThreadD1Ev>
    800026ac:	00048513          	mv	a0,s1
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	ea0080e7          	jalr	-352(ra) # 80002550 <_ZdlPv>
    800026b8:	01813083          	ld	ra,24(sp)
    800026bc:	01013403          	ld	s0,16(sp)
    800026c0:	00813483          	ld	s1,8(sp)
    800026c4:	02010113          	addi	sp,sp,32
    800026c8:	00008067          	ret

00000000800026cc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800026cc:	ff010113          	addi	sp,sp,-16
    800026d0:	00113423          	sd	ra,8(sp)
    800026d4:	00813023          	sd	s0,0(sp)
    800026d8:	01010413          	addi	s0,sp,16
    800026dc:	00004797          	auipc	a5,0x4
    800026e0:	81c78793          	addi	a5,a5,-2020 # 80005ef8 <_ZTV9Semaphore+0x10>
    800026e4:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    800026e8:	00850513          	addi	a0,a0,8
    800026ec:	fffff097          	auipc	ra,0xfffff
    800026f0:	e50080e7          	jalr	-432(ra) # 8000153c <_Z8sem_openPP11MySemaphorej>
}
    800026f4:	00813083          	ld	ra,8(sp)
    800026f8:	00013403          	ld	s0,0(sp)
    800026fc:	01010113          	addi	sp,sp,16
    80002700:	00008067          	ret

0000000080002704 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00113423          	sd	ra,8(sp)
    8000270c:	00813023          	sd	s0,0(sp)
    80002710:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    80002714:	00853503          	ld	a0,8(a0)
    80002718:	fffff097          	auipc	ra,0xfffff
    8000271c:	e80080e7          	jalr	-384(ra) # 80001598 <_Z8sem_waitP11MySemaphore>
}
    80002720:	00813083          	ld	ra,8(sp)
    80002724:	00013403          	ld	s0,0(sp)
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret

0000000080002730 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00113423          	sd	ra,8(sp)
    80002738:	00813023          	sd	s0,0(sp)
    8000273c:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    80002740:	00853503          	ld	a0,8(a0)
    80002744:	fffff097          	auipc	ra,0xfffff
    80002748:	e80080e7          	jalr	-384(ra) # 800015c4 <_Z10sem_signalP11MySemaphore>
}
    8000274c:	00813083          	ld	ra,8(sp)
    80002750:	00013403          	ld	s0,0(sp)
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00008067          	ret

000000008000275c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00113423          	sd	ra,8(sp)
    80002764:	00813023          	sd	s0,0(sp)
    80002768:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000276c:	fffff097          	auipc	ra,0xfffff
    80002770:	d8c080e7          	jalr	-628(ra) # 800014f8 <_Z15thread_dispatchv>
}
    80002774:	00813083          	ld	ra,8(sp)
    80002778:	00013403          	ld	s0,0(sp)
    8000277c:	01010113          	addi	sp,sp,16
    80002780:	00008067          	ret

0000000080002784 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00113423          	sd	ra,8(sp)
    8000278c:	00813023          	sd	s0,0(sp)
    80002790:	01010413          	addi	s0,sp,16
    80002794:	00003797          	auipc	a5,0x3
    80002798:	78478793          	addi	a5,a5,1924 # 80005f18 <_ZTV6Thread+0x10>
    8000279c:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    800027a0:	00850513          	addi	a0,a0,8
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	cf4080e7          	jalr	-780(ra) # 80001498 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800027ac:	00813083          	ld	ra,8(sp)
    800027b0:	00013403          	ld	s0,0(sp)
    800027b4:	01010113          	addi	sp,sp,16
    800027b8:	00008067          	ret

00000000800027bc <_ZN6Thread4joinEv>:
void Thread::join() {
    800027bc:	ff010113          	addi	sp,sp,-16
    800027c0:	00113423          	sd	ra,8(sp)
    800027c4:	00813023          	sd	s0,0(sp)
    800027c8:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    800027cc:	00853503          	ld	a0,8(a0)
    800027d0:	fffff097          	auipc	ra,0xfffff
    800027d4:	d48080e7          	jalr	-696(ra) # 80001518 <_Z11thread_joinP3TCB>
}
    800027d8:	00813083          	ld	ra,8(sp)
    800027dc:	00013403          	ld	s0,0(sp)
    800027e0:	01010113          	addi	sp,sp,16
    800027e4:	00008067          	ret

00000000800027e8 <_ZN6Thread5startEv>:
int Thread::start() {
    800027e8:	ff010113          	addi	sp,sp,-16
    800027ec:	00813423          	sd	s0,8(sp)
    800027f0:	01010413          	addi	s0,sp,16
}
    800027f4:	00000513          	li	a0,0
    800027f8:	00813403          	ld	s0,8(sp)
    800027fc:	01010113          	addi	sp,sp,16
    80002800:	00008067          	ret

0000000080002804 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002804:	ff010113          	addi	sp,sp,-16
    80002808:	00813423          	sd	s0,8(sp)
    8000280c:	01010413          	addi	s0,sp,16
    80002810:	00003797          	auipc	a5,0x3
    80002814:	70878793          	addi	a5,a5,1800 # 80005f18 <_ZTV6Thread+0x10>
    80002818:	00f53023          	sd	a5,0(a0)
}
    8000281c:	00813403          	ld	s0,8(sp)
    80002820:	01010113          	addi	sp,sp,16
    80002824:	00008067          	ret

0000000080002828 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    80002828:	ff010113          	addi	sp,sp,-16
    8000282c:	00813423          	sd	s0,8(sp)
    80002830:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002834:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002838:	10200073          	sret
}
    8000283c:	00813403          	ld	s0,8(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <_ZN5Riscv20handleSupervisorTrapEv>:

using Body = void (*)(void*);

void Riscv::handleSupervisorTrap()
{
    80002848:	fb010113          	addi	sp,sp,-80
    8000284c:	04113423          	sd	ra,72(sp)
    80002850:	04813023          	sd	s0,64(sp)
    80002854:	02913c23          	sd	s1,56(sp)
    80002858:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000285c:	142027f3          	csrr	a5,scause
    80002860:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80002864:	fc043783          	ld	a5,-64(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002868:	ff878793          	addi	a5,a5,-8
    8000286c:	00100713          	li	a4,1
    80002870:	00f77c63          	bgeu	a4,a5,80002888 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
    else
    {
        // unexpected trap cause
        // Ovde se ulazi ako se desi neki interrupt tabele
    }
}
    80002874:	04813083          	ld	ra,72(sp)
    80002878:	04013403          	ld	s0,64(sp)
    8000287c:	03813483          	ld	s1,56(sp)
    80002880:	05010113          	addi	sp,sp,80
    80002884:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002888:	141027f3          	csrr	a5,sepc
    8000288c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002890:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002894:	00478793          	addi	a5,a5,4
    80002898:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000289c:	100027f3          	csrr	a5,sstatus
    800028a0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800028a4:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    800028a8:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800028ac:	00050793          	mv	a5,a0
    800028b0:	fcf43423          	sd	a5,-56(s0)
    return a0;
    800028b4:	fc843783          	ld	a5,-56(s0)
        switch (codeOperation) {
    800028b8:	fef78793          	addi	a5,a5,-17
    800028bc:	03200713          	li	a4,50
    800028c0:	06f76c63          	bltu	a4,a5,80002938 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    800028c4:	00279793          	slli	a5,a5,0x2
    800028c8:	00003717          	auipc	a4,0x3
    800028cc:	9a470713          	addi	a4,a4,-1628 # 8000526c <CONSOLE_STATUS+0x25c>
    800028d0:	00e787b3          	add	a5,a5,a4
    800028d4:	0007a783          	lw	a5,0(a5)
    800028d8:	00e787b3          	add	a5,a5,a4
    800028dc:	00078067          	jr	a5
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    800028e0:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    800028e4:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
    800028e8:	00068593          	mv	a1,a3
                *tcb = TCB::createThread(body, arg);
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	6fc080e7          	jalr	1788(ra) # 80001fe8 <_ZN3TCB12createThreadEPFvPvES0_>
    800028f4:	00a4b023          	sd	a0,0(s1)
                if(*tcb != nullptr) {
    800028f8:	00050863          	beqz	a0,80002908 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                    __asm__ volatile ("li t0, 0");
    800028fc:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002900:	04542823          	sw	t0,80(s0)
    80002904:	0340006f          	j	80002938 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    __asm__ volatile ("li t0, -1");
    80002908:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    8000290c:	04542823          	sw	t0,80(s0)
    80002910:	0280006f          	j	80002938 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                TCB::running->setFinished(true);
    80002914:	00003797          	auipc	a5,0x3
    80002918:	67c7b783          	ld	a5,1660(a5) # 80005f90 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000291c:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002920:	00100713          	li	a4,1
    80002924:	02e78023          	sb	a4,32(a5)
                TCB::dispatch();
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	7b8080e7          	jalr	1976(ra) # 800020e0 <_ZN3TCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    80002930:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    80002934:	04542823          	sw	t0,80(s0)
        w_sstatus(sstatus);
    80002938:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000293c:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002940:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002944:	14179073          	csrw	sepc,a5
}
    80002948:	f2dff06f          	j	80002874 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                TCB::dispatch();
    8000294c:	fffff097          	auipc	ra,0xfffff
    80002950:	794080e7          	jalr	1940(ra) # 800020e0 <_ZN3TCB8dispatchEv>
                break;
    80002954:	fe5ff06f          	j	80002938 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80002958:	00058513          	mv	a0,a1
                TCB::join(handle);
    8000295c:	fffff097          	auipc	ra,0xfffff
    80002960:	7f4080e7          	jalr	2036(ra) # 80002150 <_ZN3TCB4joinEPS_>
                break;
    80002964:	fd5ff06f          	j	80002938 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a2" : "=r" (init));
    80002968:	00060513          	mv	a0,a2
    8000296c:	0005051b          	sext.w	a0,a0
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80002970:	00058493          	mv	s1,a1
                *semHandle = MySemaphore::createSemaphore(init);
    80002974:	fffff097          	auipc	ra,0xfffff
    80002978:	de4080e7          	jalr	-540(ra) # 80001758 <_ZN11MySemaphore15createSemaphoreEj>
    8000297c:	00a4b023          	sd	a0,0(s1)
                if(*semHandle != nullptr) {
    80002980:	00050863          	beqz	a0,80002990 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    __asm__ volatile ("li t0, 0");
    80002984:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)");
    80002988:	04542823          	sw	t0,80(s0)
    8000298c:	fadff06f          	j	80002938 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    __asm__ volatile ("li t0, -1");
    80002990:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80002994:	04542823          	sw	t0,80(s0)
    80002998:	fa1ff06f          	j	80002938 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    8000299c:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    800029a0:	00050c63          	beqz	a0,800029b8 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
                    returnValue = semHandlePtr->close();
    800029a4:	fffff097          	auipc	ra,0xfffff
    800029a8:	dfc080e7          	jalr	-516(ra) # 800017a0 <_ZN11MySemaphore5closeEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800029ac:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800029b0:	04542823          	sw	t0,80(s0)
                break;
    800029b4:	f85ff06f          	j	80002938 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                else returnValue = -2;
    800029b8:	ffe00513          	li	a0,-2
    800029bc:	ff1ff06f          	j	800029ac <_ZN5Riscv20handleSupervisorTrapEv+0x164>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800029c0:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    800029c4:	00050c63          	beqz	a0,800029dc <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                    returnValue = semHandlePtr->wait();
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	c28080e7          	jalr	-984(ra) # 800015f0 <_ZN11MySemaphore4waitEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800029d0:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800029d4:	04542823          	sw	t0,80(s0)
                break;
    800029d8:	f61ff06f          	j	80002938 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                else returnValue = -2;
    800029dc:	ffe00513          	li	a0,-2
    800029e0:	ff1ff06f          	j	800029d0 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800029e4:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr)
    800029e8:	00050c63          	beqz	a0,80002a00 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    returnValue = semHandlePtr->signal();
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	cd0080e7          	jalr	-816(ra) # 800016bc <_ZN11MySemaphore6signalEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800029f4:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800029f8:	04542823          	sw	t0,80(s0)
                break;
    800029fc:	f3dff06f          	j	80002938 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
                    returnValue = -2;
    80002a00:	ffe00513          	li	a0,-2
    80002a04:	ff1ff06f          	j	800029f4 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
                TCB::dispatch();
    80002a08:	fffff097          	auipc	ra,0xfffff
    80002a0c:	6d8080e7          	jalr	1752(ra) # 800020e0 <_ZN3TCB8dispatchEv>
                break;
    80002a10:	f29ff06f          	j	80002938 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>

0000000080002a14 <_ZN5Riscv22handleConsoleInterruptEv>:

void Riscv::handleConsoleInterrupt() {
    80002a14:	ff010113          	addi	sp,sp,-16
    80002a18:	00113423          	sd	ra,8(sp)
    80002a1c:	00813023          	sd	s0,0(sp)
    80002a20:	01010413          	addi	s0,sp,16
    console_handler();
    80002a24:	00002097          	auipc	ra,0x2
    80002a28:	3dc080e7          	jalr	988(ra) # 80004e00 <console_handler>
}
    80002a2c:	00813083          	ld	ra,8(sp)
    80002a30:	00013403          	ld	s0,0(sp)
    80002a34:	01010113          	addi	sp,sp,16
    80002a38:	00008067          	ret

0000000080002a3c <_ZN5Riscv20handleTimerInterruptEv>:

void Riscv::handleTimerInterrupt() {
    80002a3c:	ff010113          	addi	sp,sp,-16
    80002a40:	00813423          	sd	s0,8(sp)
    80002a44:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002a48:	00200793          	li	a5,2
    80002a4c:	1447b073          	csrc	sip,a5
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
    80002a50:	00813403          	ld	s0,8(sp)
    80002a54:	01010113          	addi	sp,sp,16
    80002a58:	00008067          	ret

0000000080002a5c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002a5c:	ff010113          	addi	sp,sp,-16
    80002a60:	00813423          	sd	s0,8(sp)
    80002a64:	01010413          	addi	s0,sp,16
    80002a68:	00100793          	li	a5,1
    80002a6c:	00f50863          	beq	a0,a5,80002a7c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002a70:	00813403          	ld	s0,8(sp)
    80002a74:	01010113          	addi	sp,sp,16
    80002a78:	00008067          	ret
    80002a7c:	000107b7          	lui	a5,0x10
    80002a80:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a84:	fef596e3          	bne	a1,a5,80002a70 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002a88:	00003797          	auipc	a5,0x3
    80002a8c:	5a078793          	addi	a5,a5,1440 # 80006028 <_ZN9Scheduler16readyThreadQueueE>
    80002a90:	0007b023          	sd	zero,0(a5)
    80002a94:	0007b423          	sd	zero,8(a5)
    80002a98:	fd9ff06f          	j	80002a70 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002a9c <_ZN9Scheduler3getEv>:
{
    80002a9c:	fe010113          	addi	sp,sp,-32
    80002aa0:	00113c23          	sd	ra,24(sp)
    80002aa4:	00813823          	sd	s0,16(sp)
    80002aa8:	00913423          	sd	s1,8(sp)
    80002aac:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002ab0:	00003517          	auipc	a0,0x3
    80002ab4:	57853503          	ld	a0,1400(a0) # 80006028 <_ZN9Scheduler16readyThreadQueueE>
    80002ab8:	04050263          	beqz	a0,80002afc <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002abc:	00853783          	ld	a5,8(a0)
    80002ac0:	00003717          	auipc	a4,0x3
    80002ac4:	56f73423          	sd	a5,1384(a4) # 80006028 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002ac8:	02078463          	beqz	a5,80002af0 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002acc:	00053483          	ld	s1,0(a0)
        delete elem;
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	a80080e7          	jalr	-1408(ra) # 80002550 <_ZdlPv>
}
    80002ad8:	00048513          	mv	a0,s1
    80002adc:	01813083          	ld	ra,24(sp)
    80002ae0:	01013403          	ld	s0,16(sp)
    80002ae4:	00813483          	ld	s1,8(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret
        if (!head) { tail = 0; }
    80002af0:	00003797          	auipc	a5,0x3
    80002af4:	5407b023          	sd	zero,1344(a5) # 80006030 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002af8:	fd5ff06f          	j	80002acc <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002afc:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002b00:	fd9ff06f          	j	80002ad8 <_ZN9Scheduler3getEv+0x3c>

0000000080002b04 <_ZN9Scheduler3putEP3TCB>:
{
    80002b04:	fe010113          	addi	sp,sp,-32
    80002b08:	00113c23          	sd	ra,24(sp)
    80002b0c:	00813823          	sd	s0,16(sp)
    80002b10:	00913423          	sd	s1,8(sp)
    80002b14:	02010413          	addi	s0,sp,32
    80002b18:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002b1c:	01000513          	li	a0,16
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	9b8080e7          	jalr	-1608(ra) # 800024d8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002b28:	00953023          	sd	s1,0(a0)
    80002b2c:	00053423          	sd	zero,8(a0)
        if (tail)
    80002b30:	00003797          	auipc	a5,0x3
    80002b34:	5007b783          	ld	a5,1280(a5) # 80006030 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002b38:	02078263          	beqz	a5,80002b5c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002b3c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002b40:	00003797          	auipc	a5,0x3
    80002b44:	4ea7b823          	sd	a0,1264(a5) # 80006030 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002b48:	01813083          	ld	ra,24(sp)
    80002b4c:	01013403          	ld	s0,16(sp)
    80002b50:	00813483          	ld	s1,8(sp)
    80002b54:	02010113          	addi	sp,sp,32
    80002b58:	00008067          	ret
            head = tail = elem;
    80002b5c:	00003797          	auipc	a5,0x3
    80002b60:	4cc78793          	addi	a5,a5,1228 # 80006028 <_ZN9Scheduler16readyThreadQueueE>
    80002b64:	00a7b423          	sd	a0,8(a5)
    80002b68:	00a7b023          	sd	a0,0(a5)
    80002b6c:	fddff06f          	j	80002b48 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002b70 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00113423          	sd	ra,8(sp)
    80002b78:	00813023          	sd	s0,0(sp)
    80002b7c:	01010413          	addi	s0,sp,16
    80002b80:	000105b7          	lui	a1,0x10
    80002b84:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002b88:	00100513          	li	a0,1
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	ed0080e7          	jalr	-304(ra) # 80002a5c <_Z41__static_initialization_and_destruction_0ii>
    80002b94:	00813083          	ld	ra,8(sp)
    80002b98:	00013403          	ld	s0,0(sp)
    80002b9c:	01010113          	addi	sp,sp,16
    80002ba0:	00008067          	ret

0000000080002ba4 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80002ba4:	fd010113          	addi	sp,sp,-48
    80002ba8:	02113423          	sd	ra,40(sp)
    80002bac:	02813023          	sd	s0,32(sp)
    80002bb0:	00913c23          	sd	s1,24(sp)
    80002bb4:	01213823          	sd	s2,16(sp)
    80002bb8:	03010413          	addi	s0,sp,48
    80002bbc:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002bc0:	100027f3          	csrr	a5,sstatus
    80002bc4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002bc8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002bcc:	00200793          	li	a5,2
    80002bd0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002bd4:	0004c503          	lbu	a0,0(s1)
    80002bd8:	00050a63          	beqz	a0,80002bec <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80002bdc:	00002097          	auipc	ra,0x2
    80002be0:	1b0080e7          	jalr	432(ra) # 80004d8c <__putc>
        string++;
    80002be4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002be8:	fedff06f          	j	80002bd4 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002bec:	0009091b          	sext.w	s2,s2
    80002bf0:	00297913          	andi	s2,s2,2
    80002bf4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002bf8:	10092073          	csrs	sstatus,s2
}
    80002bfc:	02813083          	ld	ra,40(sp)
    80002c00:	02013403          	ld	s0,32(sp)
    80002c04:	01813483          	ld	s1,24(sp)
    80002c08:	01013903          	ld	s2,16(sp)
    80002c0c:	03010113          	addi	sp,sp,48
    80002c10:	00008067          	ret

0000000080002c14 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002c14:	fc010113          	addi	sp,sp,-64
    80002c18:	02113c23          	sd	ra,56(sp)
    80002c1c:	02813823          	sd	s0,48(sp)
    80002c20:	02913423          	sd	s1,40(sp)
    80002c24:	03213023          	sd	s2,32(sp)
    80002c28:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002c2c:	100027f3          	csrr	a5,sstatus
    80002c30:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002c34:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002c38:	00200793          	li	a5,2
    80002c3c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002c40:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002c44:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002c48:	00a00613          	li	a2,10
    80002c4c:	02c5773b          	remuw	a4,a0,a2
    80002c50:	02071693          	slli	a3,a4,0x20
    80002c54:	0206d693          	srli	a3,a3,0x20
    80002c58:	00002717          	auipc	a4,0x2
    80002c5c:	6e070713          	addi	a4,a4,1760 # 80005338 <_ZZ12printIntegermE6digits>
    80002c60:	00d70733          	add	a4,a4,a3
    80002c64:	00074703          	lbu	a4,0(a4)
    80002c68:	fe040693          	addi	a3,s0,-32
    80002c6c:	009687b3          	add	a5,a3,s1
    80002c70:	0014849b          	addiw	s1,s1,1
    80002c74:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002c78:	0005071b          	sext.w	a4,a0
    80002c7c:	02c5553b          	divuw	a0,a0,a2
    80002c80:	00900793          	li	a5,9
    80002c84:	fce7e2e3          	bltu	a5,a4,80002c48 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002c88:	fff4849b          	addiw	s1,s1,-1
    80002c8c:	0004ce63          	bltz	s1,80002ca8 <_Z12printIntegerm+0x94>
    80002c90:	fe040793          	addi	a5,s0,-32
    80002c94:	009787b3          	add	a5,a5,s1
    80002c98:	ff07c503          	lbu	a0,-16(a5)
    80002c9c:	00002097          	auipc	ra,0x2
    80002ca0:	0f0080e7          	jalr	240(ra) # 80004d8c <__putc>
    80002ca4:	fe5ff06f          	j	80002c88 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002ca8:	0009091b          	sext.w	s2,s2
    80002cac:	00297913          	andi	s2,s2,2
    80002cb0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002cb4:	10092073          	csrs	sstatus,s2
    80002cb8:	03813083          	ld	ra,56(sp)
    80002cbc:	03013403          	ld	s0,48(sp)
    80002cc0:	02813483          	ld	s1,40(sp)
    80002cc4:	02013903          	ld	s2,32(sp)
    80002cc8:	04010113          	addi	sp,sp,64
    80002ccc:	00008067          	ret

0000000080002cd0 <start>:
    80002cd0:	ff010113          	addi	sp,sp,-16
    80002cd4:	00813423          	sd	s0,8(sp)
    80002cd8:	01010413          	addi	s0,sp,16
    80002cdc:	300027f3          	csrr	a5,mstatus
    80002ce0:	ffffe737          	lui	a4,0xffffe
    80002ce4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff755f>
    80002ce8:	00e7f7b3          	and	a5,a5,a4
    80002cec:	00001737          	lui	a4,0x1
    80002cf0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002cf4:	00e7e7b3          	or	a5,a5,a4
    80002cf8:	30079073          	csrw	mstatus,a5
    80002cfc:	00000797          	auipc	a5,0x0
    80002d00:	16078793          	addi	a5,a5,352 # 80002e5c <system_main>
    80002d04:	34179073          	csrw	mepc,a5
    80002d08:	00000793          	li	a5,0
    80002d0c:	18079073          	csrw	satp,a5
    80002d10:	000107b7          	lui	a5,0x10
    80002d14:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002d18:	30279073          	csrw	medeleg,a5
    80002d1c:	30379073          	csrw	mideleg,a5
    80002d20:	104027f3          	csrr	a5,sie
    80002d24:	2227e793          	ori	a5,a5,546
    80002d28:	10479073          	csrw	sie,a5
    80002d2c:	fff00793          	li	a5,-1
    80002d30:	00a7d793          	srli	a5,a5,0xa
    80002d34:	3b079073          	csrw	pmpaddr0,a5
    80002d38:	00f00793          	li	a5,15
    80002d3c:	3a079073          	csrw	pmpcfg0,a5
    80002d40:	f14027f3          	csrr	a5,mhartid
    80002d44:	0200c737          	lui	a4,0x200c
    80002d48:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002d4c:	0007869b          	sext.w	a3,a5
    80002d50:	00269713          	slli	a4,a3,0x2
    80002d54:	000f4637          	lui	a2,0xf4
    80002d58:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002d5c:	00d70733          	add	a4,a4,a3
    80002d60:	0037979b          	slliw	a5,a5,0x3
    80002d64:	020046b7          	lui	a3,0x2004
    80002d68:	00d787b3          	add	a5,a5,a3
    80002d6c:	00c585b3          	add	a1,a1,a2
    80002d70:	00371693          	slli	a3,a4,0x3
    80002d74:	00003717          	auipc	a4,0x3
    80002d78:	2cc70713          	addi	a4,a4,716 # 80006040 <timer_scratch>
    80002d7c:	00b7b023          	sd	a1,0(a5)
    80002d80:	00d70733          	add	a4,a4,a3
    80002d84:	00f73c23          	sd	a5,24(a4)
    80002d88:	02c73023          	sd	a2,32(a4)
    80002d8c:	34071073          	csrw	mscratch,a4
    80002d90:	00000797          	auipc	a5,0x0
    80002d94:	6e078793          	addi	a5,a5,1760 # 80003470 <timervec>
    80002d98:	30579073          	csrw	mtvec,a5
    80002d9c:	300027f3          	csrr	a5,mstatus
    80002da0:	0087e793          	ori	a5,a5,8
    80002da4:	30079073          	csrw	mstatus,a5
    80002da8:	304027f3          	csrr	a5,mie
    80002dac:	0807e793          	ori	a5,a5,128
    80002db0:	30479073          	csrw	mie,a5
    80002db4:	f14027f3          	csrr	a5,mhartid
    80002db8:	0007879b          	sext.w	a5,a5
    80002dbc:	00078213          	mv	tp,a5
    80002dc0:	30200073          	mret
    80002dc4:	00813403          	ld	s0,8(sp)
    80002dc8:	01010113          	addi	sp,sp,16
    80002dcc:	00008067          	ret

0000000080002dd0 <timerinit>:
    80002dd0:	ff010113          	addi	sp,sp,-16
    80002dd4:	00813423          	sd	s0,8(sp)
    80002dd8:	01010413          	addi	s0,sp,16
    80002ddc:	f14027f3          	csrr	a5,mhartid
    80002de0:	0200c737          	lui	a4,0x200c
    80002de4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002de8:	0007869b          	sext.w	a3,a5
    80002dec:	00269713          	slli	a4,a3,0x2
    80002df0:	000f4637          	lui	a2,0xf4
    80002df4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002df8:	00d70733          	add	a4,a4,a3
    80002dfc:	0037979b          	slliw	a5,a5,0x3
    80002e00:	020046b7          	lui	a3,0x2004
    80002e04:	00d787b3          	add	a5,a5,a3
    80002e08:	00c585b3          	add	a1,a1,a2
    80002e0c:	00371693          	slli	a3,a4,0x3
    80002e10:	00003717          	auipc	a4,0x3
    80002e14:	23070713          	addi	a4,a4,560 # 80006040 <timer_scratch>
    80002e18:	00b7b023          	sd	a1,0(a5)
    80002e1c:	00d70733          	add	a4,a4,a3
    80002e20:	00f73c23          	sd	a5,24(a4)
    80002e24:	02c73023          	sd	a2,32(a4)
    80002e28:	34071073          	csrw	mscratch,a4
    80002e2c:	00000797          	auipc	a5,0x0
    80002e30:	64478793          	addi	a5,a5,1604 # 80003470 <timervec>
    80002e34:	30579073          	csrw	mtvec,a5
    80002e38:	300027f3          	csrr	a5,mstatus
    80002e3c:	0087e793          	ori	a5,a5,8
    80002e40:	30079073          	csrw	mstatus,a5
    80002e44:	304027f3          	csrr	a5,mie
    80002e48:	0807e793          	ori	a5,a5,128
    80002e4c:	30479073          	csrw	mie,a5
    80002e50:	00813403          	ld	s0,8(sp)
    80002e54:	01010113          	addi	sp,sp,16
    80002e58:	00008067          	ret

0000000080002e5c <system_main>:
    80002e5c:	fe010113          	addi	sp,sp,-32
    80002e60:	00813823          	sd	s0,16(sp)
    80002e64:	00913423          	sd	s1,8(sp)
    80002e68:	00113c23          	sd	ra,24(sp)
    80002e6c:	02010413          	addi	s0,sp,32
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	0c4080e7          	jalr	196(ra) # 80002f34 <cpuid>
    80002e78:	00003497          	auipc	s1,0x3
    80002e7c:	15848493          	addi	s1,s1,344 # 80005fd0 <started>
    80002e80:	02050263          	beqz	a0,80002ea4 <system_main+0x48>
    80002e84:	0004a783          	lw	a5,0(s1)
    80002e88:	0007879b          	sext.w	a5,a5
    80002e8c:	fe078ce3          	beqz	a5,80002e84 <system_main+0x28>
    80002e90:	0ff0000f          	fence
    80002e94:	00002517          	auipc	a0,0x2
    80002e98:	4e450513          	addi	a0,a0,1252 # 80005378 <_ZZ12printIntegermE6digits+0x40>
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	a70080e7          	jalr	-1424(ra) # 8000390c <panic>
    80002ea4:	00001097          	auipc	ra,0x1
    80002ea8:	9c4080e7          	jalr	-1596(ra) # 80003868 <consoleinit>
    80002eac:	00001097          	auipc	ra,0x1
    80002eb0:	150080e7          	jalr	336(ra) # 80003ffc <printfinit>
    80002eb4:	00002517          	auipc	a0,0x2
    80002eb8:	2f450513          	addi	a0,a0,756 # 800051a8 <CONSOLE_STATUS+0x198>
    80002ebc:	00001097          	auipc	ra,0x1
    80002ec0:	aac080e7          	jalr	-1364(ra) # 80003968 <__printf>
    80002ec4:	00002517          	auipc	a0,0x2
    80002ec8:	48450513          	addi	a0,a0,1156 # 80005348 <_ZZ12printIntegermE6digits+0x10>
    80002ecc:	00001097          	auipc	ra,0x1
    80002ed0:	a9c080e7          	jalr	-1380(ra) # 80003968 <__printf>
    80002ed4:	00002517          	auipc	a0,0x2
    80002ed8:	2d450513          	addi	a0,a0,724 # 800051a8 <CONSOLE_STATUS+0x198>
    80002edc:	00001097          	auipc	ra,0x1
    80002ee0:	a8c080e7          	jalr	-1396(ra) # 80003968 <__printf>
    80002ee4:	00001097          	auipc	ra,0x1
    80002ee8:	4a4080e7          	jalr	1188(ra) # 80004388 <kinit>
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	148080e7          	jalr	328(ra) # 80003034 <trapinit>
    80002ef4:	00000097          	auipc	ra,0x0
    80002ef8:	16c080e7          	jalr	364(ra) # 80003060 <trapinithart>
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	5b4080e7          	jalr	1460(ra) # 800034b0 <plicinit>
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	5d4080e7          	jalr	1492(ra) # 800034d8 <plicinithart>
    80002f0c:	00000097          	auipc	ra,0x0
    80002f10:	078080e7          	jalr	120(ra) # 80002f84 <userinit>
    80002f14:	0ff0000f          	fence
    80002f18:	00100793          	li	a5,1
    80002f1c:	00002517          	auipc	a0,0x2
    80002f20:	44450513          	addi	a0,a0,1092 # 80005360 <_ZZ12printIntegermE6digits+0x28>
    80002f24:	00f4a023          	sw	a5,0(s1)
    80002f28:	00001097          	auipc	ra,0x1
    80002f2c:	a40080e7          	jalr	-1472(ra) # 80003968 <__printf>
    80002f30:	0000006f          	j	80002f30 <system_main+0xd4>

0000000080002f34 <cpuid>:
    80002f34:	ff010113          	addi	sp,sp,-16
    80002f38:	00813423          	sd	s0,8(sp)
    80002f3c:	01010413          	addi	s0,sp,16
    80002f40:	00020513          	mv	a0,tp
    80002f44:	00813403          	ld	s0,8(sp)
    80002f48:	0005051b          	sext.w	a0,a0
    80002f4c:	01010113          	addi	sp,sp,16
    80002f50:	00008067          	ret

0000000080002f54 <mycpu>:
    80002f54:	ff010113          	addi	sp,sp,-16
    80002f58:	00813423          	sd	s0,8(sp)
    80002f5c:	01010413          	addi	s0,sp,16
    80002f60:	00020793          	mv	a5,tp
    80002f64:	00813403          	ld	s0,8(sp)
    80002f68:	0007879b          	sext.w	a5,a5
    80002f6c:	00779793          	slli	a5,a5,0x7
    80002f70:	00004517          	auipc	a0,0x4
    80002f74:	10050513          	addi	a0,a0,256 # 80007070 <cpus>
    80002f78:	00f50533          	add	a0,a0,a5
    80002f7c:	01010113          	addi	sp,sp,16
    80002f80:	00008067          	ret

0000000080002f84 <userinit>:
    80002f84:	ff010113          	addi	sp,sp,-16
    80002f88:	00813423          	sd	s0,8(sp)
    80002f8c:	01010413          	addi	s0,sp,16
    80002f90:	00813403          	ld	s0,8(sp)
    80002f94:	01010113          	addi	sp,sp,16
    80002f98:	fffff317          	auipc	t1,0xfffff
    80002f9c:	cc430067          	jr	-828(t1) # 80001c5c <main>

0000000080002fa0 <either_copyout>:
    80002fa0:	ff010113          	addi	sp,sp,-16
    80002fa4:	00813023          	sd	s0,0(sp)
    80002fa8:	00113423          	sd	ra,8(sp)
    80002fac:	01010413          	addi	s0,sp,16
    80002fb0:	02051663          	bnez	a0,80002fdc <either_copyout+0x3c>
    80002fb4:	00058513          	mv	a0,a1
    80002fb8:	00060593          	mv	a1,a2
    80002fbc:	0006861b          	sext.w	a2,a3
    80002fc0:	00002097          	auipc	ra,0x2
    80002fc4:	c54080e7          	jalr	-940(ra) # 80004c14 <__memmove>
    80002fc8:	00813083          	ld	ra,8(sp)
    80002fcc:	00013403          	ld	s0,0(sp)
    80002fd0:	00000513          	li	a0,0
    80002fd4:	01010113          	addi	sp,sp,16
    80002fd8:	00008067          	ret
    80002fdc:	00002517          	auipc	a0,0x2
    80002fe0:	3c450513          	addi	a0,a0,964 # 800053a0 <_ZZ12printIntegermE6digits+0x68>
    80002fe4:	00001097          	auipc	ra,0x1
    80002fe8:	928080e7          	jalr	-1752(ra) # 8000390c <panic>

0000000080002fec <either_copyin>:
    80002fec:	ff010113          	addi	sp,sp,-16
    80002ff0:	00813023          	sd	s0,0(sp)
    80002ff4:	00113423          	sd	ra,8(sp)
    80002ff8:	01010413          	addi	s0,sp,16
    80002ffc:	02059463          	bnez	a1,80003024 <either_copyin+0x38>
    80003000:	00060593          	mv	a1,a2
    80003004:	0006861b          	sext.w	a2,a3
    80003008:	00002097          	auipc	ra,0x2
    8000300c:	c0c080e7          	jalr	-1012(ra) # 80004c14 <__memmove>
    80003010:	00813083          	ld	ra,8(sp)
    80003014:	00013403          	ld	s0,0(sp)
    80003018:	00000513          	li	a0,0
    8000301c:	01010113          	addi	sp,sp,16
    80003020:	00008067          	ret
    80003024:	00002517          	auipc	a0,0x2
    80003028:	3a450513          	addi	a0,a0,932 # 800053c8 <_ZZ12printIntegermE6digits+0x90>
    8000302c:	00001097          	auipc	ra,0x1
    80003030:	8e0080e7          	jalr	-1824(ra) # 8000390c <panic>

0000000080003034 <trapinit>:
    80003034:	ff010113          	addi	sp,sp,-16
    80003038:	00813423          	sd	s0,8(sp)
    8000303c:	01010413          	addi	s0,sp,16
    80003040:	00813403          	ld	s0,8(sp)
    80003044:	00002597          	auipc	a1,0x2
    80003048:	3ac58593          	addi	a1,a1,940 # 800053f0 <_ZZ12printIntegermE6digits+0xb8>
    8000304c:	00004517          	auipc	a0,0x4
    80003050:	0a450513          	addi	a0,a0,164 # 800070f0 <tickslock>
    80003054:	01010113          	addi	sp,sp,16
    80003058:	00001317          	auipc	t1,0x1
    8000305c:	5c030067          	jr	1472(t1) # 80004618 <initlock>

0000000080003060 <trapinithart>:
    80003060:	ff010113          	addi	sp,sp,-16
    80003064:	00813423          	sd	s0,8(sp)
    80003068:	01010413          	addi	s0,sp,16
    8000306c:	00000797          	auipc	a5,0x0
    80003070:	2f478793          	addi	a5,a5,756 # 80003360 <kernelvec>
    80003074:	10579073          	csrw	stvec,a5
    80003078:	00813403          	ld	s0,8(sp)
    8000307c:	01010113          	addi	sp,sp,16
    80003080:	00008067          	ret

0000000080003084 <usertrap>:
    80003084:	ff010113          	addi	sp,sp,-16
    80003088:	00813423          	sd	s0,8(sp)
    8000308c:	01010413          	addi	s0,sp,16
    80003090:	00813403          	ld	s0,8(sp)
    80003094:	01010113          	addi	sp,sp,16
    80003098:	00008067          	ret

000000008000309c <usertrapret>:
    8000309c:	ff010113          	addi	sp,sp,-16
    800030a0:	00813423          	sd	s0,8(sp)
    800030a4:	01010413          	addi	s0,sp,16
    800030a8:	00813403          	ld	s0,8(sp)
    800030ac:	01010113          	addi	sp,sp,16
    800030b0:	00008067          	ret

00000000800030b4 <kerneltrap>:
    800030b4:	fe010113          	addi	sp,sp,-32
    800030b8:	00813823          	sd	s0,16(sp)
    800030bc:	00113c23          	sd	ra,24(sp)
    800030c0:	00913423          	sd	s1,8(sp)
    800030c4:	02010413          	addi	s0,sp,32
    800030c8:	142025f3          	csrr	a1,scause
    800030cc:	100027f3          	csrr	a5,sstatus
    800030d0:	0027f793          	andi	a5,a5,2
    800030d4:	10079c63          	bnez	a5,800031ec <kerneltrap+0x138>
    800030d8:	142027f3          	csrr	a5,scause
    800030dc:	0207ce63          	bltz	a5,80003118 <kerneltrap+0x64>
    800030e0:	00002517          	auipc	a0,0x2
    800030e4:	35850513          	addi	a0,a0,856 # 80005438 <_ZZ12printIntegermE6digits+0x100>
    800030e8:	00001097          	auipc	ra,0x1
    800030ec:	880080e7          	jalr	-1920(ra) # 80003968 <__printf>
    800030f0:	141025f3          	csrr	a1,sepc
    800030f4:	14302673          	csrr	a2,stval
    800030f8:	00002517          	auipc	a0,0x2
    800030fc:	35050513          	addi	a0,a0,848 # 80005448 <_ZZ12printIntegermE6digits+0x110>
    80003100:	00001097          	auipc	ra,0x1
    80003104:	868080e7          	jalr	-1944(ra) # 80003968 <__printf>
    80003108:	00002517          	auipc	a0,0x2
    8000310c:	35850513          	addi	a0,a0,856 # 80005460 <_ZZ12printIntegermE6digits+0x128>
    80003110:	00000097          	auipc	ra,0x0
    80003114:	7fc080e7          	jalr	2044(ra) # 8000390c <panic>
    80003118:	0ff7f713          	andi	a4,a5,255
    8000311c:	00900693          	li	a3,9
    80003120:	04d70063          	beq	a4,a3,80003160 <kerneltrap+0xac>
    80003124:	fff00713          	li	a4,-1
    80003128:	03f71713          	slli	a4,a4,0x3f
    8000312c:	00170713          	addi	a4,a4,1
    80003130:	fae798e3          	bne	a5,a4,800030e0 <kerneltrap+0x2c>
    80003134:	00000097          	auipc	ra,0x0
    80003138:	e00080e7          	jalr	-512(ra) # 80002f34 <cpuid>
    8000313c:	06050663          	beqz	a0,800031a8 <kerneltrap+0xf4>
    80003140:	144027f3          	csrr	a5,sip
    80003144:	ffd7f793          	andi	a5,a5,-3
    80003148:	14479073          	csrw	sip,a5
    8000314c:	01813083          	ld	ra,24(sp)
    80003150:	01013403          	ld	s0,16(sp)
    80003154:	00813483          	ld	s1,8(sp)
    80003158:	02010113          	addi	sp,sp,32
    8000315c:	00008067          	ret
    80003160:	00000097          	auipc	ra,0x0
    80003164:	3c4080e7          	jalr	964(ra) # 80003524 <plic_claim>
    80003168:	00a00793          	li	a5,10
    8000316c:	00050493          	mv	s1,a0
    80003170:	06f50863          	beq	a0,a5,800031e0 <kerneltrap+0x12c>
    80003174:	fc050ce3          	beqz	a0,8000314c <kerneltrap+0x98>
    80003178:	00050593          	mv	a1,a0
    8000317c:	00002517          	auipc	a0,0x2
    80003180:	29c50513          	addi	a0,a0,668 # 80005418 <_ZZ12printIntegermE6digits+0xe0>
    80003184:	00000097          	auipc	ra,0x0
    80003188:	7e4080e7          	jalr	2020(ra) # 80003968 <__printf>
    8000318c:	01013403          	ld	s0,16(sp)
    80003190:	01813083          	ld	ra,24(sp)
    80003194:	00048513          	mv	a0,s1
    80003198:	00813483          	ld	s1,8(sp)
    8000319c:	02010113          	addi	sp,sp,32
    800031a0:	00000317          	auipc	t1,0x0
    800031a4:	3bc30067          	jr	956(t1) # 8000355c <plic_complete>
    800031a8:	00004517          	auipc	a0,0x4
    800031ac:	f4850513          	addi	a0,a0,-184 # 800070f0 <tickslock>
    800031b0:	00001097          	auipc	ra,0x1
    800031b4:	48c080e7          	jalr	1164(ra) # 8000463c <acquire>
    800031b8:	00003717          	auipc	a4,0x3
    800031bc:	e1c70713          	addi	a4,a4,-484 # 80005fd4 <ticks>
    800031c0:	00072783          	lw	a5,0(a4)
    800031c4:	00004517          	auipc	a0,0x4
    800031c8:	f2c50513          	addi	a0,a0,-212 # 800070f0 <tickslock>
    800031cc:	0017879b          	addiw	a5,a5,1
    800031d0:	00f72023          	sw	a5,0(a4)
    800031d4:	00001097          	auipc	ra,0x1
    800031d8:	534080e7          	jalr	1332(ra) # 80004708 <release>
    800031dc:	f65ff06f          	j	80003140 <kerneltrap+0x8c>
    800031e0:	00001097          	auipc	ra,0x1
    800031e4:	090080e7          	jalr	144(ra) # 80004270 <uartintr>
    800031e8:	fa5ff06f          	j	8000318c <kerneltrap+0xd8>
    800031ec:	00002517          	auipc	a0,0x2
    800031f0:	20c50513          	addi	a0,a0,524 # 800053f8 <_ZZ12printIntegermE6digits+0xc0>
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	718080e7          	jalr	1816(ra) # 8000390c <panic>

00000000800031fc <clockintr>:
    800031fc:	fe010113          	addi	sp,sp,-32
    80003200:	00813823          	sd	s0,16(sp)
    80003204:	00913423          	sd	s1,8(sp)
    80003208:	00113c23          	sd	ra,24(sp)
    8000320c:	02010413          	addi	s0,sp,32
    80003210:	00004497          	auipc	s1,0x4
    80003214:	ee048493          	addi	s1,s1,-288 # 800070f0 <tickslock>
    80003218:	00048513          	mv	a0,s1
    8000321c:	00001097          	auipc	ra,0x1
    80003220:	420080e7          	jalr	1056(ra) # 8000463c <acquire>
    80003224:	00003717          	auipc	a4,0x3
    80003228:	db070713          	addi	a4,a4,-592 # 80005fd4 <ticks>
    8000322c:	00072783          	lw	a5,0(a4)
    80003230:	01013403          	ld	s0,16(sp)
    80003234:	01813083          	ld	ra,24(sp)
    80003238:	00048513          	mv	a0,s1
    8000323c:	0017879b          	addiw	a5,a5,1
    80003240:	00813483          	ld	s1,8(sp)
    80003244:	00f72023          	sw	a5,0(a4)
    80003248:	02010113          	addi	sp,sp,32
    8000324c:	00001317          	auipc	t1,0x1
    80003250:	4bc30067          	jr	1212(t1) # 80004708 <release>

0000000080003254 <devintr>:
    80003254:	142027f3          	csrr	a5,scause
    80003258:	00000513          	li	a0,0
    8000325c:	0007c463          	bltz	a5,80003264 <devintr+0x10>
    80003260:	00008067          	ret
    80003264:	fe010113          	addi	sp,sp,-32
    80003268:	00813823          	sd	s0,16(sp)
    8000326c:	00113c23          	sd	ra,24(sp)
    80003270:	00913423          	sd	s1,8(sp)
    80003274:	02010413          	addi	s0,sp,32
    80003278:	0ff7f713          	andi	a4,a5,255
    8000327c:	00900693          	li	a3,9
    80003280:	04d70c63          	beq	a4,a3,800032d8 <devintr+0x84>
    80003284:	fff00713          	li	a4,-1
    80003288:	03f71713          	slli	a4,a4,0x3f
    8000328c:	00170713          	addi	a4,a4,1
    80003290:	00e78c63          	beq	a5,a4,800032a8 <devintr+0x54>
    80003294:	01813083          	ld	ra,24(sp)
    80003298:	01013403          	ld	s0,16(sp)
    8000329c:	00813483          	ld	s1,8(sp)
    800032a0:	02010113          	addi	sp,sp,32
    800032a4:	00008067          	ret
    800032a8:	00000097          	auipc	ra,0x0
    800032ac:	c8c080e7          	jalr	-884(ra) # 80002f34 <cpuid>
    800032b0:	06050663          	beqz	a0,8000331c <devintr+0xc8>
    800032b4:	144027f3          	csrr	a5,sip
    800032b8:	ffd7f793          	andi	a5,a5,-3
    800032bc:	14479073          	csrw	sip,a5
    800032c0:	01813083          	ld	ra,24(sp)
    800032c4:	01013403          	ld	s0,16(sp)
    800032c8:	00813483          	ld	s1,8(sp)
    800032cc:	00200513          	li	a0,2
    800032d0:	02010113          	addi	sp,sp,32
    800032d4:	00008067          	ret
    800032d8:	00000097          	auipc	ra,0x0
    800032dc:	24c080e7          	jalr	588(ra) # 80003524 <plic_claim>
    800032e0:	00a00793          	li	a5,10
    800032e4:	00050493          	mv	s1,a0
    800032e8:	06f50663          	beq	a0,a5,80003354 <devintr+0x100>
    800032ec:	00100513          	li	a0,1
    800032f0:	fa0482e3          	beqz	s1,80003294 <devintr+0x40>
    800032f4:	00048593          	mv	a1,s1
    800032f8:	00002517          	auipc	a0,0x2
    800032fc:	12050513          	addi	a0,a0,288 # 80005418 <_ZZ12printIntegermE6digits+0xe0>
    80003300:	00000097          	auipc	ra,0x0
    80003304:	668080e7          	jalr	1640(ra) # 80003968 <__printf>
    80003308:	00048513          	mv	a0,s1
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	250080e7          	jalr	592(ra) # 8000355c <plic_complete>
    80003314:	00100513          	li	a0,1
    80003318:	f7dff06f          	j	80003294 <devintr+0x40>
    8000331c:	00004517          	auipc	a0,0x4
    80003320:	dd450513          	addi	a0,a0,-556 # 800070f0 <tickslock>
    80003324:	00001097          	auipc	ra,0x1
    80003328:	318080e7          	jalr	792(ra) # 8000463c <acquire>
    8000332c:	00003717          	auipc	a4,0x3
    80003330:	ca870713          	addi	a4,a4,-856 # 80005fd4 <ticks>
    80003334:	00072783          	lw	a5,0(a4)
    80003338:	00004517          	auipc	a0,0x4
    8000333c:	db850513          	addi	a0,a0,-584 # 800070f0 <tickslock>
    80003340:	0017879b          	addiw	a5,a5,1
    80003344:	00f72023          	sw	a5,0(a4)
    80003348:	00001097          	auipc	ra,0x1
    8000334c:	3c0080e7          	jalr	960(ra) # 80004708 <release>
    80003350:	f65ff06f          	j	800032b4 <devintr+0x60>
    80003354:	00001097          	auipc	ra,0x1
    80003358:	f1c080e7          	jalr	-228(ra) # 80004270 <uartintr>
    8000335c:	fadff06f          	j	80003308 <devintr+0xb4>

0000000080003360 <kernelvec>:
    80003360:	f0010113          	addi	sp,sp,-256
    80003364:	00113023          	sd	ra,0(sp)
    80003368:	00213423          	sd	sp,8(sp)
    8000336c:	00313823          	sd	gp,16(sp)
    80003370:	00413c23          	sd	tp,24(sp)
    80003374:	02513023          	sd	t0,32(sp)
    80003378:	02613423          	sd	t1,40(sp)
    8000337c:	02713823          	sd	t2,48(sp)
    80003380:	02813c23          	sd	s0,56(sp)
    80003384:	04913023          	sd	s1,64(sp)
    80003388:	04a13423          	sd	a0,72(sp)
    8000338c:	04b13823          	sd	a1,80(sp)
    80003390:	04c13c23          	sd	a2,88(sp)
    80003394:	06d13023          	sd	a3,96(sp)
    80003398:	06e13423          	sd	a4,104(sp)
    8000339c:	06f13823          	sd	a5,112(sp)
    800033a0:	07013c23          	sd	a6,120(sp)
    800033a4:	09113023          	sd	a7,128(sp)
    800033a8:	09213423          	sd	s2,136(sp)
    800033ac:	09313823          	sd	s3,144(sp)
    800033b0:	09413c23          	sd	s4,152(sp)
    800033b4:	0b513023          	sd	s5,160(sp)
    800033b8:	0b613423          	sd	s6,168(sp)
    800033bc:	0b713823          	sd	s7,176(sp)
    800033c0:	0b813c23          	sd	s8,184(sp)
    800033c4:	0d913023          	sd	s9,192(sp)
    800033c8:	0da13423          	sd	s10,200(sp)
    800033cc:	0db13823          	sd	s11,208(sp)
    800033d0:	0dc13c23          	sd	t3,216(sp)
    800033d4:	0fd13023          	sd	t4,224(sp)
    800033d8:	0fe13423          	sd	t5,232(sp)
    800033dc:	0ff13823          	sd	t6,240(sp)
    800033e0:	cd5ff0ef          	jal	ra,800030b4 <kerneltrap>
    800033e4:	00013083          	ld	ra,0(sp)
    800033e8:	00813103          	ld	sp,8(sp)
    800033ec:	01013183          	ld	gp,16(sp)
    800033f0:	02013283          	ld	t0,32(sp)
    800033f4:	02813303          	ld	t1,40(sp)
    800033f8:	03013383          	ld	t2,48(sp)
    800033fc:	03813403          	ld	s0,56(sp)
    80003400:	04013483          	ld	s1,64(sp)
    80003404:	04813503          	ld	a0,72(sp)
    80003408:	05013583          	ld	a1,80(sp)
    8000340c:	05813603          	ld	a2,88(sp)
    80003410:	06013683          	ld	a3,96(sp)
    80003414:	06813703          	ld	a4,104(sp)
    80003418:	07013783          	ld	a5,112(sp)
    8000341c:	07813803          	ld	a6,120(sp)
    80003420:	08013883          	ld	a7,128(sp)
    80003424:	08813903          	ld	s2,136(sp)
    80003428:	09013983          	ld	s3,144(sp)
    8000342c:	09813a03          	ld	s4,152(sp)
    80003430:	0a013a83          	ld	s5,160(sp)
    80003434:	0a813b03          	ld	s6,168(sp)
    80003438:	0b013b83          	ld	s7,176(sp)
    8000343c:	0b813c03          	ld	s8,184(sp)
    80003440:	0c013c83          	ld	s9,192(sp)
    80003444:	0c813d03          	ld	s10,200(sp)
    80003448:	0d013d83          	ld	s11,208(sp)
    8000344c:	0d813e03          	ld	t3,216(sp)
    80003450:	0e013e83          	ld	t4,224(sp)
    80003454:	0e813f03          	ld	t5,232(sp)
    80003458:	0f013f83          	ld	t6,240(sp)
    8000345c:	10010113          	addi	sp,sp,256
    80003460:	10200073          	sret
    80003464:	00000013          	nop
    80003468:	00000013          	nop
    8000346c:	00000013          	nop

0000000080003470 <timervec>:
    80003470:	34051573          	csrrw	a0,mscratch,a0
    80003474:	00b53023          	sd	a1,0(a0)
    80003478:	00c53423          	sd	a2,8(a0)
    8000347c:	00d53823          	sd	a3,16(a0)
    80003480:	01853583          	ld	a1,24(a0)
    80003484:	02053603          	ld	a2,32(a0)
    80003488:	0005b683          	ld	a3,0(a1)
    8000348c:	00c686b3          	add	a3,a3,a2
    80003490:	00d5b023          	sd	a3,0(a1)
    80003494:	00200593          	li	a1,2
    80003498:	14459073          	csrw	sip,a1
    8000349c:	01053683          	ld	a3,16(a0)
    800034a0:	00853603          	ld	a2,8(a0)
    800034a4:	00053583          	ld	a1,0(a0)
    800034a8:	34051573          	csrrw	a0,mscratch,a0
    800034ac:	30200073          	mret

00000000800034b0 <plicinit>:
    800034b0:	ff010113          	addi	sp,sp,-16
    800034b4:	00813423          	sd	s0,8(sp)
    800034b8:	01010413          	addi	s0,sp,16
    800034bc:	00813403          	ld	s0,8(sp)
    800034c0:	0c0007b7          	lui	a5,0xc000
    800034c4:	00100713          	li	a4,1
    800034c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800034cc:	00e7a223          	sw	a4,4(a5)
    800034d0:	01010113          	addi	sp,sp,16
    800034d4:	00008067          	ret

00000000800034d8 <plicinithart>:
    800034d8:	ff010113          	addi	sp,sp,-16
    800034dc:	00813023          	sd	s0,0(sp)
    800034e0:	00113423          	sd	ra,8(sp)
    800034e4:	01010413          	addi	s0,sp,16
    800034e8:	00000097          	auipc	ra,0x0
    800034ec:	a4c080e7          	jalr	-1460(ra) # 80002f34 <cpuid>
    800034f0:	0085171b          	slliw	a4,a0,0x8
    800034f4:	0c0027b7          	lui	a5,0xc002
    800034f8:	00e787b3          	add	a5,a5,a4
    800034fc:	40200713          	li	a4,1026
    80003500:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003504:	00813083          	ld	ra,8(sp)
    80003508:	00013403          	ld	s0,0(sp)
    8000350c:	00d5151b          	slliw	a0,a0,0xd
    80003510:	0c2017b7          	lui	a5,0xc201
    80003514:	00a78533          	add	a0,a5,a0
    80003518:	00052023          	sw	zero,0(a0)
    8000351c:	01010113          	addi	sp,sp,16
    80003520:	00008067          	ret

0000000080003524 <plic_claim>:
    80003524:	ff010113          	addi	sp,sp,-16
    80003528:	00813023          	sd	s0,0(sp)
    8000352c:	00113423          	sd	ra,8(sp)
    80003530:	01010413          	addi	s0,sp,16
    80003534:	00000097          	auipc	ra,0x0
    80003538:	a00080e7          	jalr	-1536(ra) # 80002f34 <cpuid>
    8000353c:	00813083          	ld	ra,8(sp)
    80003540:	00013403          	ld	s0,0(sp)
    80003544:	00d5151b          	slliw	a0,a0,0xd
    80003548:	0c2017b7          	lui	a5,0xc201
    8000354c:	00a78533          	add	a0,a5,a0
    80003550:	00452503          	lw	a0,4(a0)
    80003554:	01010113          	addi	sp,sp,16
    80003558:	00008067          	ret

000000008000355c <plic_complete>:
    8000355c:	fe010113          	addi	sp,sp,-32
    80003560:	00813823          	sd	s0,16(sp)
    80003564:	00913423          	sd	s1,8(sp)
    80003568:	00113c23          	sd	ra,24(sp)
    8000356c:	02010413          	addi	s0,sp,32
    80003570:	00050493          	mv	s1,a0
    80003574:	00000097          	auipc	ra,0x0
    80003578:	9c0080e7          	jalr	-1600(ra) # 80002f34 <cpuid>
    8000357c:	01813083          	ld	ra,24(sp)
    80003580:	01013403          	ld	s0,16(sp)
    80003584:	00d5179b          	slliw	a5,a0,0xd
    80003588:	0c201737          	lui	a4,0xc201
    8000358c:	00f707b3          	add	a5,a4,a5
    80003590:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003594:	00813483          	ld	s1,8(sp)
    80003598:	02010113          	addi	sp,sp,32
    8000359c:	00008067          	ret

00000000800035a0 <consolewrite>:
    800035a0:	fb010113          	addi	sp,sp,-80
    800035a4:	04813023          	sd	s0,64(sp)
    800035a8:	04113423          	sd	ra,72(sp)
    800035ac:	02913c23          	sd	s1,56(sp)
    800035b0:	03213823          	sd	s2,48(sp)
    800035b4:	03313423          	sd	s3,40(sp)
    800035b8:	03413023          	sd	s4,32(sp)
    800035bc:	01513c23          	sd	s5,24(sp)
    800035c0:	05010413          	addi	s0,sp,80
    800035c4:	06c05c63          	blez	a2,8000363c <consolewrite+0x9c>
    800035c8:	00060993          	mv	s3,a2
    800035cc:	00050a13          	mv	s4,a0
    800035d0:	00058493          	mv	s1,a1
    800035d4:	00000913          	li	s2,0
    800035d8:	fff00a93          	li	s5,-1
    800035dc:	01c0006f          	j	800035f8 <consolewrite+0x58>
    800035e0:	fbf44503          	lbu	a0,-65(s0)
    800035e4:	0019091b          	addiw	s2,s2,1
    800035e8:	00148493          	addi	s1,s1,1
    800035ec:	00001097          	auipc	ra,0x1
    800035f0:	a9c080e7          	jalr	-1380(ra) # 80004088 <uartputc>
    800035f4:	03298063          	beq	s3,s2,80003614 <consolewrite+0x74>
    800035f8:	00048613          	mv	a2,s1
    800035fc:	00100693          	li	a3,1
    80003600:	000a0593          	mv	a1,s4
    80003604:	fbf40513          	addi	a0,s0,-65
    80003608:	00000097          	auipc	ra,0x0
    8000360c:	9e4080e7          	jalr	-1564(ra) # 80002fec <either_copyin>
    80003610:	fd5518e3          	bne	a0,s5,800035e0 <consolewrite+0x40>
    80003614:	04813083          	ld	ra,72(sp)
    80003618:	04013403          	ld	s0,64(sp)
    8000361c:	03813483          	ld	s1,56(sp)
    80003620:	02813983          	ld	s3,40(sp)
    80003624:	02013a03          	ld	s4,32(sp)
    80003628:	01813a83          	ld	s5,24(sp)
    8000362c:	00090513          	mv	a0,s2
    80003630:	03013903          	ld	s2,48(sp)
    80003634:	05010113          	addi	sp,sp,80
    80003638:	00008067          	ret
    8000363c:	00000913          	li	s2,0
    80003640:	fd5ff06f          	j	80003614 <consolewrite+0x74>

0000000080003644 <consoleread>:
    80003644:	f9010113          	addi	sp,sp,-112
    80003648:	06813023          	sd	s0,96(sp)
    8000364c:	04913c23          	sd	s1,88(sp)
    80003650:	05213823          	sd	s2,80(sp)
    80003654:	05313423          	sd	s3,72(sp)
    80003658:	05413023          	sd	s4,64(sp)
    8000365c:	03513c23          	sd	s5,56(sp)
    80003660:	03613823          	sd	s6,48(sp)
    80003664:	03713423          	sd	s7,40(sp)
    80003668:	03813023          	sd	s8,32(sp)
    8000366c:	06113423          	sd	ra,104(sp)
    80003670:	01913c23          	sd	s9,24(sp)
    80003674:	07010413          	addi	s0,sp,112
    80003678:	00060b93          	mv	s7,a2
    8000367c:	00050913          	mv	s2,a0
    80003680:	00058c13          	mv	s8,a1
    80003684:	00060b1b          	sext.w	s6,a2
    80003688:	00004497          	auipc	s1,0x4
    8000368c:	a9048493          	addi	s1,s1,-1392 # 80007118 <cons>
    80003690:	00400993          	li	s3,4
    80003694:	fff00a13          	li	s4,-1
    80003698:	00a00a93          	li	s5,10
    8000369c:	05705e63          	blez	s7,800036f8 <consoleread+0xb4>
    800036a0:	09c4a703          	lw	a4,156(s1)
    800036a4:	0984a783          	lw	a5,152(s1)
    800036a8:	0007071b          	sext.w	a4,a4
    800036ac:	08e78463          	beq	a5,a4,80003734 <consoleread+0xf0>
    800036b0:	07f7f713          	andi	a4,a5,127
    800036b4:	00e48733          	add	a4,s1,a4
    800036b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800036bc:	0017869b          	addiw	a3,a5,1
    800036c0:	08d4ac23          	sw	a3,152(s1)
    800036c4:	00070c9b          	sext.w	s9,a4
    800036c8:	0b370663          	beq	a4,s3,80003774 <consoleread+0x130>
    800036cc:	00100693          	li	a3,1
    800036d0:	f9f40613          	addi	a2,s0,-97
    800036d4:	000c0593          	mv	a1,s8
    800036d8:	00090513          	mv	a0,s2
    800036dc:	f8e40fa3          	sb	a4,-97(s0)
    800036e0:	00000097          	auipc	ra,0x0
    800036e4:	8c0080e7          	jalr	-1856(ra) # 80002fa0 <either_copyout>
    800036e8:	01450863          	beq	a0,s4,800036f8 <consoleread+0xb4>
    800036ec:	001c0c13          	addi	s8,s8,1
    800036f0:	fffb8b9b          	addiw	s7,s7,-1
    800036f4:	fb5c94e3          	bne	s9,s5,8000369c <consoleread+0x58>
    800036f8:	000b851b          	sext.w	a0,s7
    800036fc:	06813083          	ld	ra,104(sp)
    80003700:	06013403          	ld	s0,96(sp)
    80003704:	05813483          	ld	s1,88(sp)
    80003708:	05013903          	ld	s2,80(sp)
    8000370c:	04813983          	ld	s3,72(sp)
    80003710:	04013a03          	ld	s4,64(sp)
    80003714:	03813a83          	ld	s5,56(sp)
    80003718:	02813b83          	ld	s7,40(sp)
    8000371c:	02013c03          	ld	s8,32(sp)
    80003720:	01813c83          	ld	s9,24(sp)
    80003724:	40ab053b          	subw	a0,s6,a0
    80003728:	03013b03          	ld	s6,48(sp)
    8000372c:	07010113          	addi	sp,sp,112
    80003730:	00008067          	ret
    80003734:	00001097          	auipc	ra,0x1
    80003738:	1d8080e7          	jalr	472(ra) # 8000490c <push_on>
    8000373c:	0984a703          	lw	a4,152(s1)
    80003740:	09c4a783          	lw	a5,156(s1)
    80003744:	0007879b          	sext.w	a5,a5
    80003748:	fef70ce3          	beq	a4,a5,80003740 <consoleread+0xfc>
    8000374c:	00001097          	auipc	ra,0x1
    80003750:	234080e7          	jalr	564(ra) # 80004980 <pop_on>
    80003754:	0984a783          	lw	a5,152(s1)
    80003758:	07f7f713          	andi	a4,a5,127
    8000375c:	00e48733          	add	a4,s1,a4
    80003760:	01874703          	lbu	a4,24(a4)
    80003764:	0017869b          	addiw	a3,a5,1
    80003768:	08d4ac23          	sw	a3,152(s1)
    8000376c:	00070c9b          	sext.w	s9,a4
    80003770:	f5371ee3          	bne	a4,s3,800036cc <consoleread+0x88>
    80003774:	000b851b          	sext.w	a0,s7
    80003778:	f96bf2e3          	bgeu	s7,s6,800036fc <consoleread+0xb8>
    8000377c:	08f4ac23          	sw	a5,152(s1)
    80003780:	f7dff06f          	j	800036fc <consoleread+0xb8>

0000000080003784 <consputc>:
    80003784:	10000793          	li	a5,256
    80003788:	00f50663          	beq	a0,a5,80003794 <consputc+0x10>
    8000378c:	00001317          	auipc	t1,0x1
    80003790:	9f430067          	jr	-1548(t1) # 80004180 <uartputc_sync>
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00113423          	sd	ra,8(sp)
    8000379c:	00813023          	sd	s0,0(sp)
    800037a0:	01010413          	addi	s0,sp,16
    800037a4:	00800513          	li	a0,8
    800037a8:	00001097          	auipc	ra,0x1
    800037ac:	9d8080e7          	jalr	-1576(ra) # 80004180 <uartputc_sync>
    800037b0:	02000513          	li	a0,32
    800037b4:	00001097          	auipc	ra,0x1
    800037b8:	9cc080e7          	jalr	-1588(ra) # 80004180 <uartputc_sync>
    800037bc:	00013403          	ld	s0,0(sp)
    800037c0:	00813083          	ld	ra,8(sp)
    800037c4:	00800513          	li	a0,8
    800037c8:	01010113          	addi	sp,sp,16
    800037cc:	00001317          	auipc	t1,0x1
    800037d0:	9b430067          	jr	-1612(t1) # 80004180 <uartputc_sync>

00000000800037d4 <consoleintr>:
    800037d4:	fe010113          	addi	sp,sp,-32
    800037d8:	00813823          	sd	s0,16(sp)
    800037dc:	00913423          	sd	s1,8(sp)
    800037e0:	01213023          	sd	s2,0(sp)
    800037e4:	00113c23          	sd	ra,24(sp)
    800037e8:	02010413          	addi	s0,sp,32
    800037ec:	00004917          	auipc	s2,0x4
    800037f0:	92c90913          	addi	s2,s2,-1748 # 80007118 <cons>
    800037f4:	00050493          	mv	s1,a0
    800037f8:	00090513          	mv	a0,s2
    800037fc:	00001097          	auipc	ra,0x1
    80003800:	e40080e7          	jalr	-448(ra) # 8000463c <acquire>
    80003804:	02048c63          	beqz	s1,8000383c <consoleintr+0x68>
    80003808:	0a092783          	lw	a5,160(s2)
    8000380c:	09892703          	lw	a4,152(s2)
    80003810:	07f00693          	li	a3,127
    80003814:	40e7873b          	subw	a4,a5,a4
    80003818:	02e6e263          	bltu	a3,a4,8000383c <consoleintr+0x68>
    8000381c:	00d00713          	li	a4,13
    80003820:	04e48063          	beq	s1,a4,80003860 <consoleintr+0x8c>
    80003824:	07f7f713          	andi	a4,a5,127
    80003828:	00e90733          	add	a4,s2,a4
    8000382c:	0017879b          	addiw	a5,a5,1
    80003830:	0af92023          	sw	a5,160(s2)
    80003834:	00970c23          	sb	s1,24(a4)
    80003838:	08f92e23          	sw	a5,156(s2)
    8000383c:	01013403          	ld	s0,16(sp)
    80003840:	01813083          	ld	ra,24(sp)
    80003844:	00813483          	ld	s1,8(sp)
    80003848:	00013903          	ld	s2,0(sp)
    8000384c:	00004517          	auipc	a0,0x4
    80003850:	8cc50513          	addi	a0,a0,-1844 # 80007118 <cons>
    80003854:	02010113          	addi	sp,sp,32
    80003858:	00001317          	auipc	t1,0x1
    8000385c:	eb030067          	jr	-336(t1) # 80004708 <release>
    80003860:	00a00493          	li	s1,10
    80003864:	fc1ff06f          	j	80003824 <consoleintr+0x50>

0000000080003868 <consoleinit>:
    80003868:	fe010113          	addi	sp,sp,-32
    8000386c:	00113c23          	sd	ra,24(sp)
    80003870:	00813823          	sd	s0,16(sp)
    80003874:	00913423          	sd	s1,8(sp)
    80003878:	02010413          	addi	s0,sp,32
    8000387c:	00004497          	auipc	s1,0x4
    80003880:	89c48493          	addi	s1,s1,-1892 # 80007118 <cons>
    80003884:	00048513          	mv	a0,s1
    80003888:	00002597          	auipc	a1,0x2
    8000388c:	be858593          	addi	a1,a1,-1048 # 80005470 <_ZZ12printIntegermE6digits+0x138>
    80003890:	00001097          	auipc	ra,0x1
    80003894:	d88080e7          	jalr	-632(ra) # 80004618 <initlock>
    80003898:	00000097          	auipc	ra,0x0
    8000389c:	7ac080e7          	jalr	1964(ra) # 80004044 <uartinit>
    800038a0:	01813083          	ld	ra,24(sp)
    800038a4:	01013403          	ld	s0,16(sp)
    800038a8:	00000797          	auipc	a5,0x0
    800038ac:	d9c78793          	addi	a5,a5,-612 # 80003644 <consoleread>
    800038b0:	0af4bc23          	sd	a5,184(s1)
    800038b4:	00000797          	auipc	a5,0x0
    800038b8:	cec78793          	addi	a5,a5,-788 # 800035a0 <consolewrite>
    800038bc:	0cf4b023          	sd	a5,192(s1)
    800038c0:	00813483          	ld	s1,8(sp)
    800038c4:	02010113          	addi	sp,sp,32
    800038c8:	00008067          	ret

00000000800038cc <console_read>:
    800038cc:	ff010113          	addi	sp,sp,-16
    800038d0:	00813423          	sd	s0,8(sp)
    800038d4:	01010413          	addi	s0,sp,16
    800038d8:	00813403          	ld	s0,8(sp)
    800038dc:	00004317          	auipc	t1,0x4
    800038e0:	8f433303          	ld	t1,-1804(t1) # 800071d0 <devsw+0x10>
    800038e4:	01010113          	addi	sp,sp,16
    800038e8:	00030067          	jr	t1

00000000800038ec <console_write>:
    800038ec:	ff010113          	addi	sp,sp,-16
    800038f0:	00813423          	sd	s0,8(sp)
    800038f4:	01010413          	addi	s0,sp,16
    800038f8:	00813403          	ld	s0,8(sp)
    800038fc:	00004317          	auipc	t1,0x4
    80003900:	8dc33303          	ld	t1,-1828(t1) # 800071d8 <devsw+0x18>
    80003904:	01010113          	addi	sp,sp,16
    80003908:	00030067          	jr	t1

000000008000390c <panic>:
    8000390c:	fe010113          	addi	sp,sp,-32
    80003910:	00113c23          	sd	ra,24(sp)
    80003914:	00813823          	sd	s0,16(sp)
    80003918:	00913423          	sd	s1,8(sp)
    8000391c:	02010413          	addi	s0,sp,32
    80003920:	00050493          	mv	s1,a0
    80003924:	00002517          	auipc	a0,0x2
    80003928:	b5450513          	addi	a0,a0,-1196 # 80005478 <_ZZ12printIntegermE6digits+0x140>
    8000392c:	00004797          	auipc	a5,0x4
    80003930:	9407a623          	sw	zero,-1716(a5) # 80007278 <pr+0x18>
    80003934:	00000097          	auipc	ra,0x0
    80003938:	034080e7          	jalr	52(ra) # 80003968 <__printf>
    8000393c:	00048513          	mv	a0,s1
    80003940:	00000097          	auipc	ra,0x0
    80003944:	028080e7          	jalr	40(ra) # 80003968 <__printf>
    80003948:	00002517          	auipc	a0,0x2
    8000394c:	86050513          	addi	a0,a0,-1952 # 800051a8 <CONSOLE_STATUS+0x198>
    80003950:	00000097          	auipc	ra,0x0
    80003954:	018080e7          	jalr	24(ra) # 80003968 <__printf>
    80003958:	00100793          	li	a5,1
    8000395c:	00002717          	auipc	a4,0x2
    80003960:	66f72e23          	sw	a5,1660(a4) # 80005fd8 <panicked>
    80003964:	0000006f          	j	80003964 <panic+0x58>

0000000080003968 <__printf>:
    80003968:	f3010113          	addi	sp,sp,-208
    8000396c:	08813023          	sd	s0,128(sp)
    80003970:	07313423          	sd	s3,104(sp)
    80003974:	09010413          	addi	s0,sp,144
    80003978:	05813023          	sd	s8,64(sp)
    8000397c:	08113423          	sd	ra,136(sp)
    80003980:	06913c23          	sd	s1,120(sp)
    80003984:	07213823          	sd	s2,112(sp)
    80003988:	07413023          	sd	s4,96(sp)
    8000398c:	05513c23          	sd	s5,88(sp)
    80003990:	05613823          	sd	s6,80(sp)
    80003994:	05713423          	sd	s7,72(sp)
    80003998:	03913c23          	sd	s9,56(sp)
    8000399c:	03a13823          	sd	s10,48(sp)
    800039a0:	03b13423          	sd	s11,40(sp)
    800039a4:	00004317          	auipc	t1,0x4
    800039a8:	8bc30313          	addi	t1,t1,-1860 # 80007260 <pr>
    800039ac:	01832c03          	lw	s8,24(t1)
    800039b0:	00b43423          	sd	a1,8(s0)
    800039b4:	00c43823          	sd	a2,16(s0)
    800039b8:	00d43c23          	sd	a3,24(s0)
    800039bc:	02e43023          	sd	a4,32(s0)
    800039c0:	02f43423          	sd	a5,40(s0)
    800039c4:	03043823          	sd	a6,48(s0)
    800039c8:	03143c23          	sd	a7,56(s0)
    800039cc:	00050993          	mv	s3,a0
    800039d0:	4a0c1663          	bnez	s8,80003e7c <__printf+0x514>
    800039d4:	60098c63          	beqz	s3,80003fec <__printf+0x684>
    800039d8:	0009c503          	lbu	a0,0(s3)
    800039dc:	00840793          	addi	a5,s0,8
    800039e0:	f6f43c23          	sd	a5,-136(s0)
    800039e4:	00000493          	li	s1,0
    800039e8:	22050063          	beqz	a0,80003c08 <__printf+0x2a0>
    800039ec:	00002a37          	lui	s4,0x2
    800039f0:	00018ab7          	lui	s5,0x18
    800039f4:	000f4b37          	lui	s6,0xf4
    800039f8:	00989bb7          	lui	s7,0x989
    800039fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003a00:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003a04:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003a08:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003a0c:	00148c9b          	addiw	s9,s1,1
    80003a10:	02500793          	li	a5,37
    80003a14:	01998933          	add	s2,s3,s9
    80003a18:	38f51263          	bne	a0,a5,80003d9c <__printf+0x434>
    80003a1c:	00094783          	lbu	a5,0(s2)
    80003a20:	00078c9b          	sext.w	s9,a5
    80003a24:	1e078263          	beqz	a5,80003c08 <__printf+0x2a0>
    80003a28:	0024849b          	addiw	s1,s1,2
    80003a2c:	07000713          	li	a4,112
    80003a30:	00998933          	add	s2,s3,s1
    80003a34:	38e78a63          	beq	a5,a4,80003dc8 <__printf+0x460>
    80003a38:	20f76863          	bltu	a4,a5,80003c48 <__printf+0x2e0>
    80003a3c:	42a78863          	beq	a5,a0,80003e6c <__printf+0x504>
    80003a40:	06400713          	li	a4,100
    80003a44:	40e79663          	bne	a5,a4,80003e50 <__printf+0x4e8>
    80003a48:	f7843783          	ld	a5,-136(s0)
    80003a4c:	0007a603          	lw	a2,0(a5)
    80003a50:	00878793          	addi	a5,a5,8
    80003a54:	f6f43c23          	sd	a5,-136(s0)
    80003a58:	42064a63          	bltz	a2,80003e8c <__printf+0x524>
    80003a5c:	00a00713          	li	a4,10
    80003a60:	02e677bb          	remuw	a5,a2,a4
    80003a64:	00002d97          	auipc	s11,0x2
    80003a68:	a3cd8d93          	addi	s11,s11,-1476 # 800054a0 <digits>
    80003a6c:	00900593          	li	a1,9
    80003a70:	0006051b          	sext.w	a0,a2
    80003a74:	00000c93          	li	s9,0
    80003a78:	02079793          	slli	a5,a5,0x20
    80003a7c:	0207d793          	srli	a5,a5,0x20
    80003a80:	00fd87b3          	add	a5,s11,a5
    80003a84:	0007c783          	lbu	a5,0(a5)
    80003a88:	02e656bb          	divuw	a3,a2,a4
    80003a8c:	f8f40023          	sb	a5,-128(s0)
    80003a90:	14c5d863          	bge	a1,a2,80003be0 <__printf+0x278>
    80003a94:	06300593          	li	a1,99
    80003a98:	00100c93          	li	s9,1
    80003a9c:	02e6f7bb          	remuw	a5,a3,a4
    80003aa0:	02079793          	slli	a5,a5,0x20
    80003aa4:	0207d793          	srli	a5,a5,0x20
    80003aa8:	00fd87b3          	add	a5,s11,a5
    80003aac:	0007c783          	lbu	a5,0(a5)
    80003ab0:	02e6d73b          	divuw	a4,a3,a4
    80003ab4:	f8f400a3          	sb	a5,-127(s0)
    80003ab8:	12a5f463          	bgeu	a1,a0,80003be0 <__printf+0x278>
    80003abc:	00a00693          	li	a3,10
    80003ac0:	00900593          	li	a1,9
    80003ac4:	02d777bb          	remuw	a5,a4,a3
    80003ac8:	02079793          	slli	a5,a5,0x20
    80003acc:	0207d793          	srli	a5,a5,0x20
    80003ad0:	00fd87b3          	add	a5,s11,a5
    80003ad4:	0007c503          	lbu	a0,0(a5)
    80003ad8:	02d757bb          	divuw	a5,a4,a3
    80003adc:	f8a40123          	sb	a0,-126(s0)
    80003ae0:	48e5f263          	bgeu	a1,a4,80003f64 <__printf+0x5fc>
    80003ae4:	06300513          	li	a0,99
    80003ae8:	02d7f5bb          	remuw	a1,a5,a3
    80003aec:	02059593          	slli	a1,a1,0x20
    80003af0:	0205d593          	srli	a1,a1,0x20
    80003af4:	00bd85b3          	add	a1,s11,a1
    80003af8:	0005c583          	lbu	a1,0(a1)
    80003afc:	02d7d7bb          	divuw	a5,a5,a3
    80003b00:	f8b401a3          	sb	a1,-125(s0)
    80003b04:	48e57263          	bgeu	a0,a4,80003f88 <__printf+0x620>
    80003b08:	3e700513          	li	a0,999
    80003b0c:	02d7f5bb          	remuw	a1,a5,a3
    80003b10:	02059593          	slli	a1,a1,0x20
    80003b14:	0205d593          	srli	a1,a1,0x20
    80003b18:	00bd85b3          	add	a1,s11,a1
    80003b1c:	0005c583          	lbu	a1,0(a1)
    80003b20:	02d7d7bb          	divuw	a5,a5,a3
    80003b24:	f8b40223          	sb	a1,-124(s0)
    80003b28:	46e57663          	bgeu	a0,a4,80003f94 <__printf+0x62c>
    80003b2c:	02d7f5bb          	remuw	a1,a5,a3
    80003b30:	02059593          	slli	a1,a1,0x20
    80003b34:	0205d593          	srli	a1,a1,0x20
    80003b38:	00bd85b3          	add	a1,s11,a1
    80003b3c:	0005c583          	lbu	a1,0(a1)
    80003b40:	02d7d7bb          	divuw	a5,a5,a3
    80003b44:	f8b402a3          	sb	a1,-123(s0)
    80003b48:	46ea7863          	bgeu	s4,a4,80003fb8 <__printf+0x650>
    80003b4c:	02d7f5bb          	remuw	a1,a5,a3
    80003b50:	02059593          	slli	a1,a1,0x20
    80003b54:	0205d593          	srli	a1,a1,0x20
    80003b58:	00bd85b3          	add	a1,s11,a1
    80003b5c:	0005c583          	lbu	a1,0(a1)
    80003b60:	02d7d7bb          	divuw	a5,a5,a3
    80003b64:	f8b40323          	sb	a1,-122(s0)
    80003b68:	3eeaf863          	bgeu	s5,a4,80003f58 <__printf+0x5f0>
    80003b6c:	02d7f5bb          	remuw	a1,a5,a3
    80003b70:	02059593          	slli	a1,a1,0x20
    80003b74:	0205d593          	srli	a1,a1,0x20
    80003b78:	00bd85b3          	add	a1,s11,a1
    80003b7c:	0005c583          	lbu	a1,0(a1)
    80003b80:	02d7d7bb          	divuw	a5,a5,a3
    80003b84:	f8b403a3          	sb	a1,-121(s0)
    80003b88:	42eb7e63          	bgeu	s6,a4,80003fc4 <__printf+0x65c>
    80003b8c:	02d7f5bb          	remuw	a1,a5,a3
    80003b90:	02059593          	slli	a1,a1,0x20
    80003b94:	0205d593          	srli	a1,a1,0x20
    80003b98:	00bd85b3          	add	a1,s11,a1
    80003b9c:	0005c583          	lbu	a1,0(a1)
    80003ba0:	02d7d7bb          	divuw	a5,a5,a3
    80003ba4:	f8b40423          	sb	a1,-120(s0)
    80003ba8:	42ebfc63          	bgeu	s7,a4,80003fe0 <__printf+0x678>
    80003bac:	02079793          	slli	a5,a5,0x20
    80003bb0:	0207d793          	srli	a5,a5,0x20
    80003bb4:	00fd8db3          	add	s11,s11,a5
    80003bb8:	000dc703          	lbu	a4,0(s11)
    80003bbc:	00a00793          	li	a5,10
    80003bc0:	00900c93          	li	s9,9
    80003bc4:	f8e404a3          	sb	a4,-119(s0)
    80003bc8:	00065c63          	bgez	a2,80003be0 <__printf+0x278>
    80003bcc:	f9040713          	addi	a4,s0,-112
    80003bd0:	00f70733          	add	a4,a4,a5
    80003bd4:	02d00693          	li	a3,45
    80003bd8:	fed70823          	sb	a3,-16(a4)
    80003bdc:	00078c93          	mv	s9,a5
    80003be0:	f8040793          	addi	a5,s0,-128
    80003be4:	01978cb3          	add	s9,a5,s9
    80003be8:	f7f40d13          	addi	s10,s0,-129
    80003bec:	000cc503          	lbu	a0,0(s9)
    80003bf0:	fffc8c93          	addi	s9,s9,-1
    80003bf4:	00000097          	auipc	ra,0x0
    80003bf8:	b90080e7          	jalr	-1136(ra) # 80003784 <consputc>
    80003bfc:	ffac98e3          	bne	s9,s10,80003bec <__printf+0x284>
    80003c00:	00094503          	lbu	a0,0(s2)
    80003c04:	e00514e3          	bnez	a0,80003a0c <__printf+0xa4>
    80003c08:	1a0c1663          	bnez	s8,80003db4 <__printf+0x44c>
    80003c0c:	08813083          	ld	ra,136(sp)
    80003c10:	08013403          	ld	s0,128(sp)
    80003c14:	07813483          	ld	s1,120(sp)
    80003c18:	07013903          	ld	s2,112(sp)
    80003c1c:	06813983          	ld	s3,104(sp)
    80003c20:	06013a03          	ld	s4,96(sp)
    80003c24:	05813a83          	ld	s5,88(sp)
    80003c28:	05013b03          	ld	s6,80(sp)
    80003c2c:	04813b83          	ld	s7,72(sp)
    80003c30:	04013c03          	ld	s8,64(sp)
    80003c34:	03813c83          	ld	s9,56(sp)
    80003c38:	03013d03          	ld	s10,48(sp)
    80003c3c:	02813d83          	ld	s11,40(sp)
    80003c40:	0d010113          	addi	sp,sp,208
    80003c44:	00008067          	ret
    80003c48:	07300713          	li	a4,115
    80003c4c:	1ce78a63          	beq	a5,a4,80003e20 <__printf+0x4b8>
    80003c50:	07800713          	li	a4,120
    80003c54:	1ee79e63          	bne	a5,a4,80003e50 <__printf+0x4e8>
    80003c58:	f7843783          	ld	a5,-136(s0)
    80003c5c:	0007a703          	lw	a4,0(a5)
    80003c60:	00878793          	addi	a5,a5,8
    80003c64:	f6f43c23          	sd	a5,-136(s0)
    80003c68:	28074263          	bltz	a4,80003eec <__printf+0x584>
    80003c6c:	00002d97          	auipc	s11,0x2
    80003c70:	834d8d93          	addi	s11,s11,-1996 # 800054a0 <digits>
    80003c74:	00f77793          	andi	a5,a4,15
    80003c78:	00fd87b3          	add	a5,s11,a5
    80003c7c:	0007c683          	lbu	a3,0(a5)
    80003c80:	00f00613          	li	a2,15
    80003c84:	0007079b          	sext.w	a5,a4
    80003c88:	f8d40023          	sb	a3,-128(s0)
    80003c8c:	0047559b          	srliw	a1,a4,0x4
    80003c90:	0047569b          	srliw	a3,a4,0x4
    80003c94:	00000c93          	li	s9,0
    80003c98:	0ee65063          	bge	a2,a4,80003d78 <__printf+0x410>
    80003c9c:	00f6f693          	andi	a3,a3,15
    80003ca0:	00dd86b3          	add	a3,s11,a3
    80003ca4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003ca8:	0087d79b          	srliw	a5,a5,0x8
    80003cac:	00100c93          	li	s9,1
    80003cb0:	f8d400a3          	sb	a3,-127(s0)
    80003cb4:	0cb67263          	bgeu	a2,a1,80003d78 <__printf+0x410>
    80003cb8:	00f7f693          	andi	a3,a5,15
    80003cbc:	00dd86b3          	add	a3,s11,a3
    80003cc0:	0006c583          	lbu	a1,0(a3)
    80003cc4:	00f00613          	li	a2,15
    80003cc8:	0047d69b          	srliw	a3,a5,0x4
    80003ccc:	f8b40123          	sb	a1,-126(s0)
    80003cd0:	0047d593          	srli	a1,a5,0x4
    80003cd4:	28f67e63          	bgeu	a2,a5,80003f70 <__printf+0x608>
    80003cd8:	00f6f693          	andi	a3,a3,15
    80003cdc:	00dd86b3          	add	a3,s11,a3
    80003ce0:	0006c503          	lbu	a0,0(a3)
    80003ce4:	0087d813          	srli	a6,a5,0x8
    80003ce8:	0087d69b          	srliw	a3,a5,0x8
    80003cec:	f8a401a3          	sb	a0,-125(s0)
    80003cf0:	28b67663          	bgeu	a2,a1,80003f7c <__printf+0x614>
    80003cf4:	00f6f693          	andi	a3,a3,15
    80003cf8:	00dd86b3          	add	a3,s11,a3
    80003cfc:	0006c583          	lbu	a1,0(a3)
    80003d00:	00c7d513          	srli	a0,a5,0xc
    80003d04:	00c7d69b          	srliw	a3,a5,0xc
    80003d08:	f8b40223          	sb	a1,-124(s0)
    80003d0c:	29067a63          	bgeu	a2,a6,80003fa0 <__printf+0x638>
    80003d10:	00f6f693          	andi	a3,a3,15
    80003d14:	00dd86b3          	add	a3,s11,a3
    80003d18:	0006c583          	lbu	a1,0(a3)
    80003d1c:	0107d813          	srli	a6,a5,0x10
    80003d20:	0107d69b          	srliw	a3,a5,0x10
    80003d24:	f8b402a3          	sb	a1,-123(s0)
    80003d28:	28a67263          	bgeu	a2,a0,80003fac <__printf+0x644>
    80003d2c:	00f6f693          	andi	a3,a3,15
    80003d30:	00dd86b3          	add	a3,s11,a3
    80003d34:	0006c683          	lbu	a3,0(a3)
    80003d38:	0147d79b          	srliw	a5,a5,0x14
    80003d3c:	f8d40323          	sb	a3,-122(s0)
    80003d40:	21067663          	bgeu	a2,a6,80003f4c <__printf+0x5e4>
    80003d44:	02079793          	slli	a5,a5,0x20
    80003d48:	0207d793          	srli	a5,a5,0x20
    80003d4c:	00fd8db3          	add	s11,s11,a5
    80003d50:	000dc683          	lbu	a3,0(s11)
    80003d54:	00800793          	li	a5,8
    80003d58:	00700c93          	li	s9,7
    80003d5c:	f8d403a3          	sb	a3,-121(s0)
    80003d60:	00075c63          	bgez	a4,80003d78 <__printf+0x410>
    80003d64:	f9040713          	addi	a4,s0,-112
    80003d68:	00f70733          	add	a4,a4,a5
    80003d6c:	02d00693          	li	a3,45
    80003d70:	fed70823          	sb	a3,-16(a4)
    80003d74:	00078c93          	mv	s9,a5
    80003d78:	f8040793          	addi	a5,s0,-128
    80003d7c:	01978cb3          	add	s9,a5,s9
    80003d80:	f7f40d13          	addi	s10,s0,-129
    80003d84:	000cc503          	lbu	a0,0(s9)
    80003d88:	fffc8c93          	addi	s9,s9,-1
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	9f8080e7          	jalr	-1544(ra) # 80003784 <consputc>
    80003d94:	ff9d18e3          	bne	s10,s9,80003d84 <__printf+0x41c>
    80003d98:	0100006f          	j	80003da8 <__printf+0x440>
    80003d9c:	00000097          	auipc	ra,0x0
    80003da0:	9e8080e7          	jalr	-1560(ra) # 80003784 <consputc>
    80003da4:	000c8493          	mv	s1,s9
    80003da8:	00094503          	lbu	a0,0(s2)
    80003dac:	c60510e3          	bnez	a0,80003a0c <__printf+0xa4>
    80003db0:	e40c0ee3          	beqz	s8,80003c0c <__printf+0x2a4>
    80003db4:	00003517          	auipc	a0,0x3
    80003db8:	4ac50513          	addi	a0,a0,1196 # 80007260 <pr>
    80003dbc:	00001097          	auipc	ra,0x1
    80003dc0:	94c080e7          	jalr	-1716(ra) # 80004708 <release>
    80003dc4:	e49ff06f          	j	80003c0c <__printf+0x2a4>
    80003dc8:	f7843783          	ld	a5,-136(s0)
    80003dcc:	03000513          	li	a0,48
    80003dd0:	01000d13          	li	s10,16
    80003dd4:	00878713          	addi	a4,a5,8
    80003dd8:	0007bc83          	ld	s9,0(a5)
    80003ddc:	f6e43c23          	sd	a4,-136(s0)
    80003de0:	00000097          	auipc	ra,0x0
    80003de4:	9a4080e7          	jalr	-1628(ra) # 80003784 <consputc>
    80003de8:	07800513          	li	a0,120
    80003dec:	00000097          	auipc	ra,0x0
    80003df0:	998080e7          	jalr	-1640(ra) # 80003784 <consputc>
    80003df4:	00001d97          	auipc	s11,0x1
    80003df8:	6acd8d93          	addi	s11,s11,1708 # 800054a0 <digits>
    80003dfc:	03ccd793          	srli	a5,s9,0x3c
    80003e00:	00fd87b3          	add	a5,s11,a5
    80003e04:	0007c503          	lbu	a0,0(a5)
    80003e08:	fffd0d1b          	addiw	s10,s10,-1
    80003e0c:	004c9c93          	slli	s9,s9,0x4
    80003e10:	00000097          	auipc	ra,0x0
    80003e14:	974080e7          	jalr	-1676(ra) # 80003784 <consputc>
    80003e18:	fe0d12e3          	bnez	s10,80003dfc <__printf+0x494>
    80003e1c:	f8dff06f          	j	80003da8 <__printf+0x440>
    80003e20:	f7843783          	ld	a5,-136(s0)
    80003e24:	0007bc83          	ld	s9,0(a5)
    80003e28:	00878793          	addi	a5,a5,8
    80003e2c:	f6f43c23          	sd	a5,-136(s0)
    80003e30:	000c9a63          	bnez	s9,80003e44 <__printf+0x4dc>
    80003e34:	1080006f          	j	80003f3c <__printf+0x5d4>
    80003e38:	001c8c93          	addi	s9,s9,1
    80003e3c:	00000097          	auipc	ra,0x0
    80003e40:	948080e7          	jalr	-1720(ra) # 80003784 <consputc>
    80003e44:	000cc503          	lbu	a0,0(s9)
    80003e48:	fe0518e3          	bnez	a0,80003e38 <__printf+0x4d0>
    80003e4c:	f5dff06f          	j	80003da8 <__printf+0x440>
    80003e50:	02500513          	li	a0,37
    80003e54:	00000097          	auipc	ra,0x0
    80003e58:	930080e7          	jalr	-1744(ra) # 80003784 <consputc>
    80003e5c:	000c8513          	mv	a0,s9
    80003e60:	00000097          	auipc	ra,0x0
    80003e64:	924080e7          	jalr	-1756(ra) # 80003784 <consputc>
    80003e68:	f41ff06f          	j	80003da8 <__printf+0x440>
    80003e6c:	02500513          	li	a0,37
    80003e70:	00000097          	auipc	ra,0x0
    80003e74:	914080e7          	jalr	-1772(ra) # 80003784 <consputc>
    80003e78:	f31ff06f          	j	80003da8 <__printf+0x440>
    80003e7c:	00030513          	mv	a0,t1
    80003e80:	00000097          	auipc	ra,0x0
    80003e84:	7bc080e7          	jalr	1980(ra) # 8000463c <acquire>
    80003e88:	b4dff06f          	j	800039d4 <__printf+0x6c>
    80003e8c:	40c0053b          	negw	a0,a2
    80003e90:	00a00713          	li	a4,10
    80003e94:	02e576bb          	remuw	a3,a0,a4
    80003e98:	00001d97          	auipc	s11,0x1
    80003e9c:	608d8d93          	addi	s11,s11,1544 # 800054a0 <digits>
    80003ea0:	ff700593          	li	a1,-9
    80003ea4:	02069693          	slli	a3,a3,0x20
    80003ea8:	0206d693          	srli	a3,a3,0x20
    80003eac:	00dd86b3          	add	a3,s11,a3
    80003eb0:	0006c683          	lbu	a3,0(a3)
    80003eb4:	02e557bb          	divuw	a5,a0,a4
    80003eb8:	f8d40023          	sb	a3,-128(s0)
    80003ebc:	10b65e63          	bge	a2,a1,80003fd8 <__printf+0x670>
    80003ec0:	06300593          	li	a1,99
    80003ec4:	02e7f6bb          	remuw	a3,a5,a4
    80003ec8:	02069693          	slli	a3,a3,0x20
    80003ecc:	0206d693          	srli	a3,a3,0x20
    80003ed0:	00dd86b3          	add	a3,s11,a3
    80003ed4:	0006c683          	lbu	a3,0(a3)
    80003ed8:	02e7d73b          	divuw	a4,a5,a4
    80003edc:	00200793          	li	a5,2
    80003ee0:	f8d400a3          	sb	a3,-127(s0)
    80003ee4:	bca5ece3          	bltu	a1,a0,80003abc <__printf+0x154>
    80003ee8:	ce5ff06f          	j	80003bcc <__printf+0x264>
    80003eec:	40e007bb          	negw	a5,a4
    80003ef0:	00001d97          	auipc	s11,0x1
    80003ef4:	5b0d8d93          	addi	s11,s11,1456 # 800054a0 <digits>
    80003ef8:	00f7f693          	andi	a3,a5,15
    80003efc:	00dd86b3          	add	a3,s11,a3
    80003f00:	0006c583          	lbu	a1,0(a3)
    80003f04:	ff100613          	li	a2,-15
    80003f08:	0047d69b          	srliw	a3,a5,0x4
    80003f0c:	f8b40023          	sb	a1,-128(s0)
    80003f10:	0047d59b          	srliw	a1,a5,0x4
    80003f14:	0ac75e63          	bge	a4,a2,80003fd0 <__printf+0x668>
    80003f18:	00f6f693          	andi	a3,a3,15
    80003f1c:	00dd86b3          	add	a3,s11,a3
    80003f20:	0006c603          	lbu	a2,0(a3)
    80003f24:	00f00693          	li	a3,15
    80003f28:	0087d79b          	srliw	a5,a5,0x8
    80003f2c:	f8c400a3          	sb	a2,-127(s0)
    80003f30:	d8b6e4e3          	bltu	a3,a1,80003cb8 <__printf+0x350>
    80003f34:	00200793          	li	a5,2
    80003f38:	e2dff06f          	j	80003d64 <__printf+0x3fc>
    80003f3c:	00001c97          	auipc	s9,0x1
    80003f40:	544c8c93          	addi	s9,s9,1348 # 80005480 <_ZZ12printIntegermE6digits+0x148>
    80003f44:	02800513          	li	a0,40
    80003f48:	ef1ff06f          	j	80003e38 <__printf+0x4d0>
    80003f4c:	00700793          	li	a5,7
    80003f50:	00600c93          	li	s9,6
    80003f54:	e0dff06f          	j	80003d60 <__printf+0x3f8>
    80003f58:	00700793          	li	a5,7
    80003f5c:	00600c93          	li	s9,6
    80003f60:	c69ff06f          	j	80003bc8 <__printf+0x260>
    80003f64:	00300793          	li	a5,3
    80003f68:	00200c93          	li	s9,2
    80003f6c:	c5dff06f          	j	80003bc8 <__printf+0x260>
    80003f70:	00300793          	li	a5,3
    80003f74:	00200c93          	li	s9,2
    80003f78:	de9ff06f          	j	80003d60 <__printf+0x3f8>
    80003f7c:	00400793          	li	a5,4
    80003f80:	00300c93          	li	s9,3
    80003f84:	dddff06f          	j	80003d60 <__printf+0x3f8>
    80003f88:	00400793          	li	a5,4
    80003f8c:	00300c93          	li	s9,3
    80003f90:	c39ff06f          	j	80003bc8 <__printf+0x260>
    80003f94:	00500793          	li	a5,5
    80003f98:	00400c93          	li	s9,4
    80003f9c:	c2dff06f          	j	80003bc8 <__printf+0x260>
    80003fa0:	00500793          	li	a5,5
    80003fa4:	00400c93          	li	s9,4
    80003fa8:	db9ff06f          	j	80003d60 <__printf+0x3f8>
    80003fac:	00600793          	li	a5,6
    80003fb0:	00500c93          	li	s9,5
    80003fb4:	dadff06f          	j	80003d60 <__printf+0x3f8>
    80003fb8:	00600793          	li	a5,6
    80003fbc:	00500c93          	li	s9,5
    80003fc0:	c09ff06f          	j	80003bc8 <__printf+0x260>
    80003fc4:	00800793          	li	a5,8
    80003fc8:	00700c93          	li	s9,7
    80003fcc:	bfdff06f          	j	80003bc8 <__printf+0x260>
    80003fd0:	00100793          	li	a5,1
    80003fd4:	d91ff06f          	j	80003d64 <__printf+0x3fc>
    80003fd8:	00100793          	li	a5,1
    80003fdc:	bf1ff06f          	j	80003bcc <__printf+0x264>
    80003fe0:	00900793          	li	a5,9
    80003fe4:	00800c93          	li	s9,8
    80003fe8:	be1ff06f          	j	80003bc8 <__printf+0x260>
    80003fec:	00001517          	auipc	a0,0x1
    80003ff0:	49c50513          	addi	a0,a0,1180 # 80005488 <_ZZ12printIntegermE6digits+0x150>
    80003ff4:	00000097          	auipc	ra,0x0
    80003ff8:	918080e7          	jalr	-1768(ra) # 8000390c <panic>

0000000080003ffc <printfinit>:
    80003ffc:	fe010113          	addi	sp,sp,-32
    80004000:	00813823          	sd	s0,16(sp)
    80004004:	00913423          	sd	s1,8(sp)
    80004008:	00113c23          	sd	ra,24(sp)
    8000400c:	02010413          	addi	s0,sp,32
    80004010:	00003497          	auipc	s1,0x3
    80004014:	25048493          	addi	s1,s1,592 # 80007260 <pr>
    80004018:	00048513          	mv	a0,s1
    8000401c:	00001597          	auipc	a1,0x1
    80004020:	47c58593          	addi	a1,a1,1148 # 80005498 <_ZZ12printIntegermE6digits+0x160>
    80004024:	00000097          	auipc	ra,0x0
    80004028:	5f4080e7          	jalr	1524(ra) # 80004618 <initlock>
    8000402c:	01813083          	ld	ra,24(sp)
    80004030:	01013403          	ld	s0,16(sp)
    80004034:	0004ac23          	sw	zero,24(s1)
    80004038:	00813483          	ld	s1,8(sp)
    8000403c:	02010113          	addi	sp,sp,32
    80004040:	00008067          	ret

0000000080004044 <uartinit>:
    80004044:	ff010113          	addi	sp,sp,-16
    80004048:	00813423          	sd	s0,8(sp)
    8000404c:	01010413          	addi	s0,sp,16
    80004050:	100007b7          	lui	a5,0x10000
    80004054:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004058:	f8000713          	li	a4,-128
    8000405c:	00e781a3          	sb	a4,3(a5)
    80004060:	00300713          	li	a4,3
    80004064:	00e78023          	sb	a4,0(a5)
    80004068:	000780a3          	sb	zero,1(a5)
    8000406c:	00e781a3          	sb	a4,3(a5)
    80004070:	00700693          	li	a3,7
    80004074:	00d78123          	sb	a3,2(a5)
    80004078:	00e780a3          	sb	a4,1(a5)
    8000407c:	00813403          	ld	s0,8(sp)
    80004080:	01010113          	addi	sp,sp,16
    80004084:	00008067          	ret

0000000080004088 <uartputc>:
    80004088:	00002797          	auipc	a5,0x2
    8000408c:	f507a783          	lw	a5,-176(a5) # 80005fd8 <panicked>
    80004090:	00078463          	beqz	a5,80004098 <uartputc+0x10>
    80004094:	0000006f          	j	80004094 <uartputc+0xc>
    80004098:	fd010113          	addi	sp,sp,-48
    8000409c:	02813023          	sd	s0,32(sp)
    800040a0:	00913c23          	sd	s1,24(sp)
    800040a4:	01213823          	sd	s2,16(sp)
    800040a8:	01313423          	sd	s3,8(sp)
    800040ac:	02113423          	sd	ra,40(sp)
    800040b0:	03010413          	addi	s0,sp,48
    800040b4:	00002917          	auipc	s2,0x2
    800040b8:	f2c90913          	addi	s2,s2,-212 # 80005fe0 <uart_tx_r>
    800040bc:	00093783          	ld	a5,0(s2)
    800040c0:	00002497          	auipc	s1,0x2
    800040c4:	f2848493          	addi	s1,s1,-216 # 80005fe8 <uart_tx_w>
    800040c8:	0004b703          	ld	a4,0(s1)
    800040cc:	02078693          	addi	a3,a5,32
    800040d0:	00050993          	mv	s3,a0
    800040d4:	02e69c63          	bne	a3,a4,8000410c <uartputc+0x84>
    800040d8:	00001097          	auipc	ra,0x1
    800040dc:	834080e7          	jalr	-1996(ra) # 8000490c <push_on>
    800040e0:	00093783          	ld	a5,0(s2)
    800040e4:	0004b703          	ld	a4,0(s1)
    800040e8:	02078793          	addi	a5,a5,32
    800040ec:	00e79463          	bne	a5,a4,800040f4 <uartputc+0x6c>
    800040f0:	0000006f          	j	800040f0 <uartputc+0x68>
    800040f4:	00001097          	auipc	ra,0x1
    800040f8:	88c080e7          	jalr	-1908(ra) # 80004980 <pop_on>
    800040fc:	00093783          	ld	a5,0(s2)
    80004100:	0004b703          	ld	a4,0(s1)
    80004104:	02078693          	addi	a3,a5,32
    80004108:	fce688e3          	beq	a3,a4,800040d8 <uartputc+0x50>
    8000410c:	01f77693          	andi	a3,a4,31
    80004110:	00003597          	auipc	a1,0x3
    80004114:	17058593          	addi	a1,a1,368 # 80007280 <uart_tx_buf>
    80004118:	00d586b3          	add	a3,a1,a3
    8000411c:	00170713          	addi	a4,a4,1
    80004120:	01368023          	sb	s3,0(a3)
    80004124:	00e4b023          	sd	a4,0(s1)
    80004128:	10000637          	lui	a2,0x10000
    8000412c:	02f71063          	bne	a4,a5,8000414c <uartputc+0xc4>
    80004130:	0340006f          	j	80004164 <uartputc+0xdc>
    80004134:	00074703          	lbu	a4,0(a4)
    80004138:	00f93023          	sd	a5,0(s2)
    8000413c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004140:	00093783          	ld	a5,0(s2)
    80004144:	0004b703          	ld	a4,0(s1)
    80004148:	00f70e63          	beq	a4,a5,80004164 <uartputc+0xdc>
    8000414c:	00564683          	lbu	a3,5(a2)
    80004150:	01f7f713          	andi	a4,a5,31
    80004154:	00e58733          	add	a4,a1,a4
    80004158:	0206f693          	andi	a3,a3,32
    8000415c:	00178793          	addi	a5,a5,1
    80004160:	fc069ae3          	bnez	a3,80004134 <uartputc+0xac>
    80004164:	02813083          	ld	ra,40(sp)
    80004168:	02013403          	ld	s0,32(sp)
    8000416c:	01813483          	ld	s1,24(sp)
    80004170:	01013903          	ld	s2,16(sp)
    80004174:	00813983          	ld	s3,8(sp)
    80004178:	03010113          	addi	sp,sp,48
    8000417c:	00008067          	ret

0000000080004180 <uartputc_sync>:
    80004180:	ff010113          	addi	sp,sp,-16
    80004184:	00813423          	sd	s0,8(sp)
    80004188:	01010413          	addi	s0,sp,16
    8000418c:	00002717          	auipc	a4,0x2
    80004190:	e4c72703          	lw	a4,-436(a4) # 80005fd8 <panicked>
    80004194:	02071663          	bnez	a4,800041c0 <uartputc_sync+0x40>
    80004198:	00050793          	mv	a5,a0
    8000419c:	100006b7          	lui	a3,0x10000
    800041a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800041a4:	02077713          	andi	a4,a4,32
    800041a8:	fe070ce3          	beqz	a4,800041a0 <uartputc_sync+0x20>
    800041ac:	0ff7f793          	andi	a5,a5,255
    800041b0:	00f68023          	sb	a5,0(a3)
    800041b4:	00813403          	ld	s0,8(sp)
    800041b8:	01010113          	addi	sp,sp,16
    800041bc:	00008067          	ret
    800041c0:	0000006f          	j	800041c0 <uartputc_sync+0x40>

00000000800041c4 <uartstart>:
    800041c4:	ff010113          	addi	sp,sp,-16
    800041c8:	00813423          	sd	s0,8(sp)
    800041cc:	01010413          	addi	s0,sp,16
    800041d0:	00002617          	auipc	a2,0x2
    800041d4:	e1060613          	addi	a2,a2,-496 # 80005fe0 <uart_tx_r>
    800041d8:	00002517          	auipc	a0,0x2
    800041dc:	e1050513          	addi	a0,a0,-496 # 80005fe8 <uart_tx_w>
    800041e0:	00063783          	ld	a5,0(a2)
    800041e4:	00053703          	ld	a4,0(a0)
    800041e8:	04f70263          	beq	a4,a5,8000422c <uartstart+0x68>
    800041ec:	100005b7          	lui	a1,0x10000
    800041f0:	00003817          	auipc	a6,0x3
    800041f4:	09080813          	addi	a6,a6,144 # 80007280 <uart_tx_buf>
    800041f8:	01c0006f          	j	80004214 <uartstart+0x50>
    800041fc:	0006c703          	lbu	a4,0(a3)
    80004200:	00f63023          	sd	a5,0(a2)
    80004204:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004208:	00063783          	ld	a5,0(a2)
    8000420c:	00053703          	ld	a4,0(a0)
    80004210:	00f70e63          	beq	a4,a5,8000422c <uartstart+0x68>
    80004214:	01f7f713          	andi	a4,a5,31
    80004218:	00e806b3          	add	a3,a6,a4
    8000421c:	0055c703          	lbu	a4,5(a1)
    80004220:	00178793          	addi	a5,a5,1
    80004224:	02077713          	andi	a4,a4,32
    80004228:	fc071ae3          	bnez	a4,800041fc <uartstart+0x38>
    8000422c:	00813403          	ld	s0,8(sp)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret

0000000080004238 <uartgetc>:
    80004238:	ff010113          	addi	sp,sp,-16
    8000423c:	00813423          	sd	s0,8(sp)
    80004240:	01010413          	addi	s0,sp,16
    80004244:	10000737          	lui	a4,0x10000
    80004248:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000424c:	0017f793          	andi	a5,a5,1
    80004250:	00078c63          	beqz	a5,80004268 <uartgetc+0x30>
    80004254:	00074503          	lbu	a0,0(a4)
    80004258:	0ff57513          	andi	a0,a0,255
    8000425c:	00813403          	ld	s0,8(sp)
    80004260:	01010113          	addi	sp,sp,16
    80004264:	00008067          	ret
    80004268:	fff00513          	li	a0,-1
    8000426c:	ff1ff06f          	j	8000425c <uartgetc+0x24>

0000000080004270 <uartintr>:
    80004270:	100007b7          	lui	a5,0x10000
    80004274:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004278:	0017f793          	andi	a5,a5,1
    8000427c:	0a078463          	beqz	a5,80004324 <uartintr+0xb4>
    80004280:	fe010113          	addi	sp,sp,-32
    80004284:	00813823          	sd	s0,16(sp)
    80004288:	00913423          	sd	s1,8(sp)
    8000428c:	00113c23          	sd	ra,24(sp)
    80004290:	02010413          	addi	s0,sp,32
    80004294:	100004b7          	lui	s1,0x10000
    80004298:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000429c:	0ff57513          	andi	a0,a0,255
    800042a0:	fffff097          	auipc	ra,0xfffff
    800042a4:	534080e7          	jalr	1332(ra) # 800037d4 <consoleintr>
    800042a8:	0054c783          	lbu	a5,5(s1)
    800042ac:	0017f793          	andi	a5,a5,1
    800042b0:	fe0794e3          	bnez	a5,80004298 <uartintr+0x28>
    800042b4:	00002617          	auipc	a2,0x2
    800042b8:	d2c60613          	addi	a2,a2,-724 # 80005fe0 <uart_tx_r>
    800042bc:	00002517          	auipc	a0,0x2
    800042c0:	d2c50513          	addi	a0,a0,-724 # 80005fe8 <uart_tx_w>
    800042c4:	00063783          	ld	a5,0(a2)
    800042c8:	00053703          	ld	a4,0(a0)
    800042cc:	04f70263          	beq	a4,a5,80004310 <uartintr+0xa0>
    800042d0:	100005b7          	lui	a1,0x10000
    800042d4:	00003817          	auipc	a6,0x3
    800042d8:	fac80813          	addi	a6,a6,-84 # 80007280 <uart_tx_buf>
    800042dc:	01c0006f          	j	800042f8 <uartintr+0x88>
    800042e0:	0006c703          	lbu	a4,0(a3)
    800042e4:	00f63023          	sd	a5,0(a2)
    800042e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800042ec:	00063783          	ld	a5,0(a2)
    800042f0:	00053703          	ld	a4,0(a0)
    800042f4:	00f70e63          	beq	a4,a5,80004310 <uartintr+0xa0>
    800042f8:	01f7f713          	andi	a4,a5,31
    800042fc:	00e806b3          	add	a3,a6,a4
    80004300:	0055c703          	lbu	a4,5(a1)
    80004304:	00178793          	addi	a5,a5,1
    80004308:	02077713          	andi	a4,a4,32
    8000430c:	fc071ae3          	bnez	a4,800042e0 <uartintr+0x70>
    80004310:	01813083          	ld	ra,24(sp)
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	00813483          	ld	s1,8(sp)
    8000431c:	02010113          	addi	sp,sp,32
    80004320:	00008067          	ret
    80004324:	00002617          	auipc	a2,0x2
    80004328:	cbc60613          	addi	a2,a2,-836 # 80005fe0 <uart_tx_r>
    8000432c:	00002517          	auipc	a0,0x2
    80004330:	cbc50513          	addi	a0,a0,-836 # 80005fe8 <uart_tx_w>
    80004334:	00063783          	ld	a5,0(a2)
    80004338:	00053703          	ld	a4,0(a0)
    8000433c:	04f70263          	beq	a4,a5,80004380 <uartintr+0x110>
    80004340:	100005b7          	lui	a1,0x10000
    80004344:	00003817          	auipc	a6,0x3
    80004348:	f3c80813          	addi	a6,a6,-196 # 80007280 <uart_tx_buf>
    8000434c:	01c0006f          	j	80004368 <uartintr+0xf8>
    80004350:	0006c703          	lbu	a4,0(a3)
    80004354:	00f63023          	sd	a5,0(a2)
    80004358:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000435c:	00063783          	ld	a5,0(a2)
    80004360:	00053703          	ld	a4,0(a0)
    80004364:	02f70063          	beq	a4,a5,80004384 <uartintr+0x114>
    80004368:	01f7f713          	andi	a4,a5,31
    8000436c:	00e806b3          	add	a3,a6,a4
    80004370:	0055c703          	lbu	a4,5(a1)
    80004374:	00178793          	addi	a5,a5,1
    80004378:	02077713          	andi	a4,a4,32
    8000437c:	fc071ae3          	bnez	a4,80004350 <uartintr+0xe0>
    80004380:	00008067          	ret
    80004384:	00008067          	ret

0000000080004388 <kinit>:
    80004388:	fc010113          	addi	sp,sp,-64
    8000438c:	02913423          	sd	s1,40(sp)
    80004390:	fffff7b7          	lui	a5,0xfffff
    80004394:	00004497          	auipc	s1,0x4
    80004398:	f0b48493          	addi	s1,s1,-245 # 8000829f <end+0xfff>
    8000439c:	02813823          	sd	s0,48(sp)
    800043a0:	01313c23          	sd	s3,24(sp)
    800043a4:	00f4f4b3          	and	s1,s1,a5
    800043a8:	02113c23          	sd	ra,56(sp)
    800043ac:	03213023          	sd	s2,32(sp)
    800043b0:	01413823          	sd	s4,16(sp)
    800043b4:	01513423          	sd	s5,8(sp)
    800043b8:	04010413          	addi	s0,sp,64
    800043bc:	000017b7          	lui	a5,0x1
    800043c0:	01100993          	li	s3,17
    800043c4:	00f487b3          	add	a5,s1,a5
    800043c8:	01b99993          	slli	s3,s3,0x1b
    800043cc:	06f9e063          	bltu	s3,a5,8000442c <kinit+0xa4>
    800043d0:	00003a97          	auipc	s5,0x3
    800043d4:	ed0a8a93          	addi	s5,s5,-304 # 800072a0 <end>
    800043d8:	0754ec63          	bltu	s1,s5,80004450 <kinit+0xc8>
    800043dc:	0734fa63          	bgeu	s1,s3,80004450 <kinit+0xc8>
    800043e0:	00088a37          	lui	s4,0x88
    800043e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800043e8:	00002917          	auipc	s2,0x2
    800043ec:	c0890913          	addi	s2,s2,-1016 # 80005ff0 <kmem>
    800043f0:	00ca1a13          	slli	s4,s4,0xc
    800043f4:	0140006f          	j	80004408 <kinit+0x80>
    800043f8:	000017b7          	lui	a5,0x1
    800043fc:	00f484b3          	add	s1,s1,a5
    80004400:	0554e863          	bltu	s1,s5,80004450 <kinit+0xc8>
    80004404:	0534f663          	bgeu	s1,s3,80004450 <kinit+0xc8>
    80004408:	00001637          	lui	a2,0x1
    8000440c:	00100593          	li	a1,1
    80004410:	00048513          	mv	a0,s1
    80004414:	00000097          	auipc	ra,0x0
    80004418:	5e4080e7          	jalr	1508(ra) # 800049f8 <__memset>
    8000441c:	00093783          	ld	a5,0(s2)
    80004420:	00f4b023          	sd	a5,0(s1)
    80004424:	00993023          	sd	s1,0(s2)
    80004428:	fd4498e3          	bne	s1,s4,800043f8 <kinit+0x70>
    8000442c:	03813083          	ld	ra,56(sp)
    80004430:	03013403          	ld	s0,48(sp)
    80004434:	02813483          	ld	s1,40(sp)
    80004438:	02013903          	ld	s2,32(sp)
    8000443c:	01813983          	ld	s3,24(sp)
    80004440:	01013a03          	ld	s4,16(sp)
    80004444:	00813a83          	ld	s5,8(sp)
    80004448:	04010113          	addi	sp,sp,64
    8000444c:	00008067          	ret
    80004450:	00001517          	auipc	a0,0x1
    80004454:	06850513          	addi	a0,a0,104 # 800054b8 <digits+0x18>
    80004458:	fffff097          	auipc	ra,0xfffff
    8000445c:	4b4080e7          	jalr	1204(ra) # 8000390c <panic>

0000000080004460 <freerange>:
    80004460:	fc010113          	addi	sp,sp,-64
    80004464:	000017b7          	lui	a5,0x1
    80004468:	02913423          	sd	s1,40(sp)
    8000446c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004470:	009504b3          	add	s1,a0,s1
    80004474:	fffff537          	lui	a0,0xfffff
    80004478:	02813823          	sd	s0,48(sp)
    8000447c:	02113c23          	sd	ra,56(sp)
    80004480:	03213023          	sd	s2,32(sp)
    80004484:	01313c23          	sd	s3,24(sp)
    80004488:	01413823          	sd	s4,16(sp)
    8000448c:	01513423          	sd	s5,8(sp)
    80004490:	01613023          	sd	s6,0(sp)
    80004494:	04010413          	addi	s0,sp,64
    80004498:	00a4f4b3          	and	s1,s1,a0
    8000449c:	00f487b3          	add	a5,s1,a5
    800044a0:	06f5e463          	bltu	a1,a5,80004508 <freerange+0xa8>
    800044a4:	00003a97          	auipc	s5,0x3
    800044a8:	dfca8a93          	addi	s5,s5,-516 # 800072a0 <end>
    800044ac:	0954e263          	bltu	s1,s5,80004530 <freerange+0xd0>
    800044b0:	01100993          	li	s3,17
    800044b4:	01b99993          	slli	s3,s3,0x1b
    800044b8:	0734fc63          	bgeu	s1,s3,80004530 <freerange+0xd0>
    800044bc:	00058a13          	mv	s4,a1
    800044c0:	00002917          	auipc	s2,0x2
    800044c4:	b3090913          	addi	s2,s2,-1232 # 80005ff0 <kmem>
    800044c8:	00002b37          	lui	s6,0x2
    800044cc:	0140006f          	j	800044e0 <freerange+0x80>
    800044d0:	000017b7          	lui	a5,0x1
    800044d4:	00f484b3          	add	s1,s1,a5
    800044d8:	0554ec63          	bltu	s1,s5,80004530 <freerange+0xd0>
    800044dc:	0534fa63          	bgeu	s1,s3,80004530 <freerange+0xd0>
    800044e0:	00001637          	lui	a2,0x1
    800044e4:	00100593          	li	a1,1
    800044e8:	00048513          	mv	a0,s1
    800044ec:	00000097          	auipc	ra,0x0
    800044f0:	50c080e7          	jalr	1292(ra) # 800049f8 <__memset>
    800044f4:	00093703          	ld	a4,0(s2)
    800044f8:	016487b3          	add	a5,s1,s6
    800044fc:	00e4b023          	sd	a4,0(s1)
    80004500:	00993023          	sd	s1,0(s2)
    80004504:	fcfa76e3          	bgeu	s4,a5,800044d0 <freerange+0x70>
    80004508:	03813083          	ld	ra,56(sp)
    8000450c:	03013403          	ld	s0,48(sp)
    80004510:	02813483          	ld	s1,40(sp)
    80004514:	02013903          	ld	s2,32(sp)
    80004518:	01813983          	ld	s3,24(sp)
    8000451c:	01013a03          	ld	s4,16(sp)
    80004520:	00813a83          	ld	s5,8(sp)
    80004524:	00013b03          	ld	s6,0(sp)
    80004528:	04010113          	addi	sp,sp,64
    8000452c:	00008067          	ret
    80004530:	00001517          	auipc	a0,0x1
    80004534:	f8850513          	addi	a0,a0,-120 # 800054b8 <digits+0x18>
    80004538:	fffff097          	auipc	ra,0xfffff
    8000453c:	3d4080e7          	jalr	980(ra) # 8000390c <panic>

0000000080004540 <kfree>:
    80004540:	fe010113          	addi	sp,sp,-32
    80004544:	00813823          	sd	s0,16(sp)
    80004548:	00113c23          	sd	ra,24(sp)
    8000454c:	00913423          	sd	s1,8(sp)
    80004550:	02010413          	addi	s0,sp,32
    80004554:	03451793          	slli	a5,a0,0x34
    80004558:	04079c63          	bnez	a5,800045b0 <kfree+0x70>
    8000455c:	00003797          	auipc	a5,0x3
    80004560:	d4478793          	addi	a5,a5,-700 # 800072a0 <end>
    80004564:	00050493          	mv	s1,a0
    80004568:	04f56463          	bltu	a0,a5,800045b0 <kfree+0x70>
    8000456c:	01100793          	li	a5,17
    80004570:	01b79793          	slli	a5,a5,0x1b
    80004574:	02f57e63          	bgeu	a0,a5,800045b0 <kfree+0x70>
    80004578:	00001637          	lui	a2,0x1
    8000457c:	00100593          	li	a1,1
    80004580:	00000097          	auipc	ra,0x0
    80004584:	478080e7          	jalr	1144(ra) # 800049f8 <__memset>
    80004588:	00002797          	auipc	a5,0x2
    8000458c:	a6878793          	addi	a5,a5,-1432 # 80005ff0 <kmem>
    80004590:	0007b703          	ld	a4,0(a5)
    80004594:	01813083          	ld	ra,24(sp)
    80004598:	01013403          	ld	s0,16(sp)
    8000459c:	00e4b023          	sd	a4,0(s1)
    800045a0:	0097b023          	sd	s1,0(a5)
    800045a4:	00813483          	ld	s1,8(sp)
    800045a8:	02010113          	addi	sp,sp,32
    800045ac:	00008067          	ret
    800045b0:	00001517          	auipc	a0,0x1
    800045b4:	f0850513          	addi	a0,a0,-248 # 800054b8 <digits+0x18>
    800045b8:	fffff097          	auipc	ra,0xfffff
    800045bc:	354080e7          	jalr	852(ra) # 8000390c <panic>

00000000800045c0 <kalloc>:
    800045c0:	fe010113          	addi	sp,sp,-32
    800045c4:	00813823          	sd	s0,16(sp)
    800045c8:	00913423          	sd	s1,8(sp)
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	02010413          	addi	s0,sp,32
    800045d4:	00002797          	auipc	a5,0x2
    800045d8:	a1c78793          	addi	a5,a5,-1508 # 80005ff0 <kmem>
    800045dc:	0007b483          	ld	s1,0(a5)
    800045e0:	02048063          	beqz	s1,80004600 <kalloc+0x40>
    800045e4:	0004b703          	ld	a4,0(s1)
    800045e8:	00001637          	lui	a2,0x1
    800045ec:	00500593          	li	a1,5
    800045f0:	00048513          	mv	a0,s1
    800045f4:	00e7b023          	sd	a4,0(a5)
    800045f8:	00000097          	auipc	ra,0x0
    800045fc:	400080e7          	jalr	1024(ra) # 800049f8 <__memset>
    80004600:	01813083          	ld	ra,24(sp)
    80004604:	01013403          	ld	s0,16(sp)
    80004608:	00048513          	mv	a0,s1
    8000460c:	00813483          	ld	s1,8(sp)
    80004610:	02010113          	addi	sp,sp,32
    80004614:	00008067          	ret

0000000080004618 <initlock>:
    80004618:	ff010113          	addi	sp,sp,-16
    8000461c:	00813423          	sd	s0,8(sp)
    80004620:	01010413          	addi	s0,sp,16
    80004624:	00813403          	ld	s0,8(sp)
    80004628:	00b53423          	sd	a1,8(a0)
    8000462c:	00052023          	sw	zero,0(a0)
    80004630:	00053823          	sd	zero,16(a0)
    80004634:	01010113          	addi	sp,sp,16
    80004638:	00008067          	ret

000000008000463c <acquire>:
    8000463c:	fe010113          	addi	sp,sp,-32
    80004640:	00813823          	sd	s0,16(sp)
    80004644:	00913423          	sd	s1,8(sp)
    80004648:	00113c23          	sd	ra,24(sp)
    8000464c:	01213023          	sd	s2,0(sp)
    80004650:	02010413          	addi	s0,sp,32
    80004654:	00050493          	mv	s1,a0
    80004658:	10002973          	csrr	s2,sstatus
    8000465c:	100027f3          	csrr	a5,sstatus
    80004660:	ffd7f793          	andi	a5,a5,-3
    80004664:	10079073          	csrw	sstatus,a5
    80004668:	fffff097          	auipc	ra,0xfffff
    8000466c:	8ec080e7          	jalr	-1812(ra) # 80002f54 <mycpu>
    80004670:	07852783          	lw	a5,120(a0)
    80004674:	06078e63          	beqz	a5,800046f0 <acquire+0xb4>
    80004678:	fffff097          	auipc	ra,0xfffff
    8000467c:	8dc080e7          	jalr	-1828(ra) # 80002f54 <mycpu>
    80004680:	07852783          	lw	a5,120(a0)
    80004684:	0004a703          	lw	a4,0(s1)
    80004688:	0017879b          	addiw	a5,a5,1
    8000468c:	06f52c23          	sw	a5,120(a0)
    80004690:	04071063          	bnez	a4,800046d0 <acquire+0x94>
    80004694:	00100713          	li	a4,1
    80004698:	00070793          	mv	a5,a4
    8000469c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800046a0:	0007879b          	sext.w	a5,a5
    800046a4:	fe079ae3          	bnez	a5,80004698 <acquire+0x5c>
    800046a8:	0ff0000f          	fence
    800046ac:	fffff097          	auipc	ra,0xfffff
    800046b0:	8a8080e7          	jalr	-1880(ra) # 80002f54 <mycpu>
    800046b4:	01813083          	ld	ra,24(sp)
    800046b8:	01013403          	ld	s0,16(sp)
    800046bc:	00a4b823          	sd	a0,16(s1)
    800046c0:	00013903          	ld	s2,0(sp)
    800046c4:	00813483          	ld	s1,8(sp)
    800046c8:	02010113          	addi	sp,sp,32
    800046cc:	00008067          	ret
    800046d0:	0104b903          	ld	s2,16(s1)
    800046d4:	fffff097          	auipc	ra,0xfffff
    800046d8:	880080e7          	jalr	-1920(ra) # 80002f54 <mycpu>
    800046dc:	faa91ce3          	bne	s2,a0,80004694 <acquire+0x58>
    800046e0:	00001517          	auipc	a0,0x1
    800046e4:	de050513          	addi	a0,a0,-544 # 800054c0 <digits+0x20>
    800046e8:	fffff097          	auipc	ra,0xfffff
    800046ec:	224080e7          	jalr	548(ra) # 8000390c <panic>
    800046f0:	00195913          	srli	s2,s2,0x1
    800046f4:	fffff097          	auipc	ra,0xfffff
    800046f8:	860080e7          	jalr	-1952(ra) # 80002f54 <mycpu>
    800046fc:	00197913          	andi	s2,s2,1
    80004700:	07252e23          	sw	s2,124(a0)
    80004704:	f75ff06f          	j	80004678 <acquire+0x3c>

0000000080004708 <release>:
    80004708:	fe010113          	addi	sp,sp,-32
    8000470c:	00813823          	sd	s0,16(sp)
    80004710:	00113c23          	sd	ra,24(sp)
    80004714:	00913423          	sd	s1,8(sp)
    80004718:	01213023          	sd	s2,0(sp)
    8000471c:	02010413          	addi	s0,sp,32
    80004720:	00052783          	lw	a5,0(a0)
    80004724:	00079a63          	bnez	a5,80004738 <release+0x30>
    80004728:	00001517          	auipc	a0,0x1
    8000472c:	da050513          	addi	a0,a0,-608 # 800054c8 <digits+0x28>
    80004730:	fffff097          	auipc	ra,0xfffff
    80004734:	1dc080e7          	jalr	476(ra) # 8000390c <panic>
    80004738:	01053903          	ld	s2,16(a0)
    8000473c:	00050493          	mv	s1,a0
    80004740:	fffff097          	auipc	ra,0xfffff
    80004744:	814080e7          	jalr	-2028(ra) # 80002f54 <mycpu>
    80004748:	fea910e3          	bne	s2,a0,80004728 <release+0x20>
    8000474c:	0004b823          	sd	zero,16(s1)
    80004750:	0ff0000f          	fence
    80004754:	0f50000f          	fence	iorw,ow
    80004758:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000475c:	ffffe097          	auipc	ra,0xffffe
    80004760:	7f8080e7          	jalr	2040(ra) # 80002f54 <mycpu>
    80004764:	100027f3          	csrr	a5,sstatus
    80004768:	0027f793          	andi	a5,a5,2
    8000476c:	04079a63          	bnez	a5,800047c0 <release+0xb8>
    80004770:	07852783          	lw	a5,120(a0)
    80004774:	02f05e63          	blez	a5,800047b0 <release+0xa8>
    80004778:	fff7871b          	addiw	a4,a5,-1
    8000477c:	06e52c23          	sw	a4,120(a0)
    80004780:	00071c63          	bnez	a4,80004798 <release+0x90>
    80004784:	07c52783          	lw	a5,124(a0)
    80004788:	00078863          	beqz	a5,80004798 <release+0x90>
    8000478c:	100027f3          	csrr	a5,sstatus
    80004790:	0027e793          	ori	a5,a5,2
    80004794:	10079073          	csrw	sstatus,a5
    80004798:	01813083          	ld	ra,24(sp)
    8000479c:	01013403          	ld	s0,16(sp)
    800047a0:	00813483          	ld	s1,8(sp)
    800047a4:	00013903          	ld	s2,0(sp)
    800047a8:	02010113          	addi	sp,sp,32
    800047ac:	00008067          	ret
    800047b0:	00001517          	auipc	a0,0x1
    800047b4:	d3850513          	addi	a0,a0,-712 # 800054e8 <digits+0x48>
    800047b8:	fffff097          	auipc	ra,0xfffff
    800047bc:	154080e7          	jalr	340(ra) # 8000390c <panic>
    800047c0:	00001517          	auipc	a0,0x1
    800047c4:	d1050513          	addi	a0,a0,-752 # 800054d0 <digits+0x30>
    800047c8:	fffff097          	auipc	ra,0xfffff
    800047cc:	144080e7          	jalr	324(ra) # 8000390c <panic>

00000000800047d0 <holding>:
    800047d0:	00052783          	lw	a5,0(a0)
    800047d4:	00079663          	bnez	a5,800047e0 <holding+0x10>
    800047d8:	00000513          	li	a0,0
    800047dc:	00008067          	ret
    800047e0:	fe010113          	addi	sp,sp,-32
    800047e4:	00813823          	sd	s0,16(sp)
    800047e8:	00913423          	sd	s1,8(sp)
    800047ec:	00113c23          	sd	ra,24(sp)
    800047f0:	02010413          	addi	s0,sp,32
    800047f4:	01053483          	ld	s1,16(a0)
    800047f8:	ffffe097          	auipc	ra,0xffffe
    800047fc:	75c080e7          	jalr	1884(ra) # 80002f54 <mycpu>
    80004800:	01813083          	ld	ra,24(sp)
    80004804:	01013403          	ld	s0,16(sp)
    80004808:	40a48533          	sub	a0,s1,a0
    8000480c:	00153513          	seqz	a0,a0
    80004810:	00813483          	ld	s1,8(sp)
    80004814:	02010113          	addi	sp,sp,32
    80004818:	00008067          	ret

000000008000481c <push_off>:
    8000481c:	fe010113          	addi	sp,sp,-32
    80004820:	00813823          	sd	s0,16(sp)
    80004824:	00113c23          	sd	ra,24(sp)
    80004828:	00913423          	sd	s1,8(sp)
    8000482c:	02010413          	addi	s0,sp,32
    80004830:	100024f3          	csrr	s1,sstatus
    80004834:	100027f3          	csrr	a5,sstatus
    80004838:	ffd7f793          	andi	a5,a5,-3
    8000483c:	10079073          	csrw	sstatus,a5
    80004840:	ffffe097          	auipc	ra,0xffffe
    80004844:	714080e7          	jalr	1812(ra) # 80002f54 <mycpu>
    80004848:	07852783          	lw	a5,120(a0)
    8000484c:	02078663          	beqz	a5,80004878 <push_off+0x5c>
    80004850:	ffffe097          	auipc	ra,0xffffe
    80004854:	704080e7          	jalr	1796(ra) # 80002f54 <mycpu>
    80004858:	07852783          	lw	a5,120(a0)
    8000485c:	01813083          	ld	ra,24(sp)
    80004860:	01013403          	ld	s0,16(sp)
    80004864:	0017879b          	addiw	a5,a5,1
    80004868:	06f52c23          	sw	a5,120(a0)
    8000486c:	00813483          	ld	s1,8(sp)
    80004870:	02010113          	addi	sp,sp,32
    80004874:	00008067          	ret
    80004878:	0014d493          	srli	s1,s1,0x1
    8000487c:	ffffe097          	auipc	ra,0xffffe
    80004880:	6d8080e7          	jalr	1752(ra) # 80002f54 <mycpu>
    80004884:	0014f493          	andi	s1,s1,1
    80004888:	06952e23          	sw	s1,124(a0)
    8000488c:	fc5ff06f          	j	80004850 <push_off+0x34>

0000000080004890 <pop_off>:
    80004890:	ff010113          	addi	sp,sp,-16
    80004894:	00813023          	sd	s0,0(sp)
    80004898:	00113423          	sd	ra,8(sp)
    8000489c:	01010413          	addi	s0,sp,16
    800048a0:	ffffe097          	auipc	ra,0xffffe
    800048a4:	6b4080e7          	jalr	1716(ra) # 80002f54 <mycpu>
    800048a8:	100027f3          	csrr	a5,sstatus
    800048ac:	0027f793          	andi	a5,a5,2
    800048b0:	04079663          	bnez	a5,800048fc <pop_off+0x6c>
    800048b4:	07852783          	lw	a5,120(a0)
    800048b8:	02f05a63          	blez	a5,800048ec <pop_off+0x5c>
    800048bc:	fff7871b          	addiw	a4,a5,-1
    800048c0:	06e52c23          	sw	a4,120(a0)
    800048c4:	00071c63          	bnez	a4,800048dc <pop_off+0x4c>
    800048c8:	07c52783          	lw	a5,124(a0)
    800048cc:	00078863          	beqz	a5,800048dc <pop_off+0x4c>
    800048d0:	100027f3          	csrr	a5,sstatus
    800048d4:	0027e793          	ori	a5,a5,2
    800048d8:	10079073          	csrw	sstatus,a5
    800048dc:	00813083          	ld	ra,8(sp)
    800048e0:	00013403          	ld	s0,0(sp)
    800048e4:	01010113          	addi	sp,sp,16
    800048e8:	00008067          	ret
    800048ec:	00001517          	auipc	a0,0x1
    800048f0:	bfc50513          	addi	a0,a0,-1028 # 800054e8 <digits+0x48>
    800048f4:	fffff097          	auipc	ra,0xfffff
    800048f8:	018080e7          	jalr	24(ra) # 8000390c <panic>
    800048fc:	00001517          	auipc	a0,0x1
    80004900:	bd450513          	addi	a0,a0,-1068 # 800054d0 <digits+0x30>
    80004904:	fffff097          	auipc	ra,0xfffff
    80004908:	008080e7          	jalr	8(ra) # 8000390c <panic>

000000008000490c <push_on>:
    8000490c:	fe010113          	addi	sp,sp,-32
    80004910:	00813823          	sd	s0,16(sp)
    80004914:	00113c23          	sd	ra,24(sp)
    80004918:	00913423          	sd	s1,8(sp)
    8000491c:	02010413          	addi	s0,sp,32
    80004920:	100024f3          	csrr	s1,sstatus
    80004924:	100027f3          	csrr	a5,sstatus
    80004928:	0027e793          	ori	a5,a5,2
    8000492c:	10079073          	csrw	sstatus,a5
    80004930:	ffffe097          	auipc	ra,0xffffe
    80004934:	624080e7          	jalr	1572(ra) # 80002f54 <mycpu>
    80004938:	07852783          	lw	a5,120(a0)
    8000493c:	02078663          	beqz	a5,80004968 <push_on+0x5c>
    80004940:	ffffe097          	auipc	ra,0xffffe
    80004944:	614080e7          	jalr	1556(ra) # 80002f54 <mycpu>
    80004948:	07852783          	lw	a5,120(a0)
    8000494c:	01813083          	ld	ra,24(sp)
    80004950:	01013403          	ld	s0,16(sp)
    80004954:	0017879b          	addiw	a5,a5,1
    80004958:	06f52c23          	sw	a5,120(a0)
    8000495c:	00813483          	ld	s1,8(sp)
    80004960:	02010113          	addi	sp,sp,32
    80004964:	00008067          	ret
    80004968:	0014d493          	srli	s1,s1,0x1
    8000496c:	ffffe097          	auipc	ra,0xffffe
    80004970:	5e8080e7          	jalr	1512(ra) # 80002f54 <mycpu>
    80004974:	0014f493          	andi	s1,s1,1
    80004978:	06952e23          	sw	s1,124(a0)
    8000497c:	fc5ff06f          	j	80004940 <push_on+0x34>

0000000080004980 <pop_on>:
    80004980:	ff010113          	addi	sp,sp,-16
    80004984:	00813023          	sd	s0,0(sp)
    80004988:	00113423          	sd	ra,8(sp)
    8000498c:	01010413          	addi	s0,sp,16
    80004990:	ffffe097          	auipc	ra,0xffffe
    80004994:	5c4080e7          	jalr	1476(ra) # 80002f54 <mycpu>
    80004998:	100027f3          	csrr	a5,sstatus
    8000499c:	0027f793          	andi	a5,a5,2
    800049a0:	04078463          	beqz	a5,800049e8 <pop_on+0x68>
    800049a4:	07852783          	lw	a5,120(a0)
    800049a8:	02f05863          	blez	a5,800049d8 <pop_on+0x58>
    800049ac:	fff7879b          	addiw	a5,a5,-1
    800049b0:	06f52c23          	sw	a5,120(a0)
    800049b4:	07853783          	ld	a5,120(a0)
    800049b8:	00079863          	bnez	a5,800049c8 <pop_on+0x48>
    800049bc:	100027f3          	csrr	a5,sstatus
    800049c0:	ffd7f793          	andi	a5,a5,-3
    800049c4:	10079073          	csrw	sstatus,a5
    800049c8:	00813083          	ld	ra,8(sp)
    800049cc:	00013403          	ld	s0,0(sp)
    800049d0:	01010113          	addi	sp,sp,16
    800049d4:	00008067          	ret
    800049d8:	00001517          	auipc	a0,0x1
    800049dc:	b3850513          	addi	a0,a0,-1224 # 80005510 <digits+0x70>
    800049e0:	fffff097          	auipc	ra,0xfffff
    800049e4:	f2c080e7          	jalr	-212(ra) # 8000390c <panic>
    800049e8:	00001517          	auipc	a0,0x1
    800049ec:	b0850513          	addi	a0,a0,-1272 # 800054f0 <digits+0x50>
    800049f0:	fffff097          	auipc	ra,0xfffff
    800049f4:	f1c080e7          	jalr	-228(ra) # 8000390c <panic>

00000000800049f8 <__memset>:
    800049f8:	ff010113          	addi	sp,sp,-16
    800049fc:	00813423          	sd	s0,8(sp)
    80004a00:	01010413          	addi	s0,sp,16
    80004a04:	1a060e63          	beqz	a2,80004bc0 <__memset+0x1c8>
    80004a08:	40a007b3          	neg	a5,a0
    80004a0c:	0077f793          	andi	a5,a5,7
    80004a10:	00778693          	addi	a3,a5,7
    80004a14:	00b00813          	li	a6,11
    80004a18:	0ff5f593          	andi	a1,a1,255
    80004a1c:	fff6071b          	addiw	a4,a2,-1
    80004a20:	1b06e663          	bltu	a3,a6,80004bcc <__memset+0x1d4>
    80004a24:	1cd76463          	bltu	a4,a3,80004bec <__memset+0x1f4>
    80004a28:	1a078e63          	beqz	a5,80004be4 <__memset+0x1ec>
    80004a2c:	00b50023          	sb	a1,0(a0)
    80004a30:	00100713          	li	a4,1
    80004a34:	1ae78463          	beq	a5,a4,80004bdc <__memset+0x1e4>
    80004a38:	00b500a3          	sb	a1,1(a0)
    80004a3c:	00200713          	li	a4,2
    80004a40:	1ae78a63          	beq	a5,a4,80004bf4 <__memset+0x1fc>
    80004a44:	00b50123          	sb	a1,2(a0)
    80004a48:	00300713          	li	a4,3
    80004a4c:	18e78463          	beq	a5,a4,80004bd4 <__memset+0x1dc>
    80004a50:	00b501a3          	sb	a1,3(a0)
    80004a54:	00400713          	li	a4,4
    80004a58:	1ae78263          	beq	a5,a4,80004bfc <__memset+0x204>
    80004a5c:	00b50223          	sb	a1,4(a0)
    80004a60:	00500713          	li	a4,5
    80004a64:	1ae78063          	beq	a5,a4,80004c04 <__memset+0x20c>
    80004a68:	00b502a3          	sb	a1,5(a0)
    80004a6c:	00700713          	li	a4,7
    80004a70:	18e79e63          	bne	a5,a4,80004c0c <__memset+0x214>
    80004a74:	00b50323          	sb	a1,6(a0)
    80004a78:	00700e93          	li	t4,7
    80004a7c:	00859713          	slli	a4,a1,0x8
    80004a80:	00e5e733          	or	a4,a1,a4
    80004a84:	01059e13          	slli	t3,a1,0x10
    80004a88:	01c76e33          	or	t3,a4,t3
    80004a8c:	01859313          	slli	t1,a1,0x18
    80004a90:	006e6333          	or	t1,t3,t1
    80004a94:	02059893          	slli	a7,a1,0x20
    80004a98:	40f60e3b          	subw	t3,a2,a5
    80004a9c:	011368b3          	or	a7,t1,a7
    80004aa0:	02859813          	slli	a6,a1,0x28
    80004aa4:	0108e833          	or	a6,a7,a6
    80004aa8:	03059693          	slli	a3,a1,0x30
    80004aac:	003e589b          	srliw	a7,t3,0x3
    80004ab0:	00d866b3          	or	a3,a6,a3
    80004ab4:	03859713          	slli	a4,a1,0x38
    80004ab8:	00389813          	slli	a6,a7,0x3
    80004abc:	00f507b3          	add	a5,a0,a5
    80004ac0:	00e6e733          	or	a4,a3,a4
    80004ac4:	000e089b          	sext.w	a7,t3
    80004ac8:	00f806b3          	add	a3,a6,a5
    80004acc:	00e7b023          	sd	a4,0(a5)
    80004ad0:	00878793          	addi	a5,a5,8
    80004ad4:	fed79ce3          	bne	a5,a3,80004acc <__memset+0xd4>
    80004ad8:	ff8e7793          	andi	a5,t3,-8
    80004adc:	0007871b          	sext.w	a4,a5
    80004ae0:	01d787bb          	addw	a5,a5,t4
    80004ae4:	0ce88e63          	beq	a7,a4,80004bc0 <__memset+0x1c8>
    80004ae8:	00f50733          	add	a4,a0,a5
    80004aec:	00b70023          	sb	a1,0(a4)
    80004af0:	0017871b          	addiw	a4,a5,1
    80004af4:	0cc77663          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004af8:	00e50733          	add	a4,a0,a4
    80004afc:	00b70023          	sb	a1,0(a4)
    80004b00:	0027871b          	addiw	a4,a5,2
    80004b04:	0ac77e63          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b08:	00e50733          	add	a4,a0,a4
    80004b0c:	00b70023          	sb	a1,0(a4)
    80004b10:	0037871b          	addiw	a4,a5,3
    80004b14:	0ac77663          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b18:	00e50733          	add	a4,a0,a4
    80004b1c:	00b70023          	sb	a1,0(a4)
    80004b20:	0047871b          	addiw	a4,a5,4
    80004b24:	08c77e63          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b28:	00e50733          	add	a4,a0,a4
    80004b2c:	00b70023          	sb	a1,0(a4)
    80004b30:	0057871b          	addiw	a4,a5,5
    80004b34:	08c77663          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b38:	00e50733          	add	a4,a0,a4
    80004b3c:	00b70023          	sb	a1,0(a4)
    80004b40:	0067871b          	addiw	a4,a5,6
    80004b44:	06c77e63          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b48:	00e50733          	add	a4,a0,a4
    80004b4c:	00b70023          	sb	a1,0(a4)
    80004b50:	0077871b          	addiw	a4,a5,7
    80004b54:	06c77663          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b58:	00e50733          	add	a4,a0,a4
    80004b5c:	00b70023          	sb	a1,0(a4)
    80004b60:	0087871b          	addiw	a4,a5,8
    80004b64:	04c77e63          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b68:	00e50733          	add	a4,a0,a4
    80004b6c:	00b70023          	sb	a1,0(a4)
    80004b70:	0097871b          	addiw	a4,a5,9
    80004b74:	04c77663          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b78:	00e50733          	add	a4,a0,a4
    80004b7c:	00b70023          	sb	a1,0(a4)
    80004b80:	00a7871b          	addiw	a4,a5,10
    80004b84:	02c77e63          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b88:	00e50733          	add	a4,a0,a4
    80004b8c:	00b70023          	sb	a1,0(a4)
    80004b90:	00b7871b          	addiw	a4,a5,11
    80004b94:	02c77663          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004b98:	00e50733          	add	a4,a0,a4
    80004b9c:	00b70023          	sb	a1,0(a4)
    80004ba0:	00c7871b          	addiw	a4,a5,12
    80004ba4:	00c77e63          	bgeu	a4,a2,80004bc0 <__memset+0x1c8>
    80004ba8:	00e50733          	add	a4,a0,a4
    80004bac:	00b70023          	sb	a1,0(a4)
    80004bb0:	00d7879b          	addiw	a5,a5,13
    80004bb4:	00c7f663          	bgeu	a5,a2,80004bc0 <__memset+0x1c8>
    80004bb8:	00f507b3          	add	a5,a0,a5
    80004bbc:	00b78023          	sb	a1,0(a5)
    80004bc0:	00813403          	ld	s0,8(sp)
    80004bc4:	01010113          	addi	sp,sp,16
    80004bc8:	00008067          	ret
    80004bcc:	00b00693          	li	a3,11
    80004bd0:	e55ff06f          	j	80004a24 <__memset+0x2c>
    80004bd4:	00300e93          	li	t4,3
    80004bd8:	ea5ff06f          	j	80004a7c <__memset+0x84>
    80004bdc:	00100e93          	li	t4,1
    80004be0:	e9dff06f          	j	80004a7c <__memset+0x84>
    80004be4:	00000e93          	li	t4,0
    80004be8:	e95ff06f          	j	80004a7c <__memset+0x84>
    80004bec:	00000793          	li	a5,0
    80004bf0:	ef9ff06f          	j	80004ae8 <__memset+0xf0>
    80004bf4:	00200e93          	li	t4,2
    80004bf8:	e85ff06f          	j	80004a7c <__memset+0x84>
    80004bfc:	00400e93          	li	t4,4
    80004c00:	e7dff06f          	j	80004a7c <__memset+0x84>
    80004c04:	00500e93          	li	t4,5
    80004c08:	e75ff06f          	j	80004a7c <__memset+0x84>
    80004c0c:	00600e93          	li	t4,6
    80004c10:	e6dff06f          	j	80004a7c <__memset+0x84>

0000000080004c14 <__memmove>:
    80004c14:	ff010113          	addi	sp,sp,-16
    80004c18:	00813423          	sd	s0,8(sp)
    80004c1c:	01010413          	addi	s0,sp,16
    80004c20:	0e060863          	beqz	a2,80004d10 <__memmove+0xfc>
    80004c24:	fff6069b          	addiw	a3,a2,-1
    80004c28:	0006881b          	sext.w	a6,a3
    80004c2c:	0ea5e863          	bltu	a1,a0,80004d1c <__memmove+0x108>
    80004c30:	00758713          	addi	a4,a1,7
    80004c34:	00a5e7b3          	or	a5,a1,a0
    80004c38:	40a70733          	sub	a4,a4,a0
    80004c3c:	0077f793          	andi	a5,a5,7
    80004c40:	00f73713          	sltiu	a4,a4,15
    80004c44:	00174713          	xori	a4,a4,1
    80004c48:	0017b793          	seqz	a5,a5
    80004c4c:	00e7f7b3          	and	a5,a5,a4
    80004c50:	10078863          	beqz	a5,80004d60 <__memmove+0x14c>
    80004c54:	00900793          	li	a5,9
    80004c58:	1107f463          	bgeu	a5,a6,80004d60 <__memmove+0x14c>
    80004c5c:	0036581b          	srliw	a6,a2,0x3
    80004c60:	fff8081b          	addiw	a6,a6,-1
    80004c64:	02081813          	slli	a6,a6,0x20
    80004c68:	01d85893          	srli	a7,a6,0x1d
    80004c6c:	00858813          	addi	a6,a1,8
    80004c70:	00058793          	mv	a5,a1
    80004c74:	00050713          	mv	a4,a0
    80004c78:	01088833          	add	a6,a7,a6
    80004c7c:	0007b883          	ld	a7,0(a5)
    80004c80:	00878793          	addi	a5,a5,8
    80004c84:	00870713          	addi	a4,a4,8
    80004c88:	ff173c23          	sd	a7,-8(a4)
    80004c8c:	ff0798e3          	bne	a5,a6,80004c7c <__memmove+0x68>
    80004c90:	ff867713          	andi	a4,a2,-8
    80004c94:	02071793          	slli	a5,a4,0x20
    80004c98:	0207d793          	srli	a5,a5,0x20
    80004c9c:	00f585b3          	add	a1,a1,a5
    80004ca0:	40e686bb          	subw	a3,a3,a4
    80004ca4:	00f507b3          	add	a5,a0,a5
    80004ca8:	06e60463          	beq	a2,a4,80004d10 <__memmove+0xfc>
    80004cac:	0005c703          	lbu	a4,0(a1)
    80004cb0:	00e78023          	sb	a4,0(a5)
    80004cb4:	04068e63          	beqz	a3,80004d10 <__memmove+0xfc>
    80004cb8:	0015c603          	lbu	a2,1(a1)
    80004cbc:	00100713          	li	a4,1
    80004cc0:	00c780a3          	sb	a2,1(a5)
    80004cc4:	04e68663          	beq	a3,a4,80004d10 <__memmove+0xfc>
    80004cc8:	0025c603          	lbu	a2,2(a1)
    80004ccc:	00200713          	li	a4,2
    80004cd0:	00c78123          	sb	a2,2(a5)
    80004cd4:	02e68e63          	beq	a3,a4,80004d10 <__memmove+0xfc>
    80004cd8:	0035c603          	lbu	a2,3(a1)
    80004cdc:	00300713          	li	a4,3
    80004ce0:	00c781a3          	sb	a2,3(a5)
    80004ce4:	02e68663          	beq	a3,a4,80004d10 <__memmove+0xfc>
    80004ce8:	0045c603          	lbu	a2,4(a1)
    80004cec:	00400713          	li	a4,4
    80004cf0:	00c78223          	sb	a2,4(a5)
    80004cf4:	00e68e63          	beq	a3,a4,80004d10 <__memmove+0xfc>
    80004cf8:	0055c603          	lbu	a2,5(a1)
    80004cfc:	00500713          	li	a4,5
    80004d00:	00c782a3          	sb	a2,5(a5)
    80004d04:	00e68663          	beq	a3,a4,80004d10 <__memmove+0xfc>
    80004d08:	0065c703          	lbu	a4,6(a1)
    80004d0c:	00e78323          	sb	a4,6(a5)
    80004d10:	00813403          	ld	s0,8(sp)
    80004d14:	01010113          	addi	sp,sp,16
    80004d18:	00008067          	ret
    80004d1c:	02061713          	slli	a4,a2,0x20
    80004d20:	02075713          	srli	a4,a4,0x20
    80004d24:	00e587b3          	add	a5,a1,a4
    80004d28:	f0f574e3          	bgeu	a0,a5,80004c30 <__memmove+0x1c>
    80004d2c:	02069613          	slli	a2,a3,0x20
    80004d30:	02065613          	srli	a2,a2,0x20
    80004d34:	fff64613          	not	a2,a2
    80004d38:	00e50733          	add	a4,a0,a4
    80004d3c:	00c78633          	add	a2,a5,a2
    80004d40:	fff7c683          	lbu	a3,-1(a5)
    80004d44:	fff78793          	addi	a5,a5,-1
    80004d48:	fff70713          	addi	a4,a4,-1
    80004d4c:	00d70023          	sb	a3,0(a4)
    80004d50:	fec798e3          	bne	a5,a2,80004d40 <__memmove+0x12c>
    80004d54:	00813403          	ld	s0,8(sp)
    80004d58:	01010113          	addi	sp,sp,16
    80004d5c:	00008067          	ret
    80004d60:	02069713          	slli	a4,a3,0x20
    80004d64:	02075713          	srli	a4,a4,0x20
    80004d68:	00170713          	addi	a4,a4,1
    80004d6c:	00e50733          	add	a4,a0,a4
    80004d70:	00050793          	mv	a5,a0
    80004d74:	0005c683          	lbu	a3,0(a1)
    80004d78:	00178793          	addi	a5,a5,1
    80004d7c:	00158593          	addi	a1,a1,1
    80004d80:	fed78fa3          	sb	a3,-1(a5)
    80004d84:	fee798e3          	bne	a5,a4,80004d74 <__memmove+0x160>
    80004d88:	f89ff06f          	j	80004d10 <__memmove+0xfc>

0000000080004d8c <__putc>:
    80004d8c:	fe010113          	addi	sp,sp,-32
    80004d90:	00813823          	sd	s0,16(sp)
    80004d94:	00113c23          	sd	ra,24(sp)
    80004d98:	02010413          	addi	s0,sp,32
    80004d9c:	00050793          	mv	a5,a0
    80004da0:	fef40593          	addi	a1,s0,-17
    80004da4:	00100613          	li	a2,1
    80004da8:	00000513          	li	a0,0
    80004dac:	fef407a3          	sb	a5,-17(s0)
    80004db0:	fffff097          	auipc	ra,0xfffff
    80004db4:	b3c080e7          	jalr	-1220(ra) # 800038ec <console_write>
    80004db8:	01813083          	ld	ra,24(sp)
    80004dbc:	01013403          	ld	s0,16(sp)
    80004dc0:	02010113          	addi	sp,sp,32
    80004dc4:	00008067          	ret

0000000080004dc8 <__getc>:
    80004dc8:	fe010113          	addi	sp,sp,-32
    80004dcc:	00813823          	sd	s0,16(sp)
    80004dd0:	00113c23          	sd	ra,24(sp)
    80004dd4:	02010413          	addi	s0,sp,32
    80004dd8:	fe840593          	addi	a1,s0,-24
    80004ddc:	00100613          	li	a2,1
    80004de0:	00000513          	li	a0,0
    80004de4:	fffff097          	auipc	ra,0xfffff
    80004de8:	ae8080e7          	jalr	-1304(ra) # 800038cc <console_read>
    80004dec:	fe844503          	lbu	a0,-24(s0)
    80004df0:	01813083          	ld	ra,24(sp)
    80004df4:	01013403          	ld	s0,16(sp)
    80004df8:	02010113          	addi	sp,sp,32
    80004dfc:	00008067          	ret

0000000080004e00 <console_handler>:
    80004e00:	fe010113          	addi	sp,sp,-32
    80004e04:	00813823          	sd	s0,16(sp)
    80004e08:	00113c23          	sd	ra,24(sp)
    80004e0c:	00913423          	sd	s1,8(sp)
    80004e10:	02010413          	addi	s0,sp,32
    80004e14:	14202773          	csrr	a4,scause
    80004e18:	100027f3          	csrr	a5,sstatus
    80004e1c:	0027f793          	andi	a5,a5,2
    80004e20:	06079e63          	bnez	a5,80004e9c <console_handler+0x9c>
    80004e24:	00074c63          	bltz	a4,80004e3c <console_handler+0x3c>
    80004e28:	01813083          	ld	ra,24(sp)
    80004e2c:	01013403          	ld	s0,16(sp)
    80004e30:	00813483          	ld	s1,8(sp)
    80004e34:	02010113          	addi	sp,sp,32
    80004e38:	00008067          	ret
    80004e3c:	0ff77713          	andi	a4,a4,255
    80004e40:	00900793          	li	a5,9
    80004e44:	fef712e3          	bne	a4,a5,80004e28 <console_handler+0x28>
    80004e48:	ffffe097          	auipc	ra,0xffffe
    80004e4c:	6dc080e7          	jalr	1756(ra) # 80003524 <plic_claim>
    80004e50:	00a00793          	li	a5,10
    80004e54:	00050493          	mv	s1,a0
    80004e58:	02f50c63          	beq	a0,a5,80004e90 <console_handler+0x90>
    80004e5c:	fc0506e3          	beqz	a0,80004e28 <console_handler+0x28>
    80004e60:	00050593          	mv	a1,a0
    80004e64:	00000517          	auipc	a0,0x0
    80004e68:	5b450513          	addi	a0,a0,1460 # 80005418 <_ZZ12printIntegermE6digits+0xe0>
    80004e6c:	fffff097          	auipc	ra,0xfffff
    80004e70:	afc080e7          	jalr	-1284(ra) # 80003968 <__printf>
    80004e74:	01013403          	ld	s0,16(sp)
    80004e78:	01813083          	ld	ra,24(sp)
    80004e7c:	00048513          	mv	a0,s1
    80004e80:	00813483          	ld	s1,8(sp)
    80004e84:	02010113          	addi	sp,sp,32
    80004e88:	ffffe317          	auipc	t1,0xffffe
    80004e8c:	6d430067          	jr	1748(t1) # 8000355c <plic_complete>
    80004e90:	fffff097          	auipc	ra,0xfffff
    80004e94:	3e0080e7          	jalr	992(ra) # 80004270 <uartintr>
    80004e98:	fddff06f          	j	80004e74 <console_handler+0x74>
    80004e9c:	00000517          	auipc	a0,0x0
    80004ea0:	67c50513          	addi	a0,a0,1660 # 80005518 <digits+0x78>
    80004ea4:	fffff097          	auipc	ra,0xfffff
    80004ea8:	a68080e7          	jalr	-1432(ra) # 8000390c <panic>
	...

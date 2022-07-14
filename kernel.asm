
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	20813103          	ld	sp,520(sp) # 80004208 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	034010ef          	jal	ra,80001050 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <main>:
#include "../lib/console.h"

void main() {
    80001000:	ff010113          	addi	sp,sp,-16
    80001004:	00113423          	sd	ra,8(sp)
    80001008:	00813023          	sd	s0,0(sp)
    8000100c:	01010413          	addi	s0,sp,16
    __putc('O');
    80001010:	04f00513          	li	a0,79
    80001014:	00002097          	auipc	ra,0x2
    80001018:	0f8080e7          	jalr	248(ra) # 8000310c <__putc>
    __putc('S');
    8000101c:	05300513          	li	a0,83
    80001020:	00002097          	auipc	ra,0x2
    80001024:	0ec080e7          	jalr	236(ra) # 8000310c <__putc>
    __putc('1');
    80001028:	03100513          	li	a0,49
    8000102c:	00002097          	auipc	ra,0x2
    80001030:	0e0080e7          	jalr	224(ra) # 8000310c <__putc>

    while(1) {
        char character = __getc();
    80001034:	00002097          	auipc	ra,0x2
    80001038:	114080e7          	jalr	276(ra) # 80003148 <__getc>
        __putc(character + 30);
    8000103c:	01e5051b          	addiw	a0,a0,30
    80001040:	0ff57513          	andi	a0,a0,255
    80001044:	00002097          	auipc	ra,0x2
    80001048:	0c8080e7          	jalr	200(ra) # 8000310c <__putc>
    while(1) {
    8000104c:	fe9ff06f          	j	80001034 <main+0x34>

0000000080001050 <start>:
    80001050:	ff010113          	addi	sp,sp,-16
    80001054:	00813423          	sd	s0,8(sp)
    80001058:	01010413          	addi	s0,sp,16
    8000105c:	300027f3          	csrr	a5,mstatus
    80001060:	ffffe737          	lui	a4,0xffffe
    80001064:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff935f>
    80001068:	00e7f7b3          	and	a5,a5,a4
    8000106c:	00001737          	lui	a4,0x1
    80001070:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001074:	00e7e7b3          	or	a5,a5,a4
    80001078:	30079073          	csrw	mstatus,a5
    8000107c:	00000797          	auipc	a5,0x0
    80001080:	16078793          	addi	a5,a5,352 # 800011dc <system_main>
    80001084:	34179073          	csrw	mepc,a5
    80001088:	00000793          	li	a5,0
    8000108c:	18079073          	csrw	satp,a5
    80001090:	000107b7          	lui	a5,0x10
    80001094:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001098:	30279073          	csrw	medeleg,a5
    8000109c:	30379073          	csrw	mideleg,a5
    800010a0:	104027f3          	csrr	a5,sie
    800010a4:	2227e793          	ori	a5,a5,546
    800010a8:	10479073          	csrw	sie,a5
    800010ac:	fff00793          	li	a5,-1
    800010b0:	00a7d793          	srli	a5,a5,0xa
    800010b4:	3b079073          	csrw	pmpaddr0,a5
    800010b8:	00f00793          	li	a5,15
    800010bc:	3a079073          	csrw	pmpcfg0,a5
    800010c0:	f14027f3          	csrr	a5,mhartid
    800010c4:	0200c737          	lui	a4,0x200c
    800010c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800010cc:	0007869b          	sext.w	a3,a5
    800010d0:	00269713          	slli	a4,a3,0x2
    800010d4:	000f4637          	lui	a2,0xf4
    800010d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800010dc:	00d70733          	add	a4,a4,a3
    800010e0:	0037979b          	slliw	a5,a5,0x3
    800010e4:	020046b7          	lui	a3,0x2004
    800010e8:	00d787b3          	add	a5,a5,a3
    800010ec:	00c585b3          	add	a1,a1,a2
    800010f0:	00371693          	slli	a3,a4,0x3
    800010f4:	00003717          	auipc	a4,0x3
    800010f8:	15c70713          	addi	a4,a4,348 # 80004250 <timer_scratch>
    800010fc:	00b7b023          	sd	a1,0(a5)
    80001100:	00d70733          	add	a4,a4,a3
    80001104:	00f73c23          	sd	a5,24(a4)
    80001108:	02c73023          	sd	a2,32(a4)
    8000110c:	34071073          	csrw	mscratch,a4
    80001110:	00000797          	auipc	a5,0x0
    80001114:	6e078793          	addi	a5,a5,1760 # 800017f0 <timervec>
    80001118:	30579073          	csrw	mtvec,a5
    8000111c:	300027f3          	csrr	a5,mstatus
    80001120:	0087e793          	ori	a5,a5,8
    80001124:	30079073          	csrw	mstatus,a5
    80001128:	304027f3          	csrr	a5,mie
    8000112c:	0807e793          	ori	a5,a5,128
    80001130:	30479073          	csrw	mie,a5
    80001134:	f14027f3          	csrr	a5,mhartid
    80001138:	0007879b          	sext.w	a5,a5
    8000113c:	00078213          	mv	tp,a5
    80001140:	30200073          	mret
    80001144:	00813403          	ld	s0,8(sp)
    80001148:	01010113          	addi	sp,sp,16
    8000114c:	00008067          	ret

0000000080001150 <timerinit>:
    80001150:	ff010113          	addi	sp,sp,-16
    80001154:	00813423          	sd	s0,8(sp)
    80001158:	01010413          	addi	s0,sp,16
    8000115c:	f14027f3          	csrr	a5,mhartid
    80001160:	0200c737          	lui	a4,0x200c
    80001164:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001168:	0007869b          	sext.w	a3,a5
    8000116c:	00269713          	slli	a4,a3,0x2
    80001170:	000f4637          	lui	a2,0xf4
    80001174:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001178:	00d70733          	add	a4,a4,a3
    8000117c:	0037979b          	slliw	a5,a5,0x3
    80001180:	020046b7          	lui	a3,0x2004
    80001184:	00d787b3          	add	a5,a5,a3
    80001188:	00c585b3          	add	a1,a1,a2
    8000118c:	00371693          	slli	a3,a4,0x3
    80001190:	00003717          	auipc	a4,0x3
    80001194:	0c070713          	addi	a4,a4,192 # 80004250 <timer_scratch>
    80001198:	00b7b023          	sd	a1,0(a5)
    8000119c:	00d70733          	add	a4,a4,a3
    800011a0:	00f73c23          	sd	a5,24(a4)
    800011a4:	02c73023          	sd	a2,32(a4)
    800011a8:	34071073          	csrw	mscratch,a4
    800011ac:	00000797          	auipc	a5,0x0
    800011b0:	64478793          	addi	a5,a5,1604 # 800017f0 <timervec>
    800011b4:	30579073          	csrw	mtvec,a5
    800011b8:	300027f3          	csrr	a5,mstatus
    800011bc:	0087e793          	ori	a5,a5,8
    800011c0:	30079073          	csrw	mstatus,a5
    800011c4:	304027f3          	csrr	a5,mie
    800011c8:	0807e793          	ori	a5,a5,128
    800011cc:	30479073          	csrw	mie,a5
    800011d0:	00813403          	ld	s0,8(sp)
    800011d4:	01010113          	addi	sp,sp,16
    800011d8:	00008067          	ret

00000000800011dc <system_main>:
    800011dc:	fe010113          	addi	sp,sp,-32
    800011e0:	00813823          	sd	s0,16(sp)
    800011e4:	00913423          	sd	s1,8(sp)
    800011e8:	00113c23          	sd	ra,24(sp)
    800011ec:	02010413          	addi	s0,sp,32
    800011f0:	00000097          	auipc	ra,0x0
    800011f4:	0c4080e7          	jalr	196(ra) # 800012b4 <cpuid>
    800011f8:	00003497          	auipc	s1,0x3
    800011fc:	02848493          	addi	s1,s1,40 # 80004220 <started>
    80001200:	02050263          	beqz	a0,80001224 <system_main+0x48>
    80001204:	0004a783          	lw	a5,0(s1)
    80001208:	0007879b          	sext.w	a5,a5
    8000120c:	fe078ce3          	beqz	a5,80001204 <system_main+0x28>
    80001210:	0ff0000f          	fence
    80001214:	00003517          	auipc	a0,0x3
    80001218:	e1c50513          	addi	a0,a0,-484 # 80004030 <console_handler+0xeb0>
    8000121c:	00001097          	auipc	ra,0x1
    80001220:	a70080e7          	jalr	-1424(ra) # 80001c8c <panic>
    80001224:	00001097          	auipc	ra,0x1
    80001228:	9c4080e7          	jalr	-1596(ra) # 80001be8 <consoleinit>
    8000122c:	00001097          	auipc	ra,0x1
    80001230:	150080e7          	jalr	336(ra) # 8000237c <printfinit>
    80001234:	00003517          	auipc	a0,0x3
    80001238:	edc50513          	addi	a0,a0,-292 # 80004110 <console_handler+0xf90>
    8000123c:	00001097          	auipc	ra,0x1
    80001240:	aac080e7          	jalr	-1364(ra) # 80001ce8 <__printf>
    80001244:	00003517          	auipc	a0,0x3
    80001248:	dbc50513          	addi	a0,a0,-580 # 80004000 <console_handler+0xe80>
    8000124c:	00001097          	auipc	ra,0x1
    80001250:	a9c080e7          	jalr	-1380(ra) # 80001ce8 <__printf>
    80001254:	00003517          	auipc	a0,0x3
    80001258:	ebc50513          	addi	a0,a0,-324 # 80004110 <console_handler+0xf90>
    8000125c:	00001097          	auipc	ra,0x1
    80001260:	a8c080e7          	jalr	-1396(ra) # 80001ce8 <__printf>
    80001264:	00001097          	auipc	ra,0x1
    80001268:	4a4080e7          	jalr	1188(ra) # 80002708 <kinit>
    8000126c:	00000097          	auipc	ra,0x0
    80001270:	148080e7          	jalr	328(ra) # 800013b4 <trapinit>
    80001274:	00000097          	auipc	ra,0x0
    80001278:	16c080e7          	jalr	364(ra) # 800013e0 <trapinithart>
    8000127c:	00000097          	auipc	ra,0x0
    80001280:	5b4080e7          	jalr	1460(ra) # 80001830 <plicinit>
    80001284:	00000097          	auipc	ra,0x0
    80001288:	5d4080e7          	jalr	1492(ra) # 80001858 <plicinithart>
    8000128c:	00000097          	auipc	ra,0x0
    80001290:	078080e7          	jalr	120(ra) # 80001304 <userinit>
    80001294:	0ff0000f          	fence
    80001298:	00100793          	li	a5,1
    8000129c:	00003517          	auipc	a0,0x3
    800012a0:	d7c50513          	addi	a0,a0,-644 # 80004018 <console_handler+0xe98>
    800012a4:	00f4a023          	sw	a5,0(s1)
    800012a8:	00001097          	auipc	ra,0x1
    800012ac:	a40080e7          	jalr	-1472(ra) # 80001ce8 <__printf>
    800012b0:	0000006f          	j	800012b0 <system_main+0xd4>

00000000800012b4 <cpuid>:
    800012b4:	ff010113          	addi	sp,sp,-16
    800012b8:	00813423          	sd	s0,8(sp)
    800012bc:	01010413          	addi	s0,sp,16
    800012c0:	00020513          	mv	a0,tp
    800012c4:	00813403          	ld	s0,8(sp)
    800012c8:	0005051b          	sext.w	a0,a0
    800012cc:	01010113          	addi	sp,sp,16
    800012d0:	00008067          	ret

00000000800012d4 <mycpu>:
    800012d4:	ff010113          	addi	sp,sp,-16
    800012d8:	00813423          	sd	s0,8(sp)
    800012dc:	01010413          	addi	s0,sp,16
    800012e0:	00020793          	mv	a5,tp
    800012e4:	00813403          	ld	s0,8(sp)
    800012e8:	0007879b          	sext.w	a5,a5
    800012ec:	00779793          	slli	a5,a5,0x7
    800012f0:	00004517          	auipc	a0,0x4
    800012f4:	f9050513          	addi	a0,a0,-112 # 80005280 <cpus>
    800012f8:	00f50533          	add	a0,a0,a5
    800012fc:	01010113          	addi	sp,sp,16
    80001300:	00008067          	ret

0000000080001304 <userinit>:
    80001304:	ff010113          	addi	sp,sp,-16
    80001308:	00813423          	sd	s0,8(sp)
    8000130c:	01010413          	addi	s0,sp,16
    80001310:	00813403          	ld	s0,8(sp)
    80001314:	01010113          	addi	sp,sp,16
    80001318:	00000317          	auipc	t1,0x0
    8000131c:	ce830067          	jr	-792(t1) # 80001000 <main>

0000000080001320 <either_copyout>:
    80001320:	ff010113          	addi	sp,sp,-16
    80001324:	00813023          	sd	s0,0(sp)
    80001328:	00113423          	sd	ra,8(sp)
    8000132c:	01010413          	addi	s0,sp,16
    80001330:	02051663          	bnez	a0,8000135c <either_copyout+0x3c>
    80001334:	00058513          	mv	a0,a1
    80001338:	00060593          	mv	a1,a2
    8000133c:	0006861b          	sext.w	a2,a3
    80001340:	00002097          	auipc	ra,0x2
    80001344:	c54080e7          	jalr	-940(ra) # 80002f94 <__memmove>
    80001348:	00813083          	ld	ra,8(sp)
    8000134c:	00013403          	ld	s0,0(sp)
    80001350:	00000513          	li	a0,0
    80001354:	01010113          	addi	sp,sp,16
    80001358:	00008067          	ret
    8000135c:	00003517          	auipc	a0,0x3
    80001360:	cfc50513          	addi	a0,a0,-772 # 80004058 <console_handler+0xed8>
    80001364:	00001097          	auipc	ra,0x1
    80001368:	928080e7          	jalr	-1752(ra) # 80001c8c <panic>

000000008000136c <either_copyin>:
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813023          	sd	s0,0(sp)
    80001374:	00113423          	sd	ra,8(sp)
    80001378:	01010413          	addi	s0,sp,16
    8000137c:	02059463          	bnez	a1,800013a4 <either_copyin+0x38>
    80001380:	00060593          	mv	a1,a2
    80001384:	0006861b          	sext.w	a2,a3
    80001388:	00002097          	auipc	ra,0x2
    8000138c:	c0c080e7          	jalr	-1012(ra) # 80002f94 <__memmove>
    80001390:	00813083          	ld	ra,8(sp)
    80001394:	00013403          	ld	s0,0(sp)
    80001398:	00000513          	li	a0,0
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret
    800013a4:	00003517          	auipc	a0,0x3
    800013a8:	cdc50513          	addi	a0,a0,-804 # 80004080 <console_handler+0xf00>
    800013ac:	00001097          	auipc	ra,0x1
    800013b0:	8e0080e7          	jalr	-1824(ra) # 80001c8c <panic>

00000000800013b4 <trapinit>:
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00813423          	sd	s0,8(sp)
    800013bc:	01010413          	addi	s0,sp,16
    800013c0:	00813403          	ld	s0,8(sp)
    800013c4:	00003597          	auipc	a1,0x3
    800013c8:	ce458593          	addi	a1,a1,-796 # 800040a8 <console_handler+0xf28>
    800013cc:	00004517          	auipc	a0,0x4
    800013d0:	f3450513          	addi	a0,a0,-204 # 80005300 <tickslock>
    800013d4:	01010113          	addi	sp,sp,16
    800013d8:	00001317          	auipc	t1,0x1
    800013dc:	5c030067          	jr	1472(t1) # 80002998 <initlock>

00000000800013e0 <trapinithart>:
    800013e0:	ff010113          	addi	sp,sp,-16
    800013e4:	00813423          	sd	s0,8(sp)
    800013e8:	01010413          	addi	s0,sp,16
    800013ec:	00000797          	auipc	a5,0x0
    800013f0:	2f478793          	addi	a5,a5,756 # 800016e0 <kernelvec>
    800013f4:	10579073          	csrw	stvec,a5
    800013f8:	00813403          	ld	s0,8(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <usertrap>:
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00813423          	sd	s0,8(sp)
    8000140c:	01010413          	addi	s0,sp,16
    80001410:	00813403          	ld	s0,8(sp)
    80001414:	01010113          	addi	sp,sp,16
    80001418:	00008067          	ret

000000008000141c <usertrapret>:
    8000141c:	ff010113          	addi	sp,sp,-16
    80001420:	00813423          	sd	s0,8(sp)
    80001424:	01010413          	addi	s0,sp,16
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <kerneltrap>:
    80001434:	fe010113          	addi	sp,sp,-32
    80001438:	00813823          	sd	s0,16(sp)
    8000143c:	00113c23          	sd	ra,24(sp)
    80001440:	00913423          	sd	s1,8(sp)
    80001444:	02010413          	addi	s0,sp,32
    80001448:	142025f3          	csrr	a1,scause
    8000144c:	100027f3          	csrr	a5,sstatus
    80001450:	0027f793          	andi	a5,a5,2
    80001454:	10079c63          	bnez	a5,8000156c <kerneltrap+0x138>
    80001458:	142027f3          	csrr	a5,scause
    8000145c:	0207ce63          	bltz	a5,80001498 <kerneltrap+0x64>
    80001460:	00003517          	auipc	a0,0x3
    80001464:	c9050513          	addi	a0,a0,-880 # 800040f0 <console_handler+0xf70>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	880080e7          	jalr	-1920(ra) # 80001ce8 <__printf>
    80001470:	141025f3          	csrr	a1,sepc
    80001474:	14302673          	csrr	a2,stval
    80001478:	00003517          	auipc	a0,0x3
    8000147c:	c8850513          	addi	a0,a0,-888 # 80004100 <console_handler+0xf80>
    80001480:	00001097          	auipc	ra,0x1
    80001484:	868080e7          	jalr	-1944(ra) # 80001ce8 <__printf>
    80001488:	00003517          	auipc	a0,0x3
    8000148c:	c9050513          	addi	a0,a0,-880 # 80004118 <console_handler+0xf98>
    80001490:	00000097          	auipc	ra,0x0
    80001494:	7fc080e7          	jalr	2044(ra) # 80001c8c <panic>
    80001498:	0ff7f713          	andi	a4,a5,255
    8000149c:	00900693          	li	a3,9
    800014a0:	04d70063          	beq	a4,a3,800014e0 <kerneltrap+0xac>
    800014a4:	fff00713          	li	a4,-1
    800014a8:	03f71713          	slli	a4,a4,0x3f
    800014ac:	00170713          	addi	a4,a4,1
    800014b0:	fae798e3          	bne	a5,a4,80001460 <kerneltrap+0x2c>
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	e00080e7          	jalr	-512(ra) # 800012b4 <cpuid>
    800014bc:	06050663          	beqz	a0,80001528 <kerneltrap+0xf4>
    800014c0:	144027f3          	csrr	a5,sip
    800014c4:	ffd7f793          	andi	a5,a5,-3
    800014c8:	14479073          	csrw	sip,a5
    800014cc:	01813083          	ld	ra,24(sp)
    800014d0:	01013403          	ld	s0,16(sp)
    800014d4:	00813483          	ld	s1,8(sp)
    800014d8:	02010113          	addi	sp,sp,32
    800014dc:	00008067          	ret
    800014e0:	00000097          	auipc	ra,0x0
    800014e4:	3c4080e7          	jalr	964(ra) # 800018a4 <plic_claim>
    800014e8:	00a00793          	li	a5,10
    800014ec:	00050493          	mv	s1,a0
    800014f0:	06f50863          	beq	a0,a5,80001560 <kerneltrap+0x12c>
    800014f4:	fc050ce3          	beqz	a0,800014cc <kerneltrap+0x98>
    800014f8:	00050593          	mv	a1,a0
    800014fc:	00003517          	auipc	a0,0x3
    80001500:	bd450513          	addi	a0,a0,-1068 # 800040d0 <console_handler+0xf50>
    80001504:	00000097          	auipc	ra,0x0
    80001508:	7e4080e7          	jalr	2020(ra) # 80001ce8 <__printf>
    8000150c:	01013403          	ld	s0,16(sp)
    80001510:	01813083          	ld	ra,24(sp)
    80001514:	00048513          	mv	a0,s1
    80001518:	00813483          	ld	s1,8(sp)
    8000151c:	02010113          	addi	sp,sp,32
    80001520:	00000317          	auipc	t1,0x0
    80001524:	3bc30067          	jr	956(t1) # 800018dc <plic_complete>
    80001528:	00004517          	auipc	a0,0x4
    8000152c:	dd850513          	addi	a0,a0,-552 # 80005300 <tickslock>
    80001530:	00001097          	auipc	ra,0x1
    80001534:	48c080e7          	jalr	1164(ra) # 800029bc <acquire>
    80001538:	00003717          	auipc	a4,0x3
    8000153c:	cec70713          	addi	a4,a4,-788 # 80004224 <ticks>
    80001540:	00072783          	lw	a5,0(a4)
    80001544:	00004517          	auipc	a0,0x4
    80001548:	dbc50513          	addi	a0,a0,-580 # 80005300 <tickslock>
    8000154c:	0017879b          	addiw	a5,a5,1
    80001550:	00f72023          	sw	a5,0(a4)
    80001554:	00001097          	auipc	ra,0x1
    80001558:	534080e7          	jalr	1332(ra) # 80002a88 <release>
    8000155c:	f65ff06f          	j	800014c0 <kerneltrap+0x8c>
    80001560:	00001097          	auipc	ra,0x1
    80001564:	090080e7          	jalr	144(ra) # 800025f0 <uartintr>
    80001568:	fa5ff06f          	j	8000150c <kerneltrap+0xd8>
    8000156c:	00003517          	auipc	a0,0x3
    80001570:	b4450513          	addi	a0,a0,-1212 # 800040b0 <console_handler+0xf30>
    80001574:	00000097          	auipc	ra,0x0
    80001578:	718080e7          	jalr	1816(ra) # 80001c8c <panic>

000000008000157c <clockintr>:
    8000157c:	fe010113          	addi	sp,sp,-32
    80001580:	00813823          	sd	s0,16(sp)
    80001584:	00913423          	sd	s1,8(sp)
    80001588:	00113c23          	sd	ra,24(sp)
    8000158c:	02010413          	addi	s0,sp,32
    80001590:	00004497          	auipc	s1,0x4
    80001594:	d7048493          	addi	s1,s1,-656 # 80005300 <tickslock>
    80001598:	00048513          	mv	a0,s1
    8000159c:	00001097          	auipc	ra,0x1
    800015a0:	420080e7          	jalr	1056(ra) # 800029bc <acquire>
    800015a4:	00003717          	auipc	a4,0x3
    800015a8:	c8070713          	addi	a4,a4,-896 # 80004224 <ticks>
    800015ac:	00072783          	lw	a5,0(a4)
    800015b0:	01013403          	ld	s0,16(sp)
    800015b4:	01813083          	ld	ra,24(sp)
    800015b8:	00048513          	mv	a0,s1
    800015bc:	0017879b          	addiw	a5,a5,1
    800015c0:	00813483          	ld	s1,8(sp)
    800015c4:	00f72023          	sw	a5,0(a4)
    800015c8:	02010113          	addi	sp,sp,32
    800015cc:	00001317          	auipc	t1,0x1
    800015d0:	4bc30067          	jr	1212(t1) # 80002a88 <release>

00000000800015d4 <devintr>:
    800015d4:	142027f3          	csrr	a5,scause
    800015d8:	00000513          	li	a0,0
    800015dc:	0007c463          	bltz	a5,800015e4 <devintr+0x10>
    800015e0:	00008067          	ret
    800015e4:	fe010113          	addi	sp,sp,-32
    800015e8:	00813823          	sd	s0,16(sp)
    800015ec:	00113c23          	sd	ra,24(sp)
    800015f0:	00913423          	sd	s1,8(sp)
    800015f4:	02010413          	addi	s0,sp,32
    800015f8:	0ff7f713          	andi	a4,a5,255
    800015fc:	00900693          	li	a3,9
    80001600:	04d70c63          	beq	a4,a3,80001658 <devintr+0x84>
    80001604:	fff00713          	li	a4,-1
    80001608:	03f71713          	slli	a4,a4,0x3f
    8000160c:	00170713          	addi	a4,a4,1
    80001610:	00e78c63          	beq	a5,a4,80001628 <devintr+0x54>
    80001614:	01813083          	ld	ra,24(sp)
    80001618:	01013403          	ld	s0,16(sp)
    8000161c:	00813483          	ld	s1,8(sp)
    80001620:	02010113          	addi	sp,sp,32
    80001624:	00008067          	ret
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	c8c080e7          	jalr	-884(ra) # 800012b4 <cpuid>
    80001630:	06050663          	beqz	a0,8000169c <devintr+0xc8>
    80001634:	144027f3          	csrr	a5,sip
    80001638:	ffd7f793          	andi	a5,a5,-3
    8000163c:	14479073          	csrw	sip,a5
    80001640:	01813083          	ld	ra,24(sp)
    80001644:	01013403          	ld	s0,16(sp)
    80001648:	00813483          	ld	s1,8(sp)
    8000164c:	00200513          	li	a0,2
    80001650:	02010113          	addi	sp,sp,32
    80001654:	00008067          	ret
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	24c080e7          	jalr	588(ra) # 800018a4 <plic_claim>
    80001660:	00a00793          	li	a5,10
    80001664:	00050493          	mv	s1,a0
    80001668:	06f50663          	beq	a0,a5,800016d4 <devintr+0x100>
    8000166c:	00100513          	li	a0,1
    80001670:	fa0482e3          	beqz	s1,80001614 <devintr+0x40>
    80001674:	00048593          	mv	a1,s1
    80001678:	00003517          	auipc	a0,0x3
    8000167c:	a5850513          	addi	a0,a0,-1448 # 800040d0 <console_handler+0xf50>
    80001680:	00000097          	auipc	ra,0x0
    80001684:	668080e7          	jalr	1640(ra) # 80001ce8 <__printf>
    80001688:	00048513          	mv	a0,s1
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	250080e7          	jalr	592(ra) # 800018dc <plic_complete>
    80001694:	00100513          	li	a0,1
    80001698:	f7dff06f          	j	80001614 <devintr+0x40>
    8000169c:	00004517          	auipc	a0,0x4
    800016a0:	c6450513          	addi	a0,a0,-924 # 80005300 <tickslock>
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	318080e7          	jalr	792(ra) # 800029bc <acquire>
    800016ac:	00003717          	auipc	a4,0x3
    800016b0:	b7870713          	addi	a4,a4,-1160 # 80004224 <ticks>
    800016b4:	00072783          	lw	a5,0(a4)
    800016b8:	00004517          	auipc	a0,0x4
    800016bc:	c4850513          	addi	a0,a0,-952 # 80005300 <tickslock>
    800016c0:	0017879b          	addiw	a5,a5,1
    800016c4:	00f72023          	sw	a5,0(a4)
    800016c8:	00001097          	auipc	ra,0x1
    800016cc:	3c0080e7          	jalr	960(ra) # 80002a88 <release>
    800016d0:	f65ff06f          	j	80001634 <devintr+0x60>
    800016d4:	00001097          	auipc	ra,0x1
    800016d8:	f1c080e7          	jalr	-228(ra) # 800025f0 <uartintr>
    800016dc:	fadff06f          	j	80001688 <devintr+0xb4>

00000000800016e0 <kernelvec>:
    800016e0:	f0010113          	addi	sp,sp,-256
    800016e4:	00113023          	sd	ra,0(sp)
    800016e8:	00213423          	sd	sp,8(sp)
    800016ec:	00313823          	sd	gp,16(sp)
    800016f0:	00413c23          	sd	tp,24(sp)
    800016f4:	02513023          	sd	t0,32(sp)
    800016f8:	02613423          	sd	t1,40(sp)
    800016fc:	02713823          	sd	t2,48(sp)
    80001700:	02813c23          	sd	s0,56(sp)
    80001704:	04913023          	sd	s1,64(sp)
    80001708:	04a13423          	sd	a0,72(sp)
    8000170c:	04b13823          	sd	a1,80(sp)
    80001710:	04c13c23          	sd	a2,88(sp)
    80001714:	06d13023          	sd	a3,96(sp)
    80001718:	06e13423          	sd	a4,104(sp)
    8000171c:	06f13823          	sd	a5,112(sp)
    80001720:	07013c23          	sd	a6,120(sp)
    80001724:	09113023          	sd	a7,128(sp)
    80001728:	09213423          	sd	s2,136(sp)
    8000172c:	09313823          	sd	s3,144(sp)
    80001730:	09413c23          	sd	s4,152(sp)
    80001734:	0b513023          	sd	s5,160(sp)
    80001738:	0b613423          	sd	s6,168(sp)
    8000173c:	0b713823          	sd	s7,176(sp)
    80001740:	0b813c23          	sd	s8,184(sp)
    80001744:	0d913023          	sd	s9,192(sp)
    80001748:	0da13423          	sd	s10,200(sp)
    8000174c:	0db13823          	sd	s11,208(sp)
    80001750:	0dc13c23          	sd	t3,216(sp)
    80001754:	0fd13023          	sd	t4,224(sp)
    80001758:	0fe13423          	sd	t5,232(sp)
    8000175c:	0ff13823          	sd	t6,240(sp)
    80001760:	cd5ff0ef          	jal	ra,80001434 <kerneltrap>
    80001764:	00013083          	ld	ra,0(sp)
    80001768:	00813103          	ld	sp,8(sp)
    8000176c:	01013183          	ld	gp,16(sp)
    80001770:	02013283          	ld	t0,32(sp)
    80001774:	02813303          	ld	t1,40(sp)
    80001778:	03013383          	ld	t2,48(sp)
    8000177c:	03813403          	ld	s0,56(sp)
    80001780:	04013483          	ld	s1,64(sp)
    80001784:	04813503          	ld	a0,72(sp)
    80001788:	05013583          	ld	a1,80(sp)
    8000178c:	05813603          	ld	a2,88(sp)
    80001790:	06013683          	ld	a3,96(sp)
    80001794:	06813703          	ld	a4,104(sp)
    80001798:	07013783          	ld	a5,112(sp)
    8000179c:	07813803          	ld	a6,120(sp)
    800017a0:	08013883          	ld	a7,128(sp)
    800017a4:	08813903          	ld	s2,136(sp)
    800017a8:	09013983          	ld	s3,144(sp)
    800017ac:	09813a03          	ld	s4,152(sp)
    800017b0:	0a013a83          	ld	s5,160(sp)
    800017b4:	0a813b03          	ld	s6,168(sp)
    800017b8:	0b013b83          	ld	s7,176(sp)
    800017bc:	0b813c03          	ld	s8,184(sp)
    800017c0:	0c013c83          	ld	s9,192(sp)
    800017c4:	0c813d03          	ld	s10,200(sp)
    800017c8:	0d013d83          	ld	s11,208(sp)
    800017cc:	0d813e03          	ld	t3,216(sp)
    800017d0:	0e013e83          	ld	t4,224(sp)
    800017d4:	0e813f03          	ld	t5,232(sp)
    800017d8:	0f013f83          	ld	t6,240(sp)
    800017dc:	10010113          	addi	sp,sp,256
    800017e0:	10200073          	sret
    800017e4:	00000013          	nop
    800017e8:	00000013          	nop
    800017ec:	00000013          	nop

00000000800017f0 <timervec>:
    800017f0:	34051573          	csrrw	a0,mscratch,a0
    800017f4:	00b53023          	sd	a1,0(a0)
    800017f8:	00c53423          	sd	a2,8(a0)
    800017fc:	00d53823          	sd	a3,16(a0)
    80001800:	01853583          	ld	a1,24(a0)
    80001804:	02053603          	ld	a2,32(a0)
    80001808:	0005b683          	ld	a3,0(a1)
    8000180c:	00c686b3          	add	a3,a3,a2
    80001810:	00d5b023          	sd	a3,0(a1)
    80001814:	00200593          	li	a1,2
    80001818:	14459073          	csrw	sip,a1
    8000181c:	01053683          	ld	a3,16(a0)
    80001820:	00853603          	ld	a2,8(a0)
    80001824:	00053583          	ld	a1,0(a0)
    80001828:	34051573          	csrrw	a0,mscratch,a0
    8000182c:	30200073          	mret

0000000080001830 <plicinit>:
    80001830:	ff010113          	addi	sp,sp,-16
    80001834:	00813423          	sd	s0,8(sp)
    80001838:	01010413          	addi	s0,sp,16
    8000183c:	00813403          	ld	s0,8(sp)
    80001840:	0c0007b7          	lui	a5,0xc000
    80001844:	00100713          	li	a4,1
    80001848:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000184c:	00e7a223          	sw	a4,4(a5)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret

0000000080001858 <plicinithart>:
    80001858:	ff010113          	addi	sp,sp,-16
    8000185c:	00813023          	sd	s0,0(sp)
    80001860:	00113423          	sd	ra,8(sp)
    80001864:	01010413          	addi	s0,sp,16
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	a4c080e7          	jalr	-1460(ra) # 800012b4 <cpuid>
    80001870:	0085171b          	slliw	a4,a0,0x8
    80001874:	0c0027b7          	lui	a5,0xc002
    80001878:	00e787b3          	add	a5,a5,a4
    8000187c:	40200713          	li	a4,1026
    80001880:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001884:	00813083          	ld	ra,8(sp)
    80001888:	00013403          	ld	s0,0(sp)
    8000188c:	00d5151b          	slliw	a0,a0,0xd
    80001890:	0c2017b7          	lui	a5,0xc201
    80001894:	00a78533          	add	a0,a5,a0
    80001898:	00052023          	sw	zero,0(a0)
    8000189c:	01010113          	addi	sp,sp,16
    800018a0:	00008067          	ret

00000000800018a4 <plic_claim>:
    800018a4:	ff010113          	addi	sp,sp,-16
    800018a8:	00813023          	sd	s0,0(sp)
    800018ac:	00113423          	sd	ra,8(sp)
    800018b0:	01010413          	addi	s0,sp,16
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	a00080e7          	jalr	-1536(ra) # 800012b4 <cpuid>
    800018bc:	00813083          	ld	ra,8(sp)
    800018c0:	00013403          	ld	s0,0(sp)
    800018c4:	00d5151b          	slliw	a0,a0,0xd
    800018c8:	0c2017b7          	lui	a5,0xc201
    800018cc:	00a78533          	add	a0,a5,a0
    800018d0:	00452503          	lw	a0,4(a0)
    800018d4:	01010113          	addi	sp,sp,16
    800018d8:	00008067          	ret

00000000800018dc <plic_complete>:
    800018dc:	fe010113          	addi	sp,sp,-32
    800018e0:	00813823          	sd	s0,16(sp)
    800018e4:	00913423          	sd	s1,8(sp)
    800018e8:	00113c23          	sd	ra,24(sp)
    800018ec:	02010413          	addi	s0,sp,32
    800018f0:	00050493          	mv	s1,a0
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	9c0080e7          	jalr	-1600(ra) # 800012b4 <cpuid>
    800018fc:	01813083          	ld	ra,24(sp)
    80001900:	01013403          	ld	s0,16(sp)
    80001904:	00d5179b          	slliw	a5,a0,0xd
    80001908:	0c201737          	lui	a4,0xc201
    8000190c:	00f707b3          	add	a5,a4,a5
    80001910:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001914:	00813483          	ld	s1,8(sp)
    80001918:	02010113          	addi	sp,sp,32
    8000191c:	00008067          	ret

0000000080001920 <consolewrite>:
    80001920:	fb010113          	addi	sp,sp,-80
    80001924:	04813023          	sd	s0,64(sp)
    80001928:	04113423          	sd	ra,72(sp)
    8000192c:	02913c23          	sd	s1,56(sp)
    80001930:	03213823          	sd	s2,48(sp)
    80001934:	03313423          	sd	s3,40(sp)
    80001938:	03413023          	sd	s4,32(sp)
    8000193c:	01513c23          	sd	s5,24(sp)
    80001940:	05010413          	addi	s0,sp,80
    80001944:	06c05c63          	blez	a2,800019bc <consolewrite+0x9c>
    80001948:	00060993          	mv	s3,a2
    8000194c:	00050a13          	mv	s4,a0
    80001950:	00058493          	mv	s1,a1
    80001954:	00000913          	li	s2,0
    80001958:	fff00a93          	li	s5,-1
    8000195c:	01c0006f          	j	80001978 <consolewrite+0x58>
    80001960:	fbf44503          	lbu	a0,-65(s0)
    80001964:	0019091b          	addiw	s2,s2,1
    80001968:	00148493          	addi	s1,s1,1
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	a9c080e7          	jalr	-1380(ra) # 80002408 <uartputc>
    80001974:	03298063          	beq	s3,s2,80001994 <consolewrite+0x74>
    80001978:	00048613          	mv	a2,s1
    8000197c:	00100693          	li	a3,1
    80001980:	000a0593          	mv	a1,s4
    80001984:	fbf40513          	addi	a0,s0,-65
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	9e4080e7          	jalr	-1564(ra) # 8000136c <either_copyin>
    80001990:	fd5518e3          	bne	a0,s5,80001960 <consolewrite+0x40>
    80001994:	04813083          	ld	ra,72(sp)
    80001998:	04013403          	ld	s0,64(sp)
    8000199c:	03813483          	ld	s1,56(sp)
    800019a0:	02813983          	ld	s3,40(sp)
    800019a4:	02013a03          	ld	s4,32(sp)
    800019a8:	01813a83          	ld	s5,24(sp)
    800019ac:	00090513          	mv	a0,s2
    800019b0:	03013903          	ld	s2,48(sp)
    800019b4:	05010113          	addi	sp,sp,80
    800019b8:	00008067          	ret
    800019bc:	00000913          	li	s2,0
    800019c0:	fd5ff06f          	j	80001994 <consolewrite+0x74>

00000000800019c4 <consoleread>:
    800019c4:	f9010113          	addi	sp,sp,-112
    800019c8:	06813023          	sd	s0,96(sp)
    800019cc:	04913c23          	sd	s1,88(sp)
    800019d0:	05213823          	sd	s2,80(sp)
    800019d4:	05313423          	sd	s3,72(sp)
    800019d8:	05413023          	sd	s4,64(sp)
    800019dc:	03513c23          	sd	s5,56(sp)
    800019e0:	03613823          	sd	s6,48(sp)
    800019e4:	03713423          	sd	s7,40(sp)
    800019e8:	03813023          	sd	s8,32(sp)
    800019ec:	06113423          	sd	ra,104(sp)
    800019f0:	01913c23          	sd	s9,24(sp)
    800019f4:	07010413          	addi	s0,sp,112
    800019f8:	00060b93          	mv	s7,a2
    800019fc:	00050913          	mv	s2,a0
    80001a00:	00058c13          	mv	s8,a1
    80001a04:	00060b1b          	sext.w	s6,a2
    80001a08:	00004497          	auipc	s1,0x4
    80001a0c:	91048493          	addi	s1,s1,-1776 # 80005318 <cons>
    80001a10:	00400993          	li	s3,4
    80001a14:	fff00a13          	li	s4,-1
    80001a18:	00a00a93          	li	s5,10
    80001a1c:	05705e63          	blez	s7,80001a78 <consoleread+0xb4>
    80001a20:	09c4a703          	lw	a4,156(s1)
    80001a24:	0984a783          	lw	a5,152(s1)
    80001a28:	0007071b          	sext.w	a4,a4
    80001a2c:	08e78463          	beq	a5,a4,80001ab4 <consoleread+0xf0>
    80001a30:	07f7f713          	andi	a4,a5,127
    80001a34:	00e48733          	add	a4,s1,a4
    80001a38:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001a3c:	0017869b          	addiw	a3,a5,1
    80001a40:	08d4ac23          	sw	a3,152(s1)
    80001a44:	00070c9b          	sext.w	s9,a4
    80001a48:	0b370663          	beq	a4,s3,80001af4 <consoleread+0x130>
    80001a4c:	00100693          	li	a3,1
    80001a50:	f9f40613          	addi	a2,s0,-97
    80001a54:	000c0593          	mv	a1,s8
    80001a58:	00090513          	mv	a0,s2
    80001a5c:	f8e40fa3          	sb	a4,-97(s0)
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	8c0080e7          	jalr	-1856(ra) # 80001320 <either_copyout>
    80001a68:	01450863          	beq	a0,s4,80001a78 <consoleread+0xb4>
    80001a6c:	001c0c13          	addi	s8,s8,1
    80001a70:	fffb8b9b          	addiw	s7,s7,-1
    80001a74:	fb5c94e3          	bne	s9,s5,80001a1c <consoleread+0x58>
    80001a78:	000b851b          	sext.w	a0,s7
    80001a7c:	06813083          	ld	ra,104(sp)
    80001a80:	06013403          	ld	s0,96(sp)
    80001a84:	05813483          	ld	s1,88(sp)
    80001a88:	05013903          	ld	s2,80(sp)
    80001a8c:	04813983          	ld	s3,72(sp)
    80001a90:	04013a03          	ld	s4,64(sp)
    80001a94:	03813a83          	ld	s5,56(sp)
    80001a98:	02813b83          	ld	s7,40(sp)
    80001a9c:	02013c03          	ld	s8,32(sp)
    80001aa0:	01813c83          	ld	s9,24(sp)
    80001aa4:	40ab053b          	subw	a0,s6,a0
    80001aa8:	03013b03          	ld	s6,48(sp)
    80001aac:	07010113          	addi	sp,sp,112
    80001ab0:	00008067          	ret
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	1d8080e7          	jalr	472(ra) # 80002c8c <push_on>
    80001abc:	0984a703          	lw	a4,152(s1)
    80001ac0:	09c4a783          	lw	a5,156(s1)
    80001ac4:	0007879b          	sext.w	a5,a5
    80001ac8:	fef70ce3          	beq	a4,a5,80001ac0 <consoleread+0xfc>
    80001acc:	00001097          	auipc	ra,0x1
    80001ad0:	234080e7          	jalr	564(ra) # 80002d00 <pop_on>
    80001ad4:	0984a783          	lw	a5,152(s1)
    80001ad8:	07f7f713          	andi	a4,a5,127
    80001adc:	00e48733          	add	a4,s1,a4
    80001ae0:	01874703          	lbu	a4,24(a4)
    80001ae4:	0017869b          	addiw	a3,a5,1
    80001ae8:	08d4ac23          	sw	a3,152(s1)
    80001aec:	00070c9b          	sext.w	s9,a4
    80001af0:	f5371ee3          	bne	a4,s3,80001a4c <consoleread+0x88>
    80001af4:	000b851b          	sext.w	a0,s7
    80001af8:	f96bf2e3          	bgeu	s7,s6,80001a7c <consoleread+0xb8>
    80001afc:	08f4ac23          	sw	a5,152(s1)
    80001b00:	f7dff06f          	j	80001a7c <consoleread+0xb8>

0000000080001b04 <consputc>:
    80001b04:	10000793          	li	a5,256
    80001b08:	00f50663          	beq	a0,a5,80001b14 <consputc+0x10>
    80001b0c:	00001317          	auipc	t1,0x1
    80001b10:	9f430067          	jr	-1548(t1) # 80002500 <uartputc_sync>
    80001b14:	ff010113          	addi	sp,sp,-16
    80001b18:	00113423          	sd	ra,8(sp)
    80001b1c:	00813023          	sd	s0,0(sp)
    80001b20:	01010413          	addi	s0,sp,16
    80001b24:	00800513          	li	a0,8
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	9d8080e7          	jalr	-1576(ra) # 80002500 <uartputc_sync>
    80001b30:	02000513          	li	a0,32
    80001b34:	00001097          	auipc	ra,0x1
    80001b38:	9cc080e7          	jalr	-1588(ra) # 80002500 <uartputc_sync>
    80001b3c:	00013403          	ld	s0,0(sp)
    80001b40:	00813083          	ld	ra,8(sp)
    80001b44:	00800513          	li	a0,8
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00001317          	auipc	t1,0x1
    80001b50:	9b430067          	jr	-1612(t1) # 80002500 <uartputc_sync>

0000000080001b54 <consoleintr>:
    80001b54:	fe010113          	addi	sp,sp,-32
    80001b58:	00813823          	sd	s0,16(sp)
    80001b5c:	00913423          	sd	s1,8(sp)
    80001b60:	01213023          	sd	s2,0(sp)
    80001b64:	00113c23          	sd	ra,24(sp)
    80001b68:	02010413          	addi	s0,sp,32
    80001b6c:	00003917          	auipc	s2,0x3
    80001b70:	7ac90913          	addi	s2,s2,1964 # 80005318 <cons>
    80001b74:	00050493          	mv	s1,a0
    80001b78:	00090513          	mv	a0,s2
    80001b7c:	00001097          	auipc	ra,0x1
    80001b80:	e40080e7          	jalr	-448(ra) # 800029bc <acquire>
    80001b84:	02048c63          	beqz	s1,80001bbc <consoleintr+0x68>
    80001b88:	0a092783          	lw	a5,160(s2)
    80001b8c:	09892703          	lw	a4,152(s2)
    80001b90:	07f00693          	li	a3,127
    80001b94:	40e7873b          	subw	a4,a5,a4
    80001b98:	02e6e263          	bltu	a3,a4,80001bbc <consoleintr+0x68>
    80001b9c:	00d00713          	li	a4,13
    80001ba0:	04e48063          	beq	s1,a4,80001be0 <consoleintr+0x8c>
    80001ba4:	07f7f713          	andi	a4,a5,127
    80001ba8:	00e90733          	add	a4,s2,a4
    80001bac:	0017879b          	addiw	a5,a5,1
    80001bb0:	0af92023          	sw	a5,160(s2)
    80001bb4:	00970c23          	sb	s1,24(a4)
    80001bb8:	08f92e23          	sw	a5,156(s2)
    80001bbc:	01013403          	ld	s0,16(sp)
    80001bc0:	01813083          	ld	ra,24(sp)
    80001bc4:	00813483          	ld	s1,8(sp)
    80001bc8:	00013903          	ld	s2,0(sp)
    80001bcc:	00003517          	auipc	a0,0x3
    80001bd0:	74c50513          	addi	a0,a0,1868 # 80005318 <cons>
    80001bd4:	02010113          	addi	sp,sp,32
    80001bd8:	00001317          	auipc	t1,0x1
    80001bdc:	eb030067          	jr	-336(t1) # 80002a88 <release>
    80001be0:	00a00493          	li	s1,10
    80001be4:	fc1ff06f          	j	80001ba4 <consoleintr+0x50>

0000000080001be8 <consoleinit>:
    80001be8:	fe010113          	addi	sp,sp,-32
    80001bec:	00113c23          	sd	ra,24(sp)
    80001bf0:	00813823          	sd	s0,16(sp)
    80001bf4:	00913423          	sd	s1,8(sp)
    80001bf8:	02010413          	addi	s0,sp,32
    80001bfc:	00003497          	auipc	s1,0x3
    80001c00:	71c48493          	addi	s1,s1,1820 # 80005318 <cons>
    80001c04:	00048513          	mv	a0,s1
    80001c08:	00002597          	auipc	a1,0x2
    80001c0c:	52058593          	addi	a1,a1,1312 # 80004128 <console_handler+0xfa8>
    80001c10:	00001097          	auipc	ra,0x1
    80001c14:	d88080e7          	jalr	-632(ra) # 80002998 <initlock>
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	7ac080e7          	jalr	1964(ra) # 800023c4 <uartinit>
    80001c20:	01813083          	ld	ra,24(sp)
    80001c24:	01013403          	ld	s0,16(sp)
    80001c28:	00000797          	auipc	a5,0x0
    80001c2c:	d9c78793          	addi	a5,a5,-612 # 800019c4 <consoleread>
    80001c30:	0af4bc23          	sd	a5,184(s1)
    80001c34:	00000797          	auipc	a5,0x0
    80001c38:	cec78793          	addi	a5,a5,-788 # 80001920 <consolewrite>
    80001c3c:	0cf4b023          	sd	a5,192(s1)
    80001c40:	00813483          	ld	s1,8(sp)
    80001c44:	02010113          	addi	sp,sp,32
    80001c48:	00008067          	ret

0000000080001c4c <console_read>:
    80001c4c:	ff010113          	addi	sp,sp,-16
    80001c50:	00813423          	sd	s0,8(sp)
    80001c54:	01010413          	addi	s0,sp,16
    80001c58:	00813403          	ld	s0,8(sp)
    80001c5c:	00003317          	auipc	t1,0x3
    80001c60:	77433303          	ld	t1,1908(t1) # 800053d0 <devsw+0x10>
    80001c64:	01010113          	addi	sp,sp,16
    80001c68:	00030067          	jr	t1

0000000080001c6c <console_write>:
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00813423          	sd	s0,8(sp)
    80001c74:	01010413          	addi	s0,sp,16
    80001c78:	00813403          	ld	s0,8(sp)
    80001c7c:	00003317          	auipc	t1,0x3
    80001c80:	75c33303          	ld	t1,1884(t1) # 800053d8 <devsw+0x18>
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00030067          	jr	t1

0000000080001c8c <panic>:
    80001c8c:	fe010113          	addi	sp,sp,-32
    80001c90:	00113c23          	sd	ra,24(sp)
    80001c94:	00813823          	sd	s0,16(sp)
    80001c98:	00913423          	sd	s1,8(sp)
    80001c9c:	02010413          	addi	s0,sp,32
    80001ca0:	00050493          	mv	s1,a0
    80001ca4:	00002517          	auipc	a0,0x2
    80001ca8:	48c50513          	addi	a0,a0,1164 # 80004130 <console_handler+0xfb0>
    80001cac:	00003797          	auipc	a5,0x3
    80001cb0:	7c07a623          	sw	zero,1996(a5) # 80005478 <pr+0x18>
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	034080e7          	jalr	52(ra) # 80001ce8 <__printf>
    80001cbc:	00048513          	mv	a0,s1
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	028080e7          	jalr	40(ra) # 80001ce8 <__printf>
    80001cc8:	00002517          	auipc	a0,0x2
    80001ccc:	44850513          	addi	a0,a0,1096 # 80004110 <console_handler+0xf90>
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	018080e7          	jalr	24(ra) # 80001ce8 <__printf>
    80001cd8:	00100793          	li	a5,1
    80001cdc:	00002717          	auipc	a4,0x2
    80001ce0:	54f72623          	sw	a5,1356(a4) # 80004228 <panicked>
    80001ce4:	0000006f          	j	80001ce4 <panic+0x58>

0000000080001ce8 <__printf>:
    80001ce8:	f3010113          	addi	sp,sp,-208
    80001cec:	08813023          	sd	s0,128(sp)
    80001cf0:	07313423          	sd	s3,104(sp)
    80001cf4:	09010413          	addi	s0,sp,144
    80001cf8:	05813023          	sd	s8,64(sp)
    80001cfc:	08113423          	sd	ra,136(sp)
    80001d00:	06913c23          	sd	s1,120(sp)
    80001d04:	07213823          	sd	s2,112(sp)
    80001d08:	07413023          	sd	s4,96(sp)
    80001d0c:	05513c23          	sd	s5,88(sp)
    80001d10:	05613823          	sd	s6,80(sp)
    80001d14:	05713423          	sd	s7,72(sp)
    80001d18:	03913c23          	sd	s9,56(sp)
    80001d1c:	03a13823          	sd	s10,48(sp)
    80001d20:	03b13423          	sd	s11,40(sp)
    80001d24:	00003317          	auipc	t1,0x3
    80001d28:	73c30313          	addi	t1,t1,1852 # 80005460 <pr>
    80001d2c:	01832c03          	lw	s8,24(t1)
    80001d30:	00b43423          	sd	a1,8(s0)
    80001d34:	00c43823          	sd	a2,16(s0)
    80001d38:	00d43c23          	sd	a3,24(s0)
    80001d3c:	02e43023          	sd	a4,32(s0)
    80001d40:	02f43423          	sd	a5,40(s0)
    80001d44:	03043823          	sd	a6,48(s0)
    80001d48:	03143c23          	sd	a7,56(s0)
    80001d4c:	00050993          	mv	s3,a0
    80001d50:	4a0c1663          	bnez	s8,800021fc <__printf+0x514>
    80001d54:	60098c63          	beqz	s3,8000236c <__printf+0x684>
    80001d58:	0009c503          	lbu	a0,0(s3)
    80001d5c:	00840793          	addi	a5,s0,8
    80001d60:	f6f43c23          	sd	a5,-136(s0)
    80001d64:	00000493          	li	s1,0
    80001d68:	22050063          	beqz	a0,80001f88 <__printf+0x2a0>
    80001d6c:	00002a37          	lui	s4,0x2
    80001d70:	00018ab7          	lui	s5,0x18
    80001d74:	000f4b37          	lui	s6,0xf4
    80001d78:	00989bb7          	lui	s7,0x989
    80001d7c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80001d80:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80001d84:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80001d88:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80001d8c:	00148c9b          	addiw	s9,s1,1
    80001d90:	02500793          	li	a5,37
    80001d94:	01998933          	add	s2,s3,s9
    80001d98:	38f51263          	bne	a0,a5,8000211c <__printf+0x434>
    80001d9c:	00094783          	lbu	a5,0(s2)
    80001da0:	00078c9b          	sext.w	s9,a5
    80001da4:	1e078263          	beqz	a5,80001f88 <__printf+0x2a0>
    80001da8:	0024849b          	addiw	s1,s1,2
    80001dac:	07000713          	li	a4,112
    80001db0:	00998933          	add	s2,s3,s1
    80001db4:	38e78a63          	beq	a5,a4,80002148 <__printf+0x460>
    80001db8:	20f76863          	bltu	a4,a5,80001fc8 <__printf+0x2e0>
    80001dbc:	42a78863          	beq	a5,a0,800021ec <__printf+0x504>
    80001dc0:	06400713          	li	a4,100
    80001dc4:	40e79663          	bne	a5,a4,800021d0 <__printf+0x4e8>
    80001dc8:	f7843783          	ld	a5,-136(s0)
    80001dcc:	0007a603          	lw	a2,0(a5)
    80001dd0:	00878793          	addi	a5,a5,8
    80001dd4:	f6f43c23          	sd	a5,-136(s0)
    80001dd8:	42064a63          	bltz	a2,8000220c <__printf+0x524>
    80001ddc:	00a00713          	li	a4,10
    80001de0:	02e677bb          	remuw	a5,a2,a4
    80001de4:	00002d97          	auipc	s11,0x2
    80001de8:	374d8d93          	addi	s11,s11,884 # 80004158 <digits>
    80001dec:	00900593          	li	a1,9
    80001df0:	0006051b          	sext.w	a0,a2
    80001df4:	00000c93          	li	s9,0
    80001df8:	02079793          	slli	a5,a5,0x20
    80001dfc:	0207d793          	srli	a5,a5,0x20
    80001e00:	00fd87b3          	add	a5,s11,a5
    80001e04:	0007c783          	lbu	a5,0(a5)
    80001e08:	02e656bb          	divuw	a3,a2,a4
    80001e0c:	f8f40023          	sb	a5,-128(s0)
    80001e10:	14c5d863          	bge	a1,a2,80001f60 <__printf+0x278>
    80001e14:	06300593          	li	a1,99
    80001e18:	00100c93          	li	s9,1
    80001e1c:	02e6f7bb          	remuw	a5,a3,a4
    80001e20:	02079793          	slli	a5,a5,0x20
    80001e24:	0207d793          	srli	a5,a5,0x20
    80001e28:	00fd87b3          	add	a5,s11,a5
    80001e2c:	0007c783          	lbu	a5,0(a5)
    80001e30:	02e6d73b          	divuw	a4,a3,a4
    80001e34:	f8f400a3          	sb	a5,-127(s0)
    80001e38:	12a5f463          	bgeu	a1,a0,80001f60 <__printf+0x278>
    80001e3c:	00a00693          	li	a3,10
    80001e40:	00900593          	li	a1,9
    80001e44:	02d777bb          	remuw	a5,a4,a3
    80001e48:	02079793          	slli	a5,a5,0x20
    80001e4c:	0207d793          	srli	a5,a5,0x20
    80001e50:	00fd87b3          	add	a5,s11,a5
    80001e54:	0007c503          	lbu	a0,0(a5)
    80001e58:	02d757bb          	divuw	a5,a4,a3
    80001e5c:	f8a40123          	sb	a0,-126(s0)
    80001e60:	48e5f263          	bgeu	a1,a4,800022e4 <__printf+0x5fc>
    80001e64:	06300513          	li	a0,99
    80001e68:	02d7f5bb          	remuw	a1,a5,a3
    80001e6c:	02059593          	slli	a1,a1,0x20
    80001e70:	0205d593          	srli	a1,a1,0x20
    80001e74:	00bd85b3          	add	a1,s11,a1
    80001e78:	0005c583          	lbu	a1,0(a1)
    80001e7c:	02d7d7bb          	divuw	a5,a5,a3
    80001e80:	f8b401a3          	sb	a1,-125(s0)
    80001e84:	48e57263          	bgeu	a0,a4,80002308 <__printf+0x620>
    80001e88:	3e700513          	li	a0,999
    80001e8c:	02d7f5bb          	remuw	a1,a5,a3
    80001e90:	02059593          	slli	a1,a1,0x20
    80001e94:	0205d593          	srli	a1,a1,0x20
    80001e98:	00bd85b3          	add	a1,s11,a1
    80001e9c:	0005c583          	lbu	a1,0(a1)
    80001ea0:	02d7d7bb          	divuw	a5,a5,a3
    80001ea4:	f8b40223          	sb	a1,-124(s0)
    80001ea8:	46e57663          	bgeu	a0,a4,80002314 <__printf+0x62c>
    80001eac:	02d7f5bb          	remuw	a1,a5,a3
    80001eb0:	02059593          	slli	a1,a1,0x20
    80001eb4:	0205d593          	srli	a1,a1,0x20
    80001eb8:	00bd85b3          	add	a1,s11,a1
    80001ebc:	0005c583          	lbu	a1,0(a1)
    80001ec0:	02d7d7bb          	divuw	a5,a5,a3
    80001ec4:	f8b402a3          	sb	a1,-123(s0)
    80001ec8:	46ea7863          	bgeu	s4,a4,80002338 <__printf+0x650>
    80001ecc:	02d7f5bb          	remuw	a1,a5,a3
    80001ed0:	02059593          	slli	a1,a1,0x20
    80001ed4:	0205d593          	srli	a1,a1,0x20
    80001ed8:	00bd85b3          	add	a1,s11,a1
    80001edc:	0005c583          	lbu	a1,0(a1)
    80001ee0:	02d7d7bb          	divuw	a5,a5,a3
    80001ee4:	f8b40323          	sb	a1,-122(s0)
    80001ee8:	3eeaf863          	bgeu	s5,a4,800022d8 <__printf+0x5f0>
    80001eec:	02d7f5bb          	remuw	a1,a5,a3
    80001ef0:	02059593          	slli	a1,a1,0x20
    80001ef4:	0205d593          	srli	a1,a1,0x20
    80001ef8:	00bd85b3          	add	a1,s11,a1
    80001efc:	0005c583          	lbu	a1,0(a1)
    80001f00:	02d7d7bb          	divuw	a5,a5,a3
    80001f04:	f8b403a3          	sb	a1,-121(s0)
    80001f08:	42eb7e63          	bgeu	s6,a4,80002344 <__printf+0x65c>
    80001f0c:	02d7f5bb          	remuw	a1,a5,a3
    80001f10:	02059593          	slli	a1,a1,0x20
    80001f14:	0205d593          	srli	a1,a1,0x20
    80001f18:	00bd85b3          	add	a1,s11,a1
    80001f1c:	0005c583          	lbu	a1,0(a1)
    80001f20:	02d7d7bb          	divuw	a5,a5,a3
    80001f24:	f8b40423          	sb	a1,-120(s0)
    80001f28:	42ebfc63          	bgeu	s7,a4,80002360 <__printf+0x678>
    80001f2c:	02079793          	slli	a5,a5,0x20
    80001f30:	0207d793          	srli	a5,a5,0x20
    80001f34:	00fd8db3          	add	s11,s11,a5
    80001f38:	000dc703          	lbu	a4,0(s11)
    80001f3c:	00a00793          	li	a5,10
    80001f40:	00900c93          	li	s9,9
    80001f44:	f8e404a3          	sb	a4,-119(s0)
    80001f48:	00065c63          	bgez	a2,80001f60 <__printf+0x278>
    80001f4c:	f9040713          	addi	a4,s0,-112
    80001f50:	00f70733          	add	a4,a4,a5
    80001f54:	02d00693          	li	a3,45
    80001f58:	fed70823          	sb	a3,-16(a4)
    80001f5c:	00078c93          	mv	s9,a5
    80001f60:	f8040793          	addi	a5,s0,-128
    80001f64:	01978cb3          	add	s9,a5,s9
    80001f68:	f7f40d13          	addi	s10,s0,-129
    80001f6c:	000cc503          	lbu	a0,0(s9)
    80001f70:	fffc8c93          	addi	s9,s9,-1
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	b90080e7          	jalr	-1136(ra) # 80001b04 <consputc>
    80001f7c:	ffac98e3          	bne	s9,s10,80001f6c <__printf+0x284>
    80001f80:	00094503          	lbu	a0,0(s2)
    80001f84:	e00514e3          	bnez	a0,80001d8c <__printf+0xa4>
    80001f88:	1a0c1663          	bnez	s8,80002134 <__printf+0x44c>
    80001f8c:	08813083          	ld	ra,136(sp)
    80001f90:	08013403          	ld	s0,128(sp)
    80001f94:	07813483          	ld	s1,120(sp)
    80001f98:	07013903          	ld	s2,112(sp)
    80001f9c:	06813983          	ld	s3,104(sp)
    80001fa0:	06013a03          	ld	s4,96(sp)
    80001fa4:	05813a83          	ld	s5,88(sp)
    80001fa8:	05013b03          	ld	s6,80(sp)
    80001fac:	04813b83          	ld	s7,72(sp)
    80001fb0:	04013c03          	ld	s8,64(sp)
    80001fb4:	03813c83          	ld	s9,56(sp)
    80001fb8:	03013d03          	ld	s10,48(sp)
    80001fbc:	02813d83          	ld	s11,40(sp)
    80001fc0:	0d010113          	addi	sp,sp,208
    80001fc4:	00008067          	ret
    80001fc8:	07300713          	li	a4,115
    80001fcc:	1ce78a63          	beq	a5,a4,800021a0 <__printf+0x4b8>
    80001fd0:	07800713          	li	a4,120
    80001fd4:	1ee79e63          	bne	a5,a4,800021d0 <__printf+0x4e8>
    80001fd8:	f7843783          	ld	a5,-136(s0)
    80001fdc:	0007a703          	lw	a4,0(a5)
    80001fe0:	00878793          	addi	a5,a5,8
    80001fe4:	f6f43c23          	sd	a5,-136(s0)
    80001fe8:	28074263          	bltz	a4,8000226c <__printf+0x584>
    80001fec:	00002d97          	auipc	s11,0x2
    80001ff0:	16cd8d93          	addi	s11,s11,364 # 80004158 <digits>
    80001ff4:	00f77793          	andi	a5,a4,15
    80001ff8:	00fd87b3          	add	a5,s11,a5
    80001ffc:	0007c683          	lbu	a3,0(a5)
    80002000:	00f00613          	li	a2,15
    80002004:	0007079b          	sext.w	a5,a4
    80002008:	f8d40023          	sb	a3,-128(s0)
    8000200c:	0047559b          	srliw	a1,a4,0x4
    80002010:	0047569b          	srliw	a3,a4,0x4
    80002014:	00000c93          	li	s9,0
    80002018:	0ee65063          	bge	a2,a4,800020f8 <__printf+0x410>
    8000201c:	00f6f693          	andi	a3,a3,15
    80002020:	00dd86b3          	add	a3,s11,a3
    80002024:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002028:	0087d79b          	srliw	a5,a5,0x8
    8000202c:	00100c93          	li	s9,1
    80002030:	f8d400a3          	sb	a3,-127(s0)
    80002034:	0cb67263          	bgeu	a2,a1,800020f8 <__printf+0x410>
    80002038:	00f7f693          	andi	a3,a5,15
    8000203c:	00dd86b3          	add	a3,s11,a3
    80002040:	0006c583          	lbu	a1,0(a3)
    80002044:	00f00613          	li	a2,15
    80002048:	0047d69b          	srliw	a3,a5,0x4
    8000204c:	f8b40123          	sb	a1,-126(s0)
    80002050:	0047d593          	srli	a1,a5,0x4
    80002054:	28f67e63          	bgeu	a2,a5,800022f0 <__printf+0x608>
    80002058:	00f6f693          	andi	a3,a3,15
    8000205c:	00dd86b3          	add	a3,s11,a3
    80002060:	0006c503          	lbu	a0,0(a3)
    80002064:	0087d813          	srli	a6,a5,0x8
    80002068:	0087d69b          	srliw	a3,a5,0x8
    8000206c:	f8a401a3          	sb	a0,-125(s0)
    80002070:	28b67663          	bgeu	a2,a1,800022fc <__printf+0x614>
    80002074:	00f6f693          	andi	a3,a3,15
    80002078:	00dd86b3          	add	a3,s11,a3
    8000207c:	0006c583          	lbu	a1,0(a3)
    80002080:	00c7d513          	srli	a0,a5,0xc
    80002084:	00c7d69b          	srliw	a3,a5,0xc
    80002088:	f8b40223          	sb	a1,-124(s0)
    8000208c:	29067a63          	bgeu	a2,a6,80002320 <__printf+0x638>
    80002090:	00f6f693          	andi	a3,a3,15
    80002094:	00dd86b3          	add	a3,s11,a3
    80002098:	0006c583          	lbu	a1,0(a3)
    8000209c:	0107d813          	srli	a6,a5,0x10
    800020a0:	0107d69b          	srliw	a3,a5,0x10
    800020a4:	f8b402a3          	sb	a1,-123(s0)
    800020a8:	28a67263          	bgeu	a2,a0,8000232c <__printf+0x644>
    800020ac:	00f6f693          	andi	a3,a3,15
    800020b0:	00dd86b3          	add	a3,s11,a3
    800020b4:	0006c683          	lbu	a3,0(a3)
    800020b8:	0147d79b          	srliw	a5,a5,0x14
    800020bc:	f8d40323          	sb	a3,-122(s0)
    800020c0:	21067663          	bgeu	a2,a6,800022cc <__printf+0x5e4>
    800020c4:	02079793          	slli	a5,a5,0x20
    800020c8:	0207d793          	srli	a5,a5,0x20
    800020cc:	00fd8db3          	add	s11,s11,a5
    800020d0:	000dc683          	lbu	a3,0(s11)
    800020d4:	00800793          	li	a5,8
    800020d8:	00700c93          	li	s9,7
    800020dc:	f8d403a3          	sb	a3,-121(s0)
    800020e0:	00075c63          	bgez	a4,800020f8 <__printf+0x410>
    800020e4:	f9040713          	addi	a4,s0,-112
    800020e8:	00f70733          	add	a4,a4,a5
    800020ec:	02d00693          	li	a3,45
    800020f0:	fed70823          	sb	a3,-16(a4)
    800020f4:	00078c93          	mv	s9,a5
    800020f8:	f8040793          	addi	a5,s0,-128
    800020fc:	01978cb3          	add	s9,a5,s9
    80002100:	f7f40d13          	addi	s10,s0,-129
    80002104:	000cc503          	lbu	a0,0(s9)
    80002108:	fffc8c93          	addi	s9,s9,-1
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	9f8080e7          	jalr	-1544(ra) # 80001b04 <consputc>
    80002114:	ff9d18e3          	bne	s10,s9,80002104 <__printf+0x41c>
    80002118:	0100006f          	j	80002128 <__printf+0x440>
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	9e8080e7          	jalr	-1560(ra) # 80001b04 <consputc>
    80002124:	000c8493          	mv	s1,s9
    80002128:	00094503          	lbu	a0,0(s2)
    8000212c:	c60510e3          	bnez	a0,80001d8c <__printf+0xa4>
    80002130:	e40c0ee3          	beqz	s8,80001f8c <__printf+0x2a4>
    80002134:	00003517          	auipc	a0,0x3
    80002138:	32c50513          	addi	a0,a0,812 # 80005460 <pr>
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	94c080e7          	jalr	-1716(ra) # 80002a88 <release>
    80002144:	e49ff06f          	j	80001f8c <__printf+0x2a4>
    80002148:	f7843783          	ld	a5,-136(s0)
    8000214c:	03000513          	li	a0,48
    80002150:	01000d13          	li	s10,16
    80002154:	00878713          	addi	a4,a5,8
    80002158:	0007bc83          	ld	s9,0(a5)
    8000215c:	f6e43c23          	sd	a4,-136(s0)
    80002160:	00000097          	auipc	ra,0x0
    80002164:	9a4080e7          	jalr	-1628(ra) # 80001b04 <consputc>
    80002168:	07800513          	li	a0,120
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	998080e7          	jalr	-1640(ra) # 80001b04 <consputc>
    80002174:	00002d97          	auipc	s11,0x2
    80002178:	fe4d8d93          	addi	s11,s11,-28 # 80004158 <digits>
    8000217c:	03ccd793          	srli	a5,s9,0x3c
    80002180:	00fd87b3          	add	a5,s11,a5
    80002184:	0007c503          	lbu	a0,0(a5)
    80002188:	fffd0d1b          	addiw	s10,s10,-1
    8000218c:	004c9c93          	slli	s9,s9,0x4
    80002190:	00000097          	auipc	ra,0x0
    80002194:	974080e7          	jalr	-1676(ra) # 80001b04 <consputc>
    80002198:	fe0d12e3          	bnez	s10,8000217c <__printf+0x494>
    8000219c:	f8dff06f          	j	80002128 <__printf+0x440>
    800021a0:	f7843783          	ld	a5,-136(s0)
    800021a4:	0007bc83          	ld	s9,0(a5)
    800021a8:	00878793          	addi	a5,a5,8
    800021ac:	f6f43c23          	sd	a5,-136(s0)
    800021b0:	000c9a63          	bnez	s9,800021c4 <__printf+0x4dc>
    800021b4:	1080006f          	j	800022bc <__printf+0x5d4>
    800021b8:	001c8c93          	addi	s9,s9,1
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	948080e7          	jalr	-1720(ra) # 80001b04 <consputc>
    800021c4:	000cc503          	lbu	a0,0(s9)
    800021c8:	fe0518e3          	bnez	a0,800021b8 <__printf+0x4d0>
    800021cc:	f5dff06f          	j	80002128 <__printf+0x440>
    800021d0:	02500513          	li	a0,37
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	930080e7          	jalr	-1744(ra) # 80001b04 <consputc>
    800021dc:	000c8513          	mv	a0,s9
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	924080e7          	jalr	-1756(ra) # 80001b04 <consputc>
    800021e8:	f41ff06f          	j	80002128 <__printf+0x440>
    800021ec:	02500513          	li	a0,37
    800021f0:	00000097          	auipc	ra,0x0
    800021f4:	914080e7          	jalr	-1772(ra) # 80001b04 <consputc>
    800021f8:	f31ff06f          	j	80002128 <__printf+0x440>
    800021fc:	00030513          	mv	a0,t1
    80002200:	00000097          	auipc	ra,0x0
    80002204:	7bc080e7          	jalr	1980(ra) # 800029bc <acquire>
    80002208:	b4dff06f          	j	80001d54 <__printf+0x6c>
    8000220c:	40c0053b          	negw	a0,a2
    80002210:	00a00713          	li	a4,10
    80002214:	02e576bb          	remuw	a3,a0,a4
    80002218:	00002d97          	auipc	s11,0x2
    8000221c:	f40d8d93          	addi	s11,s11,-192 # 80004158 <digits>
    80002220:	ff700593          	li	a1,-9
    80002224:	02069693          	slli	a3,a3,0x20
    80002228:	0206d693          	srli	a3,a3,0x20
    8000222c:	00dd86b3          	add	a3,s11,a3
    80002230:	0006c683          	lbu	a3,0(a3)
    80002234:	02e557bb          	divuw	a5,a0,a4
    80002238:	f8d40023          	sb	a3,-128(s0)
    8000223c:	10b65e63          	bge	a2,a1,80002358 <__printf+0x670>
    80002240:	06300593          	li	a1,99
    80002244:	02e7f6bb          	remuw	a3,a5,a4
    80002248:	02069693          	slli	a3,a3,0x20
    8000224c:	0206d693          	srli	a3,a3,0x20
    80002250:	00dd86b3          	add	a3,s11,a3
    80002254:	0006c683          	lbu	a3,0(a3)
    80002258:	02e7d73b          	divuw	a4,a5,a4
    8000225c:	00200793          	li	a5,2
    80002260:	f8d400a3          	sb	a3,-127(s0)
    80002264:	bca5ece3          	bltu	a1,a0,80001e3c <__printf+0x154>
    80002268:	ce5ff06f          	j	80001f4c <__printf+0x264>
    8000226c:	40e007bb          	negw	a5,a4
    80002270:	00002d97          	auipc	s11,0x2
    80002274:	ee8d8d93          	addi	s11,s11,-280 # 80004158 <digits>
    80002278:	00f7f693          	andi	a3,a5,15
    8000227c:	00dd86b3          	add	a3,s11,a3
    80002280:	0006c583          	lbu	a1,0(a3)
    80002284:	ff100613          	li	a2,-15
    80002288:	0047d69b          	srliw	a3,a5,0x4
    8000228c:	f8b40023          	sb	a1,-128(s0)
    80002290:	0047d59b          	srliw	a1,a5,0x4
    80002294:	0ac75e63          	bge	a4,a2,80002350 <__printf+0x668>
    80002298:	00f6f693          	andi	a3,a3,15
    8000229c:	00dd86b3          	add	a3,s11,a3
    800022a0:	0006c603          	lbu	a2,0(a3)
    800022a4:	00f00693          	li	a3,15
    800022a8:	0087d79b          	srliw	a5,a5,0x8
    800022ac:	f8c400a3          	sb	a2,-127(s0)
    800022b0:	d8b6e4e3          	bltu	a3,a1,80002038 <__printf+0x350>
    800022b4:	00200793          	li	a5,2
    800022b8:	e2dff06f          	j	800020e4 <__printf+0x3fc>
    800022bc:	00002c97          	auipc	s9,0x2
    800022c0:	e7cc8c93          	addi	s9,s9,-388 # 80004138 <console_handler+0xfb8>
    800022c4:	02800513          	li	a0,40
    800022c8:	ef1ff06f          	j	800021b8 <__printf+0x4d0>
    800022cc:	00700793          	li	a5,7
    800022d0:	00600c93          	li	s9,6
    800022d4:	e0dff06f          	j	800020e0 <__printf+0x3f8>
    800022d8:	00700793          	li	a5,7
    800022dc:	00600c93          	li	s9,6
    800022e0:	c69ff06f          	j	80001f48 <__printf+0x260>
    800022e4:	00300793          	li	a5,3
    800022e8:	00200c93          	li	s9,2
    800022ec:	c5dff06f          	j	80001f48 <__printf+0x260>
    800022f0:	00300793          	li	a5,3
    800022f4:	00200c93          	li	s9,2
    800022f8:	de9ff06f          	j	800020e0 <__printf+0x3f8>
    800022fc:	00400793          	li	a5,4
    80002300:	00300c93          	li	s9,3
    80002304:	dddff06f          	j	800020e0 <__printf+0x3f8>
    80002308:	00400793          	li	a5,4
    8000230c:	00300c93          	li	s9,3
    80002310:	c39ff06f          	j	80001f48 <__printf+0x260>
    80002314:	00500793          	li	a5,5
    80002318:	00400c93          	li	s9,4
    8000231c:	c2dff06f          	j	80001f48 <__printf+0x260>
    80002320:	00500793          	li	a5,5
    80002324:	00400c93          	li	s9,4
    80002328:	db9ff06f          	j	800020e0 <__printf+0x3f8>
    8000232c:	00600793          	li	a5,6
    80002330:	00500c93          	li	s9,5
    80002334:	dadff06f          	j	800020e0 <__printf+0x3f8>
    80002338:	00600793          	li	a5,6
    8000233c:	00500c93          	li	s9,5
    80002340:	c09ff06f          	j	80001f48 <__printf+0x260>
    80002344:	00800793          	li	a5,8
    80002348:	00700c93          	li	s9,7
    8000234c:	bfdff06f          	j	80001f48 <__printf+0x260>
    80002350:	00100793          	li	a5,1
    80002354:	d91ff06f          	j	800020e4 <__printf+0x3fc>
    80002358:	00100793          	li	a5,1
    8000235c:	bf1ff06f          	j	80001f4c <__printf+0x264>
    80002360:	00900793          	li	a5,9
    80002364:	00800c93          	li	s9,8
    80002368:	be1ff06f          	j	80001f48 <__printf+0x260>
    8000236c:	00002517          	auipc	a0,0x2
    80002370:	dd450513          	addi	a0,a0,-556 # 80004140 <console_handler+0xfc0>
    80002374:	00000097          	auipc	ra,0x0
    80002378:	918080e7          	jalr	-1768(ra) # 80001c8c <panic>

000000008000237c <printfinit>:
    8000237c:	fe010113          	addi	sp,sp,-32
    80002380:	00813823          	sd	s0,16(sp)
    80002384:	00913423          	sd	s1,8(sp)
    80002388:	00113c23          	sd	ra,24(sp)
    8000238c:	02010413          	addi	s0,sp,32
    80002390:	00003497          	auipc	s1,0x3
    80002394:	0d048493          	addi	s1,s1,208 # 80005460 <pr>
    80002398:	00048513          	mv	a0,s1
    8000239c:	00002597          	auipc	a1,0x2
    800023a0:	db458593          	addi	a1,a1,-588 # 80004150 <console_handler+0xfd0>
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	5f4080e7          	jalr	1524(ra) # 80002998 <initlock>
    800023ac:	01813083          	ld	ra,24(sp)
    800023b0:	01013403          	ld	s0,16(sp)
    800023b4:	0004ac23          	sw	zero,24(s1)
    800023b8:	00813483          	ld	s1,8(sp)
    800023bc:	02010113          	addi	sp,sp,32
    800023c0:	00008067          	ret

00000000800023c4 <uartinit>:
    800023c4:	ff010113          	addi	sp,sp,-16
    800023c8:	00813423          	sd	s0,8(sp)
    800023cc:	01010413          	addi	s0,sp,16
    800023d0:	100007b7          	lui	a5,0x10000
    800023d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800023d8:	f8000713          	li	a4,-128
    800023dc:	00e781a3          	sb	a4,3(a5)
    800023e0:	00300713          	li	a4,3
    800023e4:	00e78023          	sb	a4,0(a5)
    800023e8:	000780a3          	sb	zero,1(a5)
    800023ec:	00e781a3          	sb	a4,3(a5)
    800023f0:	00700693          	li	a3,7
    800023f4:	00d78123          	sb	a3,2(a5)
    800023f8:	00e780a3          	sb	a4,1(a5)
    800023fc:	00813403          	ld	s0,8(sp)
    80002400:	01010113          	addi	sp,sp,16
    80002404:	00008067          	ret

0000000080002408 <uartputc>:
    80002408:	00002797          	auipc	a5,0x2
    8000240c:	e207a783          	lw	a5,-480(a5) # 80004228 <panicked>
    80002410:	00078463          	beqz	a5,80002418 <uartputc+0x10>
    80002414:	0000006f          	j	80002414 <uartputc+0xc>
    80002418:	fd010113          	addi	sp,sp,-48
    8000241c:	02813023          	sd	s0,32(sp)
    80002420:	00913c23          	sd	s1,24(sp)
    80002424:	01213823          	sd	s2,16(sp)
    80002428:	01313423          	sd	s3,8(sp)
    8000242c:	02113423          	sd	ra,40(sp)
    80002430:	03010413          	addi	s0,sp,48
    80002434:	00002917          	auipc	s2,0x2
    80002438:	dfc90913          	addi	s2,s2,-516 # 80004230 <uart_tx_r>
    8000243c:	00093783          	ld	a5,0(s2)
    80002440:	00002497          	auipc	s1,0x2
    80002444:	df848493          	addi	s1,s1,-520 # 80004238 <uart_tx_w>
    80002448:	0004b703          	ld	a4,0(s1)
    8000244c:	02078693          	addi	a3,a5,32
    80002450:	00050993          	mv	s3,a0
    80002454:	02e69c63          	bne	a3,a4,8000248c <uartputc+0x84>
    80002458:	00001097          	auipc	ra,0x1
    8000245c:	834080e7          	jalr	-1996(ra) # 80002c8c <push_on>
    80002460:	00093783          	ld	a5,0(s2)
    80002464:	0004b703          	ld	a4,0(s1)
    80002468:	02078793          	addi	a5,a5,32
    8000246c:	00e79463          	bne	a5,a4,80002474 <uartputc+0x6c>
    80002470:	0000006f          	j	80002470 <uartputc+0x68>
    80002474:	00001097          	auipc	ra,0x1
    80002478:	88c080e7          	jalr	-1908(ra) # 80002d00 <pop_on>
    8000247c:	00093783          	ld	a5,0(s2)
    80002480:	0004b703          	ld	a4,0(s1)
    80002484:	02078693          	addi	a3,a5,32
    80002488:	fce688e3          	beq	a3,a4,80002458 <uartputc+0x50>
    8000248c:	01f77693          	andi	a3,a4,31
    80002490:	00003597          	auipc	a1,0x3
    80002494:	ff058593          	addi	a1,a1,-16 # 80005480 <uart_tx_buf>
    80002498:	00d586b3          	add	a3,a1,a3
    8000249c:	00170713          	addi	a4,a4,1
    800024a0:	01368023          	sb	s3,0(a3)
    800024a4:	00e4b023          	sd	a4,0(s1)
    800024a8:	10000637          	lui	a2,0x10000
    800024ac:	02f71063          	bne	a4,a5,800024cc <uartputc+0xc4>
    800024b0:	0340006f          	j	800024e4 <uartputc+0xdc>
    800024b4:	00074703          	lbu	a4,0(a4)
    800024b8:	00f93023          	sd	a5,0(s2)
    800024bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800024c0:	00093783          	ld	a5,0(s2)
    800024c4:	0004b703          	ld	a4,0(s1)
    800024c8:	00f70e63          	beq	a4,a5,800024e4 <uartputc+0xdc>
    800024cc:	00564683          	lbu	a3,5(a2)
    800024d0:	01f7f713          	andi	a4,a5,31
    800024d4:	00e58733          	add	a4,a1,a4
    800024d8:	0206f693          	andi	a3,a3,32
    800024dc:	00178793          	addi	a5,a5,1
    800024e0:	fc069ae3          	bnez	a3,800024b4 <uartputc+0xac>
    800024e4:	02813083          	ld	ra,40(sp)
    800024e8:	02013403          	ld	s0,32(sp)
    800024ec:	01813483          	ld	s1,24(sp)
    800024f0:	01013903          	ld	s2,16(sp)
    800024f4:	00813983          	ld	s3,8(sp)
    800024f8:	03010113          	addi	sp,sp,48
    800024fc:	00008067          	ret

0000000080002500 <uartputc_sync>:
    80002500:	ff010113          	addi	sp,sp,-16
    80002504:	00813423          	sd	s0,8(sp)
    80002508:	01010413          	addi	s0,sp,16
    8000250c:	00002717          	auipc	a4,0x2
    80002510:	d1c72703          	lw	a4,-740(a4) # 80004228 <panicked>
    80002514:	02071663          	bnez	a4,80002540 <uartputc_sync+0x40>
    80002518:	00050793          	mv	a5,a0
    8000251c:	100006b7          	lui	a3,0x10000
    80002520:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002524:	02077713          	andi	a4,a4,32
    80002528:	fe070ce3          	beqz	a4,80002520 <uartputc_sync+0x20>
    8000252c:	0ff7f793          	andi	a5,a5,255
    80002530:	00f68023          	sb	a5,0(a3)
    80002534:	00813403          	ld	s0,8(sp)
    80002538:	01010113          	addi	sp,sp,16
    8000253c:	00008067          	ret
    80002540:	0000006f          	j	80002540 <uartputc_sync+0x40>

0000000080002544 <uartstart>:
    80002544:	ff010113          	addi	sp,sp,-16
    80002548:	00813423          	sd	s0,8(sp)
    8000254c:	01010413          	addi	s0,sp,16
    80002550:	00002617          	auipc	a2,0x2
    80002554:	ce060613          	addi	a2,a2,-800 # 80004230 <uart_tx_r>
    80002558:	00002517          	auipc	a0,0x2
    8000255c:	ce050513          	addi	a0,a0,-800 # 80004238 <uart_tx_w>
    80002560:	00063783          	ld	a5,0(a2)
    80002564:	00053703          	ld	a4,0(a0)
    80002568:	04f70263          	beq	a4,a5,800025ac <uartstart+0x68>
    8000256c:	100005b7          	lui	a1,0x10000
    80002570:	00003817          	auipc	a6,0x3
    80002574:	f1080813          	addi	a6,a6,-240 # 80005480 <uart_tx_buf>
    80002578:	01c0006f          	j	80002594 <uartstart+0x50>
    8000257c:	0006c703          	lbu	a4,0(a3)
    80002580:	00f63023          	sd	a5,0(a2)
    80002584:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002588:	00063783          	ld	a5,0(a2)
    8000258c:	00053703          	ld	a4,0(a0)
    80002590:	00f70e63          	beq	a4,a5,800025ac <uartstart+0x68>
    80002594:	01f7f713          	andi	a4,a5,31
    80002598:	00e806b3          	add	a3,a6,a4
    8000259c:	0055c703          	lbu	a4,5(a1)
    800025a0:	00178793          	addi	a5,a5,1
    800025a4:	02077713          	andi	a4,a4,32
    800025a8:	fc071ae3          	bnez	a4,8000257c <uartstart+0x38>
    800025ac:	00813403          	ld	s0,8(sp)
    800025b0:	01010113          	addi	sp,sp,16
    800025b4:	00008067          	ret

00000000800025b8 <uartgetc>:
    800025b8:	ff010113          	addi	sp,sp,-16
    800025bc:	00813423          	sd	s0,8(sp)
    800025c0:	01010413          	addi	s0,sp,16
    800025c4:	10000737          	lui	a4,0x10000
    800025c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800025cc:	0017f793          	andi	a5,a5,1
    800025d0:	00078c63          	beqz	a5,800025e8 <uartgetc+0x30>
    800025d4:	00074503          	lbu	a0,0(a4)
    800025d8:	0ff57513          	andi	a0,a0,255
    800025dc:	00813403          	ld	s0,8(sp)
    800025e0:	01010113          	addi	sp,sp,16
    800025e4:	00008067          	ret
    800025e8:	fff00513          	li	a0,-1
    800025ec:	ff1ff06f          	j	800025dc <uartgetc+0x24>

00000000800025f0 <uartintr>:
    800025f0:	100007b7          	lui	a5,0x10000
    800025f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800025f8:	0017f793          	andi	a5,a5,1
    800025fc:	0a078463          	beqz	a5,800026a4 <uartintr+0xb4>
    80002600:	fe010113          	addi	sp,sp,-32
    80002604:	00813823          	sd	s0,16(sp)
    80002608:	00913423          	sd	s1,8(sp)
    8000260c:	00113c23          	sd	ra,24(sp)
    80002610:	02010413          	addi	s0,sp,32
    80002614:	100004b7          	lui	s1,0x10000
    80002618:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000261c:	0ff57513          	andi	a0,a0,255
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	534080e7          	jalr	1332(ra) # 80001b54 <consoleintr>
    80002628:	0054c783          	lbu	a5,5(s1)
    8000262c:	0017f793          	andi	a5,a5,1
    80002630:	fe0794e3          	bnez	a5,80002618 <uartintr+0x28>
    80002634:	00002617          	auipc	a2,0x2
    80002638:	bfc60613          	addi	a2,a2,-1028 # 80004230 <uart_tx_r>
    8000263c:	00002517          	auipc	a0,0x2
    80002640:	bfc50513          	addi	a0,a0,-1028 # 80004238 <uart_tx_w>
    80002644:	00063783          	ld	a5,0(a2)
    80002648:	00053703          	ld	a4,0(a0)
    8000264c:	04f70263          	beq	a4,a5,80002690 <uartintr+0xa0>
    80002650:	100005b7          	lui	a1,0x10000
    80002654:	00003817          	auipc	a6,0x3
    80002658:	e2c80813          	addi	a6,a6,-468 # 80005480 <uart_tx_buf>
    8000265c:	01c0006f          	j	80002678 <uartintr+0x88>
    80002660:	0006c703          	lbu	a4,0(a3)
    80002664:	00f63023          	sd	a5,0(a2)
    80002668:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000266c:	00063783          	ld	a5,0(a2)
    80002670:	00053703          	ld	a4,0(a0)
    80002674:	00f70e63          	beq	a4,a5,80002690 <uartintr+0xa0>
    80002678:	01f7f713          	andi	a4,a5,31
    8000267c:	00e806b3          	add	a3,a6,a4
    80002680:	0055c703          	lbu	a4,5(a1)
    80002684:	00178793          	addi	a5,a5,1
    80002688:	02077713          	andi	a4,a4,32
    8000268c:	fc071ae3          	bnez	a4,80002660 <uartintr+0x70>
    80002690:	01813083          	ld	ra,24(sp)
    80002694:	01013403          	ld	s0,16(sp)
    80002698:	00813483          	ld	s1,8(sp)
    8000269c:	02010113          	addi	sp,sp,32
    800026a0:	00008067          	ret
    800026a4:	00002617          	auipc	a2,0x2
    800026a8:	b8c60613          	addi	a2,a2,-1140 # 80004230 <uart_tx_r>
    800026ac:	00002517          	auipc	a0,0x2
    800026b0:	b8c50513          	addi	a0,a0,-1140 # 80004238 <uart_tx_w>
    800026b4:	00063783          	ld	a5,0(a2)
    800026b8:	00053703          	ld	a4,0(a0)
    800026bc:	04f70263          	beq	a4,a5,80002700 <uartintr+0x110>
    800026c0:	100005b7          	lui	a1,0x10000
    800026c4:	00003817          	auipc	a6,0x3
    800026c8:	dbc80813          	addi	a6,a6,-580 # 80005480 <uart_tx_buf>
    800026cc:	01c0006f          	j	800026e8 <uartintr+0xf8>
    800026d0:	0006c703          	lbu	a4,0(a3)
    800026d4:	00f63023          	sd	a5,0(a2)
    800026d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800026dc:	00063783          	ld	a5,0(a2)
    800026e0:	00053703          	ld	a4,0(a0)
    800026e4:	02f70063          	beq	a4,a5,80002704 <uartintr+0x114>
    800026e8:	01f7f713          	andi	a4,a5,31
    800026ec:	00e806b3          	add	a3,a6,a4
    800026f0:	0055c703          	lbu	a4,5(a1)
    800026f4:	00178793          	addi	a5,a5,1
    800026f8:	02077713          	andi	a4,a4,32
    800026fc:	fc071ae3          	bnez	a4,800026d0 <uartintr+0xe0>
    80002700:	00008067          	ret
    80002704:	00008067          	ret

0000000080002708 <kinit>:
    80002708:	fc010113          	addi	sp,sp,-64
    8000270c:	02913423          	sd	s1,40(sp)
    80002710:	fffff7b7          	lui	a5,0xfffff
    80002714:	00004497          	auipc	s1,0x4
    80002718:	d8b48493          	addi	s1,s1,-629 # 8000649f <end+0xfff>
    8000271c:	02813823          	sd	s0,48(sp)
    80002720:	01313c23          	sd	s3,24(sp)
    80002724:	00f4f4b3          	and	s1,s1,a5
    80002728:	02113c23          	sd	ra,56(sp)
    8000272c:	03213023          	sd	s2,32(sp)
    80002730:	01413823          	sd	s4,16(sp)
    80002734:	01513423          	sd	s5,8(sp)
    80002738:	04010413          	addi	s0,sp,64
    8000273c:	000017b7          	lui	a5,0x1
    80002740:	01100993          	li	s3,17
    80002744:	00f487b3          	add	a5,s1,a5
    80002748:	01b99993          	slli	s3,s3,0x1b
    8000274c:	06f9e063          	bltu	s3,a5,800027ac <kinit+0xa4>
    80002750:	00003a97          	auipc	s5,0x3
    80002754:	d50a8a93          	addi	s5,s5,-688 # 800054a0 <end>
    80002758:	0754ec63          	bltu	s1,s5,800027d0 <kinit+0xc8>
    8000275c:	0734fa63          	bgeu	s1,s3,800027d0 <kinit+0xc8>
    80002760:	00088a37          	lui	s4,0x88
    80002764:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002768:	00002917          	auipc	s2,0x2
    8000276c:	ad890913          	addi	s2,s2,-1320 # 80004240 <kmem>
    80002770:	00ca1a13          	slli	s4,s4,0xc
    80002774:	0140006f          	j	80002788 <kinit+0x80>
    80002778:	000017b7          	lui	a5,0x1
    8000277c:	00f484b3          	add	s1,s1,a5
    80002780:	0554e863          	bltu	s1,s5,800027d0 <kinit+0xc8>
    80002784:	0534f663          	bgeu	s1,s3,800027d0 <kinit+0xc8>
    80002788:	00001637          	lui	a2,0x1
    8000278c:	00100593          	li	a1,1
    80002790:	00048513          	mv	a0,s1
    80002794:	00000097          	auipc	ra,0x0
    80002798:	5e4080e7          	jalr	1508(ra) # 80002d78 <__memset>
    8000279c:	00093783          	ld	a5,0(s2)
    800027a0:	00f4b023          	sd	a5,0(s1)
    800027a4:	00993023          	sd	s1,0(s2)
    800027a8:	fd4498e3          	bne	s1,s4,80002778 <kinit+0x70>
    800027ac:	03813083          	ld	ra,56(sp)
    800027b0:	03013403          	ld	s0,48(sp)
    800027b4:	02813483          	ld	s1,40(sp)
    800027b8:	02013903          	ld	s2,32(sp)
    800027bc:	01813983          	ld	s3,24(sp)
    800027c0:	01013a03          	ld	s4,16(sp)
    800027c4:	00813a83          	ld	s5,8(sp)
    800027c8:	04010113          	addi	sp,sp,64
    800027cc:	00008067          	ret
    800027d0:	00002517          	auipc	a0,0x2
    800027d4:	9a050513          	addi	a0,a0,-1632 # 80004170 <digits+0x18>
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	4b4080e7          	jalr	1204(ra) # 80001c8c <panic>

00000000800027e0 <freerange>:
    800027e0:	fc010113          	addi	sp,sp,-64
    800027e4:	000017b7          	lui	a5,0x1
    800027e8:	02913423          	sd	s1,40(sp)
    800027ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800027f0:	009504b3          	add	s1,a0,s1
    800027f4:	fffff537          	lui	a0,0xfffff
    800027f8:	02813823          	sd	s0,48(sp)
    800027fc:	02113c23          	sd	ra,56(sp)
    80002800:	03213023          	sd	s2,32(sp)
    80002804:	01313c23          	sd	s3,24(sp)
    80002808:	01413823          	sd	s4,16(sp)
    8000280c:	01513423          	sd	s5,8(sp)
    80002810:	01613023          	sd	s6,0(sp)
    80002814:	04010413          	addi	s0,sp,64
    80002818:	00a4f4b3          	and	s1,s1,a0
    8000281c:	00f487b3          	add	a5,s1,a5
    80002820:	06f5e463          	bltu	a1,a5,80002888 <freerange+0xa8>
    80002824:	00003a97          	auipc	s5,0x3
    80002828:	c7ca8a93          	addi	s5,s5,-900 # 800054a0 <end>
    8000282c:	0954e263          	bltu	s1,s5,800028b0 <freerange+0xd0>
    80002830:	01100993          	li	s3,17
    80002834:	01b99993          	slli	s3,s3,0x1b
    80002838:	0734fc63          	bgeu	s1,s3,800028b0 <freerange+0xd0>
    8000283c:	00058a13          	mv	s4,a1
    80002840:	00002917          	auipc	s2,0x2
    80002844:	a0090913          	addi	s2,s2,-1536 # 80004240 <kmem>
    80002848:	00002b37          	lui	s6,0x2
    8000284c:	0140006f          	j	80002860 <freerange+0x80>
    80002850:	000017b7          	lui	a5,0x1
    80002854:	00f484b3          	add	s1,s1,a5
    80002858:	0554ec63          	bltu	s1,s5,800028b0 <freerange+0xd0>
    8000285c:	0534fa63          	bgeu	s1,s3,800028b0 <freerange+0xd0>
    80002860:	00001637          	lui	a2,0x1
    80002864:	00100593          	li	a1,1
    80002868:	00048513          	mv	a0,s1
    8000286c:	00000097          	auipc	ra,0x0
    80002870:	50c080e7          	jalr	1292(ra) # 80002d78 <__memset>
    80002874:	00093703          	ld	a4,0(s2)
    80002878:	016487b3          	add	a5,s1,s6
    8000287c:	00e4b023          	sd	a4,0(s1)
    80002880:	00993023          	sd	s1,0(s2)
    80002884:	fcfa76e3          	bgeu	s4,a5,80002850 <freerange+0x70>
    80002888:	03813083          	ld	ra,56(sp)
    8000288c:	03013403          	ld	s0,48(sp)
    80002890:	02813483          	ld	s1,40(sp)
    80002894:	02013903          	ld	s2,32(sp)
    80002898:	01813983          	ld	s3,24(sp)
    8000289c:	01013a03          	ld	s4,16(sp)
    800028a0:	00813a83          	ld	s5,8(sp)
    800028a4:	00013b03          	ld	s6,0(sp)
    800028a8:	04010113          	addi	sp,sp,64
    800028ac:	00008067          	ret
    800028b0:	00002517          	auipc	a0,0x2
    800028b4:	8c050513          	addi	a0,a0,-1856 # 80004170 <digits+0x18>
    800028b8:	fffff097          	auipc	ra,0xfffff
    800028bc:	3d4080e7          	jalr	980(ra) # 80001c8c <panic>

00000000800028c0 <kfree>:
    800028c0:	fe010113          	addi	sp,sp,-32
    800028c4:	00813823          	sd	s0,16(sp)
    800028c8:	00113c23          	sd	ra,24(sp)
    800028cc:	00913423          	sd	s1,8(sp)
    800028d0:	02010413          	addi	s0,sp,32
    800028d4:	03451793          	slli	a5,a0,0x34
    800028d8:	04079c63          	bnez	a5,80002930 <kfree+0x70>
    800028dc:	00003797          	auipc	a5,0x3
    800028e0:	bc478793          	addi	a5,a5,-1084 # 800054a0 <end>
    800028e4:	00050493          	mv	s1,a0
    800028e8:	04f56463          	bltu	a0,a5,80002930 <kfree+0x70>
    800028ec:	01100793          	li	a5,17
    800028f0:	01b79793          	slli	a5,a5,0x1b
    800028f4:	02f57e63          	bgeu	a0,a5,80002930 <kfree+0x70>
    800028f8:	00001637          	lui	a2,0x1
    800028fc:	00100593          	li	a1,1
    80002900:	00000097          	auipc	ra,0x0
    80002904:	478080e7          	jalr	1144(ra) # 80002d78 <__memset>
    80002908:	00002797          	auipc	a5,0x2
    8000290c:	93878793          	addi	a5,a5,-1736 # 80004240 <kmem>
    80002910:	0007b703          	ld	a4,0(a5)
    80002914:	01813083          	ld	ra,24(sp)
    80002918:	01013403          	ld	s0,16(sp)
    8000291c:	00e4b023          	sd	a4,0(s1)
    80002920:	0097b023          	sd	s1,0(a5)
    80002924:	00813483          	ld	s1,8(sp)
    80002928:	02010113          	addi	sp,sp,32
    8000292c:	00008067          	ret
    80002930:	00002517          	auipc	a0,0x2
    80002934:	84050513          	addi	a0,a0,-1984 # 80004170 <digits+0x18>
    80002938:	fffff097          	auipc	ra,0xfffff
    8000293c:	354080e7          	jalr	852(ra) # 80001c8c <panic>

0000000080002940 <kalloc>:
    80002940:	fe010113          	addi	sp,sp,-32
    80002944:	00813823          	sd	s0,16(sp)
    80002948:	00913423          	sd	s1,8(sp)
    8000294c:	00113c23          	sd	ra,24(sp)
    80002950:	02010413          	addi	s0,sp,32
    80002954:	00002797          	auipc	a5,0x2
    80002958:	8ec78793          	addi	a5,a5,-1812 # 80004240 <kmem>
    8000295c:	0007b483          	ld	s1,0(a5)
    80002960:	02048063          	beqz	s1,80002980 <kalloc+0x40>
    80002964:	0004b703          	ld	a4,0(s1)
    80002968:	00001637          	lui	a2,0x1
    8000296c:	00500593          	li	a1,5
    80002970:	00048513          	mv	a0,s1
    80002974:	00e7b023          	sd	a4,0(a5)
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	400080e7          	jalr	1024(ra) # 80002d78 <__memset>
    80002980:	01813083          	ld	ra,24(sp)
    80002984:	01013403          	ld	s0,16(sp)
    80002988:	00048513          	mv	a0,s1
    8000298c:	00813483          	ld	s1,8(sp)
    80002990:	02010113          	addi	sp,sp,32
    80002994:	00008067          	ret

0000000080002998 <initlock>:
    80002998:	ff010113          	addi	sp,sp,-16
    8000299c:	00813423          	sd	s0,8(sp)
    800029a0:	01010413          	addi	s0,sp,16
    800029a4:	00813403          	ld	s0,8(sp)
    800029a8:	00b53423          	sd	a1,8(a0)
    800029ac:	00052023          	sw	zero,0(a0)
    800029b0:	00053823          	sd	zero,16(a0)
    800029b4:	01010113          	addi	sp,sp,16
    800029b8:	00008067          	ret

00000000800029bc <acquire>:
    800029bc:	fe010113          	addi	sp,sp,-32
    800029c0:	00813823          	sd	s0,16(sp)
    800029c4:	00913423          	sd	s1,8(sp)
    800029c8:	00113c23          	sd	ra,24(sp)
    800029cc:	01213023          	sd	s2,0(sp)
    800029d0:	02010413          	addi	s0,sp,32
    800029d4:	00050493          	mv	s1,a0
    800029d8:	10002973          	csrr	s2,sstatus
    800029dc:	100027f3          	csrr	a5,sstatus
    800029e0:	ffd7f793          	andi	a5,a5,-3
    800029e4:	10079073          	csrw	sstatus,a5
    800029e8:	fffff097          	auipc	ra,0xfffff
    800029ec:	8ec080e7          	jalr	-1812(ra) # 800012d4 <mycpu>
    800029f0:	07852783          	lw	a5,120(a0)
    800029f4:	06078e63          	beqz	a5,80002a70 <acquire+0xb4>
    800029f8:	fffff097          	auipc	ra,0xfffff
    800029fc:	8dc080e7          	jalr	-1828(ra) # 800012d4 <mycpu>
    80002a00:	07852783          	lw	a5,120(a0)
    80002a04:	0004a703          	lw	a4,0(s1)
    80002a08:	0017879b          	addiw	a5,a5,1
    80002a0c:	06f52c23          	sw	a5,120(a0)
    80002a10:	04071063          	bnez	a4,80002a50 <acquire+0x94>
    80002a14:	00100713          	li	a4,1
    80002a18:	00070793          	mv	a5,a4
    80002a1c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002a20:	0007879b          	sext.w	a5,a5
    80002a24:	fe079ae3          	bnez	a5,80002a18 <acquire+0x5c>
    80002a28:	0ff0000f          	fence
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	8a8080e7          	jalr	-1880(ra) # 800012d4 <mycpu>
    80002a34:	01813083          	ld	ra,24(sp)
    80002a38:	01013403          	ld	s0,16(sp)
    80002a3c:	00a4b823          	sd	a0,16(s1)
    80002a40:	00013903          	ld	s2,0(sp)
    80002a44:	00813483          	ld	s1,8(sp)
    80002a48:	02010113          	addi	sp,sp,32
    80002a4c:	00008067          	ret
    80002a50:	0104b903          	ld	s2,16(s1)
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	880080e7          	jalr	-1920(ra) # 800012d4 <mycpu>
    80002a5c:	faa91ce3          	bne	s2,a0,80002a14 <acquire+0x58>
    80002a60:	00001517          	auipc	a0,0x1
    80002a64:	71850513          	addi	a0,a0,1816 # 80004178 <digits+0x20>
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	224080e7          	jalr	548(ra) # 80001c8c <panic>
    80002a70:	00195913          	srli	s2,s2,0x1
    80002a74:	fffff097          	auipc	ra,0xfffff
    80002a78:	860080e7          	jalr	-1952(ra) # 800012d4 <mycpu>
    80002a7c:	00197913          	andi	s2,s2,1
    80002a80:	07252e23          	sw	s2,124(a0)
    80002a84:	f75ff06f          	j	800029f8 <acquire+0x3c>

0000000080002a88 <release>:
    80002a88:	fe010113          	addi	sp,sp,-32
    80002a8c:	00813823          	sd	s0,16(sp)
    80002a90:	00113c23          	sd	ra,24(sp)
    80002a94:	00913423          	sd	s1,8(sp)
    80002a98:	01213023          	sd	s2,0(sp)
    80002a9c:	02010413          	addi	s0,sp,32
    80002aa0:	00052783          	lw	a5,0(a0)
    80002aa4:	00079a63          	bnez	a5,80002ab8 <release+0x30>
    80002aa8:	00001517          	auipc	a0,0x1
    80002aac:	6d850513          	addi	a0,a0,1752 # 80004180 <digits+0x28>
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	1dc080e7          	jalr	476(ra) # 80001c8c <panic>
    80002ab8:	01053903          	ld	s2,16(a0)
    80002abc:	00050493          	mv	s1,a0
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	814080e7          	jalr	-2028(ra) # 800012d4 <mycpu>
    80002ac8:	fea910e3          	bne	s2,a0,80002aa8 <release+0x20>
    80002acc:	0004b823          	sd	zero,16(s1)
    80002ad0:	0ff0000f          	fence
    80002ad4:	0f50000f          	fence	iorw,ow
    80002ad8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80002adc:	ffffe097          	auipc	ra,0xffffe
    80002ae0:	7f8080e7          	jalr	2040(ra) # 800012d4 <mycpu>
    80002ae4:	100027f3          	csrr	a5,sstatus
    80002ae8:	0027f793          	andi	a5,a5,2
    80002aec:	04079a63          	bnez	a5,80002b40 <release+0xb8>
    80002af0:	07852783          	lw	a5,120(a0)
    80002af4:	02f05e63          	blez	a5,80002b30 <release+0xa8>
    80002af8:	fff7871b          	addiw	a4,a5,-1
    80002afc:	06e52c23          	sw	a4,120(a0)
    80002b00:	00071c63          	bnez	a4,80002b18 <release+0x90>
    80002b04:	07c52783          	lw	a5,124(a0)
    80002b08:	00078863          	beqz	a5,80002b18 <release+0x90>
    80002b0c:	100027f3          	csrr	a5,sstatus
    80002b10:	0027e793          	ori	a5,a5,2
    80002b14:	10079073          	csrw	sstatus,a5
    80002b18:	01813083          	ld	ra,24(sp)
    80002b1c:	01013403          	ld	s0,16(sp)
    80002b20:	00813483          	ld	s1,8(sp)
    80002b24:	00013903          	ld	s2,0(sp)
    80002b28:	02010113          	addi	sp,sp,32
    80002b2c:	00008067          	ret
    80002b30:	00001517          	auipc	a0,0x1
    80002b34:	67050513          	addi	a0,a0,1648 # 800041a0 <digits+0x48>
    80002b38:	fffff097          	auipc	ra,0xfffff
    80002b3c:	154080e7          	jalr	340(ra) # 80001c8c <panic>
    80002b40:	00001517          	auipc	a0,0x1
    80002b44:	64850513          	addi	a0,a0,1608 # 80004188 <digits+0x30>
    80002b48:	fffff097          	auipc	ra,0xfffff
    80002b4c:	144080e7          	jalr	324(ra) # 80001c8c <panic>

0000000080002b50 <holding>:
    80002b50:	00052783          	lw	a5,0(a0)
    80002b54:	00079663          	bnez	a5,80002b60 <holding+0x10>
    80002b58:	00000513          	li	a0,0
    80002b5c:	00008067          	ret
    80002b60:	fe010113          	addi	sp,sp,-32
    80002b64:	00813823          	sd	s0,16(sp)
    80002b68:	00913423          	sd	s1,8(sp)
    80002b6c:	00113c23          	sd	ra,24(sp)
    80002b70:	02010413          	addi	s0,sp,32
    80002b74:	01053483          	ld	s1,16(a0)
    80002b78:	ffffe097          	auipc	ra,0xffffe
    80002b7c:	75c080e7          	jalr	1884(ra) # 800012d4 <mycpu>
    80002b80:	01813083          	ld	ra,24(sp)
    80002b84:	01013403          	ld	s0,16(sp)
    80002b88:	40a48533          	sub	a0,s1,a0
    80002b8c:	00153513          	seqz	a0,a0
    80002b90:	00813483          	ld	s1,8(sp)
    80002b94:	02010113          	addi	sp,sp,32
    80002b98:	00008067          	ret

0000000080002b9c <push_off>:
    80002b9c:	fe010113          	addi	sp,sp,-32
    80002ba0:	00813823          	sd	s0,16(sp)
    80002ba4:	00113c23          	sd	ra,24(sp)
    80002ba8:	00913423          	sd	s1,8(sp)
    80002bac:	02010413          	addi	s0,sp,32
    80002bb0:	100024f3          	csrr	s1,sstatus
    80002bb4:	100027f3          	csrr	a5,sstatus
    80002bb8:	ffd7f793          	andi	a5,a5,-3
    80002bbc:	10079073          	csrw	sstatus,a5
    80002bc0:	ffffe097          	auipc	ra,0xffffe
    80002bc4:	714080e7          	jalr	1812(ra) # 800012d4 <mycpu>
    80002bc8:	07852783          	lw	a5,120(a0)
    80002bcc:	02078663          	beqz	a5,80002bf8 <push_off+0x5c>
    80002bd0:	ffffe097          	auipc	ra,0xffffe
    80002bd4:	704080e7          	jalr	1796(ra) # 800012d4 <mycpu>
    80002bd8:	07852783          	lw	a5,120(a0)
    80002bdc:	01813083          	ld	ra,24(sp)
    80002be0:	01013403          	ld	s0,16(sp)
    80002be4:	0017879b          	addiw	a5,a5,1
    80002be8:	06f52c23          	sw	a5,120(a0)
    80002bec:	00813483          	ld	s1,8(sp)
    80002bf0:	02010113          	addi	sp,sp,32
    80002bf4:	00008067          	ret
    80002bf8:	0014d493          	srli	s1,s1,0x1
    80002bfc:	ffffe097          	auipc	ra,0xffffe
    80002c00:	6d8080e7          	jalr	1752(ra) # 800012d4 <mycpu>
    80002c04:	0014f493          	andi	s1,s1,1
    80002c08:	06952e23          	sw	s1,124(a0)
    80002c0c:	fc5ff06f          	j	80002bd0 <push_off+0x34>

0000000080002c10 <pop_off>:
    80002c10:	ff010113          	addi	sp,sp,-16
    80002c14:	00813023          	sd	s0,0(sp)
    80002c18:	00113423          	sd	ra,8(sp)
    80002c1c:	01010413          	addi	s0,sp,16
    80002c20:	ffffe097          	auipc	ra,0xffffe
    80002c24:	6b4080e7          	jalr	1716(ra) # 800012d4 <mycpu>
    80002c28:	100027f3          	csrr	a5,sstatus
    80002c2c:	0027f793          	andi	a5,a5,2
    80002c30:	04079663          	bnez	a5,80002c7c <pop_off+0x6c>
    80002c34:	07852783          	lw	a5,120(a0)
    80002c38:	02f05a63          	blez	a5,80002c6c <pop_off+0x5c>
    80002c3c:	fff7871b          	addiw	a4,a5,-1
    80002c40:	06e52c23          	sw	a4,120(a0)
    80002c44:	00071c63          	bnez	a4,80002c5c <pop_off+0x4c>
    80002c48:	07c52783          	lw	a5,124(a0)
    80002c4c:	00078863          	beqz	a5,80002c5c <pop_off+0x4c>
    80002c50:	100027f3          	csrr	a5,sstatus
    80002c54:	0027e793          	ori	a5,a5,2
    80002c58:	10079073          	csrw	sstatus,a5
    80002c5c:	00813083          	ld	ra,8(sp)
    80002c60:	00013403          	ld	s0,0(sp)
    80002c64:	01010113          	addi	sp,sp,16
    80002c68:	00008067          	ret
    80002c6c:	00001517          	auipc	a0,0x1
    80002c70:	53450513          	addi	a0,a0,1332 # 800041a0 <digits+0x48>
    80002c74:	fffff097          	auipc	ra,0xfffff
    80002c78:	018080e7          	jalr	24(ra) # 80001c8c <panic>
    80002c7c:	00001517          	auipc	a0,0x1
    80002c80:	50c50513          	addi	a0,a0,1292 # 80004188 <digits+0x30>
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	008080e7          	jalr	8(ra) # 80001c8c <panic>

0000000080002c8c <push_on>:
    80002c8c:	fe010113          	addi	sp,sp,-32
    80002c90:	00813823          	sd	s0,16(sp)
    80002c94:	00113c23          	sd	ra,24(sp)
    80002c98:	00913423          	sd	s1,8(sp)
    80002c9c:	02010413          	addi	s0,sp,32
    80002ca0:	100024f3          	csrr	s1,sstatus
    80002ca4:	100027f3          	csrr	a5,sstatus
    80002ca8:	0027e793          	ori	a5,a5,2
    80002cac:	10079073          	csrw	sstatus,a5
    80002cb0:	ffffe097          	auipc	ra,0xffffe
    80002cb4:	624080e7          	jalr	1572(ra) # 800012d4 <mycpu>
    80002cb8:	07852783          	lw	a5,120(a0)
    80002cbc:	02078663          	beqz	a5,80002ce8 <push_on+0x5c>
    80002cc0:	ffffe097          	auipc	ra,0xffffe
    80002cc4:	614080e7          	jalr	1556(ra) # 800012d4 <mycpu>
    80002cc8:	07852783          	lw	a5,120(a0)
    80002ccc:	01813083          	ld	ra,24(sp)
    80002cd0:	01013403          	ld	s0,16(sp)
    80002cd4:	0017879b          	addiw	a5,a5,1
    80002cd8:	06f52c23          	sw	a5,120(a0)
    80002cdc:	00813483          	ld	s1,8(sp)
    80002ce0:	02010113          	addi	sp,sp,32
    80002ce4:	00008067          	ret
    80002ce8:	0014d493          	srli	s1,s1,0x1
    80002cec:	ffffe097          	auipc	ra,0xffffe
    80002cf0:	5e8080e7          	jalr	1512(ra) # 800012d4 <mycpu>
    80002cf4:	0014f493          	andi	s1,s1,1
    80002cf8:	06952e23          	sw	s1,124(a0)
    80002cfc:	fc5ff06f          	j	80002cc0 <push_on+0x34>

0000000080002d00 <pop_on>:
    80002d00:	ff010113          	addi	sp,sp,-16
    80002d04:	00813023          	sd	s0,0(sp)
    80002d08:	00113423          	sd	ra,8(sp)
    80002d0c:	01010413          	addi	s0,sp,16
    80002d10:	ffffe097          	auipc	ra,0xffffe
    80002d14:	5c4080e7          	jalr	1476(ra) # 800012d4 <mycpu>
    80002d18:	100027f3          	csrr	a5,sstatus
    80002d1c:	0027f793          	andi	a5,a5,2
    80002d20:	04078463          	beqz	a5,80002d68 <pop_on+0x68>
    80002d24:	07852783          	lw	a5,120(a0)
    80002d28:	02f05863          	blez	a5,80002d58 <pop_on+0x58>
    80002d2c:	fff7879b          	addiw	a5,a5,-1
    80002d30:	06f52c23          	sw	a5,120(a0)
    80002d34:	07853783          	ld	a5,120(a0)
    80002d38:	00079863          	bnez	a5,80002d48 <pop_on+0x48>
    80002d3c:	100027f3          	csrr	a5,sstatus
    80002d40:	ffd7f793          	andi	a5,a5,-3
    80002d44:	10079073          	csrw	sstatus,a5
    80002d48:	00813083          	ld	ra,8(sp)
    80002d4c:	00013403          	ld	s0,0(sp)
    80002d50:	01010113          	addi	sp,sp,16
    80002d54:	00008067          	ret
    80002d58:	00001517          	auipc	a0,0x1
    80002d5c:	47050513          	addi	a0,a0,1136 # 800041c8 <digits+0x70>
    80002d60:	fffff097          	auipc	ra,0xfffff
    80002d64:	f2c080e7          	jalr	-212(ra) # 80001c8c <panic>
    80002d68:	00001517          	auipc	a0,0x1
    80002d6c:	44050513          	addi	a0,a0,1088 # 800041a8 <digits+0x50>
    80002d70:	fffff097          	auipc	ra,0xfffff
    80002d74:	f1c080e7          	jalr	-228(ra) # 80001c8c <panic>

0000000080002d78 <__memset>:
    80002d78:	ff010113          	addi	sp,sp,-16
    80002d7c:	00813423          	sd	s0,8(sp)
    80002d80:	01010413          	addi	s0,sp,16
    80002d84:	1a060e63          	beqz	a2,80002f40 <__memset+0x1c8>
    80002d88:	40a007b3          	neg	a5,a0
    80002d8c:	0077f793          	andi	a5,a5,7
    80002d90:	00778693          	addi	a3,a5,7
    80002d94:	00b00813          	li	a6,11
    80002d98:	0ff5f593          	andi	a1,a1,255
    80002d9c:	fff6071b          	addiw	a4,a2,-1
    80002da0:	1b06e663          	bltu	a3,a6,80002f4c <__memset+0x1d4>
    80002da4:	1cd76463          	bltu	a4,a3,80002f6c <__memset+0x1f4>
    80002da8:	1a078e63          	beqz	a5,80002f64 <__memset+0x1ec>
    80002dac:	00b50023          	sb	a1,0(a0)
    80002db0:	00100713          	li	a4,1
    80002db4:	1ae78463          	beq	a5,a4,80002f5c <__memset+0x1e4>
    80002db8:	00b500a3          	sb	a1,1(a0)
    80002dbc:	00200713          	li	a4,2
    80002dc0:	1ae78a63          	beq	a5,a4,80002f74 <__memset+0x1fc>
    80002dc4:	00b50123          	sb	a1,2(a0)
    80002dc8:	00300713          	li	a4,3
    80002dcc:	18e78463          	beq	a5,a4,80002f54 <__memset+0x1dc>
    80002dd0:	00b501a3          	sb	a1,3(a0)
    80002dd4:	00400713          	li	a4,4
    80002dd8:	1ae78263          	beq	a5,a4,80002f7c <__memset+0x204>
    80002ddc:	00b50223          	sb	a1,4(a0)
    80002de0:	00500713          	li	a4,5
    80002de4:	1ae78063          	beq	a5,a4,80002f84 <__memset+0x20c>
    80002de8:	00b502a3          	sb	a1,5(a0)
    80002dec:	00700713          	li	a4,7
    80002df0:	18e79e63          	bne	a5,a4,80002f8c <__memset+0x214>
    80002df4:	00b50323          	sb	a1,6(a0)
    80002df8:	00700e93          	li	t4,7
    80002dfc:	00859713          	slli	a4,a1,0x8
    80002e00:	00e5e733          	or	a4,a1,a4
    80002e04:	01059e13          	slli	t3,a1,0x10
    80002e08:	01c76e33          	or	t3,a4,t3
    80002e0c:	01859313          	slli	t1,a1,0x18
    80002e10:	006e6333          	or	t1,t3,t1
    80002e14:	02059893          	slli	a7,a1,0x20
    80002e18:	40f60e3b          	subw	t3,a2,a5
    80002e1c:	011368b3          	or	a7,t1,a7
    80002e20:	02859813          	slli	a6,a1,0x28
    80002e24:	0108e833          	or	a6,a7,a6
    80002e28:	03059693          	slli	a3,a1,0x30
    80002e2c:	003e589b          	srliw	a7,t3,0x3
    80002e30:	00d866b3          	or	a3,a6,a3
    80002e34:	03859713          	slli	a4,a1,0x38
    80002e38:	00389813          	slli	a6,a7,0x3
    80002e3c:	00f507b3          	add	a5,a0,a5
    80002e40:	00e6e733          	or	a4,a3,a4
    80002e44:	000e089b          	sext.w	a7,t3
    80002e48:	00f806b3          	add	a3,a6,a5
    80002e4c:	00e7b023          	sd	a4,0(a5)
    80002e50:	00878793          	addi	a5,a5,8
    80002e54:	fed79ce3          	bne	a5,a3,80002e4c <__memset+0xd4>
    80002e58:	ff8e7793          	andi	a5,t3,-8
    80002e5c:	0007871b          	sext.w	a4,a5
    80002e60:	01d787bb          	addw	a5,a5,t4
    80002e64:	0ce88e63          	beq	a7,a4,80002f40 <__memset+0x1c8>
    80002e68:	00f50733          	add	a4,a0,a5
    80002e6c:	00b70023          	sb	a1,0(a4)
    80002e70:	0017871b          	addiw	a4,a5,1
    80002e74:	0cc77663          	bgeu	a4,a2,80002f40 <__memset+0x1c8>
    80002e78:	00e50733          	add	a4,a0,a4
    80002e7c:	00b70023          	sb	a1,0(a4)
    80002e80:	0027871b          	addiw	a4,a5,2
    80002e84:	0ac77e63          	bgeu	a4,a2,80002f40 <__memset+0x1c8>
    80002e88:	00e50733          	add	a4,a0,a4
    80002e8c:	00b70023          	sb	a1,0(a4)
    80002e90:	0037871b          	addiw	a4,a5,3
    80002e94:	0ac77663          	bgeu	a4,a2,80002f40 <__memset+0x1c8>
    80002e98:	00e50733          	add	a4,a0,a4
    80002e9c:	00b70023          	sb	a1,0(a4)
    80002ea0:	0047871b          	addiw	a4,a5,4
    80002ea4:	08c77e63          	bgeu	a4,a2,80002f40 <__memset+0x1c8>
    80002ea8:	00e50733          	add	a4,a0,a4
    80002eac:	00b70023          	sb	a1,0(a4)
    80002eb0:	0057871b          	addiw	a4,a5,5
    80002eb4:	08c77663          	bgeu	a4,a2,80002f40 <__memset+0x1c8>
    80002eb8:	00e50733          	add	a4,a0,a4
    80002ebc:	00b70023          	sb	a1,0(a4)
    80002ec0:	0067871b          	addiw	a4,a5,6
    80002ec4:	06c77e63          	bgeu	a4,a2,80002f40 <__memset+0x1c8>
    80002ec8:	00e50733          	add	a4,a0,a4
    80002ecc:	00b70023          	sb	a1,0(a4)
    80002ed0:	0077871b          	addiw	a4,a5,7
    80002ed4:	06c77663          	bgeu	a4,a2,80002f40 <__memset+0x1c8>
    80002ed8:	00e50733          	add	a4,a0,a4
    80002edc:	00b70023          	sb	a1,0(a4)
    80002ee0:	0087871b          	addiw	a4,a5,8
    80002ee4:	04c77e63          	bgeu	a4,a2,80002f40 <__memset+0x1c8>
    80002ee8:	00e50733          	add	a4,a0,a4
    80002eec:	00b70023          	sb	a1,0(a4)
    80002ef0:	0097871b          	addiw	a4,a5,9
    80002ef4:	04c77663          	bgeu	a4,a2,80002f40 <__memset+0x1c8>
    80002ef8:	00e50733          	add	a4,a0,a4
    80002efc:	00b70023          	sb	a1,0(a4)
    80002f00:	00a7871b          	addiw	a4,a5,10
    80002f04:	02c77e63          	bgeu	a4,a2,80002f40 <__memset+0x1c8>
    80002f08:	00e50733          	add	a4,a0,a4
    80002f0c:	00b70023          	sb	a1,0(a4)
    80002f10:	00b7871b          	addiw	a4,a5,11
    80002f14:	02c77663          	bgeu	a4,a2,80002f40 <__memset+0x1c8>
    80002f18:	00e50733          	add	a4,a0,a4
    80002f1c:	00b70023          	sb	a1,0(a4)
    80002f20:	00c7871b          	addiw	a4,a5,12
    80002f24:	00c77e63          	bgeu	a4,a2,80002f40 <__memset+0x1c8>
    80002f28:	00e50733          	add	a4,a0,a4
    80002f2c:	00b70023          	sb	a1,0(a4)
    80002f30:	00d7879b          	addiw	a5,a5,13
    80002f34:	00c7f663          	bgeu	a5,a2,80002f40 <__memset+0x1c8>
    80002f38:	00f507b3          	add	a5,a0,a5
    80002f3c:	00b78023          	sb	a1,0(a5)
    80002f40:	00813403          	ld	s0,8(sp)
    80002f44:	01010113          	addi	sp,sp,16
    80002f48:	00008067          	ret
    80002f4c:	00b00693          	li	a3,11
    80002f50:	e55ff06f          	j	80002da4 <__memset+0x2c>
    80002f54:	00300e93          	li	t4,3
    80002f58:	ea5ff06f          	j	80002dfc <__memset+0x84>
    80002f5c:	00100e93          	li	t4,1
    80002f60:	e9dff06f          	j	80002dfc <__memset+0x84>
    80002f64:	00000e93          	li	t4,0
    80002f68:	e95ff06f          	j	80002dfc <__memset+0x84>
    80002f6c:	00000793          	li	a5,0
    80002f70:	ef9ff06f          	j	80002e68 <__memset+0xf0>
    80002f74:	00200e93          	li	t4,2
    80002f78:	e85ff06f          	j	80002dfc <__memset+0x84>
    80002f7c:	00400e93          	li	t4,4
    80002f80:	e7dff06f          	j	80002dfc <__memset+0x84>
    80002f84:	00500e93          	li	t4,5
    80002f88:	e75ff06f          	j	80002dfc <__memset+0x84>
    80002f8c:	00600e93          	li	t4,6
    80002f90:	e6dff06f          	j	80002dfc <__memset+0x84>

0000000080002f94 <__memmove>:
    80002f94:	ff010113          	addi	sp,sp,-16
    80002f98:	00813423          	sd	s0,8(sp)
    80002f9c:	01010413          	addi	s0,sp,16
    80002fa0:	0e060863          	beqz	a2,80003090 <__memmove+0xfc>
    80002fa4:	fff6069b          	addiw	a3,a2,-1
    80002fa8:	0006881b          	sext.w	a6,a3
    80002fac:	0ea5e863          	bltu	a1,a0,8000309c <__memmove+0x108>
    80002fb0:	00758713          	addi	a4,a1,7
    80002fb4:	00a5e7b3          	or	a5,a1,a0
    80002fb8:	40a70733          	sub	a4,a4,a0
    80002fbc:	0077f793          	andi	a5,a5,7
    80002fc0:	00f73713          	sltiu	a4,a4,15
    80002fc4:	00174713          	xori	a4,a4,1
    80002fc8:	0017b793          	seqz	a5,a5
    80002fcc:	00e7f7b3          	and	a5,a5,a4
    80002fd0:	10078863          	beqz	a5,800030e0 <__memmove+0x14c>
    80002fd4:	00900793          	li	a5,9
    80002fd8:	1107f463          	bgeu	a5,a6,800030e0 <__memmove+0x14c>
    80002fdc:	0036581b          	srliw	a6,a2,0x3
    80002fe0:	fff8081b          	addiw	a6,a6,-1
    80002fe4:	02081813          	slli	a6,a6,0x20
    80002fe8:	01d85893          	srli	a7,a6,0x1d
    80002fec:	00858813          	addi	a6,a1,8
    80002ff0:	00058793          	mv	a5,a1
    80002ff4:	00050713          	mv	a4,a0
    80002ff8:	01088833          	add	a6,a7,a6
    80002ffc:	0007b883          	ld	a7,0(a5)
    80003000:	00878793          	addi	a5,a5,8
    80003004:	00870713          	addi	a4,a4,8
    80003008:	ff173c23          	sd	a7,-8(a4)
    8000300c:	ff0798e3          	bne	a5,a6,80002ffc <__memmove+0x68>
    80003010:	ff867713          	andi	a4,a2,-8
    80003014:	02071793          	slli	a5,a4,0x20
    80003018:	0207d793          	srli	a5,a5,0x20
    8000301c:	00f585b3          	add	a1,a1,a5
    80003020:	40e686bb          	subw	a3,a3,a4
    80003024:	00f507b3          	add	a5,a0,a5
    80003028:	06e60463          	beq	a2,a4,80003090 <__memmove+0xfc>
    8000302c:	0005c703          	lbu	a4,0(a1)
    80003030:	00e78023          	sb	a4,0(a5)
    80003034:	04068e63          	beqz	a3,80003090 <__memmove+0xfc>
    80003038:	0015c603          	lbu	a2,1(a1)
    8000303c:	00100713          	li	a4,1
    80003040:	00c780a3          	sb	a2,1(a5)
    80003044:	04e68663          	beq	a3,a4,80003090 <__memmove+0xfc>
    80003048:	0025c603          	lbu	a2,2(a1)
    8000304c:	00200713          	li	a4,2
    80003050:	00c78123          	sb	a2,2(a5)
    80003054:	02e68e63          	beq	a3,a4,80003090 <__memmove+0xfc>
    80003058:	0035c603          	lbu	a2,3(a1)
    8000305c:	00300713          	li	a4,3
    80003060:	00c781a3          	sb	a2,3(a5)
    80003064:	02e68663          	beq	a3,a4,80003090 <__memmove+0xfc>
    80003068:	0045c603          	lbu	a2,4(a1)
    8000306c:	00400713          	li	a4,4
    80003070:	00c78223          	sb	a2,4(a5)
    80003074:	00e68e63          	beq	a3,a4,80003090 <__memmove+0xfc>
    80003078:	0055c603          	lbu	a2,5(a1)
    8000307c:	00500713          	li	a4,5
    80003080:	00c782a3          	sb	a2,5(a5)
    80003084:	00e68663          	beq	a3,a4,80003090 <__memmove+0xfc>
    80003088:	0065c703          	lbu	a4,6(a1)
    8000308c:	00e78323          	sb	a4,6(a5)
    80003090:	00813403          	ld	s0,8(sp)
    80003094:	01010113          	addi	sp,sp,16
    80003098:	00008067          	ret
    8000309c:	02061713          	slli	a4,a2,0x20
    800030a0:	02075713          	srli	a4,a4,0x20
    800030a4:	00e587b3          	add	a5,a1,a4
    800030a8:	f0f574e3          	bgeu	a0,a5,80002fb0 <__memmove+0x1c>
    800030ac:	02069613          	slli	a2,a3,0x20
    800030b0:	02065613          	srli	a2,a2,0x20
    800030b4:	fff64613          	not	a2,a2
    800030b8:	00e50733          	add	a4,a0,a4
    800030bc:	00c78633          	add	a2,a5,a2
    800030c0:	fff7c683          	lbu	a3,-1(a5)
    800030c4:	fff78793          	addi	a5,a5,-1
    800030c8:	fff70713          	addi	a4,a4,-1
    800030cc:	00d70023          	sb	a3,0(a4)
    800030d0:	fec798e3          	bne	a5,a2,800030c0 <__memmove+0x12c>
    800030d4:	00813403          	ld	s0,8(sp)
    800030d8:	01010113          	addi	sp,sp,16
    800030dc:	00008067          	ret
    800030e0:	02069713          	slli	a4,a3,0x20
    800030e4:	02075713          	srli	a4,a4,0x20
    800030e8:	00170713          	addi	a4,a4,1
    800030ec:	00e50733          	add	a4,a0,a4
    800030f0:	00050793          	mv	a5,a0
    800030f4:	0005c683          	lbu	a3,0(a1)
    800030f8:	00178793          	addi	a5,a5,1
    800030fc:	00158593          	addi	a1,a1,1
    80003100:	fed78fa3          	sb	a3,-1(a5)
    80003104:	fee798e3          	bne	a5,a4,800030f4 <__memmove+0x160>
    80003108:	f89ff06f          	j	80003090 <__memmove+0xfc>

000000008000310c <__putc>:
    8000310c:	fe010113          	addi	sp,sp,-32
    80003110:	00813823          	sd	s0,16(sp)
    80003114:	00113c23          	sd	ra,24(sp)
    80003118:	02010413          	addi	s0,sp,32
    8000311c:	00050793          	mv	a5,a0
    80003120:	fef40593          	addi	a1,s0,-17
    80003124:	00100613          	li	a2,1
    80003128:	00000513          	li	a0,0
    8000312c:	fef407a3          	sb	a5,-17(s0)
    80003130:	fffff097          	auipc	ra,0xfffff
    80003134:	b3c080e7          	jalr	-1220(ra) # 80001c6c <console_write>
    80003138:	01813083          	ld	ra,24(sp)
    8000313c:	01013403          	ld	s0,16(sp)
    80003140:	02010113          	addi	sp,sp,32
    80003144:	00008067          	ret

0000000080003148 <__getc>:
    80003148:	fe010113          	addi	sp,sp,-32
    8000314c:	00813823          	sd	s0,16(sp)
    80003150:	00113c23          	sd	ra,24(sp)
    80003154:	02010413          	addi	s0,sp,32
    80003158:	fe840593          	addi	a1,s0,-24
    8000315c:	00100613          	li	a2,1
    80003160:	00000513          	li	a0,0
    80003164:	fffff097          	auipc	ra,0xfffff
    80003168:	ae8080e7          	jalr	-1304(ra) # 80001c4c <console_read>
    8000316c:	fe844503          	lbu	a0,-24(s0)
    80003170:	01813083          	ld	ra,24(sp)
    80003174:	01013403          	ld	s0,16(sp)
    80003178:	02010113          	addi	sp,sp,32
    8000317c:	00008067          	ret

0000000080003180 <console_handler>:
    80003180:	fe010113          	addi	sp,sp,-32
    80003184:	00813823          	sd	s0,16(sp)
    80003188:	00113c23          	sd	ra,24(sp)
    8000318c:	00913423          	sd	s1,8(sp)
    80003190:	02010413          	addi	s0,sp,32
    80003194:	14202773          	csrr	a4,scause
    80003198:	100027f3          	csrr	a5,sstatus
    8000319c:	0027f793          	andi	a5,a5,2
    800031a0:	06079e63          	bnez	a5,8000321c <console_handler+0x9c>
    800031a4:	00074c63          	bltz	a4,800031bc <console_handler+0x3c>
    800031a8:	01813083          	ld	ra,24(sp)
    800031ac:	01013403          	ld	s0,16(sp)
    800031b0:	00813483          	ld	s1,8(sp)
    800031b4:	02010113          	addi	sp,sp,32
    800031b8:	00008067          	ret
    800031bc:	0ff77713          	andi	a4,a4,255
    800031c0:	00900793          	li	a5,9
    800031c4:	fef712e3          	bne	a4,a5,800031a8 <console_handler+0x28>
    800031c8:	ffffe097          	auipc	ra,0xffffe
    800031cc:	6dc080e7          	jalr	1756(ra) # 800018a4 <plic_claim>
    800031d0:	00a00793          	li	a5,10
    800031d4:	00050493          	mv	s1,a0
    800031d8:	02f50c63          	beq	a0,a5,80003210 <console_handler+0x90>
    800031dc:	fc0506e3          	beqz	a0,800031a8 <console_handler+0x28>
    800031e0:	00050593          	mv	a1,a0
    800031e4:	00001517          	auipc	a0,0x1
    800031e8:	eec50513          	addi	a0,a0,-276 # 800040d0 <console_handler+0xf50>
    800031ec:	fffff097          	auipc	ra,0xfffff
    800031f0:	afc080e7          	jalr	-1284(ra) # 80001ce8 <__printf>
    800031f4:	01013403          	ld	s0,16(sp)
    800031f8:	01813083          	ld	ra,24(sp)
    800031fc:	00048513          	mv	a0,s1
    80003200:	00813483          	ld	s1,8(sp)
    80003204:	02010113          	addi	sp,sp,32
    80003208:	ffffe317          	auipc	t1,0xffffe
    8000320c:	6d430067          	jr	1748(t1) # 800018dc <plic_complete>
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	3e0080e7          	jalr	992(ra) # 800025f0 <uartintr>
    80003218:	fddff06f          	j	800031f4 <console_handler+0x74>
    8000321c:	00001517          	auipc	a0,0x1
    80003220:	fb450513          	addi	a0,a0,-76 # 800041d0 <digits+0x78>
    80003224:	fffff097          	auipc	ra,0xfffff
    80003228:	a68080e7          	jalr	-1432(ra) # 80001c8c <panic>
	...

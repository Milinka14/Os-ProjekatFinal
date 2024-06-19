
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	b6013103          	ld	sp,-1184(sp) # 8000cb60 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0d4070ef          	jal	ra,800070f0 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <pushRegisters>:
.global pushRegisters
pushRegisters:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <popRegisters>:

.global popRegisters
popRegisters:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	538010ef          	jal	ra,800026bc <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001208:	10010113          	addi	sp,sp,256

    8000120c:	10200073          	sret

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    ret
    80001220:	00008067          	ret

0000000080001224 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001224:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001228:	00b29a63          	bne	t0,a1,8000123c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000122c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001230:	fe029ae3          	bnez	t0,80001224 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001234:	00000513          	li	a0,0
    jr ra                  # Return.
    80001238:	00008067          	ret

000000008000123c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000123c:	00100513          	li	a0,1
    80001240:	00008067          	ret

0000000080001244 <_ZN7kBufferC1Ei>:
//
// iskoriscen buffer iz test primjera

#include "../h/kBuffer.hpp"

kBuffer::kBuffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80001244:	fe010113          	addi	sp,sp,-32
    80001248:	00113c23          	sd	ra,24(sp)
    8000124c:	00813823          	sd	s0,16(sp)
    80001250:	00913423          	sd	s1,8(sp)
    80001254:	01213023          	sd	s2,0(sp)
    80001258:	02010413          	addi	s0,sp,32
    8000125c:	00050493          	mv	s1,a0
    80001260:	00058913          	mv	s2,a1
    80001264:	0015879b          	addiw	a5,a1,1
    80001268:	0007851b          	sext.w	a0,a5
    8000126c:	00f4a023          	sw	a5,0(s1)
    80001270:	0004a823          	sw	zero,16(s1)
    80001274:	0004aa23          	sw	zero,20(s1)
    buffer = (char *) Allocator::_malloc(sizeof(int) * cap);
    80001278:	00251513          	slli	a0,a0,0x2
    8000127c:	00001097          	auipc	ra,0x1
    80001280:	258080e7          	jalr	600(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
    80001284:	00a4b423          	sd	a0,8(s1)
    friend class Riscv;

    static List<TCB> blockedTimedWait;

    void* operator new(size_t size) {
        return Allocator::_malloc(size);
    80001288:	02000513          	li	a0,32
    8000128c:	00001097          	auipc	ra,0x1
    80001290:	248080e7          	jalr	584(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
    kSemaphore(uint64 init = 1): val(init) {}
    80001294:	00052023          	sw	zero,0(a0)
public:
    friend class TCB;
    friend class Riscv;
    friend class kSemaphore;

    List() : head(0), tail(0) {}
    80001298:	00053423          	sd	zero,8(a0)
    8000129c:	00053823          	sd	zero,16(a0)
    800012a0:	00050c23          	sb	zero,24(a0)
    itemAvailable = new kSemaphore(0);
    800012a4:	02a4b023          	sd	a0,32(s1)
        return Allocator::_malloc(size);
    800012a8:	02000513          	li	a0,32
    800012ac:	00001097          	auipc	ra,0x1
    800012b0:	228080e7          	jalr	552(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
    kSemaphore(uint64 init = 1): val(init) {}
    800012b4:	01252023          	sw	s2,0(a0)
    800012b8:	00053423          	sd	zero,8(a0)
    800012bc:	00053823          	sd	zero,16(a0)
    800012c0:	00050c23          	sb	zero,24(a0)
    spaceAvailable = new kSemaphore(_cap);
    800012c4:	00a4bc23          	sd	a0,24(s1)
        return Allocator::_malloc(size);
    800012c8:	02000513          	li	a0,32
    800012cc:	00001097          	auipc	ra,0x1
    800012d0:	208080e7          	jalr	520(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
    kSemaphore(uint64 init = 1): val(init) {}
    800012d4:	00100913          	li	s2,1
    800012d8:	01252023          	sw	s2,0(a0)
    800012dc:	00053423          	sd	zero,8(a0)
    800012e0:	00053823          	sd	zero,16(a0)
    800012e4:	00050c23          	sb	zero,24(a0)
    mutexHead = new kSemaphore(1);
    800012e8:	02a4b423          	sd	a0,40(s1)
        return Allocator::_malloc(size);
    800012ec:	02000513          	li	a0,32
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	1e4080e7          	jalr	484(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
    kSemaphore(uint64 init = 1): val(init) {}
    800012f8:	01252023          	sw	s2,0(a0)
    800012fc:	00053423          	sd	zero,8(a0)
    80001300:	00053823          	sd	zero,16(a0)
    80001304:	00050c23          	sb	zero,24(a0)
    mutexTail = new kSemaphore(1);
    80001308:	02a4b823          	sd	a0,48(s1)
}
    8000130c:	01813083          	ld	ra,24(sp)
    80001310:	01013403          	ld	s0,16(sp)
    80001314:	00813483          	ld	s1,8(sp)
    80001318:	00013903          	ld	s2,0(sp)
    8000131c:	02010113          	addi	sp,sp,32
    80001320:	00008067          	ret

0000000080001324 <_ZN7kBufferD1Ev>:

kBuffer::~kBuffer() {
    80001324:	fe010113          	addi	sp,sp,-32
    80001328:	00113c23          	sd	ra,24(sp)
    8000132c:	00813823          	sd	s0,16(sp)
    80001330:	00913423          	sd	s1,8(sp)
    80001334:	02010413          	addi	s0,sp,32
    80001338:	00050493          	mv	s1,a0
    Allocator::_mem_free(buffer);
    8000133c:	00853503          	ld	a0,8(a0)
    80001340:	00001097          	auipc	ra,0x1
    80001344:	29c080e7          	jalr	668(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
    itemAvailable->closeSem();
    80001348:	0204b503          	ld	a0,32(s1)
    8000134c:	00002097          	auipc	ra,0x2
    80001350:	f7c080e7          	jalr	-132(ra) # 800032c8 <_ZN10kSemaphore8closeSemEv>
    spaceAvailable->closeSem();
    80001354:	0184b503          	ld	a0,24(s1)
    80001358:	00002097          	auipc	ra,0x2
    8000135c:	f70080e7          	jalr	-144(ra) # 800032c8 <_ZN10kSemaphore8closeSemEv>
    mutexTail->closeSem();
    80001360:	0304b503          	ld	a0,48(s1)
    80001364:	00002097          	auipc	ra,0x2
    80001368:	f64080e7          	jalr	-156(ra) # 800032c8 <_ZN10kSemaphore8closeSemEv>
    mutexHead->closeSem();
    8000136c:	0284b503          	ld	a0,40(s1)
    80001370:	00002097          	auipc	ra,0x2
    80001374:	f58080e7          	jalr	-168(ra) # 800032c8 <_ZN10kSemaphore8closeSemEv>
}
    80001378:	01813083          	ld	ra,24(sp)
    8000137c:	01013403          	ld	s0,16(sp)
    80001380:	00813483          	ld	s1,8(sp)
    80001384:	02010113          	addi	sp,sp,32
    80001388:	00008067          	ret

000000008000138c <_ZN7kBuffer3putEc>:

void kBuffer::put(char val) {
    8000138c:	fe010113          	addi	sp,sp,-32
    80001390:	00113c23          	sd	ra,24(sp)
    80001394:	00813823          	sd	s0,16(sp)
    80001398:	00913423          	sd	s1,8(sp)
    8000139c:	01213023          	sd	s2,0(sp)
    800013a0:	02010413          	addi	s0,sp,32
    800013a4:	00050493          	mv	s1,a0
    800013a8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800013ac:	01853503          	ld	a0,24(a0)
    800013b0:	00002097          	auipc	ra,0x2
    800013b4:	cd8080e7          	jalr	-808(ra) # 80003088 <_ZN10kSemaphore4waitEv>

    mutexTail->wait();
    800013b8:	0304b503          	ld	a0,48(s1)
    800013bc:	00002097          	auipc	ra,0x2
    800013c0:	ccc080e7          	jalr	-820(ra) # 80003088 <_ZN10kSemaphore4waitEv>

    buffer[tail] = val;
    800013c4:	0084b783          	ld	a5,8(s1)
    800013c8:	0144a703          	lw	a4,20(s1)
    800013cc:	00e787b3          	add	a5,a5,a4
    800013d0:	01278023          	sb	s2,0(a5)
    tail = (tail + 1) % cap;
    800013d4:	0144a783          	lw	a5,20(s1)
    800013d8:	0017879b          	addiw	a5,a5,1
    800013dc:	0004a703          	lw	a4,0(s1)
    800013e0:	02e7e7bb          	remw	a5,a5,a4
    800013e4:	00f4aa23          	sw	a5,20(s1)

    mutexTail->signal();
    800013e8:	0304b503          	ld	a0,48(s1)
    800013ec:	00002097          	auipc	ra,0x2
    800013f0:	e10080e7          	jalr	-496(ra) # 800031fc <_ZN10kSemaphore6signalEv>

    itemAvailable->signal();
    800013f4:	0204b503          	ld	a0,32(s1)
    800013f8:	00002097          	auipc	ra,0x2
    800013fc:	e04080e7          	jalr	-508(ra) # 800031fc <_ZN10kSemaphore6signalEv>
}
    80001400:	01813083          	ld	ra,24(sp)
    80001404:	01013403          	ld	s0,16(sp)
    80001408:	00813483          	ld	s1,8(sp)
    8000140c:	00013903          	ld	s2,0(sp)
    80001410:	02010113          	addi	sp,sp,32
    80001414:	00008067          	ret

0000000080001418 <_ZN7kBuffer3getEv>:

char kBuffer::get() {
    80001418:	fe010113          	addi	sp,sp,-32
    8000141c:	00113c23          	sd	ra,24(sp)
    80001420:	00813823          	sd	s0,16(sp)
    80001424:	00913423          	sd	s1,8(sp)
    80001428:	01213023          	sd	s2,0(sp)
    8000142c:	02010413          	addi	s0,sp,32
    80001430:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80001434:	02053503          	ld	a0,32(a0)
    80001438:	00002097          	auipc	ra,0x2
    8000143c:	c50080e7          	jalr	-944(ra) # 80003088 <_ZN10kSemaphore4waitEv>

    mutexHead->wait();
    80001440:	0284b503          	ld	a0,40(s1)
    80001444:	00002097          	auipc	ra,0x2
    80001448:	c44080e7          	jalr	-956(ra) # 80003088 <_ZN10kSemaphore4waitEv>

    char ret = buffer[head];
    8000144c:	0084b703          	ld	a4,8(s1)
    80001450:	0104a783          	lw	a5,16(s1)
    80001454:	00f70733          	add	a4,a4,a5
    80001458:	00074903          	lbu	s2,0(a4)
    head = (head + 1) % cap;
    8000145c:	0017879b          	addiw	a5,a5,1
    80001460:	0004a703          	lw	a4,0(s1)
    80001464:	02e7e7bb          	remw	a5,a5,a4
    80001468:	00f4a823          	sw	a5,16(s1)

    mutexHead->signal();
    8000146c:	0284b503          	ld	a0,40(s1)
    80001470:	00002097          	auipc	ra,0x2
    80001474:	d8c080e7          	jalr	-628(ra) # 800031fc <_ZN10kSemaphore6signalEv>

    spaceAvailable->signal();
    80001478:	0184b503          	ld	a0,24(s1)
    8000147c:	00002097          	auipc	ra,0x2
    80001480:	d80080e7          	jalr	-640(ra) # 800031fc <_ZN10kSemaphore6signalEv>
    return ret;
}
    80001484:	00090513          	mv	a0,s2
    80001488:	01813083          	ld	ra,24(sp)
    8000148c:	01013403          	ld	s0,16(sp)
    80001490:	00813483          	ld	s1,8(sp)
    80001494:	00013903          	ld	s2,0(sp)
    80001498:	02010113          	addi	sp,sp,32
    8000149c:	00008067          	ret

00000000800014a0 <_ZN7kBuffer6getCntEv>:

int kBuffer::getCnt() {
    800014a0:	fe010113          	addi	sp,sp,-32
    800014a4:	00113c23          	sd	ra,24(sp)
    800014a8:	00813823          	sd	s0,16(sp)
    800014ac:	00913423          	sd	s1,8(sp)
    800014b0:	01213023          	sd	s2,0(sp)
    800014b4:	02010413          	addi	s0,sp,32
    800014b8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800014bc:	02853503          	ld	a0,40(a0)
    800014c0:	00002097          	auipc	ra,0x2
    800014c4:	bc8080e7          	jalr	-1080(ra) # 80003088 <_ZN10kSemaphore4waitEv>

    mutexTail->wait();
    800014c8:	0304b503          	ld	a0,48(s1)
    800014cc:	00002097          	auipc	ra,0x2
    800014d0:	bbc080e7          	jalr	-1092(ra) # 80003088 <_ZN10kSemaphore4waitEv>

    if (tail >= head) {
    800014d4:	0144a783          	lw	a5,20(s1)
    800014d8:	0104a903          	lw	s2,16(s1)
    800014dc:	0327ce63          	blt	a5,s2,80001518 <_ZN7kBuffer6getCntEv+0x78>
        ret = tail - head;
    800014e0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800014e4:	0304b503          	ld	a0,48(s1)
    800014e8:	00002097          	auipc	ra,0x2
    800014ec:	d14080e7          	jalr	-748(ra) # 800031fc <_ZN10kSemaphore6signalEv>

    mutexHead->signal();
    800014f0:	0284b503          	ld	a0,40(s1)
    800014f4:	00002097          	auipc	ra,0x2
    800014f8:	d08080e7          	jalr	-760(ra) # 800031fc <_ZN10kSemaphore6signalEv>

    return ret;
    800014fc:	00090513          	mv	a0,s2
    80001500:	01813083          	ld	ra,24(sp)
    80001504:	01013403          	ld	s0,16(sp)
    80001508:	00813483          	ld	s1,8(sp)
    8000150c:	00013903          	ld	s2,0(sp)
    80001510:	02010113          	addi	sp,sp,32
    80001514:	00008067          	ret
        ret = cap - head + tail;
    80001518:	0004a703          	lw	a4,0(s1)
    8000151c:	4127093b          	subw	s2,a4,s2
    80001520:	00f9093b          	addw	s2,s2,a5
    80001524:	fc1ff06f          	j	800014e4 <_ZN7kBuffer6getCntEv+0x44>

0000000080001528 <_Z5scallmmmmmm>:
// Created by os on 5/16/24.
//

#include "../h/syscall_c.h"

void scall(uint64 opc, uint64 p1 = 0, uint64 p2 = 0, uint64 p3 = 0,uint64 p4 = 0,uint64 p5=0){
    80001528:	ff010113          	addi	sp,sp,-16
    8000152c:	00813423          	sd	s0,8(sp)
    80001530:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001534:	00000073          	ecall
}
    80001538:	00813403          	ld	s0,8(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret

0000000080001544 <_Z9mem_allocm>:

void *mem_alloc(size_t size) {
    80001544:	ff010113          	addi	sp,sp,-16
    80001548:	00113423          	sd	ra,8(sp)
    8000154c:	00813023          	sd	s0,0(sp)
    80001550:	01010413          	addi	s0,sp,16
    volatile void *retVal;
    size = (size + MEM_BLOCK_SIZE - 1)/MEM_BLOCK_SIZE;
    80001554:	03f50593          	addi	a1,a0,63
    scall(MEM_ALLOC, (uint64) size);
    80001558:	00000793          	li	a5,0
    8000155c:	00000713          	li	a4,0
    80001560:	00000693          	li	a3,0
    80001564:	00000613          	li	a2,0
    80001568:	0065d593          	srli	a1,a1,0x6
    8000156c:	00100513          	li	a0,1
    80001570:	00000097          	auipc	ra,0x0
    80001574:	fb8080e7          	jalr	-72(ra) # 80001528 <_Z5scallmmmmmm>
    __asm__ volatile ("mv %[retVal], a0" : [retVal] "=r"(retVal));
    80001578:	00050513          	mv	a0,a0
    return (void*) retVal;
}
    8000157c:	00813083          	ld	ra,8(sp)
    80001580:	00013403          	ld	s0,0(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret

000000008000158c <_Z8mem_freePv>:

int mem_free(void *mem){
    8000158c:	fe010113          	addi	sp,sp,-32
    80001590:	00113c23          	sd	ra,24(sp)
    80001594:	00813823          	sd	s0,16(sp)
    80001598:	02010413          	addi	s0,sp,32
    8000159c:	00050593          	mv	a1,a0
    volatile int retVal;
    scall(MEM_FREE,(uint64) mem);
    800015a0:	00000793          	li	a5,0
    800015a4:	00000713          	li	a4,0
    800015a8:	00000693          	li	a3,0
    800015ac:	00000613          	li	a2,0
    800015b0:	00200513          	li	a0,2
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	f74080e7          	jalr	-140(ra) # 80001528 <_Z5scallmmmmmm>
    __asm__ volatile ("mv %[retVal], a0" : [retVal] "=r"(retVal));
    800015bc:	00050793          	mv	a5,a0
    800015c0:	fef42623          	sw	a5,-20(s0)
    return (int) retVal;
    800015c4:	fec42503          	lw	a0,-20(s0)
}
    800015c8:	0005051b          	sext.w	a0,a0
    800015cc:	01813083          	ld	ra,24(sp)
    800015d0:	01013403          	ld	s0,16(sp)
    800015d4:	02010113          	addi	sp,sp,32
    800015d8:	00008067          	ret

00000000800015dc <_Z13thread_createPP3TCBPFvPvES2_>:


int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    800015dc:	fd010113          	addi	sp,sp,-48
    800015e0:	02113423          	sd	ra,40(sp)
    800015e4:	02813023          	sd	s0,32(sp)
    800015e8:	00913c23          	sd	s1,24(sp)
    800015ec:	01213823          	sd	s2,16(sp)
    800015f0:	01313423          	sd	s3,8(sp)
    800015f4:	03010413          	addi	s0,sp,48
    800015f8:	00050493          	mv	s1,a0
    800015fc:	00058913          	mv	s2,a1
    80001600:	00060993          	mv	s3,a2

    uint64* stackp = (uint64*) Allocator::_malloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    80001604:	00008537          	lui	a0,0x8
    80001608:	00001097          	auipc	ra,0x1
    8000160c:	ecc080e7          	jalr	-308(ra) # 800024d4 <_ZN9Allocator7_mallocEm>

    if (!stackp) {
    80001610:	04050a63          	beqz	a0,80001664 <_Z13thread_createPP3TCBPFvPvES2_+0x88>
    80001614:	00050713          	mv	a4,a0
        return -1;
    };

    scall(THREAD_CREATE,(uint64) handle, (uint64) start_routine, (uint64) arg, (uint64)stackp);
    80001618:	00000793          	li	a5,0
    8000161c:	00098693          	mv	a3,s3
    80001620:	00090613          	mv	a2,s2
    80001624:	00048593          	mv	a1,s1
    80001628:	01100513          	li	a0,17
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	efc080e7          	jalr	-260(ra) # 80001528 <_Z5scallmmmmmm>

    if (TCB::running == nullptr) {return 0; }
    80001634:	0000b797          	auipc	a5,0xb
    80001638:	53c7b783          	ld	a5,1340(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000163c:	0007b783          	ld	a5,0(a5)
    80001640:	02078663          	beqz	a5,8000166c <_Z13thread_createPP3TCBPFvPvES2_+0x90>
    return TCB::running->retVal;
    80001644:	0687a503          	lw	a0,104(a5)
}
    80001648:	02813083          	ld	ra,40(sp)
    8000164c:	02013403          	ld	s0,32(sp)
    80001650:	01813483          	ld	s1,24(sp)
    80001654:	01013903          	ld	s2,16(sp)
    80001658:	00813983          	ld	s3,8(sp)
    8000165c:	03010113          	addi	sp,sp,48
    80001660:	00008067          	ret
        return -1;
    80001664:	fff00513          	li	a0,-1
    80001668:	fe1ff06f          	j	80001648 <_Z13thread_createPP3TCBPFvPvES2_+0x6c>
    if (TCB::running == nullptr) {return 0; }
    8000166c:	00000513          	li	a0,0
    80001670:	fd9ff06f          	j	80001648 <_Z13thread_createPP3TCBPFvPvES2_+0x6c>

0000000080001674 <_Z11thread_exitv>:

int thread_exit() {
    if (TCB::running->getBody() == nullptr) {return -1;}
    80001674:	0000b797          	auipc	a5,0xb
    80001678:	4fc7b783          	ld	a5,1276(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000167c:	0007b783          	ld	a5,0(a5)

    static void putToSleep(time_t t);

    using Body = void (*)(void*);

    Body getBody() {return body;};
    80001680:	0007b783          	ld	a5,0(a5)
    80001684:	04078463          	beqz	a5,800016cc <_Z11thread_exitv+0x58>
int thread_exit() {
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00113423          	sd	ra,8(sp)
    80001690:	00813023          	sd	s0,0(sp)
    80001694:	01010413          	addi	s0,sp,16
    scall(THREAD_EXIT);
    80001698:	00000793          	li	a5,0
    8000169c:	00000713          	li	a4,0
    800016a0:	00000693          	li	a3,0
    800016a4:	00000613          	li	a2,0
    800016a8:	00000593          	li	a1,0
    800016ac:	01200513          	li	a0,18
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	e78080e7          	jalr	-392(ra) # 80001528 <_Z5scallmmmmmm>
    return 0;
    800016b8:	00000513          	li	a0,0
}
    800016bc:	00813083          	ld	ra,8(sp)
    800016c0:	00013403          	ld	s0,0(sp)
    800016c4:	01010113          	addi	sp,sp,16
    800016c8:	00008067          	ret
    if (TCB::running->getBody() == nullptr) {return -1;}
    800016cc:	fff00513          	li	a0,-1
}
    800016d0:	00008067          	ret

00000000800016d4 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800016d4:	ff010113          	addi	sp,sp,-16
    800016d8:	00113423          	sd	ra,8(sp)
    800016dc:	00813023          	sd	s0,0(sp)
    800016e0:	01010413          	addi	s0,sp,16
    scall(THREAD_DISPATCH);
    800016e4:	00000793          	li	a5,0
    800016e8:	00000713          	li	a4,0
    800016ec:	00000693          	li	a3,0
    800016f0:	00000613          	li	a2,0
    800016f4:	00000593          	li	a1,0
    800016f8:	01300513          	li	a0,19
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	e2c080e7          	jalr	-468(ra) # 80001528 <_Z5scallmmmmmm>
}
    80001704:	00813083          	ld	ra,8(sp)
    80001708:	00013403          	ld	s0,0(sp)
    8000170c:	01010113          	addi	sp,sp,16
    80001710:	00008067          	ret

0000000080001714 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    if (time == 0) {
    80001714:	04050863          	beqz	a0,80001764 <_Z10time_sleepm+0x50>
    80001718:	00050593          	mv	a1,a0
        return 0;
    }
    if ((int) time < 0) {
    8000171c:	02051793          	slli	a5,a0,0x20
    80001720:	0407c663          	bltz	a5,8000176c <_Z10time_sleepm+0x58>
int time_sleep(time_t time) {
    80001724:	ff010113          	addi	sp,sp,-16
    80001728:	00113423          	sd	ra,8(sp)
    8000172c:	00813023          	sd	s0,0(sp)
    80001730:	01010413          	addi	s0,sp,16
        return -1;
    }
    scall(TIME_SLEEP,(uint64) time);
    80001734:	00000793          	li	a5,0
    80001738:	00000713          	li	a4,0
    8000173c:	00000693          	li	a3,0
    80001740:	00000613          	li	a2,0
    80001744:	03100513          	li	a0,49
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	de0080e7          	jalr	-544(ra) # 80001528 <_Z5scallmmmmmm>
    return 0;
    80001750:	00000513          	li	a0,0
}
    80001754:	00813083          	ld	ra,8(sp)
    80001758:	00013403          	ld	s0,0(sp)
    8000175c:	01010113          	addi	sp,sp,16
    80001760:	00008067          	ret
        return 0;
    80001764:	00000513          	li	a0,0
    80001768:	00008067          	ret
        return -1;
    8000176c:	fff00513          	li	a0,-1
}
    80001770:	00008067          	ret

0000000080001774 <_Z8sem_openPP10kSemaphorej>:

int sem_open(sem_t *handle, unsigned init) {
    80001774:	ff010113          	addi	sp,sp,-16
    80001778:	00113423          	sd	ra,8(sp)
    8000177c:	00813023          	sd	s0,0(sp)
    80001780:	01010413          	addi	s0,sp,16
    scall(SEM_OPEN, (uint64) handle, (uint64) init);
    80001784:	00000793          	li	a5,0
    80001788:	00000713          	li	a4,0
    8000178c:	00000693          	li	a3,0
    80001790:	02059613          	slli	a2,a1,0x20
    80001794:	02065613          	srli	a2,a2,0x20
    80001798:	00050593          	mv	a1,a0
    8000179c:	02100513          	li	a0,33
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	d88080e7          	jalr	-632(ra) # 80001528 <_Z5scallmmmmmm>
    if (TCB::running == nullptr) {return 0; }
    800017a8:	0000b797          	auipc	a5,0xb
    800017ac:	3c87b783          	ld	a5,968(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800017b0:	0007b783          	ld	a5,0(a5)
    800017b4:	00078c63          	beqz	a5,800017cc <_Z8sem_openPP10kSemaphorej+0x58>
    return TCB::running->retVal;
    800017b8:	0687a503          	lw	a0,104(a5)
}
    800017bc:	00813083          	ld	ra,8(sp)
    800017c0:	00013403          	ld	s0,0(sp)
    800017c4:	01010113          	addi	sp,sp,16
    800017c8:	00008067          	ret
    if (TCB::running == nullptr) {return 0; }
    800017cc:	00000513          	li	a0,0
    800017d0:	fedff06f          	j	800017bc <_Z8sem_openPP10kSemaphorej+0x48>

00000000800017d4 <_Z8sem_waitP10kSemaphore>:

int sem_wait(sem_t id) {
    if (id == nullptr) {return -1;}
    800017d4:	04050c63          	beqz	a0,8000182c <_Z8sem_waitP10kSemaphore+0x58>
int sem_wait(sem_t id) {
    800017d8:	ff010113          	addi	sp,sp,-16
    800017dc:	00113423          	sd	ra,8(sp)
    800017e0:	00813023          	sd	s0,0(sp)
    800017e4:	01010413          	addi	s0,sp,16
    800017e8:	00050593          	mv	a1,a0
    scall(SEM_WAIT,(uint64) id);
    800017ec:	00000793          	li	a5,0
    800017f0:	00000713          	li	a4,0
    800017f4:	00000693          	li	a3,0
    800017f8:	00000613          	li	a2,0
    800017fc:	02300513          	li	a0,35
    80001800:	00000097          	auipc	ra,0x0
    80001804:	d28080e7          	jalr	-728(ra) # 80001528 <_Z5scallmmmmmm>
    if (TCB::running == nullptr) {return 0; }
    80001808:	0000b797          	auipc	a5,0xb
    8000180c:	3687b783          	ld	a5,872(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001810:	0007b783          	ld	a5,0(a5)
    80001814:	02078063          	beqz	a5,80001834 <_Z8sem_waitP10kSemaphore+0x60>
    return TCB::running->retVal;
    80001818:	0687a503          	lw	a0,104(a5)
}
    8000181c:	00813083          	ld	ra,8(sp)
    80001820:	00013403          	ld	s0,0(sp)
    80001824:	01010113          	addi	sp,sp,16
    80001828:	00008067          	ret
    if (id == nullptr) {return -1;}
    8000182c:	fff00513          	li	a0,-1
}
    80001830:	00008067          	ret
    if (TCB::running == nullptr) {return 0; }
    80001834:	00000513          	li	a0,0
    80001838:	fe5ff06f          	j	8000181c <_Z8sem_waitP10kSemaphore+0x48>

000000008000183c <_Z10sem_signalP10kSemaphore>:

int sem_signal(sem_t id) {
    if (id == nullptr) {return -1;}
    8000183c:	04050c63          	beqz	a0,80001894 <_Z10sem_signalP10kSemaphore+0x58>
int sem_signal(sem_t id) {
    80001840:	ff010113          	addi	sp,sp,-16
    80001844:	00113423          	sd	ra,8(sp)
    80001848:	00813023          	sd	s0,0(sp)
    8000184c:	01010413          	addi	s0,sp,16
    80001850:	00050593          	mv	a1,a0
    scall(SEM_SIGNAL,(uint64) id);
    80001854:	00000793          	li	a5,0
    80001858:	00000713          	li	a4,0
    8000185c:	00000693          	li	a3,0
    80001860:	00000613          	li	a2,0
    80001864:	02400513          	li	a0,36
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	cc0080e7          	jalr	-832(ra) # 80001528 <_Z5scallmmmmmm>
    if (TCB::running == nullptr) {return 0; }
    80001870:	0000b797          	auipc	a5,0xb
    80001874:	3007b783          	ld	a5,768(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001878:	0007b783          	ld	a5,0(a5)
    8000187c:	02078063          	beqz	a5,8000189c <_Z10sem_signalP10kSemaphore+0x60>
    return TCB::running->retVal;
    80001880:	0687a503          	lw	a0,104(a5)
}
    80001884:	00813083          	ld	ra,8(sp)
    80001888:	00013403          	ld	s0,0(sp)
    8000188c:	01010113          	addi	sp,sp,16
    80001890:	00008067          	ret
    if (id == nullptr) {return -1;}
    80001894:	fff00513          	li	a0,-1
}
    80001898:	00008067          	ret
    if (TCB::running == nullptr) {return 0; }
    8000189c:	00000513          	li	a0,0
    800018a0:	fe5ff06f          	j	80001884 <_Z10sem_signalP10kSemaphore+0x48>

00000000800018a4 <_Z9sem_closeP10kSemaphore>:

int sem_close(sem_t id) {
    if (id == nullptr) {return -1;}
    800018a4:	04050c63          	beqz	a0,800018fc <_Z9sem_closeP10kSemaphore+0x58>
int sem_close(sem_t id) {
    800018a8:	ff010113          	addi	sp,sp,-16
    800018ac:	00113423          	sd	ra,8(sp)
    800018b0:	00813023          	sd	s0,0(sp)
    800018b4:	01010413          	addi	s0,sp,16
    800018b8:	00050593          	mv	a1,a0
    scall(SEM_CLOSE,(uint64) id);
    800018bc:	00000793          	li	a5,0
    800018c0:	00000713          	li	a4,0
    800018c4:	00000693          	li	a3,0
    800018c8:	00000613          	li	a2,0
    800018cc:	02200513          	li	a0,34
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	c58080e7          	jalr	-936(ra) # 80001528 <_Z5scallmmmmmm>
    if (TCB::running == nullptr) {return 0; }
    800018d8:	0000b797          	auipc	a5,0xb
    800018dc:	2987b783          	ld	a5,664(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800018e0:	0007b783          	ld	a5,0(a5)
    800018e4:	02078063          	beqz	a5,80001904 <_Z9sem_closeP10kSemaphore+0x60>
    return TCB::running->retVal;
    800018e8:	0687a503          	lw	a0,104(a5)
}
    800018ec:	00813083          	ld	ra,8(sp)
    800018f0:	00013403          	ld	s0,0(sp)
    800018f4:	01010113          	addi	sp,sp,16
    800018f8:	00008067          	ret
    if (id == nullptr) {return -1;}
    800018fc:	fff00513          	li	a0,-1
}
    80001900:	00008067          	ret
    if (TCB::running == nullptr) {return 0; }
    80001904:	00000513          	li	a0,0
    80001908:	fe5ff06f          	j	800018ec <_Z9sem_closeP10kSemaphore+0x48>

000000008000190c <_Z13sem_timedwaitP10kSemaphorem>:

int sem_timedwait(sem_t id, time_t timeout) {
    if (id == nullptr) {return -1;};
    8000190c:	04050c63          	beqz	a0,80001964 <_Z13sem_timedwaitP10kSemaphorem+0x58>
int sem_timedwait(sem_t id, time_t timeout) {
    80001910:	ff010113          	addi	sp,sp,-16
    80001914:	00113423          	sd	ra,8(sp)
    80001918:	00813023          	sd	s0,0(sp)
    8000191c:	01010413          	addi	s0,sp,16
    80001920:	00058613          	mv	a2,a1
    scall(SEM_TIMEDWAIT, (uint64) id, (uint64) timeout);
    80001924:	00000793          	li	a5,0
    80001928:	00000713          	li	a4,0
    8000192c:	00000693          	li	a3,0
    80001930:	00050593          	mv	a1,a0
    80001934:	02500513          	li	a0,37
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	bf0080e7          	jalr	-1040(ra) # 80001528 <_Z5scallmmmmmm>
    if (TCB::running == nullptr) { return 0; }
    80001940:	0000b797          	auipc	a5,0xb
    80001944:	2307b783          	ld	a5,560(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001948:	0007b783          	ld	a5,0(a5)
    8000194c:	02078063          	beqz	a5,8000196c <_Z13sem_timedwaitP10kSemaphorem+0x60>
    return TCB::running->retVal;
    80001950:	0687a503          	lw	a0,104(a5)
}
    80001954:	00813083          	ld	ra,8(sp)
    80001958:	00013403          	ld	s0,0(sp)
    8000195c:	01010113          	addi	sp,sp,16
    80001960:	00008067          	ret
    if (id == nullptr) {return -1;};
    80001964:	fff00513          	li	a0,-1
}
    80001968:	00008067          	ret
    if (TCB::running == nullptr) { return 0; }
    8000196c:	00000513          	li	a0,0
    80001970:	fe5ff06f          	j	80001954 <_Z13sem_timedwaitP10kSemaphorem+0x48>

0000000080001974 <_Z11sem_trywaitP10kSemaphore>:

int sem_trywait(sem_t id) {
    if (id == nullptr) {
    80001974:	04050c63          	beqz	a0,800019cc <_Z11sem_trywaitP10kSemaphore+0x58>
int sem_trywait(sem_t id) {
    80001978:	ff010113          	addi	sp,sp,-16
    8000197c:	00113423          	sd	ra,8(sp)
    80001980:	00813023          	sd	s0,0(sp)
    80001984:	01010413          	addi	s0,sp,16
    80001988:	00050593          	mv	a1,a0
        return -1;
    }
    scall(SEM_TRYWAIT, (uint64) id);
    8000198c:	00000793          	li	a5,0
    80001990:	00000713          	li	a4,0
    80001994:	00000693          	li	a3,0
    80001998:	00000613          	li	a2,0
    8000199c:	02600513          	li	a0,38
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	b88080e7          	jalr	-1144(ra) # 80001528 <_Z5scallmmmmmm>
    if (TCB::running == nullptr) {return 0; }
    800019a8:	0000b797          	auipc	a5,0xb
    800019ac:	1c87b783          	ld	a5,456(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800019b0:	0007b783          	ld	a5,0(a5)
    800019b4:	02078063          	beqz	a5,800019d4 <_Z11sem_trywaitP10kSemaphore+0x60>
    return TCB::running->retVal;
    800019b8:	0687a503          	lw	a0,104(a5)
}
    800019bc:	00813083          	ld	ra,8(sp)
    800019c0:	00013403          	ld	s0,0(sp)
    800019c4:	01010113          	addi	sp,sp,16
    800019c8:	00008067          	ret
        return -1;
    800019cc:	fff00513          	li	a0,-1
}
    800019d0:	00008067          	ret
    if (TCB::running == nullptr) {return 0; }
    800019d4:	00000513          	li	a0,0
    800019d8:	fe5ff06f          	j	800019bc <_Z11sem_trywaitP10kSemaphore+0x48>

00000000800019dc <_Z4getcv>:

char getc() {
    800019dc:	ff010113          	addi	sp,sp,-16
    800019e0:	00113423          	sd	ra,8(sp)
    800019e4:	00813023          	sd	s0,0(sp)
    800019e8:	01010413          	addi	s0,sp,16
    scall(GETC);
    800019ec:	00000793          	li	a5,0
    800019f0:	00000713          	li	a4,0
    800019f4:	00000693          	li	a3,0
    800019f8:	00000613          	li	a2,0
    800019fc:	00000593          	li	a1,0
    80001a00:	04100513          	li	a0,65
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	b24080e7          	jalr	-1244(ra) # 80001528 <_Z5scallmmmmmm>
    return (char) TCB::running->getcRetVal;
    80001a0c:	0000b797          	auipc	a5,0xb
    80001a10:	1647b783          	ld	a5,356(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001a14:	0007b783          	ld	a5,0(a5)
    //return (char) __getc();
}
    80001a18:	06c7c503          	lbu	a0,108(a5)
    80001a1c:	00813083          	ld	ra,8(sp)
    80001a20:	00013403          	ld	s0,0(sp)
    80001a24:	01010113          	addi	sp,sp,16
    80001a28:	00008067          	ret

0000000080001a2c <_Z4putcc>:

void putc(char c) {
    80001a2c:	ff010113          	addi	sp,sp,-16
    80001a30:	00113423          	sd	ra,8(sp)
    80001a34:	00813023          	sd	s0,0(sp)
    80001a38:	01010413          	addi	s0,sp,16
    80001a3c:	00050593          	mv	a1,a0
    scall(PUTC, (uint64) c);
    80001a40:	00000793          	li	a5,0
    80001a44:	00000713          	li	a4,0
    80001a48:	00000693          	li	a3,0
    80001a4c:	00000613          	li	a2,0
    80001a50:	04200513          	li	a0,66
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	ad4080e7          	jalr	-1324(ra) # 80001528 <_Z5scallmmmmmm>
        TCB::putcP = 0;
    }
    TCB::putcP++;
    */
    return;
}
    80001a5c:	00813083          	ld	ra,8(sp)
    80001a60:	00013403          	ld	s0,0(sp)
    80001a64:	01010113          	addi	sp,sp,16
    80001a68:	00008067          	ret

0000000080001a6c <_Z3wrpPv>:

kSemaphore *s1;

extern void userMain();

void wrp(void*) {
    80001a6c:	ff010113          	addi	sp,sp,-16
    80001a70:	00113423          	sd	ra,8(sp)
    80001a74:	00813023          	sd	s0,0(sp)
    80001a78:	01010413          	addi	s0,sp,16
    userMain();
    80001a7c:	00005097          	auipc	ra,0x5
    80001a80:	aec080e7          	jalr	-1300(ra) # 80006568 <_Z8userMainv>
}
    80001a84:	00813083          	ld	ra,8(sp)
    80001a88:	00013403          	ld	s0,0(sp)
    80001a8c:	01010113          	addi	sp,sp,16
    80001a90:	00008067          	ret

0000000080001a94 <main>:

int main()  // MIJENJAO PRINT SVOJ, MIJENJA YILED DISPATCH U POZIVIMA, mijenajo da dodam enter, mijenjao print opet, mijenjao putc getc,mijenjao listu private public Elem
{
    80001a94:	fd010113          	addi	sp,sp,-48
    80001a98:	02113423          	sd	ra,40(sp)
    80001a9c:	02813023          	sd	s0,32(sp)
    80001aa0:	00913c23          	sd	s1,24(sp)
    80001aa4:	03010413          	addi	s0,sp,48
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001aa8:	0000b797          	auipc	a5,0xb
    80001aac:	0a07b783          	ld	a5,160(a5) # 8000cb48 <_GLOBAL_OFFSET_TABLE_+0x20>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001ab0:	10579073          	csrw	stvec,a5

    Allocator::init();
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	9c8080e7          	jalr	-1592(ra) # 8000247c <_ZN9Allocator4initEv>
    kConsole::init();
    80001abc:	00002097          	auipc	ra,0x2
    80001ac0:	bf8080e7          	jalr	-1032(ra) # 800036b4 <_ZN8kConsole4initEv>

    TCB *mainoo;

    thread_create(&mainoo, nullptr, nullptr);
    80001ac4:	00000613          	li	a2,0
    80001ac8:	00000593          	li	a1,0
    80001acc:	fd840513          	addi	a0,s0,-40
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	b0c080e7          	jalr	-1268(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = mainoo;
    80001ad8:	0000b797          	auipc	a5,0xb
    80001adc:	0987b783          	ld	a5,152(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001ae0:	fd843703          	ld	a4,-40(s0)
    80001ae4:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ae8:	00200793          	li	a5,2
    80001aec:	1007a073          	csrs	sstatus,a5
    80001af0:	10000793          	li	a5,256
    80001af4:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);

    TCB *nit;

    thread_create(&nit, wrp, nullptr);
    80001af8:	00000613          	li	a2,0
    80001afc:	00000597          	auipc	a1,0x0
    80001b00:	f7058593          	addi	a1,a1,-144 # 80001a6c <_Z3wrpPv>
    80001b04:	fd040513          	addi	a0,s0,-48
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	ad4080e7          	jalr	-1324(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>

    while (!nit->isFinished()) {
    80001b10:	fd043783          	ld	a5,-48(s0)
    bool isFinished() const { return finished; }
    80001b14:	0287c783          	lbu	a5,40(a5)
    80001b18:	00079863          	bnez	a5,80001b28 <main+0x94>
        thread_dispatch();
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	bb8080e7          	jalr	-1096(ra) # 800016d4 <_Z15thread_dispatchv>
    80001b24:	fedff06f          	j	80001b10 <main+0x7c>
    80001b28:	10000793          	li	a5,256
    80001b2c:	1007a073          	csrs	sstatus,a5
    }

    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);

    printStringMoj("Kernel finished\n");
    80001b30:	00008517          	auipc	a0,0x8
    80001b34:	4f050513          	addi	a0,a0,1264 # 8000a020 <CONSOLE_STATUS+0x10>
    80001b38:	00002097          	auipc	ra,0x2
    80001b3c:	dc4080e7          	jalr	-572(ra) # 800038fc <_Z14printStringMojPKc>

    Riscv::kernelEnd(nullptr);
    80001b40:	00000513          	li	a0,0
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	b54080e7          	jalr	-1196(ra) # 80002698 <_ZN5Riscv9kernelEndEPv>

    delete mainoo;
    80001b4c:	fd843483          	ld	s1,-40(s0)
    80001b50:	02048063          	beqz	s1,80001b70 <main+0xdc>

    void operator delete[](void* ptr) {
        Allocator::_mem_free(ptr);
    }

    ~TCB() { delete[] stack;}
    80001b54:	0084b503          	ld	a0,8(s1)
    80001b58:	00050663          	beqz	a0,80001b64 <main+0xd0>
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	4e8080e7          	jalr	1256(ra) # 80002044 <_ZdaPv>
        Allocator::_mem_free(ptr);
    80001b64:	00048513          	mv	a0,s1
    80001b68:	00001097          	auipc	ra,0x1
    80001b6c:	a74080e7          	jalr	-1420(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
    delete nit;
    80001b70:	fd043483          	ld	s1,-48(s0)
    80001b74:	02048063          	beqz	s1,80001b94 <main+0x100>
    ~TCB() { delete[] stack;}
    80001b78:	0084b503          	ld	a0,8(s1)
    80001b7c:	00050663          	beqz	a0,80001b88 <main+0xf4>
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	4c4080e7          	jalr	1220(ra) # 80002044 <_ZdaPv>
        Allocator::_mem_free(ptr);
    80001b88:	00048513          	mv	a0,s1
    80001b8c:	00001097          	auipc	ra,0x1
    80001b90:	a50080e7          	jalr	-1456(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>

    kConsole::endConsole();
    80001b94:	00002097          	auipc	ra,0x2
    80001b98:	cf8080e7          	jalr	-776(ra) # 8000388c <_ZN8kConsole10endConsoleEv>

    __asm__ volatile ("li t0, 0x5555");
    80001b9c:	000052b7          	lui	t0,0x5
    80001ba0:	5552829b          	addiw	t0,t0,1365
    __asm__ volatile ("li t1, 0x100000");
    80001ba4:	00100337          	lui	t1,0x100
    __asm__ volatile ("sw t0, 0(t1)");
    80001ba8:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>

    return 0;
 }
    80001bac:	00000513          	li	a0,0
    80001bb0:	02813083          	ld	ra,40(sp)
    80001bb4:	02013403          	ld	s0,32(sp)
    80001bb8:	01813483          	ld	s1,24(sp)
    80001bbc:	03010113          	addi	sp,sp,48
    80001bc0:	00008067          	ret

0000000080001bc4 <_Z41__static_initialization_and_destruction_0ii>:
    TCB::running->timeToSleep = t;
    TCB::running->isSleeping = true;
    TCB::sleeping.addLast(TCB::running);
    TCB::dispatch();
    //TCB::yield();
    80001bc4:	ff010113          	addi	sp,sp,-16
    80001bc8:	00813423          	sd	s0,8(sp)
    80001bcc:	01010413          	addi	s0,sp,16
    80001bd0:	00100793          	li	a5,1
    80001bd4:	00f50863          	beq	a0,a5,80001be4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001bd8:	00813403          	ld	s0,8(sp)
    80001bdc:	01010113          	addi	sp,sp,16
    80001be0:	00008067          	ret
    80001be4:	000107b7          	lui	a5,0x10
    80001be8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001bec:	fef596e3          	bne	a1,a5,80001bd8 <_Z41__static_initialization_and_destruction_0ii+0x14>
public:
    friend class TCB;
    friend class Riscv;
    friend class kSemaphore;

    List() : head(0), tail(0) {}
    80001bf0:	0000b797          	auipc	a5,0xb
    80001bf4:	ff878793          	addi	a5,a5,-8 # 8000cbe8 <_ZN3TCB8sleepingE>
    80001bf8:	0007b023          	sd	zero,0(a5)
    80001bfc:	0007b423          	sd	zero,8(a5)
    80001c00:	fd9ff06f          	j	80001bd8 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001c04 <_ZN3TCB13thread_createEPPS_PFvPvES2_Pm>:
    if (handle == nullptr) return -1;
    80001c04:	0e050a63          	beqz	a0,80001cf8 <_ZN3TCB13thread_createEPPS_PFvPvES2_Pm+0xf4>
int TCB::thread_create(thread_t *handle, TCB::Body body, void *arg, uint64 *stack) {
    80001c08:	fc010113          	addi	sp,sp,-64
    80001c0c:	02113c23          	sd	ra,56(sp)
    80001c10:	02813823          	sd	s0,48(sp)
    80001c14:	02913423          	sd	s1,40(sp)
    80001c18:	03213023          	sd	s2,32(sp)
    80001c1c:	01313c23          	sd	s3,24(sp)
    80001c20:	01413823          	sd	s4,16(sp)
    80001c24:	01513423          	sd	s5,8(sp)
    80001c28:	04010413          	addi	s0,sp,64
    80001c2c:	00050993          	mv	s3,a0
    80001c30:	00058a13          	mv	s4,a1
    80001c34:	00060a93          	mv	s5,a2
    80001c38:	00068913          	mv	s2,a3
        return Allocator::_malloc(size);
    80001c3c:	07000513          	li	a0,112
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	894080e7          	jalr	-1900(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
    80001c48:	00050493          	mv	s1,a0
            isSleeping(false),
            blocked(false),
            timeToWaitSem(0),
            blockedOnWhichSem(nullptr),
            regularlyFinishedWait(false),
            mallocRetVal(nullptr)
    80001c4c:	01453023          	sd	s4,0(a0)
            stack(body != nullptr ? stack : nullptr),
    80001c50:	060a0663          	beqz	s4,80001cbc <_ZN3TCB13thread_createEPPS_PFvPvES2_Pm+0xb8>
    80001c54:	00090793          	mv	a5,s2
            mallocRetVal(nullptr)
    80001c58:	00f4b423          	sd	a5,8(s1)
    80001c5c:	00000797          	auipc	a5,0x0
    80001c60:	0dc78793          	addi	a5,a5,220 # 80001d38 <_ZN3TCB13threadWrapperEv>
    80001c64:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001c68:	04090e63          	beqz	s2,80001cc4 <_ZN3TCB13thread_createEPPS_PFvPvES2_Pm+0xc0>
    80001c6c:	000086b7          	lui	a3,0x8
    80001c70:	00d90933          	add	s2,s2,a3
            mallocRetVal(nullptr)
    80001c74:	0124bc23          	sd	s2,24(s1)
    80001c78:	00200793          	li	a5,2
    80001c7c:	02f4b023          	sd	a5,32(s1)
    80001c80:	02048423          	sb	zero,40(s1)
    80001c84:	0354b823          	sd	s5,48(s1)
    80001c88:	0204bc23          	sd	zero,56(s1)
    80001c8c:	04048023          	sb	zero,64(s1)
    80001c90:	040480a3          	sb	zero,65(s1)
    80001c94:	0404b423          	sd	zero,72(s1)
    80001c98:	0404b823          	sd	zero,80(s1)
    80001c9c:	04048c23          	sb	zero,88(s1)
    80001ca0:	0604b023          	sd	zero,96(s1)
    80001ca4:	0604a423          	sw	zero,104(s1)
    {
        if (body != nullptr) {
    80001ca8:	020a0263          	beqz	s4,80001ccc <_ZN3TCB13thread_createEPPS_PFvPvES2_Pm+0xc8>
            Scheduler::put(this);
    80001cac:	00048513          	mv	a0,s1
    80001cb0:	00002097          	auipc	ra,0x2
    80001cb4:	964080e7          	jalr	-1692(ra) # 80003614 <_ZN9Scheduler3putEP3TCB>
    80001cb8:	0140006f          	j	80001ccc <_ZN3TCB13thread_createEPPS_PFvPvES2_Pm+0xc8>
            stack(body != nullptr ? stack : nullptr),
    80001cbc:	00000793          	li	a5,0
    80001cc0:	f99ff06f          	j	80001c58 <_ZN3TCB13thread_createEPPS_PFvPvES2_Pm+0x54>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001cc4:	00000913          	li	s2,0
    80001cc8:	fadff06f          	j	80001c74 <_ZN3TCB13thread_createEPPS_PFvPvES2_Pm+0x70>
    *handle = new TCB(body,stack,arg,DEFAULT_TIME_SLICE);
    80001ccc:	0099b023          	sd	s1,0(s3)
    return 0;
    80001cd0:	00000513          	li	a0,0
}
    80001cd4:	03813083          	ld	ra,56(sp)
    80001cd8:	03013403          	ld	s0,48(sp)
    80001cdc:	02813483          	ld	s1,40(sp)
    80001ce0:	02013903          	ld	s2,32(sp)
    80001ce4:	01813983          	ld	s3,24(sp)
    80001ce8:	01013a03          	ld	s4,16(sp)
    80001cec:	00813a83          	ld	s5,8(sp)
    80001cf0:	04010113          	addi	sp,sp,64
    80001cf4:	00008067          	ret
    if (handle == nullptr) return -1;
    80001cf8:	fff00513          	li	a0,-1
}
    80001cfc:	00008067          	ret
    80001d00:	00050913          	mv	s2,a0
        Allocator::_mem_free(ptr);
    80001d04:	00048513          	mv	a0,s1
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	8d4080e7          	jalr	-1836(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
    80001d10:	00090513          	mv	a0,s2
    80001d14:	0000c097          	auipc	ra,0xc
    80001d18:	054080e7          	jalr	84(ra) # 8000dd68 <_Unwind_Resume>

0000000080001d1c <_ZN3TCB5yieldEv>:
{
    80001d1c:	ff010113          	addi	sp,sp,-16
    80001d20:	00813423          	sd	s0,8(sp)
    80001d24:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001d28:	00000073          	ecall
}
    80001d2c:	00813403          	ld	s0,8(sp)
    80001d30:	01010113          	addi	sp,sp,16
    80001d34:	00008067          	ret

0000000080001d38 <_ZN3TCB13threadWrapperEv>:
{
    80001d38:	fe010113          	addi	sp,sp,-32
    80001d3c:	00113c23          	sd	ra,24(sp)
    80001d40:	00813823          	sd	s0,16(sp)
    80001d44:	00913423          	sd	s1,8(sp)
    80001d48:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	924080e7          	jalr	-1756(ra) # 80002670 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001d54:	0000b497          	auipc	s1,0xb
    80001d58:	e9448493          	addi	s1,s1,-364 # 8000cbe8 <_ZN3TCB8sleepingE>
    80001d5c:	0104b783          	ld	a5,16(s1)
    80001d60:	0007b703          	ld	a4,0(a5)
    80001d64:	0307b503          	ld	a0,48(a5)
    80001d68:	000700e7          	jalr	a4
    running->setFinished(true);
    80001d6c:	0104b783          	ld	a5,16(s1)
    void setFinished(bool value) { finished = value; }
    80001d70:	00100713          	li	a4,1
    80001d74:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	fa4080e7          	jalr	-92(ra) # 80001d1c <_ZN3TCB5yieldEv>
}
    80001d80:	01813083          	ld	ra,24(sp)
    80001d84:	01013403          	ld	s0,16(sp)
    80001d88:	00813483          	ld	s1,8(sp)
    80001d8c:	02010113          	addi	sp,sp,32
    80001d90:	00008067          	ret

0000000080001d94 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001d94:	fe010113          	addi	sp,sp,-32
    80001d98:	00113c23          	sd	ra,24(sp)
    80001d9c:	00813823          	sd	s0,16(sp)
    80001da0:	00913423          	sd	s1,8(sp)
    80001da4:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001da8:	0000b497          	auipc	s1,0xb
    80001dac:	e504b483          	ld	s1,-432(s1) # 8000cbf8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001db0:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished() && !old->isSleeping && !old->blocked) {
    80001db4:	00079a63          	bnez	a5,80001dc8 <_ZN3TCB8dispatchEv+0x34>
    80001db8:	0404c783          	lbu	a5,64(s1)
    80001dbc:	00079663          	bnez	a5,80001dc8 <_ZN3TCB8dispatchEv+0x34>
    80001dc0:	0414c783          	lbu	a5,65(s1)
    80001dc4:	02078e63          	beqz	a5,80001e00 <_ZN3TCB8dispatchEv+0x6c>
    running = Scheduler::get();
    80001dc8:	00001097          	auipc	ra,0x1
    80001dcc:	7e4080e7          	jalr	2020(ra) # 800035ac <_ZN9Scheduler3getEv>
    80001dd0:	0000b797          	auipc	a5,0xb
    80001dd4:	e2a7b423          	sd	a0,-472(a5) # 8000cbf8 <_ZN3TCB7runningE>
    if (old != running) {
    80001dd8:	00a48a63          	beq	s1,a0,80001dec <_ZN3TCB8dispatchEv+0x58>
        TCB::contextSwitch(&old->context, &running->context);
    80001ddc:	01050593          	addi	a1,a0,16
    80001de0:	01048513          	addi	a0,s1,16
    80001de4:	fffff097          	auipc	ra,0xfffff
    80001de8:	42c080e7          	jalr	1068(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001dec:	01813083          	ld	ra,24(sp)
    80001df0:	01013403          	ld	s0,16(sp)
    80001df4:	00813483          	ld	s1,8(sp)
    80001df8:	02010113          	addi	sp,sp,32
    80001dfc:	00008067          	ret
        Scheduler::put(old);
    80001e00:	00048513          	mv	a0,s1
    80001e04:	00002097          	auipc	ra,0x2
    80001e08:	810080e7          	jalr	-2032(ra) # 80003614 <_ZN9Scheduler3putEP3TCB>
    80001e0c:	fbdff06f          	j	80001dc8 <_ZN3TCB8dispatchEv+0x34>

0000000080001e10 <_ZN3TCB10putToSleepEm>:
void TCB::putToSleep(time_t t) { //  YILED DISPATCH
    80001e10:	fe010113          	addi	sp,sp,-32
    80001e14:	00113c23          	sd	ra,24(sp)
    80001e18:	00813823          	sd	s0,16(sp)
    80001e1c:	00913423          	sd	s1,8(sp)
    80001e20:	01213023          	sd	s2,0(sp)
    80001e24:	02010413          	addi	s0,sp,32
    TCB::running->timeSliceCounter = 0;
    80001e28:	0000b497          	auipc	s1,0xb
    80001e2c:	dc048493          	addi	s1,s1,-576 # 8000cbe8 <_ZN3TCB8sleepingE>
    80001e30:	0004bc23          	sd	zero,24(s1)
    TCB::running->timeToSleep = t;
    80001e34:	0104b903          	ld	s2,16(s1)
    80001e38:	02a93c23          	sd	a0,56(s2)
    TCB::running->isSleeping = true;
    80001e3c:	00100793          	li	a5,1
    80001e40:	04f90023          	sb	a5,64(s2)
            return Allocator::_malloc(size);
    80001e44:	01000513          	li	a0,16
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	68c080e7          	jalr	1676(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001e50:	01253023          	sd	s2,0(a0)
    80001e54:	00053423          	sd	zero,8(a0)
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
    80001e58:	0084b783          	ld	a5,8(s1)
    80001e5c:	02078863          	beqz	a5,80001e8c <_ZN3TCB10putToSleepEm+0x7c>
        {
            tail->next = elem;
    80001e60:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001e64:	0000b797          	auipc	a5,0xb
    80001e68:	d8a7b623          	sd	a0,-628(a5) # 8000cbf0 <_ZN3TCB8sleepingE+0x8>
    TCB::dispatch();
    80001e6c:	00000097          	auipc	ra,0x0
    80001e70:	f28080e7          	jalr	-216(ra) # 80001d94 <_ZN3TCB8dispatchEv>
    80001e74:	01813083          	ld	ra,24(sp)
    80001e78:	01013403          	ld	s0,16(sp)
    80001e7c:	00813483          	ld	s1,8(sp)
    80001e80:	00013903          	ld	s2,0(sp)
    80001e84:	02010113          	addi	sp,sp,32
    80001e88:	00008067          	ret
        } else
        {
            head = tail = elem;
    80001e8c:	0000b797          	auipc	a5,0xb
    80001e90:	d5c78793          	addi	a5,a5,-676 # 8000cbe8 <_ZN3TCB8sleepingE>
    80001e94:	00a7b423          	sd	a0,8(a5)
    80001e98:	00a7b023          	sd	a0,0(a5)
    80001e9c:	fd1ff06f          	j	80001e6c <_ZN3TCB10putToSleepEm+0x5c>

0000000080001ea0 <_GLOBAL__sub_I__ZN3TCB7runningE>:
    80001ea0:	ff010113          	addi	sp,sp,-16
    80001ea4:	00113423          	sd	ra,8(sp)
    80001ea8:	00813023          	sd	s0,0(sp)
    80001eac:	01010413          	addi	s0,sp,16
    80001eb0:	000105b7          	lui	a1,0x10
    80001eb4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001eb8:	00100513          	li	a0,1
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	d08080e7          	jalr	-760(ra) # 80001bc4 <_Z41__static_initialization_and_destruction_0ii>
    80001ec4:	00813083          	ld	ra,8(sp)
    80001ec8:	00013403          	ld	s0,0(sp)
    80001ecc:	01010113          	addi	sp,sp,16
    80001ed0:	00008067          	ret

0000000080001ed4 <_ZN6Thread8fwrapperEPv>:
int Thread::sleep(time_t ms) {
    return time_sleep(ms);
}

void Thread::fwrapper(void *tcb)
{
    80001ed4:	ff010113          	addi	sp,sp,-16
    80001ed8:	00113423          	sd	ra,8(sp)
    80001edc:	00813023          	sd	s0,0(sp)
    80001ee0:	01010413          	addi	s0,sp,16
    ((Thread*)tcb)->run();
    80001ee4:	00053783          	ld	a5,0(a0)
    80001ee8:	0107b783          	ld	a5,16(a5)
    80001eec:	000780e7          	jalr	a5
}
    80001ef0:	00813083          	ld	ra,8(sp)
    80001ef4:	00013403          	ld	s0,0(sp)
    80001ef8:	01010113          	addi	sp,sp,16
    80001efc:	00008067          	ret

0000000080001f00 <_ZN14PeriodicThread3runEv>:

void PeriodicThread::terminate(){
    terminated = true;
}

void PeriodicThread::run() {
    80001f00:	fe010113          	addi	sp,sp,-32
    80001f04:	00113c23          	sd	ra,24(sp)
    80001f08:	00813823          	sd	s0,16(sp)
    80001f0c:	00913423          	sd	s1,8(sp)
    80001f10:	02010413          	addi	s0,sp,32
    80001f14:	00050493          	mv	s1,a0
    while (!terminated) {
    80001f18:	0204c783          	lbu	a5,32(s1)
    80001f1c:	02079263          	bnez	a5,80001f40 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001f20:	0004b783          	ld	a5,0(s1)
    80001f24:	0187b783          	ld	a5,24(a5)
    80001f28:	00048513          	mv	a0,s1
    80001f2c:	000780e7          	jalr	a5
        time_sleep(period);
    80001f30:	0284b503          	ld	a0,40(s1)
    80001f34:	fffff097          	auipc	ra,0xfffff
    80001f38:	7e0080e7          	jalr	2016(ra) # 80001714 <_Z10time_sleepm>
    while (!terminated) {
    80001f3c:	fddff06f          	j	80001f18 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001f40:	01813083          	ld	ra,24(sp)
    80001f44:	01013403          	ld	s0,16(sp)
    80001f48:	00813483          	ld	s1,8(sp)
    80001f4c:	02010113          	addi	sp,sp,32
    80001f50:	00008067          	ret

0000000080001f54 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00113423          	sd	ra,8(sp)
    80001f5c:	00813023          	sd	s0,0(sp)
    80001f60:	01010413          	addi	s0,sp,16
    80001f64:	0000b797          	auipc	a5,0xb
    80001f68:	9dc78793          	addi	a5,a5,-1572 # 8000c940 <_ZTV9Semaphore+0x10>
    80001f6c:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001f70:	00853503          	ld	a0,8(a0)
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	930080e7          	jalr	-1744(ra) # 800018a4 <_Z9sem_closeP10kSemaphore>
}
    80001f7c:	00813083          	ld	ra,8(sp)
    80001f80:	00013403          	ld	s0,0(sp)
    80001f84:	01010113          	addi	sp,sp,16
    80001f88:	00008067          	ret

0000000080001f8c <_Znwm>:
void *operator new(size_t size) {
    80001f8c:	ff010113          	addi	sp,sp,-16
    80001f90:	00113423          	sd	ra,8(sp)
    80001f94:	00813023          	sd	s0,0(sp)
    80001f98:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001f9c:	fffff097          	auipc	ra,0xfffff
    80001fa0:	5a8080e7          	jalr	1448(ra) # 80001544 <_Z9mem_allocm>
}
    80001fa4:	00813083          	ld	ra,8(sp)
    80001fa8:	00013403          	ld	s0,0(sp)
    80001fac:	01010113          	addi	sp,sp,16
    80001fb0:	00008067          	ret

0000000080001fb4 <_Znam>:
void *operator new[](size_t size) {
    80001fb4:	ff010113          	addi	sp,sp,-16
    80001fb8:	00113423          	sd	ra,8(sp)
    80001fbc:	00813023          	sd	s0,0(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001fc4:	fffff097          	auipc	ra,0xfffff
    80001fc8:	580080e7          	jalr	1408(ra) # 80001544 <_Z9mem_allocm>
}
    80001fcc:	00813083          	ld	ra,8(sp)
    80001fd0:	00013403          	ld	s0,0(sp)
    80001fd4:	01010113          	addi	sp,sp,16
    80001fd8:	00008067          	ret

0000000080001fdc <_ZdlPv>:
void operator delete(void *mem) {
    80001fdc:	ff010113          	addi	sp,sp,-16
    80001fe0:	00113423          	sd	ra,8(sp)
    80001fe4:	00813023          	sd	s0,0(sp)
    80001fe8:	01010413          	addi	s0,sp,16
    mem_free(mem);
    80001fec:	fffff097          	auipc	ra,0xfffff
    80001ff0:	5a0080e7          	jalr	1440(ra) # 8000158c <_Z8mem_freePv>
}
    80001ff4:	00813083          	ld	ra,8(sp)
    80001ff8:	00013403          	ld	s0,0(sp)
    80001ffc:	01010113          	addi	sp,sp,16
    80002000:	00008067          	ret

0000000080002004 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002004:	fe010113          	addi	sp,sp,-32
    80002008:	00113c23          	sd	ra,24(sp)
    8000200c:	00813823          	sd	s0,16(sp)
    80002010:	00913423          	sd	s1,8(sp)
    80002014:	02010413          	addi	s0,sp,32
    80002018:	00050493          	mv	s1,a0
}
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	f38080e7          	jalr	-200(ra) # 80001f54 <_ZN9SemaphoreD1Ev>
    80002024:	00048513          	mv	a0,s1
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	fb4080e7          	jalr	-76(ra) # 80001fdc <_ZdlPv>
    80002030:	01813083          	ld	ra,24(sp)
    80002034:	01013403          	ld	s0,16(sp)
    80002038:	00813483          	ld	s1,8(sp)
    8000203c:	02010113          	addi	sp,sp,32
    80002040:	00008067          	ret

0000000080002044 <_ZdaPv>:
void operator delete[](void *mem) {
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00113423          	sd	ra,8(sp)
    8000204c:	00813023          	sd	s0,0(sp)
    80002050:	01010413          	addi	s0,sp,16
    mem_free(mem);
    80002054:	fffff097          	auipc	ra,0xfffff
    80002058:	538080e7          	jalr	1336(ra) # 8000158c <_Z8mem_freePv>
}
    8000205c:	00813083          	ld	ra,8(sp)
    80002060:	00013403          	ld	s0,0(sp)
    80002064:	01010113          	addi	sp,sp,16
    80002068:	00008067          	ret

000000008000206c <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    8000206c:	fe010113          	addi	sp,sp,-32
    80002070:	00113c23          	sd	ra,24(sp)
    80002074:	00813823          	sd	s0,16(sp)
    80002078:	00913423          	sd	s1,8(sp)
    8000207c:	02010413          	addi	s0,sp,32
    80002080:	0000b797          	auipc	a5,0xb
    80002084:	89878793          	addi	a5,a5,-1896 # 8000c918 <_ZTV6Thread+0x10>
    80002088:	00f53023          	sd	a5,0(a0)
    if (myHandle->isFinished())
    8000208c:	00853483          	ld	s1,8(a0)
    80002090:	0284c783          	lbu	a5,40(s1)
    80002094:	02078263          	beqz	a5,800020b8 <_ZN6ThreadD1Ev+0x4c>
        delete myHandle;
    80002098:	02048063          	beqz	s1,800020b8 <_ZN6ThreadD1Ev+0x4c>
    ~TCB() { delete[] stack;}
    8000209c:	0084b503          	ld	a0,8(s1)
    800020a0:	00050663          	beqz	a0,800020ac <_ZN6ThreadD1Ev+0x40>
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	fa0080e7          	jalr	-96(ra) # 80002044 <_ZdaPv>
        Allocator::_mem_free(ptr);
    800020ac:	00048513          	mv	a0,s1
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	52c080e7          	jalr	1324(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
}
    800020b8:	01813083          	ld	ra,24(sp)
    800020bc:	01013403          	ld	s0,16(sp)
    800020c0:	00813483          	ld	s1,8(sp)
    800020c4:	02010113          	addi	sp,sp,32
    800020c8:	00008067          	ret

00000000800020cc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800020cc:	fe010113          	addi	sp,sp,-32
    800020d0:	00113c23          	sd	ra,24(sp)
    800020d4:	00813823          	sd	s0,16(sp)
    800020d8:	00913423          	sd	s1,8(sp)
    800020dc:	02010413          	addi	s0,sp,32
    800020e0:	00050493          	mv	s1,a0
}
    800020e4:	00000097          	auipc	ra,0x0
    800020e8:	f88080e7          	jalr	-120(ra) # 8000206c <_ZN6ThreadD1Ev>
    800020ec:	00048513          	mv	a0,s1
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	eec080e7          	jalr	-276(ra) # 80001fdc <_ZdlPv>
    800020f8:	01813083          	ld	ra,24(sp)
    800020fc:	01013403          	ld	s0,16(sp)
    80002100:	00813483          	ld	s1,8(sp)
    80002104:	02010113          	addi	sp,sp,32
    80002108:	00008067          	ret

000000008000210c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    8000210c:	ff010113          	addi	sp,sp,-16
    80002110:	00813423          	sd	s0,8(sp)
    80002114:	01010413          	addi	s0,sp,16
    80002118:	0000b797          	auipc	a5,0xb
    8000211c:	80078793          	addi	a5,a5,-2048 # 8000c918 <_ZTV6Thread+0x10>
    80002120:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80002124:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002128:	00c53c23          	sd	a2,24(a0)
    myHandle = nullptr;
    8000212c:	00053423          	sd	zero,8(a0)
}
    80002130:	00813403          	ld	s0,8(sp)
    80002134:	01010113          	addi	sp,sp,16
    80002138:	00008067          	ret

000000008000213c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00813423          	sd	s0,8(sp)
    80002144:	01010413          	addi	s0,sp,16
    80002148:	0000a797          	auipc	a5,0xa
    8000214c:	7d078793          	addi	a5,a5,2000 # 8000c918 <_ZTV6Thread+0x10>
    80002150:	00f53023          	sd	a5,0(a0)
    this->body = nullptr;
    80002154:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    80002158:	00053c23          	sd	zero,24(a0)
    myHandle = nullptr;
    8000215c:	00053423          	sd	zero,8(a0)
}
    80002160:	00813403          	ld	s0,8(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <_ZN6Thread5startEv>:
    if (!myHandle) {
    8000216c:	00853783          	ld	a5,8(a0)
    80002170:	04079c63          	bnez	a5,800021c8 <_ZN6Thread5startEv+0x5c>
int Thread::start() {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00113423          	sd	ra,8(sp)
    8000217c:	00813023          	sd	s0,0(sp)
    80002180:	01010413          	addi	s0,sp,16
        if (body) retval = thread_create(&myHandle,body,this->arg);
    80002184:	01053583          	ld	a1,16(a0)
    80002188:	02058263          	beqz	a1,800021ac <_ZN6Thread5startEv+0x40>
    8000218c:	01853603          	ld	a2,24(a0)
    80002190:	00850513          	addi	a0,a0,8
    80002194:	fffff097          	auipc	ra,0xfffff
    80002198:	448080e7          	jalr	1096(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
}
    8000219c:	00813083          	ld	ra,8(sp)
    800021a0:	00013403          	ld	s0,0(sp)
    800021a4:	01010113          	addi	sp,sp,16
    800021a8:	00008067          	ret
        else retval = thread_create(&myHandle,fwrapper,this);
    800021ac:	00050613          	mv	a2,a0
    800021b0:	00000597          	auipc	a1,0x0
    800021b4:	d2458593          	addi	a1,a1,-732 # 80001ed4 <_ZN6Thread8fwrapperEPv>
    800021b8:	00850513          	addi	a0,a0,8
    800021bc:	fffff097          	auipc	ra,0xfffff
    800021c0:	420080e7          	jalr	1056(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
        return retval;
    800021c4:	fd9ff06f          	j	8000219c <_ZN6Thread5startEv+0x30>
    return -1;
    800021c8:	fff00513          	li	a0,-1
}
    800021cc:	00008067          	ret

00000000800021d0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800021d0:	ff010113          	addi	sp,sp,-16
    800021d4:	00113423          	sd	ra,8(sp)
    800021d8:	00813023          	sd	s0,0(sp)
    800021dc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800021e0:	fffff097          	auipc	ra,0xfffff
    800021e4:	4f4080e7          	jalr	1268(ra) # 800016d4 <_Z15thread_dispatchv>
}
    800021e8:	00813083          	ld	ra,8(sp)
    800021ec:	00013403          	ld	s0,0(sp)
    800021f0:	01010113          	addi	sp,sp,16
    800021f4:	00008067          	ret

00000000800021f8 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t ms) {
    800021f8:	ff010113          	addi	sp,sp,-16
    800021fc:	00113423          	sd	ra,8(sp)
    80002200:	00813023          	sd	s0,0(sp)
    80002204:	01010413          	addi	s0,sp,16
    return time_sleep(ms);
    80002208:	fffff097          	auipc	ra,0xfffff
    8000220c:	50c080e7          	jalr	1292(ra) # 80001714 <_Z10time_sleepm>
}
    80002210:	00813083          	ld	ra,8(sp)
    80002214:	00013403          	ld	s0,0(sp)
    80002218:	01010113          	addi	sp,sp,16
    8000221c:	00008067          	ret

0000000080002220 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00113423          	sd	ra,8(sp)
    80002228:	00813023          	sd	s0,0(sp)
    8000222c:	01010413          	addi	s0,sp,16
    80002230:	0000a797          	auipc	a5,0xa
    80002234:	71078793          	addi	a5,a5,1808 # 8000c940 <_ZTV9Semaphore+0x10>
    80002238:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    8000223c:	00850513          	addi	a0,a0,8
    80002240:	fffff097          	auipc	ra,0xfffff
    80002244:	534080e7          	jalr	1332(ra) # 80001774 <_Z8sem_openPP10kSemaphorej>
}
    80002248:	00813083          	ld	ra,8(sp)
    8000224c:	00013403          	ld	s0,0(sp)
    80002250:	01010113          	addi	sp,sp,16
    80002254:	00008067          	ret

0000000080002258 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002258:	ff010113          	addi	sp,sp,-16
    8000225c:	00113423          	sd	ra,8(sp)
    80002260:	00813023          	sd	s0,0(sp)
    80002264:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002268:	00853503          	ld	a0,8(a0)
    8000226c:	fffff097          	auipc	ra,0xfffff
    80002270:	568080e7          	jalr	1384(ra) # 800017d4 <_Z8sem_waitP10kSemaphore>
}
    80002274:	00813083          	ld	ra,8(sp)
    80002278:	00013403          	ld	s0,0(sp)
    8000227c:	01010113          	addi	sp,sp,16
    80002280:	00008067          	ret

0000000080002284 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002284:	ff010113          	addi	sp,sp,-16
    80002288:	00113423          	sd	ra,8(sp)
    8000228c:	00813023          	sd	s0,0(sp)
    80002290:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002294:	00853503          	ld	a0,8(a0)
    80002298:	fffff097          	auipc	ra,0xfffff
    8000229c:	5a4080e7          	jalr	1444(ra) # 8000183c <_Z10sem_signalP10kSemaphore>
}
    800022a0:	00813083          	ld	ra,8(sp)
    800022a4:	00013403          	ld	s0,0(sp)
    800022a8:	01010113          	addi	sp,sp,16
    800022ac:	00008067          	ret

00000000800022b0 <_ZN9Semaphore7tryWaitEv>:
int Semaphore::tryWait() {
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00113423          	sd	ra,8(sp)
    800022b8:	00813023          	sd	s0,0(sp)
    800022bc:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800022c0:	00853503          	ld	a0,8(a0)
    800022c4:	fffff097          	auipc	ra,0xfffff
    800022c8:	6b0080e7          	jalr	1712(ra) # 80001974 <_Z11sem_trywaitP10kSemaphore>
}
    800022cc:	00813083          	ld	ra,8(sp)
    800022d0:	00013403          	ld	s0,0(sp)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret

00000000800022dc <_ZN9Semaphore9timedWaitEm>:
int Semaphore::timedWait(time_t t) {
    800022dc:	ff010113          	addi	sp,sp,-16
    800022e0:	00113423          	sd	ra,8(sp)
    800022e4:	00813023          	sd	s0,0(sp)
    800022e8:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle,t);
    800022ec:	00853503          	ld	a0,8(a0)
    800022f0:	fffff097          	auipc	ra,0xfffff
    800022f4:	61c080e7          	jalr	1564(ra) # 8000190c <_Z13sem_timedwaitP10kSemaphorem>
}
    800022f8:	00813083          	ld	ra,8(sp)
    800022fc:	00013403          	ld	s0,0(sp)
    80002300:	01010113          	addi	sp,sp,16
    80002304:	00008067          	ret

0000000080002308 <_ZN7Console4getcEv>:
char Console::getc() {
    80002308:	ff010113          	addi	sp,sp,-16
    8000230c:	00113423          	sd	ra,8(sp)
    80002310:	00813023          	sd	s0,0(sp)
    80002314:	01010413          	addi	s0,sp,16
    return ::getc();
    80002318:	fffff097          	auipc	ra,0xfffff
    8000231c:	6c4080e7          	jalr	1732(ra) # 800019dc <_Z4getcv>
}
    80002320:	00813083          	ld	ra,8(sp)
    80002324:	00013403          	ld	s0,0(sp)
    80002328:	01010113          	addi	sp,sp,16
    8000232c:	00008067          	ret

0000000080002330 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00113423          	sd	ra,8(sp)
    80002338:	00813023          	sd	s0,0(sp)
    8000233c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002340:	fffff097          	auipc	ra,0xfffff
    80002344:	6ec080e7          	jalr	1772(ra) # 80001a2c <_Z4putcc>
}
    80002348:	00813083          	ld	ra,8(sp)
    8000234c:	00013403          	ld	s0,0(sp)
    80002350:	01010113          	addi	sp,sp,16
    80002354:	00008067          	ret

0000000080002358 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80002358:	fe010113          	addi	sp,sp,-32
    8000235c:	00113c23          	sd	ra,24(sp)
    80002360:	00813823          	sd	s0,16(sp)
    80002364:	00913423          	sd	s1,8(sp)
    80002368:	01213023          	sd	s2,0(sp)
    8000236c:	02010413          	addi	s0,sp,32
    80002370:	00050493          	mv	s1,a0
    80002374:	00058913          	mv	s2,a1
    80002378:	00000097          	auipc	ra,0x0
    8000237c:	dc4080e7          	jalr	-572(ra) # 8000213c <_ZN6ThreadC1Ev>
    80002380:	0000a797          	auipc	a5,0xa
    80002384:	5e078793          	addi	a5,a5,1504 # 8000c960 <_ZTV14PeriodicThread+0x10>
    80002388:	00f4b023          	sd	a5,0(s1)
    8000238c:	02048023          	sb	zero,32(s1)
    this->period = period;
    80002390:	0324b423          	sd	s2,40(s1)
}
    80002394:	01813083          	ld	ra,24(sp)
    80002398:	01013403          	ld	s0,16(sp)
    8000239c:	00813483          	ld	s1,8(sp)
    800023a0:	00013903          	ld	s2,0(sp)
    800023a4:	02010113          	addi	sp,sp,32
    800023a8:	00008067          	ret

00000000800023ac <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate(){
    800023ac:	ff010113          	addi	sp,sp,-16
    800023b0:	00813423          	sd	s0,8(sp)
    800023b4:	01010413          	addi	s0,sp,16
    terminated = true;
    800023b8:	00100793          	li	a5,1
    800023bc:	02f50023          	sb	a5,32(a0)
}
    800023c0:	00813403          	ld	s0,8(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret

00000000800023cc <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800023cc:	ff010113          	addi	sp,sp,-16
    800023d0:	00813423          	sd	s0,8(sp)
    800023d4:	01010413          	addi	s0,sp,16
    800023d8:	00813403          	ld	s0,8(sp)
    800023dc:	01010113          	addi	sp,sp,16
    800023e0:	00008067          	ret

00000000800023e4 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800023e4:	ff010113          	addi	sp,sp,-16
    800023e8:	00813423          	sd	s0,8(sp)
    800023ec:	01010413          	addi	s0,sp,16
    800023f0:	00813403          	ld	s0,8(sp)
    800023f4:	01010113          	addi	sp,sp,16
    800023f8:	00008067          	ret

00000000800023fc <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800023fc:	ff010113          	addi	sp,sp,-16
    80002400:	00113423          	sd	ra,8(sp)
    80002404:	00813023          	sd	s0,0(sp)
    80002408:	01010413          	addi	s0,sp,16
    8000240c:	0000a797          	auipc	a5,0xa
    80002410:	55478793          	addi	a5,a5,1364 # 8000c960 <_ZTV14PeriodicThread+0x10>
    80002414:	00f53023          	sd	a5,0(a0)
    80002418:	00000097          	auipc	ra,0x0
    8000241c:	c54080e7          	jalr	-940(ra) # 8000206c <_ZN6ThreadD1Ev>
    80002420:	00813083          	ld	ra,8(sp)
    80002424:	00013403          	ld	s0,0(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_ZN14PeriodicThreadD0Ev>:
    80002430:	fe010113          	addi	sp,sp,-32
    80002434:	00113c23          	sd	ra,24(sp)
    80002438:	00813823          	sd	s0,16(sp)
    8000243c:	00913423          	sd	s1,8(sp)
    80002440:	02010413          	addi	s0,sp,32
    80002444:	00050493          	mv	s1,a0
    80002448:	0000a797          	auipc	a5,0xa
    8000244c:	51878793          	addi	a5,a5,1304 # 8000c960 <_ZTV14PeriodicThread+0x10>
    80002450:	00f53023          	sd	a5,0(a0)
    80002454:	00000097          	auipc	ra,0x0
    80002458:	c18080e7          	jalr	-1000(ra) # 8000206c <_ZN6ThreadD1Ev>
    8000245c:	00048513          	mv	a0,s1
    80002460:	00000097          	auipc	ra,0x0
    80002464:	b7c080e7          	jalr	-1156(ra) # 80001fdc <_ZdlPv>
    80002468:	01813083          	ld	ra,24(sp)
    8000246c:	01013403          	ld	s0,16(sp)
    80002470:	00813483          	ld	s1,8(sp)
    80002474:	02010113          	addi	sp,sp,32
    80002478:	00008067          	ret

000000008000247c <_ZN9Allocator4initEv>:
#include "../h/Allocator.hpp"

Allocator::BlockHeader *Allocator::head = nullptr;

void Allocator::init()
{
    8000247c:	ff010113          	addi	sp,sp,-16
    80002480:	00813423          	sd	s0,8(sp)
    80002484:	01010413          	addi	s0,sp,16
    Allocator::head = (BlockHeader*) ((uint64) HEAP_START_ADDR + MEM_BLOCK_SIZE - (uint64) HEAP_START_ADDR % MEM_BLOCK_SIZE);
    80002488:	0000a797          	auipc	a5,0xa
    8000248c:	6b87b783          	ld	a5,1720(a5) # 8000cb40 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002490:	0007b783          	ld	a5,0(a5)
    80002494:	fc07f693          	andi	a3,a5,-64
    80002498:	04068613          	addi	a2,a3,64 # 8040 <_entry-0x7fff7fc0>
    8000249c:	0000a717          	auipc	a4,0xa
    800024a0:	76c73a23          	sd	a2,1908(a4) # 8000cc10 <_ZN9Allocator4headE>
    Allocator::head->size = (uint64)HEAP_END_ADDR - ((uint64) HEAP_START_ADDR + MEM_BLOCK_SIZE - (uint64) HEAP_START_ADDR % MEM_BLOCK_SIZE) - sizeof(BlockHeader);
    800024a4:	fff7c793          	not	a5,a5
    800024a8:	fc07f793          	andi	a5,a5,-64
    800024ac:	0000a717          	auipc	a4,0xa
    800024b0:	6d473703          	ld	a4,1748(a4) # 8000cb80 <_GLOBAL_OFFSET_TABLE_+0x58>
    800024b4:	00073703          	ld	a4,0(a4)
    800024b8:	00f707b3          	add	a5,a4,a5
    800024bc:	ff078793          	addi	a5,a5,-16
    800024c0:	04f6b423          	sd	a5,72(a3)
    Allocator::head->next = nullptr;
    800024c4:	0406b023          	sd	zero,64(a3)
}
    800024c8:	00813403          	ld	s0,8(sp)
    800024cc:	01010113          	addi	sp,sp,16
    800024d0:	00008067          	ret

00000000800024d4 <_ZN9Allocator7_mallocEm>:

void *Allocator::_malloc(size_t size)
{
    800024d4:	ff010113          	addi	sp,sp,-16
    800024d8:	00813423          	sd	s0,8(sp)
    800024dc:	01010413          	addi	s0,sp,16
    if (size > 0) {
    800024e0:	0a050263          	beqz	a0,80002584 <_ZN9Allocator7_mallocEm+0xb0>
        size = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    800024e4:	03f50513          	addi	a0,a0,63
    800024e8:	fc057793          	andi	a5,a0,-64
    } else {
        return nullptr;
    }

    BlockHeader *block = head;
    800024ec:	0000a517          	auipc	a0,0xa
    800024f0:	72453503          	ld	a0,1828(a0) # 8000cc10 <_ZN9Allocator4headE>
    BlockHeader *prev = nullptr;
    800024f4:	00000693          	li	a3,0

    while (block != nullptr) {
    800024f8:	00050c63          	beqz	a0,80002510 <_ZN9Allocator7_mallocEm+0x3c>
        if (block->size >= size) {
    800024fc:	00853703          	ld	a4,8(a0)
    80002500:	00f77863          	bgeu	a4,a5,80002510 <_ZN9Allocator7_mallocEm+0x3c>
            break;
        }
        prev = block;
    80002504:	00050693          	mv	a3,a0
        block = block->next;
    80002508:	00053503          	ld	a0,0(a0)
    while (block != nullptr) {
    8000250c:	fedff06f          	j	800024f8 <_ZN9Allocator7_mallocEm+0x24>
    }

    if (block == nullptr) {
    80002510:	02050e63          	beqz	a0,8000254c <_ZN9Allocator7_mallocEm+0x78>
        return nullptr;
    }

    BlockHeader *newBlockPos = reinterpret_cast<BlockHeader *>(reinterpret_cast<char *>(block) + size + sizeof(BlockHeader));
    80002514:	01078613          	addi	a2,a5,16
    80002518:	00c505b3          	add	a1,a0,a2

    if (block->size > size + sizeof(BlockHeader)) {
    8000251c:	00853703          	ld	a4,8(a0)
    80002520:	04e67263          	bgeu	a2,a4,80002564 <_ZN9Allocator7_mallocEm+0x90>

        newBlockPos->size = block->size - size - sizeof(BlockHeader);
    80002524:	40f70733          	sub	a4,a4,a5
    80002528:	ff070713          	addi	a4,a4,-16
    8000252c:	00e5b423          	sd	a4,8(a1)
        newBlockPos->next = block->next;
    80002530:	00053703          	ld	a4,0(a0)
    80002534:	00e5b023          	sd	a4,0(a1)

        if (prev != nullptr) {
    80002538:	02068063          	beqz	a3,80002558 <_ZN9Allocator7_mallocEm+0x84>
            prev->next = newBlockPos;
    8000253c:	00b6b023          	sd	a1,0(a3)
        } else {
            head = newBlockPos;
        }

        block->size = size;
    80002540:	00f53423          	sd	a5,8(a0)
        } else {
            head = block->next;
        }
    }

    block->next = nullptr;
    80002544:	00053023          	sd	zero,0(a0)

    return (void*) ((char*)block + sizeof(BlockHeader));
    80002548:	01050513          	addi	a0,a0,16

}
    8000254c:	00813403          	ld	s0,8(sp)
    80002550:	01010113          	addi	sp,sp,16
    80002554:	00008067          	ret
            head = newBlockPos;
    80002558:	0000a717          	auipc	a4,0xa
    8000255c:	6ab73c23          	sd	a1,1720(a4) # 8000cc10 <_ZN9Allocator4headE>
    80002560:	fe1ff06f          	j	80002540 <_ZN9Allocator7_mallocEm+0x6c>
        if (prev != nullptr) {
    80002564:	00068863          	beqz	a3,80002574 <_ZN9Allocator7_mallocEm+0xa0>
            prev->next = block->next;
    80002568:	00053783          	ld	a5,0(a0)
    8000256c:	00f6b023          	sd	a5,0(a3)
    80002570:	fd5ff06f          	j	80002544 <_ZN9Allocator7_mallocEm+0x70>
            head = block->next;
    80002574:	00053783          	ld	a5,0(a0)
    80002578:	0000a717          	auipc	a4,0xa
    8000257c:	68f73c23          	sd	a5,1688(a4) # 8000cc10 <_ZN9Allocator4headE>
    80002580:	fc5ff06f          	j	80002544 <_ZN9Allocator7_mallocEm+0x70>
        return nullptr;
    80002584:	00000513          	li	a0,0
    80002588:	fc5ff06f          	j	8000254c <_ZN9Allocator7_mallocEm+0x78>

000000008000258c <_ZN9Allocator4joinEPNS_11BlockHeaderE>:
    return 0;
}


void Allocator::join(BlockHeader *block)
{
    8000258c:	ff010113          	addi	sp,sp,-16
    80002590:	00813423          	sd	s0,8(sp)
    80002594:	01010413          	addi	s0,sp,16
    if (!block) return;
    80002598:	00050e63          	beqz	a0,800025b4 <_ZN9Allocator4joinEPNS_11BlockHeaderE+0x28>
    if (block->next) {
    8000259c:	00053783          	ld	a5,0(a0)
    800025a0:	00078a63          	beqz	a5,800025b4 <_ZN9Allocator4joinEPNS_11BlockHeaderE+0x28>
        if ((char *) block + block->size + sizeof(BlockHeader) == (char *) (block->next)) {
    800025a4:	00853683          	ld	a3,8(a0)
    800025a8:	01068713          	addi	a4,a3,16
    800025ac:	00e50733          	add	a4,a0,a4
    800025b0:	00e78863          	beq	a5,a4,800025c0 <_ZN9Allocator4joinEPNS_11BlockHeaderE+0x34>
            block->next = block->next->next;
            return;
        }
    }
    return;
}
    800025b4:	00813403          	ld	s0,8(sp)
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00008067          	ret
            block->size += block->next->size + sizeof(BlockHeader);
    800025c0:	0087b703          	ld	a4,8(a5)
    800025c4:	00e686b3          	add	a3,a3,a4
    800025c8:	01068693          	addi	a3,a3,16
    800025cc:	00d53423          	sd	a3,8(a0)
            block->next = block->next->next;
    800025d0:	0007b783          	ld	a5,0(a5)
    800025d4:	00f53023          	sd	a5,0(a0)
            return;
    800025d8:	fddff06f          	j	800025b4 <_ZN9Allocator4joinEPNS_11BlockHeaderE+0x28>

00000000800025dc <_ZN9Allocator9_mem_freeEPv>:
    if (!pointer) return -1;
    800025dc:	08050663          	beqz	a0,80002668 <_ZN9Allocator9_mem_freeEPv+0x8c>
{
    800025e0:	fe010113          	addi	sp,sp,-32
    800025e4:	00113c23          	sd	ra,24(sp)
    800025e8:	00813823          	sd	s0,16(sp)
    800025ec:	00913423          	sd	s1,8(sp)
    800025f0:	02010413          	addi	s0,sp,32
    800025f4:	00050713          	mv	a4,a0
    BlockHeader *novi = (BlockHeader*)((char*)pointer - sizeof(BlockHeader));
    800025f8:	ff050513          	addi	a0,a0,-16
    if (pointer < head) {
    800025fc:	0000a697          	auipc	a3,0xa
    80002600:	6146b683          	ld	a3,1556(a3) # 8000cc10 <_ZN9Allocator4headE>
    80002604:	02d76463          	bltu	a4,a3,8000262c <_ZN9Allocator9_mem_freeEPv+0x50>
        blck = head;
    80002608:	00068793          	mv	a5,a3
        while (blck->next) {
    8000260c:	00078493          	mv	s1,a5
    80002610:	0007b783          	ld	a5,0(a5)
    80002614:	00078463          	beqz	a5,8000261c <_ZN9Allocator9_mem_freeEPv+0x40>
            if ((blck->next) > novi) {
    80002618:	fef57ae3          	bgeu	a0,a5,8000260c <_ZN9Allocator9_mem_freeEPv+0x30>
    if (blck) {
    8000261c:	00048a63          	beqz	s1,80002630 <_ZN9Allocator9_mem_freeEPv+0x54>
        novi->next = blck->next;
    80002620:	fef73823          	sd	a5,-16(a4)
        blck->next = novi;
    80002624:	00a4b023          	sd	a0,0(s1)
    80002628:	0140006f          	j	8000263c <_ZN9Allocator9_mem_freeEPv+0x60>
        blck = nullptr;
    8000262c:	00000493          	li	s1,0
        novi->next = head;
    80002630:	fed73823          	sd	a3,-16(a4)
        head = novi;
    80002634:	0000a797          	auipc	a5,0xa
    80002638:	5ca7be23          	sd	a0,1500(a5) # 8000cc10 <_ZN9Allocator4headE>
    join(novi);
    8000263c:	00000097          	auipc	ra,0x0
    80002640:	f50080e7          	jalr	-176(ra) # 8000258c <_ZN9Allocator4joinEPNS_11BlockHeaderE>
    join(blck);
    80002644:	00048513          	mv	a0,s1
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	f44080e7          	jalr	-188(ra) # 8000258c <_ZN9Allocator4joinEPNS_11BlockHeaderE>
    return 0;
    80002650:	00000513          	li	a0,0
}
    80002654:	01813083          	ld	ra,24(sp)
    80002658:	01013403          	ld	s0,16(sp)
    8000265c:	00813483          	ld	s1,8(sp)
    80002660:	02010113          	addi	sp,sp,32
    80002664:	00008067          	ret
    if (!pointer) return -1;
    80002668:	fff00513          	li	a0,-1
}
    8000266c:	00008067          	ret

0000000080002670 <_ZN5Riscv10popSppSpieEv>:
// Created by os on 5/16/24.
//
#include "../h/riscv.hpp"

void Riscv::popSppSpie()
{
    80002670:	ff010113          	addi	sp,sp,-16
    80002674:	00813423          	sd	s0,8(sp)
    80002678:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000267c:	10000793          	li	a5,256
    80002680:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra");
    80002684:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002688:	10200073          	sret
}
    8000268c:	00813403          	ld	s0,8(sp)
    80002690:	01010113          	addi	sp,sp,16
    80002694:	00008067          	ret

0000000080002698 <_ZN5Riscv9kernelEndEPv>:

void Riscv::kernelEnd(void *arg) {
    80002698:	ff010113          	addi	sp,sp,-16
    8000269c:	00813423          	sd	s0,8(sp)
    800026a0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" :: "r"(0x100));
    800026a4:	10000793          	li	a5,256
    800026a8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800026ac:	00000073          	ecall
    return;
}
    800026b0:	00813403          	ld	s0,8(sp)
    800026b4:	01010113          	addi	sp,sp,16
    800026b8:	00008067          	ret

00000000800026bc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800026bc:	f2010113          	addi	sp,sp,-224
    800026c0:	0c113c23          	sd	ra,216(sp)
    800026c4:	0c813823          	sd	s0,208(sp)
    800026c8:	0c913423          	sd	s1,200(sp)
    800026cc:	0d213023          	sd	s2,192(sp)
    800026d0:	0b313c23          	sd	s3,184(sp)
    800026d4:	0b413823          	sd	s4,176(sp)
    800026d8:	0b513423          	sd	s5,168(sp)
    800026dc:	0b613023          	sd	s6,160(sp)
    800026e0:	09713c23          	sd	s7,152(sp)
    800026e4:	09813823          	sd	s8,144(sp)
    800026e8:	0e010413          	addi	s0,sp,224
    uint64 volatile razlog, p1,p2,p3,p4;
    __asm__ volatile("mv %[razlog], a0" : [razlog]"=r"(razlog));
    800026ec:	00050793          	mv	a5,a0
    800026f0:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile("mv %[p1], a1" : [p1] "=r"(p1));
    800026f4:	00058793          	mv	a5,a1
    800026f8:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("mv %[p2], a2" : [p2] "=r"(p2));
    800026fc:	00060793          	mv	a5,a2
    80002700:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("mv %[p3], a3" : [p3] "=r"(p3));
    80002704:	00068793          	mv	a5,a3
    80002708:	f8f43823          	sd	a5,-112(s0)
    __asm__ volatile("mv %[p4], a4" : [p4] "=r"(p4));
    8000270c:	00070793          	mv	a5,a4
    80002710:	f8f43423          	sd	a5,-120(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002714:	142027f3          	csrr	a5,scause
    80002718:	f4f43c23          	sd	a5,-168(s0)
    return scause;
    8000271c:	f5843783          	ld	a5,-168(s0)
    //__asm__ volatile("mv %[p5], a5" : [p5] "=r"(p5));

    //printString("usao1\n");
    uint64 volatile scause = r_scause();
    80002720:	f8f43023          	sd	a5,-128(s0)
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){
    80002724:	f8043703          	ld	a4,-128(s0)
    80002728:	00800793          	li	a5,8
    8000272c:	04f70c63          	beq	a4,a5,80002784 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
    80002730:	f8043703          	ld	a4,-128(s0)
    80002734:	00900793          	li	a5,9
    80002738:	04f70663          	beq	a4,a5,80002784 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    8000273c:	f8043703          	ld	a4,-128(s0)
    80002740:	fff00793          	li	a5,-1
    80002744:	03f79793          	slli	a5,a5,0x3f
    80002748:	00178793          	addi	a5,a5,1
    8000274c:	46f70063          	beq	a4,a5,80002bac <_ZN5Riscv20handleSupervisorTrapEv+0x4f0>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        // OVO JE ZA PROMJENU KONTKESTA KAD STIGNE TAJMER
    }
    else if (scause == 0x8000000000000009UL)
    80002750:	f8043703          	ld	a4,-128(s0)
    80002754:	fff00793          	li	a5,-1
    80002758:	03f79793          	slli	a5,a5,0x3f
    8000275c:	00978793          	addi	a5,a5,9
    80002760:	78f70863          	beq	a4,a5,80002ef0 <_ZN5Riscv20handleSupervisorTrapEv+0x834>
            plic_complete(CONSOLE_IRQ);
        }
        //console_handler();
    }
    else {
        if (scause == 2UL) {
    80002764:	f8043703          	ld	a4,-128(s0)
    80002768:	00200793          	li	a5,2
    8000276c:	0cf71e63          	bne	a4,a5,80002848 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            //printStringMoj("MIRANNNN BUDIIDIDI");
            //kConsole::kputc('A');
            printStringMoj("Illegal insturction!!!\n");
    80002770:	00008517          	auipc	a0,0x8
    80002774:	8c850513          	addi	a0,a0,-1848 # 8000a038 <CONSOLE_STATUS+0x28>
    80002778:	00001097          	auipc	ra,0x1
    8000277c:	184080e7          	jalr	388(ra) # 800038fc <_Z14printStringMojPKc>
    80002780:	7f40006f          	j	80002f74 <_ZN5Riscv20handleSupervisorTrapEv+0x8b8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002784:	141027f3          	csrr	a5,sepc
    80002788:	f6f43423          	sd	a5,-152(s0)
    return sepc;
    8000278c:	f6843783          	ld	a5,-152(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002790:	00478793          	addi	a5,a5,4
    80002794:	f2f43823          	sd	a5,-208(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002798:	100027f3          	csrr	a5,sstatus
    8000279c:	f6f43023          	sd	a5,-160(s0)
    return sstatus;
    800027a0:	f6043783          	ld	a5,-160(s0)
        uint64 volatile sstatus = r_sstatus();
    800027a4:	f2f43c23          	sd	a5,-200(s0)
        switch (razlog) {
    800027a8:	fa843783          	ld	a5,-88(s0)
    800027ac:	04200713          	li	a4,66
    800027b0:	02f76463          	bltu	a4,a5,800027d8 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    800027b4:	3e078063          	beqz	a5,80002b94 <_ZN5Riscv20handleSupervisorTrapEv+0x4d8>
    800027b8:	3cf76e63          	bltu	a4,a5,80002b94 <_ZN5Riscv20handleSupervisorTrapEv+0x4d8>
    800027bc:	00279793          	slli	a5,a5,0x2
    800027c0:	00008717          	auipc	a4,0x8
    800027c4:	89070713          	addi	a4,a4,-1904 # 8000a050 <CONSOLE_STATUS+0x40>
    800027c8:	00e787b3          	add	a5,a5,a4
    800027cc:	0007a783          	lw	a5,0(a5)
    800027d0:	00e787b3          	add	a5,a5,a4
    800027d4:	00078067          	jr	a5
    800027d8:	10000713          	li	a4,256
    800027dc:	3ae79c63          	bne	a5,a4,80002b94 <_ZN5Riscv20handleSupervisorTrapEv+0x4d8>
                while ((*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT))
    800027e0:	0000a797          	auipc	a5,0xa
    800027e4:	3587b783          	ld	a5,856(a5) # 8000cb38 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027e8:	0007b783          	ld	a5,0(a5)
    800027ec:	0007c783          	lbu	a5,0(a5)
    800027f0:	0207f793          	andi	a5,a5,32
    800027f4:	04078263          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    if (kConsole::getOutputSize() <= 0) {break;}
    800027f8:	00001097          	auipc	ra,0x1
    800027fc:	064080e7          	jalr	100(ra) # 8000385c <_ZN8kConsole13getOutputSizeEv>
    80002800:	02a05c63          	blez	a0,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    *((char*) CONSOLE_TX_DATA) = kConsole::putOutputBuffer();
    80002804:	0000a797          	auipc	a5,0xa
    80002808:	3547b783          	ld	a5,852(a5) # 8000cb58 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000280c:	0007b483          	ld	s1,0(a5)
    80002810:	00001097          	auipc	ra,0x1
    80002814:	fec080e7          	jalr	-20(ra) # 800037fc <_ZN8kConsole15putOutputBufferEv>
    80002818:	00a48023          	sb	a0,0(s1)
                while ((*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT))
    8000281c:	fc5ff06f          	j	800027e0 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
                ptr = Allocator::_malloc(((size_t) p1) * MEM_BLOCK_SIZE);
    80002820:	fa043503          	ld	a0,-96(s0)
    80002824:	00651513          	slli	a0,a0,0x6
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	cac080e7          	jalr	-852(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
                __asm__ volatile("mv t0, %0" : : "r"(ptr));
    80002830:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80002834:	04542823          	sw	t0,80(s0)
        w_sstatus(sstatus);
    80002838:	f3843783          	ld	a5,-200(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000283c:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002840:	f3043783          	ld	a5,-208(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002844:	14179073          	csrw	sepc,a5
            __asm__ volatile ("li t1, 0x100000");
            __asm__ volatile ("sw t0, 0(t1)");
        }
    }
    //printString("izasao iz handlera");
    80002848:	0d813083          	ld	ra,216(sp)
    8000284c:	0d013403          	ld	s0,208(sp)
    80002850:	0c813483          	ld	s1,200(sp)
    80002854:	0c013903          	ld	s2,192(sp)
    80002858:	0b813983          	ld	s3,184(sp)
    8000285c:	0b013a03          	ld	s4,176(sp)
    80002860:	0a813a83          	ld	s5,168(sp)
    80002864:	0a013b03          	ld	s6,160(sp)
    80002868:	09813b83          	ld	s7,152(sp)
    8000286c:	09013c03          	ld	s8,144(sp)
    80002870:	0e010113          	addi	sp,sp,224
    80002874:	00008067          	ret
                Allocator::_mem_free((void*) p1);
    80002878:	fa043503          	ld	a0,-96(s0)
    8000287c:	00000097          	auipc	ra,0x0
    80002880:	d60080e7          	jalr	-672(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
                __asm__ volatile("mv t0, %0" : : "r"(ret));
    80002884:	f2c42783          	lw	a5,-212(s0)
    80002888:	00078293          	mv	t0,a5
                __asm__ volatile ("sw t0, 80(x8)");
    8000288c:	04542823          	sw	t0,80(s0)
                break;
    80002890:	fa9ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                if (!(TCB::thread_create((TCB**)p1,(TCB::Body)p2,(void*)p3,(uint64*)p4))) {
    80002894:	fa043503          	ld	a0,-96(s0)
    80002898:	f9843583          	ld	a1,-104(s0)
    8000289c:	f9043603          	ld	a2,-112(s0)
    800028a0:	f8843683          	ld	a3,-120(s0)
    800028a4:	fffff097          	auipc	ra,0xfffff
    800028a8:	360080e7          	jalr	864(ra) # 80001c04 <_ZN3TCB13thread_createEPPS_PFvPvES2_Pm>
    800028ac:	00051e63          	bnez	a0,800028c8 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
                    if (TCB::running != nullptr)
    800028b0:	0000a797          	auipc	a5,0xa
    800028b4:	2c07b783          	ld	a5,704(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800028b8:	0007b783          	ld	a5,0(a5)
    800028bc:	f6078ee3          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    {TCB::running->retVal = 0;}
    800028c0:	0607a423          	sw	zero,104(a5)
    800028c4:	f75ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    if (TCB::running != nullptr){
    800028c8:	0000a797          	auipc	a5,0xa
    800028cc:	2a87b783          	ld	a5,680(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800028d0:	0007b783          	ld	a5,0(a5)
    800028d4:	f60782e3          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    TCB::running->retVal = -1;}
    800028d8:	fff00713          	li	a4,-1
    800028dc:	06e7a423          	sw	a4,104(a5)
    800028e0:	f59ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                TCB::running->setFinished(true);
    800028e4:	0000a797          	auipc	a5,0xa
    800028e8:	28c7b783          	ld	a5,652(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800028ec:	0007b783          	ld	a5,0(a5)
public:
    static int putcP;

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    800028f0:	00100713          	li	a4,1
    800028f4:	02e78423          	sb	a4,40(a5)
                TCB::dispatch();
    800028f8:	fffff097          	auipc	ra,0xfffff
    800028fc:	49c080e7          	jalr	1180(ra) # 80001d94 <_ZN3TCB8dispatchEv>
                break;
    80002900:	f39ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                TCB::timeSliceCounter = 0;
    80002904:	0000a797          	auipc	a5,0xa
    80002908:	24c7b783          	ld	a5,588(a5) # 8000cb50 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000290c:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	484080e7          	jalr	1156(ra) # 80001d94 <_ZN3TCB8dispatchEv>
                break;
    80002918:	f21ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                TCB::putToSleep((time_t) p1);
    8000291c:	fa043503          	ld	a0,-96(s0)
    80002920:	fffff097          	auipc	ra,0xfffff
    80002924:	4f0080e7          	jalr	1264(ra) # 80001e10 <_ZN3TCB10putToSleepEm>
                break;
    80002928:	f11ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                if (!kSemaphore::openSem((kSemaphore**)p1, (uint64) p2)) {
    8000292c:	fa043503          	ld	a0,-96(s0)
    80002930:	f9843583          	ld	a1,-104(s0)
    80002934:	0005859b          	sext.w	a1,a1
    80002938:	00001097          	auipc	ra,0x1
    8000293c:	91c080e7          	jalr	-1764(ra) # 80003254 <_ZN10kSemaphore7openSemEPPS_j>
    80002940:	00051e63          	bnez	a0,8000295c <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
                    if (TCB::running != nullptr)
    80002944:	0000a797          	auipc	a5,0xa
    80002948:	22c7b783          	ld	a5,556(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000294c:	0007b783          	ld	a5,0(a5)
    80002950:	ee0784e3          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    {TCB::running->retVal = 0;}
    80002954:	0607a423          	sw	zero,104(a5)
    80002958:	ee1ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    if (TCB::running != nullptr)
    8000295c:	0000a797          	auipc	a5,0xa
    80002960:	2147b783          	ld	a5,532(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002964:	0007b783          	ld	a5,0(a5)
    80002968:	ec0788e3          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    {TCB::running->retVal = -1;}
    8000296c:	fff00713          	li	a4,-1
    80002970:	06e7a423          	sw	a4,104(a5)
    80002974:	ec5ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                if (!((kSemaphore*)p1)->closeSem()) {
    80002978:	fa043503          	ld	a0,-96(s0)
    8000297c:	00001097          	auipc	ra,0x1
    80002980:	94c080e7          	jalr	-1716(ra) # 800032c8 <_ZN10kSemaphore8closeSemEv>
    80002984:	00051e63          	bnez	a0,800029a0 <_ZN5Riscv20handleSupervisorTrapEv+0x2e4>
                    if (TCB::running != nullptr)
    80002988:	0000a797          	auipc	a5,0xa
    8000298c:	1e87b783          	ld	a5,488(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002990:	0007b783          	ld	a5,0(a5)
    80002994:	ea0782e3          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    {TCB::running->retVal = 0;}
    80002998:	0607a423          	sw	zero,104(a5)
    8000299c:	e9dff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    if (TCB::running != nullptr)
    800029a0:	0000a797          	auipc	a5,0xa
    800029a4:	1d07b783          	ld	a5,464(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800029a8:	0007b783          	ld	a5,0(a5)
    800029ac:	e80786e3          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    {TCB::running->retVal = -1;}
    800029b0:	fff00713          	li	a4,-1
    800029b4:	06e7a423          	sw	a4,104(a5)
    800029b8:	e81ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                if (!((kSemaphore*)p1)->wait()){
    800029bc:	fa043503          	ld	a0,-96(s0)
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	6c8080e7          	jalr	1736(ra) # 80003088 <_ZN10kSemaphore4waitEv>
    800029c8:	00051e63          	bnez	a0,800029e4 <_ZN5Riscv20handleSupervisorTrapEv+0x328>
                    if (TCB::running != nullptr)
    800029cc:	0000a797          	auipc	a5,0xa
    800029d0:	1a47b783          	ld	a5,420(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800029d4:	0007b783          	ld	a5,0(a5)
    800029d8:	e60780e3          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    {TCB::running->retVal = 0;}
    800029dc:	0607a423          	sw	zero,104(a5)
    800029e0:	e59ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    if (TCB::running != nullptr)
    800029e4:	0000a797          	auipc	a5,0xa
    800029e8:	18c7b783          	ld	a5,396(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800029ec:	0007b783          	ld	a5,0(a5)
    800029f0:	e40784e3          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    {TCB::running->retVal = -1;}
    800029f4:	fff00713          	li	a4,-1
    800029f8:	06e7a423          	sw	a4,104(a5)
    800029fc:	e3dff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                if (!((kSemaphore*)p1)->signal()){
    80002a00:	fa043503          	ld	a0,-96(s0)
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	7f8080e7          	jalr	2040(ra) # 800031fc <_ZN10kSemaphore6signalEv>
    80002a0c:	00051e63          	bnez	a0,80002a28 <_ZN5Riscv20handleSupervisorTrapEv+0x36c>
                    if (TCB::running != nullptr)
    80002a10:	0000a797          	auipc	a5,0xa
    80002a14:	1607b783          	ld	a5,352(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002a18:	0007b783          	ld	a5,0(a5)
    80002a1c:	e0078ee3          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    {TCB::running->retVal = 0;}
    80002a20:	0607a423          	sw	zero,104(a5)
    80002a24:	e15ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    if (TCB::running != nullptr)
    80002a28:	0000a797          	auipc	a5,0xa
    80002a2c:	1487b783          	ld	a5,328(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002a30:	0007b783          	ld	a5,0(a5)
    80002a34:	e00782e3          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    {TCB::running->retVal = -1;}
    80002a38:	fff00713          	li	a4,-1
    80002a3c:	06e7a423          	sw	a4,104(a5)
    80002a40:	df9ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                ret = ((kSemaphore*)p1)->tryWait();
    80002a44:	fa043503          	ld	a0,-96(s0)
    80002a48:	00001097          	auipc	ra,0x1
    80002a4c:	9a4080e7          	jalr	-1628(ra) # 800033ec <_ZN10kSemaphore7tryWaitEv>
    80002a50:	f2a42623          	sw	a0,-212(s0)
                if (!ret) {
    80002a54:	f2c42783          	lw	a5,-212(s0)
    80002a58:	0007879b          	sext.w	a5,a5
    80002a5c:	00079e63          	bnez	a5,80002a78 <_ZN5Riscv20handleSupervisorTrapEv+0x3bc>
                    if (TCB::running != nullptr) {
    80002a60:	0000a797          	auipc	a5,0xa
    80002a64:	1107b783          	ld	a5,272(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002a68:	0007b783          	ld	a5,0(a5)
    80002a6c:	dc0786e3          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                        TCB::running->retVal = 0;
    80002a70:	0607a423          	sw	zero,104(a5)
    80002a74:	dc5ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    if (TCB::running != nullptr) {
    80002a78:	0000a797          	auipc	a5,0xa
    80002a7c:	0f87b783          	ld	a5,248(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002a80:	0007b703          	ld	a4,0(a5)
    80002a84:	da070ae3          	beqz	a4,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                        if (ret == 1) {
    80002a88:	f2c42783          	lw	a5,-212(s0)
    80002a8c:	0007879b          	sext.w	a5,a5
    80002a90:	00100693          	li	a3,1
    80002a94:	02d78063          	beq	a5,a3,80002ab4 <_ZN5Riscv20handleSupervisorTrapEv+0x3f8>
                        if (ret == -1) {
    80002a98:	f2c42783          	lw	a5,-212(s0)
    80002a9c:	0007879b          	sext.w	a5,a5
    80002aa0:	fff00693          	li	a3,-1
    80002aa4:	d8d79ae3          	bne	a5,a3,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                            TCB::running->retVal = -1;
    80002aa8:	fff00793          	li	a5,-1
    80002aac:	06f72423          	sw	a5,104(a4)
    80002ab0:	d89ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                            TCB::running->retVal = 1;
    80002ab4:	00100793          	li	a5,1
    80002ab8:	06f72423          	sw	a5,104(a4)
    80002abc:	fddff06f          	j	80002a98 <_ZN5Riscv20handleSupervisorTrapEv+0x3dc>
                ret = ((kSemaphore*)p1)->timedWait((time_t) p2);
    80002ac0:	fa043503          	ld	a0,-96(s0)
    80002ac4:	f9843583          	ld	a1,-104(s0)
    80002ac8:	00001097          	auipc	ra,0x1
    80002acc:	970080e7          	jalr	-1680(ra) # 80003438 <_ZN10kSemaphore9timedWaitEm>
    80002ad0:	f2a42623          	sw	a0,-212(s0)
                if (!ret) {
    80002ad4:	f2c42783          	lw	a5,-212(s0)
    80002ad8:	0007879b          	sext.w	a5,a5
    80002adc:	00079e63          	bnez	a5,80002af8 <_ZN5Riscv20handleSupervisorTrapEv+0x43c>
                    if (TCB::running != nullptr) {
    80002ae0:	0000a797          	auipc	a5,0xa
    80002ae4:	0907b783          	ld	a5,144(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002ae8:	0007b783          	ld	a5,0(a5)
    80002aec:	d40786e3          	beqz	a5,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                        TCB::running->retVal = 0;
    80002af0:	0607a423          	sw	zero,104(a5)
    80002af4:	d45ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    if (TCB::running != nullptr) {
    80002af8:	0000a797          	auipc	a5,0xa
    80002afc:	0787b783          	ld	a5,120(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002b00:	0007b703          	ld	a4,0(a5)
    80002b04:	d2070ae3          	beqz	a4,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                        if (ret == -1) {
    80002b08:	f2c42783          	lw	a5,-212(s0)
    80002b0c:	0007879b          	sext.w	a5,a5
    80002b10:	fff00693          	li	a3,-1
    80002b14:	02d78063          	beq	a5,a3,80002b34 <_ZN5Riscv20handleSupervisorTrapEv+0x478>
                        if (ret == -2) {
    80002b18:	f2c42783          	lw	a5,-212(s0)
    80002b1c:	0007879b          	sext.w	a5,a5
    80002b20:	ffe00693          	li	a3,-2
    80002b24:	d0d79ae3          	bne	a5,a3,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                            TCB::running->retVal = -2;
    80002b28:	ffe00793          	li	a5,-2
    80002b2c:	06f72423          	sw	a5,104(a4)
    80002b30:	d09ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                            TCB::running->retVal = -1;
    80002b34:	fff00793          	li	a5,-1
    80002b38:	06f72423          	sw	a5,104(a4)
    80002b3c:	fddff06f          	j	80002b18 <_ZN5Riscv20handleSupervisorTrapEv+0x45c>
                kConsole::kputc((char)p1);
    80002b40:	fa043503          	ld	a0,-96(s0)
    80002b44:	0ff57513          	andi	a0,a0,255
    80002b48:	00001097          	auipc	ra,0x1
    80002b4c:	c4c080e7          	jalr	-948(ra) # 80003794 <_ZN8kConsole5kputcEc>
                if ((char) p1 == '\r') {
    80002b50:	fa043783          	ld	a5,-96(s0)
    80002b54:	0ff7f793          	andi	a5,a5,255
    80002b58:	00d00713          	li	a4,13
    80002b5c:	cce79ee3          	bne	a5,a4,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                    kConsole::kputc('\n');
    80002b60:	00a00513          	li	a0,10
    80002b64:	00001097          	auipc	ra,0x1
    80002b68:	c30080e7          	jalr	-976(ra) # 80003794 <_ZN8kConsole5kputcEc>
    80002b6c:	ccdff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                retchar =(char) kConsole::kgetc();
    80002b70:	00001097          	auipc	ra,0x1
    80002b74:	bf4080e7          	jalr	-1036(ra) # 80003764 <_ZN8kConsole5kgetcEv>
    80002b78:	f2a405a3          	sb	a0,-213(s0)
                TCB::running->getcRetVal = retchar;
    80002b7c:	0000a797          	auipc	a5,0xa
    80002b80:	ff47b783          	ld	a5,-12(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002b84:	0007b783          	ld	a5,0(a5)
    80002b88:	f2b44703          	lbu	a4,-213(s0)
    80002b8c:	06e78623          	sb	a4,108(a5)
                break;
    80002b90:	ca9ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                TCB::timeSliceCounter = 0;
    80002b94:	0000a797          	auipc	a5,0xa
    80002b98:	fbc7b783          	ld	a5,-68(a5) # 8000cb50 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b9c:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002ba0:	fffff097          	auipc	ra,0xfffff
    80002ba4:	1f4080e7          	jalr	500(ra) # 80001d94 <_ZN3TCB8dispatchEv>
                break;
    80002ba8:	c91ff06f          	j	80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
        while ((*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT))
    80002bac:	0000a797          	auipc	a5,0xa
    80002bb0:	f8c7b783          	ld	a5,-116(a5) # 8000cb38 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002bb4:	0007b783          	ld	a5,0(a5)
    80002bb8:	0007c783          	lbu	a5,0(a5)
    80002bbc:	0207f793          	andi	a5,a5,32
    80002bc0:	02078663          	beqz	a5,80002bec <_ZN5Riscv20handleSupervisorTrapEv+0x530>
            if (kConsole::getOutputSize() <= 0) {break;}
    80002bc4:	00001097          	auipc	ra,0x1
    80002bc8:	c98080e7          	jalr	-872(ra) # 8000385c <_ZN8kConsole13getOutputSizeEv>
    80002bcc:	02a05063          	blez	a0,80002bec <_ZN5Riscv20handleSupervisorTrapEv+0x530>
            *((char*) CONSOLE_TX_DATA) = kConsole::putOutputBuffer();
    80002bd0:	0000a797          	auipc	a5,0xa
    80002bd4:	f887b783          	ld	a5,-120(a5) # 8000cb58 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002bd8:	0007b483          	ld	s1,0(a5)
    80002bdc:	00001097          	auipc	ra,0x1
    80002be0:	c20080e7          	jalr	-992(ra) # 800037fc <_ZN8kConsole15putOutputBufferEv>
    80002be4:	00a48023          	sb	a0,0(s1)
        while ((*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT))
    80002be8:	fc5ff06f          	j	80002bac <_ZN5Riscv20handleSupervisorTrapEv+0x4f0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002bec:	00200793          	li	a5,2
    80002bf0:	1447b073          	csrc	sip,a5
        List<TCB>::Elem *element = (TCB::sleeping).head;
    80002bf4:	0000a797          	auipc	a5,0xa
    80002bf8:	f747b783          	ld	a5,-140(a5) # 8000cb68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002bfc:	0007b903          	ld	s2,0(a5)
        List<TCB>::Elem *prev = nullptr;
    80002c00:	00000993          	li	s3,0
    80002c04:	00c0006f          	j	80002c10 <_ZN5Riscv20handleSupervisorTrapEv+0x554>
                prev = element;
    80002c08:	00090993          	mv	s3,s2
    80002c0c:	00048913          	mv	s2,s1
        while (element) {
    80002c10:	0e090663          	beqz	s2,80002cfc <_ZN5Riscv20handleSupervisorTrapEv+0x640>
            (element->data->timeToSleep)--;
    80002c14:	00093703          	ld	a4,0(s2)
    80002c18:	03873783          	ld	a5,56(a4)
    80002c1c:	fff78793          	addi	a5,a5,-1
    80002c20:	02f73c23          	sd	a5,56(a4)
            List<TCB>::Elem *next = element->next;
    80002c24:	00893483          	ld	s1,8(s2)
            if (element->data->timeToSleep == 0) {
    80002c28:	00093783          	ld	a5,0(s2)
    80002c2c:	0387b703          	ld	a4,56(a5)
    80002c30:	fc071ce3          	bnez	a4,80002c08 <_ZN5Riscv20handleSupervisorTrapEv+0x54c>
                element->data->isSleeping = false;
    80002c34:	04078023          	sb	zero,64(a5)
                Scheduler::put(element->data);
    80002c38:	00093503          	ld	a0,0(s2)
    80002c3c:	00001097          	auipc	ra,0x1
    80002c40:	9d8080e7          	jalr	-1576(ra) # 80003614 <_ZN9Scheduler3putEP3TCB>
        return tail->data;
    }

    void deleteElement(Elem *elementToDelete)
    {
        if (!elementToDelete) { return; }
    80002c44:	06090e63          	beqz	s2,80002cc0 <_ZN5Riscv20handleSupervisorTrapEv+0x604>

        if (head == elementToDelete)
    80002c48:	0000a797          	auipc	a5,0xa
    80002c4c:	f207b783          	ld	a5,-224(a5) # 8000cb68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002c50:	0007b783          	ld	a5,0(a5)
    80002c54:	00f90e63          	beq	s2,a5,80002c70 <_ZN5Riscv20handleSupervisorTrapEv+0x5b4>
            if (!head) { tail = nullptr; }
            delete elementToDelete;
            return;
        }

        Elem *prev = nullptr;
    80002c58:	00000713          	li	a4,0
        for (Elem *curr = head; curr; curr = curr->next)
    80002c5c:	06078263          	beqz	a5,80002cc0 <_ZN5Riscv20handleSupervisorTrapEv+0x604>
        {
            if (curr == elementToDelete)
    80002c60:	02f90e63          	beq	s2,a5,80002c9c <_ZN5Riscv20handleSupervisorTrapEv+0x5e0>
                prev->next = curr->next;
                if (curr == tail) { tail = prev; }
                delete elementToDelete;
                return;
            }
            prev = curr;
    80002c64:	00078713          	mv	a4,a5
        for (Elem *curr = head; curr; curr = curr->next)
    80002c68:	0087b783          	ld	a5,8(a5)
    80002c6c:	ff1ff06f          	j	80002c5c <_ZN5Riscv20handleSupervisorTrapEv+0x5a0>
            head = head->next;
    80002c70:	0087b783          	ld	a5,8(a5)
    80002c74:	0000a717          	auipc	a4,0xa
    80002c78:	ef473703          	ld	a4,-268(a4) # 8000cb68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002c7c:	00f73023          	sd	a5,0(a4)
            if (!head) { tail = nullptr; }
    80002c80:	00078a63          	beqz	a5,80002c94 <_ZN5Riscv20handleSupervisorTrapEv+0x5d8>
            Allocator::_mem_free(ptr);
    80002c84:	00090513          	mv	a0,s2
    80002c88:	00000097          	auipc	ra,0x0
    80002c8c:	954080e7          	jalr	-1708(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
            return;
    80002c90:	0300006f          	j	80002cc0 <_ZN5Riscv20handleSupervisorTrapEv+0x604>
            if (!head) { tail = nullptr; }
    80002c94:	00073423          	sd	zero,8(a4)
    80002c98:	fedff06f          	j	80002c84 <_ZN5Riscv20handleSupervisorTrapEv+0x5c8>
                prev->next = curr->next;
    80002c9c:	0087b683          	ld	a3,8(a5)
    80002ca0:	00d73423          	sd	a3,8(a4)
                if (curr == tail) { tail = prev; }
    80002ca4:	0000a697          	auipc	a3,0xa
    80002ca8:	ec46b683          	ld	a3,-316(a3) # 8000cb68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002cac:	0086b683          	ld	a3,8(a3)
    80002cb0:	02d78663          	beq	a5,a3,80002cdc <_ZN5Riscv20handleSupervisorTrapEv+0x620>
            Allocator::_mem_free(ptr);
    80002cb4:	00090513          	mv	a0,s2
    80002cb8:	00000097          	auipc	ra,0x0
    80002cbc:	924080e7          	jalr	-1756(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
                if (prev) {
    80002cc0:	02098663          	beqz	s3,80002cec <_ZN5Riscv20handleSupervisorTrapEv+0x630>
                    prev->next = next;
    80002cc4:	0099b423          	sd	s1,8(s3)
                if (!next) {
    80002cc8:	f40492e3          	bnez	s1,80002c0c <_ZN5Riscv20handleSupervisorTrapEv+0x550>
                    TCB::sleeping.tail = prev;
    80002ccc:	0000a797          	auipc	a5,0xa
    80002cd0:	e9c7b783          	ld	a5,-356(a5) # 8000cb68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002cd4:	0137b423          	sd	s3,8(a5)
    80002cd8:	f35ff06f          	j	80002c0c <_ZN5Riscv20handleSupervisorTrapEv+0x550>
                if (curr == tail) { tail = prev; }
    80002cdc:	0000a797          	auipc	a5,0xa
    80002ce0:	e8c7b783          	ld	a5,-372(a5) # 8000cb68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002ce4:	00e7b423          	sd	a4,8(a5)
    80002ce8:	fcdff06f          	j	80002cb4 <_ZN5Riscv20handleSupervisorTrapEv+0x5f8>
                    TCB::sleeping.head = next;
    80002cec:	0000a797          	auipc	a5,0xa
    80002cf0:	e7c7b783          	ld	a5,-388(a5) # 8000cb68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002cf4:	0097b023          	sd	s1,0(a5)
    80002cf8:	fd1ff06f          	j	80002cc8 <_ZN5Riscv20handleSupervisorTrapEv+0x60c>
        element = (kSemaphore::blockedTimedWait).head;
    80002cfc:	0000a797          	auipc	a5,0xa
    80002d00:	e7c7b783          	ld	a5,-388(a5) # 8000cb78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d04:	0007b483          	ld	s1,0(a5)
        prev = nullptr;
    80002d08:	00090b13          	mv	s6,s2
    80002d0c:	00c0006f          	j	80002d18 <_ZN5Riscv20handleSupervisorTrapEv+0x65c>
                prev = element;
    80002d10:	00048b13          	mv	s6,s1
    80002d14:	000a8493          	mv	s1,s5
        while (element) {
    80002d18:	16048463          	beqz	s1,80002e80 <_ZN5Riscv20handleSupervisorTrapEv+0x7c4>
            (element->data->timeToWaitSem)--;
    80002d1c:	0004b703          	ld	a4,0(s1)
    80002d20:	04873783          	ld	a5,72(a4)
    80002d24:	fff78793          	addi	a5,a5,-1
    80002d28:	04f73423          	sd	a5,72(a4)
            List<TCB>::Elem *next = element->next;
    80002d2c:	0084ba83          	ld	s5,8(s1)
            if (element->data->timeToWaitSem == 0) {
    80002d30:	0004b783          	ld	a5,0(s1)
    80002d34:	0487b703          	ld	a4,72(a5)
    80002d38:	fc071ce3          	bnez	a4,80002d10 <_ZN5Riscv20handleSupervisorTrapEv+0x654>
                element->data->blocked = false;
    80002d3c:	040780a3          	sb	zero,65(a5)
        if (!elementToDelete) { return; }
    80002d40:	08048663          	beqz	s1,80002dcc <_ZN5Riscv20handleSupervisorTrapEv+0x710>
        if (head == elementToDelete)
    80002d44:	0000a797          	auipc	a5,0xa
    80002d48:	e347b783          	ld	a5,-460(a5) # 8000cb78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d4c:	0007b783          	ld	a5,0(a5)
    80002d50:	00f48663          	beq	s1,a5,80002d5c <_ZN5Riscv20handleSupervisorTrapEv+0x6a0>
        Elem *prev = nullptr;
    80002d54:	00090713          	mv	a4,s2
    80002d58:	0480006f          	j	80002da0 <_ZN5Riscv20handleSupervisorTrapEv+0x6e4>
            head = head->next;
    80002d5c:	0087b783          	ld	a5,8(a5)
    80002d60:	0000a717          	auipc	a4,0xa
    80002d64:	e1873703          	ld	a4,-488(a4) # 8000cb78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d68:	00f73023          	sd	a5,0(a4)
            if (!head) { tail = nullptr; }
    80002d6c:	00078a63          	beqz	a5,80002d80 <_ZN5Riscv20handleSupervisorTrapEv+0x6c4>
            Allocator::_mem_free(ptr);
    80002d70:	00048513          	mv	a0,s1
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	868080e7          	jalr	-1944(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
            return;
    80002d7c:	0500006f          	j	80002dcc <_ZN5Riscv20handleSupervisorTrapEv+0x710>
            if (!head) { tail = nullptr; }
    80002d80:	00073423          	sd	zero,8(a4)
    80002d84:	fedff06f          	j	80002d70 <_ZN5Riscv20handleSupervisorTrapEv+0x6b4>
                if (curr == tail) { tail = prev; }
    80002d88:	0000a797          	auipc	a5,0xa
    80002d8c:	df07b783          	ld	a5,-528(a5) # 8000cb78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002d90:	00e7b423          	sd	a4,8(a5)
    80002d94:	02c0006f          	j	80002dc0 <_ZN5Riscv20handleSupervisorTrapEv+0x704>
            prev = curr;
    80002d98:	00078713          	mv	a4,a5
        for (Elem *curr = head; curr; curr = curr->next)
    80002d9c:	0087b783          	ld	a5,8(a5)
    80002da0:	02078663          	beqz	a5,80002dcc <_ZN5Riscv20handleSupervisorTrapEv+0x710>
            if (curr == elementToDelete)
    80002da4:	fef49ae3          	bne	s1,a5,80002d98 <_ZN5Riscv20handleSupervisorTrapEv+0x6dc>
                prev->next = curr->next;
    80002da8:	0087b683          	ld	a3,8(a5)
    80002dac:	00d73423          	sd	a3,8(a4)
                if (curr == tail) { tail = prev; }
    80002db0:	0000a697          	auipc	a3,0xa
    80002db4:	dc86b683          	ld	a3,-568(a3) # 8000cb78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002db8:	0086b683          	ld	a3,8(a3)
    80002dbc:	fcd786e3          	beq	a5,a3,80002d88 <_ZN5Riscv20handleSupervisorTrapEv+0x6cc>
            Allocator::_mem_free(ptr);
    80002dc0:	00048513          	mv	a0,s1
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	818080e7          	jalr	-2024(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
                List<TCB> *headSemList = &(element->data->blockedOnWhichSem->blocked);
    80002dcc:	0004bb83          	ld	s7,0(s1)
    80002dd0:	050bb783          	ld	a5,80(s7)
    80002dd4:	00878c13          	addi	s8,a5,8
        }
    }

    void deleteNodes(T* objectToDelete) {
        Elem* current = head;
    80002dd8:	0087b503          	ld	a0,8(a5)
        Elem* previous = nullptr;
    80002ddc:	00090a13          	mv	s4,s2
    80002de0:	02c0006f          	j	80002e0c <_ZN5Riscv20handleSupervisorTrapEv+0x750>

        while (current != nullptr) {
            if (current->data == objectToDelete) {
                Elem* temp = current;
                if (previous == nullptr) {
    80002de4:	040a0063          	beqz	s4,80002e24 <_ZN5Riscv20handleSupervisorTrapEv+0x768>
                    head = current->next;
                } else {
                    previous->next = current->next;
    80002de8:	00853783          	ld	a5,8(a0)
    80002dec:	00fa3423          	sd	a5,8(s4)
                }
                if (current == tail) {
    80002df0:	008c3783          	ld	a5,8(s8)
    80002df4:	02f50e63          	beq	a0,a5,80002e30 <_ZN5Riscv20handleSupervisorTrapEv+0x774>
                    tail = previous;
                }
                current = current->next;
    80002df8:	00853983          	ld	s3,8(a0)
                delete temp;
    80002dfc:	00050663          	beqz	a0,80002e08 <_ZN5Riscv20handleSupervisorTrapEv+0x74c>
            Allocator::_mem_free(ptr);
    80002e00:	fffff097          	auipc	ra,0xfffff
    80002e04:	7dc080e7          	jalr	2012(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
        Elem* previous = nullptr;
    80002e08:	00098513          	mv	a0,s3
        while (current != nullptr) {
    80002e0c:	02050663          	beqz	a0,80002e38 <_ZN5Riscv20handleSupervisorTrapEv+0x77c>
            if (current->data == objectToDelete) {
    80002e10:	00053783          	ld	a5,0(a0)
    80002e14:	fcfb88e3          	beq	s7,a5,80002de4 <_ZN5Riscv20handleSupervisorTrapEv+0x728>
            } else {
                previous = current;
                current = current->next;
    80002e18:	00853983          	ld	s3,8(a0)
                previous = current;
    80002e1c:	00050a13          	mv	s4,a0
    80002e20:	fe9ff06f          	j	80002e08 <_ZN5Riscv20handleSupervisorTrapEv+0x74c>
                    head = current->next;
    80002e24:	00853783          	ld	a5,8(a0)
    80002e28:	00fc3023          	sd	a5,0(s8)
    80002e2c:	fc5ff06f          	j	80002df0 <_ZN5Riscv20handleSupervisorTrapEv+0x734>
                    tail = previous;
    80002e30:	014c3423          	sd	s4,8(s8)
    80002e34:	fc5ff06f          	j	80002df8 <_ZN5Riscv20handleSupervisorTrapEv+0x73c>
                element->data->blockedOnWhichSem = nullptr;
    80002e38:	0004b783          	ld	a5,0(s1)
    80002e3c:	0407b823          	sd	zero,80(a5)
                element->data->regularlyFinishedWait = false;
    80002e40:	0004b783          	ld	a5,0(s1)
    80002e44:	04078c23          	sb	zero,88(a5)
                Scheduler::put(element->data);
    80002e48:	0004b503          	ld	a0,0(s1)
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	7c8080e7          	jalr	1992(ra) # 80003614 <_ZN9Scheduler3putEP3TCB>
                if (prev) {
    80002e54:	000b0e63          	beqz	s6,80002e70 <_ZN5Riscv20handleSupervisorTrapEv+0x7b4>
                    prev->next = next;
    80002e58:	015b3423          	sd	s5,8(s6)
                if (!next) {
    80002e5c:	ea0a9ce3          	bnez	s5,80002d14 <_ZN5Riscv20handleSupervisorTrapEv+0x658>
                    kSemaphore::blockedTimedWait.tail = prev;
    80002e60:	0000a797          	auipc	a5,0xa
    80002e64:	d187b783          	ld	a5,-744(a5) # 8000cb78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002e68:	0167b423          	sd	s6,8(a5)
    80002e6c:	ea9ff06f          	j	80002d14 <_ZN5Riscv20handleSupervisorTrapEv+0x658>
                    kSemaphore::blockedTimedWait.head = next;
    80002e70:	0000a797          	auipc	a5,0xa
    80002e74:	d087b783          	ld	a5,-760(a5) # 8000cb78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002e78:	0157b023          	sd	s5,0(a5)
    80002e7c:	fe1ff06f          	j	80002e5c <_ZN5Riscv20handleSupervisorTrapEv+0x7a0>
        TCB::timeSliceCounter++;
    80002e80:	0000a717          	auipc	a4,0xa
    80002e84:	cd073703          	ld	a4,-816(a4) # 8000cb50 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e88:	00073783          	ld	a5,0(a4)
    80002e8c:	00178793          	addi	a5,a5,1
    80002e90:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80002e94:	0000a717          	auipc	a4,0xa
    80002e98:	cdc73703          	ld	a4,-804(a4) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002e9c:	00073703          	ld	a4,0(a4)

    uint64 getTimeSlice() const { return timeSlice; }
    80002ea0:	02073703          	ld	a4,32(a4)
    80002ea4:	9ae7e2e3          	bltu	a5,a4,80002848 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002ea8:	141027f3          	csrr	a5,sepc
    80002eac:	f6f43c23          	sd	a5,-136(s0)
    return sepc;
    80002eb0:	f7843783          	ld	a5,-136(s0)
            uint64 volatile sepc = r_sepc();
    80002eb4:	f4f43023          	sd	a5,-192(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002eb8:	100027f3          	csrr	a5,sstatus
    80002ebc:	f6f43823          	sd	a5,-144(s0)
    return sstatus;
    80002ec0:	f7043783          	ld	a5,-144(s0)
            uint64 volatile sstatus = r_sstatus();
    80002ec4:	f4f43423          	sd	a5,-184(s0)
            TCB::timeSliceCounter = 0;
    80002ec8:	0000a797          	auipc	a5,0xa
    80002ecc:	c887b783          	ld	a5,-888(a5) # 8000cb50 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ed0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002ed4:	fffff097          	auipc	ra,0xfffff
    80002ed8:	ec0080e7          	jalr	-320(ra) # 80001d94 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002edc:	f4843783          	ld	a5,-184(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002ee0:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002ee4:	f4043783          	ld	a5,-192(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002ee8:	14179073          	csrw	sepc,a5
}
    80002eec:	95dff06f          	j	80002848 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
        volatile uint64 plic = plic_claim();
    80002ef0:	00005097          	auipc	ra,0x5
    80002ef4:	a54080e7          	jalr	-1452(ra) # 80007944 <plic_claim>
    80002ef8:	f4a43823          	sd	a0,-176(s0)
        if (plic == 0x0a) {
    80002efc:	f5043703          	ld	a4,-176(s0)
    80002f00:	00a00793          	li	a5,10
    80002f04:	94f712e3          	bne	a4,a5,80002848 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            while ((*((char *) CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT)) {
    80002f08:	0000a797          	auipc	a5,0xa
    80002f0c:	c307b783          	ld	a5,-976(a5) # 8000cb38 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f10:	0007b783          	ld	a5,0(a5)
    80002f14:	0007c783          	lbu	a5,0(a5)
    80002f18:	0017f793          	andi	a5,a5,1
    80002f1c:	02078863          	beqz	a5,80002f4c <_ZN5Riscv20handleSupervisorTrapEv+0x890>
                if (kConsole::getInputSize() > 274) {
    80002f20:	00001097          	auipc	ra,0x1
    80002f24:	90c080e7          	jalr	-1780(ra) # 8000382c <_ZN8kConsole12getInputSizeEv>
    80002f28:	11200793          	li	a5,274
    80002f2c:	02a7c063          	blt	a5,a0,80002f4c <_ZN5Riscv20handleSupervisorTrapEv+0x890>
                kConsole::putInputBuffer(*((char *) CONSOLE_RX_DATA));
    80002f30:	0000a797          	auipc	a5,0xa
    80002f34:	c007b783          	ld	a5,-1024(a5) # 8000cb30 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002f38:	0007b783          	ld	a5,0(a5)
    80002f3c:	0007c503          	lbu	a0,0(a5)
    80002f40:	00001097          	auipc	ra,0x1
    80002f44:	888080e7          	jalr	-1912(ra) # 800037c8 <_ZN8kConsole14putInputBufferEc>
            while ((*((char *) CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT)) {
    80002f48:	fc1ff06f          	j	80002f08 <_ZN5Riscv20handleSupervisorTrapEv+0x84c>
            plic_complete(CONSOLE_IRQ);
    80002f4c:	00a00513          	li	a0,10
    80002f50:	00005097          	auipc	ra,0x5
    80002f54:	a2c080e7          	jalr	-1492(ra) # 8000797c <plic_complete>
    80002f58:	8f1ff06f          	j	80002848 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                *((char*) CONSOLE_TX_DATA) = kConsole::putOutputBuffer();
    80002f5c:	0000a797          	auipc	a5,0xa
    80002f60:	bfc7b783          	ld	a5,-1028(a5) # 8000cb58 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f64:	0007b483          	ld	s1,0(a5)
    80002f68:	00001097          	auipc	ra,0x1
    80002f6c:	894080e7          	jalr	-1900(ra) # 800037fc <_ZN8kConsole15putOutputBufferEv>
    80002f70:	00a48023          	sb	a0,0(s1)
            while ((*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT))
    80002f74:	0000a797          	auipc	a5,0xa
    80002f78:	bc47b783          	ld	a5,-1084(a5) # 8000cb38 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f7c:	0007b783          	ld	a5,0(a5)
    80002f80:	0007c783          	lbu	a5,0(a5)
    80002f84:	0207f793          	andi	a5,a5,32
    80002f88:	00078863          	beqz	a5,80002f98 <_ZN5Riscv20handleSupervisorTrapEv+0x8dc>
                if (kConsole::getOutputSize() <= 0) {break;}
    80002f8c:	00001097          	auipc	ra,0x1
    80002f90:	8d0080e7          	jalr	-1840(ra) # 8000385c <_ZN8kConsole13getOutputSizeEv>
    80002f94:	fca044e3          	bgtz	a0,80002f5c <_ZN5Riscv20handleSupervisorTrapEv+0x8a0>
            __asm__ volatile ("li t0, 0x5555");
    80002f98:	000052b7          	lui	t0,0x5
    80002f9c:	5552829b          	addiw	t0,t0,1365
            __asm__ volatile ("li t1, 0x100000");
    80002fa0:	00100337          	lui	t1,0x100
            __asm__ volatile ("sw t0, 0(t1)");
    80002fa4:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>
    80002fa8:	8a1ff06f          	j	80002848 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>

0000000080002fac <_Z41__static_initialization_and_destruction_0ii>:
        }
        return 0;
    }
    val--;
    return 0;
}
    80002fac:	ff010113          	addi	sp,sp,-16
    80002fb0:	00813423          	sd	s0,8(sp)
    80002fb4:	01010413          	addi	s0,sp,16
    80002fb8:	00100793          	li	a5,1
    80002fbc:	00f50863          	beq	a0,a5,80002fcc <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002fc0:	00813403          	ld	s0,8(sp)
    80002fc4:	01010113          	addi	sp,sp,16
    80002fc8:	00008067          	ret
    80002fcc:	000107b7          	lui	a5,0x10
    80002fd0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002fd4:	fef596e3          	bne	a1,a5,80002fc0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    80002fd8:	0000a797          	auipc	a5,0xa
    80002fdc:	c4078793          	addi	a5,a5,-960 # 8000cc18 <_ZN10kSemaphore16blockedTimedWaitE>
    80002fe0:	0007b023          	sd	zero,0(a5)
    80002fe4:	0007b423          	sd	zero,8(a5)
    80002fe8:	fd9ff06f          	j	80002fc0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002fec <_ZN10kSemaphore5blockEv>:
void kSemaphore::block() {    // YILED DISPATCH
    80002fec:	fe010113          	addi	sp,sp,-32
    80002ff0:	00113c23          	sd	ra,24(sp)
    80002ff4:	00813823          	sd	s0,16(sp)
    80002ff8:	00913423          	sd	s1,8(sp)
    80002ffc:	01213023          	sd	s2,0(sp)
    80003000:	02010413          	addi	s0,sp,32
    80003004:	00050493          	mv	s1,a0
    blocked.addLast(TCB::running);
    80003008:	0000a797          	auipc	a5,0xa
    8000300c:	b687b783          	ld	a5,-1176(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003010:	0007b903          	ld	s2,0(a5)
            return Allocator::_malloc(size);
    80003014:	01000513          	li	a0,16
    80003018:	fffff097          	auipc	ra,0xfffff
    8000301c:	4bc080e7          	jalr	1212(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003020:	01253023          	sd	s2,0(a0)
    80003024:	00053423          	sd	zero,8(a0)
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
    80003028:	0104b783          	ld	a5,16(s1)
    8000302c:	04078863          	beqz	a5,8000307c <_ZN10kSemaphore5blockEv+0x90>
        {
            tail->next = elem;
    80003030:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003034:	00a4b823          	sd	a0,16(s1)
    TCB::running->blocked = true;
    80003038:	0000a797          	auipc	a5,0xa
    8000303c:	b387b783          	ld	a5,-1224(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003040:	0007b783          	ld	a5,0(a5)
    80003044:	00100713          	li	a4,1
    80003048:	04e780a3          	sb	a4,65(a5)
    TCB::running->timeSliceCounter = 0;
    8000304c:	0000a717          	auipc	a4,0xa
    80003050:	b0473703          	ld	a4,-1276(a4) # 8000cb50 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003054:	00073023          	sd	zero,0(a4)
    TCB::running->blockedOnWhichSem = this;
    80003058:	0497b823          	sd	s1,80(a5)
    TCB::dispatch();
    8000305c:	fffff097          	auipc	ra,0xfffff
    80003060:	d38080e7          	jalr	-712(ra) # 80001d94 <_ZN3TCB8dispatchEv>
}
    80003064:	01813083          	ld	ra,24(sp)
    80003068:	01013403          	ld	s0,16(sp)
    8000306c:	00813483          	ld	s1,8(sp)
    80003070:	00013903          	ld	s2,0(sp)
    80003074:	02010113          	addi	sp,sp,32
    80003078:	00008067          	ret
        } else
        {
            head = tail = elem;
    8000307c:	00a4b823          	sd	a0,16(s1)
    80003080:	00a4b423          	sd	a0,8(s1)
    80003084:	fb5ff06f          	j	80003038 <_ZN10kSemaphore5blockEv+0x4c>

0000000080003088 <_ZN10kSemaphore4waitEv>:
    if (destroyed) {return -1;};
    80003088:	01854783          	lbu	a5,24(a0)
    8000308c:	04079e63          	bnez	a5,800030e8 <_ZN10kSemaphore4waitEv+0x60>
int kSemaphore::wait() {
    80003090:	fe010113          	addi	sp,sp,-32
    80003094:	00113c23          	sd	ra,24(sp)
    80003098:	00813823          	sd	s0,16(sp)
    8000309c:	00913423          	sd	s1,8(sp)
    800030a0:	02010413          	addi	s0,sp,32
    800030a4:	00050493          	mv	s1,a0
    if (--val < 0) block();
    800030a8:	00052783          	lw	a5,0(a0)
    800030ac:	fff7879b          	addiw	a5,a5,-1
    800030b0:	00f52023          	sw	a5,0(a0)
    800030b4:	02079713          	slli	a4,a5,0x20
    800030b8:	02074263          	bltz	a4,800030dc <_ZN10kSemaphore4waitEv+0x54>
    if (destroyed) {// && (kSemaphore::blocked).head != nullptr
    800030bc:	0184c783          	lbu	a5,24(s1)
    800030c0:	02079863          	bnez	a5,800030f0 <_ZN10kSemaphore4waitEv+0x68>
    return 0;
    800030c4:	00000513          	li	a0,0
}
    800030c8:	01813083          	ld	ra,24(sp)
    800030cc:	01013403          	ld	s0,16(sp)
    800030d0:	00813483          	ld	s1,8(sp)
    800030d4:	02010113          	addi	sp,sp,32
    800030d8:	00008067          	ret
    if (--val < 0) block();
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	f10080e7          	jalr	-240(ra) # 80002fec <_ZN10kSemaphore5blockEv>
    800030e4:	fd9ff06f          	j	800030bc <_ZN10kSemaphore4waitEv+0x34>
    if (destroyed) {return -1;};
    800030e8:	fff00513          	li	a0,-1
}
    800030ec:	00008067          	ret
        return -1;
    800030f0:	fff00513          	li	a0,-1
    800030f4:	fd5ff06f          	j	800030c8 <_ZN10kSemaphore4waitEv+0x40>

00000000800030f8 <_ZN10kSemaphore7unblockEv>:
void kSemaphore::unblock() {
    800030f8:	fd010113          	addi	sp,sp,-48
    800030fc:	02113423          	sd	ra,40(sp)
    80003100:	02813023          	sd	s0,32(sp)
    80003104:	00913c23          	sd	s1,24(sp)
    80003108:	01213823          	sd	s2,16(sp)
    8000310c:	01313423          	sd	s3,8(sp)
    80003110:	03010413          	addi	s0,sp,48
    80003114:	00050793          	mv	a5,a0
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80003118:	00853483          	ld	s1,8(a0)
    8000311c:	00048463          	beqz	s1,80003124 <_ZN10kSemaphore7unblockEv+0x2c>
        return head->data;
    80003120:	0004b483          	ld	s1,0(s1)
    novi->blocked = false;
    80003124:	040480a3          	sb	zero,65(s1)
    novi->blockedOnWhichSem = nullptr;
    80003128:	0404b823          	sd	zero,80(s1)
    TCB::running->timeSliceCounter = 0;
    8000312c:	0000a717          	auipc	a4,0xa
    80003130:	a2473703          	ld	a4,-1500(a4) # 8000cb50 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003134:	00073023          	sd	zero,0(a4)
    novi->regularlyFinishedWait = true;
    80003138:	00100713          	li	a4,1
    8000313c:	04e48c23          	sb	a4,88(s1)
        if (!head) { return 0; }
    80003140:	0087b503          	ld	a0,8(a5)
    80003144:	00050c63          	beqz	a0,8000315c <_ZN10kSemaphore7unblockEv+0x64>
        head = head->next;
    80003148:	00853703          	ld	a4,8(a0)
    8000314c:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80003150:	00070e63          	beqz	a4,8000316c <_ZN10kSemaphore7unblockEv+0x74>
            Allocator::_mem_free(ptr);
    80003154:	fffff097          	auipc	ra,0xfffff
    80003158:	488080e7          	jalr	1160(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
            prev = curr;
        }
    }

    void deleteNodes(T* objectToDelete) {
        Elem* current = head;
    8000315c:	0000a517          	auipc	a0,0xa
    80003160:	abc53503          	ld	a0,-1348(a0) # 8000cc18 <_ZN10kSemaphore16blockedTimedWaitE>
        Elem* previous = nullptr;
    80003164:	00000913          	li	s2,0
    80003168:	0380006f          	j	800031a0 <_ZN10kSemaphore7unblockEv+0xa8>
        if (!head) { tail = 0; }
    8000316c:	0007b823          	sd	zero,16(a5)
    80003170:	fe5ff06f          	j	80003154 <_ZN10kSemaphore7unblockEv+0x5c>

        while (current != nullptr) {
            if (current->data == objectToDelete) {
                Elem* temp = current;
                if (previous == nullptr) {
    80003174:	04090263          	beqz	s2,800031b8 <_ZN10kSemaphore7unblockEv+0xc0>
                    head = current->next;
                } else {
                    previous->next = current->next;
    80003178:	00853783          	ld	a5,8(a0)
    8000317c:	00f93423          	sd	a5,8(s2)
                }
                if (current == tail) {
    80003180:	0000a797          	auipc	a5,0xa
    80003184:	aa07b783          	ld	a5,-1376(a5) # 8000cc20 <_ZN10kSemaphore16blockedTimedWaitE+0x8>
    80003188:	04f50063          	beq	a0,a5,800031c8 <_ZN10kSemaphore7unblockEv+0xd0>
                    tail = previous;
                }
                current = current->next;
    8000318c:	00853983          	ld	s3,8(a0)
                delete temp;
    80003190:	00050663          	beqz	a0,8000319c <_ZN10kSemaphore7unblockEv+0xa4>
            Allocator::_mem_free(ptr);
    80003194:	fffff097          	auipc	ra,0xfffff
    80003198:	448080e7          	jalr	1096(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
        Elem* previous = nullptr;
    8000319c:	00098513          	mv	a0,s3
        while (current != nullptr) {
    800031a0:	02050a63          	beqz	a0,800031d4 <_ZN10kSemaphore7unblockEv+0xdc>
            if (current->data == objectToDelete) {
    800031a4:	00053783          	ld	a5,0(a0)
    800031a8:	fcf486e3          	beq	s1,a5,80003174 <_ZN10kSemaphore7unblockEv+0x7c>
            } else {
                previous = current;
                current = current->next;
    800031ac:	00853983          	ld	s3,8(a0)
                previous = current;
    800031b0:	00050913          	mv	s2,a0
    800031b4:	fe9ff06f          	j	8000319c <_ZN10kSemaphore7unblockEv+0xa4>
                    head = current->next;
    800031b8:	00853783          	ld	a5,8(a0)
    800031bc:	0000a717          	auipc	a4,0xa
    800031c0:	a4f73e23          	sd	a5,-1444(a4) # 8000cc18 <_ZN10kSemaphore16blockedTimedWaitE>
    800031c4:	fbdff06f          	j	80003180 <_ZN10kSemaphore7unblockEv+0x88>
                    tail = previous;
    800031c8:	0000a797          	auipc	a5,0xa
    800031cc:	a527bc23          	sd	s2,-1448(a5) # 8000cc20 <_ZN10kSemaphore16blockedTimedWaitE+0x8>
    800031d0:	fbdff06f          	j	8000318c <_ZN10kSemaphore7unblockEv+0x94>
    Scheduler::put(novi); // dal treba da poziva dispatch il sta?
    800031d4:	00048513          	mv	a0,s1
    800031d8:	00000097          	auipc	ra,0x0
    800031dc:	43c080e7          	jalr	1084(ra) # 80003614 <_ZN9Scheduler3putEP3TCB>
}
    800031e0:	02813083          	ld	ra,40(sp)
    800031e4:	02013403          	ld	s0,32(sp)
    800031e8:	01813483          	ld	s1,24(sp)
    800031ec:	01013903          	ld	s2,16(sp)
    800031f0:	00813983          	ld	s3,8(sp)
    800031f4:	03010113          	addi	sp,sp,48
    800031f8:	00008067          	ret

00000000800031fc <_ZN10kSemaphore6signalEv>:
    if (destroyed) {return -1;}
    800031fc:	01854783          	lbu	a5,24(a0)
    80003200:	04079663          	bnez	a5,8000324c <_ZN10kSemaphore6signalEv+0x50>
    if (++val <= 0) unblock();
    80003204:	00052783          	lw	a5,0(a0)
    80003208:	0017879b          	addiw	a5,a5,1
    8000320c:	0007871b          	sext.w	a4,a5
    80003210:	00f52023          	sw	a5,0(a0)
    80003214:	00e05663          	blez	a4,80003220 <_ZN10kSemaphore6signalEv+0x24>
    return 0;
    80003218:	00000513          	li	a0,0
}
    8000321c:	00008067          	ret
int kSemaphore::signal() {
    80003220:	ff010113          	addi	sp,sp,-16
    80003224:	00113423          	sd	ra,8(sp)
    80003228:	00813023          	sd	s0,0(sp)
    8000322c:	01010413          	addi	s0,sp,16
    if (++val <= 0) unblock();
    80003230:	00000097          	auipc	ra,0x0
    80003234:	ec8080e7          	jalr	-312(ra) # 800030f8 <_ZN10kSemaphore7unblockEv>
    return 0;
    80003238:	00000513          	li	a0,0
}
    8000323c:	00813083          	ld	ra,8(sp)
    80003240:	00013403          	ld	s0,0(sp)
    80003244:	01010113          	addi	sp,sp,16
    80003248:	00008067          	ret
    if (destroyed) {return -1;}
    8000324c:	fff00513          	li	a0,-1
    80003250:	00008067          	ret

0000000080003254 <_ZN10kSemaphore7openSemEPPS_j>:
    if (handle == nullptr) return -1;
    80003254:	06050263          	beqz	a0,800032b8 <_ZN10kSemaphore7openSemEPPS_j+0x64>
int kSemaphore::openSem(sem_t *handle, unsigned int init) {
    80003258:	fe010113          	addi	sp,sp,-32
    8000325c:	00113c23          	sd	ra,24(sp)
    80003260:	00813823          	sd	s0,16(sp)
    80003264:	00913423          	sd	s1,8(sp)
    80003268:	01213023          	sd	s2,0(sp)
    8000326c:	02010413          	addi	s0,sp,32
    80003270:	00050493          	mv	s1,a0
    80003274:	00058913          	mv	s2,a1
    friend class Riscv;

    static List<TCB> blockedTimedWait;

    void* operator new(size_t size) {
        return Allocator::_malloc(size);
    80003278:	02000513          	li	a0,32
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	258080e7          	jalr	600(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
    kSemaphore(uint64 init = 1): val(init) {}
    80003284:	01252023          	sw	s2,0(a0)
    List() : head(0), tail(0) {}
    80003288:	00053423          	sd	zero,8(a0)
    8000328c:	00053823          	sd	zero,16(a0)
    80003290:	00050c23          	sb	zero,24(a0)
    *handle = new kSemaphore(init);
    80003294:	00a4b023          	sd	a0,0(s1)
    if (*handle == nullptr) {
    80003298:	02050463          	beqz	a0,800032c0 <_ZN10kSemaphore7openSemEPPS_j+0x6c>
    return 0;
    8000329c:	00000513          	li	a0,0
}
    800032a0:	01813083          	ld	ra,24(sp)
    800032a4:	01013403          	ld	s0,16(sp)
    800032a8:	00813483          	ld	s1,8(sp)
    800032ac:	00013903          	ld	s2,0(sp)
    800032b0:	02010113          	addi	sp,sp,32
    800032b4:	00008067          	ret
    if (handle == nullptr) return -1;
    800032b8:	fff00513          	li	a0,-1
}
    800032bc:	00008067          	ret
        return -1;
    800032c0:	fff00513          	li	a0,-1
    800032c4:	fddff06f          	j	800032a0 <_ZN10kSemaphore7openSemEPPS_j+0x4c>

00000000800032c8 <_ZN10kSemaphore8closeSemEv>:
    if (destroyed) return -1;
    800032c8:	01854783          	lbu	a5,24(a0)
    800032cc:	0e079a63          	bnez	a5,800033c0 <_ZN10kSemaphore8closeSemEv+0xf8>
int kSemaphore::closeSem() {
    800032d0:	fd010113          	addi	sp,sp,-48
    800032d4:	02113423          	sd	ra,40(sp)
    800032d8:	02813023          	sd	s0,32(sp)
    800032dc:	00913c23          	sd	s1,24(sp)
    800032e0:	01213823          	sd	s2,16(sp)
    800032e4:	01313423          	sd	s3,8(sp)
    800032e8:	01413023          	sd	s4,0(sp)
    800032ec:	03010413          	addi	s0,sp,48
    destroyed = true;
    800032f0:	00100793          	li	a5,1
    800032f4:	00f50c23          	sb	a5,24(a0)
    List<TCB>::Elem *elem = (kSemaphore::blocked).head;
    800032f8:	00853483          	ld	s1,8(a0)
    List<TCB>::Elem *prev=nullptr;
    800032fc:	0980006f          	j	80003394 <_ZN10kSemaphore8closeSemEv+0xcc>
                if (previous == nullptr) {
    80003300:	04090263          	beqz	s2,80003344 <_ZN10kSemaphore8closeSemEv+0x7c>
                    previous->next = current->next;
    80003304:	00853783          	ld	a5,8(a0)
    80003308:	00f93423          	sd	a5,8(s2)
                if (current == tail) {
    8000330c:	0000a797          	auipc	a5,0xa
    80003310:	9147b783          	ld	a5,-1772(a5) # 8000cc20 <_ZN10kSemaphore16blockedTimedWaitE+0x8>
    80003314:	04f50063          	beq	a0,a5,80003354 <_ZN10kSemaphore8closeSemEv+0x8c>
                current = current->next;
    80003318:	00853983          	ld	s3,8(a0)
                delete temp;
    8000331c:	00050663          	beqz	a0,80003328 <_ZN10kSemaphore8closeSemEv+0x60>
            Allocator::_mem_free(ptr);
    80003320:	fffff097          	auipc	ra,0xfffff
    80003324:	2bc080e7          	jalr	700(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
        Elem* previous = nullptr;
    80003328:	00098513          	mv	a0,s3
        while (current != nullptr) {
    8000332c:	02050a63          	beqz	a0,80003360 <_ZN10kSemaphore8closeSemEv+0x98>
            if (current->data == objectToDelete) {
    80003330:	00053783          	ld	a5,0(a0)
    80003334:	fcfa06e3          	beq	s4,a5,80003300 <_ZN10kSemaphore8closeSemEv+0x38>
                current = current->next;
    80003338:	00853983          	ld	s3,8(a0)
                previous = current;
    8000333c:	00050913          	mv	s2,a0
    80003340:	fe9ff06f          	j	80003328 <_ZN10kSemaphore8closeSemEv+0x60>
                    head = current->next;
    80003344:	00853783          	ld	a5,8(a0)
    80003348:	0000a717          	auipc	a4,0xa
    8000334c:	8cf73823          	sd	a5,-1840(a4) # 8000cc18 <_ZN10kSemaphore16blockedTimedWaitE>
    80003350:	fbdff06f          	j	8000330c <_ZN10kSemaphore8closeSemEv+0x44>
                    tail = previous;
    80003354:	0000a797          	auipc	a5,0xa
    80003358:	8d27b623          	sd	s2,-1844(a5) # 8000cc20 <_ZN10kSemaphore16blockedTimedWaitE+0x8>
    8000335c:	fbdff06f          	j	80003318 <_ZN10kSemaphore8closeSemEv+0x50>
        elem->data->blockedOnWhichSem = nullptr;
    80003360:	0004b783          	ld	a5,0(s1)
    80003364:	0407b823          	sd	zero,80(a5)
        elem->data->regularlyFinishedWait = false;
    80003368:	0004b783          	ld	a5,0(s1)
    8000336c:	04078c23          	sb	zero,88(a5)
        Scheduler::put(elem->data);
    80003370:	0004b503          	ld	a0,0(s1)
    80003374:	00000097          	auipc	ra,0x0
    80003378:	2a0080e7          	jalr	672(ra) # 80003614 <_ZN9Scheduler3putEP3TCB>
        elem = elem->next;
    8000337c:	0084b903          	ld	s2,8(s1)
        delete prev; // bz delete !!!!!!!
    80003380:	00048863          	beqz	s1,80003390 <_ZN10kSemaphore8closeSemEv+0xc8>
            Allocator::_mem_free(ptr);
    80003384:	00048513          	mv	a0,s1
    80003388:	fffff097          	auipc	ra,0xfffff
    8000338c:	254080e7          	jalr	596(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
int kSemaphore::closeSem() {
    80003390:	00090493          	mv	s1,s2
    while (elem) {
    80003394:	02048a63          	beqz	s1,800033c8 <_ZN10kSemaphore8closeSemEv+0x100>
        elem->data->blocked = false;
    80003398:	0004b783          	ld	a5,0(s1)
    8000339c:	040780a3          	sb	zero,65(a5)
        elem->data->timeSliceCounter = 0;
    800033a0:	00009797          	auipc	a5,0x9
    800033a4:	7b07b783          	ld	a5,1968(a5) # 8000cb50 <_GLOBAL_OFFSET_TABLE_+0x28>
    800033a8:	0007b023          	sd	zero,0(a5)
        blockedTimedWait.deleteNodes(elem->data);
    800033ac:	0004ba03          	ld	s4,0(s1)
        Elem* current = head;
    800033b0:	0000a517          	auipc	a0,0xa
    800033b4:	86853503          	ld	a0,-1944(a0) # 8000cc18 <_ZN10kSemaphore16blockedTimedWaitE>
        Elem* previous = nullptr;
    800033b8:	00000913          	li	s2,0
    800033bc:	f71ff06f          	j	8000332c <_ZN10kSemaphore8closeSemEv+0x64>
    if (destroyed) return -1;
    800033c0:	fff00513          	li	a0,-1
}
    800033c4:	00008067          	ret
    return 0;
    800033c8:	00000513          	li	a0,0
}
    800033cc:	02813083          	ld	ra,40(sp)
    800033d0:	02013403          	ld	s0,32(sp)
    800033d4:	01813483          	ld	s1,24(sp)
    800033d8:	01013903          	ld	s2,16(sp)
    800033dc:	00813983          	ld	s3,8(sp)
    800033e0:	00013a03          	ld	s4,0(sp)
    800033e4:	03010113          	addi	sp,sp,48
    800033e8:	00008067          	ret

00000000800033ec <_ZN10kSemaphore7tryWaitEv>:
int kSemaphore::tryWait() {
    800033ec:	ff010113          	addi	sp,sp,-16
    800033f0:	00813423          	sd	s0,8(sp)
    800033f4:	01010413          	addi	s0,sp,16
    if (destroyed) return -1;
    800033f8:	01854783          	lbu	a5,24(a0)
    800033fc:	02079a63          	bnez	a5,80003430 <_ZN10kSemaphore7tryWaitEv+0x44>
    if (val > 0) {
    80003400:	00052783          	lw	a5,0(a0)
    80003404:	00f05663          	blez	a5,80003410 <_ZN10kSemaphore7tryWaitEv+0x24>
        --val;
    80003408:	fff7879b          	addiw	a5,a5,-1
    8000340c:	00f52023          	sw	a5,0(a0)
    if (val <= 0) return 0;
    80003410:	00052783          	lw	a5,0(a0)
    80003414:	00f05a63          	blez	a5,80003428 <_ZN10kSemaphore7tryWaitEv+0x3c>
    if (val > 0) return 1;
    80003418:	00100513          	li	a0,1
}
    8000341c:	00813403          	ld	s0,8(sp)
    80003420:	01010113          	addi	sp,sp,16
    80003424:	00008067          	ret
    if (val <= 0) return 0;
    80003428:	00000513          	li	a0,0
    8000342c:	ff1ff06f          	j	8000341c <_ZN10kSemaphore7tryWaitEv+0x30>
    if (destroyed) return -1;
    80003430:	fff00513          	li	a0,-1
    80003434:	fe9ff06f          	j	8000341c <_ZN10kSemaphore7tryWaitEv+0x30>

0000000080003438 <_ZN10kSemaphore9timedWaitEm>:
    if (destroyed) {return -1;};
    80003438:	01854783          	lbu	a5,24(a0)
    8000343c:	0e079663          	bnez	a5,80003528 <_ZN10kSemaphore9timedWaitEm+0xf0>
int kSemaphore::timedWait(time_t time) {
    80003440:	fd010113          	addi	sp,sp,-48
    80003444:	02113423          	sd	ra,40(sp)
    80003448:	02813023          	sd	s0,32(sp)
    8000344c:	00913c23          	sd	s1,24(sp)
    80003450:	01213823          	sd	s2,16(sp)
    80003454:	01313423          	sd	s3,8(sp)
    80003458:	03010413          	addi	s0,sp,48
    8000345c:	00050493          	mv	s1,a0
    80003460:	00058913          	mv	s2,a1
    if (val <= 0) {
    80003464:	00052783          	lw	a5,0(a0)
    80003468:	02f05663          	blez	a5,80003494 <_ZN10kSemaphore9timedWaitEm+0x5c>
    val--;
    8000346c:	fff7879b          	addiw	a5,a5,-1
    80003470:	00f52023          	sw	a5,0(a0)
    return 0;
    80003474:	00000513          	li	a0,0
}
    80003478:	02813083          	ld	ra,40(sp)
    8000347c:	02013403          	ld	s0,32(sp)
    80003480:	01813483          	ld	s1,24(sp)
    80003484:	01013903          	ld	s2,16(sp)
    80003488:	00813983          	ld	s3,8(sp)
    8000348c:	03010113          	addi	sp,sp,48
    80003490:	00008067          	ret
        blockedTimedWait.addLast(TCB::running);
    80003494:	00009797          	auipc	a5,0x9
    80003498:	6dc7b783          	ld	a5,1756(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000349c:	0007b983          	ld	s3,0(a5)
            return Allocator::_malloc(size);
    800034a0:	01000513          	li	a0,16
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	030080e7          	jalr	48(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800034ac:	01353023          	sd	s3,0(a0)
    800034b0:	00053423          	sd	zero,8(a0)
        if (tail)
    800034b4:	00009797          	auipc	a5,0x9
    800034b8:	76c7b783          	ld	a5,1900(a5) # 8000cc20 <_ZN10kSemaphore16blockedTimedWaitE+0x8>
    800034bc:	04078863          	beqz	a5,8000350c <_ZN10kSemaphore9timedWaitEm+0xd4>
            tail->next = elem;
    800034c0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800034c4:	00009797          	auipc	a5,0x9
    800034c8:	74a7be23          	sd	a0,1884(a5) # 8000cc20 <_ZN10kSemaphore16blockedTimedWaitE+0x8>
        TCB::running->timeToWaitSem = time;
    800034cc:	00009797          	auipc	a5,0x9
    800034d0:	6a47b783          	ld	a5,1700(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800034d4:	0007b783          	ld	a5,0(a5)
    800034d8:	0527b423          	sd	s2,72(a5)
        block();
    800034dc:	00048513          	mv	a0,s1
    800034e0:	00000097          	auipc	ra,0x0
    800034e4:	b0c080e7          	jalr	-1268(ra) # 80002fec <_ZN10kSemaphore5blockEv>
        if (destroyed) {
    800034e8:	0184c783          	lbu	a5,24(s1)
    800034ec:	04079263          	bnez	a5,80003530 <_ZN10kSemaphore9timedWaitEm+0xf8>
        if (!(TCB::running->regularlyFinishedWait)) {
    800034f0:	00009797          	auipc	a5,0x9
    800034f4:	6807b783          	ld	a5,1664(a5) # 8000cb70 <_GLOBAL_OFFSET_TABLE_+0x48>
    800034f8:	0007b783          	ld	a5,0(a5)
    800034fc:	0587c783          	lbu	a5,88(a5)
    80003500:	02078063          	beqz	a5,80003520 <_ZN10kSemaphore9timedWaitEm+0xe8>
        return 0;
    80003504:	00000513          	li	a0,0
    80003508:	f71ff06f          	j	80003478 <_ZN10kSemaphore9timedWaitEm+0x40>
            head = tail = elem;
    8000350c:	00009797          	auipc	a5,0x9
    80003510:	70c78793          	addi	a5,a5,1804 # 8000cc18 <_ZN10kSemaphore16blockedTimedWaitE>
    80003514:	00a7b423          	sd	a0,8(a5)
    80003518:	00a7b023          	sd	a0,0(a5)
    8000351c:	fb1ff06f          	j	800034cc <_ZN10kSemaphore9timedWaitEm+0x94>
            return -2;
    80003520:	ffe00513          	li	a0,-2
    80003524:	f55ff06f          	j	80003478 <_ZN10kSemaphore9timedWaitEm+0x40>
    if (destroyed) {return -1;};
    80003528:	fff00513          	li	a0,-1
}
    8000352c:	00008067          	ret
            return -1;
    80003530:	fff00513          	li	a0,-1
    80003534:	f45ff06f          	j	80003478 <_ZN10kSemaphore9timedWaitEm+0x40>

0000000080003538 <_GLOBAL__sub_I__ZN10kSemaphore16blockedTimedWaitE>:
}
    80003538:	ff010113          	addi	sp,sp,-16
    8000353c:	00113423          	sd	ra,8(sp)
    80003540:	00813023          	sd	s0,0(sp)
    80003544:	01010413          	addi	s0,sp,16
    80003548:	000105b7          	lui	a1,0x10
    8000354c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003550:	00100513          	li	a0,1
    80003554:	00000097          	auipc	ra,0x0
    80003558:	a58080e7          	jalr	-1448(ra) # 80002fac <_Z41__static_initialization_and_destruction_0ii>
    8000355c:	00813083          	ld	ra,8(sp)
    80003560:	00013403          	ld	s0,0(sp)
    80003564:	01010113          	addi	sp,sp,16
    80003568:	00008067          	ret

000000008000356c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    8000356c:	ff010113          	addi	sp,sp,-16
    80003570:	00813423          	sd	s0,8(sp)
    80003574:	01010413          	addi	s0,sp,16
    80003578:	00100793          	li	a5,1
    8000357c:	00f50863          	beq	a0,a5,8000358c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003580:	00813403          	ld	s0,8(sp)
    80003584:	01010113          	addi	sp,sp,16
    80003588:	00008067          	ret
    8000358c:	000107b7          	lui	a5,0x10
    80003590:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003594:	fef596e3          	bne	a1,a5,80003580 <_Z41__static_initialization_and_destruction_0ii+0x14>
public:
    friend class TCB;
    friend class Riscv;
    friend class kSemaphore;

    List() : head(0), tail(0) {}
    80003598:	00009797          	auipc	a5,0x9
    8000359c:	69078793          	addi	a5,a5,1680 # 8000cc28 <_ZN9Scheduler16readyThreadQueueE>
    800035a0:	0007b023          	sd	zero,0(a5)
    800035a4:	0007b423          	sd	zero,8(a5)
    800035a8:	fd9ff06f          	j	80003580 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800035ac <_ZN9Scheduler3getEv>:
{
    800035ac:	fe010113          	addi	sp,sp,-32
    800035b0:	00113c23          	sd	ra,24(sp)
    800035b4:	00813823          	sd	s0,16(sp)
    800035b8:	00913423          	sd	s1,8(sp)
    800035bc:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800035c0:	00009517          	auipc	a0,0x9
    800035c4:	66853503          	ld	a0,1640(a0) # 8000cc28 <_ZN9Scheduler16readyThreadQueueE>
    800035c8:	04050263          	beqz	a0,8000360c <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800035cc:	00853783          	ld	a5,8(a0)
    800035d0:	00009717          	auipc	a4,0x9
    800035d4:	64f73c23          	sd	a5,1624(a4) # 8000cc28 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800035d8:	02078463          	beqz	a5,80003600 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800035dc:	00053483          	ld	s1,0(a0)
            Allocator::_mem_free(ptr);
    800035e0:	fffff097          	auipc	ra,0xfffff
    800035e4:	ffc080e7          	jalr	-4(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
}
    800035e8:	00048513          	mv	a0,s1
    800035ec:	01813083          	ld	ra,24(sp)
    800035f0:	01013403          	ld	s0,16(sp)
    800035f4:	00813483          	ld	s1,8(sp)
    800035f8:	02010113          	addi	sp,sp,32
    800035fc:	00008067          	ret
        if (!head) { tail = 0; }
    80003600:	00009797          	auipc	a5,0x9
    80003604:	6207b823          	sd	zero,1584(a5) # 8000cc30 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003608:	fd5ff06f          	j	800035dc <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000360c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80003610:	fd9ff06f          	j	800035e8 <_ZN9Scheduler3getEv+0x3c>

0000000080003614 <_ZN9Scheduler3putEP3TCB>:
{
    80003614:	fe010113          	addi	sp,sp,-32
    80003618:	00113c23          	sd	ra,24(sp)
    8000361c:	00813823          	sd	s0,16(sp)
    80003620:	00913423          	sd	s1,8(sp)
    80003624:	02010413          	addi	s0,sp,32
    80003628:	00050493          	mv	s1,a0
            return Allocator::_malloc(size);
    8000362c:	01000513          	li	a0,16
    80003630:	fffff097          	auipc	ra,0xfffff
    80003634:	ea4080e7          	jalr	-348(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003638:	00953023          	sd	s1,0(a0)
    8000363c:	00053423          	sd	zero,8(a0)
        if (tail)
    80003640:	00009797          	auipc	a5,0x9
    80003644:	5f07b783          	ld	a5,1520(a5) # 8000cc30 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003648:	02078263          	beqz	a5,8000366c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    8000364c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003650:	00009797          	auipc	a5,0x9
    80003654:	5ea7b023          	sd	a0,1504(a5) # 8000cc30 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003658:	01813083          	ld	ra,24(sp)
    8000365c:	01013403          	ld	s0,16(sp)
    80003660:	00813483          	ld	s1,8(sp)
    80003664:	02010113          	addi	sp,sp,32
    80003668:	00008067          	ret
            head = tail = elem;
    8000366c:	00009797          	auipc	a5,0x9
    80003670:	5bc78793          	addi	a5,a5,1468 # 8000cc28 <_ZN9Scheduler16readyThreadQueueE>
    80003674:	00a7b423          	sd	a0,8(a5)
    80003678:	00a7b023          	sd	a0,0(a5)
    8000367c:	fddff06f          	j	80003658 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080003680 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80003680:	ff010113          	addi	sp,sp,-16
    80003684:	00113423          	sd	ra,8(sp)
    80003688:	00813023          	sd	s0,0(sp)
    8000368c:	01010413          	addi	s0,sp,16
    80003690:	000105b7          	lui	a1,0x10
    80003694:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003698:	00100513          	li	a0,1
    8000369c:	00000097          	auipc	ra,0x0
    800036a0:	ed0080e7          	jalr	-304(ra) # 8000356c <_Z41__static_initialization_and_destruction_0ii>
    800036a4:	00813083          	ld	ra,8(sp)
    800036a8:	00013403          	ld	s0,0(sp)
    800036ac:	01010113          	addi	sp,sp,16
    800036b0:	00008067          	ret

00000000800036b4 <_ZN8kConsole4initEv>:
#include "../h/kConsole.hpp"

kBuffer* kConsole::inputBuffer = nullptr;
kBuffer* kConsole::outputBuffer = nullptr;

void kConsole::init() {
    800036b4:	fe010113          	addi	sp,sp,-32
    800036b8:	00113c23          	sd	ra,24(sp)
    800036bc:	00813823          	sd	s0,16(sp)
    800036c0:	00913423          	sd	s1,8(sp)
    800036c4:	01213023          	sd	s2,0(sp)
    800036c8:	02010413          	addi	s0,sp,32
    sem_t mutexTail;

public:

    void* operator new(size_t size) {
        return Allocator::_malloc(size);
    800036cc:	03800513          	li	a0,56
    800036d0:	fffff097          	auipc	ra,0xfffff
    800036d4:	e04080e7          	jalr	-508(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
    800036d8:	00050493          	mv	s1,a0
    inputBuffer = new kBuffer(275);
    800036dc:	11300593          	li	a1,275
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	b64080e7          	jalr	-1180(ra) # 80001244 <_ZN7kBufferC1Ei>
    800036e8:	00009797          	auipc	a5,0x9
    800036ec:	5497b823          	sd	s1,1360(a5) # 8000cc38 <_ZN8kConsole11inputBufferE>
    800036f0:	03800513          	li	a0,56
    800036f4:	fffff097          	auipc	ra,0xfffff
    800036f8:	de0080e7          	jalr	-544(ra) # 800024d4 <_ZN9Allocator7_mallocEm>
    800036fc:	00050493          	mv	s1,a0
    outputBuffer = new kBuffer(275);
    80003700:	11300593          	li	a1,275
    80003704:	ffffe097          	auipc	ra,0xffffe
    80003708:	b40080e7          	jalr	-1216(ra) # 80001244 <_ZN7kBufferC1Ei>
    8000370c:	00009797          	auipc	a5,0x9
    80003710:	5297ba23          	sd	s1,1332(a5) # 8000cc40 <_ZN8kConsole12outputBufferE>
}
    80003714:	01813083          	ld	ra,24(sp)
    80003718:	01013403          	ld	s0,16(sp)
    8000371c:	00813483          	ld	s1,8(sp)
    80003720:	00013903          	ld	s2,0(sp)
    80003724:	02010113          	addi	sp,sp,32
    80003728:	00008067          	ret
    8000372c:	00050913          	mv	s2,a0
    }

    void operator delete(void* ptr) {
        Allocator::_mem_free(ptr);
    80003730:	00048513          	mv	a0,s1
    80003734:	fffff097          	auipc	ra,0xfffff
    80003738:	ea8080e7          	jalr	-344(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
    8000373c:	00090513          	mv	a0,s2
    80003740:	0000a097          	auipc	ra,0xa
    80003744:	628080e7          	jalr	1576(ra) # 8000dd68 <_Unwind_Resume>
    80003748:	00050913          	mv	s2,a0
    8000374c:	00048513          	mv	a0,s1
    80003750:	fffff097          	auipc	ra,0xfffff
    80003754:	e8c080e7          	jalr	-372(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
    80003758:	00090513          	mv	a0,s2
    8000375c:	0000a097          	auipc	ra,0xa
    80003760:	60c080e7          	jalr	1548(ra) # 8000dd68 <_Unwind_Resume>

0000000080003764 <_ZN8kConsole5kgetcEv>:

char kConsole::kgetc() {
    80003764:	ff010113          	addi	sp,sp,-16
    80003768:	00113423          	sd	ra,8(sp)
    8000376c:	00813023          	sd	s0,0(sp)
    80003770:	01010413          	addi	s0,sp,16
    return inputBuffer->get();
    80003774:	00009517          	auipc	a0,0x9
    80003778:	4c453503          	ld	a0,1220(a0) # 8000cc38 <_ZN8kConsole11inputBufferE>
    8000377c:	ffffe097          	auipc	ra,0xffffe
    80003780:	c9c080e7          	jalr	-868(ra) # 80001418 <_ZN7kBuffer3getEv>
}
    80003784:	00813083          	ld	ra,8(sp)
    80003788:	00013403          	ld	s0,0(sp)
    8000378c:	01010113          	addi	sp,sp,16
    80003790:	00008067          	ret

0000000080003794 <_ZN8kConsole5kputcEc>:

void kConsole::kputc(char c) {
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00113423          	sd	ra,8(sp)
    8000379c:	00813023          	sd	s0,0(sp)
    800037a0:	01010413          	addi	s0,sp,16
    800037a4:	00050593          	mv	a1,a0
    outputBuffer->put(c);
    800037a8:	00009517          	auipc	a0,0x9
    800037ac:	49853503          	ld	a0,1176(a0) # 8000cc40 <_ZN8kConsole12outputBufferE>
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	bdc080e7          	jalr	-1060(ra) # 8000138c <_ZN7kBuffer3putEc>
}
    800037b8:	00813083          	ld	ra,8(sp)
    800037bc:	00013403          	ld	s0,0(sp)
    800037c0:	01010113          	addi	sp,sp,16
    800037c4:	00008067          	ret

00000000800037c8 <_ZN8kConsole14putInputBufferEc>:

void kConsole::putInputBuffer(char c) {
    800037c8:	ff010113          	addi	sp,sp,-16
    800037cc:	00113423          	sd	ra,8(sp)
    800037d0:	00813023          	sd	s0,0(sp)
    800037d4:	01010413          	addi	s0,sp,16
    800037d8:	00050593          	mv	a1,a0
    inputBuffer->put(c);
    800037dc:	00009517          	auipc	a0,0x9
    800037e0:	45c53503          	ld	a0,1116(a0) # 8000cc38 <_ZN8kConsole11inputBufferE>
    800037e4:	ffffe097          	auipc	ra,0xffffe
    800037e8:	ba8080e7          	jalr	-1112(ra) # 8000138c <_ZN7kBuffer3putEc>
}
    800037ec:	00813083          	ld	ra,8(sp)
    800037f0:	00013403          	ld	s0,0(sp)
    800037f4:	01010113          	addi	sp,sp,16
    800037f8:	00008067          	ret

00000000800037fc <_ZN8kConsole15putOutputBufferEv>:

char kConsole::putOutputBuffer() {
    800037fc:	ff010113          	addi	sp,sp,-16
    80003800:	00113423          	sd	ra,8(sp)
    80003804:	00813023          	sd	s0,0(sp)
    80003808:	01010413          	addi	s0,sp,16
    return outputBuffer->get();
    8000380c:	00009517          	auipc	a0,0x9
    80003810:	43453503          	ld	a0,1076(a0) # 8000cc40 <_ZN8kConsole12outputBufferE>
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	c04080e7          	jalr	-1020(ra) # 80001418 <_ZN7kBuffer3getEv>
}
    8000381c:	00813083          	ld	ra,8(sp)
    80003820:	00013403          	ld	s0,0(sp)
    80003824:	01010113          	addi	sp,sp,16
    80003828:	00008067          	ret

000000008000382c <_ZN8kConsole12getInputSizeEv>:

int kConsole::getInputSize() {
    8000382c:	ff010113          	addi	sp,sp,-16
    80003830:	00113423          	sd	ra,8(sp)
    80003834:	00813023          	sd	s0,0(sp)
    80003838:	01010413          	addi	s0,sp,16
    return inputBuffer->getCnt();
    8000383c:	00009517          	auipc	a0,0x9
    80003840:	3fc53503          	ld	a0,1020(a0) # 8000cc38 <_ZN8kConsole11inputBufferE>
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	c5c080e7          	jalr	-932(ra) # 800014a0 <_ZN7kBuffer6getCntEv>
}
    8000384c:	00813083          	ld	ra,8(sp)
    80003850:	00013403          	ld	s0,0(sp)
    80003854:	01010113          	addi	sp,sp,16
    80003858:	00008067          	ret

000000008000385c <_ZN8kConsole13getOutputSizeEv>:

int kConsole::getOutputSize() {
    8000385c:	ff010113          	addi	sp,sp,-16
    80003860:	00113423          	sd	ra,8(sp)
    80003864:	00813023          	sd	s0,0(sp)
    80003868:	01010413          	addi	s0,sp,16
    return outputBuffer->getCnt();
    8000386c:	00009517          	auipc	a0,0x9
    80003870:	3d453503          	ld	a0,980(a0) # 8000cc40 <_ZN8kConsole12outputBufferE>
    80003874:	ffffe097          	auipc	ra,0xffffe
    80003878:	c2c080e7          	jalr	-980(ra) # 800014a0 <_ZN7kBuffer6getCntEv>
}
    8000387c:	00813083          	ld	ra,8(sp)
    80003880:	00013403          	ld	s0,0(sp)
    80003884:	01010113          	addi	sp,sp,16
    80003888:	00008067          	ret

000000008000388c <_ZN8kConsole10endConsoleEv>:

void kConsole::endConsole() {
    8000388c:	fe010113          	addi	sp,sp,-32
    80003890:	00113c23          	sd	ra,24(sp)
    80003894:	00813823          	sd	s0,16(sp)
    80003898:	00913423          	sd	s1,8(sp)
    8000389c:	02010413          	addi	s0,sp,32
    delete inputBuffer;
    800038a0:	00009497          	auipc	s1,0x9
    800038a4:	3984b483          	ld	s1,920(s1) # 8000cc38 <_ZN8kConsole11inputBufferE>
    800038a8:	00048e63          	beqz	s1,800038c4 <_ZN8kConsole10endConsoleEv+0x38>
    800038ac:	00048513          	mv	a0,s1
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	a74080e7          	jalr	-1420(ra) # 80001324 <_ZN7kBufferD1Ev>
    800038b8:	00048513          	mv	a0,s1
    800038bc:	fffff097          	auipc	ra,0xfffff
    800038c0:	d20080e7          	jalr	-736(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
    delete outputBuffer;
    800038c4:	00009497          	auipc	s1,0x9
    800038c8:	37c4b483          	ld	s1,892(s1) # 8000cc40 <_ZN8kConsole12outputBufferE>
    800038cc:	00048e63          	beqz	s1,800038e8 <_ZN8kConsole10endConsoleEv+0x5c>
    800038d0:	00048513          	mv	a0,s1
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	a50080e7          	jalr	-1456(ra) # 80001324 <_ZN7kBufferD1Ev>
    800038dc:	00048513          	mv	a0,s1
    800038e0:	fffff097          	auipc	ra,0xfffff
    800038e4:	cfc080e7          	jalr	-772(ra) # 800025dc <_ZN9Allocator9_mem_freeEPv>
}
    800038e8:	01813083          	ld	ra,24(sp)
    800038ec:	01013403          	ld	s0,16(sp)
    800038f0:	00813483          	ld	s1,8(sp)
    800038f4:	02010113          	addi	sp,sp,32
    800038f8:	00008067          	ret

00000000800038fc <_Z14printStringMojPKc>:
#include "../h/print.hpp"

void printStringMoj(char const *string)
{
    800038fc:	fd010113          	addi	sp,sp,-48
    80003900:	02113423          	sd	ra,40(sp)
    80003904:	02813023          	sd	s0,32(sp)
    80003908:	00913c23          	sd	s1,24(sp)
    8000390c:	03010413          	addi	s0,sp,48
    80003910:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003914:	100027f3          	csrr	a5,sstatus
    80003918:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    8000391c:	fd043783          	ld	a5,-48(s0)
    uint64 volatile sstatus = Riscv::r_sstatus();
    80003920:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003924:	00200793          	li	a5,2
    80003928:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    8000392c:	0004c503          	lbu	a0,0(s1)
    80003930:	00050a63          	beqz	a0,80003944 <_Z14printStringMojPKc+0x48>
    {
        kConsole::kputc(*string);
    80003934:	00000097          	auipc	ra,0x0
    80003938:	e60080e7          	jalr	-416(ra) # 80003794 <_ZN8kConsole5kputcEc>
        string++;
    8000393c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003940:	fedff06f          	j	8000392c <_Z14printStringMojPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003944:	fd843783          	ld	a5,-40(s0)
    80003948:	0007879b          	sext.w	a5,a5
    8000394c:	0027f793          	andi	a5,a5,2
    80003950:	0007879b          	sext.w	a5,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003954:	1007a073          	csrs	sstatus,a5
}
    80003958:	02813083          	ld	ra,40(sp)
    8000395c:	02013403          	ld	s0,32(sp)
    80003960:	01813483          	ld	s1,24(sp)
    80003964:	03010113          	addi	sp,sp,48
    80003968:	00008067          	ret

000000008000396c <_Z15printIntegerMojm>:

void printIntegerMoj(uint64 integer)
{
    8000396c:	fc010113          	addi	sp,sp,-64
    80003970:	02113c23          	sd	ra,56(sp)
    80003974:	02813823          	sd	s0,48(sp)
    80003978:	02913423          	sd	s1,40(sp)
    8000397c:	03213023          	sd	s2,32(sp)
    80003980:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003984:	100027f3          	csrr	a5,sstatus
    80003988:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000398c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003990:	00200793          	li	a5,2
    80003994:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80003998:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    8000399c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800039a0:	00a00613          	li	a2,10
    800039a4:	02c5773b          	remuw	a4,a0,a2
    800039a8:	02071693          	slli	a3,a4,0x20
    800039ac:	0206d693          	srli	a3,a3,0x20
    800039b0:	00006717          	auipc	a4,0x6
    800039b4:	7b070713          	addi	a4,a4,1968 # 8000a160 <_ZZ15printIntegerMojmE6digits>
    800039b8:	00d70733          	add	a4,a4,a3
    800039bc:	00074703          	lbu	a4,0(a4)
    800039c0:	fe040693          	addi	a3,s0,-32
    800039c4:	009687b3          	add	a5,a3,s1
    800039c8:	0014849b          	addiw	s1,s1,1
    800039cc:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800039d0:	0005071b          	sext.w	a4,a0
    800039d4:	02c5553b          	divuw	a0,a0,a2
    800039d8:	00900793          	li	a5,9
    800039dc:	fce7e2e3          	bltu	a5,a4,800039a0 <_Z15printIntegerMojm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { kConsole::kputc(buf[i]); }
    800039e0:	fff4849b          	addiw	s1,s1,-1
    800039e4:	0004ce63          	bltz	s1,80003a00 <_Z15printIntegerMojm+0x94>
    800039e8:	fe040793          	addi	a5,s0,-32
    800039ec:	009787b3          	add	a5,a5,s1
    800039f0:	ff07c503          	lbu	a0,-16(a5)
    800039f4:	00000097          	auipc	ra,0x0
    800039f8:	da0080e7          	jalr	-608(ra) # 80003794 <_ZN8kConsole5kputcEc>
    800039fc:	fe5ff06f          	j	800039e0 <_Z15printIntegerMojm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003a00:	0009091b          	sext.w	s2,s2
    80003a04:	00297913          	andi	s2,s2,2
    80003a08:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003a0c:	10092073          	csrs	sstatus,s2
    80003a10:	03813083          	ld	ra,56(sp)
    80003a14:	03013403          	ld	s0,48(sp)
    80003a18:	02813483          	ld	s1,40(sp)
    80003a1c:	02013903          	ld	s2,32(sp)
    80003a20:	04010113          	addi	sp,sp,64
    80003a24:	00008067          	ret

0000000080003a28 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003a28:	fe010113          	addi	sp,sp,-32
    80003a2c:	00113c23          	sd	ra,24(sp)
    80003a30:	00813823          	sd	s0,16(sp)
    80003a34:	00913423          	sd	s1,8(sp)
    80003a38:	01213023          	sd	s2,0(sp)
    80003a3c:	02010413          	addi	s0,sp,32
    80003a40:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003a44:	00000913          	li	s2,0
    80003a48:	00c0006f          	j	80003a54 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	c88080e7          	jalr	-888(ra) # 800016d4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003a54:	ffffe097          	auipc	ra,0xffffe
    80003a58:	f88080e7          	jalr	-120(ra) # 800019dc <_Z4getcv>
    80003a5c:	0005059b          	sext.w	a1,a0
    80003a60:	01b00793          	li	a5,27
    80003a64:	02f58a63          	beq	a1,a5,80003a98 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003a68:	0084b503          	ld	a0,8(s1)
    80003a6c:	00003097          	auipc	ra,0x3
    80003a70:	400080e7          	jalr	1024(ra) # 80006e6c <_ZN6Buffer3putEi>
        i++;
    80003a74:	0019071b          	addiw	a4,s2,1
    80003a78:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003a7c:	0004a683          	lw	a3,0(s1)
    80003a80:	0026979b          	slliw	a5,a3,0x2
    80003a84:	00d787bb          	addw	a5,a5,a3
    80003a88:	0017979b          	slliw	a5,a5,0x1
    80003a8c:	02f767bb          	remw	a5,a4,a5
    80003a90:	fc0792e3          	bnez	a5,80003a54 <_ZL16producerKeyboardPv+0x2c>
    80003a94:	fb9ff06f          	j	80003a4c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003a98:	00100793          	li	a5,1
    80003a9c:	00009717          	auipc	a4,0x9
    80003aa0:	1af72623          	sw	a5,428(a4) # 8000cc48 <_ZL9threadEnd>
    data->buffer->put('!');
    80003aa4:	02100593          	li	a1,33
    80003aa8:	0084b503          	ld	a0,8(s1)
    80003aac:	00003097          	auipc	ra,0x3
    80003ab0:	3c0080e7          	jalr	960(ra) # 80006e6c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003ab4:	0104b503          	ld	a0,16(s1)
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	d84080e7          	jalr	-636(ra) # 8000183c <_Z10sem_signalP10kSemaphore>
}
    80003ac0:	01813083          	ld	ra,24(sp)
    80003ac4:	01013403          	ld	s0,16(sp)
    80003ac8:	00813483          	ld	s1,8(sp)
    80003acc:	00013903          	ld	s2,0(sp)
    80003ad0:	02010113          	addi	sp,sp,32
    80003ad4:	00008067          	ret

0000000080003ad8 <_ZL8producerPv>:

static void producer(void *arg) {
    80003ad8:	fe010113          	addi	sp,sp,-32
    80003adc:	00113c23          	sd	ra,24(sp)
    80003ae0:	00813823          	sd	s0,16(sp)
    80003ae4:	00913423          	sd	s1,8(sp)
    80003ae8:	01213023          	sd	s2,0(sp)
    80003aec:	02010413          	addi	s0,sp,32
    80003af0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003af4:	00000913          	li	s2,0
    80003af8:	00c0006f          	j	80003b04 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	bd8080e7          	jalr	-1064(ra) # 800016d4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003b04:	00009797          	auipc	a5,0x9
    80003b08:	1447a783          	lw	a5,324(a5) # 8000cc48 <_ZL9threadEnd>
    80003b0c:	02079e63          	bnez	a5,80003b48 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003b10:	0004a583          	lw	a1,0(s1)
    80003b14:	0305859b          	addiw	a1,a1,48
    80003b18:	0084b503          	ld	a0,8(s1)
    80003b1c:	00003097          	auipc	ra,0x3
    80003b20:	350080e7          	jalr	848(ra) # 80006e6c <_ZN6Buffer3putEi>
        i++;
    80003b24:	0019071b          	addiw	a4,s2,1
    80003b28:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003b2c:	0004a683          	lw	a3,0(s1)
    80003b30:	0026979b          	slliw	a5,a3,0x2
    80003b34:	00d787bb          	addw	a5,a5,a3
    80003b38:	0017979b          	slliw	a5,a5,0x1
    80003b3c:	02f767bb          	remw	a5,a4,a5
    80003b40:	fc0792e3          	bnez	a5,80003b04 <_ZL8producerPv+0x2c>
    80003b44:	fb9ff06f          	j	80003afc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003b48:	0104b503          	ld	a0,16(s1)
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	cf0080e7          	jalr	-784(ra) # 8000183c <_Z10sem_signalP10kSemaphore>
}
    80003b54:	01813083          	ld	ra,24(sp)
    80003b58:	01013403          	ld	s0,16(sp)
    80003b5c:	00813483          	ld	s1,8(sp)
    80003b60:	00013903          	ld	s2,0(sp)
    80003b64:	02010113          	addi	sp,sp,32
    80003b68:	00008067          	ret

0000000080003b6c <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003b6c:	fd010113          	addi	sp,sp,-48
    80003b70:	02113423          	sd	ra,40(sp)
    80003b74:	02813023          	sd	s0,32(sp)
    80003b78:	00913c23          	sd	s1,24(sp)
    80003b7c:	01213823          	sd	s2,16(sp)
    80003b80:	01313423          	sd	s3,8(sp)
    80003b84:	03010413          	addi	s0,sp,48
    80003b88:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003b8c:	00000993          	li	s3,0
    80003b90:	01c0006f          	j	80003bac <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003b94:	ffffe097          	auipc	ra,0xffffe
    80003b98:	b40080e7          	jalr	-1216(ra) # 800016d4 <_Z15thread_dispatchv>
    80003b9c:	0500006f          	j	80003bec <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003ba0:	00a00513          	li	a0,10
    80003ba4:	ffffe097          	auipc	ra,0xffffe
    80003ba8:	e88080e7          	jalr	-376(ra) # 80001a2c <_Z4putcc>
    while (!threadEnd) {
    80003bac:	00009797          	auipc	a5,0x9
    80003bb0:	09c7a783          	lw	a5,156(a5) # 8000cc48 <_ZL9threadEnd>
    80003bb4:	06079063          	bnez	a5,80003c14 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003bb8:	00893503          	ld	a0,8(s2)
    80003bbc:	00003097          	auipc	ra,0x3
    80003bc0:	340080e7          	jalr	832(ra) # 80006efc <_ZN6Buffer3getEv>
        i++;
    80003bc4:	0019849b          	addiw	s1,s3,1
    80003bc8:	0004899b          	sext.w	s3,s1
        putc(key);
    80003bcc:	0ff57513          	andi	a0,a0,255
    80003bd0:	ffffe097          	auipc	ra,0xffffe
    80003bd4:	e5c080e7          	jalr	-420(ra) # 80001a2c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003bd8:	00092703          	lw	a4,0(s2)
    80003bdc:	0027179b          	slliw	a5,a4,0x2
    80003be0:	00e787bb          	addw	a5,a5,a4
    80003be4:	02f4e7bb          	remw	a5,s1,a5
    80003be8:	fa0786e3          	beqz	a5,80003b94 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003bec:	05000793          	li	a5,80
    80003bf0:	02f4e4bb          	remw	s1,s1,a5
    80003bf4:	fa049ce3          	bnez	s1,80003bac <_ZL8consumerPv+0x40>
    80003bf8:	fa9ff06f          	j	80003ba0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003bfc:	00893503          	ld	a0,8(s2)
    80003c00:	00003097          	auipc	ra,0x3
    80003c04:	2fc080e7          	jalr	764(ra) # 80006efc <_ZN6Buffer3getEv>
        putc(key);
    80003c08:	0ff57513          	andi	a0,a0,255
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	e20080e7          	jalr	-480(ra) # 80001a2c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003c14:	00893503          	ld	a0,8(s2)
    80003c18:	00003097          	auipc	ra,0x3
    80003c1c:	370080e7          	jalr	880(ra) # 80006f88 <_ZN6Buffer6getCntEv>
    80003c20:	fca04ee3          	bgtz	a0,80003bfc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003c24:	01093503          	ld	a0,16(s2)
    80003c28:	ffffe097          	auipc	ra,0xffffe
    80003c2c:	c14080e7          	jalr	-1004(ra) # 8000183c <_Z10sem_signalP10kSemaphore>
}
    80003c30:	02813083          	ld	ra,40(sp)
    80003c34:	02013403          	ld	s0,32(sp)
    80003c38:	01813483          	ld	s1,24(sp)
    80003c3c:	01013903          	ld	s2,16(sp)
    80003c40:	00813983          	ld	s3,8(sp)
    80003c44:	03010113          	addi	sp,sp,48
    80003c48:	00008067          	ret

0000000080003c4c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003c4c:	f9010113          	addi	sp,sp,-112
    80003c50:	06113423          	sd	ra,104(sp)
    80003c54:	06813023          	sd	s0,96(sp)
    80003c58:	04913c23          	sd	s1,88(sp)
    80003c5c:	05213823          	sd	s2,80(sp)
    80003c60:	05313423          	sd	s3,72(sp)
    80003c64:	05413023          	sd	s4,64(sp)
    80003c68:	03513c23          	sd	s5,56(sp)
    80003c6c:	03613823          	sd	s6,48(sp)
    80003c70:	07010413          	addi	s0,sp,112
    }


    sem_close(waitForAll);

    delete buffer;
    80003c74:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c78:	00006517          	auipc	a0,0x6
    80003c7c:	4f850513          	addi	a0,a0,1272 # 8000a170 <_ZZ15printIntegerMojmE6digits+0x10>
    80003c80:	00002097          	auipc	ra,0x2
    80003c84:	220080e7          	jalr	544(ra) # 80005ea0 <_Z11printStringPKc>
    getString(input, 30);
    80003c88:	01e00593          	li	a1,30
    80003c8c:	fa040493          	addi	s1,s0,-96
    80003c90:	00048513          	mv	a0,s1
    80003c94:	00002097          	auipc	ra,0x2
    80003c98:	294080e7          	jalr	660(ra) # 80005f28 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c9c:	00048513          	mv	a0,s1
    80003ca0:	00002097          	auipc	ra,0x2
    80003ca4:	360080e7          	jalr	864(ra) # 80006000 <_Z11stringToIntPKc>
    80003ca8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003cac:	00006517          	auipc	a0,0x6
    80003cb0:	4e450513          	addi	a0,a0,1252 # 8000a190 <_ZZ15printIntegerMojmE6digits+0x30>
    80003cb4:	00002097          	auipc	ra,0x2
    80003cb8:	1ec080e7          	jalr	492(ra) # 80005ea0 <_Z11printStringPKc>
    getString(input, 30);
    80003cbc:	01e00593          	li	a1,30
    80003cc0:	00048513          	mv	a0,s1
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	264080e7          	jalr	612(ra) # 80005f28 <_Z9getStringPci>
    n = stringToInt(input);
    80003ccc:	00048513          	mv	a0,s1
    80003cd0:	00002097          	auipc	ra,0x2
    80003cd4:	330080e7          	jalr	816(ra) # 80006000 <_Z11stringToIntPKc>
    80003cd8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003cdc:	00006517          	auipc	a0,0x6
    80003ce0:	4d450513          	addi	a0,a0,1236 # 8000a1b0 <_ZZ15printIntegerMojmE6digits+0x50>
    80003ce4:	00002097          	auipc	ra,0x2
    80003ce8:	1bc080e7          	jalr	444(ra) # 80005ea0 <_Z11printStringPKc>
    80003cec:	00000613          	li	a2,0
    80003cf0:	00a00593          	li	a1,10
    80003cf4:	00090513          	mv	a0,s2
    80003cf8:	00002097          	auipc	ra,0x2
    80003cfc:	358080e7          	jalr	856(ra) # 80006050 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003d00:	00006517          	auipc	a0,0x6
    80003d04:	4c850513          	addi	a0,a0,1224 # 8000a1c8 <_ZZ15printIntegerMojmE6digits+0x68>
    80003d08:	00002097          	auipc	ra,0x2
    80003d0c:	198080e7          	jalr	408(ra) # 80005ea0 <_Z11printStringPKc>
    80003d10:	00000613          	li	a2,0
    80003d14:	00a00593          	li	a1,10
    80003d18:	00048513          	mv	a0,s1
    80003d1c:	00002097          	auipc	ra,0x2
    80003d20:	334080e7          	jalr	820(ra) # 80006050 <_Z8printIntiii>
    printString(".\n");
    80003d24:	00006517          	auipc	a0,0x6
    80003d28:	4bc50513          	addi	a0,a0,1212 # 8000a1e0 <_ZZ15printIntegerMojmE6digits+0x80>
    80003d2c:	00002097          	auipc	ra,0x2
    80003d30:	174080e7          	jalr	372(ra) # 80005ea0 <_Z11printStringPKc>
    if(threadNum > n) {
    80003d34:	0324c463          	blt	s1,s2,80003d5c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003d38:	03205c63          	blez	s2,80003d70 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003d3c:	03800513          	li	a0,56
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	24c080e7          	jalr	588(ra) # 80001f8c <_Znwm>
    80003d48:	00050a13          	mv	s4,a0
    80003d4c:	00048593          	mv	a1,s1
    80003d50:	00003097          	auipc	ra,0x3
    80003d54:	080080e7          	jalr	128(ra) # 80006dd0 <_ZN6BufferC1Ei>
    80003d58:	0300006f          	j	80003d88 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d5c:	00006517          	auipc	a0,0x6
    80003d60:	48c50513          	addi	a0,a0,1164 # 8000a1e8 <_ZZ15printIntegerMojmE6digits+0x88>
    80003d64:	00002097          	auipc	ra,0x2
    80003d68:	13c080e7          	jalr	316(ra) # 80005ea0 <_Z11printStringPKc>
        return;
    80003d6c:	0140006f          	j	80003d80 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003d70:	00006517          	auipc	a0,0x6
    80003d74:	4b850513          	addi	a0,a0,1208 # 8000a228 <_ZZ15printIntegerMojmE6digits+0xc8>
    80003d78:	00002097          	auipc	ra,0x2
    80003d7c:	128080e7          	jalr	296(ra) # 80005ea0 <_Z11printStringPKc>
        return;
    80003d80:	000b0113          	mv	sp,s6
    80003d84:	1500006f          	j	80003ed4 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003d88:	00000593          	li	a1,0
    80003d8c:	00009517          	auipc	a0,0x9
    80003d90:	ec450513          	addi	a0,a0,-316 # 8000cc50 <_ZL10waitForAll>
    80003d94:	ffffe097          	auipc	ra,0xffffe
    80003d98:	9e0080e7          	jalr	-1568(ra) # 80001774 <_Z8sem_openPP10kSemaphorej>
    thread_t threads[threadNum];
    80003d9c:	00391793          	slli	a5,s2,0x3
    80003da0:	00f78793          	addi	a5,a5,15
    80003da4:	ff07f793          	andi	a5,a5,-16
    80003da8:	40f10133          	sub	sp,sp,a5
    80003dac:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003db0:	0019071b          	addiw	a4,s2,1
    80003db4:	00171793          	slli	a5,a4,0x1
    80003db8:	00e787b3          	add	a5,a5,a4
    80003dbc:	00379793          	slli	a5,a5,0x3
    80003dc0:	00f78793          	addi	a5,a5,15
    80003dc4:	ff07f793          	andi	a5,a5,-16
    80003dc8:	40f10133          	sub	sp,sp,a5
    80003dcc:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003dd0:	00191613          	slli	a2,s2,0x1
    80003dd4:	012607b3          	add	a5,a2,s2
    80003dd8:	00379793          	slli	a5,a5,0x3
    80003ddc:	00f987b3          	add	a5,s3,a5
    80003de0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003de4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003de8:	00009717          	auipc	a4,0x9
    80003dec:	e6873703          	ld	a4,-408(a4) # 8000cc50 <_ZL10waitForAll>
    80003df0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003df4:	00078613          	mv	a2,a5
    80003df8:	00000597          	auipc	a1,0x0
    80003dfc:	d7458593          	addi	a1,a1,-652 # 80003b6c <_ZL8consumerPv>
    80003e00:	f9840513          	addi	a0,s0,-104
    80003e04:	ffffd097          	auipc	ra,0xffffd
    80003e08:	7d8080e7          	jalr	2008(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003e0c:	00000493          	li	s1,0
    80003e10:	0280006f          	j	80003e38 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003e14:	00000597          	auipc	a1,0x0
    80003e18:	c1458593          	addi	a1,a1,-1004 # 80003a28 <_ZL16producerKeyboardPv>
                      data + i);
    80003e1c:	00179613          	slli	a2,a5,0x1
    80003e20:	00f60633          	add	a2,a2,a5
    80003e24:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003e28:	00c98633          	add	a2,s3,a2
    80003e2c:	ffffd097          	auipc	ra,0xffffd
    80003e30:	7b0080e7          	jalr	1968(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003e34:	0014849b          	addiw	s1,s1,1
    80003e38:	0524d263          	bge	s1,s2,80003e7c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003e3c:	00149793          	slli	a5,s1,0x1
    80003e40:	009787b3          	add	a5,a5,s1
    80003e44:	00379793          	slli	a5,a5,0x3
    80003e48:	00f987b3          	add	a5,s3,a5
    80003e4c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003e50:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003e54:	00009717          	auipc	a4,0x9
    80003e58:	dfc73703          	ld	a4,-516(a4) # 8000cc50 <_ZL10waitForAll>
    80003e5c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003e60:	00048793          	mv	a5,s1
    80003e64:	00349513          	slli	a0,s1,0x3
    80003e68:	00aa8533          	add	a0,s5,a0
    80003e6c:	fa9054e3          	blez	s1,80003e14 <_Z22producerConsumer_C_APIv+0x1c8>
    80003e70:	00000597          	auipc	a1,0x0
    80003e74:	c6858593          	addi	a1,a1,-920 # 80003ad8 <_ZL8producerPv>
    80003e78:	fa5ff06f          	j	80003e1c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003e7c:	ffffe097          	auipc	ra,0xffffe
    80003e80:	858080e7          	jalr	-1960(ra) # 800016d4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003e84:	00000493          	li	s1,0
    80003e88:	00994e63          	blt	s2,s1,80003ea4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003e8c:	00009517          	auipc	a0,0x9
    80003e90:	dc453503          	ld	a0,-572(a0) # 8000cc50 <_ZL10waitForAll>
    80003e94:	ffffe097          	auipc	ra,0xffffe
    80003e98:	940080e7          	jalr	-1728(ra) # 800017d4 <_Z8sem_waitP10kSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80003e9c:	0014849b          	addiw	s1,s1,1
    80003ea0:	fe9ff06f          	j	80003e88 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003ea4:	00009517          	auipc	a0,0x9
    80003ea8:	dac53503          	ld	a0,-596(a0) # 8000cc50 <_ZL10waitForAll>
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	9f8080e7          	jalr	-1544(ra) # 800018a4 <_Z9sem_closeP10kSemaphore>
    delete buffer;
    80003eb4:	000a0e63          	beqz	s4,80003ed0 <_Z22producerConsumer_C_APIv+0x284>
    80003eb8:	000a0513          	mv	a0,s4
    80003ebc:	00003097          	auipc	ra,0x3
    80003ec0:	154080e7          	jalr	340(ra) # 80007010 <_ZN6BufferD1Ev>
    80003ec4:	000a0513          	mv	a0,s4
    80003ec8:	ffffe097          	auipc	ra,0xffffe
    80003ecc:	114080e7          	jalr	276(ra) # 80001fdc <_ZdlPv>
    80003ed0:	000b0113          	mv	sp,s6

}
    80003ed4:	f9040113          	addi	sp,s0,-112
    80003ed8:	06813083          	ld	ra,104(sp)
    80003edc:	06013403          	ld	s0,96(sp)
    80003ee0:	05813483          	ld	s1,88(sp)
    80003ee4:	05013903          	ld	s2,80(sp)
    80003ee8:	04813983          	ld	s3,72(sp)
    80003eec:	04013a03          	ld	s4,64(sp)
    80003ef0:	03813a83          	ld	s5,56(sp)
    80003ef4:	03013b03          	ld	s6,48(sp)
    80003ef8:	07010113          	addi	sp,sp,112
    80003efc:	00008067          	ret
    80003f00:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003f04:	000a0513          	mv	a0,s4
    80003f08:	ffffe097          	auipc	ra,0xffffe
    80003f0c:	0d4080e7          	jalr	212(ra) # 80001fdc <_ZdlPv>
    80003f10:	00048513          	mv	a0,s1
    80003f14:	0000a097          	auipc	ra,0xa
    80003f18:	e54080e7          	jalr	-428(ra) # 8000dd68 <_Unwind_Resume>

0000000080003f1c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003f1c:	fe010113          	addi	sp,sp,-32
    80003f20:	00113c23          	sd	ra,24(sp)
    80003f24:	00813823          	sd	s0,16(sp)
    80003f28:	00913423          	sd	s1,8(sp)
    80003f2c:	01213023          	sd	s2,0(sp)
    80003f30:	02010413          	addi	s0,sp,32
    80003f34:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003f38:	00100793          	li	a5,1
    80003f3c:	02a7f863          	bgeu	a5,a0,80003f6c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003f40:	00a00793          	li	a5,10
    80003f44:	02f577b3          	remu	a5,a0,a5
    80003f48:	02078e63          	beqz	a5,80003f84 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003f4c:	fff48513          	addi	a0,s1,-1
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	fcc080e7          	jalr	-52(ra) # 80003f1c <_ZL9fibonaccim>
    80003f58:	00050913          	mv	s2,a0
    80003f5c:	ffe48513          	addi	a0,s1,-2
    80003f60:	00000097          	auipc	ra,0x0
    80003f64:	fbc080e7          	jalr	-68(ra) # 80003f1c <_ZL9fibonaccim>
    80003f68:	00a90533          	add	a0,s2,a0
}
    80003f6c:	01813083          	ld	ra,24(sp)
    80003f70:	01013403          	ld	s0,16(sp)
    80003f74:	00813483          	ld	s1,8(sp)
    80003f78:	00013903          	ld	s2,0(sp)
    80003f7c:	02010113          	addi	sp,sp,32
    80003f80:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003f84:	ffffd097          	auipc	ra,0xffffd
    80003f88:	750080e7          	jalr	1872(ra) # 800016d4 <_Z15thread_dispatchv>
    80003f8c:	fc1ff06f          	j	80003f4c <_ZL9fibonaccim+0x30>

0000000080003f90 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003f90:	fe010113          	addi	sp,sp,-32
    80003f94:	00113c23          	sd	ra,24(sp)
    80003f98:	00813823          	sd	s0,16(sp)
    80003f9c:	00913423          	sd	s1,8(sp)
    80003fa0:	01213023          	sd	s2,0(sp)
    80003fa4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003fa8:	00000913          	li	s2,0
    80003fac:	0380006f          	j	80003fe4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003fb0:	ffffd097          	auipc	ra,0xffffd
    80003fb4:	724080e7          	jalr	1828(ra) # 800016d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003fb8:	00148493          	addi	s1,s1,1
    80003fbc:	000027b7          	lui	a5,0x2
    80003fc0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003fc4:	0097ee63          	bltu	a5,s1,80003fe0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003fc8:	00000713          	li	a4,0
    80003fcc:	000077b7          	lui	a5,0x7
    80003fd0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003fd4:	fce7eee3          	bltu	a5,a4,80003fb0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003fd8:	00170713          	addi	a4,a4,1
    80003fdc:	ff1ff06f          	j	80003fcc <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003fe0:	00190913          	addi	s2,s2,1
    80003fe4:	00900793          	li	a5,9
    80003fe8:	0527e063          	bltu	a5,s2,80004028 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003fec:	00006517          	auipc	a0,0x6
    80003ff0:	26c50513          	addi	a0,a0,620 # 8000a258 <_ZZ15printIntegerMojmE6digits+0xf8>
    80003ff4:	00002097          	auipc	ra,0x2
    80003ff8:	eac080e7          	jalr	-340(ra) # 80005ea0 <_Z11printStringPKc>
    80003ffc:	00000613          	li	a2,0
    80004000:	00a00593          	li	a1,10
    80004004:	0009051b          	sext.w	a0,s2
    80004008:	00002097          	auipc	ra,0x2
    8000400c:	048080e7          	jalr	72(ra) # 80006050 <_Z8printIntiii>
    80004010:	00006517          	auipc	a0,0x6
    80004014:	49850513          	addi	a0,a0,1176 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80004018:	00002097          	auipc	ra,0x2
    8000401c:	e88080e7          	jalr	-376(ra) # 80005ea0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004020:	00000493          	li	s1,0
    80004024:	f99ff06f          	j	80003fbc <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004028:	00006517          	auipc	a0,0x6
    8000402c:	23850513          	addi	a0,a0,568 # 8000a260 <_ZZ15printIntegerMojmE6digits+0x100>
    80004030:	00002097          	auipc	ra,0x2
    80004034:	e70080e7          	jalr	-400(ra) # 80005ea0 <_Z11printStringPKc>
    finishedA = true;
    80004038:	00100793          	li	a5,1
    8000403c:	00009717          	auipc	a4,0x9
    80004040:	c0f70e23          	sb	a5,-996(a4) # 8000cc58 <_ZL9finishedA>
}
    80004044:	01813083          	ld	ra,24(sp)
    80004048:	01013403          	ld	s0,16(sp)
    8000404c:	00813483          	ld	s1,8(sp)
    80004050:	00013903          	ld	s2,0(sp)
    80004054:	02010113          	addi	sp,sp,32
    80004058:	00008067          	ret

000000008000405c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000405c:	fe010113          	addi	sp,sp,-32
    80004060:	00113c23          	sd	ra,24(sp)
    80004064:	00813823          	sd	s0,16(sp)
    80004068:	00913423          	sd	s1,8(sp)
    8000406c:	01213023          	sd	s2,0(sp)
    80004070:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004074:	00000913          	li	s2,0
    80004078:	0380006f          	j	800040b0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000407c:	ffffd097          	auipc	ra,0xffffd
    80004080:	658080e7          	jalr	1624(ra) # 800016d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004084:	00148493          	addi	s1,s1,1
    80004088:	000027b7          	lui	a5,0x2
    8000408c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004090:	0097ee63          	bltu	a5,s1,800040ac <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004094:	00000713          	li	a4,0
    80004098:	000077b7          	lui	a5,0x7
    8000409c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800040a0:	fce7eee3          	bltu	a5,a4,8000407c <_ZN7WorkerB11workerBodyBEPv+0x20>
    800040a4:	00170713          	addi	a4,a4,1
    800040a8:	ff1ff06f          	j	80004098 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800040ac:	00190913          	addi	s2,s2,1
    800040b0:	00f00793          	li	a5,15
    800040b4:	0527e063          	bltu	a5,s2,800040f4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800040b8:	00006517          	auipc	a0,0x6
    800040bc:	1b850513          	addi	a0,a0,440 # 8000a270 <_ZZ15printIntegerMojmE6digits+0x110>
    800040c0:	00002097          	auipc	ra,0x2
    800040c4:	de0080e7          	jalr	-544(ra) # 80005ea0 <_Z11printStringPKc>
    800040c8:	00000613          	li	a2,0
    800040cc:	00a00593          	li	a1,10
    800040d0:	0009051b          	sext.w	a0,s2
    800040d4:	00002097          	auipc	ra,0x2
    800040d8:	f7c080e7          	jalr	-132(ra) # 80006050 <_Z8printIntiii>
    800040dc:	00006517          	auipc	a0,0x6
    800040e0:	3cc50513          	addi	a0,a0,972 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800040e4:	00002097          	auipc	ra,0x2
    800040e8:	dbc080e7          	jalr	-580(ra) # 80005ea0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800040ec:	00000493          	li	s1,0
    800040f0:	f99ff06f          	j	80004088 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800040f4:	00006517          	auipc	a0,0x6
    800040f8:	18450513          	addi	a0,a0,388 # 8000a278 <_ZZ15printIntegerMojmE6digits+0x118>
    800040fc:	00002097          	auipc	ra,0x2
    80004100:	da4080e7          	jalr	-604(ra) # 80005ea0 <_Z11printStringPKc>
    finishedB = true;
    80004104:	00100793          	li	a5,1
    80004108:	00009717          	auipc	a4,0x9
    8000410c:	b4f708a3          	sb	a5,-1199(a4) # 8000cc59 <_ZL9finishedB>
    thread_dispatch();
    80004110:	ffffd097          	auipc	ra,0xffffd
    80004114:	5c4080e7          	jalr	1476(ra) # 800016d4 <_Z15thread_dispatchv>
}
    80004118:	01813083          	ld	ra,24(sp)
    8000411c:	01013403          	ld	s0,16(sp)
    80004120:	00813483          	ld	s1,8(sp)
    80004124:	00013903          	ld	s2,0(sp)
    80004128:	02010113          	addi	sp,sp,32
    8000412c:	00008067          	ret

0000000080004130 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004130:	fe010113          	addi	sp,sp,-32
    80004134:	00113c23          	sd	ra,24(sp)
    80004138:	00813823          	sd	s0,16(sp)
    8000413c:	00913423          	sd	s1,8(sp)
    80004140:	01213023          	sd	s2,0(sp)
    80004144:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004148:	00000493          	li	s1,0
    8000414c:	0400006f          	j	8000418c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004150:	00006517          	auipc	a0,0x6
    80004154:	13850513          	addi	a0,a0,312 # 8000a288 <_ZZ15printIntegerMojmE6digits+0x128>
    80004158:	00002097          	auipc	ra,0x2
    8000415c:	d48080e7          	jalr	-696(ra) # 80005ea0 <_Z11printStringPKc>
    80004160:	00000613          	li	a2,0
    80004164:	00a00593          	li	a1,10
    80004168:	00048513          	mv	a0,s1
    8000416c:	00002097          	auipc	ra,0x2
    80004170:	ee4080e7          	jalr	-284(ra) # 80006050 <_Z8printIntiii>
    80004174:	00006517          	auipc	a0,0x6
    80004178:	33450513          	addi	a0,a0,820 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    8000417c:	00002097          	auipc	ra,0x2
    80004180:	d24080e7          	jalr	-732(ra) # 80005ea0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004184:	0014849b          	addiw	s1,s1,1
    80004188:	0ff4f493          	andi	s1,s1,255
    8000418c:	00200793          	li	a5,2
    80004190:	fc97f0e3          	bgeu	a5,s1,80004150 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004194:	00006517          	auipc	a0,0x6
    80004198:	0fc50513          	addi	a0,a0,252 # 8000a290 <_ZZ15printIntegerMojmE6digits+0x130>
    8000419c:	00002097          	auipc	ra,0x2
    800041a0:	d04080e7          	jalr	-764(ra) # 80005ea0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800041a4:	00700313          	li	t1,7
    thread_dispatch();
    800041a8:	ffffd097          	auipc	ra,0xffffd
    800041ac:	52c080e7          	jalr	1324(ra) # 800016d4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800041b0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800041b4:	00006517          	auipc	a0,0x6
    800041b8:	0ec50513          	addi	a0,a0,236 # 8000a2a0 <_ZZ15printIntegerMojmE6digits+0x140>
    800041bc:	00002097          	auipc	ra,0x2
    800041c0:	ce4080e7          	jalr	-796(ra) # 80005ea0 <_Z11printStringPKc>
    800041c4:	00000613          	li	a2,0
    800041c8:	00a00593          	li	a1,10
    800041cc:	0009051b          	sext.w	a0,s2
    800041d0:	00002097          	auipc	ra,0x2
    800041d4:	e80080e7          	jalr	-384(ra) # 80006050 <_Z8printIntiii>
    800041d8:	00006517          	auipc	a0,0x6
    800041dc:	2d050513          	addi	a0,a0,720 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800041e0:	00002097          	auipc	ra,0x2
    800041e4:	cc0080e7          	jalr	-832(ra) # 80005ea0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800041e8:	00c00513          	li	a0,12
    800041ec:	00000097          	auipc	ra,0x0
    800041f0:	d30080e7          	jalr	-720(ra) # 80003f1c <_ZL9fibonaccim>
    800041f4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800041f8:	00006517          	auipc	a0,0x6
    800041fc:	0b050513          	addi	a0,a0,176 # 8000a2a8 <_ZZ15printIntegerMojmE6digits+0x148>
    80004200:	00002097          	auipc	ra,0x2
    80004204:	ca0080e7          	jalr	-864(ra) # 80005ea0 <_Z11printStringPKc>
    80004208:	00000613          	li	a2,0
    8000420c:	00a00593          	li	a1,10
    80004210:	0009051b          	sext.w	a0,s2
    80004214:	00002097          	auipc	ra,0x2
    80004218:	e3c080e7          	jalr	-452(ra) # 80006050 <_Z8printIntiii>
    8000421c:	00006517          	auipc	a0,0x6
    80004220:	28c50513          	addi	a0,a0,652 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80004224:	00002097          	auipc	ra,0x2
    80004228:	c7c080e7          	jalr	-900(ra) # 80005ea0 <_Z11printStringPKc>
    8000422c:	0400006f          	j	8000426c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004230:	00006517          	auipc	a0,0x6
    80004234:	05850513          	addi	a0,a0,88 # 8000a288 <_ZZ15printIntegerMojmE6digits+0x128>
    80004238:	00002097          	auipc	ra,0x2
    8000423c:	c68080e7          	jalr	-920(ra) # 80005ea0 <_Z11printStringPKc>
    80004240:	00000613          	li	a2,0
    80004244:	00a00593          	li	a1,10
    80004248:	00048513          	mv	a0,s1
    8000424c:	00002097          	auipc	ra,0x2
    80004250:	e04080e7          	jalr	-508(ra) # 80006050 <_Z8printIntiii>
    80004254:	00006517          	auipc	a0,0x6
    80004258:	25450513          	addi	a0,a0,596 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    8000425c:	00002097          	auipc	ra,0x2
    80004260:	c44080e7          	jalr	-956(ra) # 80005ea0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004264:	0014849b          	addiw	s1,s1,1
    80004268:	0ff4f493          	andi	s1,s1,255
    8000426c:	00500793          	li	a5,5
    80004270:	fc97f0e3          	bgeu	a5,s1,80004230 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004274:	00006517          	auipc	a0,0x6
    80004278:	fec50513          	addi	a0,a0,-20 # 8000a260 <_ZZ15printIntegerMojmE6digits+0x100>
    8000427c:	00002097          	auipc	ra,0x2
    80004280:	c24080e7          	jalr	-988(ra) # 80005ea0 <_Z11printStringPKc>
    finishedC = true;
    80004284:	00100793          	li	a5,1
    80004288:	00009717          	auipc	a4,0x9
    8000428c:	9cf70923          	sb	a5,-1582(a4) # 8000cc5a <_ZL9finishedC>
    thread_dispatch();
    80004290:	ffffd097          	auipc	ra,0xffffd
    80004294:	444080e7          	jalr	1092(ra) # 800016d4 <_Z15thread_dispatchv>
}
    80004298:	01813083          	ld	ra,24(sp)
    8000429c:	01013403          	ld	s0,16(sp)
    800042a0:	00813483          	ld	s1,8(sp)
    800042a4:	00013903          	ld	s2,0(sp)
    800042a8:	02010113          	addi	sp,sp,32
    800042ac:	00008067          	ret

00000000800042b0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800042b0:	fe010113          	addi	sp,sp,-32
    800042b4:	00113c23          	sd	ra,24(sp)
    800042b8:	00813823          	sd	s0,16(sp)
    800042bc:	00913423          	sd	s1,8(sp)
    800042c0:	01213023          	sd	s2,0(sp)
    800042c4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800042c8:	00a00493          	li	s1,10
    800042cc:	0400006f          	j	8000430c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800042d0:	00006517          	auipc	a0,0x6
    800042d4:	fe850513          	addi	a0,a0,-24 # 8000a2b8 <_ZZ15printIntegerMojmE6digits+0x158>
    800042d8:	00002097          	auipc	ra,0x2
    800042dc:	bc8080e7          	jalr	-1080(ra) # 80005ea0 <_Z11printStringPKc>
    800042e0:	00000613          	li	a2,0
    800042e4:	00a00593          	li	a1,10
    800042e8:	00048513          	mv	a0,s1
    800042ec:	00002097          	auipc	ra,0x2
    800042f0:	d64080e7          	jalr	-668(ra) # 80006050 <_Z8printIntiii>
    800042f4:	00006517          	auipc	a0,0x6
    800042f8:	1b450513          	addi	a0,a0,436 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800042fc:	00002097          	auipc	ra,0x2
    80004300:	ba4080e7          	jalr	-1116(ra) # 80005ea0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004304:	0014849b          	addiw	s1,s1,1
    80004308:	0ff4f493          	andi	s1,s1,255
    8000430c:	00c00793          	li	a5,12
    80004310:	fc97f0e3          	bgeu	a5,s1,800042d0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004314:	00006517          	auipc	a0,0x6
    80004318:	fac50513          	addi	a0,a0,-84 # 8000a2c0 <_ZZ15printIntegerMojmE6digits+0x160>
    8000431c:	00002097          	auipc	ra,0x2
    80004320:	b84080e7          	jalr	-1148(ra) # 80005ea0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004324:	00500313          	li	t1,5
    thread_dispatch();
    80004328:	ffffd097          	auipc	ra,0xffffd
    8000432c:	3ac080e7          	jalr	940(ra) # 800016d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004330:	01000513          	li	a0,16
    80004334:	00000097          	auipc	ra,0x0
    80004338:	be8080e7          	jalr	-1048(ra) # 80003f1c <_ZL9fibonaccim>
    8000433c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004340:	00006517          	auipc	a0,0x6
    80004344:	f9050513          	addi	a0,a0,-112 # 8000a2d0 <_ZZ15printIntegerMojmE6digits+0x170>
    80004348:	00002097          	auipc	ra,0x2
    8000434c:	b58080e7          	jalr	-1192(ra) # 80005ea0 <_Z11printStringPKc>
    80004350:	00000613          	li	a2,0
    80004354:	00a00593          	li	a1,10
    80004358:	0009051b          	sext.w	a0,s2
    8000435c:	00002097          	auipc	ra,0x2
    80004360:	cf4080e7          	jalr	-780(ra) # 80006050 <_Z8printIntiii>
    80004364:	00006517          	auipc	a0,0x6
    80004368:	14450513          	addi	a0,a0,324 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    8000436c:	00002097          	auipc	ra,0x2
    80004370:	b34080e7          	jalr	-1228(ra) # 80005ea0 <_Z11printStringPKc>
    80004374:	0400006f          	j	800043b4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004378:	00006517          	auipc	a0,0x6
    8000437c:	f4050513          	addi	a0,a0,-192 # 8000a2b8 <_ZZ15printIntegerMojmE6digits+0x158>
    80004380:	00002097          	auipc	ra,0x2
    80004384:	b20080e7          	jalr	-1248(ra) # 80005ea0 <_Z11printStringPKc>
    80004388:	00000613          	li	a2,0
    8000438c:	00a00593          	li	a1,10
    80004390:	00048513          	mv	a0,s1
    80004394:	00002097          	auipc	ra,0x2
    80004398:	cbc080e7          	jalr	-836(ra) # 80006050 <_Z8printIntiii>
    8000439c:	00006517          	auipc	a0,0x6
    800043a0:	10c50513          	addi	a0,a0,268 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800043a4:	00002097          	auipc	ra,0x2
    800043a8:	afc080e7          	jalr	-1284(ra) # 80005ea0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800043ac:	0014849b          	addiw	s1,s1,1
    800043b0:	0ff4f493          	andi	s1,s1,255
    800043b4:	00f00793          	li	a5,15
    800043b8:	fc97f0e3          	bgeu	a5,s1,80004378 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800043bc:	00006517          	auipc	a0,0x6
    800043c0:	f2450513          	addi	a0,a0,-220 # 8000a2e0 <_ZZ15printIntegerMojmE6digits+0x180>
    800043c4:	00002097          	auipc	ra,0x2
    800043c8:	adc080e7          	jalr	-1316(ra) # 80005ea0 <_Z11printStringPKc>
    finishedD = true;
    800043cc:	00100793          	li	a5,1
    800043d0:	00009717          	auipc	a4,0x9
    800043d4:	88f705a3          	sb	a5,-1909(a4) # 8000cc5b <_ZL9finishedD>
    thread_dispatch();
    800043d8:	ffffd097          	auipc	ra,0xffffd
    800043dc:	2fc080e7          	jalr	764(ra) # 800016d4 <_Z15thread_dispatchv>
}
    800043e0:	01813083          	ld	ra,24(sp)
    800043e4:	01013403          	ld	s0,16(sp)
    800043e8:	00813483          	ld	s1,8(sp)
    800043ec:	00013903          	ld	s2,0(sp)
    800043f0:	02010113          	addi	sp,sp,32
    800043f4:	00008067          	ret

00000000800043f8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800043f8:	fc010113          	addi	sp,sp,-64
    800043fc:	02113c23          	sd	ra,56(sp)
    80004400:	02813823          	sd	s0,48(sp)
    80004404:	02913423          	sd	s1,40(sp)
    80004408:	03213023          	sd	s2,32(sp)
    8000440c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004410:	02000513          	li	a0,32
    80004414:	ffffe097          	auipc	ra,0xffffe
    80004418:	b78080e7          	jalr	-1160(ra) # 80001f8c <_Znwm>
    8000441c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004420:	ffffe097          	auipc	ra,0xffffe
    80004424:	d1c080e7          	jalr	-740(ra) # 8000213c <_ZN6ThreadC1Ev>
    80004428:	00008797          	auipc	a5,0x8
    8000442c:	56878793          	addi	a5,a5,1384 # 8000c990 <_ZTV7WorkerA+0x10>
    80004430:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004434:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004438:	00006517          	auipc	a0,0x6
    8000443c:	eb850513          	addi	a0,a0,-328 # 8000a2f0 <_ZZ15printIntegerMojmE6digits+0x190>
    80004440:	00002097          	auipc	ra,0x2
    80004444:	a60080e7          	jalr	-1440(ra) # 80005ea0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004448:	02000513          	li	a0,32
    8000444c:	ffffe097          	auipc	ra,0xffffe
    80004450:	b40080e7          	jalr	-1216(ra) # 80001f8c <_Znwm>
    80004454:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004458:	ffffe097          	auipc	ra,0xffffe
    8000445c:	ce4080e7          	jalr	-796(ra) # 8000213c <_ZN6ThreadC1Ev>
    80004460:	00008797          	auipc	a5,0x8
    80004464:	55878793          	addi	a5,a5,1368 # 8000c9b8 <_ZTV7WorkerB+0x10>
    80004468:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000446c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004470:	00006517          	auipc	a0,0x6
    80004474:	e9850513          	addi	a0,a0,-360 # 8000a308 <_ZZ15printIntegerMojmE6digits+0x1a8>
    80004478:	00002097          	auipc	ra,0x2
    8000447c:	a28080e7          	jalr	-1496(ra) # 80005ea0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004480:	02000513          	li	a0,32
    80004484:	ffffe097          	auipc	ra,0xffffe
    80004488:	b08080e7          	jalr	-1272(ra) # 80001f8c <_Znwm>
    8000448c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	cac080e7          	jalr	-852(ra) # 8000213c <_ZN6ThreadC1Ev>
    80004498:	00008797          	auipc	a5,0x8
    8000449c:	54878793          	addi	a5,a5,1352 # 8000c9e0 <_ZTV7WorkerC+0x10>
    800044a0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800044a4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800044a8:	00006517          	auipc	a0,0x6
    800044ac:	e7850513          	addi	a0,a0,-392 # 8000a320 <_ZZ15printIntegerMojmE6digits+0x1c0>
    800044b0:	00002097          	auipc	ra,0x2
    800044b4:	9f0080e7          	jalr	-1552(ra) # 80005ea0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800044b8:	02000513          	li	a0,32
    800044bc:	ffffe097          	auipc	ra,0xffffe
    800044c0:	ad0080e7          	jalr	-1328(ra) # 80001f8c <_Znwm>
    800044c4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800044c8:	ffffe097          	auipc	ra,0xffffe
    800044cc:	c74080e7          	jalr	-908(ra) # 8000213c <_ZN6ThreadC1Ev>
    800044d0:	00008797          	auipc	a5,0x8
    800044d4:	53878793          	addi	a5,a5,1336 # 8000ca08 <_ZTV7WorkerD+0x10>
    800044d8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800044dc:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800044e0:	00006517          	auipc	a0,0x6
    800044e4:	e5850513          	addi	a0,a0,-424 # 8000a338 <_ZZ15printIntegerMojmE6digits+0x1d8>
    800044e8:	00002097          	auipc	ra,0x2
    800044ec:	9b8080e7          	jalr	-1608(ra) # 80005ea0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800044f0:	00000493          	li	s1,0
    800044f4:	00300793          	li	a5,3
    800044f8:	0297c663          	blt	a5,s1,80004524 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800044fc:	00349793          	slli	a5,s1,0x3
    80004500:	fe040713          	addi	a4,s0,-32
    80004504:	00f707b3          	add	a5,a4,a5
    80004508:	fe07b503          	ld	a0,-32(a5)
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	c60080e7          	jalr	-928(ra) # 8000216c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004514:	0014849b          	addiw	s1,s1,1
    80004518:	fddff06f          	j	800044f4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000451c:	ffffe097          	auipc	ra,0xffffe
    80004520:	cb4080e7          	jalr	-844(ra) # 800021d0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004524:	00008797          	auipc	a5,0x8
    80004528:	7347c783          	lbu	a5,1844(a5) # 8000cc58 <_ZL9finishedA>
    8000452c:	fe0788e3          	beqz	a5,8000451c <_Z20Threads_CPP_API_testv+0x124>
    80004530:	00008797          	auipc	a5,0x8
    80004534:	7297c783          	lbu	a5,1833(a5) # 8000cc59 <_ZL9finishedB>
    80004538:	fe0782e3          	beqz	a5,8000451c <_Z20Threads_CPP_API_testv+0x124>
    8000453c:	00008797          	auipc	a5,0x8
    80004540:	71e7c783          	lbu	a5,1822(a5) # 8000cc5a <_ZL9finishedC>
    80004544:	fc078ce3          	beqz	a5,8000451c <_Z20Threads_CPP_API_testv+0x124>
    80004548:	00008797          	auipc	a5,0x8
    8000454c:	7137c783          	lbu	a5,1811(a5) # 8000cc5b <_ZL9finishedD>
    80004550:	fc0786e3          	beqz	a5,8000451c <_Z20Threads_CPP_API_testv+0x124>
    80004554:	fc040493          	addi	s1,s0,-64
    80004558:	0080006f          	j	80004560 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000455c:	00848493          	addi	s1,s1,8
    80004560:	fe040793          	addi	a5,s0,-32
    80004564:	08f48663          	beq	s1,a5,800045f0 <_Z20Threads_CPP_API_testv+0x1f8>
    80004568:	0004b503          	ld	a0,0(s1)
    8000456c:	fe0508e3          	beqz	a0,8000455c <_Z20Threads_CPP_API_testv+0x164>
    80004570:	00053783          	ld	a5,0(a0)
    80004574:	0087b783          	ld	a5,8(a5)
    80004578:	000780e7          	jalr	a5
    8000457c:	fe1ff06f          	j	8000455c <_Z20Threads_CPP_API_testv+0x164>
    80004580:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004584:	00048513          	mv	a0,s1
    80004588:	ffffe097          	auipc	ra,0xffffe
    8000458c:	a54080e7          	jalr	-1452(ra) # 80001fdc <_ZdlPv>
    80004590:	00090513          	mv	a0,s2
    80004594:	00009097          	auipc	ra,0x9
    80004598:	7d4080e7          	jalr	2004(ra) # 8000dd68 <_Unwind_Resume>
    8000459c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800045a0:	00048513          	mv	a0,s1
    800045a4:	ffffe097          	auipc	ra,0xffffe
    800045a8:	a38080e7          	jalr	-1480(ra) # 80001fdc <_ZdlPv>
    800045ac:	00090513          	mv	a0,s2
    800045b0:	00009097          	auipc	ra,0x9
    800045b4:	7b8080e7          	jalr	1976(ra) # 8000dd68 <_Unwind_Resume>
    800045b8:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800045bc:	00048513          	mv	a0,s1
    800045c0:	ffffe097          	auipc	ra,0xffffe
    800045c4:	a1c080e7          	jalr	-1508(ra) # 80001fdc <_ZdlPv>
    800045c8:	00090513          	mv	a0,s2
    800045cc:	00009097          	auipc	ra,0x9
    800045d0:	79c080e7          	jalr	1948(ra) # 8000dd68 <_Unwind_Resume>
    800045d4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800045d8:	00048513          	mv	a0,s1
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	a00080e7          	jalr	-1536(ra) # 80001fdc <_ZdlPv>
    800045e4:	00090513          	mv	a0,s2
    800045e8:	00009097          	auipc	ra,0x9
    800045ec:	780080e7          	jalr	1920(ra) # 8000dd68 <_Unwind_Resume>
}
    800045f0:	03813083          	ld	ra,56(sp)
    800045f4:	03013403          	ld	s0,48(sp)
    800045f8:	02813483          	ld	s1,40(sp)
    800045fc:	02013903          	ld	s2,32(sp)
    80004600:	04010113          	addi	sp,sp,64
    80004604:	00008067          	ret

0000000080004608 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004608:	ff010113          	addi	sp,sp,-16
    8000460c:	00113423          	sd	ra,8(sp)
    80004610:	00813023          	sd	s0,0(sp)
    80004614:	01010413          	addi	s0,sp,16
    80004618:	00008797          	auipc	a5,0x8
    8000461c:	37878793          	addi	a5,a5,888 # 8000c990 <_ZTV7WorkerA+0x10>
    80004620:	00f53023          	sd	a5,0(a0)
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	a48080e7          	jalr	-1464(ra) # 8000206c <_ZN6ThreadD1Ev>
    8000462c:	00813083          	ld	ra,8(sp)
    80004630:	00013403          	ld	s0,0(sp)
    80004634:	01010113          	addi	sp,sp,16
    80004638:	00008067          	ret

000000008000463c <_ZN7WorkerAD0Ev>:
    8000463c:	fe010113          	addi	sp,sp,-32
    80004640:	00113c23          	sd	ra,24(sp)
    80004644:	00813823          	sd	s0,16(sp)
    80004648:	00913423          	sd	s1,8(sp)
    8000464c:	02010413          	addi	s0,sp,32
    80004650:	00050493          	mv	s1,a0
    80004654:	00008797          	auipc	a5,0x8
    80004658:	33c78793          	addi	a5,a5,828 # 8000c990 <_ZTV7WorkerA+0x10>
    8000465c:	00f53023          	sd	a5,0(a0)
    80004660:	ffffe097          	auipc	ra,0xffffe
    80004664:	a0c080e7          	jalr	-1524(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004668:	00048513          	mv	a0,s1
    8000466c:	ffffe097          	auipc	ra,0xffffe
    80004670:	970080e7          	jalr	-1680(ra) # 80001fdc <_ZdlPv>
    80004674:	01813083          	ld	ra,24(sp)
    80004678:	01013403          	ld	s0,16(sp)
    8000467c:	00813483          	ld	s1,8(sp)
    80004680:	02010113          	addi	sp,sp,32
    80004684:	00008067          	ret

0000000080004688 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004688:	ff010113          	addi	sp,sp,-16
    8000468c:	00113423          	sd	ra,8(sp)
    80004690:	00813023          	sd	s0,0(sp)
    80004694:	01010413          	addi	s0,sp,16
    80004698:	00008797          	auipc	a5,0x8
    8000469c:	32078793          	addi	a5,a5,800 # 8000c9b8 <_ZTV7WorkerB+0x10>
    800046a0:	00f53023          	sd	a5,0(a0)
    800046a4:	ffffe097          	auipc	ra,0xffffe
    800046a8:	9c8080e7          	jalr	-1592(ra) # 8000206c <_ZN6ThreadD1Ev>
    800046ac:	00813083          	ld	ra,8(sp)
    800046b0:	00013403          	ld	s0,0(sp)
    800046b4:	01010113          	addi	sp,sp,16
    800046b8:	00008067          	ret

00000000800046bc <_ZN7WorkerBD0Ev>:
    800046bc:	fe010113          	addi	sp,sp,-32
    800046c0:	00113c23          	sd	ra,24(sp)
    800046c4:	00813823          	sd	s0,16(sp)
    800046c8:	00913423          	sd	s1,8(sp)
    800046cc:	02010413          	addi	s0,sp,32
    800046d0:	00050493          	mv	s1,a0
    800046d4:	00008797          	auipc	a5,0x8
    800046d8:	2e478793          	addi	a5,a5,740 # 8000c9b8 <_ZTV7WorkerB+0x10>
    800046dc:	00f53023          	sd	a5,0(a0)
    800046e0:	ffffe097          	auipc	ra,0xffffe
    800046e4:	98c080e7          	jalr	-1652(ra) # 8000206c <_ZN6ThreadD1Ev>
    800046e8:	00048513          	mv	a0,s1
    800046ec:	ffffe097          	auipc	ra,0xffffe
    800046f0:	8f0080e7          	jalr	-1808(ra) # 80001fdc <_ZdlPv>
    800046f4:	01813083          	ld	ra,24(sp)
    800046f8:	01013403          	ld	s0,16(sp)
    800046fc:	00813483          	ld	s1,8(sp)
    80004700:	02010113          	addi	sp,sp,32
    80004704:	00008067          	ret

0000000080004708 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004708:	ff010113          	addi	sp,sp,-16
    8000470c:	00113423          	sd	ra,8(sp)
    80004710:	00813023          	sd	s0,0(sp)
    80004714:	01010413          	addi	s0,sp,16
    80004718:	00008797          	auipc	a5,0x8
    8000471c:	2c878793          	addi	a5,a5,712 # 8000c9e0 <_ZTV7WorkerC+0x10>
    80004720:	00f53023          	sd	a5,0(a0)
    80004724:	ffffe097          	auipc	ra,0xffffe
    80004728:	948080e7          	jalr	-1720(ra) # 8000206c <_ZN6ThreadD1Ev>
    8000472c:	00813083          	ld	ra,8(sp)
    80004730:	00013403          	ld	s0,0(sp)
    80004734:	01010113          	addi	sp,sp,16
    80004738:	00008067          	ret

000000008000473c <_ZN7WorkerCD0Ev>:
    8000473c:	fe010113          	addi	sp,sp,-32
    80004740:	00113c23          	sd	ra,24(sp)
    80004744:	00813823          	sd	s0,16(sp)
    80004748:	00913423          	sd	s1,8(sp)
    8000474c:	02010413          	addi	s0,sp,32
    80004750:	00050493          	mv	s1,a0
    80004754:	00008797          	auipc	a5,0x8
    80004758:	28c78793          	addi	a5,a5,652 # 8000c9e0 <_ZTV7WorkerC+0x10>
    8000475c:	00f53023          	sd	a5,0(a0)
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	90c080e7          	jalr	-1780(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004768:	00048513          	mv	a0,s1
    8000476c:	ffffe097          	auipc	ra,0xffffe
    80004770:	870080e7          	jalr	-1936(ra) # 80001fdc <_ZdlPv>
    80004774:	01813083          	ld	ra,24(sp)
    80004778:	01013403          	ld	s0,16(sp)
    8000477c:	00813483          	ld	s1,8(sp)
    80004780:	02010113          	addi	sp,sp,32
    80004784:	00008067          	ret

0000000080004788 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004788:	ff010113          	addi	sp,sp,-16
    8000478c:	00113423          	sd	ra,8(sp)
    80004790:	00813023          	sd	s0,0(sp)
    80004794:	01010413          	addi	s0,sp,16
    80004798:	00008797          	auipc	a5,0x8
    8000479c:	27078793          	addi	a5,a5,624 # 8000ca08 <_ZTV7WorkerD+0x10>
    800047a0:	00f53023          	sd	a5,0(a0)
    800047a4:	ffffe097          	auipc	ra,0xffffe
    800047a8:	8c8080e7          	jalr	-1848(ra) # 8000206c <_ZN6ThreadD1Ev>
    800047ac:	00813083          	ld	ra,8(sp)
    800047b0:	00013403          	ld	s0,0(sp)
    800047b4:	01010113          	addi	sp,sp,16
    800047b8:	00008067          	ret

00000000800047bc <_ZN7WorkerDD0Ev>:
    800047bc:	fe010113          	addi	sp,sp,-32
    800047c0:	00113c23          	sd	ra,24(sp)
    800047c4:	00813823          	sd	s0,16(sp)
    800047c8:	00913423          	sd	s1,8(sp)
    800047cc:	02010413          	addi	s0,sp,32
    800047d0:	00050493          	mv	s1,a0
    800047d4:	00008797          	auipc	a5,0x8
    800047d8:	23478793          	addi	a5,a5,564 # 8000ca08 <_ZTV7WorkerD+0x10>
    800047dc:	00f53023          	sd	a5,0(a0)
    800047e0:	ffffe097          	auipc	ra,0xffffe
    800047e4:	88c080e7          	jalr	-1908(ra) # 8000206c <_ZN6ThreadD1Ev>
    800047e8:	00048513          	mv	a0,s1
    800047ec:	ffffd097          	auipc	ra,0xffffd
    800047f0:	7f0080e7          	jalr	2032(ra) # 80001fdc <_ZdlPv>
    800047f4:	01813083          	ld	ra,24(sp)
    800047f8:	01013403          	ld	s0,16(sp)
    800047fc:	00813483          	ld	s1,8(sp)
    80004800:	02010113          	addi	sp,sp,32
    80004804:	00008067          	ret

0000000080004808 <_ZN7WorkerA3runEv>:
    void run() override {
    80004808:	ff010113          	addi	sp,sp,-16
    8000480c:	00113423          	sd	ra,8(sp)
    80004810:	00813023          	sd	s0,0(sp)
    80004814:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004818:	00000593          	li	a1,0
    8000481c:	fffff097          	auipc	ra,0xfffff
    80004820:	774080e7          	jalr	1908(ra) # 80003f90 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004824:	00813083          	ld	ra,8(sp)
    80004828:	00013403          	ld	s0,0(sp)
    8000482c:	01010113          	addi	sp,sp,16
    80004830:	00008067          	ret

0000000080004834 <_ZN7WorkerB3runEv>:
    void run() override {
    80004834:	ff010113          	addi	sp,sp,-16
    80004838:	00113423          	sd	ra,8(sp)
    8000483c:	00813023          	sd	s0,0(sp)
    80004840:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004844:	00000593          	li	a1,0
    80004848:	00000097          	auipc	ra,0x0
    8000484c:	814080e7          	jalr	-2028(ra) # 8000405c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004850:	00813083          	ld	ra,8(sp)
    80004854:	00013403          	ld	s0,0(sp)
    80004858:	01010113          	addi	sp,sp,16
    8000485c:	00008067          	ret

0000000080004860 <_ZN7WorkerC3runEv>:
    void run() override {
    80004860:	ff010113          	addi	sp,sp,-16
    80004864:	00113423          	sd	ra,8(sp)
    80004868:	00813023          	sd	s0,0(sp)
    8000486c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004870:	00000593          	li	a1,0
    80004874:	00000097          	auipc	ra,0x0
    80004878:	8bc080e7          	jalr	-1860(ra) # 80004130 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000487c:	00813083          	ld	ra,8(sp)
    80004880:	00013403          	ld	s0,0(sp)
    80004884:	01010113          	addi	sp,sp,16
    80004888:	00008067          	ret

000000008000488c <_ZN7WorkerD3runEv>:
    void run() override {
    8000488c:	ff010113          	addi	sp,sp,-16
    80004890:	00113423          	sd	ra,8(sp)
    80004894:	00813023          	sd	s0,0(sp)
    80004898:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000489c:	00000593          	li	a1,0
    800048a0:	00000097          	auipc	ra,0x0
    800048a4:	a10080e7          	jalr	-1520(ra) # 800042b0 <_ZN7WorkerD11workerBodyDEPv>
    }
    800048a8:	00813083          	ld	ra,8(sp)
    800048ac:	00013403          	ld	s0,0(sp)
    800048b0:	01010113          	addi	sp,sp,16
    800048b4:	00008067          	ret

00000000800048b8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800048b8:	f8010113          	addi	sp,sp,-128
    800048bc:	06113c23          	sd	ra,120(sp)
    800048c0:	06813823          	sd	s0,112(sp)
    800048c4:	06913423          	sd	s1,104(sp)
    800048c8:	07213023          	sd	s2,96(sp)
    800048cc:	05313c23          	sd	s3,88(sp)
    800048d0:	05413823          	sd	s4,80(sp)
    800048d4:	05513423          	sd	s5,72(sp)
    800048d8:	05613023          	sd	s6,64(sp)
    800048dc:	03713c23          	sd	s7,56(sp)
    800048e0:	03813823          	sd	s8,48(sp)
    800048e4:	03913423          	sd	s9,40(sp)
    800048e8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800048ec:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800048f0:	00006517          	auipc	a0,0x6
    800048f4:	88050513          	addi	a0,a0,-1920 # 8000a170 <_ZZ15printIntegerMojmE6digits+0x10>
    800048f8:	00001097          	auipc	ra,0x1
    800048fc:	5a8080e7          	jalr	1448(ra) # 80005ea0 <_Z11printStringPKc>
    getString(input, 30);
    80004900:	01e00593          	li	a1,30
    80004904:	f8040493          	addi	s1,s0,-128
    80004908:	00048513          	mv	a0,s1
    8000490c:	00001097          	auipc	ra,0x1
    80004910:	61c080e7          	jalr	1564(ra) # 80005f28 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004914:	00048513          	mv	a0,s1
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	6e8080e7          	jalr	1768(ra) # 80006000 <_Z11stringToIntPKc>
    80004920:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004924:	00006517          	auipc	a0,0x6
    80004928:	86c50513          	addi	a0,a0,-1940 # 8000a190 <_ZZ15printIntegerMojmE6digits+0x30>
    8000492c:	00001097          	auipc	ra,0x1
    80004930:	574080e7          	jalr	1396(ra) # 80005ea0 <_Z11printStringPKc>
    getString(input, 30);
    80004934:	01e00593          	li	a1,30
    80004938:	00048513          	mv	a0,s1
    8000493c:	00001097          	auipc	ra,0x1
    80004940:	5ec080e7          	jalr	1516(ra) # 80005f28 <_Z9getStringPci>
    n = stringToInt(input);
    80004944:	00048513          	mv	a0,s1
    80004948:	00001097          	auipc	ra,0x1
    8000494c:	6b8080e7          	jalr	1720(ra) # 80006000 <_Z11stringToIntPKc>
    80004950:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004954:	00006517          	auipc	a0,0x6
    80004958:	85c50513          	addi	a0,a0,-1956 # 8000a1b0 <_ZZ15printIntegerMojmE6digits+0x50>
    8000495c:	00001097          	auipc	ra,0x1
    80004960:	544080e7          	jalr	1348(ra) # 80005ea0 <_Z11printStringPKc>
    printInt(threadNum);
    80004964:	00000613          	li	a2,0
    80004968:	00a00593          	li	a1,10
    8000496c:	00098513          	mv	a0,s3
    80004970:	00001097          	auipc	ra,0x1
    80004974:	6e0080e7          	jalr	1760(ra) # 80006050 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004978:	00006517          	auipc	a0,0x6
    8000497c:	85050513          	addi	a0,a0,-1968 # 8000a1c8 <_ZZ15printIntegerMojmE6digits+0x68>
    80004980:	00001097          	auipc	ra,0x1
    80004984:	520080e7          	jalr	1312(ra) # 80005ea0 <_Z11printStringPKc>
    printInt(n);
    80004988:	00000613          	li	a2,0
    8000498c:	00a00593          	li	a1,10
    80004990:	00048513          	mv	a0,s1
    80004994:	00001097          	auipc	ra,0x1
    80004998:	6bc080e7          	jalr	1724(ra) # 80006050 <_Z8printIntiii>
    printString(".\n");
    8000499c:	00006517          	auipc	a0,0x6
    800049a0:	84450513          	addi	a0,a0,-1980 # 8000a1e0 <_ZZ15printIntegerMojmE6digits+0x80>
    800049a4:	00001097          	auipc	ra,0x1
    800049a8:	4fc080e7          	jalr	1276(ra) # 80005ea0 <_Z11printStringPKc>
    if (threadNum > n) {
    800049ac:	0334c463          	blt	s1,s3,800049d4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800049b0:	03305c63          	blez	s3,800049e8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800049b4:	03800513          	li	a0,56
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	5d4080e7          	jalr	1492(ra) # 80001f8c <_Znwm>
    800049c0:	00050a93          	mv	s5,a0
    800049c4:	00048593          	mv	a1,s1
    800049c8:	00001097          	auipc	ra,0x1
    800049cc:	7a8080e7          	jalr	1960(ra) # 80006170 <_ZN9BufferCPPC1Ei>
    800049d0:	0300006f          	j	80004a00 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800049d4:	00006517          	auipc	a0,0x6
    800049d8:	81450513          	addi	a0,a0,-2028 # 8000a1e8 <_ZZ15printIntegerMojmE6digits+0x88>
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	4c4080e7          	jalr	1220(ra) # 80005ea0 <_Z11printStringPKc>
        return;
    800049e4:	0140006f          	j	800049f8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800049e8:	00006517          	auipc	a0,0x6
    800049ec:	84050513          	addi	a0,a0,-1984 # 8000a228 <_ZZ15printIntegerMojmE6digits+0xc8>
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	4b0080e7          	jalr	1200(ra) # 80005ea0 <_Z11printStringPKc>
        return;
    800049f8:	000c0113          	mv	sp,s8
    800049fc:	2140006f          	j	80004c10 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004a00:	01000513          	li	a0,16
    80004a04:	ffffd097          	auipc	ra,0xffffd
    80004a08:	588080e7          	jalr	1416(ra) # 80001f8c <_Znwm>
    80004a0c:	00050913          	mv	s2,a0
    80004a10:	00000593          	li	a1,0
    80004a14:	ffffe097          	auipc	ra,0xffffe
    80004a18:	80c080e7          	jalr	-2036(ra) # 80002220 <_ZN9SemaphoreC1Ej>
    80004a1c:	00008797          	auipc	a5,0x8
    80004a20:	2527b623          	sd	s2,588(a5) # 8000cc68 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004a24:	00399793          	slli	a5,s3,0x3
    80004a28:	00f78793          	addi	a5,a5,15
    80004a2c:	ff07f793          	andi	a5,a5,-16
    80004a30:	40f10133          	sub	sp,sp,a5
    80004a34:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004a38:	0019871b          	addiw	a4,s3,1
    80004a3c:	00171793          	slli	a5,a4,0x1
    80004a40:	00e787b3          	add	a5,a5,a4
    80004a44:	00379793          	slli	a5,a5,0x3
    80004a48:	00f78793          	addi	a5,a5,15
    80004a4c:	ff07f793          	andi	a5,a5,-16
    80004a50:	40f10133          	sub	sp,sp,a5
    80004a54:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004a58:	00199493          	slli	s1,s3,0x1
    80004a5c:	013484b3          	add	s1,s1,s3
    80004a60:	00349493          	slli	s1,s1,0x3
    80004a64:	009b04b3          	add	s1,s6,s1
    80004a68:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004a6c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004a70:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004a74:	02800513          	li	a0,40
    80004a78:	ffffd097          	auipc	ra,0xffffd
    80004a7c:	514080e7          	jalr	1300(ra) # 80001f8c <_Znwm>
    80004a80:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004a84:	ffffd097          	auipc	ra,0xffffd
    80004a88:	6b8080e7          	jalr	1720(ra) # 8000213c <_ZN6ThreadC1Ev>
    80004a8c:	00008797          	auipc	a5,0x8
    80004a90:	ff478793          	addi	a5,a5,-12 # 8000ca80 <_ZTV8Consumer+0x10>
    80004a94:	00fbb023          	sd	a5,0(s7)
    80004a98:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004a9c:	000b8513          	mv	a0,s7
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	6cc080e7          	jalr	1740(ra) # 8000216c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004aa8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004aac:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004ab0:	00008797          	auipc	a5,0x8
    80004ab4:	1b87b783          	ld	a5,440(a5) # 8000cc68 <_ZL10waitForAll>
    80004ab8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004abc:	02800513          	li	a0,40
    80004ac0:	ffffd097          	auipc	ra,0xffffd
    80004ac4:	4cc080e7          	jalr	1228(ra) # 80001f8c <_Znwm>
    80004ac8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004acc:	ffffd097          	auipc	ra,0xffffd
    80004ad0:	670080e7          	jalr	1648(ra) # 8000213c <_ZN6ThreadC1Ev>
    80004ad4:	00008797          	auipc	a5,0x8
    80004ad8:	f5c78793          	addi	a5,a5,-164 # 8000ca30 <_ZTV16ProducerKeyborad+0x10>
    80004adc:	00f4b023          	sd	a5,0(s1)
    80004ae0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004ae4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004ae8:	00048513          	mv	a0,s1
    80004aec:	ffffd097          	auipc	ra,0xffffd
    80004af0:	680080e7          	jalr	1664(ra) # 8000216c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004af4:	00100913          	li	s2,1
    80004af8:	0300006f          	j	80004b28 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004afc:	00008797          	auipc	a5,0x8
    80004b00:	f5c78793          	addi	a5,a5,-164 # 8000ca58 <_ZTV8Producer+0x10>
    80004b04:	00fcb023          	sd	a5,0(s9)
    80004b08:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004b0c:	00391793          	slli	a5,s2,0x3
    80004b10:	00fa07b3          	add	a5,s4,a5
    80004b14:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004b18:	000c8513          	mv	a0,s9
    80004b1c:	ffffd097          	auipc	ra,0xffffd
    80004b20:	650080e7          	jalr	1616(ra) # 8000216c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004b24:	0019091b          	addiw	s2,s2,1
    80004b28:	05395263          	bge	s2,s3,80004b6c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004b2c:	00191493          	slli	s1,s2,0x1
    80004b30:	012484b3          	add	s1,s1,s2
    80004b34:	00349493          	slli	s1,s1,0x3
    80004b38:	009b04b3          	add	s1,s6,s1
    80004b3c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004b40:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004b44:	00008797          	auipc	a5,0x8
    80004b48:	1247b783          	ld	a5,292(a5) # 8000cc68 <_ZL10waitForAll>
    80004b4c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004b50:	02800513          	li	a0,40
    80004b54:	ffffd097          	auipc	ra,0xffffd
    80004b58:	438080e7          	jalr	1080(ra) # 80001f8c <_Znwm>
    80004b5c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004b60:	ffffd097          	auipc	ra,0xffffd
    80004b64:	5dc080e7          	jalr	1500(ra) # 8000213c <_ZN6ThreadC1Ev>
    80004b68:	f95ff06f          	j	80004afc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004b6c:	ffffd097          	auipc	ra,0xffffd
    80004b70:	664080e7          	jalr	1636(ra) # 800021d0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004b74:	00000493          	li	s1,0
    80004b78:	0099ce63          	blt	s3,s1,80004b94 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004b7c:	00008517          	auipc	a0,0x8
    80004b80:	0ec53503          	ld	a0,236(a0) # 8000cc68 <_ZL10waitForAll>
    80004b84:	ffffd097          	auipc	ra,0xffffd
    80004b88:	6d4080e7          	jalr	1748(ra) # 80002258 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004b8c:	0014849b          	addiw	s1,s1,1
    80004b90:	fe9ff06f          	j	80004b78 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004b94:	00008517          	auipc	a0,0x8
    80004b98:	0d453503          	ld	a0,212(a0) # 8000cc68 <_ZL10waitForAll>
    80004b9c:	00050863          	beqz	a0,80004bac <_Z20testConsumerProducerv+0x2f4>
    80004ba0:	00053783          	ld	a5,0(a0)
    80004ba4:	0087b783          	ld	a5,8(a5)
    80004ba8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004bac:	00000493          	li	s1,0
    80004bb0:	0080006f          	j	80004bb8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004bb4:	0014849b          	addiw	s1,s1,1
    80004bb8:	0334d263          	bge	s1,s3,80004bdc <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004bbc:	00349793          	slli	a5,s1,0x3
    80004bc0:	00fa07b3          	add	a5,s4,a5
    80004bc4:	0007b503          	ld	a0,0(a5)
    80004bc8:	fe0506e3          	beqz	a0,80004bb4 <_Z20testConsumerProducerv+0x2fc>
    80004bcc:	00053783          	ld	a5,0(a0)
    80004bd0:	0087b783          	ld	a5,8(a5)
    80004bd4:	000780e7          	jalr	a5
    80004bd8:	fddff06f          	j	80004bb4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004bdc:	000b8a63          	beqz	s7,80004bf0 <_Z20testConsumerProducerv+0x338>
    80004be0:	000bb783          	ld	a5,0(s7)
    80004be4:	0087b783          	ld	a5,8(a5)
    80004be8:	000b8513          	mv	a0,s7
    80004bec:	000780e7          	jalr	a5
    delete buffer;
    80004bf0:	000a8e63          	beqz	s5,80004c0c <_Z20testConsumerProducerv+0x354>
    80004bf4:	000a8513          	mv	a0,s5
    80004bf8:	00002097          	auipc	ra,0x2
    80004bfc:	870080e7          	jalr	-1936(ra) # 80006468 <_ZN9BufferCPPD1Ev>
    80004c00:	000a8513          	mv	a0,s5
    80004c04:	ffffd097          	auipc	ra,0xffffd
    80004c08:	3d8080e7          	jalr	984(ra) # 80001fdc <_ZdlPv>
    80004c0c:	000c0113          	mv	sp,s8
}
    80004c10:	f8040113          	addi	sp,s0,-128
    80004c14:	07813083          	ld	ra,120(sp)
    80004c18:	07013403          	ld	s0,112(sp)
    80004c1c:	06813483          	ld	s1,104(sp)
    80004c20:	06013903          	ld	s2,96(sp)
    80004c24:	05813983          	ld	s3,88(sp)
    80004c28:	05013a03          	ld	s4,80(sp)
    80004c2c:	04813a83          	ld	s5,72(sp)
    80004c30:	04013b03          	ld	s6,64(sp)
    80004c34:	03813b83          	ld	s7,56(sp)
    80004c38:	03013c03          	ld	s8,48(sp)
    80004c3c:	02813c83          	ld	s9,40(sp)
    80004c40:	08010113          	addi	sp,sp,128
    80004c44:	00008067          	ret
    80004c48:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004c4c:	000a8513          	mv	a0,s5
    80004c50:	ffffd097          	auipc	ra,0xffffd
    80004c54:	38c080e7          	jalr	908(ra) # 80001fdc <_ZdlPv>
    80004c58:	00048513          	mv	a0,s1
    80004c5c:	00009097          	auipc	ra,0x9
    80004c60:	10c080e7          	jalr	268(ra) # 8000dd68 <_Unwind_Resume>
    80004c64:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004c68:	00090513          	mv	a0,s2
    80004c6c:	ffffd097          	auipc	ra,0xffffd
    80004c70:	370080e7          	jalr	880(ra) # 80001fdc <_ZdlPv>
    80004c74:	00048513          	mv	a0,s1
    80004c78:	00009097          	auipc	ra,0x9
    80004c7c:	0f0080e7          	jalr	240(ra) # 8000dd68 <_Unwind_Resume>
    80004c80:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004c84:	000b8513          	mv	a0,s7
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	354080e7          	jalr	852(ra) # 80001fdc <_ZdlPv>
    80004c90:	00048513          	mv	a0,s1
    80004c94:	00009097          	auipc	ra,0x9
    80004c98:	0d4080e7          	jalr	212(ra) # 8000dd68 <_Unwind_Resume>
    80004c9c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004ca0:	00048513          	mv	a0,s1
    80004ca4:	ffffd097          	auipc	ra,0xffffd
    80004ca8:	338080e7          	jalr	824(ra) # 80001fdc <_ZdlPv>
    80004cac:	00090513          	mv	a0,s2
    80004cb0:	00009097          	auipc	ra,0x9
    80004cb4:	0b8080e7          	jalr	184(ra) # 8000dd68 <_Unwind_Resume>
    80004cb8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004cbc:	000c8513          	mv	a0,s9
    80004cc0:	ffffd097          	auipc	ra,0xffffd
    80004cc4:	31c080e7          	jalr	796(ra) # 80001fdc <_ZdlPv>
    80004cc8:	00048513          	mv	a0,s1
    80004ccc:	00009097          	auipc	ra,0x9
    80004cd0:	09c080e7          	jalr	156(ra) # 8000dd68 <_Unwind_Resume>

0000000080004cd4 <_ZN8Consumer3runEv>:
    void run() override {
    80004cd4:	fd010113          	addi	sp,sp,-48
    80004cd8:	02113423          	sd	ra,40(sp)
    80004cdc:	02813023          	sd	s0,32(sp)
    80004ce0:	00913c23          	sd	s1,24(sp)
    80004ce4:	01213823          	sd	s2,16(sp)
    80004ce8:	01313423          	sd	s3,8(sp)
    80004cec:	03010413          	addi	s0,sp,48
    80004cf0:	00050913          	mv	s2,a0
        int i = 0;
    80004cf4:	00000993          	li	s3,0
    80004cf8:	0100006f          	j	80004d08 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004cfc:	00a00513          	li	a0,10
    80004d00:	ffffd097          	auipc	ra,0xffffd
    80004d04:	630080e7          	jalr	1584(ra) # 80002330 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004d08:	00008797          	auipc	a5,0x8
    80004d0c:	f587a783          	lw	a5,-168(a5) # 8000cc60 <_ZL9threadEnd>
    80004d10:	04079a63          	bnez	a5,80004d64 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004d14:	02093783          	ld	a5,32(s2)
    80004d18:	0087b503          	ld	a0,8(a5)
    80004d1c:	00001097          	auipc	ra,0x1
    80004d20:	638080e7          	jalr	1592(ra) # 80006354 <_ZN9BufferCPP3getEv>
            i++;
    80004d24:	0019849b          	addiw	s1,s3,1
    80004d28:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004d2c:	0ff57513          	andi	a0,a0,255
    80004d30:	ffffd097          	auipc	ra,0xffffd
    80004d34:	600080e7          	jalr	1536(ra) # 80002330 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004d38:	05000793          	li	a5,80
    80004d3c:	02f4e4bb          	remw	s1,s1,a5
    80004d40:	fc0494e3          	bnez	s1,80004d08 <_ZN8Consumer3runEv+0x34>
    80004d44:	fb9ff06f          	j	80004cfc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004d48:	02093783          	ld	a5,32(s2)
    80004d4c:	0087b503          	ld	a0,8(a5)
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	604080e7          	jalr	1540(ra) # 80006354 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004d58:	0ff57513          	andi	a0,a0,255
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	5d4080e7          	jalr	1492(ra) # 80002330 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004d64:	02093783          	ld	a5,32(s2)
    80004d68:	0087b503          	ld	a0,8(a5)
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	674080e7          	jalr	1652(ra) # 800063e0 <_ZN9BufferCPP6getCntEv>
    80004d74:	fca04ae3          	bgtz	a0,80004d48 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004d78:	02093783          	ld	a5,32(s2)
    80004d7c:	0107b503          	ld	a0,16(a5)
    80004d80:	ffffd097          	auipc	ra,0xffffd
    80004d84:	504080e7          	jalr	1284(ra) # 80002284 <_ZN9Semaphore6signalEv>
    }
    80004d88:	02813083          	ld	ra,40(sp)
    80004d8c:	02013403          	ld	s0,32(sp)
    80004d90:	01813483          	ld	s1,24(sp)
    80004d94:	01013903          	ld	s2,16(sp)
    80004d98:	00813983          	ld	s3,8(sp)
    80004d9c:	03010113          	addi	sp,sp,48
    80004da0:	00008067          	ret

0000000080004da4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004da4:	ff010113          	addi	sp,sp,-16
    80004da8:	00113423          	sd	ra,8(sp)
    80004dac:	00813023          	sd	s0,0(sp)
    80004db0:	01010413          	addi	s0,sp,16
    80004db4:	00008797          	auipc	a5,0x8
    80004db8:	ccc78793          	addi	a5,a5,-820 # 8000ca80 <_ZTV8Consumer+0x10>
    80004dbc:	00f53023          	sd	a5,0(a0)
    80004dc0:	ffffd097          	auipc	ra,0xffffd
    80004dc4:	2ac080e7          	jalr	684(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004dc8:	00813083          	ld	ra,8(sp)
    80004dcc:	00013403          	ld	s0,0(sp)
    80004dd0:	01010113          	addi	sp,sp,16
    80004dd4:	00008067          	ret

0000000080004dd8 <_ZN8ConsumerD0Ev>:
    80004dd8:	fe010113          	addi	sp,sp,-32
    80004ddc:	00113c23          	sd	ra,24(sp)
    80004de0:	00813823          	sd	s0,16(sp)
    80004de4:	00913423          	sd	s1,8(sp)
    80004de8:	02010413          	addi	s0,sp,32
    80004dec:	00050493          	mv	s1,a0
    80004df0:	00008797          	auipc	a5,0x8
    80004df4:	c9078793          	addi	a5,a5,-880 # 8000ca80 <_ZTV8Consumer+0x10>
    80004df8:	00f53023          	sd	a5,0(a0)
    80004dfc:	ffffd097          	auipc	ra,0xffffd
    80004e00:	270080e7          	jalr	624(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004e04:	00048513          	mv	a0,s1
    80004e08:	ffffd097          	auipc	ra,0xffffd
    80004e0c:	1d4080e7          	jalr	468(ra) # 80001fdc <_ZdlPv>
    80004e10:	01813083          	ld	ra,24(sp)
    80004e14:	01013403          	ld	s0,16(sp)
    80004e18:	00813483          	ld	s1,8(sp)
    80004e1c:	02010113          	addi	sp,sp,32
    80004e20:	00008067          	ret

0000000080004e24 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004e24:	ff010113          	addi	sp,sp,-16
    80004e28:	00113423          	sd	ra,8(sp)
    80004e2c:	00813023          	sd	s0,0(sp)
    80004e30:	01010413          	addi	s0,sp,16
    80004e34:	00008797          	auipc	a5,0x8
    80004e38:	bfc78793          	addi	a5,a5,-1028 # 8000ca30 <_ZTV16ProducerKeyborad+0x10>
    80004e3c:	00f53023          	sd	a5,0(a0)
    80004e40:	ffffd097          	auipc	ra,0xffffd
    80004e44:	22c080e7          	jalr	556(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004e48:	00813083          	ld	ra,8(sp)
    80004e4c:	00013403          	ld	s0,0(sp)
    80004e50:	01010113          	addi	sp,sp,16
    80004e54:	00008067          	ret

0000000080004e58 <_ZN16ProducerKeyboradD0Ev>:
    80004e58:	fe010113          	addi	sp,sp,-32
    80004e5c:	00113c23          	sd	ra,24(sp)
    80004e60:	00813823          	sd	s0,16(sp)
    80004e64:	00913423          	sd	s1,8(sp)
    80004e68:	02010413          	addi	s0,sp,32
    80004e6c:	00050493          	mv	s1,a0
    80004e70:	00008797          	auipc	a5,0x8
    80004e74:	bc078793          	addi	a5,a5,-1088 # 8000ca30 <_ZTV16ProducerKeyborad+0x10>
    80004e78:	00f53023          	sd	a5,0(a0)
    80004e7c:	ffffd097          	auipc	ra,0xffffd
    80004e80:	1f0080e7          	jalr	496(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004e84:	00048513          	mv	a0,s1
    80004e88:	ffffd097          	auipc	ra,0xffffd
    80004e8c:	154080e7          	jalr	340(ra) # 80001fdc <_ZdlPv>
    80004e90:	01813083          	ld	ra,24(sp)
    80004e94:	01013403          	ld	s0,16(sp)
    80004e98:	00813483          	ld	s1,8(sp)
    80004e9c:	02010113          	addi	sp,sp,32
    80004ea0:	00008067          	ret

0000000080004ea4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004ea4:	ff010113          	addi	sp,sp,-16
    80004ea8:	00113423          	sd	ra,8(sp)
    80004eac:	00813023          	sd	s0,0(sp)
    80004eb0:	01010413          	addi	s0,sp,16
    80004eb4:	00008797          	auipc	a5,0x8
    80004eb8:	ba478793          	addi	a5,a5,-1116 # 8000ca58 <_ZTV8Producer+0x10>
    80004ebc:	00f53023          	sd	a5,0(a0)
    80004ec0:	ffffd097          	auipc	ra,0xffffd
    80004ec4:	1ac080e7          	jalr	428(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004ec8:	00813083          	ld	ra,8(sp)
    80004ecc:	00013403          	ld	s0,0(sp)
    80004ed0:	01010113          	addi	sp,sp,16
    80004ed4:	00008067          	ret

0000000080004ed8 <_ZN8ProducerD0Ev>:
    80004ed8:	fe010113          	addi	sp,sp,-32
    80004edc:	00113c23          	sd	ra,24(sp)
    80004ee0:	00813823          	sd	s0,16(sp)
    80004ee4:	00913423          	sd	s1,8(sp)
    80004ee8:	02010413          	addi	s0,sp,32
    80004eec:	00050493          	mv	s1,a0
    80004ef0:	00008797          	auipc	a5,0x8
    80004ef4:	b6878793          	addi	a5,a5,-1176 # 8000ca58 <_ZTV8Producer+0x10>
    80004ef8:	00f53023          	sd	a5,0(a0)
    80004efc:	ffffd097          	auipc	ra,0xffffd
    80004f00:	170080e7          	jalr	368(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004f04:	00048513          	mv	a0,s1
    80004f08:	ffffd097          	auipc	ra,0xffffd
    80004f0c:	0d4080e7          	jalr	212(ra) # 80001fdc <_ZdlPv>
    80004f10:	01813083          	ld	ra,24(sp)
    80004f14:	01013403          	ld	s0,16(sp)
    80004f18:	00813483          	ld	s1,8(sp)
    80004f1c:	02010113          	addi	sp,sp,32
    80004f20:	00008067          	ret

0000000080004f24 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004f24:	fe010113          	addi	sp,sp,-32
    80004f28:	00113c23          	sd	ra,24(sp)
    80004f2c:	00813823          	sd	s0,16(sp)
    80004f30:	00913423          	sd	s1,8(sp)
    80004f34:	02010413          	addi	s0,sp,32
    80004f38:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004f3c:	ffffd097          	auipc	ra,0xffffd
    80004f40:	aa0080e7          	jalr	-1376(ra) # 800019dc <_Z4getcv>
    80004f44:	0005059b          	sext.w	a1,a0
    80004f48:	01b00793          	li	a5,27
    80004f4c:	00f58c63          	beq	a1,a5,80004f64 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004f50:	0204b783          	ld	a5,32(s1)
    80004f54:	0087b503          	ld	a0,8(a5)
    80004f58:	00001097          	auipc	ra,0x1
    80004f5c:	36c080e7          	jalr	876(ra) # 800062c4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004f60:	fddff06f          	j	80004f3c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004f64:	00100793          	li	a5,1
    80004f68:	00008717          	auipc	a4,0x8
    80004f6c:	cef72c23          	sw	a5,-776(a4) # 8000cc60 <_ZL9threadEnd>
        td->buffer->put('!');
    80004f70:	0204b783          	ld	a5,32(s1)
    80004f74:	02100593          	li	a1,33
    80004f78:	0087b503          	ld	a0,8(a5)
    80004f7c:	00001097          	auipc	ra,0x1
    80004f80:	348080e7          	jalr	840(ra) # 800062c4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004f84:	0204b783          	ld	a5,32(s1)
    80004f88:	0107b503          	ld	a0,16(a5)
    80004f8c:	ffffd097          	auipc	ra,0xffffd
    80004f90:	2f8080e7          	jalr	760(ra) # 80002284 <_ZN9Semaphore6signalEv>
    }
    80004f94:	01813083          	ld	ra,24(sp)
    80004f98:	01013403          	ld	s0,16(sp)
    80004f9c:	00813483          	ld	s1,8(sp)
    80004fa0:	02010113          	addi	sp,sp,32
    80004fa4:	00008067          	ret

0000000080004fa8 <_ZN8Producer3runEv>:
    void run() override {
    80004fa8:	fe010113          	addi	sp,sp,-32
    80004fac:	00113c23          	sd	ra,24(sp)
    80004fb0:	00813823          	sd	s0,16(sp)
    80004fb4:	00913423          	sd	s1,8(sp)
    80004fb8:	01213023          	sd	s2,0(sp)
    80004fbc:	02010413          	addi	s0,sp,32
    80004fc0:	00050493          	mv	s1,a0
        int i = 0;
    80004fc4:	00000913          	li	s2,0
        while (!threadEnd) {
    80004fc8:	00008797          	auipc	a5,0x8
    80004fcc:	c987a783          	lw	a5,-872(a5) # 8000cc60 <_ZL9threadEnd>
    80004fd0:	04079263          	bnez	a5,80005014 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004fd4:	0204b783          	ld	a5,32(s1)
    80004fd8:	0007a583          	lw	a1,0(a5)
    80004fdc:	0305859b          	addiw	a1,a1,48
    80004fe0:	0087b503          	ld	a0,8(a5)
    80004fe4:	00001097          	auipc	ra,0x1
    80004fe8:	2e0080e7          	jalr	736(ra) # 800062c4 <_ZN9BufferCPP3putEi>
            i++;
    80004fec:	0019071b          	addiw	a4,s2,1
    80004ff0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004ff4:	0204b783          	ld	a5,32(s1)
    80004ff8:	0007a783          	lw	a5,0(a5)
    80004ffc:	00e787bb          	addw	a5,a5,a4
    80005000:	00500513          	li	a0,5
    80005004:	02a7e53b          	remw	a0,a5,a0
    80005008:	ffffd097          	auipc	ra,0xffffd
    8000500c:	1f0080e7          	jalr	496(ra) # 800021f8 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80005010:	fb9ff06f          	j	80004fc8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80005014:	0204b783          	ld	a5,32(s1)
    80005018:	0107b503          	ld	a0,16(a5)
    8000501c:	ffffd097          	auipc	ra,0xffffd
    80005020:	268080e7          	jalr	616(ra) # 80002284 <_ZN9Semaphore6signalEv>
    }
    80005024:	01813083          	ld	ra,24(sp)
    80005028:	01013403          	ld	s0,16(sp)
    8000502c:	00813483          	ld	s1,8(sp)
    80005030:	00013903          	ld	s2,0(sp)
    80005034:	02010113          	addi	sp,sp,32
    80005038:	00008067          	ret

000000008000503c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000503c:	fe010113          	addi	sp,sp,-32
    80005040:	00113c23          	sd	ra,24(sp)
    80005044:	00813823          	sd	s0,16(sp)
    80005048:	00913423          	sd	s1,8(sp)
    8000504c:	01213023          	sd	s2,0(sp)
    80005050:	02010413          	addi	s0,sp,32
    80005054:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005058:	00100793          	li	a5,1
    8000505c:	02a7f863          	bgeu	a5,a0,8000508c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005060:	00a00793          	li	a5,10
    80005064:	02f577b3          	remu	a5,a0,a5
    80005068:	02078e63          	beqz	a5,800050a4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000506c:	fff48513          	addi	a0,s1,-1
    80005070:	00000097          	auipc	ra,0x0
    80005074:	fcc080e7          	jalr	-52(ra) # 8000503c <_ZL9fibonaccim>
    80005078:	00050913          	mv	s2,a0
    8000507c:	ffe48513          	addi	a0,s1,-2
    80005080:	00000097          	auipc	ra,0x0
    80005084:	fbc080e7          	jalr	-68(ra) # 8000503c <_ZL9fibonaccim>
    80005088:	00a90533          	add	a0,s2,a0
}
    8000508c:	01813083          	ld	ra,24(sp)
    80005090:	01013403          	ld	s0,16(sp)
    80005094:	00813483          	ld	s1,8(sp)
    80005098:	00013903          	ld	s2,0(sp)
    8000509c:	02010113          	addi	sp,sp,32
    800050a0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800050a4:	ffffc097          	auipc	ra,0xffffc
    800050a8:	630080e7          	jalr	1584(ra) # 800016d4 <_Z15thread_dispatchv>
    800050ac:	fc1ff06f          	j	8000506c <_ZL9fibonaccim+0x30>

00000000800050b0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800050b0:	fe010113          	addi	sp,sp,-32
    800050b4:	00113c23          	sd	ra,24(sp)
    800050b8:	00813823          	sd	s0,16(sp)
    800050bc:	00913423          	sd	s1,8(sp)
    800050c0:	01213023          	sd	s2,0(sp)
    800050c4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800050c8:	00a00493          	li	s1,10
    800050cc:	0400006f          	j	8000510c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800050d0:	00005517          	auipc	a0,0x5
    800050d4:	1e850513          	addi	a0,a0,488 # 8000a2b8 <_ZZ15printIntegerMojmE6digits+0x158>
    800050d8:	00001097          	auipc	ra,0x1
    800050dc:	dc8080e7          	jalr	-568(ra) # 80005ea0 <_Z11printStringPKc>
    800050e0:	00000613          	li	a2,0
    800050e4:	00a00593          	li	a1,10
    800050e8:	00048513          	mv	a0,s1
    800050ec:	00001097          	auipc	ra,0x1
    800050f0:	f64080e7          	jalr	-156(ra) # 80006050 <_Z8printIntiii>
    800050f4:	00005517          	auipc	a0,0x5
    800050f8:	3b450513          	addi	a0,a0,948 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800050fc:	00001097          	auipc	ra,0x1
    80005100:	da4080e7          	jalr	-604(ra) # 80005ea0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005104:	0014849b          	addiw	s1,s1,1
    80005108:	0ff4f493          	andi	s1,s1,255
    8000510c:	00c00793          	li	a5,12
    80005110:	fc97f0e3          	bgeu	a5,s1,800050d0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005114:	00005517          	auipc	a0,0x5
    80005118:	1ac50513          	addi	a0,a0,428 # 8000a2c0 <_ZZ15printIntegerMojmE6digits+0x160>
    8000511c:	00001097          	auipc	ra,0x1
    80005120:	d84080e7          	jalr	-636(ra) # 80005ea0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005124:	00500313          	li	t1,5
    thread_dispatch();
    80005128:	ffffc097          	auipc	ra,0xffffc
    8000512c:	5ac080e7          	jalr	1452(ra) # 800016d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005130:	01000513          	li	a0,16
    80005134:	00000097          	auipc	ra,0x0
    80005138:	f08080e7          	jalr	-248(ra) # 8000503c <_ZL9fibonaccim>
    8000513c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005140:	00005517          	auipc	a0,0x5
    80005144:	19050513          	addi	a0,a0,400 # 8000a2d0 <_ZZ15printIntegerMojmE6digits+0x170>
    80005148:	00001097          	auipc	ra,0x1
    8000514c:	d58080e7          	jalr	-680(ra) # 80005ea0 <_Z11printStringPKc>
    80005150:	00000613          	li	a2,0
    80005154:	00a00593          	li	a1,10
    80005158:	0009051b          	sext.w	a0,s2
    8000515c:	00001097          	auipc	ra,0x1
    80005160:	ef4080e7          	jalr	-268(ra) # 80006050 <_Z8printIntiii>
    80005164:	00005517          	auipc	a0,0x5
    80005168:	34450513          	addi	a0,a0,836 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    8000516c:	00001097          	auipc	ra,0x1
    80005170:	d34080e7          	jalr	-716(ra) # 80005ea0 <_Z11printStringPKc>
    80005174:	0400006f          	j	800051b4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005178:	00005517          	auipc	a0,0x5
    8000517c:	14050513          	addi	a0,a0,320 # 8000a2b8 <_ZZ15printIntegerMojmE6digits+0x158>
    80005180:	00001097          	auipc	ra,0x1
    80005184:	d20080e7          	jalr	-736(ra) # 80005ea0 <_Z11printStringPKc>
    80005188:	00000613          	li	a2,0
    8000518c:	00a00593          	li	a1,10
    80005190:	00048513          	mv	a0,s1
    80005194:	00001097          	auipc	ra,0x1
    80005198:	ebc080e7          	jalr	-324(ra) # 80006050 <_Z8printIntiii>
    8000519c:	00005517          	auipc	a0,0x5
    800051a0:	30c50513          	addi	a0,a0,780 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800051a4:	00001097          	auipc	ra,0x1
    800051a8:	cfc080e7          	jalr	-772(ra) # 80005ea0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800051ac:	0014849b          	addiw	s1,s1,1
    800051b0:	0ff4f493          	andi	s1,s1,255
    800051b4:	00f00793          	li	a5,15
    800051b8:	fc97f0e3          	bgeu	a5,s1,80005178 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800051bc:	00005517          	auipc	a0,0x5
    800051c0:	12450513          	addi	a0,a0,292 # 8000a2e0 <_ZZ15printIntegerMojmE6digits+0x180>
    800051c4:	00001097          	auipc	ra,0x1
    800051c8:	cdc080e7          	jalr	-804(ra) # 80005ea0 <_Z11printStringPKc>
    finishedD = true;
    800051cc:	00100793          	li	a5,1
    800051d0:	00008717          	auipc	a4,0x8
    800051d4:	aaf70023          	sb	a5,-1376(a4) # 8000cc70 <_ZL9finishedD>
    thread_dispatch();
    800051d8:	ffffc097          	auipc	ra,0xffffc
    800051dc:	4fc080e7          	jalr	1276(ra) # 800016d4 <_Z15thread_dispatchv>
}
    800051e0:	01813083          	ld	ra,24(sp)
    800051e4:	01013403          	ld	s0,16(sp)
    800051e8:	00813483          	ld	s1,8(sp)
    800051ec:	00013903          	ld	s2,0(sp)
    800051f0:	02010113          	addi	sp,sp,32
    800051f4:	00008067          	ret

00000000800051f8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800051f8:	fe010113          	addi	sp,sp,-32
    800051fc:	00113c23          	sd	ra,24(sp)
    80005200:	00813823          	sd	s0,16(sp)
    80005204:	00913423          	sd	s1,8(sp)
    80005208:	01213023          	sd	s2,0(sp)
    8000520c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005210:	00000493          	li	s1,0
    80005214:	0400006f          	j	80005254 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005218:	00005517          	auipc	a0,0x5
    8000521c:	07050513          	addi	a0,a0,112 # 8000a288 <_ZZ15printIntegerMojmE6digits+0x128>
    80005220:	00001097          	auipc	ra,0x1
    80005224:	c80080e7          	jalr	-896(ra) # 80005ea0 <_Z11printStringPKc>
    80005228:	00000613          	li	a2,0
    8000522c:	00a00593          	li	a1,10
    80005230:	00048513          	mv	a0,s1
    80005234:	00001097          	auipc	ra,0x1
    80005238:	e1c080e7          	jalr	-484(ra) # 80006050 <_Z8printIntiii>
    8000523c:	00005517          	auipc	a0,0x5
    80005240:	26c50513          	addi	a0,a0,620 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80005244:	00001097          	auipc	ra,0x1
    80005248:	c5c080e7          	jalr	-932(ra) # 80005ea0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000524c:	0014849b          	addiw	s1,s1,1
    80005250:	0ff4f493          	andi	s1,s1,255
    80005254:	00200793          	li	a5,2
    80005258:	fc97f0e3          	bgeu	a5,s1,80005218 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000525c:	00005517          	auipc	a0,0x5
    80005260:	03450513          	addi	a0,a0,52 # 8000a290 <_ZZ15printIntegerMojmE6digits+0x130>
    80005264:	00001097          	auipc	ra,0x1
    80005268:	c3c080e7          	jalr	-964(ra) # 80005ea0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000526c:	00700313          	li	t1,7
    thread_dispatch();
    80005270:	ffffc097          	auipc	ra,0xffffc
    80005274:	464080e7          	jalr	1124(ra) # 800016d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005278:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000527c:	00005517          	auipc	a0,0x5
    80005280:	02450513          	addi	a0,a0,36 # 8000a2a0 <_ZZ15printIntegerMojmE6digits+0x140>
    80005284:	00001097          	auipc	ra,0x1
    80005288:	c1c080e7          	jalr	-996(ra) # 80005ea0 <_Z11printStringPKc>
    8000528c:	00000613          	li	a2,0
    80005290:	00a00593          	li	a1,10
    80005294:	0009051b          	sext.w	a0,s2
    80005298:	00001097          	auipc	ra,0x1
    8000529c:	db8080e7          	jalr	-584(ra) # 80006050 <_Z8printIntiii>
    800052a0:	00005517          	auipc	a0,0x5
    800052a4:	20850513          	addi	a0,a0,520 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800052a8:	00001097          	auipc	ra,0x1
    800052ac:	bf8080e7          	jalr	-1032(ra) # 80005ea0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800052b0:	00c00513          	li	a0,12
    800052b4:	00000097          	auipc	ra,0x0
    800052b8:	d88080e7          	jalr	-632(ra) # 8000503c <_ZL9fibonaccim>
    800052bc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800052c0:	00005517          	auipc	a0,0x5
    800052c4:	fe850513          	addi	a0,a0,-24 # 8000a2a8 <_ZZ15printIntegerMojmE6digits+0x148>
    800052c8:	00001097          	auipc	ra,0x1
    800052cc:	bd8080e7          	jalr	-1064(ra) # 80005ea0 <_Z11printStringPKc>
    800052d0:	00000613          	li	a2,0
    800052d4:	00a00593          	li	a1,10
    800052d8:	0009051b          	sext.w	a0,s2
    800052dc:	00001097          	auipc	ra,0x1
    800052e0:	d74080e7          	jalr	-652(ra) # 80006050 <_Z8printIntiii>
    800052e4:	00005517          	auipc	a0,0x5
    800052e8:	1c450513          	addi	a0,a0,452 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800052ec:	00001097          	auipc	ra,0x1
    800052f0:	bb4080e7          	jalr	-1100(ra) # 80005ea0 <_Z11printStringPKc>
    800052f4:	0400006f          	j	80005334 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800052f8:	00005517          	auipc	a0,0x5
    800052fc:	f9050513          	addi	a0,a0,-112 # 8000a288 <_ZZ15printIntegerMojmE6digits+0x128>
    80005300:	00001097          	auipc	ra,0x1
    80005304:	ba0080e7          	jalr	-1120(ra) # 80005ea0 <_Z11printStringPKc>
    80005308:	00000613          	li	a2,0
    8000530c:	00a00593          	li	a1,10
    80005310:	00048513          	mv	a0,s1
    80005314:	00001097          	auipc	ra,0x1
    80005318:	d3c080e7          	jalr	-708(ra) # 80006050 <_Z8printIntiii>
    8000531c:	00005517          	auipc	a0,0x5
    80005320:	18c50513          	addi	a0,a0,396 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80005324:	00001097          	auipc	ra,0x1
    80005328:	b7c080e7          	jalr	-1156(ra) # 80005ea0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000532c:	0014849b          	addiw	s1,s1,1
    80005330:	0ff4f493          	andi	s1,s1,255
    80005334:	00500793          	li	a5,5
    80005338:	fc97f0e3          	bgeu	a5,s1,800052f8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000533c:	00005517          	auipc	a0,0x5
    80005340:	f2450513          	addi	a0,a0,-220 # 8000a260 <_ZZ15printIntegerMojmE6digits+0x100>
    80005344:	00001097          	auipc	ra,0x1
    80005348:	b5c080e7          	jalr	-1188(ra) # 80005ea0 <_Z11printStringPKc>
    finishedC = true;
    8000534c:	00100793          	li	a5,1
    80005350:	00008717          	auipc	a4,0x8
    80005354:	92f700a3          	sb	a5,-1759(a4) # 8000cc71 <_ZL9finishedC>
    thread_dispatch();
    80005358:	ffffc097          	auipc	ra,0xffffc
    8000535c:	37c080e7          	jalr	892(ra) # 800016d4 <_Z15thread_dispatchv>
}
    80005360:	01813083          	ld	ra,24(sp)
    80005364:	01013403          	ld	s0,16(sp)
    80005368:	00813483          	ld	s1,8(sp)
    8000536c:	00013903          	ld	s2,0(sp)
    80005370:	02010113          	addi	sp,sp,32
    80005374:	00008067          	ret

0000000080005378 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005378:	fe010113          	addi	sp,sp,-32
    8000537c:	00113c23          	sd	ra,24(sp)
    80005380:	00813823          	sd	s0,16(sp)
    80005384:	00913423          	sd	s1,8(sp)
    80005388:	01213023          	sd	s2,0(sp)
    8000538c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005390:	00000913          	li	s2,0
    80005394:	0380006f          	j	800053cc <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005398:	ffffc097          	auipc	ra,0xffffc
    8000539c:	33c080e7          	jalr	828(ra) # 800016d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800053a0:	00148493          	addi	s1,s1,1
    800053a4:	000027b7          	lui	a5,0x2
    800053a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800053ac:	0097ee63          	bltu	a5,s1,800053c8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800053b0:	00000713          	li	a4,0
    800053b4:	000077b7          	lui	a5,0x7
    800053b8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800053bc:	fce7eee3          	bltu	a5,a4,80005398 <_ZL11workerBodyBPv+0x20>
    800053c0:	00170713          	addi	a4,a4,1
    800053c4:	ff1ff06f          	j	800053b4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800053c8:	00190913          	addi	s2,s2,1
    800053cc:	00f00793          	li	a5,15
    800053d0:	0527e063          	bltu	a5,s2,80005410 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800053d4:	00005517          	auipc	a0,0x5
    800053d8:	e9c50513          	addi	a0,a0,-356 # 8000a270 <_ZZ15printIntegerMojmE6digits+0x110>
    800053dc:	00001097          	auipc	ra,0x1
    800053e0:	ac4080e7          	jalr	-1340(ra) # 80005ea0 <_Z11printStringPKc>
    800053e4:	00000613          	li	a2,0
    800053e8:	00a00593          	li	a1,10
    800053ec:	0009051b          	sext.w	a0,s2
    800053f0:	00001097          	auipc	ra,0x1
    800053f4:	c60080e7          	jalr	-928(ra) # 80006050 <_Z8printIntiii>
    800053f8:	00005517          	auipc	a0,0x5
    800053fc:	0b050513          	addi	a0,a0,176 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80005400:	00001097          	auipc	ra,0x1
    80005404:	aa0080e7          	jalr	-1376(ra) # 80005ea0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005408:	00000493          	li	s1,0
    8000540c:	f99ff06f          	j	800053a4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005410:	00005517          	auipc	a0,0x5
    80005414:	e6850513          	addi	a0,a0,-408 # 8000a278 <_ZZ15printIntegerMojmE6digits+0x118>
    80005418:	00001097          	auipc	ra,0x1
    8000541c:	a88080e7          	jalr	-1400(ra) # 80005ea0 <_Z11printStringPKc>
    finishedB = true;
    80005420:	00100793          	li	a5,1
    80005424:	00008717          	auipc	a4,0x8
    80005428:	84f70723          	sb	a5,-1970(a4) # 8000cc72 <_ZL9finishedB>
    thread_dispatch();
    8000542c:	ffffc097          	auipc	ra,0xffffc
    80005430:	2a8080e7          	jalr	680(ra) # 800016d4 <_Z15thread_dispatchv>
}
    80005434:	01813083          	ld	ra,24(sp)
    80005438:	01013403          	ld	s0,16(sp)
    8000543c:	00813483          	ld	s1,8(sp)
    80005440:	00013903          	ld	s2,0(sp)
    80005444:	02010113          	addi	sp,sp,32
    80005448:	00008067          	ret

000000008000544c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000544c:	fe010113          	addi	sp,sp,-32
    80005450:	00113c23          	sd	ra,24(sp)
    80005454:	00813823          	sd	s0,16(sp)
    80005458:	00913423          	sd	s1,8(sp)
    8000545c:	01213023          	sd	s2,0(sp)
    80005460:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005464:	00000913          	li	s2,0
    80005468:	0380006f          	j	800054a0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000546c:	ffffc097          	auipc	ra,0xffffc
    80005470:	268080e7          	jalr	616(ra) # 800016d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005474:	00148493          	addi	s1,s1,1
    80005478:	000027b7          	lui	a5,0x2
    8000547c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005480:	0097ee63          	bltu	a5,s1,8000549c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005484:	00000713          	li	a4,0
    80005488:	000077b7          	lui	a5,0x7
    8000548c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005490:	fce7eee3          	bltu	a5,a4,8000546c <_ZL11workerBodyAPv+0x20>
    80005494:	00170713          	addi	a4,a4,1
    80005498:	ff1ff06f          	j	80005488 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000549c:	00190913          	addi	s2,s2,1
    800054a0:	00900793          	li	a5,9
    800054a4:	0527e063          	bltu	a5,s2,800054e4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800054a8:	00005517          	auipc	a0,0x5
    800054ac:	db050513          	addi	a0,a0,-592 # 8000a258 <_ZZ15printIntegerMojmE6digits+0xf8>
    800054b0:	00001097          	auipc	ra,0x1
    800054b4:	9f0080e7          	jalr	-1552(ra) # 80005ea0 <_Z11printStringPKc>
    800054b8:	00000613          	li	a2,0
    800054bc:	00a00593          	li	a1,10
    800054c0:	0009051b          	sext.w	a0,s2
    800054c4:	00001097          	auipc	ra,0x1
    800054c8:	b8c080e7          	jalr	-1140(ra) # 80006050 <_Z8printIntiii>
    800054cc:	00005517          	auipc	a0,0x5
    800054d0:	fdc50513          	addi	a0,a0,-36 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800054d4:	00001097          	auipc	ra,0x1
    800054d8:	9cc080e7          	jalr	-1588(ra) # 80005ea0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800054dc:	00000493          	li	s1,0
    800054e0:	f99ff06f          	j	80005478 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800054e4:	00005517          	auipc	a0,0x5
    800054e8:	d7c50513          	addi	a0,a0,-644 # 8000a260 <_ZZ15printIntegerMojmE6digits+0x100>
    800054ec:	00001097          	auipc	ra,0x1
    800054f0:	9b4080e7          	jalr	-1612(ra) # 80005ea0 <_Z11printStringPKc>
    finishedA = true;
    800054f4:	00100793          	li	a5,1
    800054f8:	00007717          	auipc	a4,0x7
    800054fc:	76f70da3          	sb	a5,1915(a4) # 8000cc73 <_ZL9finishedA>
}
    80005500:	01813083          	ld	ra,24(sp)
    80005504:	01013403          	ld	s0,16(sp)
    80005508:	00813483          	ld	s1,8(sp)
    8000550c:	00013903          	ld	s2,0(sp)
    80005510:	02010113          	addi	sp,sp,32
    80005514:	00008067          	ret

0000000080005518 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005518:	fd010113          	addi	sp,sp,-48
    8000551c:	02113423          	sd	ra,40(sp)
    80005520:	02813023          	sd	s0,32(sp)
    80005524:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005528:	00000613          	li	a2,0
    8000552c:	00000597          	auipc	a1,0x0
    80005530:	f2058593          	addi	a1,a1,-224 # 8000544c <_ZL11workerBodyAPv>
    80005534:	fd040513          	addi	a0,s0,-48
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	0a4080e7          	jalr	164(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005540:	00005517          	auipc	a0,0x5
    80005544:	db050513          	addi	a0,a0,-592 # 8000a2f0 <_ZZ15printIntegerMojmE6digits+0x190>
    80005548:	00001097          	auipc	ra,0x1
    8000554c:	958080e7          	jalr	-1704(ra) # 80005ea0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005550:	00000613          	li	a2,0
    80005554:	00000597          	auipc	a1,0x0
    80005558:	e2458593          	addi	a1,a1,-476 # 80005378 <_ZL11workerBodyBPv>
    8000555c:	fd840513          	addi	a0,s0,-40
    80005560:	ffffc097          	auipc	ra,0xffffc
    80005564:	07c080e7          	jalr	124(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005568:	00005517          	auipc	a0,0x5
    8000556c:	da050513          	addi	a0,a0,-608 # 8000a308 <_ZZ15printIntegerMojmE6digits+0x1a8>
    80005570:	00001097          	auipc	ra,0x1
    80005574:	930080e7          	jalr	-1744(ra) # 80005ea0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005578:	00000613          	li	a2,0
    8000557c:	00000597          	auipc	a1,0x0
    80005580:	c7c58593          	addi	a1,a1,-900 # 800051f8 <_ZL11workerBodyCPv>
    80005584:	fe040513          	addi	a0,s0,-32
    80005588:	ffffc097          	auipc	ra,0xffffc
    8000558c:	054080e7          	jalr	84(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005590:	00005517          	auipc	a0,0x5
    80005594:	d9050513          	addi	a0,a0,-624 # 8000a320 <_ZZ15printIntegerMojmE6digits+0x1c0>
    80005598:	00001097          	auipc	ra,0x1
    8000559c:	908080e7          	jalr	-1784(ra) # 80005ea0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800055a0:	00000613          	li	a2,0
    800055a4:	00000597          	auipc	a1,0x0
    800055a8:	b0c58593          	addi	a1,a1,-1268 # 800050b0 <_ZL11workerBodyDPv>
    800055ac:	fe840513          	addi	a0,s0,-24
    800055b0:	ffffc097          	auipc	ra,0xffffc
    800055b4:	02c080e7          	jalr	44(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800055b8:	00005517          	auipc	a0,0x5
    800055bc:	d8050513          	addi	a0,a0,-640 # 8000a338 <_ZZ15printIntegerMojmE6digits+0x1d8>
    800055c0:	00001097          	auipc	ra,0x1
    800055c4:	8e0080e7          	jalr	-1824(ra) # 80005ea0 <_Z11printStringPKc>
    800055c8:	00c0006f          	j	800055d4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800055cc:	ffffc097          	auipc	ra,0xffffc
    800055d0:	108080e7          	jalr	264(ra) # 800016d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800055d4:	00007797          	auipc	a5,0x7
    800055d8:	69f7c783          	lbu	a5,1695(a5) # 8000cc73 <_ZL9finishedA>
    800055dc:	fe0788e3          	beqz	a5,800055cc <_Z18Threads_C_API_testv+0xb4>
    800055e0:	00007797          	auipc	a5,0x7
    800055e4:	6927c783          	lbu	a5,1682(a5) # 8000cc72 <_ZL9finishedB>
    800055e8:	fe0782e3          	beqz	a5,800055cc <_Z18Threads_C_API_testv+0xb4>
    800055ec:	00007797          	auipc	a5,0x7
    800055f0:	6857c783          	lbu	a5,1669(a5) # 8000cc71 <_ZL9finishedC>
    800055f4:	fc078ce3          	beqz	a5,800055cc <_Z18Threads_C_API_testv+0xb4>
    800055f8:	00007797          	auipc	a5,0x7
    800055fc:	6787c783          	lbu	a5,1656(a5) # 8000cc70 <_ZL9finishedD>
    80005600:	fc0786e3          	beqz	a5,800055cc <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005604:	02813083          	ld	ra,40(sp)
    80005608:	02013403          	ld	s0,32(sp)
    8000560c:	03010113          	addi	sp,sp,48
    80005610:	00008067          	ret

0000000080005614 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005614:	fd010113          	addi	sp,sp,-48
    80005618:	02113423          	sd	ra,40(sp)
    8000561c:	02813023          	sd	s0,32(sp)
    80005620:	00913c23          	sd	s1,24(sp)
    80005624:	01213823          	sd	s2,16(sp)
    80005628:	01313423          	sd	s3,8(sp)
    8000562c:	03010413          	addi	s0,sp,48
    80005630:	00050993          	mv	s3,a0
    80005634:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005638:	00000913          	li	s2,0
    8000563c:	00c0006f          	j	80005648 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005640:	ffffd097          	auipc	ra,0xffffd
    80005644:	b90080e7          	jalr	-1136(ra) # 800021d0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005648:	ffffc097          	auipc	ra,0xffffc
    8000564c:	394080e7          	jalr	916(ra) # 800019dc <_Z4getcv>
    80005650:	0005059b          	sext.w	a1,a0
    80005654:	01b00793          	li	a5,27
    80005658:	02f58a63          	beq	a1,a5,8000568c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000565c:	0084b503          	ld	a0,8(s1)
    80005660:	00001097          	auipc	ra,0x1
    80005664:	c64080e7          	jalr	-924(ra) # 800062c4 <_ZN9BufferCPP3putEi>
        i++;
    80005668:	0019071b          	addiw	a4,s2,1
    8000566c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005670:	0004a683          	lw	a3,0(s1)
    80005674:	0026979b          	slliw	a5,a3,0x2
    80005678:	00d787bb          	addw	a5,a5,a3
    8000567c:	0017979b          	slliw	a5,a5,0x1
    80005680:	02f767bb          	remw	a5,a4,a5
    80005684:	fc0792e3          	bnez	a5,80005648 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005688:	fb9ff06f          	j	80005640 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000568c:	00100793          	li	a5,1
    80005690:	00007717          	auipc	a4,0x7
    80005694:	5ef72423          	sw	a5,1512(a4) # 8000cc78 <_ZL9threadEnd>
    td->buffer->put('!');
    80005698:	0209b783          	ld	a5,32(s3)
    8000569c:	02100593          	li	a1,33
    800056a0:	0087b503          	ld	a0,8(a5)
    800056a4:	00001097          	auipc	ra,0x1
    800056a8:	c20080e7          	jalr	-992(ra) # 800062c4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800056ac:	0104b503          	ld	a0,16(s1)
    800056b0:	ffffd097          	auipc	ra,0xffffd
    800056b4:	bd4080e7          	jalr	-1068(ra) # 80002284 <_ZN9Semaphore6signalEv>
}
    800056b8:	02813083          	ld	ra,40(sp)
    800056bc:	02013403          	ld	s0,32(sp)
    800056c0:	01813483          	ld	s1,24(sp)
    800056c4:	01013903          	ld	s2,16(sp)
    800056c8:	00813983          	ld	s3,8(sp)
    800056cc:	03010113          	addi	sp,sp,48
    800056d0:	00008067          	ret

00000000800056d4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800056d4:	fe010113          	addi	sp,sp,-32
    800056d8:	00113c23          	sd	ra,24(sp)
    800056dc:	00813823          	sd	s0,16(sp)
    800056e0:	00913423          	sd	s1,8(sp)
    800056e4:	01213023          	sd	s2,0(sp)
    800056e8:	02010413          	addi	s0,sp,32
    800056ec:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800056f0:	00000913          	li	s2,0
    800056f4:	00c0006f          	j	80005700 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800056f8:	ffffd097          	auipc	ra,0xffffd
    800056fc:	ad8080e7          	jalr	-1320(ra) # 800021d0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005700:	00007797          	auipc	a5,0x7
    80005704:	5787a783          	lw	a5,1400(a5) # 8000cc78 <_ZL9threadEnd>
    80005708:	02079e63          	bnez	a5,80005744 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000570c:	0004a583          	lw	a1,0(s1)
    80005710:	0305859b          	addiw	a1,a1,48
    80005714:	0084b503          	ld	a0,8(s1)
    80005718:	00001097          	auipc	ra,0x1
    8000571c:	bac080e7          	jalr	-1108(ra) # 800062c4 <_ZN9BufferCPP3putEi>
        i++;
    80005720:	0019071b          	addiw	a4,s2,1
    80005724:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005728:	0004a683          	lw	a3,0(s1)
    8000572c:	0026979b          	slliw	a5,a3,0x2
    80005730:	00d787bb          	addw	a5,a5,a3
    80005734:	0017979b          	slliw	a5,a5,0x1
    80005738:	02f767bb          	remw	a5,a4,a5
    8000573c:	fc0792e3          	bnez	a5,80005700 <_ZN12ProducerSync8producerEPv+0x2c>
    80005740:	fb9ff06f          	j	800056f8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005744:	0104b503          	ld	a0,16(s1)
    80005748:	ffffd097          	auipc	ra,0xffffd
    8000574c:	b3c080e7          	jalr	-1220(ra) # 80002284 <_ZN9Semaphore6signalEv>
}
    80005750:	01813083          	ld	ra,24(sp)
    80005754:	01013403          	ld	s0,16(sp)
    80005758:	00813483          	ld	s1,8(sp)
    8000575c:	00013903          	ld	s2,0(sp)
    80005760:	02010113          	addi	sp,sp,32
    80005764:	00008067          	ret

0000000080005768 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005768:	fd010113          	addi	sp,sp,-48
    8000576c:	02113423          	sd	ra,40(sp)
    80005770:	02813023          	sd	s0,32(sp)
    80005774:	00913c23          	sd	s1,24(sp)
    80005778:	01213823          	sd	s2,16(sp)
    8000577c:	01313423          	sd	s3,8(sp)
    80005780:	01413023          	sd	s4,0(sp)
    80005784:	03010413          	addi	s0,sp,48
    80005788:	00050993          	mv	s3,a0
    8000578c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005790:	00000a13          	li	s4,0
    80005794:	01c0006f          	j	800057b0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005798:	ffffd097          	auipc	ra,0xffffd
    8000579c:	a38080e7          	jalr	-1480(ra) # 800021d0 <_ZN6Thread8dispatchEv>
    800057a0:	0500006f          	j	800057f0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800057a4:	00a00513          	li	a0,10
    800057a8:	ffffc097          	auipc	ra,0xffffc
    800057ac:	284080e7          	jalr	644(ra) # 80001a2c <_Z4putcc>
    while (!threadEnd) {
    800057b0:	00007797          	auipc	a5,0x7
    800057b4:	4c87a783          	lw	a5,1224(a5) # 8000cc78 <_ZL9threadEnd>
    800057b8:	06079263          	bnez	a5,8000581c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800057bc:	00893503          	ld	a0,8(s2)
    800057c0:	00001097          	auipc	ra,0x1
    800057c4:	b94080e7          	jalr	-1132(ra) # 80006354 <_ZN9BufferCPP3getEv>
        i++;
    800057c8:	001a049b          	addiw	s1,s4,1
    800057cc:	00048a1b          	sext.w	s4,s1
        putc(key);
    800057d0:	0ff57513          	andi	a0,a0,255
    800057d4:	ffffc097          	auipc	ra,0xffffc
    800057d8:	258080e7          	jalr	600(ra) # 80001a2c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800057dc:	00092703          	lw	a4,0(s2)
    800057e0:	0027179b          	slliw	a5,a4,0x2
    800057e4:	00e787bb          	addw	a5,a5,a4
    800057e8:	02f4e7bb          	remw	a5,s1,a5
    800057ec:	fa0786e3          	beqz	a5,80005798 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800057f0:	05000793          	li	a5,80
    800057f4:	02f4e4bb          	remw	s1,s1,a5
    800057f8:	fa049ce3          	bnez	s1,800057b0 <_ZN12ConsumerSync8consumerEPv+0x48>
    800057fc:	fa9ff06f          	j	800057a4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005800:	0209b783          	ld	a5,32(s3)
    80005804:	0087b503          	ld	a0,8(a5)
    80005808:	00001097          	auipc	ra,0x1
    8000580c:	b4c080e7          	jalr	-1204(ra) # 80006354 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005810:	0ff57513          	andi	a0,a0,255
    80005814:	ffffd097          	auipc	ra,0xffffd
    80005818:	b1c080e7          	jalr	-1252(ra) # 80002330 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000581c:	0209b783          	ld	a5,32(s3)
    80005820:	0087b503          	ld	a0,8(a5)
    80005824:	00001097          	auipc	ra,0x1
    80005828:	bbc080e7          	jalr	-1092(ra) # 800063e0 <_ZN9BufferCPP6getCntEv>
    8000582c:	fca04ae3          	bgtz	a0,80005800 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005830:	01093503          	ld	a0,16(s2)
    80005834:	ffffd097          	auipc	ra,0xffffd
    80005838:	a50080e7          	jalr	-1456(ra) # 80002284 <_ZN9Semaphore6signalEv>
}
    8000583c:	02813083          	ld	ra,40(sp)
    80005840:	02013403          	ld	s0,32(sp)
    80005844:	01813483          	ld	s1,24(sp)
    80005848:	01013903          	ld	s2,16(sp)
    8000584c:	00813983          	ld	s3,8(sp)
    80005850:	00013a03          	ld	s4,0(sp)
    80005854:	03010113          	addi	sp,sp,48
    80005858:	00008067          	ret

000000008000585c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000585c:	f8010113          	addi	sp,sp,-128
    80005860:	06113c23          	sd	ra,120(sp)
    80005864:	06813823          	sd	s0,112(sp)
    80005868:	06913423          	sd	s1,104(sp)
    8000586c:	07213023          	sd	s2,96(sp)
    80005870:	05313c23          	sd	s3,88(sp)
    80005874:	05413823          	sd	s4,80(sp)
    80005878:	05513423          	sd	s5,72(sp)
    8000587c:	05613023          	sd	s6,64(sp)
    80005880:	03713c23          	sd	s7,56(sp)
    80005884:	03813823          	sd	s8,48(sp)
    80005888:	03913423          	sd	s9,40(sp)
    8000588c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005890:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005894:	00005517          	auipc	a0,0x5
    80005898:	8dc50513          	addi	a0,a0,-1828 # 8000a170 <_ZZ15printIntegerMojmE6digits+0x10>
    8000589c:	00000097          	auipc	ra,0x0
    800058a0:	604080e7          	jalr	1540(ra) # 80005ea0 <_Z11printStringPKc>
    getString(input, 30);
    800058a4:	01e00593          	li	a1,30
    800058a8:	f8040493          	addi	s1,s0,-128
    800058ac:	00048513          	mv	a0,s1
    800058b0:	00000097          	auipc	ra,0x0
    800058b4:	678080e7          	jalr	1656(ra) # 80005f28 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800058b8:	00048513          	mv	a0,s1
    800058bc:	00000097          	auipc	ra,0x0
    800058c0:	744080e7          	jalr	1860(ra) # 80006000 <_Z11stringToIntPKc>
    800058c4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800058c8:	00005517          	auipc	a0,0x5
    800058cc:	8c850513          	addi	a0,a0,-1848 # 8000a190 <_ZZ15printIntegerMojmE6digits+0x30>
    800058d0:	00000097          	auipc	ra,0x0
    800058d4:	5d0080e7          	jalr	1488(ra) # 80005ea0 <_Z11printStringPKc>
    getString(input, 30);
    800058d8:	01e00593          	li	a1,30
    800058dc:	00048513          	mv	a0,s1
    800058e0:	00000097          	auipc	ra,0x0
    800058e4:	648080e7          	jalr	1608(ra) # 80005f28 <_Z9getStringPci>
    n = stringToInt(input);
    800058e8:	00048513          	mv	a0,s1
    800058ec:	00000097          	auipc	ra,0x0
    800058f0:	714080e7          	jalr	1812(ra) # 80006000 <_Z11stringToIntPKc>
    800058f4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800058f8:	00005517          	auipc	a0,0x5
    800058fc:	8b850513          	addi	a0,a0,-1864 # 8000a1b0 <_ZZ15printIntegerMojmE6digits+0x50>
    80005900:	00000097          	auipc	ra,0x0
    80005904:	5a0080e7          	jalr	1440(ra) # 80005ea0 <_Z11printStringPKc>
    80005908:	00000613          	li	a2,0
    8000590c:	00a00593          	li	a1,10
    80005910:	00090513          	mv	a0,s2
    80005914:	00000097          	auipc	ra,0x0
    80005918:	73c080e7          	jalr	1852(ra) # 80006050 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000591c:	00005517          	auipc	a0,0x5
    80005920:	8ac50513          	addi	a0,a0,-1876 # 8000a1c8 <_ZZ15printIntegerMojmE6digits+0x68>
    80005924:	00000097          	auipc	ra,0x0
    80005928:	57c080e7          	jalr	1404(ra) # 80005ea0 <_Z11printStringPKc>
    8000592c:	00000613          	li	a2,0
    80005930:	00a00593          	li	a1,10
    80005934:	00048513          	mv	a0,s1
    80005938:	00000097          	auipc	ra,0x0
    8000593c:	718080e7          	jalr	1816(ra) # 80006050 <_Z8printIntiii>
    printString(".\n");
    80005940:	00005517          	auipc	a0,0x5
    80005944:	8a050513          	addi	a0,a0,-1888 # 8000a1e0 <_ZZ15printIntegerMojmE6digits+0x80>
    80005948:	00000097          	auipc	ra,0x0
    8000594c:	558080e7          	jalr	1368(ra) # 80005ea0 <_Z11printStringPKc>
    if(threadNum > n) {
    80005950:	0324c463          	blt	s1,s2,80005978 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005954:	03205c63          	blez	s2,8000598c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005958:	03800513          	li	a0,56
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	630080e7          	jalr	1584(ra) # 80001f8c <_Znwm>
    80005964:	00050a93          	mv	s5,a0
    80005968:	00048593          	mv	a1,s1
    8000596c:	00001097          	auipc	ra,0x1
    80005970:	804080e7          	jalr	-2044(ra) # 80006170 <_ZN9BufferCPPC1Ei>
    80005974:	0300006f          	j	800059a4 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005978:	00005517          	auipc	a0,0x5
    8000597c:	87050513          	addi	a0,a0,-1936 # 8000a1e8 <_ZZ15printIntegerMojmE6digits+0x88>
    80005980:	00000097          	auipc	ra,0x0
    80005984:	520080e7          	jalr	1312(ra) # 80005ea0 <_Z11printStringPKc>
        return;
    80005988:	0140006f          	j	8000599c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000598c:	00005517          	auipc	a0,0x5
    80005990:	89c50513          	addi	a0,a0,-1892 # 8000a228 <_ZZ15printIntegerMojmE6digits+0xc8>
    80005994:	00000097          	auipc	ra,0x0
    80005998:	50c080e7          	jalr	1292(ra) # 80005ea0 <_Z11printStringPKc>
        return;
    8000599c:	000b8113          	mv	sp,s7
    800059a0:	2380006f          	j	80005bd8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800059a4:	01000513          	li	a0,16
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	5e4080e7          	jalr	1508(ra) # 80001f8c <_Znwm>
    800059b0:	00050493          	mv	s1,a0
    800059b4:	00000593          	li	a1,0
    800059b8:	ffffd097          	auipc	ra,0xffffd
    800059bc:	868080e7          	jalr	-1944(ra) # 80002220 <_ZN9SemaphoreC1Ej>
    800059c0:	00007797          	auipc	a5,0x7
    800059c4:	2c97b023          	sd	s1,704(a5) # 8000cc80 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800059c8:	00391793          	slli	a5,s2,0x3
    800059cc:	00f78793          	addi	a5,a5,15
    800059d0:	ff07f793          	andi	a5,a5,-16
    800059d4:	40f10133          	sub	sp,sp,a5
    800059d8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800059dc:	0019071b          	addiw	a4,s2,1
    800059e0:	00171793          	slli	a5,a4,0x1
    800059e4:	00e787b3          	add	a5,a5,a4
    800059e8:	00379793          	slli	a5,a5,0x3
    800059ec:	00f78793          	addi	a5,a5,15
    800059f0:	ff07f793          	andi	a5,a5,-16
    800059f4:	40f10133          	sub	sp,sp,a5
    800059f8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800059fc:	00191c13          	slli	s8,s2,0x1
    80005a00:	012c07b3          	add	a5,s8,s2
    80005a04:	00379793          	slli	a5,a5,0x3
    80005a08:	00fa07b3          	add	a5,s4,a5
    80005a0c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005a10:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005a14:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005a18:	02800513          	li	a0,40
    80005a1c:	ffffc097          	auipc	ra,0xffffc
    80005a20:	570080e7          	jalr	1392(ra) # 80001f8c <_Znwm>
    80005a24:	00050b13          	mv	s6,a0
    80005a28:	012c0c33          	add	s8,s8,s2
    80005a2c:	003c1c13          	slli	s8,s8,0x3
    80005a30:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005a34:	ffffc097          	auipc	ra,0xffffc
    80005a38:	708080e7          	jalr	1800(ra) # 8000213c <_ZN6ThreadC1Ev>
    80005a3c:	00007797          	auipc	a5,0x7
    80005a40:	0bc78793          	addi	a5,a5,188 # 8000caf8 <_ZTV12ConsumerSync+0x10>
    80005a44:	00fb3023          	sd	a5,0(s6)
    80005a48:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005a4c:	000b0513          	mv	a0,s6
    80005a50:	ffffc097          	auipc	ra,0xffffc
    80005a54:	71c080e7          	jalr	1820(ra) # 8000216c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005a58:	00000493          	li	s1,0
    80005a5c:	0380006f          	j	80005a94 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005a60:	00007797          	auipc	a5,0x7
    80005a64:	07078793          	addi	a5,a5,112 # 8000cad0 <_ZTV12ProducerSync+0x10>
    80005a68:	00fcb023          	sd	a5,0(s9)
    80005a6c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005a70:	00349793          	slli	a5,s1,0x3
    80005a74:	00f987b3          	add	a5,s3,a5
    80005a78:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005a7c:	00349793          	slli	a5,s1,0x3
    80005a80:	00f987b3          	add	a5,s3,a5
    80005a84:	0007b503          	ld	a0,0(a5)
    80005a88:	ffffc097          	auipc	ra,0xffffc
    80005a8c:	6e4080e7          	jalr	1764(ra) # 8000216c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005a90:	0014849b          	addiw	s1,s1,1
    80005a94:	0b24d063          	bge	s1,s2,80005b34 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005a98:	00149793          	slli	a5,s1,0x1
    80005a9c:	009787b3          	add	a5,a5,s1
    80005aa0:	00379793          	slli	a5,a5,0x3
    80005aa4:	00fa07b3          	add	a5,s4,a5
    80005aa8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005aac:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005ab0:	00007717          	auipc	a4,0x7
    80005ab4:	1d073703          	ld	a4,464(a4) # 8000cc80 <_ZL10waitForAll>
    80005ab8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005abc:	02905863          	blez	s1,80005aec <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005ac0:	02800513          	li	a0,40
    80005ac4:	ffffc097          	auipc	ra,0xffffc
    80005ac8:	4c8080e7          	jalr	1224(ra) # 80001f8c <_Znwm>
    80005acc:	00050c93          	mv	s9,a0
    80005ad0:	00149c13          	slli	s8,s1,0x1
    80005ad4:	009c0c33          	add	s8,s8,s1
    80005ad8:	003c1c13          	slli	s8,s8,0x3
    80005adc:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005ae0:	ffffc097          	auipc	ra,0xffffc
    80005ae4:	65c080e7          	jalr	1628(ra) # 8000213c <_ZN6ThreadC1Ev>
    80005ae8:	f79ff06f          	j	80005a60 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005aec:	02800513          	li	a0,40
    80005af0:	ffffc097          	auipc	ra,0xffffc
    80005af4:	49c080e7          	jalr	1180(ra) # 80001f8c <_Znwm>
    80005af8:	00050c93          	mv	s9,a0
    80005afc:	00149c13          	slli	s8,s1,0x1
    80005b00:	009c0c33          	add	s8,s8,s1
    80005b04:	003c1c13          	slli	s8,s8,0x3
    80005b08:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005b0c:	ffffc097          	auipc	ra,0xffffc
    80005b10:	630080e7          	jalr	1584(ra) # 8000213c <_ZN6ThreadC1Ev>
    80005b14:	00007797          	auipc	a5,0x7
    80005b18:	f9478793          	addi	a5,a5,-108 # 8000caa8 <_ZTV16ProducerKeyboard+0x10>
    80005b1c:	00fcb023          	sd	a5,0(s9)
    80005b20:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005b24:	00349793          	slli	a5,s1,0x3
    80005b28:	00f987b3          	add	a5,s3,a5
    80005b2c:	0197b023          	sd	s9,0(a5)
    80005b30:	f4dff06f          	j	80005a7c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	69c080e7          	jalr	1692(ra) # 800021d0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005b3c:	00000493          	li	s1,0
    80005b40:	00994e63          	blt	s2,s1,80005b5c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005b44:	00007517          	auipc	a0,0x7
    80005b48:	13c53503          	ld	a0,316(a0) # 8000cc80 <_ZL10waitForAll>
    80005b4c:	ffffc097          	auipc	ra,0xffffc
    80005b50:	70c080e7          	jalr	1804(ra) # 80002258 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005b54:	0014849b          	addiw	s1,s1,1
    80005b58:	fe9ff06f          	j	80005b40 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005b5c:	00000493          	li	s1,0
    80005b60:	0080006f          	j	80005b68 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005b64:	0014849b          	addiw	s1,s1,1
    80005b68:	0324d263          	bge	s1,s2,80005b8c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005b6c:	00349793          	slli	a5,s1,0x3
    80005b70:	00f987b3          	add	a5,s3,a5
    80005b74:	0007b503          	ld	a0,0(a5)
    80005b78:	fe0506e3          	beqz	a0,80005b64 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005b7c:	00053783          	ld	a5,0(a0)
    80005b80:	0087b783          	ld	a5,8(a5)
    80005b84:	000780e7          	jalr	a5
    80005b88:	fddff06f          	j	80005b64 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005b8c:	000b0a63          	beqz	s6,80005ba0 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005b90:	000b3783          	ld	a5,0(s6)
    80005b94:	0087b783          	ld	a5,8(a5)
    80005b98:	000b0513          	mv	a0,s6
    80005b9c:	000780e7          	jalr	a5
    delete waitForAll;
    80005ba0:	00007517          	auipc	a0,0x7
    80005ba4:	0e053503          	ld	a0,224(a0) # 8000cc80 <_ZL10waitForAll>
    80005ba8:	00050863          	beqz	a0,80005bb8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005bac:	00053783          	ld	a5,0(a0)
    80005bb0:	0087b783          	ld	a5,8(a5)
    80005bb4:	000780e7          	jalr	a5
    delete buffer;
    80005bb8:	000a8e63          	beqz	s5,80005bd4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005bbc:	000a8513          	mv	a0,s5
    80005bc0:	00001097          	auipc	ra,0x1
    80005bc4:	8a8080e7          	jalr	-1880(ra) # 80006468 <_ZN9BufferCPPD1Ev>
    80005bc8:	000a8513          	mv	a0,s5
    80005bcc:	ffffc097          	auipc	ra,0xffffc
    80005bd0:	410080e7          	jalr	1040(ra) # 80001fdc <_ZdlPv>
    80005bd4:	000b8113          	mv	sp,s7

}
    80005bd8:	f8040113          	addi	sp,s0,-128
    80005bdc:	07813083          	ld	ra,120(sp)
    80005be0:	07013403          	ld	s0,112(sp)
    80005be4:	06813483          	ld	s1,104(sp)
    80005be8:	06013903          	ld	s2,96(sp)
    80005bec:	05813983          	ld	s3,88(sp)
    80005bf0:	05013a03          	ld	s4,80(sp)
    80005bf4:	04813a83          	ld	s5,72(sp)
    80005bf8:	04013b03          	ld	s6,64(sp)
    80005bfc:	03813b83          	ld	s7,56(sp)
    80005c00:	03013c03          	ld	s8,48(sp)
    80005c04:	02813c83          	ld	s9,40(sp)
    80005c08:	08010113          	addi	sp,sp,128
    80005c0c:	00008067          	ret
    80005c10:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005c14:	000a8513          	mv	a0,s5
    80005c18:	ffffc097          	auipc	ra,0xffffc
    80005c1c:	3c4080e7          	jalr	964(ra) # 80001fdc <_ZdlPv>
    80005c20:	00048513          	mv	a0,s1
    80005c24:	00008097          	auipc	ra,0x8
    80005c28:	144080e7          	jalr	324(ra) # 8000dd68 <_Unwind_Resume>
    80005c2c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005c30:	00048513          	mv	a0,s1
    80005c34:	ffffc097          	auipc	ra,0xffffc
    80005c38:	3a8080e7          	jalr	936(ra) # 80001fdc <_ZdlPv>
    80005c3c:	00090513          	mv	a0,s2
    80005c40:	00008097          	auipc	ra,0x8
    80005c44:	128080e7          	jalr	296(ra) # 8000dd68 <_Unwind_Resume>
    80005c48:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005c4c:	000b0513          	mv	a0,s6
    80005c50:	ffffc097          	auipc	ra,0xffffc
    80005c54:	38c080e7          	jalr	908(ra) # 80001fdc <_ZdlPv>
    80005c58:	00048513          	mv	a0,s1
    80005c5c:	00008097          	auipc	ra,0x8
    80005c60:	10c080e7          	jalr	268(ra) # 8000dd68 <_Unwind_Resume>
    80005c64:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005c68:	000c8513          	mv	a0,s9
    80005c6c:	ffffc097          	auipc	ra,0xffffc
    80005c70:	370080e7          	jalr	880(ra) # 80001fdc <_ZdlPv>
    80005c74:	00048513          	mv	a0,s1
    80005c78:	00008097          	auipc	ra,0x8
    80005c7c:	0f0080e7          	jalr	240(ra) # 8000dd68 <_Unwind_Resume>
    80005c80:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005c84:	000c8513          	mv	a0,s9
    80005c88:	ffffc097          	auipc	ra,0xffffc
    80005c8c:	354080e7          	jalr	852(ra) # 80001fdc <_ZdlPv>
    80005c90:	00048513          	mv	a0,s1
    80005c94:	00008097          	auipc	ra,0x8
    80005c98:	0d4080e7          	jalr	212(ra) # 8000dd68 <_Unwind_Resume>

0000000080005c9c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005c9c:	ff010113          	addi	sp,sp,-16
    80005ca0:	00113423          	sd	ra,8(sp)
    80005ca4:	00813023          	sd	s0,0(sp)
    80005ca8:	01010413          	addi	s0,sp,16
    80005cac:	00007797          	auipc	a5,0x7
    80005cb0:	e4c78793          	addi	a5,a5,-436 # 8000caf8 <_ZTV12ConsumerSync+0x10>
    80005cb4:	00f53023          	sd	a5,0(a0)
    80005cb8:	ffffc097          	auipc	ra,0xffffc
    80005cbc:	3b4080e7          	jalr	948(ra) # 8000206c <_ZN6ThreadD1Ev>
    80005cc0:	00813083          	ld	ra,8(sp)
    80005cc4:	00013403          	ld	s0,0(sp)
    80005cc8:	01010113          	addi	sp,sp,16
    80005ccc:	00008067          	ret

0000000080005cd0 <_ZN12ConsumerSyncD0Ev>:
    80005cd0:	fe010113          	addi	sp,sp,-32
    80005cd4:	00113c23          	sd	ra,24(sp)
    80005cd8:	00813823          	sd	s0,16(sp)
    80005cdc:	00913423          	sd	s1,8(sp)
    80005ce0:	02010413          	addi	s0,sp,32
    80005ce4:	00050493          	mv	s1,a0
    80005ce8:	00007797          	auipc	a5,0x7
    80005cec:	e1078793          	addi	a5,a5,-496 # 8000caf8 <_ZTV12ConsumerSync+0x10>
    80005cf0:	00f53023          	sd	a5,0(a0)
    80005cf4:	ffffc097          	auipc	ra,0xffffc
    80005cf8:	378080e7          	jalr	888(ra) # 8000206c <_ZN6ThreadD1Ev>
    80005cfc:	00048513          	mv	a0,s1
    80005d00:	ffffc097          	auipc	ra,0xffffc
    80005d04:	2dc080e7          	jalr	732(ra) # 80001fdc <_ZdlPv>
    80005d08:	01813083          	ld	ra,24(sp)
    80005d0c:	01013403          	ld	s0,16(sp)
    80005d10:	00813483          	ld	s1,8(sp)
    80005d14:	02010113          	addi	sp,sp,32
    80005d18:	00008067          	ret

0000000080005d1c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005d1c:	ff010113          	addi	sp,sp,-16
    80005d20:	00113423          	sd	ra,8(sp)
    80005d24:	00813023          	sd	s0,0(sp)
    80005d28:	01010413          	addi	s0,sp,16
    80005d2c:	00007797          	auipc	a5,0x7
    80005d30:	da478793          	addi	a5,a5,-604 # 8000cad0 <_ZTV12ProducerSync+0x10>
    80005d34:	00f53023          	sd	a5,0(a0)
    80005d38:	ffffc097          	auipc	ra,0xffffc
    80005d3c:	334080e7          	jalr	820(ra) # 8000206c <_ZN6ThreadD1Ev>
    80005d40:	00813083          	ld	ra,8(sp)
    80005d44:	00013403          	ld	s0,0(sp)
    80005d48:	01010113          	addi	sp,sp,16
    80005d4c:	00008067          	ret

0000000080005d50 <_ZN12ProducerSyncD0Ev>:
    80005d50:	fe010113          	addi	sp,sp,-32
    80005d54:	00113c23          	sd	ra,24(sp)
    80005d58:	00813823          	sd	s0,16(sp)
    80005d5c:	00913423          	sd	s1,8(sp)
    80005d60:	02010413          	addi	s0,sp,32
    80005d64:	00050493          	mv	s1,a0
    80005d68:	00007797          	auipc	a5,0x7
    80005d6c:	d6878793          	addi	a5,a5,-664 # 8000cad0 <_ZTV12ProducerSync+0x10>
    80005d70:	00f53023          	sd	a5,0(a0)
    80005d74:	ffffc097          	auipc	ra,0xffffc
    80005d78:	2f8080e7          	jalr	760(ra) # 8000206c <_ZN6ThreadD1Ev>
    80005d7c:	00048513          	mv	a0,s1
    80005d80:	ffffc097          	auipc	ra,0xffffc
    80005d84:	25c080e7          	jalr	604(ra) # 80001fdc <_ZdlPv>
    80005d88:	01813083          	ld	ra,24(sp)
    80005d8c:	01013403          	ld	s0,16(sp)
    80005d90:	00813483          	ld	s1,8(sp)
    80005d94:	02010113          	addi	sp,sp,32
    80005d98:	00008067          	ret

0000000080005d9c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005d9c:	ff010113          	addi	sp,sp,-16
    80005da0:	00113423          	sd	ra,8(sp)
    80005da4:	00813023          	sd	s0,0(sp)
    80005da8:	01010413          	addi	s0,sp,16
    80005dac:	00007797          	auipc	a5,0x7
    80005db0:	cfc78793          	addi	a5,a5,-772 # 8000caa8 <_ZTV16ProducerKeyboard+0x10>
    80005db4:	00f53023          	sd	a5,0(a0)
    80005db8:	ffffc097          	auipc	ra,0xffffc
    80005dbc:	2b4080e7          	jalr	692(ra) # 8000206c <_ZN6ThreadD1Ev>
    80005dc0:	00813083          	ld	ra,8(sp)
    80005dc4:	00013403          	ld	s0,0(sp)
    80005dc8:	01010113          	addi	sp,sp,16
    80005dcc:	00008067          	ret

0000000080005dd0 <_ZN16ProducerKeyboardD0Ev>:
    80005dd0:	fe010113          	addi	sp,sp,-32
    80005dd4:	00113c23          	sd	ra,24(sp)
    80005dd8:	00813823          	sd	s0,16(sp)
    80005ddc:	00913423          	sd	s1,8(sp)
    80005de0:	02010413          	addi	s0,sp,32
    80005de4:	00050493          	mv	s1,a0
    80005de8:	00007797          	auipc	a5,0x7
    80005dec:	cc078793          	addi	a5,a5,-832 # 8000caa8 <_ZTV16ProducerKeyboard+0x10>
    80005df0:	00f53023          	sd	a5,0(a0)
    80005df4:	ffffc097          	auipc	ra,0xffffc
    80005df8:	278080e7          	jalr	632(ra) # 8000206c <_ZN6ThreadD1Ev>
    80005dfc:	00048513          	mv	a0,s1
    80005e00:	ffffc097          	auipc	ra,0xffffc
    80005e04:	1dc080e7          	jalr	476(ra) # 80001fdc <_ZdlPv>
    80005e08:	01813083          	ld	ra,24(sp)
    80005e0c:	01013403          	ld	s0,16(sp)
    80005e10:	00813483          	ld	s1,8(sp)
    80005e14:	02010113          	addi	sp,sp,32
    80005e18:	00008067          	ret

0000000080005e1c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005e1c:	ff010113          	addi	sp,sp,-16
    80005e20:	00113423          	sd	ra,8(sp)
    80005e24:	00813023          	sd	s0,0(sp)
    80005e28:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005e2c:	02053583          	ld	a1,32(a0)
    80005e30:	fffff097          	auipc	ra,0xfffff
    80005e34:	7e4080e7          	jalr	2020(ra) # 80005614 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005e38:	00813083          	ld	ra,8(sp)
    80005e3c:	00013403          	ld	s0,0(sp)
    80005e40:	01010113          	addi	sp,sp,16
    80005e44:	00008067          	ret

0000000080005e48 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005e48:	ff010113          	addi	sp,sp,-16
    80005e4c:	00113423          	sd	ra,8(sp)
    80005e50:	00813023          	sd	s0,0(sp)
    80005e54:	01010413          	addi	s0,sp,16
        producer(td);
    80005e58:	02053583          	ld	a1,32(a0)
    80005e5c:	00000097          	auipc	ra,0x0
    80005e60:	878080e7          	jalr	-1928(ra) # 800056d4 <_ZN12ProducerSync8producerEPv>
    }
    80005e64:	00813083          	ld	ra,8(sp)
    80005e68:	00013403          	ld	s0,0(sp)
    80005e6c:	01010113          	addi	sp,sp,16
    80005e70:	00008067          	ret

0000000080005e74 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005e74:	ff010113          	addi	sp,sp,-16
    80005e78:	00113423          	sd	ra,8(sp)
    80005e7c:	00813023          	sd	s0,0(sp)
    80005e80:	01010413          	addi	s0,sp,16
        consumer(td);
    80005e84:	02053583          	ld	a1,32(a0)
    80005e88:	00000097          	auipc	ra,0x0
    80005e8c:	8e0080e7          	jalr	-1824(ra) # 80005768 <_ZN12ConsumerSync8consumerEPv>
    }
    80005e90:	00813083          	ld	ra,8(sp)
    80005e94:	00013403          	ld	s0,0(sp)
    80005e98:	01010113          	addi	sp,sp,16
    80005e9c:	00008067          	ret

0000000080005ea0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005ea0:	fe010113          	addi	sp,sp,-32
    80005ea4:	00113c23          	sd	ra,24(sp)
    80005ea8:	00813823          	sd	s0,16(sp)
    80005eac:	00913423          	sd	s1,8(sp)
    80005eb0:	02010413          	addi	s0,sp,32
    80005eb4:	00050493          	mv	s1,a0
    LOCK();
    80005eb8:	00100613          	li	a2,1
    80005ebc:	00000593          	li	a1,0
    80005ec0:	00007517          	auipc	a0,0x7
    80005ec4:	dc850513          	addi	a0,a0,-568 # 8000cc88 <lockPrint>
    80005ec8:	ffffb097          	auipc	ra,0xffffb
    80005ecc:	35c080e7          	jalr	860(ra) # 80001224 <copy_and_swap>
    80005ed0:	00050863          	beqz	a0,80005ee0 <_Z11printStringPKc+0x40>
    80005ed4:	ffffc097          	auipc	ra,0xffffc
    80005ed8:	800080e7          	jalr	-2048(ra) # 800016d4 <_Z15thread_dispatchv>
    80005edc:	fddff06f          	j	80005eb8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005ee0:	0004c503          	lbu	a0,0(s1)
    80005ee4:	00050a63          	beqz	a0,80005ef8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005ee8:	ffffc097          	auipc	ra,0xffffc
    80005eec:	b44080e7          	jalr	-1212(ra) # 80001a2c <_Z4putcc>
        string++;
    80005ef0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005ef4:	fedff06f          	j	80005ee0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005ef8:	00000613          	li	a2,0
    80005efc:	00100593          	li	a1,1
    80005f00:	00007517          	auipc	a0,0x7
    80005f04:	d8850513          	addi	a0,a0,-632 # 8000cc88 <lockPrint>
    80005f08:	ffffb097          	auipc	ra,0xffffb
    80005f0c:	31c080e7          	jalr	796(ra) # 80001224 <copy_and_swap>
    80005f10:	fe0514e3          	bnez	a0,80005ef8 <_Z11printStringPKc+0x58>
}
    80005f14:	01813083          	ld	ra,24(sp)
    80005f18:	01013403          	ld	s0,16(sp)
    80005f1c:	00813483          	ld	s1,8(sp)
    80005f20:	02010113          	addi	sp,sp,32
    80005f24:	00008067          	ret

0000000080005f28 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005f28:	fd010113          	addi	sp,sp,-48
    80005f2c:	02113423          	sd	ra,40(sp)
    80005f30:	02813023          	sd	s0,32(sp)
    80005f34:	00913c23          	sd	s1,24(sp)
    80005f38:	01213823          	sd	s2,16(sp)
    80005f3c:	01313423          	sd	s3,8(sp)
    80005f40:	01413023          	sd	s4,0(sp)
    80005f44:	03010413          	addi	s0,sp,48
    80005f48:	00050993          	mv	s3,a0
    80005f4c:	00058a13          	mv	s4,a1
    LOCK();
    80005f50:	00100613          	li	a2,1
    80005f54:	00000593          	li	a1,0
    80005f58:	00007517          	auipc	a0,0x7
    80005f5c:	d3050513          	addi	a0,a0,-720 # 8000cc88 <lockPrint>
    80005f60:	ffffb097          	auipc	ra,0xffffb
    80005f64:	2c4080e7          	jalr	708(ra) # 80001224 <copy_and_swap>
    80005f68:	00050863          	beqz	a0,80005f78 <_Z9getStringPci+0x50>
    80005f6c:	ffffb097          	auipc	ra,0xffffb
    80005f70:	768080e7          	jalr	1896(ra) # 800016d4 <_Z15thread_dispatchv>
    80005f74:	fddff06f          	j	80005f50 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005f78:	00000913          	li	s2,0
    80005f7c:	00090493          	mv	s1,s2
    80005f80:	0019091b          	addiw	s2,s2,1
    80005f84:	03495a63          	bge	s2,s4,80005fb8 <_Z9getStringPci+0x90>
        cc = getc();
    80005f88:	ffffc097          	auipc	ra,0xffffc
    80005f8c:	a54080e7          	jalr	-1452(ra) # 800019dc <_Z4getcv>
        if(cc < 1)
    80005f90:	02050463          	beqz	a0,80005fb8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005f94:	009984b3          	add	s1,s3,s1
    80005f98:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005f9c:	00a00793          	li	a5,10
    80005fa0:	00f50a63          	beq	a0,a5,80005fb4 <_Z9getStringPci+0x8c>
    80005fa4:	00d00793          	li	a5,13
    80005fa8:	fcf51ae3          	bne	a0,a5,80005f7c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005fac:	00090493          	mv	s1,s2
    80005fb0:	0080006f          	j	80005fb8 <_Z9getStringPci+0x90>
    80005fb4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005fb8:	009984b3          	add	s1,s3,s1
    80005fbc:	00048023          	sb	zero,0(s1)
    UNLOCK();
    80005fc0:	00000613          	li	a2,0
    80005fc4:	00100593          	li	a1,1
    80005fc8:	00007517          	auipc	a0,0x7
    80005fcc:	cc050513          	addi	a0,a0,-832 # 8000cc88 <lockPrint>
    80005fd0:	ffffb097          	auipc	ra,0xffffb
    80005fd4:	254080e7          	jalr	596(ra) # 80001224 <copy_and_swap>
    80005fd8:	fe0514e3          	bnez	a0,80005fc0 <_Z9getStringPci+0x98>
    return buf;
}
    80005fdc:	00098513          	mv	a0,s3
    80005fe0:	02813083          	ld	ra,40(sp)
    80005fe4:	02013403          	ld	s0,32(sp)
    80005fe8:	01813483          	ld	s1,24(sp)
    80005fec:	01013903          	ld	s2,16(sp)
    80005ff0:	00813983          	ld	s3,8(sp)
    80005ff4:	00013a03          	ld	s4,0(sp)
    80005ff8:	03010113          	addi	sp,sp,48
    80005ffc:	00008067          	ret

0000000080006000 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80006000:	ff010113          	addi	sp,sp,-16
    80006004:	00813423          	sd	s0,8(sp)
    80006008:	01010413          	addi	s0,sp,16
    8000600c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006010:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006014:	0006c603          	lbu	a2,0(a3)
    80006018:	fd06071b          	addiw	a4,a2,-48
    8000601c:	0ff77713          	andi	a4,a4,255
    80006020:	00900793          	li	a5,9
    80006024:	02e7e063          	bltu	a5,a4,80006044 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80006028:	0025179b          	slliw	a5,a0,0x2
    8000602c:	00a787bb          	addw	a5,a5,a0
    80006030:	0017979b          	slliw	a5,a5,0x1
    80006034:	00168693          	addi	a3,a3,1
    80006038:	00c787bb          	addw	a5,a5,a2
    8000603c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80006040:	fd5ff06f          	j	80006014 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006044:	00813403          	ld	s0,8(sp)
    80006048:	01010113          	addi	sp,sp,16
    8000604c:	00008067          	ret

0000000080006050 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80006050:	fc010113          	addi	sp,sp,-64
    80006054:	02113c23          	sd	ra,56(sp)
    80006058:	02813823          	sd	s0,48(sp)
    8000605c:	02913423          	sd	s1,40(sp)
    80006060:	03213023          	sd	s2,32(sp)
    80006064:	01313c23          	sd	s3,24(sp)
    80006068:	04010413          	addi	s0,sp,64
    8000606c:	00050493          	mv	s1,a0
    80006070:	00058913          	mv	s2,a1
    80006074:	00060993          	mv	s3,a2
    LOCK();
    80006078:	00100613          	li	a2,1
    8000607c:	00000593          	li	a1,0
    80006080:	00007517          	auipc	a0,0x7
    80006084:	c0850513          	addi	a0,a0,-1016 # 8000cc88 <lockPrint>
    80006088:	ffffb097          	auipc	ra,0xffffb
    8000608c:	19c080e7          	jalr	412(ra) # 80001224 <copy_and_swap>
    80006090:	00050863          	beqz	a0,800060a0 <_Z8printIntiii+0x50>
    80006094:	ffffb097          	auipc	ra,0xffffb
    80006098:	640080e7          	jalr	1600(ra) # 800016d4 <_Z15thread_dispatchv>
    8000609c:	fddff06f          	j	80006078 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800060a0:	00098463          	beqz	s3,800060a8 <_Z8printIntiii+0x58>
    800060a4:	0804c463          	bltz	s1,8000612c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800060a8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800060ac:	00000593          	li	a1,0
    }

    i = 0;
    800060b0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800060b4:	0009079b          	sext.w	a5,s2
    800060b8:	0325773b          	remuw	a4,a0,s2
    800060bc:	00048613          	mv	a2,s1
    800060c0:	0014849b          	addiw	s1,s1,1
    800060c4:	02071693          	slli	a3,a4,0x20
    800060c8:	0206d693          	srli	a3,a3,0x20
    800060cc:	00007717          	auipc	a4,0x7
    800060d0:	a4470713          	addi	a4,a4,-1468 # 8000cb10 <digits>
    800060d4:	00d70733          	add	a4,a4,a3
    800060d8:	00074683          	lbu	a3,0(a4)
    800060dc:	fd040713          	addi	a4,s0,-48
    800060e0:	00c70733          	add	a4,a4,a2
    800060e4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800060e8:	0005071b          	sext.w	a4,a0
    800060ec:	0325553b          	divuw	a0,a0,s2
    800060f0:	fcf772e3          	bgeu	a4,a5,800060b4 <_Z8printIntiii+0x64>
    if(neg)
    800060f4:	00058c63          	beqz	a1,8000610c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800060f8:	fd040793          	addi	a5,s0,-48
    800060fc:	009784b3          	add	s1,a5,s1
    80006100:	02d00793          	li	a5,45
    80006104:	fef48823          	sb	a5,-16(s1)
    80006108:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000610c:	fff4849b          	addiw	s1,s1,-1
    80006110:	0204c463          	bltz	s1,80006138 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006114:	fd040793          	addi	a5,s0,-48
    80006118:	009787b3          	add	a5,a5,s1
    8000611c:	ff07c503          	lbu	a0,-16(a5)
    80006120:	ffffc097          	auipc	ra,0xffffc
    80006124:	90c080e7          	jalr	-1780(ra) # 80001a2c <_Z4putcc>
    80006128:	fe5ff06f          	j	8000610c <_Z8printIntiii+0xbc>
        x = -xx;
    8000612c:	4090053b          	negw	a0,s1
        neg = 1;
    80006130:	00100593          	li	a1,1
        x = -xx;
    80006134:	f7dff06f          	j	800060b0 <_Z8printIntiii+0x60>
    UNLOCK();
    80006138:	00000613          	li	a2,0
    8000613c:	00100593          	li	a1,1
    80006140:	00007517          	auipc	a0,0x7
    80006144:	b4850513          	addi	a0,a0,-1208 # 8000cc88 <lockPrint>
    80006148:	ffffb097          	auipc	ra,0xffffb
    8000614c:	0dc080e7          	jalr	220(ra) # 80001224 <copy_and_swap>
    80006150:	fe0514e3          	bnez	a0,80006138 <_Z8printIntiii+0xe8>
    80006154:	03813083          	ld	ra,56(sp)
    80006158:	03013403          	ld	s0,48(sp)
    8000615c:	02813483          	ld	s1,40(sp)
    80006160:	02013903          	ld	s2,32(sp)
    80006164:	01813983          	ld	s3,24(sp)
    80006168:	04010113          	addi	sp,sp,64
    8000616c:	00008067          	ret

0000000080006170 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006170:	fd010113          	addi	sp,sp,-48
    80006174:	02113423          	sd	ra,40(sp)
    80006178:	02813023          	sd	s0,32(sp)
    8000617c:	00913c23          	sd	s1,24(sp)
    80006180:	01213823          	sd	s2,16(sp)
    80006184:	01313423          	sd	s3,8(sp)
    80006188:	03010413          	addi	s0,sp,48
    8000618c:	00050493          	mv	s1,a0
    80006190:	00058913          	mv	s2,a1
    80006194:	0015879b          	addiw	a5,a1,1
    80006198:	0007851b          	sext.w	a0,a5
    8000619c:	00f4a023          	sw	a5,0(s1)
    800061a0:	0004a823          	sw	zero,16(s1)
    800061a4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800061a8:	00251513          	slli	a0,a0,0x2
    800061ac:	ffffb097          	auipc	ra,0xffffb
    800061b0:	398080e7          	jalr	920(ra) # 80001544 <_Z9mem_allocm>
    800061b4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800061b8:	01000513          	li	a0,16
    800061bc:	ffffc097          	auipc	ra,0xffffc
    800061c0:	dd0080e7          	jalr	-560(ra) # 80001f8c <_Znwm>
    800061c4:	00050993          	mv	s3,a0
    800061c8:	00000593          	li	a1,0
    800061cc:	ffffc097          	auipc	ra,0xffffc
    800061d0:	054080e7          	jalr	84(ra) # 80002220 <_ZN9SemaphoreC1Ej>
    800061d4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800061d8:	01000513          	li	a0,16
    800061dc:	ffffc097          	auipc	ra,0xffffc
    800061e0:	db0080e7          	jalr	-592(ra) # 80001f8c <_Znwm>
    800061e4:	00050993          	mv	s3,a0
    800061e8:	00090593          	mv	a1,s2
    800061ec:	ffffc097          	auipc	ra,0xffffc
    800061f0:	034080e7          	jalr	52(ra) # 80002220 <_ZN9SemaphoreC1Ej>
    800061f4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800061f8:	01000513          	li	a0,16
    800061fc:	ffffc097          	auipc	ra,0xffffc
    80006200:	d90080e7          	jalr	-624(ra) # 80001f8c <_Znwm>
    80006204:	00050913          	mv	s2,a0
    80006208:	00100593          	li	a1,1
    8000620c:	ffffc097          	auipc	ra,0xffffc
    80006210:	014080e7          	jalr	20(ra) # 80002220 <_ZN9SemaphoreC1Ej>
    80006214:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006218:	01000513          	li	a0,16
    8000621c:	ffffc097          	auipc	ra,0xffffc
    80006220:	d70080e7          	jalr	-656(ra) # 80001f8c <_Znwm>
    80006224:	00050913          	mv	s2,a0
    80006228:	00100593          	li	a1,1
    8000622c:	ffffc097          	auipc	ra,0xffffc
    80006230:	ff4080e7          	jalr	-12(ra) # 80002220 <_ZN9SemaphoreC1Ej>
    80006234:	0324b823          	sd	s2,48(s1)
}
    80006238:	02813083          	ld	ra,40(sp)
    8000623c:	02013403          	ld	s0,32(sp)
    80006240:	01813483          	ld	s1,24(sp)
    80006244:	01013903          	ld	s2,16(sp)
    80006248:	00813983          	ld	s3,8(sp)
    8000624c:	03010113          	addi	sp,sp,48
    80006250:	00008067          	ret
    80006254:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006258:	00098513          	mv	a0,s3
    8000625c:	ffffc097          	auipc	ra,0xffffc
    80006260:	d80080e7          	jalr	-640(ra) # 80001fdc <_ZdlPv>
    80006264:	00048513          	mv	a0,s1
    80006268:	00008097          	auipc	ra,0x8
    8000626c:	b00080e7          	jalr	-1280(ra) # 8000dd68 <_Unwind_Resume>
    80006270:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006274:	00098513          	mv	a0,s3
    80006278:	ffffc097          	auipc	ra,0xffffc
    8000627c:	d64080e7          	jalr	-668(ra) # 80001fdc <_ZdlPv>
    80006280:	00048513          	mv	a0,s1
    80006284:	00008097          	auipc	ra,0x8
    80006288:	ae4080e7          	jalr	-1308(ra) # 8000dd68 <_Unwind_Resume>
    8000628c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006290:	00090513          	mv	a0,s2
    80006294:	ffffc097          	auipc	ra,0xffffc
    80006298:	d48080e7          	jalr	-696(ra) # 80001fdc <_ZdlPv>
    8000629c:	00048513          	mv	a0,s1
    800062a0:	00008097          	auipc	ra,0x8
    800062a4:	ac8080e7          	jalr	-1336(ra) # 8000dd68 <_Unwind_Resume>
    800062a8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800062ac:	00090513          	mv	a0,s2
    800062b0:	ffffc097          	auipc	ra,0xffffc
    800062b4:	d2c080e7          	jalr	-724(ra) # 80001fdc <_ZdlPv>
    800062b8:	00048513          	mv	a0,s1
    800062bc:	00008097          	auipc	ra,0x8
    800062c0:	aac080e7          	jalr	-1364(ra) # 8000dd68 <_Unwind_Resume>

00000000800062c4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800062c4:	fe010113          	addi	sp,sp,-32
    800062c8:	00113c23          	sd	ra,24(sp)
    800062cc:	00813823          	sd	s0,16(sp)
    800062d0:	00913423          	sd	s1,8(sp)
    800062d4:	01213023          	sd	s2,0(sp)
    800062d8:	02010413          	addi	s0,sp,32
    800062dc:	00050493          	mv	s1,a0
    800062e0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800062e4:	01853503          	ld	a0,24(a0)
    800062e8:	ffffc097          	auipc	ra,0xffffc
    800062ec:	f70080e7          	jalr	-144(ra) # 80002258 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800062f0:	0304b503          	ld	a0,48(s1)
    800062f4:	ffffc097          	auipc	ra,0xffffc
    800062f8:	f64080e7          	jalr	-156(ra) # 80002258 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800062fc:	0084b783          	ld	a5,8(s1)
    80006300:	0144a703          	lw	a4,20(s1)
    80006304:	00271713          	slli	a4,a4,0x2
    80006308:	00e787b3          	add	a5,a5,a4
    8000630c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006310:	0144a783          	lw	a5,20(s1)
    80006314:	0017879b          	addiw	a5,a5,1
    80006318:	0004a703          	lw	a4,0(s1)
    8000631c:	02e7e7bb          	remw	a5,a5,a4
    80006320:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006324:	0304b503          	ld	a0,48(s1)
    80006328:	ffffc097          	auipc	ra,0xffffc
    8000632c:	f5c080e7          	jalr	-164(ra) # 80002284 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006330:	0204b503          	ld	a0,32(s1)
    80006334:	ffffc097          	auipc	ra,0xffffc
    80006338:	f50080e7          	jalr	-176(ra) # 80002284 <_ZN9Semaphore6signalEv>

}
    8000633c:	01813083          	ld	ra,24(sp)
    80006340:	01013403          	ld	s0,16(sp)
    80006344:	00813483          	ld	s1,8(sp)
    80006348:	00013903          	ld	s2,0(sp)
    8000634c:	02010113          	addi	sp,sp,32
    80006350:	00008067          	ret

0000000080006354 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006354:	fe010113          	addi	sp,sp,-32
    80006358:	00113c23          	sd	ra,24(sp)
    8000635c:	00813823          	sd	s0,16(sp)
    80006360:	00913423          	sd	s1,8(sp)
    80006364:	01213023          	sd	s2,0(sp)
    80006368:	02010413          	addi	s0,sp,32
    8000636c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006370:	02053503          	ld	a0,32(a0)
    80006374:	ffffc097          	auipc	ra,0xffffc
    80006378:	ee4080e7          	jalr	-284(ra) # 80002258 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000637c:	0284b503          	ld	a0,40(s1)
    80006380:	ffffc097          	auipc	ra,0xffffc
    80006384:	ed8080e7          	jalr	-296(ra) # 80002258 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006388:	0084b703          	ld	a4,8(s1)
    8000638c:	0104a783          	lw	a5,16(s1)
    80006390:	00279693          	slli	a3,a5,0x2
    80006394:	00d70733          	add	a4,a4,a3
    80006398:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000639c:	0017879b          	addiw	a5,a5,1
    800063a0:	0004a703          	lw	a4,0(s1)
    800063a4:	02e7e7bb          	remw	a5,a5,a4
    800063a8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800063ac:	0284b503          	ld	a0,40(s1)
    800063b0:	ffffc097          	auipc	ra,0xffffc
    800063b4:	ed4080e7          	jalr	-300(ra) # 80002284 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800063b8:	0184b503          	ld	a0,24(s1)
    800063bc:	ffffc097          	auipc	ra,0xffffc
    800063c0:	ec8080e7          	jalr	-312(ra) # 80002284 <_ZN9Semaphore6signalEv>

    return ret;
}
    800063c4:	00090513          	mv	a0,s2
    800063c8:	01813083          	ld	ra,24(sp)
    800063cc:	01013403          	ld	s0,16(sp)
    800063d0:	00813483          	ld	s1,8(sp)
    800063d4:	00013903          	ld	s2,0(sp)
    800063d8:	02010113          	addi	sp,sp,32
    800063dc:	00008067          	ret

00000000800063e0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800063e0:	fe010113          	addi	sp,sp,-32
    800063e4:	00113c23          	sd	ra,24(sp)
    800063e8:	00813823          	sd	s0,16(sp)
    800063ec:	00913423          	sd	s1,8(sp)
    800063f0:	01213023          	sd	s2,0(sp)
    800063f4:	02010413          	addi	s0,sp,32
    800063f8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800063fc:	02853503          	ld	a0,40(a0)
    80006400:	ffffc097          	auipc	ra,0xffffc
    80006404:	e58080e7          	jalr	-424(ra) # 80002258 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006408:	0304b503          	ld	a0,48(s1)
    8000640c:	ffffc097          	auipc	ra,0xffffc
    80006410:	e4c080e7          	jalr	-436(ra) # 80002258 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006414:	0144a783          	lw	a5,20(s1)
    80006418:	0104a903          	lw	s2,16(s1)
    8000641c:	0327ce63          	blt	a5,s2,80006458 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006420:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006424:	0304b503          	ld	a0,48(s1)
    80006428:	ffffc097          	auipc	ra,0xffffc
    8000642c:	e5c080e7          	jalr	-420(ra) # 80002284 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006430:	0284b503          	ld	a0,40(s1)
    80006434:	ffffc097          	auipc	ra,0xffffc
    80006438:	e50080e7          	jalr	-432(ra) # 80002284 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000643c:	00090513          	mv	a0,s2
    80006440:	01813083          	ld	ra,24(sp)
    80006444:	01013403          	ld	s0,16(sp)
    80006448:	00813483          	ld	s1,8(sp)
    8000644c:	00013903          	ld	s2,0(sp)
    80006450:	02010113          	addi	sp,sp,32
    80006454:	00008067          	ret
        ret = cap - head + tail;
    80006458:	0004a703          	lw	a4,0(s1)
    8000645c:	4127093b          	subw	s2,a4,s2
    80006460:	00f9093b          	addw	s2,s2,a5
    80006464:	fc1ff06f          	j	80006424 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006468 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006468:	fe010113          	addi	sp,sp,-32
    8000646c:	00113c23          	sd	ra,24(sp)
    80006470:	00813823          	sd	s0,16(sp)
    80006474:	00913423          	sd	s1,8(sp)
    80006478:	02010413          	addi	s0,sp,32
    8000647c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006480:	00a00513          	li	a0,10
    80006484:	ffffc097          	auipc	ra,0xffffc
    80006488:	eac080e7          	jalr	-340(ra) # 80002330 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000648c:	00004517          	auipc	a0,0x4
    80006490:	ec450513          	addi	a0,a0,-316 # 8000a350 <_ZZ15printIntegerMojmE6digits+0x1f0>
    80006494:	00000097          	auipc	ra,0x0
    80006498:	a0c080e7          	jalr	-1524(ra) # 80005ea0 <_Z11printStringPKc>
    while (getCnt()) {
    8000649c:	00048513          	mv	a0,s1
    800064a0:	00000097          	auipc	ra,0x0
    800064a4:	f40080e7          	jalr	-192(ra) # 800063e0 <_ZN9BufferCPP6getCntEv>
    800064a8:	02050c63          	beqz	a0,800064e0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800064ac:	0084b783          	ld	a5,8(s1)
    800064b0:	0104a703          	lw	a4,16(s1)
    800064b4:	00271713          	slli	a4,a4,0x2
    800064b8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800064bc:	0007c503          	lbu	a0,0(a5)
    800064c0:	ffffc097          	auipc	ra,0xffffc
    800064c4:	e70080e7          	jalr	-400(ra) # 80002330 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800064c8:	0104a783          	lw	a5,16(s1)
    800064cc:	0017879b          	addiw	a5,a5,1
    800064d0:	0004a703          	lw	a4,0(s1)
    800064d4:	02e7e7bb          	remw	a5,a5,a4
    800064d8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800064dc:	fc1ff06f          	j	8000649c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800064e0:	02100513          	li	a0,33
    800064e4:	ffffc097          	auipc	ra,0xffffc
    800064e8:	e4c080e7          	jalr	-436(ra) # 80002330 <_ZN7Console4putcEc>
    Console::putc('\n');
    800064ec:	00a00513          	li	a0,10
    800064f0:	ffffc097          	auipc	ra,0xffffc
    800064f4:	e40080e7          	jalr	-448(ra) # 80002330 <_ZN7Console4putcEc>
    mem_free(buffer);
    800064f8:	0084b503          	ld	a0,8(s1)
    800064fc:	ffffb097          	auipc	ra,0xffffb
    80006500:	090080e7          	jalr	144(ra) # 8000158c <_Z8mem_freePv>
    delete itemAvailable;
    80006504:	0204b503          	ld	a0,32(s1)
    80006508:	00050863          	beqz	a0,80006518 <_ZN9BufferCPPD1Ev+0xb0>
    8000650c:	00053783          	ld	a5,0(a0)
    80006510:	0087b783          	ld	a5,8(a5)
    80006514:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006518:	0184b503          	ld	a0,24(s1)
    8000651c:	00050863          	beqz	a0,8000652c <_ZN9BufferCPPD1Ev+0xc4>
    80006520:	00053783          	ld	a5,0(a0)
    80006524:	0087b783          	ld	a5,8(a5)
    80006528:	000780e7          	jalr	a5
    delete mutexTail;
    8000652c:	0304b503          	ld	a0,48(s1)
    80006530:	00050863          	beqz	a0,80006540 <_ZN9BufferCPPD1Ev+0xd8>
    80006534:	00053783          	ld	a5,0(a0)
    80006538:	0087b783          	ld	a5,8(a5)
    8000653c:	000780e7          	jalr	a5
    delete mutexHead;
    80006540:	0284b503          	ld	a0,40(s1)
    80006544:	00050863          	beqz	a0,80006554 <_ZN9BufferCPPD1Ev+0xec>
    80006548:	00053783          	ld	a5,0(a0)
    8000654c:	0087b783          	ld	a5,8(a5)
    80006550:	000780e7          	jalr	a5
}
    80006554:	01813083          	ld	ra,24(sp)
    80006558:	01013403          	ld	s0,16(sp)
    8000655c:	00813483          	ld	s1,8(sp)
    80006560:	02010113          	addi	sp,sp,32
    80006564:	00008067          	ret

0000000080006568 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006568:	fe010113          	addi	sp,sp,-32
    8000656c:	00113c23          	sd	ra,24(sp)
    80006570:	00813823          	sd	s0,16(sp)
    80006574:	00913423          	sd	s1,8(sp)
    80006578:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000657c:	00004517          	auipc	a0,0x4
    80006580:	dec50513          	addi	a0,a0,-532 # 8000a368 <_ZZ15printIntegerMojmE6digits+0x208>
    80006584:	00000097          	auipc	ra,0x0
    80006588:	91c080e7          	jalr	-1764(ra) # 80005ea0 <_Z11printStringPKc>
    int test = getc() - '0';
    8000658c:	ffffb097          	auipc	ra,0xffffb
    80006590:	450080e7          	jalr	1104(ra) # 800019dc <_Z4getcv>
    80006594:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006598:	ffffb097          	auipc	ra,0xffffb
    8000659c:	444080e7          	jalr	1092(ra) # 800019dc <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800065a0:	00700793          	li	a5,7
    800065a4:	1097e263          	bltu	a5,s1,800066a8 <_Z8userMainv+0x140>
    800065a8:	00249493          	slli	s1,s1,0x2
    800065ac:	00004717          	auipc	a4,0x4
    800065b0:	01470713          	addi	a4,a4,20 # 8000a5c0 <_ZZ15printIntegerMojmE6digits+0x460>
    800065b4:	00e484b3          	add	s1,s1,a4
    800065b8:	0004a783          	lw	a5,0(s1)
    800065bc:	00e787b3          	add	a5,a5,a4
    800065c0:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800065c4:	fffff097          	auipc	ra,0xfffff
    800065c8:	f54080e7          	jalr	-172(ra) # 80005518 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800065cc:	00004517          	auipc	a0,0x4
    800065d0:	dbc50513          	addi	a0,a0,-580 # 8000a388 <_ZZ15printIntegerMojmE6digits+0x228>
    800065d4:	00000097          	auipc	ra,0x0
    800065d8:	8cc080e7          	jalr	-1844(ra) # 80005ea0 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800065dc:	01813083          	ld	ra,24(sp)
    800065e0:	01013403          	ld	s0,16(sp)
    800065e4:	00813483          	ld	s1,8(sp)
    800065e8:	02010113          	addi	sp,sp,32
    800065ec:	00008067          	ret
            Threads_CPP_API_test();
    800065f0:	ffffe097          	auipc	ra,0xffffe
    800065f4:	e08080e7          	jalr	-504(ra) # 800043f8 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800065f8:	00004517          	auipc	a0,0x4
    800065fc:	dd050513          	addi	a0,a0,-560 # 8000a3c8 <_ZZ15printIntegerMojmE6digits+0x268>
    80006600:	00000097          	auipc	ra,0x0
    80006604:	8a0080e7          	jalr	-1888(ra) # 80005ea0 <_Z11printStringPKc>
            break;
    80006608:	fd5ff06f          	j	800065dc <_Z8userMainv+0x74>
            producerConsumer_C_API();
    8000660c:	ffffd097          	auipc	ra,0xffffd
    80006610:	640080e7          	jalr	1600(ra) # 80003c4c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006614:	00004517          	auipc	a0,0x4
    80006618:	df450513          	addi	a0,a0,-524 # 8000a408 <_ZZ15printIntegerMojmE6digits+0x2a8>
    8000661c:	00000097          	auipc	ra,0x0
    80006620:	884080e7          	jalr	-1916(ra) # 80005ea0 <_Z11printStringPKc>
            break;
    80006624:	fb9ff06f          	j	800065dc <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006628:	fffff097          	auipc	ra,0xfffff
    8000662c:	234080e7          	jalr	564(ra) # 8000585c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006630:	00004517          	auipc	a0,0x4
    80006634:	e2850513          	addi	a0,a0,-472 # 8000a458 <_ZZ15printIntegerMojmE6digits+0x2f8>
    80006638:	00000097          	auipc	ra,0x0
    8000663c:	868080e7          	jalr	-1944(ra) # 80005ea0 <_Z11printStringPKc>
            break;
    80006640:	f9dff06f          	j	800065dc <_Z8userMainv+0x74>
            testSleeping();
    80006644:	00000097          	auipc	ra,0x0
    80006648:	11c080e7          	jalr	284(ra) # 80006760 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    8000664c:	00004517          	auipc	a0,0x4
    80006650:	e6450513          	addi	a0,a0,-412 # 8000a4b0 <_ZZ15printIntegerMojmE6digits+0x350>
    80006654:	00000097          	auipc	ra,0x0
    80006658:	84c080e7          	jalr	-1972(ra) # 80005ea0 <_Z11printStringPKc>
            break;
    8000665c:	f81ff06f          	j	800065dc <_Z8userMainv+0x74>
            testConsumerProducer();
    80006660:	ffffe097          	auipc	ra,0xffffe
    80006664:	258080e7          	jalr	600(ra) # 800048b8 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006668:	00004517          	auipc	a0,0x4
    8000666c:	e7850513          	addi	a0,a0,-392 # 8000a4e0 <_ZZ15printIntegerMojmE6digits+0x380>
    80006670:	00000097          	auipc	ra,0x0
    80006674:	830080e7          	jalr	-2000(ra) # 80005ea0 <_Z11printStringPKc>
            break;
    80006678:	f65ff06f          	j	800065dc <_Z8userMainv+0x74>
            System_Mode_test();
    8000667c:	00000097          	auipc	ra,0x0
    80006680:	658080e7          	jalr	1624(ra) # 80006cd4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006684:	00004517          	auipc	a0,0x4
    80006688:	e9c50513          	addi	a0,a0,-356 # 8000a520 <_ZZ15printIntegerMojmE6digits+0x3c0>
    8000668c:	00000097          	auipc	ra,0x0
    80006690:	814080e7          	jalr	-2028(ra) # 80005ea0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006694:	00004517          	auipc	a0,0x4
    80006698:	eac50513          	addi	a0,a0,-340 # 8000a540 <_ZZ15printIntegerMojmE6digits+0x3e0>
    8000669c:	00000097          	auipc	ra,0x0
    800066a0:	804080e7          	jalr	-2044(ra) # 80005ea0 <_Z11printStringPKc>
            break;
    800066a4:	f39ff06f          	j	800065dc <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800066a8:	00004517          	auipc	a0,0x4
    800066ac:	ef050513          	addi	a0,a0,-272 # 8000a598 <_ZZ15printIntegerMojmE6digits+0x438>
    800066b0:	fffff097          	auipc	ra,0xfffff
    800066b4:	7f0080e7          	jalr	2032(ra) # 80005ea0 <_Z11printStringPKc>
    800066b8:	f25ff06f          	j	800065dc <_Z8userMainv+0x74>

00000000800066bc <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800066bc:	fe010113          	addi	sp,sp,-32
    800066c0:	00113c23          	sd	ra,24(sp)
    800066c4:	00813823          	sd	s0,16(sp)
    800066c8:	00913423          	sd	s1,8(sp)
    800066cc:	01213023          	sd	s2,0(sp)
    800066d0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800066d4:	00053903          	ld	s2,0(a0)
    int i = 6;
    800066d8:	00600493          	li	s1,6
    while (--i > 0) {
    800066dc:	fff4849b          	addiw	s1,s1,-1
    800066e0:	04905463          	blez	s1,80006728 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800066e4:	00004517          	auipc	a0,0x4
    800066e8:	efc50513          	addi	a0,a0,-260 # 8000a5e0 <_ZZ15printIntegerMojmE6digits+0x480>
    800066ec:	fffff097          	auipc	ra,0xfffff
    800066f0:	7b4080e7          	jalr	1972(ra) # 80005ea0 <_Z11printStringPKc>
        printInt(sleep_time);
    800066f4:	00000613          	li	a2,0
    800066f8:	00a00593          	li	a1,10
    800066fc:	0009051b          	sext.w	a0,s2
    80006700:	00000097          	auipc	ra,0x0
    80006704:	950080e7          	jalr	-1712(ra) # 80006050 <_Z8printIntiii>
        printString(" !\n");
    80006708:	00004517          	auipc	a0,0x4
    8000670c:	ee050513          	addi	a0,a0,-288 # 8000a5e8 <_ZZ15printIntegerMojmE6digits+0x488>
    80006710:	fffff097          	auipc	ra,0xfffff
    80006714:	790080e7          	jalr	1936(ra) # 80005ea0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006718:	00090513          	mv	a0,s2
    8000671c:	ffffb097          	auipc	ra,0xffffb
    80006720:	ff8080e7          	jalr	-8(ra) # 80001714 <_Z10time_sleepm>
    while (--i > 0) {
    80006724:	fb9ff06f          	j	800066dc <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006728:	00a00793          	li	a5,10
    8000672c:	02f95933          	divu	s2,s2,a5
    80006730:	fff90913          	addi	s2,s2,-1
    80006734:	00006797          	auipc	a5,0x6
    80006738:	55c78793          	addi	a5,a5,1372 # 8000cc90 <_ZL8finished>
    8000673c:	01278933          	add	s2,a5,s2
    80006740:	00100793          	li	a5,1
    80006744:	00f90023          	sb	a5,0(s2)
}
    80006748:	01813083          	ld	ra,24(sp)
    8000674c:	01013403          	ld	s0,16(sp)
    80006750:	00813483          	ld	s1,8(sp)
    80006754:	00013903          	ld	s2,0(sp)
    80006758:	02010113          	addi	sp,sp,32
    8000675c:	00008067          	ret

0000000080006760 <_Z12testSleepingv>:

void testSleeping() {
    80006760:	fc010113          	addi	sp,sp,-64
    80006764:	02113c23          	sd	ra,56(sp)
    80006768:	02813823          	sd	s0,48(sp)
    8000676c:	02913423          	sd	s1,40(sp)
    80006770:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006774:	00a00793          	li	a5,10
    80006778:	fcf43823          	sd	a5,-48(s0)
    8000677c:	01400793          	li	a5,20
    80006780:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006784:	00000493          	li	s1,0
    80006788:	02c0006f          	j	800067b4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000678c:	00349793          	slli	a5,s1,0x3
    80006790:	fd040613          	addi	a2,s0,-48
    80006794:	00f60633          	add	a2,a2,a5
    80006798:	00000597          	auipc	a1,0x0
    8000679c:	f2458593          	addi	a1,a1,-220 # 800066bc <_ZL9sleepyRunPv>
    800067a0:	fc040513          	addi	a0,s0,-64
    800067a4:	00f50533          	add	a0,a0,a5
    800067a8:	ffffb097          	auipc	ra,0xffffb
    800067ac:	e34080e7          	jalr	-460(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800067b0:	0014849b          	addiw	s1,s1,1
    800067b4:	00100793          	li	a5,1
    800067b8:	fc97dae3          	bge	a5,s1,8000678c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800067bc:	00006797          	auipc	a5,0x6
    800067c0:	4d47c783          	lbu	a5,1236(a5) # 8000cc90 <_ZL8finished>
    800067c4:	fe078ce3          	beqz	a5,800067bc <_Z12testSleepingv+0x5c>
    800067c8:	00006797          	auipc	a5,0x6
    800067cc:	4c97c783          	lbu	a5,1225(a5) # 8000cc91 <_ZL8finished+0x1>
    800067d0:	fe0786e3          	beqz	a5,800067bc <_Z12testSleepingv+0x5c>
}
    800067d4:	03813083          	ld	ra,56(sp)
    800067d8:	03013403          	ld	s0,48(sp)
    800067dc:	02813483          	ld	s1,40(sp)
    800067e0:	04010113          	addi	sp,sp,64
    800067e4:	00008067          	ret

00000000800067e8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800067e8:	fe010113          	addi	sp,sp,-32
    800067ec:	00113c23          	sd	ra,24(sp)
    800067f0:	00813823          	sd	s0,16(sp)
    800067f4:	00913423          	sd	s1,8(sp)
    800067f8:	01213023          	sd	s2,0(sp)
    800067fc:	02010413          	addi	s0,sp,32
    80006800:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006804:	00100793          	li	a5,1
    80006808:	02a7f863          	bgeu	a5,a0,80006838 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000680c:	00a00793          	li	a5,10
    80006810:	02f577b3          	remu	a5,a0,a5
    80006814:	02078e63          	beqz	a5,80006850 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006818:	fff48513          	addi	a0,s1,-1
    8000681c:	00000097          	auipc	ra,0x0
    80006820:	fcc080e7          	jalr	-52(ra) # 800067e8 <_ZL9fibonaccim>
    80006824:	00050913          	mv	s2,a0
    80006828:	ffe48513          	addi	a0,s1,-2
    8000682c:	00000097          	auipc	ra,0x0
    80006830:	fbc080e7          	jalr	-68(ra) # 800067e8 <_ZL9fibonaccim>
    80006834:	00a90533          	add	a0,s2,a0
}
    80006838:	01813083          	ld	ra,24(sp)
    8000683c:	01013403          	ld	s0,16(sp)
    80006840:	00813483          	ld	s1,8(sp)
    80006844:	00013903          	ld	s2,0(sp)
    80006848:	02010113          	addi	sp,sp,32
    8000684c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006850:	ffffb097          	auipc	ra,0xffffb
    80006854:	e84080e7          	jalr	-380(ra) # 800016d4 <_Z15thread_dispatchv>
    80006858:	fc1ff06f          	j	80006818 <_ZL9fibonaccim+0x30>

000000008000685c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000685c:	fe010113          	addi	sp,sp,-32
    80006860:	00113c23          	sd	ra,24(sp)
    80006864:	00813823          	sd	s0,16(sp)
    80006868:	00913423          	sd	s1,8(sp)
    8000686c:	01213023          	sd	s2,0(sp)
    80006870:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006874:	00a00493          	li	s1,10
    80006878:	0400006f          	j	800068b8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000687c:	00004517          	auipc	a0,0x4
    80006880:	a3c50513          	addi	a0,a0,-1476 # 8000a2b8 <_ZZ15printIntegerMojmE6digits+0x158>
    80006884:	fffff097          	auipc	ra,0xfffff
    80006888:	61c080e7          	jalr	1564(ra) # 80005ea0 <_Z11printStringPKc>
    8000688c:	00000613          	li	a2,0
    80006890:	00a00593          	li	a1,10
    80006894:	00048513          	mv	a0,s1
    80006898:	fffff097          	auipc	ra,0xfffff
    8000689c:	7b8080e7          	jalr	1976(ra) # 80006050 <_Z8printIntiii>
    800068a0:	00004517          	auipc	a0,0x4
    800068a4:	c0850513          	addi	a0,a0,-1016 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800068a8:	fffff097          	auipc	ra,0xfffff
    800068ac:	5f8080e7          	jalr	1528(ra) # 80005ea0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800068b0:	0014849b          	addiw	s1,s1,1
    800068b4:	0ff4f493          	andi	s1,s1,255
    800068b8:	00c00793          	li	a5,12
    800068bc:	fc97f0e3          	bgeu	a5,s1,8000687c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800068c0:	00004517          	auipc	a0,0x4
    800068c4:	a0050513          	addi	a0,a0,-1536 # 8000a2c0 <_ZZ15printIntegerMojmE6digits+0x160>
    800068c8:	fffff097          	auipc	ra,0xfffff
    800068cc:	5d8080e7          	jalr	1496(ra) # 80005ea0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800068d0:	00500313          	li	t1,5
    thread_dispatch();
    800068d4:	ffffb097          	auipc	ra,0xffffb
    800068d8:	e00080e7          	jalr	-512(ra) # 800016d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800068dc:	01000513          	li	a0,16
    800068e0:	00000097          	auipc	ra,0x0
    800068e4:	f08080e7          	jalr	-248(ra) # 800067e8 <_ZL9fibonaccim>
    800068e8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800068ec:	00004517          	auipc	a0,0x4
    800068f0:	9e450513          	addi	a0,a0,-1564 # 8000a2d0 <_ZZ15printIntegerMojmE6digits+0x170>
    800068f4:	fffff097          	auipc	ra,0xfffff
    800068f8:	5ac080e7          	jalr	1452(ra) # 80005ea0 <_Z11printStringPKc>
    800068fc:	00000613          	li	a2,0
    80006900:	00a00593          	li	a1,10
    80006904:	0009051b          	sext.w	a0,s2
    80006908:	fffff097          	auipc	ra,0xfffff
    8000690c:	748080e7          	jalr	1864(ra) # 80006050 <_Z8printIntiii>
    80006910:	00004517          	auipc	a0,0x4
    80006914:	b9850513          	addi	a0,a0,-1128 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80006918:	fffff097          	auipc	ra,0xfffff
    8000691c:	588080e7          	jalr	1416(ra) # 80005ea0 <_Z11printStringPKc>
    80006920:	0400006f          	j	80006960 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006924:	00004517          	auipc	a0,0x4
    80006928:	99450513          	addi	a0,a0,-1644 # 8000a2b8 <_ZZ15printIntegerMojmE6digits+0x158>
    8000692c:	fffff097          	auipc	ra,0xfffff
    80006930:	574080e7          	jalr	1396(ra) # 80005ea0 <_Z11printStringPKc>
    80006934:	00000613          	li	a2,0
    80006938:	00a00593          	li	a1,10
    8000693c:	00048513          	mv	a0,s1
    80006940:	fffff097          	auipc	ra,0xfffff
    80006944:	710080e7          	jalr	1808(ra) # 80006050 <_Z8printIntiii>
    80006948:	00004517          	auipc	a0,0x4
    8000694c:	b6050513          	addi	a0,a0,-1184 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80006950:	fffff097          	auipc	ra,0xfffff
    80006954:	550080e7          	jalr	1360(ra) # 80005ea0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006958:	0014849b          	addiw	s1,s1,1
    8000695c:	0ff4f493          	andi	s1,s1,255
    80006960:	00f00793          	li	a5,15
    80006964:	fc97f0e3          	bgeu	a5,s1,80006924 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006968:	00004517          	auipc	a0,0x4
    8000696c:	97850513          	addi	a0,a0,-1672 # 8000a2e0 <_ZZ15printIntegerMojmE6digits+0x180>
    80006970:	fffff097          	auipc	ra,0xfffff
    80006974:	530080e7          	jalr	1328(ra) # 80005ea0 <_Z11printStringPKc>
    finishedD = true;
    80006978:	00100793          	li	a5,1
    8000697c:	00006717          	auipc	a4,0x6
    80006980:	30f70b23          	sb	a5,790(a4) # 8000cc92 <_ZL9finishedD>
    thread_dispatch();
    80006984:	ffffb097          	auipc	ra,0xffffb
    80006988:	d50080e7          	jalr	-688(ra) # 800016d4 <_Z15thread_dispatchv>
}
    8000698c:	01813083          	ld	ra,24(sp)
    80006990:	01013403          	ld	s0,16(sp)
    80006994:	00813483          	ld	s1,8(sp)
    80006998:	00013903          	ld	s2,0(sp)
    8000699c:	02010113          	addi	sp,sp,32
    800069a0:	00008067          	ret

00000000800069a4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800069a4:	fe010113          	addi	sp,sp,-32
    800069a8:	00113c23          	sd	ra,24(sp)
    800069ac:	00813823          	sd	s0,16(sp)
    800069b0:	00913423          	sd	s1,8(sp)
    800069b4:	01213023          	sd	s2,0(sp)
    800069b8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800069bc:	00000493          	li	s1,0
    800069c0:	0400006f          	j	80006a00 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800069c4:	00004517          	auipc	a0,0x4
    800069c8:	8c450513          	addi	a0,a0,-1852 # 8000a288 <_ZZ15printIntegerMojmE6digits+0x128>
    800069cc:	fffff097          	auipc	ra,0xfffff
    800069d0:	4d4080e7          	jalr	1236(ra) # 80005ea0 <_Z11printStringPKc>
    800069d4:	00000613          	li	a2,0
    800069d8:	00a00593          	li	a1,10
    800069dc:	00048513          	mv	a0,s1
    800069e0:	fffff097          	auipc	ra,0xfffff
    800069e4:	670080e7          	jalr	1648(ra) # 80006050 <_Z8printIntiii>
    800069e8:	00004517          	auipc	a0,0x4
    800069ec:	ac050513          	addi	a0,a0,-1344 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800069f0:	fffff097          	auipc	ra,0xfffff
    800069f4:	4b0080e7          	jalr	1200(ra) # 80005ea0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800069f8:	0014849b          	addiw	s1,s1,1
    800069fc:	0ff4f493          	andi	s1,s1,255
    80006a00:	00200793          	li	a5,2
    80006a04:	fc97f0e3          	bgeu	a5,s1,800069c4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006a08:	00004517          	auipc	a0,0x4
    80006a0c:	88850513          	addi	a0,a0,-1912 # 8000a290 <_ZZ15printIntegerMojmE6digits+0x130>
    80006a10:	fffff097          	auipc	ra,0xfffff
    80006a14:	490080e7          	jalr	1168(ra) # 80005ea0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006a18:	00700313          	li	t1,7
    thread_dispatch();
    80006a1c:	ffffb097          	auipc	ra,0xffffb
    80006a20:	cb8080e7          	jalr	-840(ra) # 800016d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006a24:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006a28:	00004517          	auipc	a0,0x4
    80006a2c:	87850513          	addi	a0,a0,-1928 # 8000a2a0 <_ZZ15printIntegerMojmE6digits+0x140>
    80006a30:	fffff097          	auipc	ra,0xfffff
    80006a34:	470080e7          	jalr	1136(ra) # 80005ea0 <_Z11printStringPKc>
    80006a38:	00000613          	li	a2,0
    80006a3c:	00a00593          	li	a1,10
    80006a40:	0009051b          	sext.w	a0,s2
    80006a44:	fffff097          	auipc	ra,0xfffff
    80006a48:	60c080e7          	jalr	1548(ra) # 80006050 <_Z8printIntiii>
    80006a4c:	00004517          	auipc	a0,0x4
    80006a50:	a5c50513          	addi	a0,a0,-1444 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80006a54:	fffff097          	auipc	ra,0xfffff
    80006a58:	44c080e7          	jalr	1100(ra) # 80005ea0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006a5c:	00c00513          	li	a0,12
    80006a60:	00000097          	auipc	ra,0x0
    80006a64:	d88080e7          	jalr	-632(ra) # 800067e8 <_ZL9fibonaccim>
    80006a68:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006a6c:	00004517          	auipc	a0,0x4
    80006a70:	83c50513          	addi	a0,a0,-1988 # 8000a2a8 <_ZZ15printIntegerMojmE6digits+0x148>
    80006a74:	fffff097          	auipc	ra,0xfffff
    80006a78:	42c080e7          	jalr	1068(ra) # 80005ea0 <_Z11printStringPKc>
    80006a7c:	00000613          	li	a2,0
    80006a80:	00a00593          	li	a1,10
    80006a84:	0009051b          	sext.w	a0,s2
    80006a88:	fffff097          	auipc	ra,0xfffff
    80006a8c:	5c8080e7          	jalr	1480(ra) # 80006050 <_Z8printIntiii>
    80006a90:	00004517          	auipc	a0,0x4
    80006a94:	a1850513          	addi	a0,a0,-1512 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80006a98:	fffff097          	auipc	ra,0xfffff
    80006a9c:	408080e7          	jalr	1032(ra) # 80005ea0 <_Z11printStringPKc>
    80006aa0:	0400006f          	j	80006ae0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006aa4:	00003517          	auipc	a0,0x3
    80006aa8:	7e450513          	addi	a0,a0,2020 # 8000a288 <_ZZ15printIntegerMojmE6digits+0x128>
    80006aac:	fffff097          	auipc	ra,0xfffff
    80006ab0:	3f4080e7          	jalr	1012(ra) # 80005ea0 <_Z11printStringPKc>
    80006ab4:	00000613          	li	a2,0
    80006ab8:	00a00593          	li	a1,10
    80006abc:	00048513          	mv	a0,s1
    80006ac0:	fffff097          	auipc	ra,0xfffff
    80006ac4:	590080e7          	jalr	1424(ra) # 80006050 <_Z8printIntiii>
    80006ac8:	00004517          	auipc	a0,0x4
    80006acc:	9e050513          	addi	a0,a0,-1568 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80006ad0:	fffff097          	auipc	ra,0xfffff
    80006ad4:	3d0080e7          	jalr	976(ra) # 80005ea0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006ad8:	0014849b          	addiw	s1,s1,1
    80006adc:	0ff4f493          	andi	s1,s1,255
    80006ae0:	00500793          	li	a5,5
    80006ae4:	fc97f0e3          	bgeu	a5,s1,80006aa4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006ae8:	00003517          	auipc	a0,0x3
    80006aec:	77850513          	addi	a0,a0,1912 # 8000a260 <_ZZ15printIntegerMojmE6digits+0x100>
    80006af0:	fffff097          	auipc	ra,0xfffff
    80006af4:	3b0080e7          	jalr	944(ra) # 80005ea0 <_Z11printStringPKc>
    finishedC = true;
    80006af8:	00100793          	li	a5,1
    80006afc:	00006717          	auipc	a4,0x6
    80006b00:	18f70ba3          	sb	a5,407(a4) # 8000cc93 <_ZL9finishedC>
    thread_dispatch();
    80006b04:	ffffb097          	auipc	ra,0xffffb
    80006b08:	bd0080e7          	jalr	-1072(ra) # 800016d4 <_Z15thread_dispatchv>
}
    80006b0c:	01813083          	ld	ra,24(sp)
    80006b10:	01013403          	ld	s0,16(sp)
    80006b14:	00813483          	ld	s1,8(sp)
    80006b18:	00013903          	ld	s2,0(sp)
    80006b1c:	02010113          	addi	sp,sp,32
    80006b20:	00008067          	ret

0000000080006b24 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006b24:	fe010113          	addi	sp,sp,-32
    80006b28:	00113c23          	sd	ra,24(sp)
    80006b2c:	00813823          	sd	s0,16(sp)
    80006b30:	00913423          	sd	s1,8(sp)
    80006b34:	01213023          	sd	s2,0(sp)
    80006b38:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006b3c:	00000913          	li	s2,0
    80006b40:	0400006f          	j	80006b80 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006b44:	ffffb097          	auipc	ra,0xffffb
    80006b48:	b90080e7          	jalr	-1136(ra) # 800016d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006b4c:	00148493          	addi	s1,s1,1
    80006b50:	000027b7          	lui	a5,0x2
    80006b54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006b58:	0097ee63          	bltu	a5,s1,80006b74 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006b5c:	00000713          	li	a4,0
    80006b60:	000077b7          	lui	a5,0x7
    80006b64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006b68:	fce7eee3          	bltu	a5,a4,80006b44 <_ZL11workerBodyBPv+0x20>
    80006b6c:	00170713          	addi	a4,a4,1
    80006b70:	ff1ff06f          	j	80006b60 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006b74:	00a00793          	li	a5,10
    80006b78:	04f90663          	beq	s2,a5,80006bc4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006b7c:	00190913          	addi	s2,s2,1
    80006b80:	00f00793          	li	a5,15
    80006b84:	0527e463          	bltu	a5,s2,80006bcc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006b88:	00003517          	auipc	a0,0x3
    80006b8c:	6e850513          	addi	a0,a0,1768 # 8000a270 <_ZZ15printIntegerMojmE6digits+0x110>
    80006b90:	fffff097          	auipc	ra,0xfffff
    80006b94:	310080e7          	jalr	784(ra) # 80005ea0 <_Z11printStringPKc>
    80006b98:	00000613          	li	a2,0
    80006b9c:	00a00593          	li	a1,10
    80006ba0:	0009051b          	sext.w	a0,s2
    80006ba4:	fffff097          	auipc	ra,0xfffff
    80006ba8:	4ac080e7          	jalr	1196(ra) # 80006050 <_Z8printIntiii>
    80006bac:	00004517          	auipc	a0,0x4
    80006bb0:	8fc50513          	addi	a0,a0,-1796 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80006bb4:	fffff097          	auipc	ra,0xfffff
    80006bb8:	2ec080e7          	jalr	748(ra) # 80005ea0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006bbc:	00000493          	li	s1,0
    80006bc0:	f91ff06f          	j	80006b50 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006bc4:	14102ff3          	csrr	t6,sepc
    80006bc8:	fb5ff06f          	j	80006b7c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006bcc:	00003517          	auipc	a0,0x3
    80006bd0:	6ac50513          	addi	a0,a0,1708 # 8000a278 <_ZZ15printIntegerMojmE6digits+0x118>
    80006bd4:	fffff097          	auipc	ra,0xfffff
    80006bd8:	2cc080e7          	jalr	716(ra) # 80005ea0 <_Z11printStringPKc>
    finishedB = true;
    80006bdc:	00100793          	li	a5,1
    80006be0:	00006717          	auipc	a4,0x6
    80006be4:	0af70a23          	sb	a5,180(a4) # 8000cc94 <_ZL9finishedB>
    thread_dispatch();
    80006be8:	ffffb097          	auipc	ra,0xffffb
    80006bec:	aec080e7          	jalr	-1300(ra) # 800016d4 <_Z15thread_dispatchv>
}
    80006bf0:	01813083          	ld	ra,24(sp)
    80006bf4:	01013403          	ld	s0,16(sp)
    80006bf8:	00813483          	ld	s1,8(sp)
    80006bfc:	00013903          	ld	s2,0(sp)
    80006c00:	02010113          	addi	sp,sp,32
    80006c04:	00008067          	ret

0000000080006c08 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006c08:	fe010113          	addi	sp,sp,-32
    80006c0c:	00113c23          	sd	ra,24(sp)
    80006c10:	00813823          	sd	s0,16(sp)
    80006c14:	00913423          	sd	s1,8(sp)
    80006c18:	01213023          	sd	s2,0(sp)
    80006c1c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006c20:	00000913          	li	s2,0
    80006c24:	0380006f          	j	80006c5c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006c28:	ffffb097          	auipc	ra,0xffffb
    80006c2c:	aac080e7          	jalr	-1364(ra) # 800016d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006c30:	00148493          	addi	s1,s1,1
    80006c34:	000027b7          	lui	a5,0x2
    80006c38:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006c3c:	0097ee63          	bltu	a5,s1,80006c58 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006c40:	00000713          	li	a4,0
    80006c44:	000077b7          	lui	a5,0x7
    80006c48:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006c4c:	fce7eee3          	bltu	a5,a4,80006c28 <_ZL11workerBodyAPv+0x20>
    80006c50:	00170713          	addi	a4,a4,1
    80006c54:	ff1ff06f          	j	80006c44 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006c58:	00190913          	addi	s2,s2,1
    80006c5c:	00900793          	li	a5,9
    80006c60:	0527e063          	bltu	a5,s2,80006ca0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006c64:	00003517          	auipc	a0,0x3
    80006c68:	5f450513          	addi	a0,a0,1524 # 8000a258 <_ZZ15printIntegerMojmE6digits+0xf8>
    80006c6c:	fffff097          	auipc	ra,0xfffff
    80006c70:	234080e7          	jalr	564(ra) # 80005ea0 <_Z11printStringPKc>
    80006c74:	00000613          	li	a2,0
    80006c78:	00a00593          	li	a1,10
    80006c7c:	0009051b          	sext.w	a0,s2
    80006c80:	fffff097          	auipc	ra,0xfffff
    80006c84:	3d0080e7          	jalr	976(ra) # 80006050 <_Z8printIntiii>
    80006c88:	00004517          	auipc	a0,0x4
    80006c8c:	82050513          	addi	a0,a0,-2016 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80006c90:	fffff097          	auipc	ra,0xfffff
    80006c94:	210080e7          	jalr	528(ra) # 80005ea0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006c98:	00000493          	li	s1,0
    80006c9c:	f99ff06f          	j	80006c34 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006ca0:	00003517          	auipc	a0,0x3
    80006ca4:	5c050513          	addi	a0,a0,1472 # 8000a260 <_ZZ15printIntegerMojmE6digits+0x100>
    80006ca8:	fffff097          	auipc	ra,0xfffff
    80006cac:	1f8080e7          	jalr	504(ra) # 80005ea0 <_Z11printStringPKc>
    finishedA = true;
    80006cb0:	00100793          	li	a5,1
    80006cb4:	00006717          	auipc	a4,0x6
    80006cb8:	fef700a3          	sb	a5,-31(a4) # 8000cc95 <_ZL9finishedA>
}
    80006cbc:	01813083          	ld	ra,24(sp)
    80006cc0:	01013403          	ld	s0,16(sp)
    80006cc4:	00813483          	ld	s1,8(sp)
    80006cc8:	00013903          	ld	s2,0(sp)
    80006ccc:	02010113          	addi	sp,sp,32
    80006cd0:	00008067          	ret

0000000080006cd4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006cd4:	fd010113          	addi	sp,sp,-48
    80006cd8:	02113423          	sd	ra,40(sp)
    80006cdc:	02813023          	sd	s0,32(sp)
    80006ce0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006ce4:	00000613          	li	a2,0
    80006ce8:	00000597          	auipc	a1,0x0
    80006cec:	f2058593          	addi	a1,a1,-224 # 80006c08 <_ZL11workerBodyAPv>
    80006cf0:	fd040513          	addi	a0,s0,-48
    80006cf4:	ffffb097          	auipc	ra,0xffffb
    80006cf8:	8e8080e7          	jalr	-1816(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006cfc:	00003517          	auipc	a0,0x3
    80006d00:	5f450513          	addi	a0,a0,1524 # 8000a2f0 <_ZZ15printIntegerMojmE6digits+0x190>
    80006d04:	fffff097          	auipc	ra,0xfffff
    80006d08:	19c080e7          	jalr	412(ra) # 80005ea0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006d0c:	00000613          	li	a2,0
    80006d10:	00000597          	auipc	a1,0x0
    80006d14:	e1458593          	addi	a1,a1,-492 # 80006b24 <_ZL11workerBodyBPv>
    80006d18:	fd840513          	addi	a0,s0,-40
    80006d1c:	ffffb097          	auipc	ra,0xffffb
    80006d20:	8c0080e7          	jalr	-1856(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006d24:	00003517          	auipc	a0,0x3
    80006d28:	5e450513          	addi	a0,a0,1508 # 8000a308 <_ZZ15printIntegerMojmE6digits+0x1a8>
    80006d2c:	fffff097          	auipc	ra,0xfffff
    80006d30:	174080e7          	jalr	372(ra) # 80005ea0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006d34:	00000613          	li	a2,0
    80006d38:	00000597          	auipc	a1,0x0
    80006d3c:	c6c58593          	addi	a1,a1,-916 # 800069a4 <_ZL11workerBodyCPv>
    80006d40:	fe040513          	addi	a0,s0,-32
    80006d44:	ffffb097          	auipc	ra,0xffffb
    80006d48:	898080e7          	jalr	-1896(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006d4c:	00003517          	auipc	a0,0x3
    80006d50:	5d450513          	addi	a0,a0,1492 # 8000a320 <_ZZ15printIntegerMojmE6digits+0x1c0>
    80006d54:	fffff097          	auipc	ra,0xfffff
    80006d58:	14c080e7          	jalr	332(ra) # 80005ea0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006d5c:	00000613          	li	a2,0
    80006d60:	00000597          	auipc	a1,0x0
    80006d64:	afc58593          	addi	a1,a1,-1284 # 8000685c <_ZL11workerBodyDPv>
    80006d68:	fe840513          	addi	a0,s0,-24
    80006d6c:	ffffb097          	auipc	ra,0xffffb
    80006d70:	870080e7          	jalr	-1936(ra) # 800015dc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006d74:	00003517          	auipc	a0,0x3
    80006d78:	5c450513          	addi	a0,a0,1476 # 8000a338 <_ZZ15printIntegerMojmE6digits+0x1d8>
    80006d7c:	fffff097          	auipc	ra,0xfffff
    80006d80:	124080e7          	jalr	292(ra) # 80005ea0 <_Z11printStringPKc>
    80006d84:	00c0006f          	j	80006d90 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006d88:	ffffb097          	auipc	ra,0xffffb
    80006d8c:	94c080e7          	jalr	-1716(ra) # 800016d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006d90:	00006797          	auipc	a5,0x6
    80006d94:	f057c783          	lbu	a5,-251(a5) # 8000cc95 <_ZL9finishedA>
    80006d98:	fe0788e3          	beqz	a5,80006d88 <_Z16System_Mode_testv+0xb4>
    80006d9c:	00006797          	auipc	a5,0x6
    80006da0:	ef87c783          	lbu	a5,-264(a5) # 8000cc94 <_ZL9finishedB>
    80006da4:	fe0782e3          	beqz	a5,80006d88 <_Z16System_Mode_testv+0xb4>
    80006da8:	00006797          	auipc	a5,0x6
    80006dac:	eeb7c783          	lbu	a5,-277(a5) # 8000cc93 <_ZL9finishedC>
    80006db0:	fc078ce3          	beqz	a5,80006d88 <_Z16System_Mode_testv+0xb4>
    80006db4:	00006797          	auipc	a5,0x6
    80006db8:	ede7c783          	lbu	a5,-290(a5) # 8000cc92 <_ZL9finishedD>
    80006dbc:	fc0786e3          	beqz	a5,80006d88 <_Z16System_Mode_testv+0xb4>
    }

}
    80006dc0:	02813083          	ld	ra,40(sp)
    80006dc4:	02013403          	ld	s0,32(sp)
    80006dc8:	03010113          	addi	sp,sp,48
    80006dcc:	00008067          	ret

0000000080006dd0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006dd0:	fe010113          	addi	sp,sp,-32
    80006dd4:	00113c23          	sd	ra,24(sp)
    80006dd8:	00813823          	sd	s0,16(sp)
    80006ddc:	00913423          	sd	s1,8(sp)
    80006de0:	01213023          	sd	s2,0(sp)
    80006de4:	02010413          	addi	s0,sp,32
    80006de8:	00050493          	mv	s1,a0
    80006dec:	00058913          	mv	s2,a1
    80006df0:	0015879b          	addiw	a5,a1,1
    80006df4:	0007851b          	sext.w	a0,a5
    80006df8:	00f4a023          	sw	a5,0(s1)
    80006dfc:	0004a823          	sw	zero,16(s1)
    80006e00:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006e04:	00251513          	slli	a0,a0,0x2
    80006e08:	ffffa097          	auipc	ra,0xffffa
    80006e0c:	73c080e7          	jalr	1852(ra) # 80001544 <_Z9mem_allocm>
    80006e10:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006e14:	00000593          	li	a1,0
    80006e18:	02048513          	addi	a0,s1,32
    80006e1c:	ffffb097          	auipc	ra,0xffffb
    80006e20:	958080e7          	jalr	-1704(ra) # 80001774 <_Z8sem_openPP10kSemaphorej>
    sem_open(&spaceAvailable, _cap);
    80006e24:	00090593          	mv	a1,s2
    80006e28:	01848513          	addi	a0,s1,24
    80006e2c:	ffffb097          	auipc	ra,0xffffb
    80006e30:	948080e7          	jalr	-1720(ra) # 80001774 <_Z8sem_openPP10kSemaphorej>
    sem_open(&mutexHead, 1);
    80006e34:	00100593          	li	a1,1
    80006e38:	02848513          	addi	a0,s1,40
    80006e3c:	ffffb097          	auipc	ra,0xffffb
    80006e40:	938080e7          	jalr	-1736(ra) # 80001774 <_Z8sem_openPP10kSemaphorej>
    sem_open(&mutexTail, 1);
    80006e44:	00100593          	li	a1,1
    80006e48:	03048513          	addi	a0,s1,48
    80006e4c:	ffffb097          	auipc	ra,0xffffb
    80006e50:	928080e7          	jalr	-1752(ra) # 80001774 <_Z8sem_openPP10kSemaphorej>
}
    80006e54:	01813083          	ld	ra,24(sp)
    80006e58:	01013403          	ld	s0,16(sp)
    80006e5c:	00813483          	ld	s1,8(sp)
    80006e60:	00013903          	ld	s2,0(sp)
    80006e64:	02010113          	addi	sp,sp,32
    80006e68:	00008067          	ret

0000000080006e6c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006e6c:	fe010113          	addi	sp,sp,-32
    80006e70:	00113c23          	sd	ra,24(sp)
    80006e74:	00813823          	sd	s0,16(sp)
    80006e78:	00913423          	sd	s1,8(sp)
    80006e7c:	01213023          	sd	s2,0(sp)
    80006e80:	02010413          	addi	s0,sp,32
    80006e84:	00050493          	mv	s1,a0
    80006e88:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006e8c:	01853503          	ld	a0,24(a0)
    80006e90:	ffffb097          	auipc	ra,0xffffb
    80006e94:	944080e7          	jalr	-1724(ra) # 800017d4 <_Z8sem_waitP10kSemaphore>

    sem_wait(mutexTail);
    80006e98:	0304b503          	ld	a0,48(s1)
    80006e9c:	ffffb097          	auipc	ra,0xffffb
    80006ea0:	938080e7          	jalr	-1736(ra) # 800017d4 <_Z8sem_waitP10kSemaphore>
    buffer[tail] = val;
    80006ea4:	0084b783          	ld	a5,8(s1)
    80006ea8:	0144a703          	lw	a4,20(s1)
    80006eac:	00271713          	slli	a4,a4,0x2
    80006eb0:	00e787b3          	add	a5,a5,a4
    80006eb4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006eb8:	0144a783          	lw	a5,20(s1)
    80006ebc:	0017879b          	addiw	a5,a5,1
    80006ec0:	0004a703          	lw	a4,0(s1)
    80006ec4:	02e7e7bb          	remw	a5,a5,a4
    80006ec8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006ecc:	0304b503          	ld	a0,48(s1)
    80006ed0:	ffffb097          	auipc	ra,0xffffb
    80006ed4:	96c080e7          	jalr	-1684(ra) # 8000183c <_Z10sem_signalP10kSemaphore>

    sem_signal(itemAvailable);
    80006ed8:	0204b503          	ld	a0,32(s1)
    80006edc:	ffffb097          	auipc	ra,0xffffb
    80006ee0:	960080e7          	jalr	-1696(ra) # 8000183c <_Z10sem_signalP10kSemaphore>

}
    80006ee4:	01813083          	ld	ra,24(sp)
    80006ee8:	01013403          	ld	s0,16(sp)
    80006eec:	00813483          	ld	s1,8(sp)
    80006ef0:	00013903          	ld	s2,0(sp)
    80006ef4:	02010113          	addi	sp,sp,32
    80006ef8:	00008067          	ret

0000000080006efc <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006efc:	fe010113          	addi	sp,sp,-32
    80006f00:	00113c23          	sd	ra,24(sp)
    80006f04:	00813823          	sd	s0,16(sp)
    80006f08:	00913423          	sd	s1,8(sp)
    80006f0c:	01213023          	sd	s2,0(sp)
    80006f10:	02010413          	addi	s0,sp,32
    80006f14:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006f18:	02053503          	ld	a0,32(a0)
    80006f1c:	ffffb097          	auipc	ra,0xffffb
    80006f20:	8b8080e7          	jalr	-1864(ra) # 800017d4 <_Z8sem_waitP10kSemaphore>

    sem_wait(mutexHead);
    80006f24:	0284b503          	ld	a0,40(s1)
    80006f28:	ffffb097          	auipc	ra,0xffffb
    80006f2c:	8ac080e7          	jalr	-1876(ra) # 800017d4 <_Z8sem_waitP10kSemaphore>

    int ret = buffer[head];
    80006f30:	0084b703          	ld	a4,8(s1)
    80006f34:	0104a783          	lw	a5,16(s1)
    80006f38:	00279693          	slli	a3,a5,0x2
    80006f3c:	00d70733          	add	a4,a4,a3
    80006f40:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006f44:	0017879b          	addiw	a5,a5,1
    80006f48:	0004a703          	lw	a4,0(s1)
    80006f4c:	02e7e7bb          	remw	a5,a5,a4
    80006f50:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006f54:	0284b503          	ld	a0,40(s1)
    80006f58:	ffffb097          	auipc	ra,0xffffb
    80006f5c:	8e4080e7          	jalr	-1820(ra) # 8000183c <_Z10sem_signalP10kSemaphore>

    sem_signal(spaceAvailable);
    80006f60:	0184b503          	ld	a0,24(s1)
    80006f64:	ffffb097          	auipc	ra,0xffffb
    80006f68:	8d8080e7          	jalr	-1832(ra) # 8000183c <_Z10sem_signalP10kSemaphore>

    return ret;
}
    80006f6c:	00090513          	mv	a0,s2
    80006f70:	01813083          	ld	ra,24(sp)
    80006f74:	01013403          	ld	s0,16(sp)
    80006f78:	00813483          	ld	s1,8(sp)
    80006f7c:	00013903          	ld	s2,0(sp)
    80006f80:	02010113          	addi	sp,sp,32
    80006f84:	00008067          	ret

0000000080006f88 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006f88:	fe010113          	addi	sp,sp,-32
    80006f8c:	00113c23          	sd	ra,24(sp)
    80006f90:	00813823          	sd	s0,16(sp)
    80006f94:	00913423          	sd	s1,8(sp)
    80006f98:	01213023          	sd	s2,0(sp)
    80006f9c:	02010413          	addi	s0,sp,32
    80006fa0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006fa4:	02853503          	ld	a0,40(a0)
    80006fa8:	ffffb097          	auipc	ra,0xffffb
    80006fac:	82c080e7          	jalr	-2004(ra) # 800017d4 <_Z8sem_waitP10kSemaphore>
    sem_wait(mutexTail);
    80006fb0:	0304b503          	ld	a0,48(s1)
    80006fb4:	ffffb097          	auipc	ra,0xffffb
    80006fb8:	820080e7          	jalr	-2016(ra) # 800017d4 <_Z8sem_waitP10kSemaphore>

    if (tail >= head) {
    80006fbc:	0144a783          	lw	a5,20(s1)
    80006fc0:	0104a903          	lw	s2,16(s1)
    80006fc4:	0327ce63          	blt	a5,s2,80007000 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006fc8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006fcc:	0304b503          	ld	a0,48(s1)
    80006fd0:	ffffb097          	auipc	ra,0xffffb
    80006fd4:	86c080e7          	jalr	-1940(ra) # 8000183c <_Z10sem_signalP10kSemaphore>
    sem_signal(mutexHead);
    80006fd8:	0284b503          	ld	a0,40(s1)
    80006fdc:	ffffb097          	auipc	ra,0xffffb
    80006fe0:	860080e7          	jalr	-1952(ra) # 8000183c <_Z10sem_signalP10kSemaphore>

    return ret;
}
    80006fe4:	00090513          	mv	a0,s2
    80006fe8:	01813083          	ld	ra,24(sp)
    80006fec:	01013403          	ld	s0,16(sp)
    80006ff0:	00813483          	ld	s1,8(sp)
    80006ff4:	00013903          	ld	s2,0(sp)
    80006ff8:	02010113          	addi	sp,sp,32
    80006ffc:	00008067          	ret
        ret = cap - head + tail;
    80007000:	0004a703          	lw	a4,0(s1)
    80007004:	4127093b          	subw	s2,a4,s2
    80007008:	00f9093b          	addw	s2,s2,a5
    8000700c:	fc1ff06f          	j	80006fcc <_ZN6Buffer6getCntEv+0x44>

0000000080007010 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80007010:	fe010113          	addi	sp,sp,-32
    80007014:	00113c23          	sd	ra,24(sp)
    80007018:	00813823          	sd	s0,16(sp)
    8000701c:	00913423          	sd	s1,8(sp)
    80007020:	02010413          	addi	s0,sp,32
    80007024:	00050493          	mv	s1,a0
    putc('\n');
    80007028:	00a00513          	li	a0,10
    8000702c:	ffffb097          	auipc	ra,0xffffb
    80007030:	a00080e7          	jalr	-1536(ra) # 80001a2c <_Z4putcc>
    printString("Buffer deleted!\n");
    80007034:	00003517          	auipc	a0,0x3
    80007038:	31c50513          	addi	a0,a0,796 # 8000a350 <_ZZ15printIntegerMojmE6digits+0x1f0>
    8000703c:	fffff097          	auipc	ra,0xfffff
    80007040:	e64080e7          	jalr	-412(ra) # 80005ea0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80007044:	00048513          	mv	a0,s1
    80007048:	00000097          	auipc	ra,0x0
    8000704c:	f40080e7          	jalr	-192(ra) # 80006f88 <_ZN6Buffer6getCntEv>
    80007050:	02a05c63          	blez	a0,80007088 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80007054:	0084b783          	ld	a5,8(s1)
    80007058:	0104a703          	lw	a4,16(s1)
    8000705c:	00271713          	slli	a4,a4,0x2
    80007060:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80007064:	0007c503          	lbu	a0,0(a5)
    80007068:	ffffb097          	auipc	ra,0xffffb
    8000706c:	9c4080e7          	jalr	-1596(ra) # 80001a2c <_Z4putcc>
        head = (head + 1) % cap;
    80007070:	0104a783          	lw	a5,16(s1)
    80007074:	0017879b          	addiw	a5,a5,1
    80007078:	0004a703          	lw	a4,0(s1)
    8000707c:	02e7e7bb          	remw	a5,a5,a4
    80007080:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80007084:	fc1ff06f          	j	80007044 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80007088:	02100513          	li	a0,33
    8000708c:	ffffb097          	auipc	ra,0xffffb
    80007090:	9a0080e7          	jalr	-1632(ra) # 80001a2c <_Z4putcc>
    putc('\n');
    80007094:	00a00513          	li	a0,10
    80007098:	ffffb097          	auipc	ra,0xffffb
    8000709c:	994080e7          	jalr	-1644(ra) # 80001a2c <_Z4putcc>
    mem_free(buffer);
    800070a0:	0084b503          	ld	a0,8(s1)
    800070a4:	ffffa097          	auipc	ra,0xffffa
    800070a8:	4e8080e7          	jalr	1256(ra) # 8000158c <_Z8mem_freePv>
    sem_close(itemAvailable);
    800070ac:	0204b503          	ld	a0,32(s1)
    800070b0:	ffffa097          	auipc	ra,0xffffa
    800070b4:	7f4080e7          	jalr	2036(ra) # 800018a4 <_Z9sem_closeP10kSemaphore>
    sem_close(spaceAvailable);
    800070b8:	0184b503          	ld	a0,24(s1)
    800070bc:	ffffa097          	auipc	ra,0xffffa
    800070c0:	7e8080e7          	jalr	2024(ra) # 800018a4 <_Z9sem_closeP10kSemaphore>
    sem_close(mutexTail);
    800070c4:	0304b503          	ld	a0,48(s1)
    800070c8:	ffffa097          	auipc	ra,0xffffa
    800070cc:	7dc080e7          	jalr	2012(ra) # 800018a4 <_Z9sem_closeP10kSemaphore>
    sem_close(mutexHead);
    800070d0:	0284b503          	ld	a0,40(s1)
    800070d4:	ffffa097          	auipc	ra,0xffffa
    800070d8:	7d0080e7          	jalr	2000(ra) # 800018a4 <_Z9sem_closeP10kSemaphore>
}
    800070dc:	01813083          	ld	ra,24(sp)
    800070e0:	01013403          	ld	s0,16(sp)
    800070e4:	00813483          	ld	s1,8(sp)
    800070e8:	02010113          	addi	sp,sp,32
    800070ec:	00008067          	ret

00000000800070f0 <start>:
    800070f0:	ff010113          	addi	sp,sp,-16
    800070f4:	00813423          	sd	s0,8(sp)
    800070f8:	01010413          	addi	s0,sp,16
    800070fc:	300027f3          	csrr	a5,mstatus
    80007100:	ffffe737          	lui	a4,0xffffe
    80007104:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff08ff>
    80007108:	00e7f7b3          	and	a5,a5,a4
    8000710c:	00001737          	lui	a4,0x1
    80007110:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007114:	00e7e7b3          	or	a5,a5,a4
    80007118:	30079073          	csrw	mstatus,a5
    8000711c:	00000797          	auipc	a5,0x0
    80007120:	16078793          	addi	a5,a5,352 # 8000727c <system_main>
    80007124:	34179073          	csrw	mepc,a5
    80007128:	00000793          	li	a5,0
    8000712c:	18079073          	csrw	satp,a5
    80007130:	000107b7          	lui	a5,0x10
    80007134:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007138:	30279073          	csrw	medeleg,a5
    8000713c:	30379073          	csrw	mideleg,a5
    80007140:	104027f3          	csrr	a5,sie
    80007144:	2227e793          	ori	a5,a5,546
    80007148:	10479073          	csrw	sie,a5
    8000714c:	fff00793          	li	a5,-1
    80007150:	00a7d793          	srli	a5,a5,0xa
    80007154:	3b079073          	csrw	pmpaddr0,a5
    80007158:	00f00793          	li	a5,15
    8000715c:	3a079073          	csrw	pmpcfg0,a5
    80007160:	f14027f3          	csrr	a5,mhartid
    80007164:	0200c737          	lui	a4,0x200c
    80007168:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000716c:	0007869b          	sext.w	a3,a5
    80007170:	00269713          	slli	a4,a3,0x2
    80007174:	000f4637          	lui	a2,0xf4
    80007178:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000717c:	00d70733          	add	a4,a4,a3
    80007180:	0037979b          	slliw	a5,a5,0x3
    80007184:	020046b7          	lui	a3,0x2004
    80007188:	00d787b3          	add	a5,a5,a3
    8000718c:	00c585b3          	add	a1,a1,a2
    80007190:	00371693          	slli	a3,a4,0x3
    80007194:	00006717          	auipc	a4,0x6
    80007198:	b0c70713          	addi	a4,a4,-1268 # 8000cca0 <timer_scratch>
    8000719c:	00b7b023          	sd	a1,0(a5)
    800071a0:	00d70733          	add	a4,a4,a3
    800071a4:	00f73c23          	sd	a5,24(a4)
    800071a8:	02c73023          	sd	a2,32(a4)
    800071ac:	34071073          	csrw	mscratch,a4
    800071b0:	00000797          	auipc	a5,0x0
    800071b4:	6e078793          	addi	a5,a5,1760 # 80007890 <timervec>
    800071b8:	30579073          	csrw	mtvec,a5
    800071bc:	300027f3          	csrr	a5,mstatus
    800071c0:	0087e793          	ori	a5,a5,8
    800071c4:	30079073          	csrw	mstatus,a5
    800071c8:	304027f3          	csrr	a5,mie
    800071cc:	0807e793          	ori	a5,a5,128
    800071d0:	30479073          	csrw	mie,a5
    800071d4:	f14027f3          	csrr	a5,mhartid
    800071d8:	0007879b          	sext.w	a5,a5
    800071dc:	00078213          	mv	tp,a5
    800071e0:	30200073          	mret
    800071e4:	00813403          	ld	s0,8(sp)
    800071e8:	01010113          	addi	sp,sp,16
    800071ec:	00008067          	ret

00000000800071f0 <timerinit>:
    800071f0:	ff010113          	addi	sp,sp,-16
    800071f4:	00813423          	sd	s0,8(sp)
    800071f8:	01010413          	addi	s0,sp,16
    800071fc:	f14027f3          	csrr	a5,mhartid
    80007200:	0200c737          	lui	a4,0x200c
    80007204:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007208:	0007869b          	sext.w	a3,a5
    8000720c:	00269713          	slli	a4,a3,0x2
    80007210:	000f4637          	lui	a2,0xf4
    80007214:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007218:	00d70733          	add	a4,a4,a3
    8000721c:	0037979b          	slliw	a5,a5,0x3
    80007220:	020046b7          	lui	a3,0x2004
    80007224:	00d787b3          	add	a5,a5,a3
    80007228:	00c585b3          	add	a1,a1,a2
    8000722c:	00371693          	slli	a3,a4,0x3
    80007230:	00006717          	auipc	a4,0x6
    80007234:	a7070713          	addi	a4,a4,-1424 # 8000cca0 <timer_scratch>
    80007238:	00b7b023          	sd	a1,0(a5)
    8000723c:	00d70733          	add	a4,a4,a3
    80007240:	00f73c23          	sd	a5,24(a4)
    80007244:	02c73023          	sd	a2,32(a4)
    80007248:	34071073          	csrw	mscratch,a4
    8000724c:	00000797          	auipc	a5,0x0
    80007250:	64478793          	addi	a5,a5,1604 # 80007890 <timervec>
    80007254:	30579073          	csrw	mtvec,a5
    80007258:	300027f3          	csrr	a5,mstatus
    8000725c:	0087e793          	ori	a5,a5,8
    80007260:	30079073          	csrw	mstatus,a5
    80007264:	304027f3          	csrr	a5,mie
    80007268:	0807e793          	ori	a5,a5,128
    8000726c:	30479073          	csrw	mie,a5
    80007270:	00813403          	ld	s0,8(sp)
    80007274:	01010113          	addi	sp,sp,16
    80007278:	00008067          	ret

000000008000727c <system_main>:
    8000727c:	fe010113          	addi	sp,sp,-32
    80007280:	00813823          	sd	s0,16(sp)
    80007284:	00913423          	sd	s1,8(sp)
    80007288:	00113c23          	sd	ra,24(sp)
    8000728c:	02010413          	addi	s0,sp,32
    80007290:	00000097          	auipc	ra,0x0
    80007294:	0c4080e7          	jalr	196(ra) # 80007354 <cpuid>
    80007298:	00006497          	auipc	s1,0x6
    8000729c:	91848493          	addi	s1,s1,-1768 # 8000cbb0 <started>
    800072a0:	02050263          	beqz	a0,800072c4 <system_main+0x48>
    800072a4:	0004a783          	lw	a5,0(s1)
    800072a8:	0007879b          	sext.w	a5,a5
    800072ac:	fe078ce3          	beqz	a5,800072a4 <system_main+0x28>
    800072b0:	0ff0000f          	fence
    800072b4:	00003517          	auipc	a0,0x3
    800072b8:	35450513          	addi	a0,a0,852 # 8000a608 <_ZZ15printIntegerMojmE6digits+0x4a8>
    800072bc:	00001097          	auipc	ra,0x1
    800072c0:	a70080e7          	jalr	-1424(ra) # 80007d2c <panic>
    800072c4:	00001097          	auipc	ra,0x1
    800072c8:	9c4080e7          	jalr	-1596(ra) # 80007c88 <consoleinit>
    800072cc:	00001097          	auipc	ra,0x1
    800072d0:	150080e7          	jalr	336(ra) # 8000841c <printfinit>
    800072d4:	00003517          	auipc	a0,0x3
    800072d8:	1d450513          	addi	a0,a0,468 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800072dc:	00001097          	auipc	ra,0x1
    800072e0:	aac080e7          	jalr	-1364(ra) # 80007d88 <__printf>
    800072e4:	00003517          	auipc	a0,0x3
    800072e8:	30c50513          	addi	a0,a0,780 # 8000a5f0 <_ZZ15printIntegerMojmE6digits+0x490>
    800072ec:	00001097          	auipc	ra,0x1
    800072f0:	a9c080e7          	jalr	-1380(ra) # 80007d88 <__printf>
    800072f4:	00003517          	auipc	a0,0x3
    800072f8:	1b450513          	addi	a0,a0,436 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    800072fc:	00001097          	auipc	ra,0x1
    80007300:	a8c080e7          	jalr	-1396(ra) # 80007d88 <__printf>
    80007304:	00001097          	auipc	ra,0x1
    80007308:	4a4080e7          	jalr	1188(ra) # 800087a8 <kinit>
    8000730c:	00000097          	auipc	ra,0x0
    80007310:	148080e7          	jalr	328(ra) # 80007454 <trapinit>
    80007314:	00000097          	auipc	ra,0x0
    80007318:	16c080e7          	jalr	364(ra) # 80007480 <trapinithart>
    8000731c:	00000097          	auipc	ra,0x0
    80007320:	5b4080e7          	jalr	1460(ra) # 800078d0 <plicinit>
    80007324:	00000097          	auipc	ra,0x0
    80007328:	5d4080e7          	jalr	1492(ra) # 800078f8 <plicinithart>
    8000732c:	00000097          	auipc	ra,0x0
    80007330:	078080e7          	jalr	120(ra) # 800073a4 <userinit>
    80007334:	0ff0000f          	fence
    80007338:	00100793          	li	a5,1
    8000733c:	00003517          	auipc	a0,0x3
    80007340:	ce450513          	addi	a0,a0,-796 # 8000a020 <CONSOLE_STATUS+0x10>
    80007344:	00f4a023          	sw	a5,0(s1)
    80007348:	00001097          	auipc	ra,0x1
    8000734c:	a40080e7          	jalr	-1472(ra) # 80007d88 <__printf>
    80007350:	0000006f          	j	80007350 <system_main+0xd4>

0000000080007354 <cpuid>:
    80007354:	ff010113          	addi	sp,sp,-16
    80007358:	00813423          	sd	s0,8(sp)
    8000735c:	01010413          	addi	s0,sp,16
    80007360:	00020513          	mv	a0,tp
    80007364:	00813403          	ld	s0,8(sp)
    80007368:	0005051b          	sext.w	a0,a0
    8000736c:	01010113          	addi	sp,sp,16
    80007370:	00008067          	ret

0000000080007374 <mycpu>:
    80007374:	ff010113          	addi	sp,sp,-16
    80007378:	00813423          	sd	s0,8(sp)
    8000737c:	01010413          	addi	s0,sp,16
    80007380:	00020793          	mv	a5,tp
    80007384:	00813403          	ld	s0,8(sp)
    80007388:	0007879b          	sext.w	a5,a5
    8000738c:	00779793          	slli	a5,a5,0x7
    80007390:	00007517          	auipc	a0,0x7
    80007394:	94050513          	addi	a0,a0,-1728 # 8000dcd0 <cpus>
    80007398:	00f50533          	add	a0,a0,a5
    8000739c:	01010113          	addi	sp,sp,16
    800073a0:	00008067          	ret

00000000800073a4 <userinit>:
    800073a4:	ff010113          	addi	sp,sp,-16
    800073a8:	00813423          	sd	s0,8(sp)
    800073ac:	01010413          	addi	s0,sp,16
    800073b0:	00813403          	ld	s0,8(sp)
    800073b4:	01010113          	addi	sp,sp,16
    800073b8:	ffffa317          	auipc	t1,0xffffa
    800073bc:	6dc30067          	jr	1756(t1) # 80001a94 <main>

00000000800073c0 <either_copyout>:
    800073c0:	ff010113          	addi	sp,sp,-16
    800073c4:	00813023          	sd	s0,0(sp)
    800073c8:	00113423          	sd	ra,8(sp)
    800073cc:	01010413          	addi	s0,sp,16
    800073d0:	02051663          	bnez	a0,800073fc <either_copyout+0x3c>
    800073d4:	00058513          	mv	a0,a1
    800073d8:	00060593          	mv	a1,a2
    800073dc:	0006861b          	sext.w	a2,a3
    800073e0:	00002097          	auipc	ra,0x2
    800073e4:	c54080e7          	jalr	-940(ra) # 80009034 <__memmove>
    800073e8:	00813083          	ld	ra,8(sp)
    800073ec:	00013403          	ld	s0,0(sp)
    800073f0:	00000513          	li	a0,0
    800073f4:	01010113          	addi	sp,sp,16
    800073f8:	00008067          	ret
    800073fc:	00003517          	auipc	a0,0x3
    80007400:	23450513          	addi	a0,a0,564 # 8000a630 <_ZZ15printIntegerMojmE6digits+0x4d0>
    80007404:	00001097          	auipc	ra,0x1
    80007408:	928080e7          	jalr	-1752(ra) # 80007d2c <panic>

000000008000740c <either_copyin>:
    8000740c:	ff010113          	addi	sp,sp,-16
    80007410:	00813023          	sd	s0,0(sp)
    80007414:	00113423          	sd	ra,8(sp)
    80007418:	01010413          	addi	s0,sp,16
    8000741c:	02059463          	bnez	a1,80007444 <either_copyin+0x38>
    80007420:	00060593          	mv	a1,a2
    80007424:	0006861b          	sext.w	a2,a3
    80007428:	00002097          	auipc	ra,0x2
    8000742c:	c0c080e7          	jalr	-1012(ra) # 80009034 <__memmove>
    80007430:	00813083          	ld	ra,8(sp)
    80007434:	00013403          	ld	s0,0(sp)
    80007438:	00000513          	li	a0,0
    8000743c:	01010113          	addi	sp,sp,16
    80007440:	00008067          	ret
    80007444:	00003517          	auipc	a0,0x3
    80007448:	21450513          	addi	a0,a0,532 # 8000a658 <_ZZ15printIntegerMojmE6digits+0x4f8>
    8000744c:	00001097          	auipc	ra,0x1
    80007450:	8e0080e7          	jalr	-1824(ra) # 80007d2c <panic>

0000000080007454 <trapinit>:
    80007454:	ff010113          	addi	sp,sp,-16
    80007458:	00813423          	sd	s0,8(sp)
    8000745c:	01010413          	addi	s0,sp,16
    80007460:	00813403          	ld	s0,8(sp)
    80007464:	00003597          	auipc	a1,0x3
    80007468:	21c58593          	addi	a1,a1,540 # 8000a680 <_ZZ15printIntegerMojmE6digits+0x520>
    8000746c:	00007517          	auipc	a0,0x7
    80007470:	8e450513          	addi	a0,a0,-1820 # 8000dd50 <tickslock>
    80007474:	01010113          	addi	sp,sp,16
    80007478:	00001317          	auipc	t1,0x1
    8000747c:	5c030067          	jr	1472(t1) # 80008a38 <initlock>

0000000080007480 <trapinithart>:
    80007480:	ff010113          	addi	sp,sp,-16
    80007484:	00813423          	sd	s0,8(sp)
    80007488:	01010413          	addi	s0,sp,16
    8000748c:	00000797          	auipc	a5,0x0
    80007490:	2f478793          	addi	a5,a5,756 # 80007780 <kernelvec>
    80007494:	10579073          	csrw	stvec,a5
    80007498:	00813403          	ld	s0,8(sp)
    8000749c:	01010113          	addi	sp,sp,16
    800074a0:	00008067          	ret

00000000800074a4 <usertrap>:
    800074a4:	ff010113          	addi	sp,sp,-16
    800074a8:	00813423          	sd	s0,8(sp)
    800074ac:	01010413          	addi	s0,sp,16
    800074b0:	00813403          	ld	s0,8(sp)
    800074b4:	01010113          	addi	sp,sp,16
    800074b8:	00008067          	ret

00000000800074bc <usertrapret>:
    800074bc:	ff010113          	addi	sp,sp,-16
    800074c0:	00813423          	sd	s0,8(sp)
    800074c4:	01010413          	addi	s0,sp,16
    800074c8:	00813403          	ld	s0,8(sp)
    800074cc:	01010113          	addi	sp,sp,16
    800074d0:	00008067          	ret

00000000800074d4 <kerneltrap>:
    800074d4:	fe010113          	addi	sp,sp,-32
    800074d8:	00813823          	sd	s0,16(sp)
    800074dc:	00113c23          	sd	ra,24(sp)
    800074e0:	00913423          	sd	s1,8(sp)
    800074e4:	02010413          	addi	s0,sp,32
    800074e8:	142025f3          	csrr	a1,scause
    800074ec:	100027f3          	csrr	a5,sstatus
    800074f0:	0027f793          	andi	a5,a5,2
    800074f4:	10079c63          	bnez	a5,8000760c <kerneltrap+0x138>
    800074f8:	142027f3          	csrr	a5,scause
    800074fc:	0207ce63          	bltz	a5,80007538 <kerneltrap+0x64>
    80007500:	00003517          	auipc	a0,0x3
    80007504:	1c850513          	addi	a0,a0,456 # 8000a6c8 <_ZZ15printIntegerMojmE6digits+0x568>
    80007508:	00001097          	auipc	ra,0x1
    8000750c:	880080e7          	jalr	-1920(ra) # 80007d88 <__printf>
    80007510:	141025f3          	csrr	a1,sepc
    80007514:	14302673          	csrr	a2,stval
    80007518:	00003517          	auipc	a0,0x3
    8000751c:	1c050513          	addi	a0,a0,448 # 8000a6d8 <_ZZ15printIntegerMojmE6digits+0x578>
    80007520:	00001097          	auipc	ra,0x1
    80007524:	868080e7          	jalr	-1944(ra) # 80007d88 <__printf>
    80007528:	00003517          	auipc	a0,0x3
    8000752c:	1c850513          	addi	a0,a0,456 # 8000a6f0 <_ZZ15printIntegerMojmE6digits+0x590>
    80007530:	00000097          	auipc	ra,0x0
    80007534:	7fc080e7          	jalr	2044(ra) # 80007d2c <panic>
    80007538:	0ff7f713          	andi	a4,a5,255
    8000753c:	00900693          	li	a3,9
    80007540:	04d70063          	beq	a4,a3,80007580 <kerneltrap+0xac>
    80007544:	fff00713          	li	a4,-1
    80007548:	03f71713          	slli	a4,a4,0x3f
    8000754c:	00170713          	addi	a4,a4,1
    80007550:	fae798e3          	bne	a5,a4,80007500 <kerneltrap+0x2c>
    80007554:	00000097          	auipc	ra,0x0
    80007558:	e00080e7          	jalr	-512(ra) # 80007354 <cpuid>
    8000755c:	06050663          	beqz	a0,800075c8 <kerneltrap+0xf4>
    80007560:	144027f3          	csrr	a5,sip
    80007564:	ffd7f793          	andi	a5,a5,-3
    80007568:	14479073          	csrw	sip,a5
    8000756c:	01813083          	ld	ra,24(sp)
    80007570:	01013403          	ld	s0,16(sp)
    80007574:	00813483          	ld	s1,8(sp)
    80007578:	02010113          	addi	sp,sp,32
    8000757c:	00008067          	ret
    80007580:	00000097          	auipc	ra,0x0
    80007584:	3c4080e7          	jalr	964(ra) # 80007944 <plic_claim>
    80007588:	00a00793          	li	a5,10
    8000758c:	00050493          	mv	s1,a0
    80007590:	06f50863          	beq	a0,a5,80007600 <kerneltrap+0x12c>
    80007594:	fc050ce3          	beqz	a0,8000756c <kerneltrap+0x98>
    80007598:	00050593          	mv	a1,a0
    8000759c:	00003517          	auipc	a0,0x3
    800075a0:	10c50513          	addi	a0,a0,268 # 8000a6a8 <_ZZ15printIntegerMojmE6digits+0x548>
    800075a4:	00000097          	auipc	ra,0x0
    800075a8:	7e4080e7          	jalr	2020(ra) # 80007d88 <__printf>
    800075ac:	01013403          	ld	s0,16(sp)
    800075b0:	01813083          	ld	ra,24(sp)
    800075b4:	00048513          	mv	a0,s1
    800075b8:	00813483          	ld	s1,8(sp)
    800075bc:	02010113          	addi	sp,sp,32
    800075c0:	00000317          	auipc	t1,0x0
    800075c4:	3bc30067          	jr	956(t1) # 8000797c <plic_complete>
    800075c8:	00006517          	auipc	a0,0x6
    800075cc:	78850513          	addi	a0,a0,1928 # 8000dd50 <tickslock>
    800075d0:	00001097          	auipc	ra,0x1
    800075d4:	48c080e7          	jalr	1164(ra) # 80008a5c <acquire>
    800075d8:	00005717          	auipc	a4,0x5
    800075dc:	5dc70713          	addi	a4,a4,1500 # 8000cbb4 <ticks>
    800075e0:	00072783          	lw	a5,0(a4)
    800075e4:	00006517          	auipc	a0,0x6
    800075e8:	76c50513          	addi	a0,a0,1900 # 8000dd50 <tickslock>
    800075ec:	0017879b          	addiw	a5,a5,1
    800075f0:	00f72023          	sw	a5,0(a4)
    800075f4:	00001097          	auipc	ra,0x1
    800075f8:	534080e7          	jalr	1332(ra) # 80008b28 <release>
    800075fc:	f65ff06f          	j	80007560 <kerneltrap+0x8c>
    80007600:	00001097          	auipc	ra,0x1
    80007604:	090080e7          	jalr	144(ra) # 80008690 <uartintr>
    80007608:	fa5ff06f          	j	800075ac <kerneltrap+0xd8>
    8000760c:	00003517          	auipc	a0,0x3
    80007610:	07c50513          	addi	a0,a0,124 # 8000a688 <_ZZ15printIntegerMojmE6digits+0x528>
    80007614:	00000097          	auipc	ra,0x0
    80007618:	718080e7          	jalr	1816(ra) # 80007d2c <panic>

000000008000761c <clockintr>:
    8000761c:	fe010113          	addi	sp,sp,-32
    80007620:	00813823          	sd	s0,16(sp)
    80007624:	00913423          	sd	s1,8(sp)
    80007628:	00113c23          	sd	ra,24(sp)
    8000762c:	02010413          	addi	s0,sp,32
    80007630:	00006497          	auipc	s1,0x6
    80007634:	72048493          	addi	s1,s1,1824 # 8000dd50 <tickslock>
    80007638:	00048513          	mv	a0,s1
    8000763c:	00001097          	auipc	ra,0x1
    80007640:	420080e7          	jalr	1056(ra) # 80008a5c <acquire>
    80007644:	00005717          	auipc	a4,0x5
    80007648:	57070713          	addi	a4,a4,1392 # 8000cbb4 <ticks>
    8000764c:	00072783          	lw	a5,0(a4)
    80007650:	01013403          	ld	s0,16(sp)
    80007654:	01813083          	ld	ra,24(sp)
    80007658:	00048513          	mv	a0,s1
    8000765c:	0017879b          	addiw	a5,a5,1
    80007660:	00813483          	ld	s1,8(sp)
    80007664:	00f72023          	sw	a5,0(a4)
    80007668:	02010113          	addi	sp,sp,32
    8000766c:	00001317          	auipc	t1,0x1
    80007670:	4bc30067          	jr	1212(t1) # 80008b28 <release>

0000000080007674 <devintr>:
    80007674:	142027f3          	csrr	a5,scause
    80007678:	00000513          	li	a0,0
    8000767c:	0007c463          	bltz	a5,80007684 <devintr+0x10>
    80007680:	00008067          	ret
    80007684:	fe010113          	addi	sp,sp,-32
    80007688:	00813823          	sd	s0,16(sp)
    8000768c:	00113c23          	sd	ra,24(sp)
    80007690:	00913423          	sd	s1,8(sp)
    80007694:	02010413          	addi	s0,sp,32
    80007698:	0ff7f713          	andi	a4,a5,255
    8000769c:	00900693          	li	a3,9
    800076a0:	04d70c63          	beq	a4,a3,800076f8 <devintr+0x84>
    800076a4:	fff00713          	li	a4,-1
    800076a8:	03f71713          	slli	a4,a4,0x3f
    800076ac:	00170713          	addi	a4,a4,1
    800076b0:	00e78c63          	beq	a5,a4,800076c8 <devintr+0x54>
    800076b4:	01813083          	ld	ra,24(sp)
    800076b8:	01013403          	ld	s0,16(sp)
    800076bc:	00813483          	ld	s1,8(sp)
    800076c0:	02010113          	addi	sp,sp,32
    800076c4:	00008067          	ret
    800076c8:	00000097          	auipc	ra,0x0
    800076cc:	c8c080e7          	jalr	-884(ra) # 80007354 <cpuid>
    800076d0:	06050663          	beqz	a0,8000773c <devintr+0xc8>
    800076d4:	144027f3          	csrr	a5,sip
    800076d8:	ffd7f793          	andi	a5,a5,-3
    800076dc:	14479073          	csrw	sip,a5
    800076e0:	01813083          	ld	ra,24(sp)
    800076e4:	01013403          	ld	s0,16(sp)
    800076e8:	00813483          	ld	s1,8(sp)
    800076ec:	00200513          	li	a0,2
    800076f0:	02010113          	addi	sp,sp,32
    800076f4:	00008067          	ret
    800076f8:	00000097          	auipc	ra,0x0
    800076fc:	24c080e7          	jalr	588(ra) # 80007944 <plic_claim>
    80007700:	00a00793          	li	a5,10
    80007704:	00050493          	mv	s1,a0
    80007708:	06f50663          	beq	a0,a5,80007774 <devintr+0x100>
    8000770c:	00100513          	li	a0,1
    80007710:	fa0482e3          	beqz	s1,800076b4 <devintr+0x40>
    80007714:	00048593          	mv	a1,s1
    80007718:	00003517          	auipc	a0,0x3
    8000771c:	f9050513          	addi	a0,a0,-112 # 8000a6a8 <_ZZ15printIntegerMojmE6digits+0x548>
    80007720:	00000097          	auipc	ra,0x0
    80007724:	668080e7          	jalr	1640(ra) # 80007d88 <__printf>
    80007728:	00048513          	mv	a0,s1
    8000772c:	00000097          	auipc	ra,0x0
    80007730:	250080e7          	jalr	592(ra) # 8000797c <plic_complete>
    80007734:	00100513          	li	a0,1
    80007738:	f7dff06f          	j	800076b4 <devintr+0x40>
    8000773c:	00006517          	auipc	a0,0x6
    80007740:	61450513          	addi	a0,a0,1556 # 8000dd50 <tickslock>
    80007744:	00001097          	auipc	ra,0x1
    80007748:	318080e7          	jalr	792(ra) # 80008a5c <acquire>
    8000774c:	00005717          	auipc	a4,0x5
    80007750:	46870713          	addi	a4,a4,1128 # 8000cbb4 <ticks>
    80007754:	00072783          	lw	a5,0(a4)
    80007758:	00006517          	auipc	a0,0x6
    8000775c:	5f850513          	addi	a0,a0,1528 # 8000dd50 <tickslock>
    80007760:	0017879b          	addiw	a5,a5,1
    80007764:	00f72023          	sw	a5,0(a4)
    80007768:	00001097          	auipc	ra,0x1
    8000776c:	3c0080e7          	jalr	960(ra) # 80008b28 <release>
    80007770:	f65ff06f          	j	800076d4 <devintr+0x60>
    80007774:	00001097          	auipc	ra,0x1
    80007778:	f1c080e7          	jalr	-228(ra) # 80008690 <uartintr>
    8000777c:	fadff06f          	j	80007728 <devintr+0xb4>

0000000080007780 <kernelvec>:
    80007780:	f0010113          	addi	sp,sp,-256
    80007784:	00113023          	sd	ra,0(sp)
    80007788:	00213423          	sd	sp,8(sp)
    8000778c:	00313823          	sd	gp,16(sp)
    80007790:	00413c23          	sd	tp,24(sp)
    80007794:	02513023          	sd	t0,32(sp)
    80007798:	02613423          	sd	t1,40(sp)
    8000779c:	02713823          	sd	t2,48(sp)
    800077a0:	02813c23          	sd	s0,56(sp)
    800077a4:	04913023          	sd	s1,64(sp)
    800077a8:	04a13423          	sd	a0,72(sp)
    800077ac:	04b13823          	sd	a1,80(sp)
    800077b0:	04c13c23          	sd	a2,88(sp)
    800077b4:	06d13023          	sd	a3,96(sp)
    800077b8:	06e13423          	sd	a4,104(sp)
    800077bc:	06f13823          	sd	a5,112(sp)
    800077c0:	07013c23          	sd	a6,120(sp)
    800077c4:	09113023          	sd	a7,128(sp)
    800077c8:	09213423          	sd	s2,136(sp)
    800077cc:	09313823          	sd	s3,144(sp)
    800077d0:	09413c23          	sd	s4,152(sp)
    800077d4:	0b513023          	sd	s5,160(sp)
    800077d8:	0b613423          	sd	s6,168(sp)
    800077dc:	0b713823          	sd	s7,176(sp)
    800077e0:	0b813c23          	sd	s8,184(sp)
    800077e4:	0d913023          	sd	s9,192(sp)
    800077e8:	0da13423          	sd	s10,200(sp)
    800077ec:	0db13823          	sd	s11,208(sp)
    800077f0:	0dc13c23          	sd	t3,216(sp)
    800077f4:	0fd13023          	sd	t4,224(sp)
    800077f8:	0fe13423          	sd	t5,232(sp)
    800077fc:	0ff13823          	sd	t6,240(sp)
    80007800:	cd5ff0ef          	jal	ra,800074d4 <kerneltrap>
    80007804:	00013083          	ld	ra,0(sp)
    80007808:	00813103          	ld	sp,8(sp)
    8000780c:	01013183          	ld	gp,16(sp)
    80007810:	02013283          	ld	t0,32(sp)
    80007814:	02813303          	ld	t1,40(sp)
    80007818:	03013383          	ld	t2,48(sp)
    8000781c:	03813403          	ld	s0,56(sp)
    80007820:	04013483          	ld	s1,64(sp)
    80007824:	04813503          	ld	a0,72(sp)
    80007828:	05013583          	ld	a1,80(sp)
    8000782c:	05813603          	ld	a2,88(sp)
    80007830:	06013683          	ld	a3,96(sp)
    80007834:	06813703          	ld	a4,104(sp)
    80007838:	07013783          	ld	a5,112(sp)
    8000783c:	07813803          	ld	a6,120(sp)
    80007840:	08013883          	ld	a7,128(sp)
    80007844:	08813903          	ld	s2,136(sp)
    80007848:	09013983          	ld	s3,144(sp)
    8000784c:	09813a03          	ld	s4,152(sp)
    80007850:	0a013a83          	ld	s5,160(sp)
    80007854:	0a813b03          	ld	s6,168(sp)
    80007858:	0b013b83          	ld	s7,176(sp)
    8000785c:	0b813c03          	ld	s8,184(sp)
    80007860:	0c013c83          	ld	s9,192(sp)
    80007864:	0c813d03          	ld	s10,200(sp)
    80007868:	0d013d83          	ld	s11,208(sp)
    8000786c:	0d813e03          	ld	t3,216(sp)
    80007870:	0e013e83          	ld	t4,224(sp)
    80007874:	0e813f03          	ld	t5,232(sp)
    80007878:	0f013f83          	ld	t6,240(sp)
    8000787c:	10010113          	addi	sp,sp,256
    80007880:	10200073          	sret
    80007884:	00000013          	nop
    80007888:	00000013          	nop
    8000788c:	00000013          	nop

0000000080007890 <timervec>:
    80007890:	34051573          	csrrw	a0,mscratch,a0
    80007894:	00b53023          	sd	a1,0(a0)
    80007898:	00c53423          	sd	a2,8(a0)
    8000789c:	00d53823          	sd	a3,16(a0)
    800078a0:	01853583          	ld	a1,24(a0)
    800078a4:	02053603          	ld	a2,32(a0)
    800078a8:	0005b683          	ld	a3,0(a1)
    800078ac:	00c686b3          	add	a3,a3,a2
    800078b0:	00d5b023          	sd	a3,0(a1)
    800078b4:	00200593          	li	a1,2
    800078b8:	14459073          	csrw	sip,a1
    800078bc:	01053683          	ld	a3,16(a0)
    800078c0:	00853603          	ld	a2,8(a0)
    800078c4:	00053583          	ld	a1,0(a0)
    800078c8:	34051573          	csrrw	a0,mscratch,a0
    800078cc:	30200073          	mret

00000000800078d0 <plicinit>:
    800078d0:	ff010113          	addi	sp,sp,-16
    800078d4:	00813423          	sd	s0,8(sp)
    800078d8:	01010413          	addi	s0,sp,16
    800078dc:	00813403          	ld	s0,8(sp)
    800078e0:	0c0007b7          	lui	a5,0xc000
    800078e4:	00100713          	li	a4,1
    800078e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800078ec:	00e7a223          	sw	a4,4(a5)
    800078f0:	01010113          	addi	sp,sp,16
    800078f4:	00008067          	ret

00000000800078f8 <plicinithart>:
    800078f8:	ff010113          	addi	sp,sp,-16
    800078fc:	00813023          	sd	s0,0(sp)
    80007900:	00113423          	sd	ra,8(sp)
    80007904:	01010413          	addi	s0,sp,16
    80007908:	00000097          	auipc	ra,0x0
    8000790c:	a4c080e7          	jalr	-1460(ra) # 80007354 <cpuid>
    80007910:	0085171b          	slliw	a4,a0,0x8
    80007914:	0c0027b7          	lui	a5,0xc002
    80007918:	00e787b3          	add	a5,a5,a4
    8000791c:	40200713          	li	a4,1026
    80007920:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007924:	00813083          	ld	ra,8(sp)
    80007928:	00013403          	ld	s0,0(sp)
    8000792c:	00d5151b          	slliw	a0,a0,0xd
    80007930:	0c2017b7          	lui	a5,0xc201
    80007934:	00a78533          	add	a0,a5,a0
    80007938:	00052023          	sw	zero,0(a0)
    8000793c:	01010113          	addi	sp,sp,16
    80007940:	00008067          	ret

0000000080007944 <plic_claim>:
    80007944:	ff010113          	addi	sp,sp,-16
    80007948:	00813023          	sd	s0,0(sp)
    8000794c:	00113423          	sd	ra,8(sp)
    80007950:	01010413          	addi	s0,sp,16
    80007954:	00000097          	auipc	ra,0x0
    80007958:	a00080e7          	jalr	-1536(ra) # 80007354 <cpuid>
    8000795c:	00813083          	ld	ra,8(sp)
    80007960:	00013403          	ld	s0,0(sp)
    80007964:	00d5151b          	slliw	a0,a0,0xd
    80007968:	0c2017b7          	lui	a5,0xc201
    8000796c:	00a78533          	add	a0,a5,a0
    80007970:	00452503          	lw	a0,4(a0)
    80007974:	01010113          	addi	sp,sp,16
    80007978:	00008067          	ret

000000008000797c <plic_complete>:
    8000797c:	fe010113          	addi	sp,sp,-32
    80007980:	00813823          	sd	s0,16(sp)
    80007984:	00913423          	sd	s1,8(sp)
    80007988:	00113c23          	sd	ra,24(sp)
    8000798c:	02010413          	addi	s0,sp,32
    80007990:	00050493          	mv	s1,a0
    80007994:	00000097          	auipc	ra,0x0
    80007998:	9c0080e7          	jalr	-1600(ra) # 80007354 <cpuid>
    8000799c:	01813083          	ld	ra,24(sp)
    800079a0:	01013403          	ld	s0,16(sp)
    800079a4:	00d5179b          	slliw	a5,a0,0xd
    800079a8:	0c201737          	lui	a4,0xc201
    800079ac:	00f707b3          	add	a5,a4,a5
    800079b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800079b4:	00813483          	ld	s1,8(sp)
    800079b8:	02010113          	addi	sp,sp,32
    800079bc:	00008067          	ret

00000000800079c0 <consolewrite>:
    800079c0:	fb010113          	addi	sp,sp,-80
    800079c4:	04813023          	sd	s0,64(sp)
    800079c8:	04113423          	sd	ra,72(sp)
    800079cc:	02913c23          	sd	s1,56(sp)
    800079d0:	03213823          	sd	s2,48(sp)
    800079d4:	03313423          	sd	s3,40(sp)
    800079d8:	03413023          	sd	s4,32(sp)
    800079dc:	01513c23          	sd	s5,24(sp)
    800079e0:	05010413          	addi	s0,sp,80
    800079e4:	06c05c63          	blez	a2,80007a5c <consolewrite+0x9c>
    800079e8:	00060993          	mv	s3,a2
    800079ec:	00050a13          	mv	s4,a0
    800079f0:	00058493          	mv	s1,a1
    800079f4:	00000913          	li	s2,0
    800079f8:	fff00a93          	li	s5,-1
    800079fc:	01c0006f          	j	80007a18 <consolewrite+0x58>
    80007a00:	fbf44503          	lbu	a0,-65(s0)
    80007a04:	0019091b          	addiw	s2,s2,1
    80007a08:	00148493          	addi	s1,s1,1
    80007a0c:	00001097          	auipc	ra,0x1
    80007a10:	a9c080e7          	jalr	-1380(ra) # 800084a8 <uartputc>
    80007a14:	03298063          	beq	s3,s2,80007a34 <consolewrite+0x74>
    80007a18:	00048613          	mv	a2,s1
    80007a1c:	00100693          	li	a3,1
    80007a20:	000a0593          	mv	a1,s4
    80007a24:	fbf40513          	addi	a0,s0,-65
    80007a28:	00000097          	auipc	ra,0x0
    80007a2c:	9e4080e7          	jalr	-1564(ra) # 8000740c <either_copyin>
    80007a30:	fd5518e3          	bne	a0,s5,80007a00 <consolewrite+0x40>
    80007a34:	04813083          	ld	ra,72(sp)
    80007a38:	04013403          	ld	s0,64(sp)
    80007a3c:	03813483          	ld	s1,56(sp)
    80007a40:	02813983          	ld	s3,40(sp)
    80007a44:	02013a03          	ld	s4,32(sp)
    80007a48:	01813a83          	ld	s5,24(sp)
    80007a4c:	00090513          	mv	a0,s2
    80007a50:	03013903          	ld	s2,48(sp)
    80007a54:	05010113          	addi	sp,sp,80
    80007a58:	00008067          	ret
    80007a5c:	00000913          	li	s2,0
    80007a60:	fd5ff06f          	j	80007a34 <consolewrite+0x74>

0000000080007a64 <consoleread>:
    80007a64:	f9010113          	addi	sp,sp,-112
    80007a68:	06813023          	sd	s0,96(sp)
    80007a6c:	04913c23          	sd	s1,88(sp)
    80007a70:	05213823          	sd	s2,80(sp)
    80007a74:	05313423          	sd	s3,72(sp)
    80007a78:	05413023          	sd	s4,64(sp)
    80007a7c:	03513c23          	sd	s5,56(sp)
    80007a80:	03613823          	sd	s6,48(sp)
    80007a84:	03713423          	sd	s7,40(sp)
    80007a88:	03813023          	sd	s8,32(sp)
    80007a8c:	06113423          	sd	ra,104(sp)
    80007a90:	01913c23          	sd	s9,24(sp)
    80007a94:	07010413          	addi	s0,sp,112
    80007a98:	00060b93          	mv	s7,a2
    80007a9c:	00050913          	mv	s2,a0
    80007aa0:	00058c13          	mv	s8,a1
    80007aa4:	00060b1b          	sext.w	s6,a2
    80007aa8:	00006497          	auipc	s1,0x6
    80007aac:	2d048493          	addi	s1,s1,720 # 8000dd78 <cons>
    80007ab0:	00400993          	li	s3,4
    80007ab4:	fff00a13          	li	s4,-1
    80007ab8:	00a00a93          	li	s5,10
    80007abc:	05705e63          	blez	s7,80007b18 <consoleread+0xb4>
    80007ac0:	09c4a703          	lw	a4,156(s1)
    80007ac4:	0984a783          	lw	a5,152(s1)
    80007ac8:	0007071b          	sext.w	a4,a4
    80007acc:	08e78463          	beq	a5,a4,80007b54 <consoleread+0xf0>
    80007ad0:	07f7f713          	andi	a4,a5,127
    80007ad4:	00e48733          	add	a4,s1,a4
    80007ad8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007adc:	0017869b          	addiw	a3,a5,1
    80007ae0:	08d4ac23          	sw	a3,152(s1)
    80007ae4:	00070c9b          	sext.w	s9,a4
    80007ae8:	0b370663          	beq	a4,s3,80007b94 <consoleread+0x130>
    80007aec:	00100693          	li	a3,1
    80007af0:	f9f40613          	addi	a2,s0,-97
    80007af4:	000c0593          	mv	a1,s8
    80007af8:	00090513          	mv	a0,s2
    80007afc:	f8e40fa3          	sb	a4,-97(s0)
    80007b00:	00000097          	auipc	ra,0x0
    80007b04:	8c0080e7          	jalr	-1856(ra) # 800073c0 <either_copyout>
    80007b08:	01450863          	beq	a0,s4,80007b18 <consoleread+0xb4>
    80007b0c:	001c0c13          	addi	s8,s8,1
    80007b10:	fffb8b9b          	addiw	s7,s7,-1
    80007b14:	fb5c94e3          	bne	s9,s5,80007abc <consoleread+0x58>
    80007b18:	000b851b          	sext.w	a0,s7
    80007b1c:	06813083          	ld	ra,104(sp)
    80007b20:	06013403          	ld	s0,96(sp)
    80007b24:	05813483          	ld	s1,88(sp)
    80007b28:	05013903          	ld	s2,80(sp)
    80007b2c:	04813983          	ld	s3,72(sp)
    80007b30:	04013a03          	ld	s4,64(sp)
    80007b34:	03813a83          	ld	s5,56(sp)
    80007b38:	02813b83          	ld	s7,40(sp)
    80007b3c:	02013c03          	ld	s8,32(sp)
    80007b40:	01813c83          	ld	s9,24(sp)
    80007b44:	40ab053b          	subw	a0,s6,a0
    80007b48:	03013b03          	ld	s6,48(sp)
    80007b4c:	07010113          	addi	sp,sp,112
    80007b50:	00008067          	ret
    80007b54:	00001097          	auipc	ra,0x1
    80007b58:	1d8080e7          	jalr	472(ra) # 80008d2c <push_on>
    80007b5c:	0984a703          	lw	a4,152(s1)
    80007b60:	09c4a783          	lw	a5,156(s1)
    80007b64:	0007879b          	sext.w	a5,a5
    80007b68:	fef70ce3          	beq	a4,a5,80007b60 <consoleread+0xfc>
    80007b6c:	00001097          	auipc	ra,0x1
    80007b70:	234080e7          	jalr	564(ra) # 80008da0 <pop_on>
    80007b74:	0984a783          	lw	a5,152(s1)
    80007b78:	07f7f713          	andi	a4,a5,127
    80007b7c:	00e48733          	add	a4,s1,a4
    80007b80:	01874703          	lbu	a4,24(a4)
    80007b84:	0017869b          	addiw	a3,a5,1
    80007b88:	08d4ac23          	sw	a3,152(s1)
    80007b8c:	00070c9b          	sext.w	s9,a4
    80007b90:	f5371ee3          	bne	a4,s3,80007aec <consoleread+0x88>
    80007b94:	000b851b          	sext.w	a0,s7
    80007b98:	f96bf2e3          	bgeu	s7,s6,80007b1c <consoleread+0xb8>
    80007b9c:	08f4ac23          	sw	a5,152(s1)
    80007ba0:	f7dff06f          	j	80007b1c <consoleread+0xb8>

0000000080007ba4 <consputc>:
    80007ba4:	10000793          	li	a5,256
    80007ba8:	00f50663          	beq	a0,a5,80007bb4 <consputc+0x10>
    80007bac:	00001317          	auipc	t1,0x1
    80007bb0:	9f430067          	jr	-1548(t1) # 800085a0 <uartputc_sync>
    80007bb4:	ff010113          	addi	sp,sp,-16
    80007bb8:	00113423          	sd	ra,8(sp)
    80007bbc:	00813023          	sd	s0,0(sp)
    80007bc0:	01010413          	addi	s0,sp,16
    80007bc4:	00800513          	li	a0,8
    80007bc8:	00001097          	auipc	ra,0x1
    80007bcc:	9d8080e7          	jalr	-1576(ra) # 800085a0 <uartputc_sync>
    80007bd0:	02000513          	li	a0,32
    80007bd4:	00001097          	auipc	ra,0x1
    80007bd8:	9cc080e7          	jalr	-1588(ra) # 800085a0 <uartputc_sync>
    80007bdc:	00013403          	ld	s0,0(sp)
    80007be0:	00813083          	ld	ra,8(sp)
    80007be4:	00800513          	li	a0,8
    80007be8:	01010113          	addi	sp,sp,16
    80007bec:	00001317          	auipc	t1,0x1
    80007bf0:	9b430067          	jr	-1612(t1) # 800085a0 <uartputc_sync>

0000000080007bf4 <consoleintr>:
    80007bf4:	fe010113          	addi	sp,sp,-32
    80007bf8:	00813823          	sd	s0,16(sp)
    80007bfc:	00913423          	sd	s1,8(sp)
    80007c00:	01213023          	sd	s2,0(sp)
    80007c04:	00113c23          	sd	ra,24(sp)
    80007c08:	02010413          	addi	s0,sp,32
    80007c0c:	00006917          	auipc	s2,0x6
    80007c10:	16c90913          	addi	s2,s2,364 # 8000dd78 <cons>
    80007c14:	00050493          	mv	s1,a0
    80007c18:	00090513          	mv	a0,s2
    80007c1c:	00001097          	auipc	ra,0x1
    80007c20:	e40080e7          	jalr	-448(ra) # 80008a5c <acquire>
    80007c24:	02048c63          	beqz	s1,80007c5c <consoleintr+0x68>
    80007c28:	0a092783          	lw	a5,160(s2)
    80007c2c:	09892703          	lw	a4,152(s2)
    80007c30:	07f00693          	li	a3,127
    80007c34:	40e7873b          	subw	a4,a5,a4
    80007c38:	02e6e263          	bltu	a3,a4,80007c5c <consoleintr+0x68>
    80007c3c:	00d00713          	li	a4,13
    80007c40:	04e48063          	beq	s1,a4,80007c80 <consoleintr+0x8c>
    80007c44:	07f7f713          	andi	a4,a5,127
    80007c48:	00e90733          	add	a4,s2,a4
    80007c4c:	0017879b          	addiw	a5,a5,1
    80007c50:	0af92023          	sw	a5,160(s2)
    80007c54:	00970c23          	sb	s1,24(a4)
    80007c58:	08f92e23          	sw	a5,156(s2)
    80007c5c:	01013403          	ld	s0,16(sp)
    80007c60:	01813083          	ld	ra,24(sp)
    80007c64:	00813483          	ld	s1,8(sp)
    80007c68:	00013903          	ld	s2,0(sp)
    80007c6c:	00006517          	auipc	a0,0x6
    80007c70:	10c50513          	addi	a0,a0,268 # 8000dd78 <cons>
    80007c74:	02010113          	addi	sp,sp,32
    80007c78:	00001317          	auipc	t1,0x1
    80007c7c:	eb030067          	jr	-336(t1) # 80008b28 <release>
    80007c80:	00a00493          	li	s1,10
    80007c84:	fc1ff06f          	j	80007c44 <consoleintr+0x50>

0000000080007c88 <consoleinit>:
    80007c88:	fe010113          	addi	sp,sp,-32
    80007c8c:	00113c23          	sd	ra,24(sp)
    80007c90:	00813823          	sd	s0,16(sp)
    80007c94:	00913423          	sd	s1,8(sp)
    80007c98:	02010413          	addi	s0,sp,32
    80007c9c:	00006497          	auipc	s1,0x6
    80007ca0:	0dc48493          	addi	s1,s1,220 # 8000dd78 <cons>
    80007ca4:	00048513          	mv	a0,s1
    80007ca8:	00003597          	auipc	a1,0x3
    80007cac:	a5858593          	addi	a1,a1,-1448 # 8000a700 <_ZZ15printIntegerMojmE6digits+0x5a0>
    80007cb0:	00001097          	auipc	ra,0x1
    80007cb4:	d88080e7          	jalr	-632(ra) # 80008a38 <initlock>
    80007cb8:	00000097          	auipc	ra,0x0
    80007cbc:	7ac080e7          	jalr	1964(ra) # 80008464 <uartinit>
    80007cc0:	01813083          	ld	ra,24(sp)
    80007cc4:	01013403          	ld	s0,16(sp)
    80007cc8:	00000797          	auipc	a5,0x0
    80007ccc:	d9c78793          	addi	a5,a5,-612 # 80007a64 <consoleread>
    80007cd0:	0af4bc23          	sd	a5,184(s1)
    80007cd4:	00000797          	auipc	a5,0x0
    80007cd8:	cec78793          	addi	a5,a5,-788 # 800079c0 <consolewrite>
    80007cdc:	0cf4b023          	sd	a5,192(s1)
    80007ce0:	00813483          	ld	s1,8(sp)
    80007ce4:	02010113          	addi	sp,sp,32
    80007ce8:	00008067          	ret

0000000080007cec <console_read>:
    80007cec:	ff010113          	addi	sp,sp,-16
    80007cf0:	00813423          	sd	s0,8(sp)
    80007cf4:	01010413          	addi	s0,sp,16
    80007cf8:	00813403          	ld	s0,8(sp)
    80007cfc:	00006317          	auipc	t1,0x6
    80007d00:	13433303          	ld	t1,308(t1) # 8000de30 <devsw+0x10>
    80007d04:	01010113          	addi	sp,sp,16
    80007d08:	00030067          	jr	t1

0000000080007d0c <console_write>:
    80007d0c:	ff010113          	addi	sp,sp,-16
    80007d10:	00813423          	sd	s0,8(sp)
    80007d14:	01010413          	addi	s0,sp,16
    80007d18:	00813403          	ld	s0,8(sp)
    80007d1c:	00006317          	auipc	t1,0x6
    80007d20:	11c33303          	ld	t1,284(t1) # 8000de38 <devsw+0x18>
    80007d24:	01010113          	addi	sp,sp,16
    80007d28:	00030067          	jr	t1

0000000080007d2c <panic>:
    80007d2c:	fe010113          	addi	sp,sp,-32
    80007d30:	00113c23          	sd	ra,24(sp)
    80007d34:	00813823          	sd	s0,16(sp)
    80007d38:	00913423          	sd	s1,8(sp)
    80007d3c:	02010413          	addi	s0,sp,32
    80007d40:	00050493          	mv	s1,a0
    80007d44:	00003517          	auipc	a0,0x3
    80007d48:	9c450513          	addi	a0,a0,-1596 # 8000a708 <_ZZ15printIntegerMojmE6digits+0x5a8>
    80007d4c:	00006797          	auipc	a5,0x6
    80007d50:	1807a623          	sw	zero,396(a5) # 8000ded8 <pr+0x18>
    80007d54:	00000097          	auipc	ra,0x0
    80007d58:	034080e7          	jalr	52(ra) # 80007d88 <__printf>
    80007d5c:	00048513          	mv	a0,s1
    80007d60:	00000097          	auipc	ra,0x0
    80007d64:	028080e7          	jalr	40(ra) # 80007d88 <__printf>
    80007d68:	00002517          	auipc	a0,0x2
    80007d6c:	74050513          	addi	a0,a0,1856 # 8000a4a8 <_ZZ15printIntegerMojmE6digits+0x348>
    80007d70:	00000097          	auipc	ra,0x0
    80007d74:	018080e7          	jalr	24(ra) # 80007d88 <__printf>
    80007d78:	00100793          	li	a5,1
    80007d7c:	00005717          	auipc	a4,0x5
    80007d80:	e2f72e23          	sw	a5,-452(a4) # 8000cbb8 <panicked>
    80007d84:	0000006f          	j	80007d84 <panic+0x58>

0000000080007d88 <__printf>:
    80007d88:	f3010113          	addi	sp,sp,-208
    80007d8c:	08813023          	sd	s0,128(sp)
    80007d90:	07313423          	sd	s3,104(sp)
    80007d94:	09010413          	addi	s0,sp,144
    80007d98:	05813023          	sd	s8,64(sp)
    80007d9c:	08113423          	sd	ra,136(sp)
    80007da0:	06913c23          	sd	s1,120(sp)
    80007da4:	07213823          	sd	s2,112(sp)
    80007da8:	07413023          	sd	s4,96(sp)
    80007dac:	05513c23          	sd	s5,88(sp)
    80007db0:	05613823          	sd	s6,80(sp)
    80007db4:	05713423          	sd	s7,72(sp)
    80007db8:	03913c23          	sd	s9,56(sp)
    80007dbc:	03a13823          	sd	s10,48(sp)
    80007dc0:	03b13423          	sd	s11,40(sp)
    80007dc4:	00006317          	auipc	t1,0x6
    80007dc8:	0fc30313          	addi	t1,t1,252 # 8000dec0 <pr>
    80007dcc:	01832c03          	lw	s8,24(t1)
    80007dd0:	00b43423          	sd	a1,8(s0)
    80007dd4:	00c43823          	sd	a2,16(s0)
    80007dd8:	00d43c23          	sd	a3,24(s0)
    80007ddc:	02e43023          	sd	a4,32(s0)
    80007de0:	02f43423          	sd	a5,40(s0)
    80007de4:	03043823          	sd	a6,48(s0)
    80007de8:	03143c23          	sd	a7,56(s0)
    80007dec:	00050993          	mv	s3,a0
    80007df0:	4a0c1663          	bnez	s8,8000829c <__printf+0x514>
    80007df4:	60098c63          	beqz	s3,8000840c <__printf+0x684>
    80007df8:	0009c503          	lbu	a0,0(s3)
    80007dfc:	00840793          	addi	a5,s0,8
    80007e00:	f6f43c23          	sd	a5,-136(s0)
    80007e04:	00000493          	li	s1,0
    80007e08:	22050063          	beqz	a0,80008028 <__printf+0x2a0>
    80007e0c:	00002a37          	lui	s4,0x2
    80007e10:	00018ab7          	lui	s5,0x18
    80007e14:	000f4b37          	lui	s6,0xf4
    80007e18:	00989bb7          	lui	s7,0x989
    80007e1c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007e20:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007e24:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007e28:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007e2c:	00148c9b          	addiw	s9,s1,1
    80007e30:	02500793          	li	a5,37
    80007e34:	01998933          	add	s2,s3,s9
    80007e38:	38f51263          	bne	a0,a5,800081bc <__printf+0x434>
    80007e3c:	00094783          	lbu	a5,0(s2)
    80007e40:	00078c9b          	sext.w	s9,a5
    80007e44:	1e078263          	beqz	a5,80008028 <__printf+0x2a0>
    80007e48:	0024849b          	addiw	s1,s1,2
    80007e4c:	07000713          	li	a4,112
    80007e50:	00998933          	add	s2,s3,s1
    80007e54:	38e78a63          	beq	a5,a4,800081e8 <__printf+0x460>
    80007e58:	20f76863          	bltu	a4,a5,80008068 <__printf+0x2e0>
    80007e5c:	42a78863          	beq	a5,a0,8000828c <__printf+0x504>
    80007e60:	06400713          	li	a4,100
    80007e64:	40e79663          	bne	a5,a4,80008270 <__printf+0x4e8>
    80007e68:	f7843783          	ld	a5,-136(s0)
    80007e6c:	0007a603          	lw	a2,0(a5)
    80007e70:	00878793          	addi	a5,a5,8
    80007e74:	f6f43c23          	sd	a5,-136(s0)
    80007e78:	42064a63          	bltz	a2,800082ac <__printf+0x524>
    80007e7c:	00a00713          	li	a4,10
    80007e80:	02e677bb          	remuw	a5,a2,a4
    80007e84:	00003d97          	auipc	s11,0x3
    80007e88:	8acd8d93          	addi	s11,s11,-1876 # 8000a730 <digits>
    80007e8c:	00900593          	li	a1,9
    80007e90:	0006051b          	sext.w	a0,a2
    80007e94:	00000c93          	li	s9,0
    80007e98:	02079793          	slli	a5,a5,0x20
    80007e9c:	0207d793          	srli	a5,a5,0x20
    80007ea0:	00fd87b3          	add	a5,s11,a5
    80007ea4:	0007c783          	lbu	a5,0(a5)
    80007ea8:	02e656bb          	divuw	a3,a2,a4
    80007eac:	f8f40023          	sb	a5,-128(s0)
    80007eb0:	14c5d863          	bge	a1,a2,80008000 <__printf+0x278>
    80007eb4:	06300593          	li	a1,99
    80007eb8:	00100c93          	li	s9,1
    80007ebc:	02e6f7bb          	remuw	a5,a3,a4
    80007ec0:	02079793          	slli	a5,a5,0x20
    80007ec4:	0207d793          	srli	a5,a5,0x20
    80007ec8:	00fd87b3          	add	a5,s11,a5
    80007ecc:	0007c783          	lbu	a5,0(a5)
    80007ed0:	02e6d73b          	divuw	a4,a3,a4
    80007ed4:	f8f400a3          	sb	a5,-127(s0)
    80007ed8:	12a5f463          	bgeu	a1,a0,80008000 <__printf+0x278>
    80007edc:	00a00693          	li	a3,10
    80007ee0:	00900593          	li	a1,9
    80007ee4:	02d777bb          	remuw	a5,a4,a3
    80007ee8:	02079793          	slli	a5,a5,0x20
    80007eec:	0207d793          	srli	a5,a5,0x20
    80007ef0:	00fd87b3          	add	a5,s11,a5
    80007ef4:	0007c503          	lbu	a0,0(a5)
    80007ef8:	02d757bb          	divuw	a5,a4,a3
    80007efc:	f8a40123          	sb	a0,-126(s0)
    80007f00:	48e5f263          	bgeu	a1,a4,80008384 <__printf+0x5fc>
    80007f04:	06300513          	li	a0,99
    80007f08:	02d7f5bb          	remuw	a1,a5,a3
    80007f0c:	02059593          	slli	a1,a1,0x20
    80007f10:	0205d593          	srli	a1,a1,0x20
    80007f14:	00bd85b3          	add	a1,s11,a1
    80007f18:	0005c583          	lbu	a1,0(a1)
    80007f1c:	02d7d7bb          	divuw	a5,a5,a3
    80007f20:	f8b401a3          	sb	a1,-125(s0)
    80007f24:	48e57263          	bgeu	a0,a4,800083a8 <__printf+0x620>
    80007f28:	3e700513          	li	a0,999
    80007f2c:	02d7f5bb          	remuw	a1,a5,a3
    80007f30:	02059593          	slli	a1,a1,0x20
    80007f34:	0205d593          	srli	a1,a1,0x20
    80007f38:	00bd85b3          	add	a1,s11,a1
    80007f3c:	0005c583          	lbu	a1,0(a1)
    80007f40:	02d7d7bb          	divuw	a5,a5,a3
    80007f44:	f8b40223          	sb	a1,-124(s0)
    80007f48:	46e57663          	bgeu	a0,a4,800083b4 <__printf+0x62c>
    80007f4c:	02d7f5bb          	remuw	a1,a5,a3
    80007f50:	02059593          	slli	a1,a1,0x20
    80007f54:	0205d593          	srli	a1,a1,0x20
    80007f58:	00bd85b3          	add	a1,s11,a1
    80007f5c:	0005c583          	lbu	a1,0(a1)
    80007f60:	02d7d7bb          	divuw	a5,a5,a3
    80007f64:	f8b402a3          	sb	a1,-123(s0)
    80007f68:	46ea7863          	bgeu	s4,a4,800083d8 <__printf+0x650>
    80007f6c:	02d7f5bb          	remuw	a1,a5,a3
    80007f70:	02059593          	slli	a1,a1,0x20
    80007f74:	0205d593          	srli	a1,a1,0x20
    80007f78:	00bd85b3          	add	a1,s11,a1
    80007f7c:	0005c583          	lbu	a1,0(a1)
    80007f80:	02d7d7bb          	divuw	a5,a5,a3
    80007f84:	f8b40323          	sb	a1,-122(s0)
    80007f88:	3eeaf863          	bgeu	s5,a4,80008378 <__printf+0x5f0>
    80007f8c:	02d7f5bb          	remuw	a1,a5,a3
    80007f90:	02059593          	slli	a1,a1,0x20
    80007f94:	0205d593          	srli	a1,a1,0x20
    80007f98:	00bd85b3          	add	a1,s11,a1
    80007f9c:	0005c583          	lbu	a1,0(a1)
    80007fa0:	02d7d7bb          	divuw	a5,a5,a3
    80007fa4:	f8b403a3          	sb	a1,-121(s0)
    80007fa8:	42eb7e63          	bgeu	s6,a4,800083e4 <__printf+0x65c>
    80007fac:	02d7f5bb          	remuw	a1,a5,a3
    80007fb0:	02059593          	slli	a1,a1,0x20
    80007fb4:	0205d593          	srli	a1,a1,0x20
    80007fb8:	00bd85b3          	add	a1,s11,a1
    80007fbc:	0005c583          	lbu	a1,0(a1)
    80007fc0:	02d7d7bb          	divuw	a5,a5,a3
    80007fc4:	f8b40423          	sb	a1,-120(s0)
    80007fc8:	42ebfc63          	bgeu	s7,a4,80008400 <__printf+0x678>
    80007fcc:	02079793          	slli	a5,a5,0x20
    80007fd0:	0207d793          	srli	a5,a5,0x20
    80007fd4:	00fd8db3          	add	s11,s11,a5
    80007fd8:	000dc703          	lbu	a4,0(s11)
    80007fdc:	00a00793          	li	a5,10
    80007fe0:	00900c93          	li	s9,9
    80007fe4:	f8e404a3          	sb	a4,-119(s0)
    80007fe8:	00065c63          	bgez	a2,80008000 <__printf+0x278>
    80007fec:	f9040713          	addi	a4,s0,-112
    80007ff0:	00f70733          	add	a4,a4,a5
    80007ff4:	02d00693          	li	a3,45
    80007ff8:	fed70823          	sb	a3,-16(a4)
    80007ffc:	00078c93          	mv	s9,a5
    80008000:	f8040793          	addi	a5,s0,-128
    80008004:	01978cb3          	add	s9,a5,s9
    80008008:	f7f40d13          	addi	s10,s0,-129
    8000800c:	000cc503          	lbu	a0,0(s9)
    80008010:	fffc8c93          	addi	s9,s9,-1
    80008014:	00000097          	auipc	ra,0x0
    80008018:	b90080e7          	jalr	-1136(ra) # 80007ba4 <consputc>
    8000801c:	ffac98e3          	bne	s9,s10,8000800c <__printf+0x284>
    80008020:	00094503          	lbu	a0,0(s2)
    80008024:	e00514e3          	bnez	a0,80007e2c <__printf+0xa4>
    80008028:	1a0c1663          	bnez	s8,800081d4 <__printf+0x44c>
    8000802c:	08813083          	ld	ra,136(sp)
    80008030:	08013403          	ld	s0,128(sp)
    80008034:	07813483          	ld	s1,120(sp)
    80008038:	07013903          	ld	s2,112(sp)
    8000803c:	06813983          	ld	s3,104(sp)
    80008040:	06013a03          	ld	s4,96(sp)
    80008044:	05813a83          	ld	s5,88(sp)
    80008048:	05013b03          	ld	s6,80(sp)
    8000804c:	04813b83          	ld	s7,72(sp)
    80008050:	04013c03          	ld	s8,64(sp)
    80008054:	03813c83          	ld	s9,56(sp)
    80008058:	03013d03          	ld	s10,48(sp)
    8000805c:	02813d83          	ld	s11,40(sp)
    80008060:	0d010113          	addi	sp,sp,208
    80008064:	00008067          	ret
    80008068:	07300713          	li	a4,115
    8000806c:	1ce78a63          	beq	a5,a4,80008240 <__printf+0x4b8>
    80008070:	07800713          	li	a4,120
    80008074:	1ee79e63          	bne	a5,a4,80008270 <__printf+0x4e8>
    80008078:	f7843783          	ld	a5,-136(s0)
    8000807c:	0007a703          	lw	a4,0(a5)
    80008080:	00878793          	addi	a5,a5,8
    80008084:	f6f43c23          	sd	a5,-136(s0)
    80008088:	28074263          	bltz	a4,8000830c <__printf+0x584>
    8000808c:	00002d97          	auipc	s11,0x2
    80008090:	6a4d8d93          	addi	s11,s11,1700 # 8000a730 <digits>
    80008094:	00f77793          	andi	a5,a4,15
    80008098:	00fd87b3          	add	a5,s11,a5
    8000809c:	0007c683          	lbu	a3,0(a5)
    800080a0:	00f00613          	li	a2,15
    800080a4:	0007079b          	sext.w	a5,a4
    800080a8:	f8d40023          	sb	a3,-128(s0)
    800080ac:	0047559b          	srliw	a1,a4,0x4
    800080b0:	0047569b          	srliw	a3,a4,0x4
    800080b4:	00000c93          	li	s9,0
    800080b8:	0ee65063          	bge	a2,a4,80008198 <__printf+0x410>
    800080bc:	00f6f693          	andi	a3,a3,15
    800080c0:	00dd86b3          	add	a3,s11,a3
    800080c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800080c8:	0087d79b          	srliw	a5,a5,0x8
    800080cc:	00100c93          	li	s9,1
    800080d0:	f8d400a3          	sb	a3,-127(s0)
    800080d4:	0cb67263          	bgeu	a2,a1,80008198 <__printf+0x410>
    800080d8:	00f7f693          	andi	a3,a5,15
    800080dc:	00dd86b3          	add	a3,s11,a3
    800080e0:	0006c583          	lbu	a1,0(a3)
    800080e4:	00f00613          	li	a2,15
    800080e8:	0047d69b          	srliw	a3,a5,0x4
    800080ec:	f8b40123          	sb	a1,-126(s0)
    800080f0:	0047d593          	srli	a1,a5,0x4
    800080f4:	28f67e63          	bgeu	a2,a5,80008390 <__printf+0x608>
    800080f8:	00f6f693          	andi	a3,a3,15
    800080fc:	00dd86b3          	add	a3,s11,a3
    80008100:	0006c503          	lbu	a0,0(a3)
    80008104:	0087d813          	srli	a6,a5,0x8
    80008108:	0087d69b          	srliw	a3,a5,0x8
    8000810c:	f8a401a3          	sb	a0,-125(s0)
    80008110:	28b67663          	bgeu	a2,a1,8000839c <__printf+0x614>
    80008114:	00f6f693          	andi	a3,a3,15
    80008118:	00dd86b3          	add	a3,s11,a3
    8000811c:	0006c583          	lbu	a1,0(a3)
    80008120:	00c7d513          	srli	a0,a5,0xc
    80008124:	00c7d69b          	srliw	a3,a5,0xc
    80008128:	f8b40223          	sb	a1,-124(s0)
    8000812c:	29067a63          	bgeu	a2,a6,800083c0 <__printf+0x638>
    80008130:	00f6f693          	andi	a3,a3,15
    80008134:	00dd86b3          	add	a3,s11,a3
    80008138:	0006c583          	lbu	a1,0(a3)
    8000813c:	0107d813          	srli	a6,a5,0x10
    80008140:	0107d69b          	srliw	a3,a5,0x10
    80008144:	f8b402a3          	sb	a1,-123(s0)
    80008148:	28a67263          	bgeu	a2,a0,800083cc <__printf+0x644>
    8000814c:	00f6f693          	andi	a3,a3,15
    80008150:	00dd86b3          	add	a3,s11,a3
    80008154:	0006c683          	lbu	a3,0(a3)
    80008158:	0147d79b          	srliw	a5,a5,0x14
    8000815c:	f8d40323          	sb	a3,-122(s0)
    80008160:	21067663          	bgeu	a2,a6,8000836c <__printf+0x5e4>
    80008164:	02079793          	slli	a5,a5,0x20
    80008168:	0207d793          	srli	a5,a5,0x20
    8000816c:	00fd8db3          	add	s11,s11,a5
    80008170:	000dc683          	lbu	a3,0(s11)
    80008174:	00800793          	li	a5,8
    80008178:	00700c93          	li	s9,7
    8000817c:	f8d403a3          	sb	a3,-121(s0)
    80008180:	00075c63          	bgez	a4,80008198 <__printf+0x410>
    80008184:	f9040713          	addi	a4,s0,-112
    80008188:	00f70733          	add	a4,a4,a5
    8000818c:	02d00693          	li	a3,45
    80008190:	fed70823          	sb	a3,-16(a4)
    80008194:	00078c93          	mv	s9,a5
    80008198:	f8040793          	addi	a5,s0,-128
    8000819c:	01978cb3          	add	s9,a5,s9
    800081a0:	f7f40d13          	addi	s10,s0,-129
    800081a4:	000cc503          	lbu	a0,0(s9)
    800081a8:	fffc8c93          	addi	s9,s9,-1
    800081ac:	00000097          	auipc	ra,0x0
    800081b0:	9f8080e7          	jalr	-1544(ra) # 80007ba4 <consputc>
    800081b4:	ff9d18e3          	bne	s10,s9,800081a4 <__printf+0x41c>
    800081b8:	0100006f          	j	800081c8 <__printf+0x440>
    800081bc:	00000097          	auipc	ra,0x0
    800081c0:	9e8080e7          	jalr	-1560(ra) # 80007ba4 <consputc>
    800081c4:	000c8493          	mv	s1,s9
    800081c8:	00094503          	lbu	a0,0(s2)
    800081cc:	c60510e3          	bnez	a0,80007e2c <__printf+0xa4>
    800081d0:	e40c0ee3          	beqz	s8,8000802c <__printf+0x2a4>
    800081d4:	00006517          	auipc	a0,0x6
    800081d8:	cec50513          	addi	a0,a0,-788 # 8000dec0 <pr>
    800081dc:	00001097          	auipc	ra,0x1
    800081e0:	94c080e7          	jalr	-1716(ra) # 80008b28 <release>
    800081e4:	e49ff06f          	j	8000802c <__printf+0x2a4>
    800081e8:	f7843783          	ld	a5,-136(s0)
    800081ec:	03000513          	li	a0,48
    800081f0:	01000d13          	li	s10,16
    800081f4:	00878713          	addi	a4,a5,8
    800081f8:	0007bc83          	ld	s9,0(a5)
    800081fc:	f6e43c23          	sd	a4,-136(s0)
    80008200:	00000097          	auipc	ra,0x0
    80008204:	9a4080e7          	jalr	-1628(ra) # 80007ba4 <consputc>
    80008208:	07800513          	li	a0,120
    8000820c:	00000097          	auipc	ra,0x0
    80008210:	998080e7          	jalr	-1640(ra) # 80007ba4 <consputc>
    80008214:	00002d97          	auipc	s11,0x2
    80008218:	51cd8d93          	addi	s11,s11,1308 # 8000a730 <digits>
    8000821c:	03ccd793          	srli	a5,s9,0x3c
    80008220:	00fd87b3          	add	a5,s11,a5
    80008224:	0007c503          	lbu	a0,0(a5)
    80008228:	fffd0d1b          	addiw	s10,s10,-1
    8000822c:	004c9c93          	slli	s9,s9,0x4
    80008230:	00000097          	auipc	ra,0x0
    80008234:	974080e7          	jalr	-1676(ra) # 80007ba4 <consputc>
    80008238:	fe0d12e3          	bnez	s10,8000821c <__printf+0x494>
    8000823c:	f8dff06f          	j	800081c8 <__printf+0x440>
    80008240:	f7843783          	ld	a5,-136(s0)
    80008244:	0007bc83          	ld	s9,0(a5)
    80008248:	00878793          	addi	a5,a5,8
    8000824c:	f6f43c23          	sd	a5,-136(s0)
    80008250:	000c9a63          	bnez	s9,80008264 <__printf+0x4dc>
    80008254:	1080006f          	j	8000835c <__printf+0x5d4>
    80008258:	001c8c93          	addi	s9,s9,1
    8000825c:	00000097          	auipc	ra,0x0
    80008260:	948080e7          	jalr	-1720(ra) # 80007ba4 <consputc>
    80008264:	000cc503          	lbu	a0,0(s9)
    80008268:	fe0518e3          	bnez	a0,80008258 <__printf+0x4d0>
    8000826c:	f5dff06f          	j	800081c8 <__printf+0x440>
    80008270:	02500513          	li	a0,37
    80008274:	00000097          	auipc	ra,0x0
    80008278:	930080e7          	jalr	-1744(ra) # 80007ba4 <consputc>
    8000827c:	000c8513          	mv	a0,s9
    80008280:	00000097          	auipc	ra,0x0
    80008284:	924080e7          	jalr	-1756(ra) # 80007ba4 <consputc>
    80008288:	f41ff06f          	j	800081c8 <__printf+0x440>
    8000828c:	02500513          	li	a0,37
    80008290:	00000097          	auipc	ra,0x0
    80008294:	914080e7          	jalr	-1772(ra) # 80007ba4 <consputc>
    80008298:	f31ff06f          	j	800081c8 <__printf+0x440>
    8000829c:	00030513          	mv	a0,t1
    800082a0:	00000097          	auipc	ra,0x0
    800082a4:	7bc080e7          	jalr	1980(ra) # 80008a5c <acquire>
    800082a8:	b4dff06f          	j	80007df4 <__printf+0x6c>
    800082ac:	40c0053b          	negw	a0,a2
    800082b0:	00a00713          	li	a4,10
    800082b4:	02e576bb          	remuw	a3,a0,a4
    800082b8:	00002d97          	auipc	s11,0x2
    800082bc:	478d8d93          	addi	s11,s11,1144 # 8000a730 <digits>
    800082c0:	ff700593          	li	a1,-9
    800082c4:	02069693          	slli	a3,a3,0x20
    800082c8:	0206d693          	srli	a3,a3,0x20
    800082cc:	00dd86b3          	add	a3,s11,a3
    800082d0:	0006c683          	lbu	a3,0(a3)
    800082d4:	02e557bb          	divuw	a5,a0,a4
    800082d8:	f8d40023          	sb	a3,-128(s0)
    800082dc:	10b65e63          	bge	a2,a1,800083f8 <__printf+0x670>
    800082e0:	06300593          	li	a1,99
    800082e4:	02e7f6bb          	remuw	a3,a5,a4
    800082e8:	02069693          	slli	a3,a3,0x20
    800082ec:	0206d693          	srli	a3,a3,0x20
    800082f0:	00dd86b3          	add	a3,s11,a3
    800082f4:	0006c683          	lbu	a3,0(a3)
    800082f8:	02e7d73b          	divuw	a4,a5,a4
    800082fc:	00200793          	li	a5,2
    80008300:	f8d400a3          	sb	a3,-127(s0)
    80008304:	bca5ece3          	bltu	a1,a0,80007edc <__printf+0x154>
    80008308:	ce5ff06f          	j	80007fec <__printf+0x264>
    8000830c:	40e007bb          	negw	a5,a4
    80008310:	00002d97          	auipc	s11,0x2
    80008314:	420d8d93          	addi	s11,s11,1056 # 8000a730 <digits>
    80008318:	00f7f693          	andi	a3,a5,15
    8000831c:	00dd86b3          	add	a3,s11,a3
    80008320:	0006c583          	lbu	a1,0(a3)
    80008324:	ff100613          	li	a2,-15
    80008328:	0047d69b          	srliw	a3,a5,0x4
    8000832c:	f8b40023          	sb	a1,-128(s0)
    80008330:	0047d59b          	srliw	a1,a5,0x4
    80008334:	0ac75e63          	bge	a4,a2,800083f0 <__printf+0x668>
    80008338:	00f6f693          	andi	a3,a3,15
    8000833c:	00dd86b3          	add	a3,s11,a3
    80008340:	0006c603          	lbu	a2,0(a3)
    80008344:	00f00693          	li	a3,15
    80008348:	0087d79b          	srliw	a5,a5,0x8
    8000834c:	f8c400a3          	sb	a2,-127(s0)
    80008350:	d8b6e4e3          	bltu	a3,a1,800080d8 <__printf+0x350>
    80008354:	00200793          	li	a5,2
    80008358:	e2dff06f          	j	80008184 <__printf+0x3fc>
    8000835c:	00002c97          	auipc	s9,0x2
    80008360:	3b4c8c93          	addi	s9,s9,948 # 8000a710 <_ZZ15printIntegerMojmE6digits+0x5b0>
    80008364:	02800513          	li	a0,40
    80008368:	ef1ff06f          	j	80008258 <__printf+0x4d0>
    8000836c:	00700793          	li	a5,7
    80008370:	00600c93          	li	s9,6
    80008374:	e0dff06f          	j	80008180 <__printf+0x3f8>
    80008378:	00700793          	li	a5,7
    8000837c:	00600c93          	li	s9,6
    80008380:	c69ff06f          	j	80007fe8 <__printf+0x260>
    80008384:	00300793          	li	a5,3
    80008388:	00200c93          	li	s9,2
    8000838c:	c5dff06f          	j	80007fe8 <__printf+0x260>
    80008390:	00300793          	li	a5,3
    80008394:	00200c93          	li	s9,2
    80008398:	de9ff06f          	j	80008180 <__printf+0x3f8>
    8000839c:	00400793          	li	a5,4
    800083a0:	00300c93          	li	s9,3
    800083a4:	dddff06f          	j	80008180 <__printf+0x3f8>
    800083a8:	00400793          	li	a5,4
    800083ac:	00300c93          	li	s9,3
    800083b0:	c39ff06f          	j	80007fe8 <__printf+0x260>
    800083b4:	00500793          	li	a5,5
    800083b8:	00400c93          	li	s9,4
    800083bc:	c2dff06f          	j	80007fe8 <__printf+0x260>
    800083c0:	00500793          	li	a5,5
    800083c4:	00400c93          	li	s9,4
    800083c8:	db9ff06f          	j	80008180 <__printf+0x3f8>
    800083cc:	00600793          	li	a5,6
    800083d0:	00500c93          	li	s9,5
    800083d4:	dadff06f          	j	80008180 <__printf+0x3f8>
    800083d8:	00600793          	li	a5,6
    800083dc:	00500c93          	li	s9,5
    800083e0:	c09ff06f          	j	80007fe8 <__printf+0x260>
    800083e4:	00800793          	li	a5,8
    800083e8:	00700c93          	li	s9,7
    800083ec:	bfdff06f          	j	80007fe8 <__printf+0x260>
    800083f0:	00100793          	li	a5,1
    800083f4:	d91ff06f          	j	80008184 <__printf+0x3fc>
    800083f8:	00100793          	li	a5,1
    800083fc:	bf1ff06f          	j	80007fec <__printf+0x264>
    80008400:	00900793          	li	a5,9
    80008404:	00800c93          	li	s9,8
    80008408:	be1ff06f          	j	80007fe8 <__printf+0x260>
    8000840c:	00002517          	auipc	a0,0x2
    80008410:	30c50513          	addi	a0,a0,780 # 8000a718 <_ZZ15printIntegerMojmE6digits+0x5b8>
    80008414:	00000097          	auipc	ra,0x0
    80008418:	918080e7          	jalr	-1768(ra) # 80007d2c <panic>

000000008000841c <printfinit>:
    8000841c:	fe010113          	addi	sp,sp,-32
    80008420:	00813823          	sd	s0,16(sp)
    80008424:	00913423          	sd	s1,8(sp)
    80008428:	00113c23          	sd	ra,24(sp)
    8000842c:	02010413          	addi	s0,sp,32
    80008430:	00006497          	auipc	s1,0x6
    80008434:	a9048493          	addi	s1,s1,-1392 # 8000dec0 <pr>
    80008438:	00048513          	mv	a0,s1
    8000843c:	00002597          	auipc	a1,0x2
    80008440:	2ec58593          	addi	a1,a1,748 # 8000a728 <_ZZ15printIntegerMojmE6digits+0x5c8>
    80008444:	00000097          	auipc	ra,0x0
    80008448:	5f4080e7          	jalr	1524(ra) # 80008a38 <initlock>
    8000844c:	01813083          	ld	ra,24(sp)
    80008450:	01013403          	ld	s0,16(sp)
    80008454:	0004ac23          	sw	zero,24(s1)
    80008458:	00813483          	ld	s1,8(sp)
    8000845c:	02010113          	addi	sp,sp,32
    80008460:	00008067          	ret

0000000080008464 <uartinit>:
    80008464:	ff010113          	addi	sp,sp,-16
    80008468:	00813423          	sd	s0,8(sp)
    8000846c:	01010413          	addi	s0,sp,16
    80008470:	100007b7          	lui	a5,0x10000
    80008474:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008478:	f8000713          	li	a4,-128
    8000847c:	00e781a3          	sb	a4,3(a5)
    80008480:	00300713          	li	a4,3
    80008484:	00e78023          	sb	a4,0(a5)
    80008488:	000780a3          	sb	zero,1(a5)
    8000848c:	00e781a3          	sb	a4,3(a5)
    80008490:	00700693          	li	a3,7
    80008494:	00d78123          	sb	a3,2(a5)
    80008498:	00e780a3          	sb	a4,1(a5)
    8000849c:	00813403          	ld	s0,8(sp)
    800084a0:	01010113          	addi	sp,sp,16
    800084a4:	00008067          	ret

00000000800084a8 <uartputc>:
    800084a8:	00004797          	auipc	a5,0x4
    800084ac:	7107a783          	lw	a5,1808(a5) # 8000cbb8 <panicked>
    800084b0:	00078463          	beqz	a5,800084b8 <uartputc+0x10>
    800084b4:	0000006f          	j	800084b4 <uartputc+0xc>
    800084b8:	fd010113          	addi	sp,sp,-48
    800084bc:	02813023          	sd	s0,32(sp)
    800084c0:	00913c23          	sd	s1,24(sp)
    800084c4:	01213823          	sd	s2,16(sp)
    800084c8:	01313423          	sd	s3,8(sp)
    800084cc:	02113423          	sd	ra,40(sp)
    800084d0:	03010413          	addi	s0,sp,48
    800084d4:	00004917          	auipc	s2,0x4
    800084d8:	6ec90913          	addi	s2,s2,1772 # 8000cbc0 <uart_tx_r>
    800084dc:	00093783          	ld	a5,0(s2)
    800084e0:	00004497          	auipc	s1,0x4
    800084e4:	6e848493          	addi	s1,s1,1768 # 8000cbc8 <uart_tx_w>
    800084e8:	0004b703          	ld	a4,0(s1)
    800084ec:	02078693          	addi	a3,a5,32
    800084f0:	00050993          	mv	s3,a0
    800084f4:	02e69c63          	bne	a3,a4,8000852c <uartputc+0x84>
    800084f8:	00001097          	auipc	ra,0x1
    800084fc:	834080e7          	jalr	-1996(ra) # 80008d2c <push_on>
    80008500:	00093783          	ld	a5,0(s2)
    80008504:	0004b703          	ld	a4,0(s1)
    80008508:	02078793          	addi	a5,a5,32
    8000850c:	00e79463          	bne	a5,a4,80008514 <uartputc+0x6c>
    80008510:	0000006f          	j	80008510 <uartputc+0x68>
    80008514:	00001097          	auipc	ra,0x1
    80008518:	88c080e7          	jalr	-1908(ra) # 80008da0 <pop_on>
    8000851c:	00093783          	ld	a5,0(s2)
    80008520:	0004b703          	ld	a4,0(s1)
    80008524:	02078693          	addi	a3,a5,32
    80008528:	fce688e3          	beq	a3,a4,800084f8 <uartputc+0x50>
    8000852c:	01f77693          	andi	a3,a4,31
    80008530:	00006597          	auipc	a1,0x6
    80008534:	9b058593          	addi	a1,a1,-1616 # 8000dee0 <uart_tx_buf>
    80008538:	00d586b3          	add	a3,a1,a3
    8000853c:	00170713          	addi	a4,a4,1
    80008540:	01368023          	sb	s3,0(a3)
    80008544:	00e4b023          	sd	a4,0(s1)
    80008548:	10000637          	lui	a2,0x10000
    8000854c:	02f71063          	bne	a4,a5,8000856c <uartputc+0xc4>
    80008550:	0340006f          	j	80008584 <uartputc+0xdc>
    80008554:	00074703          	lbu	a4,0(a4)
    80008558:	00f93023          	sd	a5,0(s2)
    8000855c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008560:	00093783          	ld	a5,0(s2)
    80008564:	0004b703          	ld	a4,0(s1)
    80008568:	00f70e63          	beq	a4,a5,80008584 <uartputc+0xdc>
    8000856c:	00564683          	lbu	a3,5(a2)
    80008570:	01f7f713          	andi	a4,a5,31
    80008574:	00e58733          	add	a4,a1,a4
    80008578:	0206f693          	andi	a3,a3,32
    8000857c:	00178793          	addi	a5,a5,1
    80008580:	fc069ae3          	bnez	a3,80008554 <uartputc+0xac>
    80008584:	02813083          	ld	ra,40(sp)
    80008588:	02013403          	ld	s0,32(sp)
    8000858c:	01813483          	ld	s1,24(sp)
    80008590:	01013903          	ld	s2,16(sp)
    80008594:	00813983          	ld	s3,8(sp)
    80008598:	03010113          	addi	sp,sp,48
    8000859c:	00008067          	ret

00000000800085a0 <uartputc_sync>:
    800085a0:	ff010113          	addi	sp,sp,-16
    800085a4:	00813423          	sd	s0,8(sp)
    800085a8:	01010413          	addi	s0,sp,16
    800085ac:	00004717          	auipc	a4,0x4
    800085b0:	60c72703          	lw	a4,1548(a4) # 8000cbb8 <panicked>
    800085b4:	02071663          	bnez	a4,800085e0 <uartputc_sync+0x40>
    800085b8:	00050793          	mv	a5,a0
    800085bc:	100006b7          	lui	a3,0x10000
    800085c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800085c4:	02077713          	andi	a4,a4,32
    800085c8:	fe070ce3          	beqz	a4,800085c0 <uartputc_sync+0x20>
    800085cc:	0ff7f793          	andi	a5,a5,255
    800085d0:	00f68023          	sb	a5,0(a3)
    800085d4:	00813403          	ld	s0,8(sp)
    800085d8:	01010113          	addi	sp,sp,16
    800085dc:	00008067          	ret
    800085e0:	0000006f          	j	800085e0 <uartputc_sync+0x40>

00000000800085e4 <uartstart>:
    800085e4:	ff010113          	addi	sp,sp,-16
    800085e8:	00813423          	sd	s0,8(sp)
    800085ec:	01010413          	addi	s0,sp,16
    800085f0:	00004617          	auipc	a2,0x4
    800085f4:	5d060613          	addi	a2,a2,1488 # 8000cbc0 <uart_tx_r>
    800085f8:	00004517          	auipc	a0,0x4
    800085fc:	5d050513          	addi	a0,a0,1488 # 8000cbc8 <uart_tx_w>
    80008600:	00063783          	ld	a5,0(a2)
    80008604:	00053703          	ld	a4,0(a0)
    80008608:	04f70263          	beq	a4,a5,8000864c <uartstart+0x68>
    8000860c:	100005b7          	lui	a1,0x10000
    80008610:	00006817          	auipc	a6,0x6
    80008614:	8d080813          	addi	a6,a6,-1840 # 8000dee0 <uart_tx_buf>
    80008618:	01c0006f          	j	80008634 <uartstart+0x50>
    8000861c:	0006c703          	lbu	a4,0(a3)
    80008620:	00f63023          	sd	a5,0(a2)
    80008624:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008628:	00063783          	ld	a5,0(a2)
    8000862c:	00053703          	ld	a4,0(a0)
    80008630:	00f70e63          	beq	a4,a5,8000864c <uartstart+0x68>
    80008634:	01f7f713          	andi	a4,a5,31
    80008638:	00e806b3          	add	a3,a6,a4
    8000863c:	0055c703          	lbu	a4,5(a1)
    80008640:	00178793          	addi	a5,a5,1
    80008644:	02077713          	andi	a4,a4,32
    80008648:	fc071ae3          	bnez	a4,8000861c <uartstart+0x38>
    8000864c:	00813403          	ld	s0,8(sp)
    80008650:	01010113          	addi	sp,sp,16
    80008654:	00008067          	ret

0000000080008658 <uartgetc>:
    80008658:	ff010113          	addi	sp,sp,-16
    8000865c:	00813423          	sd	s0,8(sp)
    80008660:	01010413          	addi	s0,sp,16
    80008664:	10000737          	lui	a4,0x10000
    80008668:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000866c:	0017f793          	andi	a5,a5,1
    80008670:	00078c63          	beqz	a5,80008688 <uartgetc+0x30>
    80008674:	00074503          	lbu	a0,0(a4)
    80008678:	0ff57513          	andi	a0,a0,255
    8000867c:	00813403          	ld	s0,8(sp)
    80008680:	01010113          	addi	sp,sp,16
    80008684:	00008067          	ret
    80008688:	fff00513          	li	a0,-1
    8000868c:	ff1ff06f          	j	8000867c <uartgetc+0x24>

0000000080008690 <uartintr>:
    80008690:	100007b7          	lui	a5,0x10000
    80008694:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008698:	0017f793          	andi	a5,a5,1
    8000869c:	0a078463          	beqz	a5,80008744 <uartintr+0xb4>
    800086a0:	fe010113          	addi	sp,sp,-32
    800086a4:	00813823          	sd	s0,16(sp)
    800086a8:	00913423          	sd	s1,8(sp)
    800086ac:	00113c23          	sd	ra,24(sp)
    800086b0:	02010413          	addi	s0,sp,32
    800086b4:	100004b7          	lui	s1,0x10000
    800086b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800086bc:	0ff57513          	andi	a0,a0,255
    800086c0:	fffff097          	auipc	ra,0xfffff
    800086c4:	534080e7          	jalr	1332(ra) # 80007bf4 <consoleintr>
    800086c8:	0054c783          	lbu	a5,5(s1)
    800086cc:	0017f793          	andi	a5,a5,1
    800086d0:	fe0794e3          	bnez	a5,800086b8 <uartintr+0x28>
    800086d4:	00004617          	auipc	a2,0x4
    800086d8:	4ec60613          	addi	a2,a2,1260 # 8000cbc0 <uart_tx_r>
    800086dc:	00004517          	auipc	a0,0x4
    800086e0:	4ec50513          	addi	a0,a0,1260 # 8000cbc8 <uart_tx_w>
    800086e4:	00063783          	ld	a5,0(a2)
    800086e8:	00053703          	ld	a4,0(a0)
    800086ec:	04f70263          	beq	a4,a5,80008730 <uartintr+0xa0>
    800086f0:	100005b7          	lui	a1,0x10000
    800086f4:	00005817          	auipc	a6,0x5
    800086f8:	7ec80813          	addi	a6,a6,2028 # 8000dee0 <uart_tx_buf>
    800086fc:	01c0006f          	j	80008718 <uartintr+0x88>
    80008700:	0006c703          	lbu	a4,0(a3)
    80008704:	00f63023          	sd	a5,0(a2)
    80008708:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000870c:	00063783          	ld	a5,0(a2)
    80008710:	00053703          	ld	a4,0(a0)
    80008714:	00f70e63          	beq	a4,a5,80008730 <uartintr+0xa0>
    80008718:	01f7f713          	andi	a4,a5,31
    8000871c:	00e806b3          	add	a3,a6,a4
    80008720:	0055c703          	lbu	a4,5(a1)
    80008724:	00178793          	addi	a5,a5,1
    80008728:	02077713          	andi	a4,a4,32
    8000872c:	fc071ae3          	bnez	a4,80008700 <uartintr+0x70>
    80008730:	01813083          	ld	ra,24(sp)
    80008734:	01013403          	ld	s0,16(sp)
    80008738:	00813483          	ld	s1,8(sp)
    8000873c:	02010113          	addi	sp,sp,32
    80008740:	00008067          	ret
    80008744:	00004617          	auipc	a2,0x4
    80008748:	47c60613          	addi	a2,a2,1148 # 8000cbc0 <uart_tx_r>
    8000874c:	00004517          	auipc	a0,0x4
    80008750:	47c50513          	addi	a0,a0,1148 # 8000cbc8 <uart_tx_w>
    80008754:	00063783          	ld	a5,0(a2)
    80008758:	00053703          	ld	a4,0(a0)
    8000875c:	04f70263          	beq	a4,a5,800087a0 <uartintr+0x110>
    80008760:	100005b7          	lui	a1,0x10000
    80008764:	00005817          	auipc	a6,0x5
    80008768:	77c80813          	addi	a6,a6,1916 # 8000dee0 <uart_tx_buf>
    8000876c:	01c0006f          	j	80008788 <uartintr+0xf8>
    80008770:	0006c703          	lbu	a4,0(a3)
    80008774:	00f63023          	sd	a5,0(a2)
    80008778:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000877c:	00063783          	ld	a5,0(a2)
    80008780:	00053703          	ld	a4,0(a0)
    80008784:	02f70063          	beq	a4,a5,800087a4 <uartintr+0x114>
    80008788:	01f7f713          	andi	a4,a5,31
    8000878c:	00e806b3          	add	a3,a6,a4
    80008790:	0055c703          	lbu	a4,5(a1)
    80008794:	00178793          	addi	a5,a5,1
    80008798:	02077713          	andi	a4,a4,32
    8000879c:	fc071ae3          	bnez	a4,80008770 <uartintr+0xe0>
    800087a0:	00008067          	ret
    800087a4:	00008067          	ret

00000000800087a8 <kinit>:
    800087a8:	fc010113          	addi	sp,sp,-64
    800087ac:	02913423          	sd	s1,40(sp)
    800087b0:	fffff7b7          	lui	a5,0xfffff
    800087b4:	00006497          	auipc	s1,0x6
    800087b8:	74b48493          	addi	s1,s1,1867 # 8000eeff <end+0xfff>
    800087bc:	02813823          	sd	s0,48(sp)
    800087c0:	01313c23          	sd	s3,24(sp)
    800087c4:	00f4f4b3          	and	s1,s1,a5
    800087c8:	02113c23          	sd	ra,56(sp)
    800087cc:	03213023          	sd	s2,32(sp)
    800087d0:	01413823          	sd	s4,16(sp)
    800087d4:	01513423          	sd	s5,8(sp)
    800087d8:	04010413          	addi	s0,sp,64
    800087dc:	000017b7          	lui	a5,0x1
    800087e0:	01100993          	li	s3,17
    800087e4:	00f487b3          	add	a5,s1,a5
    800087e8:	01b99993          	slli	s3,s3,0x1b
    800087ec:	06f9e063          	bltu	s3,a5,8000884c <kinit+0xa4>
    800087f0:	00005a97          	auipc	s5,0x5
    800087f4:	710a8a93          	addi	s5,s5,1808 # 8000df00 <end>
    800087f8:	0754ec63          	bltu	s1,s5,80008870 <kinit+0xc8>
    800087fc:	0734fa63          	bgeu	s1,s3,80008870 <kinit+0xc8>
    80008800:	00088a37          	lui	s4,0x88
    80008804:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008808:	00004917          	auipc	s2,0x4
    8000880c:	3c890913          	addi	s2,s2,968 # 8000cbd0 <kmem>
    80008810:	00ca1a13          	slli	s4,s4,0xc
    80008814:	0140006f          	j	80008828 <kinit+0x80>
    80008818:	000017b7          	lui	a5,0x1
    8000881c:	00f484b3          	add	s1,s1,a5
    80008820:	0554e863          	bltu	s1,s5,80008870 <kinit+0xc8>
    80008824:	0534f663          	bgeu	s1,s3,80008870 <kinit+0xc8>
    80008828:	00001637          	lui	a2,0x1
    8000882c:	00100593          	li	a1,1
    80008830:	00048513          	mv	a0,s1
    80008834:	00000097          	auipc	ra,0x0
    80008838:	5e4080e7          	jalr	1508(ra) # 80008e18 <__memset>
    8000883c:	00093783          	ld	a5,0(s2)
    80008840:	00f4b023          	sd	a5,0(s1)
    80008844:	00993023          	sd	s1,0(s2)
    80008848:	fd4498e3          	bne	s1,s4,80008818 <kinit+0x70>
    8000884c:	03813083          	ld	ra,56(sp)
    80008850:	03013403          	ld	s0,48(sp)
    80008854:	02813483          	ld	s1,40(sp)
    80008858:	02013903          	ld	s2,32(sp)
    8000885c:	01813983          	ld	s3,24(sp)
    80008860:	01013a03          	ld	s4,16(sp)
    80008864:	00813a83          	ld	s5,8(sp)
    80008868:	04010113          	addi	sp,sp,64
    8000886c:	00008067          	ret
    80008870:	00002517          	auipc	a0,0x2
    80008874:	ed850513          	addi	a0,a0,-296 # 8000a748 <digits+0x18>
    80008878:	fffff097          	auipc	ra,0xfffff
    8000887c:	4b4080e7          	jalr	1204(ra) # 80007d2c <panic>

0000000080008880 <freerange>:
    80008880:	fc010113          	addi	sp,sp,-64
    80008884:	000017b7          	lui	a5,0x1
    80008888:	02913423          	sd	s1,40(sp)
    8000888c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008890:	009504b3          	add	s1,a0,s1
    80008894:	fffff537          	lui	a0,0xfffff
    80008898:	02813823          	sd	s0,48(sp)
    8000889c:	02113c23          	sd	ra,56(sp)
    800088a0:	03213023          	sd	s2,32(sp)
    800088a4:	01313c23          	sd	s3,24(sp)
    800088a8:	01413823          	sd	s4,16(sp)
    800088ac:	01513423          	sd	s5,8(sp)
    800088b0:	01613023          	sd	s6,0(sp)
    800088b4:	04010413          	addi	s0,sp,64
    800088b8:	00a4f4b3          	and	s1,s1,a0
    800088bc:	00f487b3          	add	a5,s1,a5
    800088c0:	06f5e463          	bltu	a1,a5,80008928 <freerange+0xa8>
    800088c4:	00005a97          	auipc	s5,0x5
    800088c8:	63ca8a93          	addi	s5,s5,1596 # 8000df00 <end>
    800088cc:	0954e263          	bltu	s1,s5,80008950 <freerange+0xd0>
    800088d0:	01100993          	li	s3,17
    800088d4:	01b99993          	slli	s3,s3,0x1b
    800088d8:	0734fc63          	bgeu	s1,s3,80008950 <freerange+0xd0>
    800088dc:	00058a13          	mv	s4,a1
    800088e0:	00004917          	auipc	s2,0x4
    800088e4:	2f090913          	addi	s2,s2,752 # 8000cbd0 <kmem>
    800088e8:	00002b37          	lui	s6,0x2
    800088ec:	0140006f          	j	80008900 <freerange+0x80>
    800088f0:	000017b7          	lui	a5,0x1
    800088f4:	00f484b3          	add	s1,s1,a5
    800088f8:	0554ec63          	bltu	s1,s5,80008950 <freerange+0xd0>
    800088fc:	0534fa63          	bgeu	s1,s3,80008950 <freerange+0xd0>
    80008900:	00001637          	lui	a2,0x1
    80008904:	00100593          	li	a1,1
    80008908:	00048513          	mv	a0,s1
    8000890c:	00000097          	auipc	ra,0x0
    80008910:	50c080e7          	jalr	1292(ra) # 80008e18 <__memset>
    80008914:	00093703          	ld	a4,0(s2)
    80008918:	016487b3          	add	a5,s1,s6
    8000891c:	00e4b023          	sd	a4,0(s1)
    80008920:	00993023          	sd	s1,0(s2)
    80008924:	fcfa76e3          	bgeu	s4,a5,800088f0 <freerange+0x70>
    80008928:	03813083          	ld	ra,56(sp)
    8000892c:	03013403          	ld	s0,48(sp)
    80008930:	02813483          	ld	s1,40(sp)
    80008934:	02013903          	ld	s2,32(sp)
    80008938:	01813983          	ld	s3,24(sp)
    8000893c:	01013a03          	ld	s4,16(sp)
    80008940:	00813a83          	ld	s5,8(sp)
    80008944:	00013b03          	ld	s6,0(sp)
    80008948:	04010113          	addi	sp,sp,64
    8000894c:	00008067          	ret
    80008950:	00002517          	auipc	a0,0x2
    80008954:	df850513          	addi	a0,a0,-520 # 8000a748 <digits+0x18>
    80008958:	fffff097          	auipc	ra,0xfffff
    8000895c:	3d4080e7          	jalr	980(ra) # 80007d2c <panic>

0000000080008960 <kfree>:
    80008960:	fe010113          	addi	sp,sp,-32
    80008964:	00813823          	sd	s0,16(sp)
    80008968:	00113c23          	sd	ra,24(sp)
    8000896c:	00913423          	sd	s1,8(sp)
    80008970:	02010413          	addi	s0,sp,32
    80008974:	03451793          	slli	a5,a0,0x34
    80008978:	04079c63          	bnez	a5,800089d0 <kfree+0x70>
    8000897c:	00005797          	auipc	a5,0x5
    80008980:	58478793          	addi	a5,a5,1412 # 8000df00 <end>
    80008984:	00050493          	mv	s1,a0
    80008988:	04f56463          	bltu	a0,a5,800089d0 <kfree+0x70>
    8000898c:	01100793          	li	a5,17
    80008990:	01b79793          	slli	a5,a5,0x1b
    80008994:	02f57e63          	bgeu	a0,a5,800089d0 <kfree+0x70>
    80008998:	00001637          	lui	a2,0x1
    8000899c:	00100593          	li	a1,1
    800089a0:	00000097          	auipc	ra,0x0
    800089a4:	478080e7          	jalr	1144(ra) # 80008e18 <__memset>
    800089a8:	00004797          	auipc	a5,0x4
    800089ac:	22878793          	addi	a5,a5,552 # 8000cbd0 <kmem>
    800089b0:	0007b703          	ld	a4,0(a5)
    800089b4:	01813083          	ld	ra,24(sp)
    800089b8:	01013403          	ld	s0,16(sp)
    800089bc:	00e4b023          	sd	a4,0(s1)
    800089c0:	0097b023          	sd	s1,0(a5)
    800089c4:	00813483          	ld	s1,8(sp)
    800089c8:	02010113          	addi	sp,sp,32
    800089cc:	00008067          	ret
    800089d0:	00002517          	auipc	a0,0x2
    800089d4:	d7850513          	addi	a0,a0,-648 # 8000a748 <digits+0x18>
    800089d8:	fffff097          	auipc	ra,0xfffff
    800089dc:	354080e7          	jalr	852(ra) # 80007d2c <panic>

00000000800089e0 <kalloc>:
    800089e0:	fe010113          	addi	sp,sp,-32
    800089e4:	00813823          	sd	s0,16(sp)
    800089e8:	00913423          	sd	s1,8(sp)
    800089ec:	00113c23          	sd	ra,24(sp)
    800089f0:	02010413          	addi	s0,sp,32
    800089f4:	00004797          	auipc	a5,0x4
    800089f8:	1dc78793          	addi	a5,a5,476 # 8000cbd0 <kmem>
    800089fc:	0007b483          	ld	s1,0(a5)
    80008a00:	02048063          	beqz	s1,80008a20 <kalloc+0x40>
    80008a04:	0004b703          	ld	a4,0(s1)
    80008a08:	00001637          	lui	a2,0x1
    80008a0c:	00500593          	li	a1,5
    80008a10:	00048513          	mv	a0,s1
    80008a14:	00e7b023          	sd	a4,0(a5)
    80008a18:	00000097          	auipc	ra,0x0
    80008a1c:	400080e7          	jalr	1024(ra) # 80008e18 <__memset>
    80008a20:	01813083          	ld	ra,24(sp)
    80008a24:	01013403          	ld	s0,16(sp)
    80008a28:	00048513          	mv	a0,s1
    80008a2c:	00813483          	ld	s1,8(sp)
    80008a30:	02010113          	addi	sp,sp,32
    80008a34:	00008067          	ret

0000000080008a38 <initlock>:
    80008a38:	ff010113          	addi	sp,sp,-16
    80008a3c:	00813423          	sd	s0,8(sp)
    80008a40:	01010413          	addi	s0,sp,16
    80008a44:	00813403          	ld	s0,8(sp)
    80008a48:	00b53423          	sd	a1,8(a0)
    80008a4c:	00052023          	sw	zero,0(a0)
    80008a50:	00053823          	sd	zero,16(a0)
    80008a54:	01010113          	addi	sp,sp,16
    80008a58:	00008067          	ret

0000000080008a5c <acquire>:
    80008a5c:	fe010113          	addi	sp,sp,-32
    80008a60:	00813823          	sd	s0,16(sp)
    80008a64:	00913423          	sd	s1,8(sp)
    80008a68:	00113c23          	sd	ra,24(sp)
    80008a6c:	01213023          	sd	s2,0(sp)
    80008a70:	02010413          	addi	s0,sp,32
    80008a74:	00050493          	mv	s1,a0
    80008a78:	10002973          	csrr	s2,sstatus
    80008a7c:	100027f3          	csrr	a5,sstatus
    80008a80:	ffd7f793          	andi	a5,a5,-3
    80008a84:	10079073          	csrw	sstatus,a5
    80008a88:	fffff097          	auipc	ra,0xfffff
    80008a8c:	8ec080e7          	jalr	-1812(ra) # 80007374 <mycpu>
    80008a90:	07852783          	lw	a5,120(a0)
    80008a94:	06078e63          	beqz	a5,80008b10 <acquire+0xb4>
    80008a98:	fffff097          	auipc	ra,0xfffff
    80008a9c:	8dc080e7          	jalr	-1828(ra) # 80007374 <mycpu>
    80008aa0:	07852783          	lw	a5,120(a0)
    80008aa4:	0004a703          	lw	a4,0(s1)
    80008aa8:	0017879b          	addiw	a5,a5,1
    80008aac:	06f52c23          	sw	a5,120(a0)
    80008ab0:	04071063          	bnez	a4,80008af0 <acquire+0x94>
    80008ab4:	00100713          	li	a4,1
    80008ab8:	00070793          	mv	a5,a4
    80008abc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008ac0:	0007879b          	sext.w	a5,a5
    80008ac4:	fe079ae3          	bnez	a5,80008ab8 <acquire+0x5c>
    80008ac8:	0ff0000f          	fence
    80008acc:	fffff097          	auipc	ra,0xfffff
    80008ad0:	8a8080e7          	jalr	-1880(ra) # 80007374 <mycpu>
    80008ad4:	01813083          	ld	ra,24(sp)
    80008ad8:	01013403          	ld	s0,16(sp)
    80008adc:	00a4b823          	sd	a0,16(s1)
    80008ae0:	00013903          	ld	s2,0(sp)
    80008ae4:	00813483          	ld	s1,8(sp)
    80008ae8:	02010113          	addi	sp,sp,32
    80008aec:	00008067          	ret
    80008af0:	0104b903          	ld	s2,16(s1)
    80008af4:	fffff097          	auipc	ra,0xfffff
    80008af8:	880080e7          	jalr	-1920(ra) # 80007374 <mycpu>
    80008afc:	faa91ce3          	bne	s2,a0,80008ab4 <acquire+0x58>
    80008b00:	00002517          	auipc	a0,0x2
    80008b04:	c5050513          	addi	a0,a0,-944 # 8000a750 <digits+0x20>
    80008b08:	fffff097          	auipc	ra,0xfffff
    80008b0c:	224080e7          	jalr	548(ra) # 80007d2c <panic>
    80008b10:	00195913          	srli	s2,s2,0x1
    80008b14:	fffff097          	auipc	ra,0xfffff
    80008b18:	860080e7          	jalr	-1952(ra) # 80007374 <mycpu>
    80008b1c:	00197913          	andi	s2,s2,1
    80008b20:	07252e23          	sw	s2,124(a0)
    80008b24:	f75ff06f          	j	80008a98 <acquire+0x3c>

0000000080008b28 <release>:
    80008b28:	fe010113          	addi	sp,sp,-32
    80008b2c:	00813823          	sd	s0,16(sp)
    80008b30:	00113c23          	sd	ra,24(sp)
    80008b34:	00913423          	sd	s1,8(sp)
    80008b38:	01213023          	sd	s2,0(sp)
    80008b3c:	02010413          	addi	s0,sp,32
    80008b40:	00052783          	lw	a5,0(a0)
    80008b44:	00079a63          	bnez	a5,80008b58 <release+0x30>
    80008b48:	00002517          	auipc	a0,0x2
    80008b4c:	c1050513          	addi	a0,a0,-1008 # 8000a758 <digits+0x28>
    80008b50:	fffff097          	auipc	ra,0xfffff
    80008b54:	1dc080e7          	jalr	476(ra) # 80007d2c <panic>
    80008b58:	01053903          	ld	s2,16(a0)
    80008b5c:	00050493          	mv	s1,a0
    80008b60:	fffff097          	auipc	ra,0xfffff
    80008b64:	814080e7          	jalr	-2028(ra) # 80007374 <mycpu>
    80008b68:	fea910e3          	bne	s2,a0,80008b48 <release+0x20>
    80008b6c:	0004b823          	sd	zero,16(s1)
    80008b70:	0ff0000f          	fence
    80008b74:	0f50000f          	fence	iorw,ow
    80008b78:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008b7c:	ffffe097          	auipc	ra,0xffffe
    80008b80:	7f8080e7          	jalr	2040(ra) # 80007374 <mycpu>
    80008b84:	100027f3          	csrr	a5,sstatus
    80008b88:	0027f793          	andi	a5,a5,2
    80008b8c:	04079a63          	bnez	a5,80008be0 <release+0xb8>
    80008b90:	07852783          	lw	a5,120(a0)
    80008b94:	02f05e63          	blez	a5,80008bd0 <release+0xa8>
    80008b98:	fff7871b          	addiw	a4,a5,-1
    80008b9c:	06e52c23          	sw	a4,120(a0)
    80008ba0:	00071c63          	bnez	a4,80008bb8 <release+0x90>
    80008ba4:	07c52783          	lw	a5,124(a0)
    80008ba8:	00078863          	beqz	a5,80008bb8 <release+0x90>
    80008bac:	100027f3          	csrr	a5,sstatus
    80008bb0:	0027e793          	ori	a5,a5,2
    80008bb4:	10079073          	csrw	sstatus,a5
    80008bb8:	01813083          	ld	ra,24(sp)
    80008bbc:	01013403          	ld	s0,16(sp)
    80008bc0:	00813483          	ld	s1,8(sp)
    80008bc4:	00013903          	ld	s2,0(sp)
    80008bc8:	02010113          	addi	sp,sp,32
    80008bcc:	00008067          	ret
    80008bd0:	00002517          	auipc	a0,0x2
    80008bd4:	ba850513          	addi	a0,a0,-1112 # 8000a778 <digits+0x48>
    80008bd8:	fffff097          	auipc	ra,0xfffff
    80008bdc:	154080e7          	jalr	340(ra) # 80007d2c <panic>
    80008be0:	00002517          	auipc	a0,0x2
    80008be4:	b8050513          	addi	a0,a0,-1152 # 8000a760 <digits+0x30>
    80008be8:	fffff097          	auipc	ra,0xfffff
    80008bec:	144080e7          	jalr	324(ra) # 80007d2c <panic>

0000000080008bf0 <holding>:
    80008bf0:	00052783          	lw	a5,0(a0)
    80008bf4:	00079663          	bnez	a5,80008c00 <holding+0x10>
    80008bf8:	00000513          	li	a0,0
    80008bfc:	00008067          	ret
    80008c00:	fe010113          	addi	sp,sp,-32
    80008c04:	00813823          	sd	s0,16(sp)
    80008c08:	00913423          	sd	s1,8(sp)
    80008c0c:	00113c23          	sd	ra,24(sp)
    80008c10:	02010413          	addi	s0,sp,32
    80008c14:	01053483          	ld	s1,16(a0)
    80008c18:	ffffe097          	auipc	ra,0xffffe
    80008c1c:	75c080e7          	jalr	1884(ra) # 80007374 <mycpu>
    80008c20:	01813083          	ld	ra,24(sp)
    80008c24:	01013403          	ld	s0,16(sp)
    80008c28:	40a48533          	sub	a0,s1,a0
    80008c2c:	00153513          	seqz	a0,a0
    80008c30:	00813483          	ld	s1,8(sp)
    80008c34:	02010113          	addi	sp,sp,32
    80008c38:	00008067          	ret

0000000080008c3c <push_off>:
    80008c3c:	fe010113          	addi	sp,sp,-32
    80008c40:	00813823          	sd	s0,16(sp)
    80008c44:	00113c23          	sd	ra,24(sp)
    80008c48:	00913423          	sd	s1,8(sp)
    80008c4c:	02010413          	addi	s0,sp,32
    80008c50:	100024f3          	csrr	s1,sstatus
    80008c54:	100027f3          	csrr	a5,sstatus
    80008c58:	ffd7f793          	andi	a5,a5,-3
    80008c5c:	10079073          	csrw	sstatus,a5
    80008c60:	ffffe097          	auipc	ra,0xffffe
    80008c64:	714080e7          	jalr	1812(ra) # 80007374 <mycpu>
    80008c68:	07852783          	lw	a5,120(a0)
    80008c6c:	02078663          	beqz	a5,80008c98 <push_off+0x5c>
    80008c70:	ffffe097          	auipc	ra,0xffffe
    80008c74:	704080e7          	jalr	1796(ra) # 80007374 <mycpu>
    80008c78:	07852783          	lw	a5,120(a0)
    80008c7c:	01813083          	ld	ra,24(sp)
    80008c80:	01013403          	ld	s0,16(sp)
    80008c84:	0017879b          	addiw	a5,a5,1
    80008c88:	06f52c23          	sw	a5,120(a0)
    80008c8c:	00813483          	ld	s1,8(sp)
    80008c90:	02010113          	addi	sp,sp,32
    80008c94:	00008067          	ret
    80008c98:	0014d493          	srli	s1,s1,0x1
    80008c9c:	ffffe097          	auipc	ra,0xffffe
    80008ca0:	6d8080e7          	jalr	1752(ra) # 80007374 <mycpu>
    80008ca4:	0014f493          	andi	s1,s1,1
    80008ca8:	06952e23          	sw	s1,124(a0)
    80008cac:	fc5ff06f          	j	80008c70 <push_off+0x34>

0000000080008cb0 <pop_off>:
    80008cb0:	ff010113          	addi	sp,sp,-16
    80008cb4:	00813023          	sd	s0,0(sp)
    80008cb8:	00113423          	sd	ra,8(sp)
    80008cbc:	01010413          	addi	s0,sp,16
    80008cc0:	ffffe097          	auipc	ra,0xffffe
    80008cc4:	6b4080e7          	jalr	1716(ra) # 80007374 <mycpu>
    80008cc8:	100027f3          	csrr	a5,sstatus
    80008ccc:	0027f793          	andi	a5,a5,2
    80008cd0:	04079663          	bnez	a5,80008d1c <pop_off+0x6c>
    80008cd4:	07852783          	lw	a5,120(a0)
    80008cd8:	02f05a63          	blez	a5,80008d0c <pop_off+0x5c>
    80008cdc:	fff7871b          	addiw	a4,a5,-1
    80008ce0:	06e52c23          	sw	a4,120(a0)
    80008ce4:	00071c63          	bnez	a4,80008cfc <pop_off+0x4c>
    80008ce8:	07c52783          	lw	a5,124(a0)
    80008cec:	00078863          	beqz	a5,80008cfc <pop_off+0x4c>
    80008cf0:	100027f3          	csrr	a5,sstatus
    80008cf4:	0027e793          	ori	a5,a5,2
    80008cf8:	10079073          	csrw	sstatus,a5
    80008cfc:	00813083          	ld	ra,8(sp)
    80008d00:	00013403          	ld	s0,0(sp)
    80008d04:	01010113          	addi	sp,sp,16
    80008d08:	00008067          	ret
    80008d0c:	00002517          	auipc	a0,0x2
    80008d10:	a6c50513          	addi	a0,a0,-1428 # 8000a778 <digits+0x48>
    80008d14:	fffff097          	auipc	ra,0xfffff
    80008d18:	018080e7          	jalr	24(ra) # 80007d2c <panic>
    80008d1c:	00002517          	auipc	a0,0x2
    80008d20:	a4450513          	addi	a0,a0,-1468 # 8000a760 <digits+0x30>
    80008d24:	fffff097          	auipc	ra,0xfffff
    80008d28:	008080e7          	jalr	8(ra) # 80007d2c <panic>

0000000080008d2c <push_on>:
    80008d2c:	fe010113          	addi	sp,sp,-32
    80008d30:	00813823          	sd	s0,16(sp)
    80008d34:	00113c23          	sd	ra,24(sp)
    80008d38:	00913423          	sd	s1,8(sp)
    80008d3c:	02010413          	addi	s0,sp,32
    80008d40:	100024f3          	csrr	s1,sstatus
    80008d44:	100027f3          	csrr	a5,sstatus
    80008d48:	0027e793          	ori	a5,a5,2
    80008d4c:	10079073          	csrw	sstatus,a5
    80008d50:	ffffe097          	auipc	ra,0xffffe
    80008d54:	624080e7          	jalr	1572(ra) # 80007374 <mycpu>
    80008d58:	07852783          	lw	a5,120(a0)
    80008d5c:	02078663          	beqz	a5,80008d88 <push_on+0x5c>
    80008d60:	ffffe097          	auipc	ra,0xffffe
    80008d64:	614080e7          	jalr	1556(ra) # 80007374 <mycpu>
    80008d68:	07852783          	lw	a5,120(a0)
    80008d6c:	01813083          	ld	ra,24(sp)
    80008d70:	01013403          	ld	s0,16(sp)
    80008d74:	0017879b          	addiw	a5,a5,1
    80008d78:	06f52c23          	sw	a5,120(a0)
    80008d7c:	00813483          	ld	s1,8(sp)
    80008d80:	02010113          	addi	sp,sp,32
    80008d84:	00008067          	ret
    80008d88:	0014d493          	srli	s1,s1,0x1
    80008d8c:	ffffe097          	auipc	ra,0xffffe
    80008d90:	5e8080e7          	jalr	1512(ra) # 80007374 <mycpu>
    80008d94:	0014f493          	andi	s1,s1,1
    80008d98:	06952e23          	sw	s1,124(a0)
    80008d9c:	fc5ff06f          	j	80008d60 <push_on+0x34>

0000000080008da0 <pop_on>:
    80008da0:	ff010113          	addi	sp,sp,-16
    80008da4:	00813023          	sd	s0,0(sp)
    80008da8:	00113423          	sd	ra,8(sp)
    80008dac:	01010413          	addi	s0,sp,16
    80008db0:	ffffe097          	auipc	ra,0xffffe
    80008db4:	5c4080e7          	jalr	1476(ra) # 80007374 <mycpu>
    80008db8:	100027f3          	csrr	a5,sstatus
    80008dbc:	0027f793          	andi	a5,a5,2
    80008dc0:	04078463          	beqz	a5,80008e08 <pop_on+0x68>
    80008dc4:	07852783          	lw	a5,120(a0)
    80008dc8:	02f05863          	blez	a5,80008df8 <pop_on+0x58>
    80008dcc:	fff7879b          	addiw	a5,a5,-1
    80008dd0:	06f52c23          	sw	a5,120(a0)
    80008dd4:	07853783          	ld	a5,120(a0)
    80008dd8:	00079863          	bnez	a5,80008de8 <pop_on+0x48>
    80008ddc:	100027f3          	csrr	a5,sstatus
    80008de0:	ffd7f793          	andi	a5,a5,-3
    80008de4:	10079073          	csrw	sstatus,a5
    80008de8:	00813083          	ld	ra,8(sp)
    80008dec:	00013403          	ld	s0,0(sp)
    80008df0:	01010113          	addi	sp,sp,16
    80008df4:	00008067          	ret
    80008df8:	00002517          	auipc	a0,0x2
    80008dfc:	9a850513          	addi	a0,a0,-1624 # 8000a7a0 <digits+0x70>
    80008e00:	fffff097          	auipc	ra,0xfffff
    80008e04:	f2c080e7          	jalr	-212(ra) # 80007d2c <panic>
    80008e08:	00002517          	auipc	a0,0x2
    80008e0c:	97850513          	addi	a0,a0,-1672 # 8000a780 <digits+0x50>
    80008e10:	fffff097          	auipc	ra,0xfffff
    80008e14:	f1c080e7          	jalr	-228(ra) # 80007d2c <panic>

0000000080008e18 <__memset>:
    80008e18:	ff010113          	addi	sp,sp,-16
    80008e1c:	00813423          	sd	s0,8(sp)
    80008e20:	01010413          	addi	s0,sp,16
    80008e24:	1a060e63          	beqz	a2,80008fe0 <__memset+0x1c8>
    80008e28:	40a007b3          	neg	a5,a0
    80008e2c:	0077f793          	andi	a5,a5,7
    80008e30:	00778693          	addi	a3,a5,7
    80008e34:	00b00813          	li	a6,11
    80008e38:	0ff5f593          	andi	a1,a1,255
    80008e3c:	fff6071b          	addiw	a4,a2,-1
    80008e40:	1b06e663          	bltu	a3,a6,80008fec <__memset+0x1d4>
    80008e44:	1cd76463          	bltu	a4,a3,8000900c <__memset+0x1f4>
    80008e48:	1a078e63          	beqz	a5,80009004 <__memset+0x1ec>
    80008e4c:	00b50023          	sb	a1,0(a0)
    80008e50:	00100713          	li	a4,1
    80008e54:	1ae78463          	beq	a5,a4,80008ffc <__memset+0x1e4>
    80008e58:	00b500a3          	sb	a1,1(a0)
    80008e5c:	00200713          	li	a4,2
    80008e60:	1ae78a63          	beq	a5,a4,80009014 <__memset+0x1fc>
    80008e64:	00b50123          	sb	a1,2(a0)
    80008e68:	00300713          	li	a4,3
    80008e6c:	18e78463          	beq	a5,a4,80008ff4 <__memset+0x1dc>
    80008e70:	00b501a3          	sb	a1,3(a0)
    80008e74:	00400713          	li	a4,4
    80008e78:	1ae78263          	beq	a5,a4,8000901c <__memset+0x204>
    80008e7c:	00b50223          	sb	a1,4(a0)
    80008e80:	00500713          	li	a4,5
    80008e84:	1ae78063          	beq	a5,a4,80009024 <__memset+0x20c>
    80008e88:	00b502a3          	sb	a1,5(a0)
    80008e8c:	00700713          	li	a4,7
    80008e90:	18e79e63          	bne	a5,a4,8000902c <__memset+0x214>
    80008e94:	00b50323          	sb	a1,6(a0)
    80008e98:	00700e93          	li	t4,7
    80008e9c:	00859713          	slli	a4,a1,0x8
    80008ea0:	00e5e733          	or	a4,a1,a4
    80008ea4:	01059e13          	slli	t3,a1,0x10
    80008ea8:	01c76e33          	or	t3,a4,t3
    80008eac:	01859313          	slli	t1,a1,0x18
    80008eb0:	006e6333          	or	t1,t3,t1
    80008eb4:	02059893          	slli	a7,a1,0x20
    80008eb8:	40f60e3b          	subw	t3,a2,a5
    80008ebc:	011368b3          	or	a7,t1,a7
    80008ec0:	02859813          	slli	a6,a1,0x28
    80008ec4:	0108e833          	or	a6,a7,a6
    80008ec8:	03059693          	slli	a3,a1,0x30
    80008ecc:	003e589b          	srliw	a7,t3,0x3
    80008ed0:	00d866b3          	or	a3,a6,a3
    80008ed4:	03859713          	slli	a4,a1,0x38
    80008ed8:	00389813          	slli	a6,a7,0x3
    80008edc:	00f507b3          	add	a5,a0,a5
    80008ee0:	00e6e733          	or	a4,a3,a4
    80008ee4:	000e089b          	sext.w	a7,t3
    80008ee8:	00f806b3          	add	a3,a6,a5
    80008eec:	00e7b023          	sd	a4,0(a5)
    80008ef0:	00878793          	addi	a5,a5,8
    80008ef4:	fed79ce3          	bne	a5,a3,80008eec <__memset+0xd4>
    80008ef8:	ff8e7793          	andi	a5,t3,-8
    80008efc:	0007871b          	sext.w	a4,a5
    80008f00:	01d787bb          	addw	a5,a5,t4
    80008f04:	0ce88e63          	beq	a7,a4,80008fe0 <__memset+0x1c8>
    80008f08:	00f50733          	add	a4,a0,a5
    80008f0c:	00b70023          	sb	a1,0(a4)
    80008f10:	0017871b          	addiw	a4,a5,1
    80008f14:	0cc77663          	bgeu	a4,a2,80008fe0 <__memset+0x1c8>
    80008f18:	00e50733          	add	a4,a0,a4
    80008f1c:	00b70023          	sb	a1,0(a4)
    80008f20:	0027871b          	addiw	a4,a5,2
    80008f24:	0ac77e63          	bgeu	a4,a2,80008fe0 <__memset+0x1c8>
    80008f28:	00e50733          	add	a4,a0,a4
    80008f2c:	00b70023          	sb	a1,0(a4)
    80008f30:	0037871b          	addiw	a4,a5,3
    80008f34:	0ac77663          	bgeu	a4,a2,80008fe0 <__memset+0x1c8>
    80008f38:	00e50733          	add	a4,a0,a4
    80008f3c:	00b70023          	sb	a1,0(a4)
    80008f40:	0047871b          	addiw	a4,a5,4
    80008f44:	08c77e63          	bgeu	a4,a2,80008fe0 <__memset+0x1c8>
    80008f48:	00e50733          	add	a4,a0,a4
    80008f4c:	00b70023          	sb	a1,0(a4)
    80008f50:	0057871b          	addiw	a4,a5,5
    80008f54:	08c77663          	bgeu	a4,a2,80008fe0 <__memset+0x1c8>
    80008f58:	00e50733          	add	a4,a0,a4
    80008f5c:	00b70023          	sb	a1,0(a4)
    80008f60:	0067871b          	addiw	a4,a5,6
    80008f64:	06c77e63          	bgeu	a4,a2,80008fe0 <__memset+0x1c8>
    80008f68:	00e50733          	add	a4,a0,a4
    80008f6c:	00b70023          	sb	a1,0(a4)
    80008f70:	0077871b          	addiw	a4,a5,7
    80008f74:	06c77663          	bgeu	a4,a2,80008fe0 <__memset+0x1c8>
    80008f78:	00e50733          	add	a4,a0,a4
    80008f7c:	00b70023          	sb	a1,0(a4)
    80008f80:	0087871b          	addiw	a4,a5,8
    80008f84:	04c77e63          	bgeu	a4,a2,80008fe0 <__memset+0x1c8>
    80008f88:	00e50733          	add	a4,a0,a4
    80008f8c:	00b70023          	sb	a1,0(a4)
    80008f90:	0097871b          	addiw	a4,a5,9
    80008f94:	04c77663          	bgeu	a4,a2,80008fe0 <__memset+0x1c8>
    80008f98:	00e50733          	add	a4,a0,a4
    80008f9c:	00b70023          	sb	a1,0(a4)
    80008fa0:	00a7871b          	addiw	a4,a5,10
    80008fa4:	02c77e63          	bgeu	a4,a2,80008fe0 <__memset+0x1c8>
    80008fa8:	00e50733          	add	a4,a0,a4
    80008fac:	00b70023          	sb	a1,0(a4)
    80008fb0:	00b7871b          	addiw	a4,a5,11
    80008fb4:	02c77663          	bgeu	a4,a2,80008fe0 <__memset+0x1c8>
    80008fb8:	00e50733          	add	a4,a0,a4
    80008fbc:	00b70023          	sb	a1,0(a4)
    80008fc0:	00c7871b          	addiw	a4,a5,12
    80008fc4:	00c77e63          	bgeu	a4,a2,80008fe0 <__memset+0x1c8>
    80008fc8:	00e50733          	add	a4,a0,a4
    80008fcc:	00b70023          	sb	a1,0(a4)
    80008fd0:	00d7879b          	addiw	a5,a5,13
    80008fd4:	00c7f663          	bgeu	a5,a2,80008fe0 <__memset+0x1c8>
    80008fd8:	00f507b3          	add	a5,a0,a5
    80008fdc:	00b78023          	sb	a1,0(a5)
    80008fe0:	00813403          	ld	s0,8(sp)
    80008fe4:	01010113          	addi	sp,sp,16
    80008fe8:	00008067          	ret
    80008fec:	00b00693          	li	a3,11
    80008ff0:	e55ff06f          	j	80008e44 <__memset+0x2c>
    80008ff4:	00300e93          	li	t4,3
    80008ff8:	ea5ff06f          	j	80008e9c <__memset+0x84>
    80008ffc:	00100e93          	li	t4,1
    80009000:	e9dff06f          	j	80008e9c <__memset+0x84>
    80009004:	00000e93          	li	t4,0
    80009008:	e95ff06f          	j	80008e9c <__memset+0x84>
    8000900c:	00000793          	li	a5,0
    80009010:	ef9ff06f          	j	80008f08 <__memset+0xf0>
    80009014:	00200e93          	li	t4,2
    80009018:	e85ff06f          	j	80008e9c <__memset+0x84>
    8000901c:	00400e93          	li	t4,4
    80009020:	e7dff06f          	j	80008e9c <__memset+0x84>
    80009024:	00500e93          	li	t4,5
    80009028:	e75ff06f          	j	80008e9c <__memset+0x84>
    8000902c:	00600e93          	li	t4,6
    80009030:	e6dff06f          	j	80008e9c <__memset+0x84>

0000000080009034 <__memmove>:
    80009034:	ff010113          	addi	sp,sp,-16
    80009038:	00813423          	sd	s0,8(sp)
    8000903c:	01010413          	addi	s0,sp,16
    80009040:	0e060863          	beqz	a2,80009130 <__memmove+0xfc>
    80009044:	fff6069b          	addiw	a3,a2,-1
    80009048:	0006881b          	sext.w	a6,a3
    8000904c:	0ea5e863          	bltu	a1,a0,8000913c <__memmove+0x108>
    80009050:	00758713          	addi	a4,a1,7
    80009054:	00a5e7b3          	or	a5,a1,a0
    80009058:	40a70733          	sub	a4,a4,a0
    8000905c:	0077f793          	andi	a5,a5,7
    80009060:	00f73713          	sltiu	a4,a4,15
    80009064:	00174713          	xori	a4,a4,1
    80009068:	0017b793          	seqz	a5,a5
    8000906c:	00e7f7b3          	and	a5,a5,a4
    80009070:	10078863          	beqz	a5,80009180 <__memmove+0x14c>
    80009074:	00900793          	li	a5,9
    80009078:	1107f463          	bgeu	a5,a6,80009180 <__memmove+0x14c>
    8000907c:	0036581b          	srliw	a6,a2,0x3
    80009080:	fff8081b          	addiw	a6,a6,-1
    80009084:	02081813          	slli	a6,a6,0x20
    80009088:	01d85893          	srli	a7,a6,0x1d
    8000908c:	00858813          	addi	a6,a1,8
    80009090:	00058793          	mv	a5,a1
    80009094:	00050713          	mv	a4,a0
    80009098:	01088833          	add	a6,a7,a6
    8000909c:	0007b883          	ld	a7,0(a5)
    800090a0:	00878793          	addi	a5,a5,8
    800090a4:	00870713          	addi	a4,a4,8
    800090a8:	ff173c23          	sd	a7,-8(a4)
    800090ac:	ff0798e3          	bne	a5,a6,8000909c <__memmove+0x68>
    800090b0:	ff867713          	andi	a4,a2,-8
    800090b4:	02071793          	slli	a5,a4,0x20
    800090b8:	0207d793          	srli	a5,a5,0x20
    800090bc:	00f585b3          	add	a1,a1,a5
    800090c0:	40e686bb          	subw	a3,a3,a4
    800090c4:	00f507b3          	add	a5,a0,a5
    800090c8:	06e60463          	beq	a2,a4,80009130 <__memmove+0xfc>
    800090cc:	0005c703          	lbu	a4,0(a1)
    800090d0:	00e78023          	sb	a4,0(a5)
    800090d4:	04068e63          	beqz	a3,80009130 <__memmove+0xfc>
    800090d8:	0015c603          	lbu	a2,1(a1)
    800090dc:	00100713          	li	a4,1
    800090e0:	00c780a3          	sb	a2,1(a5)
    800090e4:	04e68663          	beq	a3,a4,80009130 <__memmove+0xfc>
    800090e8:	0025c603          	lbu	a2,2(a1)
    800090ec:	00200713          	li	a4,2
    800090f0:	00c78123          	sb	a2,2(a5)
    800090f4:	02e68e63          	beq	a3,a4,80009130 <__memmove+0xfc>
    800090f8:	0035c603          	lbu	a2,3(a1)
    800090fc:	00300713          	li	a4,3
    80009100:	00c781a3          	sb	a2,3(a5)
    80009104:	02e68663          	beq	a3,a4,80009130 <__memmove+0xfc>
    80009108:	0045c603          	lbu	a2,4(a1)
    8000910c:	00400713          	li	a4,4
    80009110:	00c78223          	sb	a2,4(a5)
    80009114:	00e68e63          	beq	a3,a4,80009130 <__memmove+0xfc>
    80009118:	0055c603          	lbu	a2,5(a1)
    8000911c:	00500713          	li	a4,5
    80009120:	00c782a3          	sb	a2,5(a5)
    80009124:	00e68663          	beq	a3,a4,80009130 <__memmove+0xfc>
    80009128:	0065c703          	lbu	a4,6(a1)
    8000912c:	00e78323          	sb	a4,6(a5)
    80009130:	00813403          	ld	s0,8(sp)
    80009134:	01010113          	addi	sp,sp,16
    80009138:	00008067          	ret
    8000913c:	02061713          	slli	a4,a2,0x20
    80009140:	02075713          	srli	a4,a4,0x20
    80009144:	00e587b3          	add	a5,a1,a4
    80009148:	f0f574e3          	bgeu	a0,a5,80009050 <__memmove+0x1c>
    8000914c:	02069613          	slli	a2,a3,0x20
    80009150:	02065613          	srli	a2,a2,0x20
    80009154:	fff64613          	not	a2,a2
    80009158:	00e50733          	add	a4,a0,a4
    8000915c:	00c78633          	add	a2,a5,a2
    80009160:	fff7c683          	lbu	a3,-1(a5)
    80009164:	fff78793          	addi	a5,a5,-1
    80009168:	fff70713          	addi	a4,a4,-1
    8000916c:	00d70023          	sb	a3,0(a4)
    80009170:	fec798e3          	bne	a5,a2,80009160 <__memmove+0x12c>
    80009174:	00813403          	ld	s0,8(sp)
    80009178:	01010113          	addi	sp,sp,16
    8000917c:	00008067          	ret
    80009180:	02069713          	slli	a4,a3,0x20
    80009184:	02075713          	srli	a4,a4,0x20
    80009188:	00170713          	addi	a4,a4,1
    8000918c:	00e50733          	add	a4,a0,a4
    80009190:	00050793          	mv	a5,a0
    80009194:	0005c683          	lbu	a3,0(a1)
    80009198:	00178793          	addi	a5,a5,1
    8000919c:	00158593          	addi	a1,a1,1
    800091a0:	fed78fa3          	sb	a3,-1(a5)
    800091a4:	fee798e3          	bne	a5,a4,80009194 <__memmove+0x160>
    800091a8:	f89ff06f          	j	80009130 <__memmove+0xfc>
	...

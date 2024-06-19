#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/sem.hpp"
#include "../h/Allocator.hpp"
#include "../h/syscall_cpp.hpp"

kSemaphore *s1;

extern void userMain();

void wrp(void*) {
    userMain();
}

int main()  // MIJENJAO PRINT SVOJ, MIJENJA YILED DISPATCH U POZIVIMA, mijenajo da dodam enter, mijenjao print opet, mijenjao putc getc,mijenjao listu private public Elem
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    Allocator::init();
    kConsole::init();

    TCB *mainoo;

    thread_create(&mainoo, nullptr, nullptr);
    TCB::running = mainoo;

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);

    TCB *nit;

    thread_create(&nit, wrp, nullptr);

    while (!nit->isFinished()) {
        thread_dispatch();
    }

    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);

    printStringMoj("Kernel finished\n");

    Riscv::kernelEnd(nullptr);

    delete mainoo;
    delete nit;

    kConsole::endConsole();

    __asm__ volatile ("li t0, 0x5555");
    __asm__ volatile ("li t1, 0x100000");
    __asm__ volatile ("sw t0, 0(t1)");

    return 0;
 }
 /*
TCB *kernel;

thread_create(&kernel, Riscv::kernelEnd, nullptr);

printStringMoj("Kernel zavrsen\n");

while (!kernel->isFinished()) {
    thread_dispatch();
}*/

/*Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    Allocator::init();
    kConsole::init();

    TCB *mainoo;

    thread_create(&mainoo, nullptr, nullptr);
    TCB::running = mainoo;

    TCB *threads[5];

    thread_create(&threads[0],nullptr, nullptr);
    TCB::running = threads[0];

    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);

    thread_create(&threads[1],prvi, nullptr);
    thread_create(&threads[2],drugi, nullptr);
    thread_create(&threads[3],treci, nullptr);
    thread_create(&threads[4],cetvrti, nullptr);

    printStringMoj("ThreadA created\n");
    printStringMoj("ThreadB created\n");
    printStringMoj("ThreadC created\n");
    printStringMoj("ThreadD created\n");

    sem_open(&s1,0);

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        thread_dispatch();
    }

    for (auto &thread: threads)
    {
        delete thread;
    }

    Riscv::ms_sstatus(Riscv::SSTATUS_SPP);

    printStringMoj("Kernel finished\n");

    Riscv::kernelEnd(nullptr);

    //delete nit;
    //delete mainoo;

    __asm__ volatile ("li t0, 0x5555");
    __asm__ volatile ("li t1, 0x100000");
    __asm__ volatile ("sw t0, 0(t1)");

    return 0;*/
/*
void prvi(void*) {
    sem_timedwait(s1,50);
    printStringMoj("prvi prob");
    sem_signal(s1);
}

void drugi(void*) {
    sem_trywait(s1);
    printStringMoj("drugi prob");
}

void treci(void*) {
    sem_wait(s1);
    printStringMoj("treci prob");
}

void cetvrti(void*) {
    time_sleep(70);
    printStringMoj("cetvrti prob");
}*/
/*
class Periodic : public PeriodicThread {
public:
    Periodic(time_t t) : PeriodicThread(t){}
    void periodicActivation() override {
        putc('a');
    }
};*/
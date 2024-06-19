//
// Created by os on 5/15/24.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/print.hpp"

extern "C" void popRegisters();
extern "C" void pushRegisters();

TCB *TCB::running = nullptr;

List<TCB> TCB::sleeping;

uint64 TCB::timeSliceCounter = 0;

int TCB::putcP = 0;

int TCB::thread_create(thread_t *handle, TCB::Body body, void *arg, uint64 *stack) {
    if (handle == nullptr) return -1;
    *handle = new TCB(body,stack,arg,DEFAULT_TIME_SLICE);
    return 0;
}

void TCB::yield()
{
    __asm__ volatile ("ecall");
}

void TCB::dispatch() {
    TCB *old = running;
    if (!old->isFinished() && !old->isSleeping && !old->blocked) {
        Scheduler::put(old);
    }
    running = Scheduler::get();
    if (old != running) {
        TCB::contextSwitch(&old->context, &running->context);
    }
}

void TCB::threadWrapper() // YILED DISPATCH
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    TCB::yield();
}

void TCB::putToSleep(time_t t) { //  YILED DISPATCH
    TCB::running->timeSliceCounter = 0;
    TCB::running->timeToSleep = t;
    TCB::running->isSleeping = true;
    TCB::sleeping.addLast(TCB::running);
    TCB::dispatch();
    //TCB::yield();
}
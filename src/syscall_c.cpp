//
// Created by os on 5/16/24.
//

#include "../h/syscall_c.h"

void scall(uint64 opc, uint64 p1 = 0, uint64 p2 = 0, uint64 p3 = 0,uint64 p4 = 0,uint64 p5=0){
    __asm__ volatile("ecall");
}

void *mem_alloc(size_t size) {
    volatile void *retVal;
    size = (size + MEM_BLOCK_SIZE - 1)/MEM_BLOCK_SIZE;
    scall(MEM_ALLOC, (uint64) size);
    __asm__ volatile ("mv %[retVal], a0" : [retVal] "=r"(retVal));
    return (void*) retVal;
}

int mem_free(void *mem){
    volatile int retVal;
    scall(MEM_FREE,(uint64) mem);
    __asm__ volatile ("mv %[retVal], a0" : [retVal] "=r"(retVal));
    return (int) retVal;
}


int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {

    uint64* stackp = (uint64*) Allocator::_malloc(DEFAULT_STACK_SIZE * sizeof(uint64));

    if (!stackp) {
        return -1;
    };

    scall(THREAD_CREATE,(uint64) handle, (uint64) start_routine, (uint64) arg, (uint64)stackp);

    if (TCB::running == nullptr) {return 0; }
    return TCB::running->retVal;
}

int thread_exit() {
    if (TCB::running->getBody() == nullptr) {return -1;}
    scall(THREAD_EXIT);
    return 0;
}

void thread_dispatch() {
    scall(THREAD_DISPATCH);
}

int time_sleep(time_t time) {
    if (time == 0) {
        return 0;
    }
    if ((int) time < 0) {
        return -1;
    }
    scall(TIME_SLEEP,(uint64) time);
    return 0;
}

int sem_open(sem_t *handle, unsigned init) {
    scall(SEM_OPEN, (uint64) handle, (uint64) init);
    if (TCB::running == nullptr) {return 0; }
    return TCB::running->retVal;
}

int sem_wait(sem_t id) {
    if (id == nullptr) {return -1;}
    scall(SEM_WAIT,(uint64) id);
    if (TCB::running == nullptr) {return 0; }
    return TCB::running->retVal;
}

int sem_signal(sem_t id) {
    if (id == nullptr) {return -1;}
    scall(SEM_SIGNAL,(uint64) id);
    if (TCB::running == nullptr) {return 0; }
    return TCB::running->retVal;
}

int sem_close(sem_t id) {
    if (id == nullptr) {return -1;}
    scall(SEM_CLOSE,(uint64) id);
    if (TCB::running == nullptr) {return 0; }
    return TCB::running->retVal;
}

int sem_timedwait(sem_t id, time_t timeout) {
    if (id == nullptr) {return -1;};
    scall(SEM_TIMEDWAIT, (uint64) id, (uint64) timeout);
    if (TCB::running == nullptr) { return 0; }
    return TCB::running->retVal;
}

int sem_trywait(sem_t id) {
    if (id == nullptr) {
        return -1;
    }
    scall(SEM_TRYWAIT, (uint64) id);
    if (TCB::running == nullptr) {return 0; }
    return TCB::running->retVal;
}

char getc() {
    scall(GETC);
    return (char) TCB::running->getcRetVal;
    //return (char) __getc();
}

void putc(char c) {
    scall(PUTC, (uint64) c);
    /*if (TCB::putcP == 20) {
        time_sleep(1);
        TCB::putcP = 0;
    }
    TCB::putcP++;
    */
    return;
}


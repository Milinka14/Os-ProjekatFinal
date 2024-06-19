//
// Created by os on 5/19/24.
//

#ifndef PROJECT_BASE_SEM_HPP
#define PROJECT_BASE_SEM_HPP

#include "../h/tcb.hpp"
#include "../h/list.hpp"
#include "../h/syscall_c.h"
#include "tipovi.hpp"
#include "Allocator.hpp"

class kSemaphore {
public:
    kSemaphore(uint64 init = 1): val(init) {}

    int closeSem();
    int tryWait();
    int timedWait(time_t time);

    int wait();
    int signal();

    int value() const{return val;}

    static int openSem(sem_t *handle, unsigned init);

    friend class Riscv;

    static List<TCB> blockedTimedWait;

    void* operator new(size_t size) {
        return Allocator::_malloc(size);
    }

    void operator delete(void* ptr) {
        Allocator::_mem_free(ptr);
    }

    void* operator new[](size_t size) {
        return Allocator::_malloc(size);
    }

    void operator delete[](void* ptr) {
        Allocator::_mem_free(ptr);
    }

private:
    int val;

    List<TCB> blocked;

    bool destroyed = false;
protected:
    void block();
    void unblock();
};


#endif //PROJECT_BASE_SEM_HPP

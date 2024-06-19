//
// Created by os on 5/22/24.
//

#ifndef PROJECT_BASE_KBUFFER_HPP
#define PROJECT_BASE_KBUFFER_HPP

// koriscen buffer iz testova

#include "../h/syscall_c.h"
#include "../h/sem.hpp"
#include "../h/Allocator.hpp"

class kBuffer {
private:
    int cap;
    char *buffer;
    int head, tail;

    sem_t spaceAvailable;
    sem_t itemAvailable;
    sem_t mutexHead;
    sem_t mutexTail;

public:

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

    kBuffer(int _cap);
    ~kBuffer();

    void put(char val);
    char get();

    int getCnt();

};

#endif //PROJECT_BASE_KBUFFER_HPP

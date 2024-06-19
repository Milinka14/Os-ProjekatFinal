//
// Created by os on 5/16/24.
//

#ifndef PROJECT_BASE_SYSCALL_C_H
#define PROJECT_BASE_SYSCALL_C_H

#include "../lib/hw.h"
#include "tcb.hpp"
#include "tipovi.hpp"
#include "sem.hpp"
#include "print.hpp"
#include "riscv.hpp"

enum Codes {
    MEM_ALLOC = 0x1,
    MEM_FREE = 0x2,
    THREAD_CREATE = 0x11,
    THREAD_EXIT = 0x12,
    THREAD_DISPATCH = 0x13,
    SEM_OPEN = 0x21,
    SEM_CLOSE = 0x22,
    SEM_WAIT = 0x23,
    SEM_SIGNAL = 0x24,
    SEM_TIMEDWAIT = 0x25,
    SEM_TRYWAIT = 0x26,
    TIME_SLEEP = 0x31,
    GETC = 0x41,
    PUTC = 0x42
};

void *mem_alloc(size_t size);

int mem_free(void *mem);

int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg);

int thread_exit();

void thread_dispatch();

int sem_open(sem_t *handle, unsigned init);

int sem_close(sem_t id);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

int time_sleep(time_t ms);

int sem_timedwait(sem_t id, time_t timeout);

int sem_trywait(sem_t id);

char getc();

void putc(char c);

#endif //PROJECT_BASE_SYSCALL_C_H

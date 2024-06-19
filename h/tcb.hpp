//
// Created by os on 5/15/24.
//

#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP
#include "../lib/hw.h"
#include "../h/scheduler.hpp"
#include "../h/tipovi.hpp"
#include "../h/sem.hpp"
#include "../h/Allocator.hpp"
// dio preuzet sa Teamsa
class TCB
{
public:
    static int putcP;

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }

    static void putToSleep(time_t t);

    using Body = void (*)(void*);

    Body getBody() {return body;};

    static int thread_create(TCB** handle, Body body,void *arg, uint64* stack);

    static void yield();

    static TCB *running;

    static List<TCB> sleeping;

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

    ~TCB() { delete[] stack;}

    static void dispatch();

private:
    TCB(Body body,uint64* stack,void* arg,uint64 timeSlice) :
            body(body),
            stack(body != nullptr ? stack : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false),
            arg(arg),
            timeToSleep(0),
            isSleeping(false),
            blocked(false),
            timeToWaitSem(0),
            blockedOnWhichSem(nullptr),
            regularlyFinishedWait(false),
            mallocRetVal(nullptr)
    {
        if (body != nullptr) {
            Scheduler::put(this);
        }
    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    bool finished;
    void* arg;
    time_t timeToSleep;
    bool isSleeping;

    //semafori
    bool blocked;
    time_t timeToWaitSem;
    kSemaphore* blockedOnWhichSem;
    bool regularlyFinishedWait;

    //semafori
    friend class Riscv;
    friend class kSemaphore;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

private:

    static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
public:
    void *mallocRetVal;
    int retVal = 0;
    char getcRetVal;
};

#endif //PROJECT_BASE_TCB_HPP

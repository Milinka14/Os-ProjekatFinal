//
// Created by os on 5/24/24.
//

#include "../h/syscall_cpp.hpp"

void *operator new(size_t size) {
    return mem_alloc(size);
}

void *operator new[](size_t size) {
    return mem_alloc(size);
}

void operator delete(void *mem) {
    mem_free(mem);
}

void operator delete[](void *mem) {
    mem_free(mem);
}

Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
    myHandle = nullptr;
}

Thread::Thread() {
    this->body = nullptr;
    this->arg = nullptr;
    myHandle = nullptr;
}

Thread::~Thread() {
    if (myHandle->isFinished())
        delete myHandle;
}

int Thread::start() {
    int retval;
    if (!myHandle) {
        if (body) retval = thread_create(&myHandle,body,this->arg);
        else retval = thread_create(&myHandle,fwrapper,this);
        return retval;
    }
    return -1;
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t ms) {
    return time_sleep(ms);
}

void Thread::fwrapper(void *tcb)
{
    ((Thread*)tcb)->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}

int Semaphore::timedWait(time_t t) {
    return sem_timedwait(myHandle,t);
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

PeriodicThread::PeriodicThread(time_t period) {
    this->period = period;
}

void PeriodicThread::terminate(){
    terminated = true;
}

void PeriodicThread::run() {
    while (!terminated) {
        periodicActivation();
        time_sleep(period);
    }
}

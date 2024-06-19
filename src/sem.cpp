//
// Created by os on 5/19/24.
//

#include "../h/sem.hpp"

List<TCB> kSemaphore::blockedTimedWait;

int kSemaphore::wait() {
    if (destroyed) {return -1;};
    if (--val < 0) block();
    if (destroyed) {// && (kSemaphore::blocked).head != nullptr
        return -1;
    }
    return 0;
}

int kSemaphore::signal() {
    if (destroyed) {return -1;}
    if (++val <= 0) unblock();
    return 0;
}

void kSemaphore::block() {    // YILED DISPATCH
    blocked.addLast(TCB::running);
    TCB::running->blocked = true;
    TCB::running->timeSliceCounter = 0;
    TCB::running->blockedOnWhichSem = this;
    //thread_dispatch();
    TCB::dispatch();
}

void kSemaphore::unblock() {
    TCB* novi = blocked.peekFirst();
    novi->blocked = false;
    novi->blockedOnWhichSem = nullptr;
    TCB::running->timeSliceCounter = 0;
    novi->regularlyFinishedWait = true;
    blocked.removeFirst();
    blockedTimedWait.deleteNodes(novi);
    Scheduler::put(novi); // dal treba da poziva dispatch il sta?
}

int kSemaphore::openSem(sem_t *handle, unsigned int init) {
    if (handle == nullptr) return -1;
    *handle = new kSemaphore(init);
    if (*handle == nullptr) {
        return -1;
    }
    return 0;
}

int kSemaphore::closeSem() {
    if (destroyed) return -1;
    destroyed = true;
    List<TCB>::Elem *elem = (kSemaphore::blocked).head;
    List<TCB>::Elem *prev=nullptr;
    while (elem) {
        elem->data->blocked = false;
        elem->data->timeSliceCounter = 0;
        blockedTimedWait.deleteNodes(elem->data);
        elem->data->blockedOnWhichSem = nullptr;
        elem->data->regularlyFinishedWait = false;
        Scheduler::put(elem->data);
        prev = elem;
        elem = elem->next;
        delete prev; // bz delete !!!!!!!
    }
    return 0;
}

//BLOCK BEZ BLOKIRANJA
int kSemaphore::tryWait() {
    if (destroyed) return -1;
    if (val > 0) {
        --val;
    }
    if (val <= 0) return 0;
    if (val > 0) return 1;
    return 0;
}

int kSemaphore::timedWait(time_t time) {
    if (destroyed) {return -1;};
    if (val <= 0) {
        blockedTimedWait.addLast(TCB::running);
        TCB::running->timeToWaitSem = time;
        block();
        if (destroyed) {
            return -1;
        }
        if (!(TCB::running->regularlyFinishedWait)) {
            return -2;
        }
        return 0;
    }
    val--;
    return 0;
}

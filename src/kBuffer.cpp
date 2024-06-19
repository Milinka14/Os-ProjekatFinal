//
// Created by os on 5/22/24.
//
// iskoriscen buffer iz test primjera

#include "../h/kBuffer.hpp"

kBuffer::kBuffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    buffer = (char *) Allocator::_malloc(sizeof(int) * cap);
    itemAvailable = new kSemaphore(0);
    spaceAvailable = new kSemaphore(_cap);
    mutexHead = new kSemaphore(1);
    mutexTail = new kSemaphore(1);
}

kBuffer::~kBuffer() {
    Allocator::_mem_free(buffer);
    itemAvailable->closeSem();
    spaceAvailable->closeSem();
    mutexTail->closeSem();
    mutexHead->closeSem();
}

void kBuffer::put(char val) {
    spaceAvailable->wait();

    mutexTail->wait();

    buffer[tail] = val;
    tail = (tail + 1) % cap;

    mutexTail->signal();

    itemAvailable->signal();
}

char kBuffer::get() {
    itemAvailable->wait();

    mutexHead->wait();

    char ret = buffer[head];
    head = (head + 1) % cap;

    mutexHead->signal();

    spaceAvailable->signal();
    return ret;
}

int kBuffer::getCnt() {
    int ret;

    mutexHead->wait();

    mutexTail->wait();

    if (tail >= head) {
        ret = tail - head;
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();

    mutexHead->signal();

    return ret;
}
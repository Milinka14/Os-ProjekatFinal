#include "../h/syscall_c.h"
#include "../h/Allocator.hpp"
/*
void *operator new(uint64 n) {
    //return Allocator::_malloc(n);
    return mem_alloc(n);
}

void *operator new[](uint64 n) {
    //return Allocator::_malloc(n);
    return mem_alloc(n);
}

void operator delete(void *p) noexcept{
    mem_free(p);
    //Allocator::_mem_free(p);
}

void operator delete[](void *p) noexcept{
    mem_free(p);
    //Allocator::_mem_free(p);
}*/
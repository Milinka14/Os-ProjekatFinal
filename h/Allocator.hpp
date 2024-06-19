//
// Created by os on 5/16/24.
//

#ifndef PROJECT_BASE_ALLOCATOR_HPP
#define PROJECT_BASE_ALLOCATOR_HPP

#include "../lib/hw.h"

class Allocator {
private:
    struct BlockHeader{
        BlockHeader* next;
        size_t size;
    };
    int brBlokova;
public:
    static BlockHeader* head;
    static void init();
    static void* _malloc(size_t size);
    static int _mem_free(void* p);
    static void join(BlockHeader *block);
};

#endif //PROJECT_BASE_ALLOCATOR_HPP

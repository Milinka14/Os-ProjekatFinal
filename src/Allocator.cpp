#include "../h/Allocator.hpp"

Allocator::BlockHeader *Allocator::head = nullptr;

void Allocator::init()
{
    Allocator::head = (BlockHeader*) ((uint64) HEAP_START_ADDR + MEM_BLOCK_SIZE - (uint64) HEAP_START_ADDR % MEM_BLOCK_SIZE);
    Allocator::head->size = (uint64)HEAP_END_ADDR - ((uint64) HEAP_START_ADDR + MEM_BLOCK_SIZE - (uint64) HEAP_START_ADDR % MEM_BLOCK_SIZE) - sizeof(BlockHeader);
    Allocator::head->next = nullptr;
}

void *Allocator::_malloc(size_t size)
{
    if (size > 0) {
        size = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    } else {
        return nullptr;
    }

    BlockHeader *block = head;
    BlockHeader *prev = nullptr;

    while (block != nullptr) {
        if (block->size >= size) {
            break;
        }
        prev = block;
        block = block->next;
    }

    if (block == nullptr) {
        return nullptr;
    }

    BlockHeader *newBlockPos = reinterpret_cast<BlockHeader *>(reinterpret_cast<char *>(block) + size + sizeof(BlockHeader));

    if (block->size > size + sizeof(BlockHeader)) {

        newBlockPos->size = block->size - size - sizeof(BlockHeader);
        newBlockPos->next = block->next;

        if (prev != nullptr) {
            prev->next = newBlockPos;
        } else {
            head = newBlockPos;
        }

        block->size = size;
        block->next = nullptr;
    } else {
        if (prev != nullptr) {
            prev->next = block->next;
        } else {
            head = block->next;
        }
    }

    block->next = nullptr;

    return (void*) ((char*)block + sizeof(BlockHeader));

}

int Allocator::_mem_free(void *pointer) //U FREE JE PROBLEM ALOOOOOOOOOOOOOOOOOOOOOOOOOO!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
{
    if (!pointer) return -1;
    // ispitaivanje uslova da li je adresa korektna !!!!!!!!!!!!!!!!!!!!!!!!
    BlockHeader *blck = nullptr;
    BlockHeader *novi = (BlockHeader*)((char*)pointer - sizeof(BlockHeader));

    if (pointer < head) {
        blck = nullptr;
    }
    else {
        blck = head;
        while (blck->next) {
            if ((blck->next) > novi) {
                break;
            }
            blck = blck->next;
        }
    }

    if (blck) {
        novi->next = blck->next;
        blck->next = novi;
    } else {
        novi->next = head;
        head = novi;
    }

    join(novi);
    join(blck);
    return 0;
}


void Allocator::join(BlockHeader *block)
{
    if (!block) return;
    if (block->next) {
        if ((char *) block + block->size + sizeof(BlockHeader) == (char *) (block->next)) {
            block->size += block->next->size + sizeof(BlockHeader);
            block->next = block->next->next;
            return;
        }
    }
    return;
}

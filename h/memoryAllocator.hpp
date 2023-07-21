#ifndef memoryAllocator
#define memoryAllocator

#include "../lib/hw.h"


class MemoryAllocator {
private:
    struct DataBlock {
        DataBlock* next;
        DataBlock* prev;
        size_t size;
    };

    static DataBlock* free;
    static DataBlock* used;
    static DataBlock* startAddr;
    static DataBlock* endAddr;

    static size_t blockSize;

public:
    void* mem_alloc(size_t size);

    int mem_free (void*);

    void initFreeBlock() {

        free->next = nullptr;
        free->prev  = nullptr;
        free->size = ((char*)HEAP_START_ADDR - (char*)HEAP_END_ADDR); //FOR NOW

        MemoryAllocator::blockSize = MEM_BLOCK_SIZE;
        MemoryAllocator::startAddr =  (DataBlock*)((char*)HEAP_START_ADDR);
        MemoryAllocator::endAddr = (DataBlock*)((char*)HEAP_END_ADDR - 1);
        MemoryAllocator::free = startAddr;
        MemoryAllocator::used = nullptr;
        used = nullptr;
    }
};


#endif //memoryAllocator

#ifndef memoryAllocator
#define memoryAllocator

#include "../lib/hw.h"

struct DataBlock {
    DataBlock* next;
    DataBlock* prev;
    size_t size;
};

class MemoryAllocator {
public:
    static DataBlock* free;
    static DataBlock* used;

    void* mem_alloc(size_t size);

    int mem_free (void* ptr);

    static void tryToJoin(DataBlock* curr);

    static void initFreeBlock() {

        free->next = nullptr;
        free->prev  = nullptr;
        free->size = ((char*)HEAP_START_ADDR - (char*)HEAP_END_ADDR - 1); //FOR NOW

        MemoryAllocator::free = (DataBlock*)((char*)HEAP_START_ADDR);
        MemoryAllocator::used = nullptr;
        used = nullptr;
    }
};


#endif //memoryAllocator

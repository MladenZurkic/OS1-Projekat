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

    static void* mem_alloc(size_t size);

    static int mem_free (void* ptr);

    static void tryToJoin(DataBlock* curr);

    static void initFreeBlock() {

        MemoryAllocator::free = (DataBlock*)((char*)HEAP_START_ADDR);
        used = nullptr;

        free->next = nullptr;
        free->prev  = nullptr;
        free->size = ((char*)HEAP_START_ADDR - (char*)HEAP_END_ADDR - sizeof(DataBlock)); //FOR NOW


    }
};


#endif //memoryAllocator

#ifndef memoryAllocator
#define memoryAllocator

#include "../lib/hw.h"


class MemoryAllocator {
private:
    struct MemBlock {
        MemBlock* next;
        MemBlock* prev;
        size_t size;
    };

    static MemBlock* free;
    static MemBlock* used;

public:
    void* mem_alloc(size_t size);
    int mem_free (void*);

};


#endif //memoryAllocator

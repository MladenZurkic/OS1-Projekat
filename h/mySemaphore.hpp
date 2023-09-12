#ifndef mySemaphore
#define mySemaphore

#include "list.hpp"
#include "tcb.hpp"
#include "memoryAllocator.hpp"

class MySemaphore {
public:
    //check this -> explicit
    explicit MySemaphore(unsigned init = 1) {
        this->value = init;
        this->closed = false;
    }

    int wait();
    int signal();
    static MySemaphore* createSemaphore(unsigned init = 1);
    unsigned getValue() const { return value; }
    int close();

    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    }
    void* operator new[](size_t size) {
        return MemoryAllocator::mem_alloc(size);
    }
    
    void operator delete(void *ptr) {
        MemoryAllocator::mem_free(ptr);
    }
    void operator delete[](void *ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    bool closed;
    unsigned value;
    List<TCB> blocked;
};

#endif //mySemaphore
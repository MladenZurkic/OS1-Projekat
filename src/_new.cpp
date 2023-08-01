//
// Created by marko on 20.4.22..
//

#include "../lib/mem.h"
#include "../h/syscall_cpp.hpp"
#include "../h/memoryAllocator.hpp"

using size_t = decltype(sizeof(0));

//THEIR MEMORY


/*
void *operator new(size_t n)
{
    return __mem_alloc(n);
}

void *operator new[](size_t n)
{
    return __mem_alloc(n);
}

void operator delete(void *p) noexcept
{
    __mem_free(p);
}

void operator delete[](void *p) noexcept
{
    __mem_free(p);
}
*/



//****************************MY MEMORY********************************

/*
void *operator new(size_t n)
{
    MemoryAllocator::newCalled++;
    return MemoryAllocator::mem_alloc(n);
}

void *operator new[](size_t n)
{
    MemoryAllocator::newArrayCalled++;
    return MemoryAllocator::mem_alloc(n);
}

void operator delete(void *p) noexcept
{
    MemoryAllocator::deleteCalled++;
    MemoryAllocator::mem_free(p);
}

void operator delete[](void *p) noexcept
{
    MemoryAllocator::deleteArrayCalled++;
    MemoryAllocator::mem_free(p);
}

*/


//******************SYSCALL MEMORY*********************************


void *operator new(size_t n)
{
    return mem_alloc(n);
}

void *operator new[](size_t n)
{
    return mem_alloc(n);
}

void operator delete(void *p) noexcept
{
    mem_free(p);
}

void operator delete[](void *p) noexcept
{
    mem_free(p);
}

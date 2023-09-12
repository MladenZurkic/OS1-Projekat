#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"


DataBlock* MemoryAllocator::free = nullptr;
DataBlock* MemoryAllocator::used = nullptr;
int MemoryAllocator::newCalled = 0;
int MemoryAllocator::newArrayCalled = 0;
int MemoryAllocator::deleteCalled = 0;
int MemoryAllocator::deleteArrayCalled = 0;


void *MemoryAllocator::mem_alloc(size_t size) {
    size_t newSize;
    if(size%MEM_BLOCK_SIZE != 0) {
        newSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    }
    else {
        newSize = size;
    }

    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
        if(curr->size<newSize) continue;
        if(curr->size > newSize) {
            //new fragment needs to be created
            //novi ce biti offsetovan od curr za novi size i plus za sizeof(DataBlock) zato sto se posle curr
            // nalazi taj "header"
            DataBlock *newBlock;
            newBlock = (DataBlock*) ((char*)curr + newSize + sizeof(DataBlock));

            //Azuriranje free liste
            if(curr->prev) curr->prev->next = newBlock;
            else MemoryAllocator::free = newBlock;
            if(curr->next) curr->next->prev = newBlock;
            newBlock->prev = curr->prev;
            newBlock->next = curr->next;

            newBlock->size = curr->size - newSize - sizeof(DataBlock);
            curr->size = newSize;

            //azuriranje USED liste
            if(used == nullptr) {
                used = curr;
                curr->next = nullptr;
                curr->prev = nullptr;
            }
            else if((char*) curr < (char*)used) {
                //treba da ide pre trenutnog used
                used->prev = curr;
                curr->prev = nullptr;
                curr->next = used;
                used = curr;
            }
            else {
                //Find place in list
                DataBlock* currUsed = used;
                for(; currUsed->next && (char*)(currUsed->next) < (char*) curr; currUsed = currUsed->next);

                curr->next = currUsed->next;
                curr->prev = currUsed;
                if(curr->next) curr->next->prev = curr;
                currUsed->next = curr;
            }
        }
        else {
            //They are the exact same size
            //Update FREE list
            if (curr->prev) curr->prev->next = curr->next;
            else MemoryAllocator::free = curr->next;

            if(curr->next) curr->next->prev = curr->prev;

            //azuriranje USED liste
            if(used == nullptr) {
                used = curr;
                curr->next = nullptr;
                curr->prev = nullptr;
            }
            else if((char*) curr < (char*)used) {
                //treba da ide pre trenutnog used
                used->prev = curr;
                curr->prev = nullptr;
                curr->next = used;
                used = curr;
            }
            else {
                //Find place in list
                DataBlock* currUsed = used;
                for(; currUsed->next && (char*)(currUsed->next) < (char*) curr; currUsed = currUsed->next);

                curr->next = currUsed->next;
                curr->prev = currUsed;
                if(curr->next) curr->next->prev = curr;
                currUsed->next = curr;
            }
        }
        return (char*)curr + sizeof(DataBlock);
    }
    return nullptr; //should not enter here
}

int MemoryAllocator::mem_free(void* ptr) {
    if(used == nullptr) return -1;
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2;

    DataBlock* curr = (DataBlock*)((char*)ptr - sizeof(DataBlock));
    if(curr < used) return -3;

    //Delete from USED list
    if(used == curr) {
        used = curr->next;
        if(used) used->prev = nullptr;
        curr->next = nullptr;
        curr->prev = nullptr;
    } else {
        curr->prev->next = curr->next;
        if(curr->next) curr->next->prev = curr->prev;
        curr->next = nullptr;
        curr->prev = nullptr;
    }

    //Insert into FREE list
    if (free == nullptr) {
        //Insert as first
        free = curr;
        curr->next = nullptr;
        curr->prev = nullptr;
    }
    else if((char*)curr < (char*)free) {
        free->prev = curr;
        curr->prev = nullptr;
        curr->next = free;
        free = curr;
        tryToJoin(free);
    }
    else {
        //Find place in list
        DataBlock* currFree = free;
        for(currFree = free; currFree->next && (char*)(currFree->next) < (char*) curr; currFree = currFree->next);

        curr->next = currFree->next;
        curr->prev = currFree;
        if(curr->next) curr->next->prev = curr;
        currFree->next = curr;
        tryToJoin(curr);
        tryToJoin(currFree);
    }
    return 0;
}

void MemoryAllocator::tryToJoin(DataBlock *curr) {
    if(curr->next && (char*)curr + sizeof(DataBlock) + curr->size == (char*)curr->next) {
        curr->size += curr->next->size + sizeof(DataBlock);
        curr->next = curr->next->next;
        if(curr->next) curr->next->prev = curr;
    }
}

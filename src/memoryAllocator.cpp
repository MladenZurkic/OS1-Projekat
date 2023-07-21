#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"


void *MemoryAllocator::mem_alloc(size_t size) {
    size_t newSize;
    if(size%MEM_BLOCK_SIZE != 0) {
        newSize = size/blockSize + (blockSize - size);
    }
    else {
        newSize = size;
    }

    for(DataBlock* curr = MemoryAllocator::free; curr != nullptr; curr=curr->next) {
        if(curr->size<size) continue;
        if(curr->size > newSize) {
            //new fragment needs to be created
            //novi ce biti offsetovan od curr za novi size i plus za sizeof(DataBlock) zato sto se posle curr nalazi taj "header"
            DataBlock *newBlock;
            newBlock = (DataBlock*) ((char*)curr + newSize + sizeof(DataBlock));

            //Azuriranje free liste
            if(curr->prev) curr->prev->next = newBlock;
            else MemoryAllocator::free = newBlock;
            if(curr->next) curr->next->prev = newBlock;
            newBlock->prev = curr->prev;
            newBlock->next = curr->next;
            //size novi je sada prethodni size - novi size i jos - sizeof(DataBlock) jer se to ne brise kada se zauzme
            //pa mora i to da se cuva
            newBlock->size = curr->size - newSize - sizeof(DataBlock);

            //azuriranje used liste
            DataBlock* currUsed = used;

            //PROVERITI
            for(;currUsed->next && (char*)currUsed->next+currUsed->size + sizeof(DataBlock) < (char*) newBlock;
            currUsed = currUsed->next);

            if(currUsed == used && ((char*)currUsed->next+currUsed->size + sizeof(DataBlock) < (char*) newBlock)) {
                //Insert before used
                newBlock->next = used;
                newBlock->prev = nullptr;
                used->prev = newBlock;
                used = newBlock;
            }
            else {
                //Insert into list
                newBlock->next = currUsed->next;
                newBlock->prev = currUsed;
                if(currUsed->next) {
                    currUsed->next->prev = newBlock;
                }
                currUsed->next = newBlock;
            }

            return (char*)curr + sizeof(DataBlock);
        }
        else {
            //They are the exact same size
            //FIX and finish
            if (curr->prev) curr->prev->next = curr->next;
            else MemoryAllocator::free = curr->next;
            return (void *) curr;
        }
    }
}

int MemoryAllocator::mem_free(void *) {
    return 0;
}

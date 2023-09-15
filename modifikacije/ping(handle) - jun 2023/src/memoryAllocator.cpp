
void *MemoryAllocator::mem_alloc(size_t size) {

    //...
    if(TCB::running) {
        TCB::running->incrementMemory(newSize / MEM_BLOCK_SIZE);
    }
   //...
}
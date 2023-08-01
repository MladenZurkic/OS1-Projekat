//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "memoryAllocator.hpp"

// Thread Control Block
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return this->blocked; }

    void setBlocked(bool value) { this->blocked = value; }

    bool isMain() const { return this->main; }

    //uint64 getTimeSlice() const { return timeSlice; }

    //static uint64 getTimeSliceTest() { return timeSliceCounterTest; }

    using Body = void (*)(void*);

    static TCB *createThread(Body body, void* arg);

    static TCB *createThreadWithoutStarting(Body body, void* arg);

    static void startThread(TCB* tcbToStart) {
        Scheduler::put(tcbToStart);
    }

    static void yield();

    static TCB *running;

    void* operator new(size_t size) {
        size_t newSize;
        if(size%MEM_BLOCK_SIZE != 0) {
            newSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
        }
        else {
            newSize = size;
        }

        return MemoryAllocator::mem_alloc(newSize);
    }
    void* operator new[](size_t size) {
        size_t newSize;
        if(size%MEM_BLOCK_SIZE != 0) {
            newSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
        }
        else {
            newSize = size;
        }

        return MemoryAllocator::mem_alloc(newSize);
    }
    void operator delete(void *ptr) {
        MemoryAllocator::mem_free(ptr);
    }
    void operator delete[](void *ptr) {
        MemoryAllocator::mem_free(ptr);
    }


private:
    TCB(Body body, void* arg) :
            body(body),
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            main(body == nullptr),
            arg(arg)

    {
        //if (body != nullptr) { Scheduler::put(this); }
    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    bool finished;
    bool blocked;
    bool main;
    void* arg;


    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    static void join(TCB* handle);
    //static uint64 timeSliceCounter;
    //static uint64 timeSliceCounterTest;

    static uint64 constexpr STACK_SIZE = 1024;
    //static uint64 constexpr TIME_SLICE = 2;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

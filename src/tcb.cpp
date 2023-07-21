//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

TCB *TCB::running = nullptr;

//uint64 TCB::timeSliceCounter = 0;
//uint64 TCB::timeSliceCounterTest = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    return new TCB(body, arg);
}

void TCB::yield()
{
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();

    /*while(running->isBlocked()) {
        Scheduler::put(running);
        running = Scheduler::get();
    }*/

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    thread_dispatch();
}

void TCB::join(TCB* handle) {
    while(!handle->isFinished()) {
        TCB::dispatch();
    }
}
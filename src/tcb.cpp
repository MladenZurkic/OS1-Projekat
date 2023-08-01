//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../test/printing.hpp"
#include "../h/syscall_c.hpp"

TCB *TCB::running = nullptr;

//uint64 TCB::timeSliceCounter = 0;
//uint64 TCB::timeSliceCounterTest = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    TCB* newTCB = new TCB(body, arg);
    Scheduler::put(newTCB);
    return newTCB;
}

TCB *TCB::createThreadWithoutStarting(Body body, void* arg)
{
    TCB* newTCB = new TCB(body, arg);
    //Scheduler::put(newTCB);
    return newTCB;
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

    //Ovde treba promena privilegije?

    if(running->isMain()) {
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    }
    else {
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    }

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    //Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    //Ovde smo uvek u niti koja nije main zar ne?

    running->body(running->arg);
    running->setFinished(true);
    thread_dispatch();
}

void TCB::join(TCB* handle) {
    while(!handle->isFinished()) {
        TCB::dispatch();
    }
}


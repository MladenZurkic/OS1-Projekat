//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

int main()
{
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr,nullptr);
    TCB::running = threads[0];

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_create(&threads[1], workerBodyA, nullptr);
    printString("ThreadA created\n");
    thread_create(&threads[2], workerBodyB, threads[1]);
    printString("ThreadB created\n");



    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        thread_dispatch();
    }

    for (auto &thread: threads)
    {
        delete thread;
    }
    printString("Finished\n");

    return 0;
}

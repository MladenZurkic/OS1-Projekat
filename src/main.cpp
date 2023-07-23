//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/memoryAllocator.hpp"

int main()
{
    TCB *threads[5];

    MemoryAllocator::initFreeBlock();

    threads[0] = TCB::createThread(nullptr,nullptr);
    TCB::running = threads[0];

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    int return1 = thread_create(&threads[1], workerBodyA, nullptr);
    printString("ThreadA created\n");
    printInteger(return1);
    int return2 = thread_create(&threads[2], workerBodyB, threads[1]);
    printString("ThreadB created\n");
    printInteger(return2);

    MySemaphore* semaphore[2];
    sem_open(&semaphore[0], 0);

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        thread_dispatch();
    }


    printString("main: Pravimo C...");
    thread_create(&threads[3], workerBodyC, semaphore[0]);
    printString("main: Pravimo D....");
    thread_create(&threads[3], workerBodyD, semaphore[0]);
    //thread_dispatch();
    int returnValue = sem_wait(semaphore[0]);

    printString("Finished\nReturn value: ");
    printInteger(returnValue);
    printString("\n");

    thread_dispatch();
    for (auto &thread: threads) {
        delete thread;
    }


    //Testing
    printString("New called: ");
    printInteger(MemoryAllocator::newCalled);
    printString("\n");

    printString("New[] called: ");
    printInteger(MemoryAllocator::newArrayCalled);
    printString("\n");


    printString("Delete called: ");
    printInteger(MemoryAllocator::deleteCalled);
    printString("\n");

    printString("Delete[] called: ");
    printInteger(MemoryAllocator::deleteArrayCalled);
    printString("\n");

    return 0;
}

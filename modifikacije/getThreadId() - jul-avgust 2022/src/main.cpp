#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/syscall_cpp.hpp"

extern void userMain();

class WorkerAMod: public Thread {
public:
    WorkerAMod():Thread() {}
    //static bool timeForAToPrint;
    
    void run() override {
        functionAMod(nullptr);
    }

    void functionAMod(void* ptr) {
        for(uint64 i = 0; i < 10; i++) {
            //for(uint64 k = 0; k < 3000000; k++) {
            //    //busy wait!
            //}
            while(!TCB::readyToPrintA) {

            }
            TCB::readyToPrintA = false;
            int idA = getThreadId();
            printString("A: MyID: ");
            printInt(idA);
            printString("\n");

            thread_dispatch();
        }
    }
};

class WorkerBMod: public Thread {
public:
    WorkerBMod(): Thread() {}

    void run() override {
        functionBMod(nullptr);
    }

    void functionBMod(void* ptr) {
        for(uint64 i = 0; i< 10; i++) {
            while(!TCB::readyToPrintB) {

            }
            TCB::readyToPrintB = false;
            int idB = getThreadId();
            printString("B: MyID: ");
            printInt(idB);
            printString("\n");

            thread_dispatch();
        }
    }
};

class WorkerCMod: public Thread {
public:
    WorkerCMod():Thread() {}

    void run() override {
        functionCMod(nullptr);
    }

    void functionCMod(void* ptr) {
        for(uint64 i = 0; i < 10; i++) {
            while(!TCB::readyToPrintC) {

            }
            TCB::readyToPrintC = false;
            int idC = getThreadId();
            printString("C: MyID: ");
            printInt(idC);
            printString("\n");

            thread_dispatch();
        }
    }
};

int main()
{

    Thread *threads[5];

    MemoryAllocator::initFreeBlock();

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    auto* mainThread = new Thread(nullptr, nullptr);
    printString("main created! - modifikacija getThreadId()\n");
    Thread::setRunning(mainThread);

    threads[0] = new WorkerAMod();
    printString("ThreadA created!\n");

    threads[1] = new WorkerBMod();
    printString("ThreadB created!\n");

    threads[2] = new WorkerCMod();
    printString("ThreadC created!\n");

    threads[0]->start();
    threads[1]->start();
    threads[2]->start();

    threads[0]->join();
    threads[1]->join();
    threads[2]->join();

    printString("\nMain Finished getThreadId() MOD!\n");
    return 0;
}

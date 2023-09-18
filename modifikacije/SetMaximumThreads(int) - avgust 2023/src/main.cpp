#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/syscall_cpp.hpp"

extern void userMain();

class A:public Thread {
public:
    A():Thread() {}

    void run() override {
        workA();
    }

    void workA() const {
        int id = getThreadId();
        printString("Thread id= ");
        printInt(id);
        printString(": START!\n");

        for(int i = 0; i < 5; i++) {
            int id = getThreadId();
            printString("Thread id= ");
            printInt(id);
            printString(": Hello!\n");
            for(int j = 0; j < 10000000*id; j++) {

            }
        }
        printString("Thread id= ");
        printInt(id);
        printString(": Finished!\n");
    }
};

int main()
{

    Thread *threads[20];

    MemoryAllocator::initFreeBlock();

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    Thread::SetMaximumThreads(3);

    auto* mainThread = new Thread(nullptr, nullptr);
    printString("main created! - modifikacija maxThreads\n");
    Thread::setRunning(mainThread);

    for(int i = 0; i < 20; i++) {
        threads[i] = new A();
    }

    for(auto & thread : threads) {
        thread->start();
    }

    for(auto & thread : threads) {
        thread->join();
    }

    printString("\nMain Finished maxThreads!\n");
    return 0;
}
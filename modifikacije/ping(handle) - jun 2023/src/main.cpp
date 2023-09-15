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

    void workA() {
        int* test = new int[600]; //38blocks with 64 blocksize
        test[0] = 1;
        for(int i = 0; i < 10; i++) {
            for(uint64 j = 0; j < 300000000; j++) {

            }
            printString("A: ");
            printInt(i);
            printString("\n");
            thread_dispatch();
        }
    }
};

class B:public Thread {
public:
    B():Thread() {}

    void run() override {
        workB();
    }

    void workB() {
        for(int i = 0; i < 10; i++) {
            for(uint64 j = 0; j < 300000000; j++) {

            }
            printString("B: ");
            printInt(i);
            printString("\n");
            thread_dispatch();
        }
    }
};

class C:public Thread {
public:

    Thread* toPing;
    C(void* t):Thread() {toPing = (Thread*)t;}

    void run() override {
        workC();
    }

    void workC() {

        for(int i = 0; i < 10; i++) {
            for(uint64 j = 0; j < 300000000; j++) {

            }
            printString("C: ");
            printInt(i);
            printString("\n");
            if(i == 5) {
                printString("C: Pinging A..\n");
                toPing->pingThread(); //Moze biti i sistemski poziv, napravljeno je da se poziva iz Thread clase
            }
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
    printString("main created! - modifikacija ping()\n");
    Thread::setRunning(mainThread);

    threads[0] = new A();
    printString("A created!\n");
    threads[1] = new B();
    printString("B created!\n");
    threads[2] = new C(threads[0]);
    printString("C created!\n");

    threads[0]->start();
    threads[1]->start();
    threads[2]->start();

    threads[0]->join();
    threads[1]->join();
    threads[2]->join();

    printString("\nMain Finished ping()!\n");
    return 0;
}

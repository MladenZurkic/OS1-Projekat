#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/resource.hpp"

extern void userMain();


class A: public Thread{
public:
    Resource* resource;
    A(Resource* r):Thread() {this->resource = r;}

    void run() override {
        workA(resource);
    }

    void workA(Resource* r) {
        r->take(10);
        printString("A: uzeo sam 10\n");
        r->take(10);
        printString("A: uzeo sam 10\n");
        thread_dispatch();
        r->give_back(20);
        printString("A: Vratio sam 20\n");
        printString("A: Finished!\n");
    }
};

class B: public Thread{
public:
    Resource* resource;
    B(Resource* r):Thread() {this->resource = r;}

    void run() override {
        workB(resource);
    }

    void workB(Resource* r) {
        r->take(20);
        printString("B: uzeo sam 20\n");
        thread_dispatch();
        r->take(20);
        printString("B: uzeo sam 20\n");
        thread_dispatch();
        r->give_back(40);
        printString("B: Vratio sam 40\n");
        printString("B: Finished!\n");
    }
};

class C: public Thread{
public:
    Resource* resource;
    C(Resource* r):Thread() {this->resource = r;}

    void run() override {
        workC(resource);
    }

    void workC(Resource* r) {
        r->take(30);
        printString("C: uzeo sam 30\n");
        //thread_dispatch();
        r->give_back(30);
        printString("C: Vratio sam 30\n");
        printString("C: Finished!\n");
    }
};

int main()
{
    Thread *threads[5];

    MemoryAllocator::initFreeBlock();

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    auto* mainThread = new Thread(nullptr, nullptr);
    printString("Main created! - Resources mod\n");
    Thread::setRunning(mainThread);

    auto* resource = new Resource(50);
    threads[1] = new A(resource);
    threads[2] = new B(resource);
    threads[3] = new C(resource);

    threads[1]->start();
    threads[2]->start();
    threads[3]->start();

    threads[1]->join();
    threads[2]->join();
    threads[3]->join();

    printString("Main finished - Resources mod\n");

    return 0;
}

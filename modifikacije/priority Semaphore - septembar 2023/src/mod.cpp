#include "../h/tcb.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_cpp.hpp"

static Semaphore *prioritySem;

class A:public Thread {
public:
    explicit A(Semaphore* sem):Thread() {
        this->sharedSem = sem;
        printString("Napravljena nit sa id= ");
        printInt(myHandle->getMyID());
        printString("\n");
    }

    Semaphore* sharedSem;
    void run() override {
        workA();
    }

    void workA() const {

        int id;
        for(int i = 0; i < 3; i++) {

            printString("ID: ");
            printInt(getMyID());
            printString(": Approaching...\n");
            sharedSem->wait();
            printString("ENTERED shared tread id= ");
            printInt(id = getMyID());
            printString("\n");
            for(int j = 0; j <= id*4000000; j++) {
                //busy wait
            }
            printString("DISPATCH shared thread id= ");
            printInt(getMyID());
            printString("\n");

            thread_dispatch();

            printString("GOT BACK AND EXITING shared thread id= ");
            printInt(getMyID());
            printString("\n");

            sharedSem->signal();
            thread_dispatch();
        }
        printInt(getMyID());
        printString(" : Finished!\n");
    }
};

void modFunc() {
    Thread* threads[50];

    prioritySem = new Semaphore(5);
    prioritySem->togglePriority();

    auto* mainThread = new Thread(nullptr, nullptr);
    printString("main created! - modifikacija priority Semaphore\n");
    Thread::setRunning(mainThread);

    for(int i = 0; i < 50; i++) {
        threads[i] = new A(prioritySem);
    }

    for(auto & thread : threads) {
        thread->start();
    }

    for(auto & thread : threads) {
        thread->join();
    }

    printString("\nMain Finished priority Semaphore!\n");
}
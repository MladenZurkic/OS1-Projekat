extern void userMain();
extern void modFunc();

/*
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
};*/


int main()
{
/*
    Thread* threads[50];
    MemoryAllocator::initFreeBlock();

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

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
    return 0;

    */
    MemoryAllocator::initFreeBlock();

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    modFunc();

    return 0;
}

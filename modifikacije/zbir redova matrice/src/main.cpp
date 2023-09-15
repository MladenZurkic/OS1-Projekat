#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/syscall_cpp.hpp"

extern void userMain();


struct MatrixStruct {
    int** matrix;
    //int sum;
    int id;
};

class A: public Thread {
    MatrixStruct* matrixStruct;

    int id;
public:
    A(MatrixStruct* m, int id):Thread() {
        this->matrixStruct = m;
        this->id = id;
    }

    void run() override {
        workA();
    }

    void workA() {
        int sum = 0;
        for(int i = 0; i < 10; i++) {
            sum+=matrixStruct->matrix[id][i];
        }
        matrixStruct->matrix[id][0] = sum;
        //matrixStruct->sum += sum;
        printString("Worker ");
        printInt(id);
        printString(" zavrsio!\n");
    }
};

int main()
{
    Thread *threads[10];

    MemoryAllocator::initFreeBlock();

    Riscv::w_stvec((uint64) &Riscv::stvecVectorTable | 0b01);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    auto* mainThread = new Thread(nullptr, nullptr);
    printString("main created! - zbir redova matrice\n");
    Thread::setRunning(mainThread);

    auto* matrixStruct = new MatrixStruct;
    //matrixStruct->sum = 0;
    matrixStruct->matrix = new int*[10];
    for(int i = 0; i < 10; i++) {
        matrixStruct->matrix[i] = new int[10];
        for(int j = 0; j < 10; j++) {
            matrixStruct->matrix[i][j] = i+j;
        }
    }

    for(int i = 0; i < 10; i++) {
        threads[i] = new A(matrixStruct, i);
    }

    for(auto &thread : threads) {
        thread->start();
    }

    for(auto &thread : threads) {
        thread->join();
    }

    int suma = 0;
    printString("Sabiranje.....\n");

    //Moze se takodje napraviti da u strukturi postoji polje za sumu i onda se ono kasnije samo ispise, jer znamo da nema preotimanja i svi imaju istu instancu strukture
    //To resenje je zakomentarisano u ovom fajlu
    for(int i = 0; i < 10; i++) {
        suma+=matrixStruct->matrix[i][0];
    }
    printString("\nZbir: ");
    printInt(suma);
    printString("\n");
    //printInt(matrixStruct->sum);
    //printString("\n");

    return 0;
}

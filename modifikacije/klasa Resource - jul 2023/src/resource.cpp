#include "../h/resource.hpp"
#include "../test/printing.hpp"


Resource::Resource(int N) {
    this->freeResources = N;
    this->N = N;
    this->busyResources = 0;
    this->mutex = new Semaphore(1);
    this->sem = new Semaphore(0);

    this->waiting = 0;
}

void Resource::take(int requested) {
    mutex->wait();
    if(requested > freeResources+busyResources) {
        printString("Not enough resources");
        return;
    }
    while(freeResources < requested) {
        waiting++;
        printString("Resource: Nit ceka na ");
        printInt(requested);
        printString(" resursa jer nema dovoljno!\n");
        mutex->signal();
        sem->wait();
        mutex->wait();
        printString("Resource: Nit se odblokirala i proverava ponovo za ");
        printInt(requested);
        printString(" resursa...\n");
    }
    //Posle ovoga sigurno ima dovoljno i jedina je ovde
    printString("Resource: Nit uzima ");
    printInt(requested);
    printString(" resursa i izlazi. Preostalo je ");
    freeResources -= requested;
    busyResources += requested;
    giveResourcesToRunning(requested);
    printInt(freeResources);
    printString(" resursa.\n");
    mutex->signal();
}

int Resource::give_back(int givingBack) {
    mutex->wait();
    if(busyResources < givingBack) {
        //Ako se vraca vise nego sto je zauzeto
        printString("ERROR");
        return -1;
    }

    if(givingBack > getResourcesTakenFromRunning()) {
        printString("ERROR");
        return -2;
    }

    busyResources -= givingBack;
    freeResources += givingBack;
    takeResourcesFromRunning(givingBack);
    printString("Resource: Nit vraca ");
    printInt(givingBack);
    printString(" resursa i budi ");
    printInt(waiting);
    printString(" nit/i.Sada ima dostupno ");
    printInt(freeResources);
    printString(" resursa.\n");
    //probudi sve koji cekaju
    while(waiting) {
        waiting--;
        sem->signal();
    }
    mutex->signal();
    return 0;
}
#include "../h/mySemaphore.hpp"
#include "../h/syscall_c.hpp"

int MySemaphore::wait() {
    if(--this->value < 0) {
        this->blocked.addLast(TCB::running);
        thread_dispatch(); //Ovde treba da se promeni kontekst
        return 0;
    }
    return 1;
}

int MySemaphore::signal() {
    if(++this->value <= 0) {
        TCB *tcb = this->blocked.removeFirst();
        Scheduler::put(tcb);
        return 0;
    }
    return 1;
}
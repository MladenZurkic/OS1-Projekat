#include "../h/mySemaphore.hpp"
#include "../h/syscall_c.hpp"

int MySemaphore::wait() {
    if(this->closed) {
        return -1;
    }

    if((int)--this->value < 0) {
        this->blocked.addLast(TCB::running);
        TCB::running->setBlocked(true);
        thread_dispatch();

        //Provera da li smo se vratili jer je bio signal() ili je bio close()
        if(this->closed) {
            return -1;
        }
    }
    return 0;
}

int MySemaphore::signal() {
    if(this->closed) {
        return -1;
    }
    if((int)++this->value <= 0) {
        TCB* tcb;
        tcb = this->blocked.peekFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    }
    return 0;
}

MySemaphore *MySemaphore::createSemaphore(unsigned int init) {
    return new MySemaphore(init);
}

int MySemaphore::close() {
    if (closed) {
        return -1;
    }
    closed = true;

    while (this->blocked.peekFirst()) {
        TCB* tcb = this->blocked.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    }
    return 0;
}

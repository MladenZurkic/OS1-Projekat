//...

int MySemaphore::signal() {
    if(this->closed) {
        return -1;
    }
    if((int)++this->value <= 0) {
        TCB* tcb;
        if(priority) {
            tcb = this->blocked.removeFirstWithPriority();
        }
        else {
            tcb = this->blocked.removeFirst();
        }
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

    if(priority) {
        while (this->blocked.peekFirstWithPriority()) {
            TCB* tcb = this->blocked.removeFirstWithPriority();
            tcb->setBlocked(false);
            Scheduler::put(tcb);
        }
    }
    else {
        while (this->blocked.peekFirst()) {
            TCB* tcb = this->blocked.removeFirst();
            tcb->setBlocked(false);
            Scheduler::put(tcb);
        }
    }
    return 0;
}

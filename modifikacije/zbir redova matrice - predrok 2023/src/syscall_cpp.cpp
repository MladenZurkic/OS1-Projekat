//...

void Thread::setRunning(Thread *thread) {
    TCB::running = thread->myHandle;
}

//...
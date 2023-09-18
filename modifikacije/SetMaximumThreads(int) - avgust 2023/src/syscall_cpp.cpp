//...

List<Thread> Thread::waitingThreads;
int Thread::currentlyRunning = 0;
int Thread::maxNumber = 0;


void Thread::setRunning(Thread *thread) {
    TCB::running = thread->myHandle;
}

int Thread::start() {
    if(currentlyRunning >= maxNumber) {
        waitingThreads.addLast(this);
    }
    else {
        currentlyRunning++;
        thread_start(this->myHandle);
    }
    return 0;
}

void Thread::startFromQueue() {
    if(waitingThreads.peekFirst()) {
        Thread* thread = waitingThreads.removeFirst();
        thread_start(thread->myHandle);
    }
    else {
        currentlyRunning--;
    }
}

void Thread::SetMaximumThreads(int num_of_threads) {
    maxNumber = num_of_threads;
}

#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"


Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(this->myHandle);
}

int Semaphore::wait() {
    return sem_wait(this->myHandle);
}

int Semaphore::signal() {
    return sem_signal(this->myHandle);
}

//THREAD
void Thread::dispatch() {
    thread_dispatch();
}

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create(&this->myHandle, body, arg);
}

void Thread::join() {
    thread_join(myHandle);
}

Thread::~Thread() {
    thread_exit(); //Da li ovo tako treba? Msm da ne
}

int Thread::start() {
    //todo
    return 0;
}

Thread::Thread() {
    //todo
}

void Thread::run() {
    //todo
}


#ifndef syscall_cpp
#define syscall_cpp

#include "syscall_c.hpp"

void* operator new(size_t size);
void operator delete(void* p) noexcept;

class Thread {
public:
    Thread(void (*body)(void*), void* arg);
    virtual ~Thread();

    int start();
    
    void join();

    static void dispatch();
    static int sleep(time_t time);

protected:
    Thread();
    virtual void run();

private:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;

    //wrapper za poziv run() metode
    static void runWrapper(void* thread) {
        if(thread) {
            ((Thread*)thread)->run();
        }
    }
};


class Semaphore {
public:
    Semaphore(unsigned init = 1);
    virtual ~Semaphore();

    int wait();
    int signal();

private:
    sem_t myHandle;
};


class Console {
public:
    static void putc(char c);
    static char getc();
};


#endif //syscall_cpp
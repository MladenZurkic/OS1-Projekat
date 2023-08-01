#ifndef OS1_BUFFERCPP_H
#define OS1_BUFFERCPP_H

#include "../h/syscall_cpp.hpp"
#include "printing.hpp"

class BufferCPP {
private:
    int cap;
    int *buffer;
    int head, tail;

    Semaphore* spaceAvailable;
    Semaphore* itemAvailable;
    Semaphore* mutexHead;
    Semaphore* mutexTail;

public:
    BufferCPP(int _cap);
    ~BufferCPP();

    void put(int val);
    int get();

    int getCnt();
};


#endif //OS1_BUFFERCPP_H

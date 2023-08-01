#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    itemAvailable = new Semaphore(0);
    spaceAvailable = new Semaphore(_cap);
    mutexHead = new Semaphore(1);
    mutexTail = new Semaphore(1);
}

BufferCPP::~BufferCPP() {
    Console::putc('\n');
    printString("Buffer deleted!\n");
    while (getCnt()) {
        char ch = buffer[head];
        Console::putc(ch);
        head = (head + 1) % cap;
    }
    Console::putc('!');
    Console::putc('\n');

    mem_free(buffer);
    delete itemAvailable;
    delete spaceAvailable;
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    spaceAvailable->wait();

    mutexTail->wait();
    buffer[tail] = val;
    tail = (tail + 1) % cap;
    mutexTail->signal();

    itemAvailable->signal();

}

int BufferCPP::get() {
    itemAvailable->wait();

    mutexHead->wait();

    int ret = buffer[head];
    head = (head + 1) % cap;
    mutexHead->signal();

    spaceAvailable->signal();

    return ret;
}

int BufferCPP::getCnt() {
    int ret;

    mutexHead->wait();
    mutexTail->wait();

    if (tail >= head) {
        ret = tail - head;
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    mutexHead->signal();

    return ret;
}

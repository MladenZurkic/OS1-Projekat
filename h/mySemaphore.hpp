#ifndef mySemaphore
#define mySemaphore

#include "list.hpp"
#include "tcb.hpp"

class MySemaphore {
public:
    MySemaphore(unsigned init = 1) {
        this->value = init;
    }

    int wait();
    int signal();

    int getValue() const { return value; }


private:
    int value;
    List<TCB> blocked;
};

#endif //mySemaphore
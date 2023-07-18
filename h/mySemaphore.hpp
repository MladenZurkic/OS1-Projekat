#ifndef mySemaphore
#define mySemaphore

#include "list.hpp"
#include "tcb.hpp"

class MySemaphore {
public:
    //check this -> explicit
    explicit MySemaphore(unsigned init = 1) {
        this->value = init;
        this->closed = false;
    }

    int wait();
    int signal();
    static MySemaphore* createSemaphore(unsigned init = 1);
    unsigned getValue() const { return value; }
    int close();

private:
    bool closed;
    unsigned value;
    List<TCB> blocked;
};

#endif //mySemaphore
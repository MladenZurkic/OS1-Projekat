class MySemaphore {
public:
    explicit MySemaphore(unsigned init = 1) {
        this->value = init;
        this->closed = false;
        this->priority = false; //added
    }

    //...
    bool togglePriority() { return priority = !priority; }


private:
    bool closed;
    unsigned value;
    List<TCB> blocked;

    //Added
    bool priority;
};
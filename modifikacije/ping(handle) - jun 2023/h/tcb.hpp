class TCB
{
public:

    void incrementMemory(int increment) { this->allocatedBlocks+= increment; }
    void pingThread() { this->pinged = true; }
    void setPinged(bool value) { this->pinged = value; }
    int getAllocatedBlocks() const { return this->allocatedBlocks; }
    int getRunTime() const { return this->runTime; }
    void incrementTime() { this->runTime++; }

//..

private:
    TCB(Body body, void* arg) :
            body(body),
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            main(body == nullptr),
            arg(arg),
            //Dodato
            allocatedBlocks(0), 
            pinged(false),
            runTime(0)

    {}

    int allocatedBlocks;
    bool pinged;
    int runTime;
};

class TCB
{
public:
    //...

    static int ID;

    static int getMyID() { return running->myID; }
    
    //...

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
            myID(ID++) //Dodato

    {}

    int myID;

    //...
};
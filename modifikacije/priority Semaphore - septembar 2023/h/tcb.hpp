class TCB
{
public:
    //...

    static int ID;
    int getMyID() const { return this->id; }
    
    //...

private:
    TCB(Body body, void* arg) :
            //...,
            id(ID++) //added
    {}

    //...
    int id; //added
};


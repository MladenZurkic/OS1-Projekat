class TCB
{
public:
    //...

    void removeResourcesTaken(int amount) { this->resourcesTaken -= amount; }
    void addResourcesTaken(int amount) { this->resourcesTaken += amount; }
    int getResourcesTaken() const { return this->resourcesTaken; }

    //...

private:
    TCB(Body body, void* arg) :
        //...),
        resourcesTaken(0) //Dodato

    {}

    int resourcesTaken;
};

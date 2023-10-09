class Thread {
public:
    //...
    int getMyID() const { return this->myHandle->getMyID(); }

    static void setRunning(Thread *thread);

protected:
    //...

private:
    //...

};


class Semaphore {
public:
    //...

    void togglePriority() { this->myHandle->togglePriority(); }
    
    //...
private:
    //...

};
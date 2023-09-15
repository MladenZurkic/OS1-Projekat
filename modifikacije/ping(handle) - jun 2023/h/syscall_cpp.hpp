class Thread {
public:

    static void setRunning(Thread* thread);
    void pingThread() { ping(this->myHandle); }

    //..        
protected:
    //..

private:
    //..
};  
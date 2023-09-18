class Thread {
public:
    //...

    static void setRunning(Thread* thread);

    static void startFromQueue();

    static void SetMaximumThreads(int num_of_threads = 5);

protected:
    //...

private:
    //...

    static int maxNumber;
    static int currentlyRunning;
    static List<Thread> waitingThreads;

    //...
};

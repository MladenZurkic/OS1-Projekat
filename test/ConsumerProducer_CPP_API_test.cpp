#include "../h/syscall_cpp.hpp"

#include "buffer_CPP_API.hpp"
#include "printing.hpp"


static Semaphore *waitForAll;

struct thread_data {
    int id;
    BufferCPP *buffer;
    Semaphore *sem;
};

static volatile int threadEnd = 0;

class ProducerKeyborad : public Thread {
    thread_data *td;
public:
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}

    void run() override {
        int key;
        int i = 0;
        while ((key = getc()) != 0x1b) {
            td->buffer->put(key);
            i++;
        }

        threadEnd = 1;
        td->buffer->put('!');

        td->sem->signal();
    }
};

class Producer : public Thread {
    thread_data *td;
public:
    Producer(thread_data *_td) : Thread(), td(_td) {}

    void run() override {
        int i = 0;
        while (!threadEnd) {
            td->buffer->put(td->id + '0');
            i++;
            Thread::sleep((i + td->id) % 5);
        }

        td->sem->signal();
    }
};

class Consumer : public Thread {
    thread_data *td;
public:
    Consumer(thread_data *_td) : Thread(), td(_td) {}

    void run() override {
        int i = 0;
        while (!threadEnd) {
            int key = td->buffer->get();
            i++;

            Console::putc(key);

            if (i % 80 == 0) {
                Console::putc('\n');
            }
        }

        while (td->buffer->getCnt() > 0) {
            int key = td->buffer->get();
            Console::putc(key);
        }

        td->sem->signal();
    }
};

void testConsumerProducer() {
    char input[30];
    int n, threadNum;

    printString("Unesite broj proizvodjaca?\n");
    getString(input, 30);
    threadNum = stringToInt(input);

    printString("Unesite velicinu bafera?\n");
    getString(input, 30);
    n = stringToInt(input);

    printString("Broj proizvodjaca ");
    printInt(threadNum);
    printString(" i velicina bafera ");
    printInt(n);
    printString(".\n");

    if (threadNum > n) {
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
        return;
    } else if (threadNum < 1) {
        printString("Broj proizvodjaca mora biti veci od nula!\n");
        return;
    }

    BufferCPP *buffer = new BufferCPP(n);

    waitForAll = new Semaphore(0);
    Thread *producers[threadNum];
    thread_data threadData[threadNum + 1];

    threadData[threadNum].id = threadNum;
    threadData[threadNum].buffer = buffer;
    threadData[threadNum].sem = waitForAll;
    Thread *consumer = new Consumer(&threadData[threadNum]);
    consumer->start();

    threadData[0].id = 0;
    threadData[0].buffer = buffer;
    threadData[0].sem = waitForAll;
    producers[0] = new ProducerKeyborad(&threadData[0]);
    producers[0]->start();

    for (int i = 1; i < threadNum; i++) {
        threadData[i].id = i;
        threadData[i].buffer = buffer;
        threadData[i].sem = waitForAll;

        producers[i] = new Producer(&threadData[i]);
        producers[i]->start();

    }

    Thread::dispatch();

    for (int i = 0; i <= threadNum; i++) {
        waitForAll->wait();
    }

    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
}




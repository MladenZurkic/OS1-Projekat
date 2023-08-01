//
// Created by marko on 20.4.22..
//

#include "../lib/hw.h"
#include "../h/tcb.hpp"
#include "../test/printing.hpp"
#include "../h/syscall_c.hpp"



static uint64 fibonacci(uint64 n)
{
    if (n == 0 || n == 1) { return n; }
    if (n % 4 == 0) {
        //printString("fibonacci yield\n");
        thread_dispatch();
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg)
{
    uint8 i = 0;
    for (; i < 3; i++)
    {
        printString("A: i=");
        printInt(i);
        printString("\n");
    }

    printString("A: yield\n");
    __asm__ ("li t1, 7");
    thread_dispatch();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    printString("A: t1=");
    printInt(t1);
    printString("\n");



    uint64 result = fibonacci(20);
    printString("A: fibonaci=");
    printInt(result);
    printString("\n");

    for (; i < 6; i++)
    {
        printString("A: i=");
        printInt(i);
        printString("\n");
    }

    thread_dispatch();
}

void workerBodyB(void* arg)
{
    uint8 i = 10;
    thread_join((thread_t) arg);
    for (; i < 13; i++)
    {
        printString("B: i=");
        printInt(i);
        printString("\n");
    }

    printString("B: yield\n");
    __asm__ ("li t1, 5");
    thread_dispatch();


    uint64 result = fibonacci(23);
    printString("B: fibonaci=");
    printInt(result);
    printString("\n");

    for (; i < 16; i++)
    {
        printString("B: i=");
        printInt(i);
        printString("\n");
    }

    thread_dispatch();
}

//test semafora
void workerBodyC(void* arg) {
    printString("C: poziva se dispatch1.\n");
    thread_dispatch();
    printString("C: poziva se dispatch2..\n");
    thread_dispatch();
    printString("C: poziva se dispatch3...\n");
    thread_dispatch();
    printString("C: poziva se dispatch4....\n");
    printString("C: Signal semafora!\n");
    sem_close((sem_t) arg);
    thread_dispatch();
    printString("C: posle signala..\n");
    printString("C: posle signala.2.\n");
}


void workerBodyD(void *arg) {
    printString("D: Usli smo u D 1. put\n");
    printString("D: Cekamo na semaforu..\n");

    int returnValue = sem_wait((sem_t) arg);

    printString("D: rezultat: ");
    printInt(returnValue);
    printString("\nD: izlazim automatski, pozdrav!\n");
}


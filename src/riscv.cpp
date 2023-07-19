//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

using Body = void (*)(void*);

void Riscv::handleSupervisorTrap()
{
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        uint64 codeOperation = Riscv::r_a0();
        int returnValue;
        MySemaphore* semHandlePtr;
        switch (codeOperation) {
            case 0x01:
                //mem_alloc
                break;

            case 0x02:
                //mem_free -> a1: ono sta se brise prima
                break;

            //THREAD DEO
            case 0x11:
                //thread_create
                TCB** tcb;
                Body body;
                void* arg;
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
                __asm__ volatile ("mv %0, a2" : "=r" (body));
                __asm__ volatile ("mv %0, a3" : "=r" (arg));
                *tcb = TCB::createThread(body, arg);
                //POVRATNA VREDNOST: Upis mora na stek direktno, jer se posle ovoga vraca stari kontekst
                if(*tcb != nullptr) {
                    //__asm__ volatile ("li a0, 0");
                    __asm__ volatile ("li t0, 0");
                    __asm__ volatile ("sw t0, 80(x8)");
                }
                else {
                    //__asm__ volatile ("li a0, -1");
                    __asm__ volatile ("li t0, -1");
                    __asm__ volatile ("sw t0, 80(x8)");
                }
                break;

            case 0x12:
                //thread_exit()
                TCB::running->setFinished(true);
                TCB::dispatch();
                __asm__ volatile ("li t0, 0");
                __asm__ volatile ("sw t0, 80(x8)");
                break;

            case 0x13:
                //thread_dispatch()
                TCB::dispatch();
                break;

            case 0x14:
                thread_t handle;
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
                TCB::join(handle);
                break;

            case 0x21:
                //sem_open
                unsigned init;
                MySemaphore** semHandle;

                __asm__ volatile ("mv %0, a2" : "=r" (init));
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
                *semHandle = MySemaphore::createSemaphore(init);

                if(*semHandle != nullptr) {
                    __asm__ volatile ("li t0, 0");
                    __asm__ volatile ("sw t0, 80(x8)");
                }
                else {
                    __asm__ volatile ("li t0, -1");
                    __asm__ volatile ("sw t0, 80(x8)");
                }
                break;

            case 0x22:
                //sem_close
                //check document
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
                if(semHandlePtr!= nullptr) {
                    returnValue = semHandlePtr->close();
                }
                else returnValue = -2;

                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;

            case 0x23:
                //sem_wait
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
                if(semHandlePtr!= nullptr) {
                    returnValue = semHandlePtr->wait();
                }
                else returnValue = -2;

                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;
            case 0x24:
                //sem_signal
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
                if(semHandlePtr!= nullptr)
                    returnValue = semHandlePtr->signal();
                else
                    returnValue = -2;

                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
                __asm__ volatile ("sw t0, 80(x8)");
                break;

            /*case 0x31:
                //time_sleep
                break;

            case 0x41:
                //getc
                break;

            case 0x42:
                //putc
                break;*/
            //Da li treba 0x41 i 0x42 ako se ne radi asinhrono? izgleda ne
            case 0x43:
                TCB::dispatch();
                break;
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else
    {
        // unexpected trap cause
        // Ovde se ulazi ako se desi neki interrupt tabele
    }
}

void Riscv::handleConsoleInterrupt() {
    console_handler();
}

void Riscv::handleTimerInterrupt() {
    mc_sip(SIP_SSIP); // MORA DA SE OBRISE PENDING BIT - ZATO NIJE RADILO!
    /*uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus = r_sstatus();
    TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);*/
}
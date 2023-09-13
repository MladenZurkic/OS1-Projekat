#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"

void Riscv::handleSupervisorTrap()
{
    //...
    switch (codeOperation) {
        
        //..
        case 0x50:
            returnValue = TCB::getMyID();
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
            __asm__ volatile ("sw t0, 80(x8)");

            TCB::dispatch();
            break;
        //...
    }
}

void Riscv::handleTimerInterrupt() {
    mc_sip(SIP_SSIP);
    //10 postavljeno zbog sporijeg ispisa
    //Nije ni najbolje, ni jedino resenje.
    if(TCB::timeSliceCounter++ >= 10 && !(TCB::readyToPrintA || TCB::readyToPrintB || TCB::readyToPrintC)) {
        TCB::readyToPrintA = true;
        TCB::readyToPrintB = true;
        TCB::readyToPrintC = true;
        TCB::timeSliceCounter = 0;
    }
}
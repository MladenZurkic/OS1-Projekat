//...

void Riscv::handleSupervisorTrap()
{
    //...
    switch (codeOperation) {
        //...
        case 0x51:
            thread_t modhandle;
            __asm__ volatile ("mv %0, a1" : "=r" (modhandle));
            modhandle->pingThread();
            break;
        //... 
}

void Riscv::handleTimerInterrupt() {
    mc_sip(SIP_SSIP);
    if(TCB::running != nullptr) TCB::running->incrementTime();
}
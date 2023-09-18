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
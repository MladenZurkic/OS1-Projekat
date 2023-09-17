void Riscv::handleSupervisorTrap()
{
    //...
    switch (codeOperation) {

        //...
        case 0x60:
            //getResourcesTaken
            returnValue = TCB::running->getResourcesTaken();
            __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
            __asm__ volatile ("sw t0, 80(x8)");
            break;

        case 0x61:
            //giveResourcesToRunning(amount)
            int amountToGive;
            __asm__ volatile ("mv %0, a1" : "=r" (amountToGive));
            TCB::running->addResourcesTaken(amountToGive);
            break;

        case 0x62:
            //takeResourcesFromRunning(amount)
            int amountToTake;
            __asm__ volatile ("mv %0, a1" : "=r" (amountToTake));
            TCB::running->removeResourcesTaken(amountToTake);
            break;
        default:
            break;
    }
}
//...

int getResourcesTakenFromRunning() {
    __asm__ volatile("li a0, 0x60");
    __asm__ volatile ("ecall");

    int returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return returnValue;
}

void giveResourcesToRunning(int amount) {
    __asm__ volatile ("mv a1, %0" : : "r" (amount));
    __asm__ volatile("li a0, 0x61");
    __asm__ volatile ("ecall");
}

void takeResourcesFromRunning(int amount) {
    __asm__ volatile ("mv a1, %0" : : "r" (amount));
    __asm__ volatile("li a0, 0x62");
    __asm__ volatile ("ecall");
}

//...

int getThreadId() {
    __asm__ volatile("li a0, 0x50");
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}
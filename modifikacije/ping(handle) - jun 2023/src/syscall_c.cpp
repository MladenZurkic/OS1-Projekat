//...

void ping(thread_t handle) {
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x51");
    __asm__ volatile ("ecall");
}
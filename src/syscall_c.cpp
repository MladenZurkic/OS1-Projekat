#include "../h/syscall_c.hpp"
#include "../h/tcb.hpp"
#include "../h/mySemaphore.hpp"
#include "../h/riscv.hpp"


void* mem_alloc(size_t size) {
    size_t newSize;
    if(size%MEM_BLOCK_SIZE != 0) {
        newSize = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    }
    else {
        newSize = size;
    }

    __asm__ volatile("mv a1, %0" : : "r"(newSize));
    __asm__ volatile("li a0, 0x01");
    __asm__ volatile("ecall");

    //check this
    void* returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return returnValue;
}

int mem_free (void* ptr) {

    __asm__ volatile("mv a1, %0" : : "r"(ptr));
    __asm__ volatile("li a0, 0x02");
    __asm__ volatile("ecall");


    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

void thread_start(TCB* tcb) {
    __asm__ volatile("mv a1, %0" : : "r"(tcb));
    __asm__ volatile("li a0, 0x09");
    __asm__ volatile("ecall");
}

int thread_create_without_start(thread_t* handle,
                                void (*start_routine)(void*), void* arg) {
    __asm__ volatile("mv a7, %0" : : "r"(arg));
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    __asm__ volatile("li a0, 0x10");
    __asm__ volatile("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {

    __asm__ volatile("mv a7, %0" : : "r"(arg));
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int thread_exit() {
    Riscv::w_a0(0x12);
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

void thread_dispatch() {
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile ("ecall");

}

void thread_join(thread_t handle) {
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x14");
    __asm__ volatile ("ecall");
}

int sem_open(sem_t* handle, unsigned init) {
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x21");
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int sem_close(sem_t handle) {
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x22");
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int sem_wait(sem_t id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x23");
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int sem_signal(sem_t id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x24");
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

char getc() {
    __asm__ volatile("li a0, 0x41");
    __asm__ volatile ("ecall");

    char returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return returnValue;
}

void putc(char c) {
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    __asm__ volatile("li a0, 0x42");
    __asm__ volatile ("ecall");
}

int time_sleep(time_t time) {
    return 0;
}
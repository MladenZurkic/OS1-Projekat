#include "../h/syscall_c.hpp"
#include "../h/tcb.hpp"
#include "../h/mySemaphore.hpp"
#include "../h/riscv.hpp"

//void* mem_alloc(size_t size) {
//    Riscv::w_a0(size);
//    __asm__ volatile("ecall");
//}



int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {

    __asm__ volatile("mv a3, %0" : : "r"(arg));
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");

    uint64 returnValue; //bio je uint64 ali vrednosti mogu da budu i negativne
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    if(returnValue == (uint64)4294967295) { //maxint
        return -1;
    }
    return (int)returnValue;
}


void thread_dispatch() {
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");

}

void thread_join(thread_t handle) {
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x14");
    __asm__ volatile ("ecall");
}
#ifndef syscall_c
#define syscall_c

#include "../lib/hw.h"
#include "tcb.hpp"
#include "mySemaphore.hpp"

void* mem_alloc(size_t size);

int mem_free(void* p);

typedef TCB* thread_t;

int thread_create(thread_t* handle, 
    void (*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();

void thread_join(thread_t handle);

typedef MySemaphore* sem_t;

int sem_open(sem_t* handle, unsigned init);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

#endif //syscall_c

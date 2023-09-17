#ifndef resource_hpp
#define resource_hpp

#include "syscall_cpp.hpp"

class Resource {
public:
    Resource(int N);
    void take(int num_of_instances);
    int give_back(int num_of_instances);

    int waiting;

private:
    int N;
    Semaphore* mutex;
    Semaphore* sem;

    int freeResources;
    int busyResources;
};



#endif //resource_hpp
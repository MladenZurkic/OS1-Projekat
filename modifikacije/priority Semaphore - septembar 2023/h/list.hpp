#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_LIST_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_LIST_HPP

template<typename T>
class List
{
private:
    //...

public:
    //...

    T *peekFirstWithPriority()
    {
        if (!head) { return 0; }
        Elem* current = head;
        Elem* highestPriorityElem = head;

        while(current != nullptr) {
            if(current->data->getMyID() < highestPriorityElem->data->getMyID()) {
                highestPriorityElem = current;
            }
            current = current->next;
        }
        return highestPriorityElem->data;
    }

    T *removeFirstWithPriority() {
        if(!head) { return 0; }
        Elem* curr = head;
        Elem* prev = nullptr;
        Elem* highestPriorityElem = head;
        Elem* prevFromHighest = nullptr;

        while(curr != nullptr) {
            if(curr->data->getMyID() < highestPriorityElem->data->getMyID()) {
                highestPriorityElem = curr;
                prevFromHighest = prev;
            }
            prev = curr;
            curr = curr->next;
        }

        //check if first in list or not
        if(prevFromHighest == nullptr) {
            head = highestPriorityElem->next;

        }
        else {
            prevFromHighest->next = highestPriorityElem->next;
        }

        //update tail if necessary
        if(highestPriorityElem == tail) {
            tail = prevFromHighest;
        }

        T* ret = highestPriorityElem->data;
        delete highestPriorityElem;
        return ret;
    }
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_LIST_HPP

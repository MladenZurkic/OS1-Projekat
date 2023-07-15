//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap()
{
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        uint64 codeOperation = Riscv::r_a0();
        switch (codeOperation) {
            case 0x01:
                //mem_alloc
                break;

            case 0x02:
                //mem_free -> a1: ono sta se brise prima
                //Vraca 0 u slucaju uspeha, negativno u slucaju greske
                break;

            case 0x11:
                //thread_create
                //a1: handle - rucka niti - TCB TIP
                //a2: start_routine - ono sto ce nit izvrsavati - Body TIP VEROVATNO?
                //a3: arg - argument za start_routine
                //Uspeh: u handle upisuje rucku i vraca 0, suprotno negativno
                break;

            case 0x12:
                //thread_exit()
                //Gasi tekucu nit samo, znaci treba i dispatch da se uradi
                //0 ili -1 return
                break;

            case 0x13:
                //thread_dispatch()
                //Poziva se thread dispatch
                break;

            case 0x14:
                //thread_join(handle)
                //suspenduje nit i ceka handle nit
                break;

            case 0x21:
                //sem_open
                //check document
                break;

            case 0x22:
                //sem_close
                //check document
                break;

            case 0x23:
                //sem_wait
                //check document
                break;
            case 0x24:
                //sem_signal
                break;

            case 0x31:
                //time_sleep
                break;

            case 0x41:
                //getc
                break;

            case 0x42:
                //putc
                break;
            //Da li treba 0x41 i 0x42 ako se ne radi asinhrono? izgleda ne
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else
    {
        // unexpected trap cause
        // Ovde se ulazi ako se desi neki interrupt tabele
    }
}

void Riscv::handleConsoleInterrupt() {
    console_handler();
}

void Riscv::handleTimerInterrupt() {
    mc_sip(SIP_SSIP);
    TCB::timeSliceCounter++;
    TCB::timeSliceCounterTest++;
    if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    {
        uint64 volatile sepc = r_sepc();
        uint64 volatile sstatus = r_sstatus();
        TCB::timeSliceCounter = 0;
        TCB::timeSliceCounterTest++;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
}
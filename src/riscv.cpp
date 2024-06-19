//
// Created by os on 5/16/24.
//
#include "../h/riscv.hpp"

void Riscv::popSppSpie()
{
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::kernelEnd(void *arg) {
    __asm__ volatile("mv a0, %0" :: "r"(0x100));
    __asm__ volatile("ecall");
    return;
}

void Riscv::handleSupervisorTrap()
{
    uint64 volatile razlog, p1,p2,p3,p4;
    __asm__ volatile("mv %[razlog], a0" : [razlog]"=r"(razlog));
    __asm__ volatile("mv %[p1], a1" : [p1] "=r"(p1));
    __asm__ volatile("mv %[p2], a2" : [p2] "=r"(p2));
    __asm__ volatile("mv %[p3], a3" : [p3] "=r"(p3));
    __asm__ volatile("mv %[p4], a4" : [p4] "=r"(p4));
    //__asm__ volatile("mv %[p5], a5" : [p5] "=r"(p5));

    //printString("usao1\n");
    uint64 volatile scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();
        int volatile ret;
        void volatile *ptr;
        char volatile retchar; // !!!!!!!!!!!!!!!!!!!!!!!!!!dodatko ako ne bude radilo
        switch (razlog) {
            //ALOKATOR
            case MEM_ALLOC:
                //printString("Sistem Malloc\n");
                ptr = Allocator::_malloc(((size_t) p1) * MEM_BLOCK_SIZE);
                __asm__ volatile("mv t0, %0" : : "r"(ptr));
                __asm__ volatile ("sw t0, 80(x8)");
                break;
            case MEM_FREE:
                Allocator::_mem_free((void*) p1);
                __asm__ volatile("mv t0, %0" : : "r"(ret));
                __asm__ volatile ("sw t0, 80(x8)");
                break;
            //NITI
            case THREAD_CREATE:
                if (!(TCB::thread_create((TCB**)p1,(TCB::Body)p2,(void*)p3,(uint64*)p4))) {
                    if (TCB::running != nullptr)
                    {TCB::running->retVal = 0;}
                }
                else {
                    if (TCB::running != nullptr){
                    TCB::running->retVal = -1;}
                }
                break;

            case THREAD_EXIT:
                TCB::running->setFinished(true);
                TCB::dispatch();
                break;

            case THREAD_DISPATCH:
                TCB::timeSliceCounter = 0;
                TCB::dispatch();
                break;
            case TIME_SLEEP:
                TCB::putToSleep((time_t) p1);
                break;
            //NITI KRAJ

            //SEMAFORI POCETAK
            case SEM_OPEN:
                //printString("otvoren\n");
                if (!kSemaphore::openSem((kSemaphore**)p1, (uint64) p2)) {
                    if (TCB::running != nullptr)
                    {TCB::running->retVal = 0;}
                }
                else{
                    if (TCB::running != nullptr)
                    {TCB::running->retVal = -1;}
                }
                break;
            case SEM_CLOSE:
                //printString("zatovren\n");
                if (!((kSemaphore*)p1)->closeSem()) {
                    if (TCB::running != nullptr)
                    {TCB::running->retVal = 0;}
                }
                else {
                    if (TCB::running != nullptr)
                    {TCB::running->retVal = -1;}
                }
                break;
            case SEM_WAIT:
                //printString("wait\n");
                if (!((kSemaphore*)p1)->wait()){
                    if (TCB::running != nullptr)
                    {TCB::running->retVal = 0;}
                }
                else{
                    if (TCB::running != nullptr)
                    {TCB::running->retVal = -1;}
                }
                break;
            case SEM_SIGNAL:
                //printString("signal\n");
                if (!((kSemaphore*)p1)->signal()){
                    if (TCB::running != nullptr)
                    {TCB::running->retVal = 0;}
                }
                else{
                    if (TCB::running != nullptr)
                    {TCB::running->retVal = -1;}
                }
                break;
            case SEM_TRYWAIT:
                ret = ((kSemaphore*)p1)->tryWait();
                if (!ret) {
                    if (TCB::running != nullptr) {
                        TCB::running->retVal = 0;
                    }
                }
                else{
                    if (TCB::running != nullptr) {
                        if (ret == 1) {
                            TCB::running->retVal = 1;
                        }
                        if (ret == -1) {
                            TCB::running->retVal = -1;
                        }
                    }
                }
                break;
            case SEM_TIMEDWAIT:
                ret = ((kSemaphore*)p1)->timedWait((time_t) p2);
                if (!ret) {
                    if (TCB::running != nullptr) {
                        TCB::running->retVal = 0;
                    }
                }
                else {
                    if (TCB::running != nullptr) {
                        if (ret == -1) {
                            TCB::running->retVal = -1;
                        }
                        if (ret == -2) {
                            TCB::running->retVal = -2;
                        }
                    }
                }
                break;
            //SEMAFORI KRAJ
            case PUTC:
                kConsole::kputc((char)p1);
                if ((char) p1 == '\r') {
                    kConsole::kputc('\n');
                }
                break;
            case GETC:
                retchar =(char) kConsole::kgetc();
                TCB::running->getcRetVal = retchar;
                break;
            case 0x100:
                while ((*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT))
                {
                    if (kConsole::getOutputSize() <= 0) {break;}
                    *((char*) CONSOLE_TX_DATA) = kConsole::putOutputBuffer();
                }
                break;
            default:
                TCB::timeSliceCounter = 0;
                TCB::dispatch();
                break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    {
        while ((*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT))
        {
            if (kConsole::getOutputSize() <= 0) {break;}
            *((char*) CONSOLE_TX_DATA) = kConsole::putOutputBuffer();
        }
        mc_sip(SIP_SSIP);

        //LISTA SLEEPING PREULAZNCAVANJE
        List<TCB>::Elem *element = (TCB::sleeping).head;
        /*while (element) {
            (element->data->timeToSleep)--;
            element = element->next;
        }
        element = (TCB::sleeping).head;*/

        List<TCB>::Elem *prev = nullptr;
        while (element) {
            (element->data->timeToSleep)--;
            List<TCB>::Elem *next = element->next;

            if (element->data->timeToSleep == 0) {
                element->data->isSleeping = false;
                Scheduler::put(element->data);

                TCB::sleeping.deleteElement(element);

                if (prev) {
                    prev->next = next;
                } else {
                    TCB::sleeping.head = next;
                }
                if (!next) {
                    TCB::sleeping.tail = prev;
                }
            } else {
                prev = element;
            }
            element = next;;
        }
        //LISTA SLEEPING PREULANCAVANJE

        //LISTA ZA TIMEDWAIT SEMAPHORE!!!!!!!!!

        element = (kSemaphore::blockedTimedWait).head;
        /*
        while (element) {
            (element->data->timeToWaitSem)--;
            element = element->next;
        }
        element = (kSemaphore::blockedTimedWait).head;
        */
        prev = nullptr;

        while (element) {
            (element->data->timeToWaitSem)--;
            List<TCB>::Elem *next = element->next;

            if (element->data->timeToWaitSem == 0) {
                element->data->blocked = false;

                kSemaphore::blockedTimedWait.deleteElement(element);

                List<TCB> *headSemList = &(element->data->blockedOnWhichSem->blocked);
                headSemList->deleteNodes(element->data);

                element->data->blockedOnWhichSem = nullptr;
                element->data->regularlyFinishedWait = false;

                Scheduler::put(element->data);

                if (prev) {
                    prev->next = next;
                } else {
                    kSemaphore::blockedTimedWait.head = next;
                }
                if (!next) {
                    kSemaphore::blockedTimedWait.tail = prev;
                }
            } else {
                prev = element;
            }
            element = next;
        }

        //LISTA ZA TIMEDWAIT SEMAPHORE!!!!!!!!!

        // OVO JE ZA PROMJENU KONTKESTA KAD STIGNE TAJMER

        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
        {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        // OVO JE ZA PROMJENU KONTKESTA KAD STIGNE TAJMER
    }
    else if (scause == 0x8000000000000009UL)
    {
        volatile uint64 plic = plic_claim();

        if (plic == 0x0a) {
            while ((*((char *) CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT)) {
                if (kConsole::getInputSize() > 274) {
                    break;
                }
                kConsole::putInputBuffer(*((char *) CONSOLE_RX_DATA));
            }
            plic_complete(CONSOLE_IRQ);
        }
        //console_handler();
    }
    else {
        if (scause == 2UL) {
            //printStringMoj("MIRANNNN BUDIIDIDI");
            //kConsole::kputc('A');
            printStringMoj("Illegal insturction!!!\n");
            while ((*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT))
            {
                if (kConsole::getOutputSize() <= 0) {break;}
                *((char*) CONSOLE_TX_DATA) = kConsole::putOutputBuffer();
            }
            __asm__ volatile ("li t0, 0x5555");
            __asm__ volatile ("li t1, 0x100000");
            __asm__ volatile ("sw t0, 0(t1)");
        }
    }
    //printString("izasao iz handlera");
}
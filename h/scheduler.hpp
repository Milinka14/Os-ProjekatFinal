//
// Created by os on 5/16/24.
//

//preuzeta sa teamsa

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

#include "../h/list.hpp"

class TCB;

class Scheduler
{
private:
    static List<TCB> readyThreadQueue;

public:
    static TCB *get();

    static void put(TCB *ccb);

};

#endif //PROJECT_BASE_SCHEDULER_HPP


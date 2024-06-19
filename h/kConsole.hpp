//
// Created by os on 5/22/24.
//

#ifndef PROJECT_BASE_KCONSOLE_HPP
#define PROJECT_BASE_KCONSOLE_HPP

// koriscen buffer iz testova

#include "../h/kBuffer.hpp"
class kBuffer;
class kConsole {

private:
    static kBuffer *inputBuffer;
    static kBuffer *outputBuffer;
public:
    friend class Riscv;
    static void endConsole();
    static void init();
    static int getInputSize();
    static int getOutputSize();
    static void putInputBuffer(char c);
    static char putOutputBuffer();
    static char kgetc();
    static void kputc(char c);
};



#endif //PROJECT_BASE_KCONSOLE_HPP

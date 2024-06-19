#include "../h/kConsole.hpp"

kBuffer* kConsole::inputBuffer = nullptr;
kBuffer* kConsole::outputBuffer = nullptr;

void kConsole::init() {
    inputBuffer = new kBuffer(275);
    outputBuffer = new kBuffer(275);
}

char kConsole::kgetc() {
    return inputBuffer->get();
}

void kConsole::kputc(char c) {
    outputBuffer->put(c);
}

void kConsole::putInputBuffer(char c) {
    inputBuffer->put(c);
}

char kConsole::putOutputBuffer() {
    return outputBuffer->get();
}

int kConsole::getInputSize() {
    return inputBuffer->getCnt();
}

int kConsole::getOutputSize() {
    return outputBuffer->getCnt();
}

void kConsole::endConsole() {
    delete inputBuffer;
    delete outputBuffer;
}




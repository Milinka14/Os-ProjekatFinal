//
// Created by os on 5/16/24.
//

#ifndef PROJECT_BASE_LIST_HPP
#define PROJECT_BASE_LIST_HPP

#include "../h/Allocator.hpp"
//Lista preuzeta sa teamsa

template<typename T>
class List
{
private:
    struct Elem
    {
        T *data;
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}

        void* operator new(size_t size) {
            return Allocator::_malloc(size);
        }

        void operator delete(void* ptr) {
            Allocator::_mem_free(ptr);
        }

        void* operator new[](size_t size) {
            return Allocator::_malloc(size);
        }

        void operator delete[](void* ptr) {
            Allocator::_mem_free(ptr);
        }
    };

    Elem *head, *tail;

public:
    friend class TCB;
    friend class Riscv;
    friend class kSemaphore;

    List() : head(0), tail(0) {}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;

    void addFirst(T *data)
    {
        Elem *elem = new Elem(data, head);
        head = elem;
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
            head = tail = elem;
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        T *ret = elem->data;
        delete elem;
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
        return head->data;
    }

    T *removeLast()
    {
        if (!head) { return 0; }

        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;

        T *ret = elem->data;
        delete elem;
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
        return tail->data;
    }

    void deleteElement(Elem *elementToDelete)
    {
        if (!elementToDelete) { return; }

        if (head == elementToDelete)
        {
            head = head->next;
            if (!head) { tail = nullptr; }
            delete elementToDelete;
            return;
        }

        Elem *prev = nullptr;
        for (Elem *curr = head; curr; curr = curr->next)
        {
            if (curr == elementToDelete)
            {
                prev->next = curr->next;
                if (curr == tail) { tail = prev; }
                delete elementToDelete;
                return;
            }
            prev = curr;
        }
    }

    void deleteNodes(T* objectToDelete) {
        Elem* current = head;
        Elem* previous = nullptr;

        while (current != nullptr) {
            if (current->data == objectToDelete) {
                Elem* temp = current;
                if (previous == nullptr) {
                    head = current->next;
                } else {
                    previous->next = current->next;
                }
                if (current == tail) {
                    tail = previous;
                }
                current = current->next;
                delete temp;
            } else {
                previous = current;
                current = current->next;
            }
        }
    }
};

#endif //PROJECT_BASE_LIST_HPP

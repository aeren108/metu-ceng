#ifndef LINKEDLIST_H
#define LINKEDLIST_H

#include <iostream>

#include "Node.h"

template <class T>
class LinkedList
{
public: // DO NOT CHANGE THIS PART.
    LinkedList();
    LinkedList(const LinkedList<T> &obj);
    ~LinkedList();

    LinkedList<T> &operator=(const LinkedList<T> &rhs);

    int getSize() const;
    bool isEmpty() const;
    bool containsNode(Node<T> *node) const;
    int getIndex(Node<T> *node) const;

    Node<T> *getFirstNode() const;
    Node<T> *getLastNode() const;
    Node<T> *getNode(const T &data) const;
    Node<T> *getNodeAtIndex(int index) const;

    void append(const T &data);
    void prepend(const T &data);
    void insertAfterNode(const T &data, Node<T> *node);
    void insertAtIndex(const T &data, int index);
    void moveToIndex(int currentIndex, int newIndex);

    void removeNode(Node<T> *node);
    void removeNode(const T &data);
    void removeNodeAtIndex(int index);
    void removeAllNodes();

    void print() const;

private: // YOU MAY ADD YOUR OWN UTILITY MEMBER FUNCTIONS HERE.

private: // DO NOT CHANGE THIS PART.
    Node<T> *head;
    int size;
};

template<class T>
LinkedList<T>::LinkedList() {   
    head = NULL;
    size = 0;
}

template<class T>
LinkedList<T>::LinkedList(const LinkedList<T> &obj) {
    head = NULL;
    size = 0;

    for (int i = 0; i < obj.getSize(); ++i)
        append(obj.getNodeAtIndex(i)->data);
}

template<class T>
LinkedList<T>::~LinkedList() {
    removeAllNodes();
    head = NULL;
    size = 0;
}

template<class T>
LinkedList<T> &LinkedList<T>::operator=(const LinkedList<T> &rhs) {
    if (&rhs != this) {
        removeAllNodes();
        for (int i = 0; i < rhs.getSize(); ++i)
            append(rhs.getNodeAtIndex(i)->data);
    }

    return *this;
}

template<class T>
int LinkedList<T>::getSize() const { return size; }

template<class T>
bool LinkedList<T>::isEmpty() const { return size == 0; }

template<class T>
bool LinkedList<T>::containsNode(Node<T> *node) const {   
    if (isEmpty()) return false;
    
    Node<T> *cur = head;
    while (cur->next != head) {   
        if (cur == node) return true;
        cur = cur->next;
    }

    return cur == node;
}

template<class T>
Node<T> *LinkedList<T>::getFirstNode() const { return head; }

template<class T>
Node<T> *LinkedList<T>::getLastNode() const { return isEmpty() ? NULL : head->prev; }

template<class T>
Node<T> *LinkedList<T>::getNode(const T &data) const {
    if (isEmpty()) return NULL;
    Node<T> *cur = head;
    
    for (; cur->next != head; cur = cur->next)
        if (cur->data == data) return cur;

    return cur->data == data ? cur : NULL;
}

template<class T>
Node<T> *LinkedList<T>::getNodeAtIndex(int index) const {   
    if (isEmpty() || index < 0 || index >= size) return NULL;
    int i = 0; Node<T> *cur = head;
    for (; i < index; cur = cur->next, ++i);
    return cur;
}

template<class T>
void LinkedList<T>::append(const T &data) {
    if (isEmpty()) {   
        head = new Node<T>(data);
        head->next = head;
        head->prev = head;
    } else {   
        Node<T>* newnode = new Node<T>(data, head->prev, head);
        head->prev = newnode;
        newnode->prev->next = newnode;
    }
    
    ++size;
}

template<class T>
void LinkedList<T>::prepend(const T &data) {
    if (isEmpty()) {   
        head = new Node<T>(data);
        head->next = head;
        head->prev = head;
    } else {   
        head = new Node<T>(data, head->prev, head);
        head->next->prev = head;
        head->prev->next = head;
    }

    ++size;
}

template<class T>
void LinkedList<T>::insertAfterNode(const T &data, Node<T> *node) {   
    if (isEmpty()) return;
    
    Node<T> *cur = head; int i = 0;
    for (; cur != node && i < size; cur = cur->next, ++i);
    if (cur != node) return;

    Node<T> *newnode = new Node<T>(data, cur, cur->next);
    cur->next = newnode;
    newnode->next->prev = newnode;
    ++size;
}

template<class T>
void LinkedList<T>::insertAtIndex(const T &data, int index) {   
    if (index < 0 || index >= size) return;
    Node<T> *cur = head; int i = 0;
    for (; i < index; cur = cur->next, ++i);
    
    Node<T> *newnode = new Node<T>(data, cur->prev, cur);
    cur->prev = newnode;
    newnode->prev->next = newnode;
    if (index == 0) head = newnode;
    
    ++size;
}

template<class T>
int LinkedList<T>::getIndex(Node<T> *node) const {
    Node<T> *cur = head; int i = 0;
    for (; i < size && cur != node; cur = cur->next, ++i);
    if (cur != node) return -1;

    return i;
}

template<class T>
void LinkedList<T>::moveToIndex(int currentIndex, int newIndex) {
    if (currentIndex >= size) return;
    if (newIndex >= size) newIndex = size - 1;

    Node<T> *n1 = getNodeAtIndex(currentIndex);
    Node<T> *n2 = getNodeAtIndex(newIndex);
    if (n1 == NULL || n2 == NULL) return;

    //std::cout << "N1.data: " << n1->data << " N2.data: " << n2->data << std::endl;
    
    if (n2 == head) {
        n1->next->prev = n1->prev;
        n1->prev->next = n1->next;

        n1->next = n2;
        n1->prev = n2->prev;
        n1->prev->next = n1;
         
        head = n1;

        return;
    }

    if (n1 == head) head = n1->next;

    n1->prev->next = n1->next;
    n1->next->prev = n1->prev;

    n1->next = n2->next;
    n2->next = n1;
    n1->prev = n2;
}

template<class T>
void LinkedList<T>::removeNode(Node<T> *node) {
    Node<T> *cur = head; int i = 0;
    for (; i < size && cur != node; cur = cur->next, ++i);
    if (cur != node) return;

    cur->prev->next = cur->next;
    cur->next->prev = cur->prev;
    if (cur == head) head = cur->next;

    delete cur;
    --size;
}

template<class T>
void LinkedList<T>::removeNode(const T &data) {
    Node<T> *cur = head; int i = 0;
    for (; i < size && cur->data != data; cur = cur->next, ++i);
    if (cur->data != data) return;

    cur->prev->next = cur->next;
    cur->next->prev = cur->prev;
    if (cur == head) head = cur->next;

    delete cur;
    --size;
}

template<class T>
void LinkedList<T>::removeNodeAtIndex(int index) {
    Node<T> *toremove = getNodeAtIndex(index);
    if (toremove == NULL) return;
    removeNode(toremove);
}

template<class T>
void LinkedList<T>::removeAllNodes() {   
    if (isEmpty()) return;
    Node<T> *cur = head;
    Node<T> *tmp = head;
    for (; cur->next != head; cur = tmp) {
        tmp = cur->next;
        delete cur;
    }
    delete cur;
}

template<class T>
void LinkedList<T>::print() const {
    if (this->isEmpty()) {
        std::cout << "The list is empty." << std::endl;
        return;
    }

    Node<T> *node = this->getFirstNode();

    do {
        std::cout << *node << std::endl;
        node = node->next;
    }
    while (node != this->getFirstNode());
}

#endif //LINKEDLIST_H
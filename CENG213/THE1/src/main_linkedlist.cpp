#include <iostream>
#include "LinkedList.h"

int main() {
    LinkedList<int> list;
    list.prepend(8);
    list.append(0);
    list.append(5);
    list.prepend(6);
    list.print();
    LinkedList<int> list2;
    list2 = list;
    /**Node<int> *n = list.getFirstNode();
    Node<int> *n1 = list.getLastNode();
    Node<int> *n2 = list.getNodeAtIndex(2);
    
    list.insertAfterNode(18, n);
    list.insertAfterNode(13, n1);
    list.insertAfterNode(-6, n2);
    list.insertAfterNode(77, new Node<int>(16));
    */
    std::cout << std::endl;
    //list.insertAtIndex(19, 0);
    
    //std::cout << "Index of node: " << list.getIndex(new Node<int>(5)) << std::endl;
    //list2.removeNode(6);
    list2.moveToIndex(1, 3);
    list2.print();
}

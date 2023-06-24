#include <iostream>

#include "ScapegoatTree.h"

int main() {

    ScapegoatTree<int> tree;
    tree.insert(2);
    tree.insert(1);
    tree.insert(3);
    tree.printPretty();
    tree.remove(2);
    tree.printPretty();
    tree.removeAllNodes();
    tree.printPretty();
    

 
    return 0;
}

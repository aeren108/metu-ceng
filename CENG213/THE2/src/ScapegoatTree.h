#ifndef TREE_H
#define TREE_H

#include <iostream>
#include <cmath>

#include "Node.h"
#include "NoSuchItemException.h"

enum TraversalMethod {preorder, inorder, postorder};

template<class T>
class ScapegoatTree {
public: // DO NOT CHANGE THIS PART.
    ScapegoatTree();

    ScapegoatTree(const ScapegoatTree<T> &obj);

    ~ScapegoatTree();

    bool isEmpty() const;

    int getHeight() const;

    int getSize() const;

    bool insert(const T &element);

    bool remove(const T &element);

    void removeAllNodes();

    const T &get(const T &element) const;

    void print(TraversalMethod tp=inorder) const;

    void printPretty() const;

    ScapegoatTree<T> &operator=(const ScapegoatTree<T> &rhs);

    void balance();

    const T &getCeiling(const T &element) const;

    const T &getFloor(const T &element) const;

    const T &getMin() const;

    const T &getMax() const;

    const T &getNext(const T &element) const;

private: // YOU MAY ADD YOUR OWN UTILITY MEMBER FUNCTIONS HERE.
    void print(Node<T> *node, TraversalMethod tp) const;
    void printPretty(Node<T> *node, int indentLevel, bool isLeftChild) const;

    void copy(Node<T> *&n1, Node<T> *n2);

    int getHeight(Node<T> *root) const;
    int getSize(Node<T> *root) const;

    bool insert(const T &element, Node<T> *&root, int depth);
    bool remove(const T &element, Node<T> *&node);
    bool removeBSTNode(const T &element, Node<T> *&node);
    void removeAllNodes(Node<T> *&node);

    int toArray(Node<T> *node, int size, Node<T>** arr, int i);
    Node<T>* buildFromArray(Node<T>** arr, int size, int i);
    Node<T>* rebuild(Node<T> *node);

    const T &get(const T &element, Node<T> *node) const;
    const Node<T>* getMin(Node<T>* node) const;
    const Node<T>* getMax(Node<T>* node) const;
    const void getCeiling(const T &element, Node<T> *node, Node<T> *&ceil) const;
    const void getFloor(const T &element, Node<T> *node, Node<T> *&floor) const;
    const void getNext(const T &element, Node<T> *node, Node<T> *&next) const;

private: // DO NOT CHANGE THIS PART.
    Node<T> *root;

    int upperBound;
};

#endif //TREE_H

template<class T>
ScapegoatTree<T>::ScapegoatTree() {
    root = NULL;
    upperBound = 0;

}

template<class T>
ScapegoatTree<T>::ScapegoatTree(const ScapegoatTree<T> &obj) {
    copy(root, obj.root);
    upperBound = obj.upperBound;
}

template<class T>
ScapegoatTree<T>::~ScapegoatTree() {
    removeAllNodes();
    root = NULL;
}

template<class T>
void ScapegoatTree<T>::copy(Node<T> *&n1, Node<T> *n2) {
    if (n2 == NULL) {
        n1 = NULL;
        return;
    }

    n1 = new Node<T>(n2->element, NULL, NULL);
    copy(n1->left, n2->left);
    copy(n1->right, n2->right);
}

template<class T>
bool ScapegoatTree<T>::isEmpty() const {
    return root == NULL;
}

template<class T>
int ScapegoatTree<T>::getHeight() const {
    return getHeight(root);
}

template<class T>
int ScapegoatTree<T>::getHeight(Node<T> *node) const {
    if (node == NULL) return -1;
    else if (node->left == NULL && node->right == NULL) return 0;

    int lefth = getHeight(node->left);
    int righth = getHeight(node->right);

    return (lefth > righth) ? lefth + 1 : righth + 1;
}

template<class T>
int ScapegoatTree<T>::getSize() const {
    return getSize(root);
}

template<class T>
int ScapegoatTree<T>::getSize(Node<T> *node) const {
    if (node == NULL) return 0;
    return getSize(node->left) + getSize(node->right) + 1;
}

template<class T>
bool ScapegoatTree<T>::insert(const T &element) {
    return insert(element, root, 0);
}

template<class T>
bool ScapegoatTree<T>::insert(const T &element, Node<T> *&node, int depth) {
    if (node == NULL) {
        node = new Node<T>(element, NULL, NULL); 
        upperBound++;

        int height = getHeight();
        if (height > (std::log(upperBound) / std::log(1.5f))) { //height condition is not satisfied
            Node<T> *cur = root;
            Node<T> *prev = NULL;
            Node<T> *scapegoat = NULL;
            Node<T> *parent = NULL;

            for (int i = 0; i < depth; ++i) {
                if (element < cur->element) {
                    int child_size = getSize(cur->left);
                    int node_size = getSize(cur);

                    if (child_size / (float) node_size > 2.0f / 3) {
                        scapegoat = cur;
                        parent = prev;
                    }

                    prev = cur;
                    cur = cur->left;
                } else {
                    int child_size = getSize(cur->right);
                    int node_size = getSize(cur);

                    if (child_size / (float) node_size > 2.0f / 3) { 
                        scapegoat = cur;
                        parent = prev;
                    }

                    prev = cur;
                    cur = cur->right;
                }
            }
            
            /*std::cout << "Tree before rebuilding: ";
            printPretty();
            std::cout << "Scapegoat node: " << scapegoat->element << std::endl;
            std::cout << "Parent node: " << parent->element << std::endl;*/

            Node<T>* new_root = rebuild(scapegoat);

            //printPretty(new_root, 0, false);
            if (parent != NULL) { if (element < parent->element) parent->left = new_root; else parent->right = new_root; }
            else root = new_root;
            /*std::cout << "After rebuild: ";
            printPretty();*/
        }

        return true;
    }

    if (element < node->element) return insert(element, node->left, depth+1);
    else if (element > node->element) return insert(element, node->right, depth+1);
    else return false;
}

template<class T>
bool ScapegoatTree<T>::remove(const T &element) {
    return remove(element, root);
}

template<class T>
bool ScapegoatTree<T>::remove(const T &element, Node<T> *&node) {
    bool success = removeBSTNode(element, root);

    if (success) {
        int nodes = getSize();
        if (nodes > upperBound || nodes < upperBound / 2.0f) {
            balance();
            upperBound = nodes;
        }
    }
    
    return success;
}

template<class T>
bool ScapegoatTree<T>::removeBSTNode(const T &element, Node<T> *&node) {
    if (node == NULL) return false;

    else if (node->element == element) {
        /* check 3 cases:
            1 -> node is a leaf
            2 -> node has two children
            3 -> node has one child */

        if (node->left == NULL && node->right == NULL) {
            delete node;
            node = NULL;
        } else if (node->left == NULL && node->right != NULL) {
            Node<T> *tmp = node->right;
            delete node;
            node = tmp;
        } else if (node->left != NULL && node->right == NULL) {
            Node<T> *tmp = node->left;
            delete node;
            node = tmp;
        } else {
            const Node<T>* max = getMax(node->left);
            T tmp = max->element;
            removeBSTNode(max->element, node);
            node->element = tmp;
        }

        return true;
    }
    else if (node->element < element) return removeBSTNode(element, node->right);
    else return removeBSTNode(element, node->left);
}

template<class T>
void ScapegoatTree<T>::removeAllNodes() {
    removeAllNodes(root);
    upperBound = 0;
}

template<class T>
void ScapegoatTree<T>::removeAllNodes(Node<T> *&node) {
    if (node == NULL) return;
    
    removeAllNodes(node->left);
    removeAllNodes(node->right);

    removeBSTNode(node->element, root);
    node = NULL;
}

template<class T>
const T &ScapegoatTree<T>::get(const T &element) const {
    return get(element, root);
}

template<class T>
const T &ScapegoatTree<T>::get(const T &element, Node<T> *node) const {
    if (node == NULL) throw NoSuchItemException();

    if (element == node->element) return node->element;
    else if (element < node->element) return get(element, node->left);
    else return get(element, node->right);
}


template<class T>
void ScapegoatTree<T>::print(TraversalMethod tp) const {

    if (tp == preorder) {
        if (isEmpty()) {
            // the tree is empty.
            std::cout << "BST_preorder{}" << std::endl;
            return;
        }

        // the tree is not empty.

        // recursively output the tree.
        std::cout << "BST_preorder{" << std::endl;
        print(root, tp);
        std::cout << std::endl << "}" << std::endl;
    } else if (tp == inorder) {
        // check if the tree is empty?
        if (isEmpty()) {
            // the tree is empty.
            std::cout << "BST_inorder{}" << std::endl;
            return;
        }

        // the tree is not empty.

        // recursively output the tree.
        std::cout << "BST_inorder{" << std::endl;
        print(root, tp);
        std::cout << std::endl << "}" << std::endl;
    } else if (tp == postorder) {
        if (isEmpty()) {
            // the tree is empty.
            std::cout << "BST_postorder{}" << std::endl;
            return;
        }

        // the tree is not empty.

        // recursively output the tree.
        std::cout << "BST_postorder{" << std::endl;
        print(root, tp);
        std::cout << std::endl << "}" << std::endl;
    }
}

template<class T>
void ScapegoatTree<T>::print(Node<T> *node, TraversalMethod tp) const {

    if (tp == preorder) {
        if (node == NULL)
          return;

        // first, output left subtree and comma (if needed).
        std::cout << "\t" << node->element;
        if (node->left) {
            std::cout << "," << std::endl;
        }

        print(node->left, preorder);

        if (node->right) {
            std::cout << "," << std::endl;
        }
        print(node->right, preorder);
    } else if (tp == inorder) {
        // check if the node is NULL?
        if (node == NULL)
          return;

        // first, output left subtree and comma (if needed).
        print(node->left, inorder);
        if (node->left) {
            std::cout << "," << std::endl;
        }

        // then, output the node.
        std::cout << "\t" << node->element;

        // finally, output comma (if needed) and the right subtree.
        if (node->right) {
            std::cout << "," << std::endl;
        }
        print(node->right, inorder);
    } else if (tp == postorder) {
        if (node == NULL)
          return;

        // first, output left subtree and comma (if needed).
        print(node->left, postorder);

        if (node->left) {
            std::cout << "," << std::endl;
        }
        print(node->right, postorder);
        if (node->right) {
            std::cout << "," << std::endl;
        }
        
        std::cout << "\t" << node->element;
    }
}

template<class T>
void ScapegoatTree<T>::printPretty() const {

    // check if the tree is empty?
    if (isEmpty()) {
        // the tree is empty.
        std::cout << "BST_pretty{}" << std::endl;
        return;
    }

    // the tree is not empty.

    // recursively output the tree.
    std::cout << "BST_pretty{" << std::endl;
    printPretty(root, 0, false);
    std::cout << "}" << std::endl;

}

template<class T>
void ScapegoatTree<T>::printPretty(Node<T> *node, int indentLevel, bool isLeftChild) const {

    // check if the node is NULL?
    if (node == NULL)
        return;

    // output the indentation and the node.
    std::cout << "\t";
    for (int i = 0; i < indentLevel; ++i) {
        std::cout << "---";
    }
    std::cout << (indentLevel == 0 ? "root:" : (isLeftChild ? "l:" : "r:")) << node->element << std::endl;

    // first, output left subtree with one more indentation level.
    printPretty(node->left, indentLevel + 1, true);

    // then, output right subtree with one more indentation level.
    printPretty(node->right, indentLevel + 1, false);
}

template<class T>
ScapegoatTree<T> &ScapegoatTree<T>::operator=(const ScapegoatTree<T> &rhs) {
    if (this == &rhs) return *this;
    
    removeAllNodes();
    copy(root, rhs.root);
    upperBound = rhs.upperBound;
    return *this;
}

template<class T>
void ScapegoatTree<T>::balance() {
    root = rebuild(root);
}

template<class T>
Node<T>* ScapegoatTree<T>::rebuild(Node<T> *node) {
    int size = getSize(node);
    Node<T>* arr[256];

    toArray(node, size, arr, 0);
    //for (int i = 0; i < size; ++i) std::cout << arr[i]->element << ", ";
    
    Node<T> * new_root = buildFromArray(arr, 0, size-1);

    return new_root;
}

template<class T>
Node<T>* ScapegoatTree<T>::buildFromArray(Node<T>** arr, int start, int end) {
    if (start > end) return NULL;
    int mid = (start + end) / 2;
    
    Node<T>* center = arr[mid];
    center->right = buildFromArray(arr, mid + 1, end);
    center->left = buildFromArray(arr, start, mid - 1);

    return center;
}

template<class T>
int ScapegoatTree<T>::toArray(Node<T> *node, int size, Node<T>** arr, int i) {
    if (node == NULL) return i;

    i = toArray(node->left, size, arr, i);
    arr[i++] = node;
    return toArray(node->right, size, arr, i);
}

template<class T>
const T &ScapegoatTree<T>::getCeiling(const T &element) const {
    Node<T> *ceil = NULL; getCeiling(element, root, ceil);
    if (!ceil) throw NoSuchItemException();
    return ceil->element;
}

template<class T>
const void ScapegoatTree<T>::getCeiling(const T &element, Node<T> *node, Node<T> *&ceil) const {
    if (node == NULL) return;

    if (element < node->element) {
        ceil = node;
        getCeiling(element, node->left, ceil);
    } else if (element > node->element) {
        getCeiling(element, node->right, ceil);
        if (!ceil) throw NoSuchItemException();
    } else ceil = node;
}

template<class T>
const T &ScapegoatTree<T>::getFloor(const T &element) const {
    Node<T>* floor = NULL; getFloor(element, root, floor);
    if (!floor) throw NoSuchItemException();
    return floor->element;
}

template<class T>
const void ScapegoatTree<T>::getFloor(const T &element, Node<T>* node, Node<T> *&floor) const {
    if (node == NULL) return;

    if (element < node->element) {
        getFloor(element, node->left, floor);
        if (!floor) throw NoSuchItemException();
    } else if (element > node->element) {
        floor = node;
        getFloor(element, node->right, floor);
    } else floor = node;
}

template<class T>
const T &ScapegoatTree<T>::getMin() const {
    const Node<T> *minnode = getMin(root);
    if (!minnode) throw NoSuchItemException();
    return minnode->element;
}

template<class T>
const Node<T>* ScapegoatTree<T>::getMin(Node<T>* node) const {
    if (node == NULL) throw NoSuchItemException();
    if (node->left == NULL) return node;
    return getMin(node->left);
}

template<class T>
const T &ScapegoatTree<T>::getMax() const {
    const Node<T> *maxnode = getMax(root);
    if (!maxnode) throw NoSuchItemException();
    return maxnode->element;
}

template<class T>
const Node<T>* ScapegoatTree<T>::getMax(Node<T>* node) const {
    if (node == NULL) throw NoSuchItemException();
    if (node->right == NULL) return node;
    return getMax(node->right);
}

template<class T>
const T &ScapegoatTree<T>::getNext(const T &element) const {
    Node<T> *next = NULL; getNext(element, root, next);
    if (!next) throw NoSuchItemException();
    return next->element;
}

template<class T>
const void ScapegoatTree<T>::getNext(const T &element, Node<T> *node, Node<T> *&next) const {
    if (node == NULL) return;

    if (element < node->element) {
        next = node;
        getNext(element, node->left, next);
    } else if (element >= node->element) {
        getNext(element, node->right, next);
        if (!next) throw NoSuchItemException();
    } 
}

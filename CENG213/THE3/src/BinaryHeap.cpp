#include "BinaryHeap.h"
#include <iostream>

BinaryHeap::BinaryHeap() : size(0) {elements.resize(5);}


bool BinaryHeap::Add(int uniqueId, double weight)
{   
    for (int i = 0; i < size; ++i)
        if (elements[i].uniqueId == uniqueId) return false;
    
    if (++size >= elements.size()) elements.resize(elements.size() * 2 + 1);
    
    HeapElement e;
    e.uniqueId = uniqueId;
    e.weight = weight;
    elements[size-1].uniqueId = uniqueId;
    elements[size-1].weight = weight;

    BubbleUp(size-1);

    return true;
}

bool BinaryHeap::PopHeap(int& outUniqueId, double& outWeight)
{
    if (size == 0) return false;
    
    outUniqueId = elements[0].uniqueId;
    outWeight = elements[0].weight;

    elements[0] = elements[--size];
    BubbleDown(0);
    
    return true;
}

bool BinaryHeap::ChangePriority(int uniqueId, double newWeight)
{   int index = -1;

    for (int i = 0; i < size && index == -1; ++i)
        if (elements[i].uniqueId == uniqueId) {index = i;}
    
    if (index == -1) return false;
    
    int oldWeight = elements[index].weight;
    elements[index].weight = newWeight;

    if (newWeight > oldWeight) BubbleDown(index);
    else BubbleUp(index);

    return true;
}

int BinaryHeap::HeapSize() const { return size; }
void BinaryHeap::print() 
{
    for (int i = 0; i < size; ++i)
    {
        std::cout << "ID: " << elements[i].uniqueId << " Weight: " << elements[i].weight << std::endl;
    }
}
void BinaryHeap::BubbleUp(int index) 
{
    int cur = index;
    int parent = (cur - 1) / 2;

    //Bubble up
    while (cur != 0 && elements[parent].weight > elements[cur].weight)
    {   HeapElement tmp = elements[parent];
        elements[parent] = elements[cur];
        elements[cur] = tmp;

        cur = parent;
        parent = (cur - 1) / 2;
    }
}

void BinaryHeap::BubbleDown(int index)
{
    int cur = index;
    int left = 2*cur + 1;
    int right = 2*cur + 2;

    while (cur < size)
    {   int toreplace = cur;
        if (left < size && elements[toreplace].weight > elements[left].weight) toreplace = left;
        if (right < size && elements[toreplace].weight > elements[right].weight) toreplace = right;
        if (toreplace == cur) break;

        HeapElement tmp = elements[toreplace];
        elements[toreplace] = elements[cur];
        elements[cur] = tmp;

        cur = toreplace;
        left = 2*cur + 1;
        right = 2*cur + 2;
    }
}
#include "Window.h"

Window::Window() {
    this->activeTab = 0;
    Tab *newTab = new Tab();
    tabs.append(*newTab);
}

Tab Window::getActiveTab() { 
    return tabs.getNodeAtIndex(activeTab)->data;
}

bool Window::isEmpty() const { return tabs.isEmpty(); }

void Window::newTab(const Tab &tab) {
    tabs.insertAfterNode(tab, tabs.getNodeAtIndex(activeTab));
    if (tabs.getSize() == 1) activeTab = 0;
    else ++activeTab;
}

void Window::closeTab() {
    if(activeTab != -1) {
        Node<Tab> *active = tabs.getNodeAtIndex(activeTab);
        Node<Tab> *next = (active->prev == tabs.getFirstNode()) ? active->next : active->prev;
        tabs.removeNodeAtIndex(activeTab);

        if (isEmpty()) activeTab = -1;
        else activeTab = tabs.getIndex(next);
    }
}

void Window::moveActiveTabTo(int index) {
    if(activeTab != -1) {
        if (index >= tabs.getSize()) index = tabs.getSize() - 1;
        tabs.moveToIndex(activeTab, index);
        activeTab = index;
    }
}

void Window::changeActiveTabTo(int index) {
    if (index >= 0 && index < tabs.getSize())
        activeTab = index;
}

void Window::closeTab(Node<Tab> &tab) {
    if (tabs.getIndex(&tab) == activeTab)
        closeTab();
    else
        tabs.removeNode(&tab);
}

void Window::addTab(Node<Tab> &tab) {
    if (isEmpty()) newTab(tab.data);
    else tabs.insertAfterNode(tab.data, tabs.getNodeAtIndex(activeTab));
}

void Window::print() {
    if(tabs.isEmpty()) std::cout << "Window is empty" << std::endl;
    else std::cout << "The active tab is tab " << activeTab << std::endl;
    tabs.print();
}
#include "Browser.h"

Browser::Browser() {
    
}

void Browser::newWindow() {
    windows.prepend(Window());
}

void Browser::closeWindow() {
    windows.removeNodeAtIndex(0);
}

void Browser::switchToWindow(int index) {
    windows.moveToIndex(index, 0);
}

void Browser::moveTab(Window &window1, Window &window2) {
    Tab t = window1.getActiveTab();
    Tab ntab = Tab(t.getUrl(), t.getTitle(), t.getContents());
    Node<Tab> tabnode(ntab);
    window1.closeTab();
    
    if (window1.isEmpty()) windows.removeNode(window2);
    window2.addTab(tabnode);
}

void Browser::mergeWindows(Window &source, Window &destination) {
    
}

void Browser::mergeAllWindows() {
    // TODO
}

void Browser::closeAllWindows() {
    // TODO
}

void Browser::closeEmptyWindows() {
    // TODO
}

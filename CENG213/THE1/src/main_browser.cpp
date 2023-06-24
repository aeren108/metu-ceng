#ifndef BROWSERPROJECT_MAIN_BROWSER_H
#define BROWSERPROJECT_MAIN_BROWSER_H

#include "Tab.h"
#include "Node.h"
#include "LinkedList.h"
#include "Window.h"
#include "Browser.h"

int main()
{
    Window *w = new Window();
    w->moveActiveTabTo(5);
    w->print();
    delete w;
}

#endif //BROWSERPROJECT_MAIN_BROWSER_H

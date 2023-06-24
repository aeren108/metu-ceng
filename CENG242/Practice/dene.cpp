#include <iostream>

using std::cout, std::endl;

class A {
protected:
        int x;

public:
    A() : x(0) {
        cout << "A()" << endl;
    }

    A(int x) : x(x) {
        cout << "A(" << x << ")" << endl;
    }

    A(A &a) {
        this->x = a.x;
        cout << "A(A &copy)" << endl;
    }

    A(A &&a) {
        this->x = a.x;
        a.x = 0;
        cout << "A(A &&move)" << endl;
    }

    ~A() {
        cout << "~A() // x=" << x << endl;
    }

    virtual void out() {
        cout << "This is AAA " << x <<  endl;
    }

    virtual A operator+(A &rhs) {
        cout << "A overload +" << endl;
        return A(x+rhs.x);
    }

    virtual void operator+=(int rhs) {
        cout << "A ovlerload +=" << endl;
        x += rhs;
    }

    A operator-(A &rhs) {
        cout << "A overload -" << endl;
        return A(x-rhs.x);
    }

    int getX() { return x; }
    void setX(int x) {this->x = x; }
};

class B : public A {
    

    public:
        B() : A() {
            cout << "B()" << endl;
        }

        B(int x) : A(x) {
            cout << "B(" << x << ")" << endl;
        }

        B(B &b) {
            this->x = b.x;
            cout << "B(B &copy)" << endl;
        }

        B(B &&b) {
            this->x = b.x;
            b.x = 0;
            cout << "B(B &&move)" << endl;
        }

        ~B() {
            cout << "~B() // x=" << x << endl;
        }

        void out() {
            cout << "This is BBB " << x << endl;
        }

        B operator+(B &rhs) {
            cout << "B overload +" << endl;
            return B(x+rhs.x);
        }

        B operator-(B &rhs) {
            cout << "B overload -" << endl;
            return B(x-rhs.x);
        }

        void operator+=(int rhs) {
            cout << "B ovlerload +=" << endl;
            x += rhs*2;
        }

};

A a1(1);

A f(A ap) {
    cout << "f(A ap) ap.x is " << ap.getX() << endl;

    ap += 5;

    return ap;
}

int main(int argc, char const *argv[]) {
    A a2(2), a3(3), a0;
    cout << "1-----------------" << endl;

    try {
        A af = f(a2);
    } catch (int e) {
        cout << "Error catched with code " << e << endl;
    }
    cout << "2-----------------" << endl;

    A aa1(1), aa5(5);
    A bb3 = B(3); B bb4 = B(4);
    A* bref4 = &bb4;
    aa1.out(); bref4->out();

    A r1 = aa1 + bb3;
    *bref4 += 12;

    r1.out();

    cout << "3-----------------" << endl;
    A dene = f(bb4);
    dene.out();
    cout << "4-----------------" << endl;

    return 0;
}

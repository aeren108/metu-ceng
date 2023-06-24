#include <iostream>
#include "expr.h"

int main() {
	sym::Const c = 2;
	sym::Var x="x", y="y";

	sym::Expr df = y.diff(y);


	std::cout << "derivation: " << df << std::endl;

	return 0;
}

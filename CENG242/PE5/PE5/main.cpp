#include "kpop.h"
#include "jazz.h"
#include "tournament.h"
#include "tournament_round.h"
#include <iostream>

int main() {
    KPopBand band1("eski bir grup", 50, 100, 25);
    JazzBand band2("jazz", 50, 100, 25);
    
    int s1 = band1.play(&band2);
    int s2 = band2.play(&band1);
    
    std::cout << s1 << " " << s2;
    
    return 0;
}
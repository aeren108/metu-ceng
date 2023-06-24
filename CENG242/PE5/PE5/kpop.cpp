#include "rock.h"
#include "kpop.h"
#include "metal.h"
#include "jazz.h"


int KPopBand::play(MusicBand *other) {
    int score;
    KPopBand* kb = dynamic_cast<KPopBand*>(other);
    MetalBand* mb = dynamic_cast<MetalBand*>(other);
    RockBand* rb = dynamic_cast<RockBand*>(other);
    JazzBand* jb = dynamic_cast<JazzBand*>(other);
    
    if (kb != nullptr) score = (get_fan_count() + 0.1*get_talent()*get_energy())*2.0;
    else score = (get_fan_count() + 0.1*get_talent()*get_energy())*0.5;
    
    set_energy(get_energy() - get_energy() * 0.2);
    
    return score;
}

void KPopBand::rehearse(void) {
    set_energy(get_energy() - get_energy() *(0.5*0.2));
}
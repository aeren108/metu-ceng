#include "rock.h"
#include "kpop.h"
#include "metal.h"
#include "jazz.h"


int MetalBand::play(MusicBand *other) {
    int score;
    KPopBand* kb = dynamic_cast<KPopBand*>(other);
    MetalBand* mb = dynamic_cast<MetalBand*>(other);
    RockBand* rb = dynamic_cast<RockBand*>(other);
    JazzBand* jb = dynamic_cast<JazzBand*>(other);
    
    if (kb != nullptr) score = (get_fan_count() + 0.1*get_talent()*get_energy())*0.5;
    else if (mb != nullptr) score = (get_fan_count() + 0.1*get_talent()*get_energy())*1.0;
    else if (rb != nullptr) score = (get_fan_count() + 0.1*get_talent()*get_energy())*1.5;
    else if (jb != nullptr) score = (get_fan_count() + 0.1*get_talent()*get_energy())*1.1;
    
    set_energy(get_energy() - get_energy() * 0.16);
    
    return score;
}

void MetalBand::rehearse(void) {
    set_energy(get_energy() - get_energy() * (0.16*0.5));
    set_talent(get_talent() - 5);
}
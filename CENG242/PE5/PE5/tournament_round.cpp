#include "tournament_round.h"

// TournamentRound functions goes here

TournamentRound::TournamentRound() { }
TournamentRound::TournamentRound(std::list<MusicBand*> _bands) { 
    bands = _bands;
}
TournamentRound::TournamentRound(std::vector<MusicBand*> _bands) {
    bands.clear();
    for (MusicBand* b : _bands) bands.push_back(b);
}

std::size_t TournamentRound::size() { return bands.size(); }
    
//TournamentRound::TournamentRound(TournamentRound& other) { }
//TournamentRound::TournamentRound(TournamentRound&& other) { }
TournamentRound& TournamentRound::operator=(TournamentRound&& other) {
    bands = other.bands;
    return *this; 
    
}
TournamentRound& TournamentRound::get_next_round() {
    std::list<MusicBand*> winners;
    std::list<MusicBand*> cbands = bands;
    
    while (!cbands.empty()) {
        MusicBand* b1 = cbands.front(); cbands.pop_front();
        if (cbands.empty()) {
            winners.push_back(b1);
            break;
        }
        
        MusicBand* b2 = cbands.back(); cbands.pop_back();
    
        int s1 = b1->play(b2);
        int s2 = b2->play(b1);
        
        if (s1 >= s2) {
            int f = s1 - s2;
            if (f > b2->get_fan_count()) f = b2->get_fan_count();
            b1->set_fan_count(b1->get_fan_count() + f);
            b2->set_fan_count(b2->get_fan_count() - f);
            winners.push_back(b1);
        } else {
            int f = s2 - s1;
            if (f > b1->get_fan_count()) f = b1->get_fan_count();
            b1->set_fan_count(b1->get_fan_count() - f);
            b2->set_fan_count(b2->get_fan_count() + f);
            winners.push_back(b2);
        }
    }
    
    return *(new TournamentRound(winners));
}

std::ostream& operator<< (std::ostream &os, TournamentRound &other) {
    std::list<MusicBand*>::iterator it = other.bands.begin();
    
    for (; it != other.bands.end(); ++it) {
        if (*it == other.bands.back())
            os << (*it)->get_name();
        else
            os << (*it)->get_name() << "\t";
    }
    
    return os; 
}
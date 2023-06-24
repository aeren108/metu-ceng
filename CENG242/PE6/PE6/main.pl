:- module(main, [is_vote_wasted/2, is_candidate_elected/2, candidate_count_from_city/3, all_parties/1, all_candidates_from_party/2, all_elected_from_party/2, election_rate/2, council_percentage/2, alternative_debate_setups/2]).
:- [kb].

% DO NOT CHANGE THE UPPER CONTENT, WRITE YOUR CODE AFTER THIS LINE

is_vote_wasted(C, P) :- \+ elected(C, P, _).

is_candidate_elected(N, P) :- candidate(N, P, C, R), elected(C, P, L), R =< L.

candidate_count_from_city([], City, 0).
candidate_count_from_city([H|T], City, Count) :- \+ candidate(H, _, City, _), candidate_count_from_city(T, City, Count).
candidate_count_from_city([H|T], City, Count) :- candidate(H, _, City, _), candidate_count_from_city(T, City, Ncount), Count is Ncount+1.

all_parties(L) :- findall(X, party(X, _), C), L = C.

all_candidates_from_party(Party, L) :- findall(X, candidate(X, Party, _, _), C), C = L.

all_elected_from_party(P, L) :- findall(X, (is_candidate_elected(X, P), candidate(X, P, _, _)), C), C = L.

election_rate(P, R) :- all_elected_from_party(P, EL), all_candidates_from_party(P, AL), length(EL, Elr), length(AL, Alr), format("~2f", [Elr / Alr]), R is Elr / Alr. 

council_percentage(P, R) :- to_elect(N), all_elected_from_party(P, EL), length(EL, Elr), format("~2f", [Elr / N]), R is Elr / N. 


%candidate_from_initial(I, C) :- party(P, I), candidate(C, P, _, _,).

setups_string([], L) :- L = [].
setups_string([H|T], [OH|OT]) :- party(P, H), candidate(C, P, _, _), OH = C, setups_string(T, OT).

alternative_debate_setups(A, OL) :- atom_chars(A, L), setups_string(L, OL), duplicate_proof(OL).

duplicate_proof([]) :- true.
duplicate_proof([H|T]) :- \+ member(H, T), duplicate_proof(T).
  


holds(P,0) :- init(P).

{ occurs(A,T) : action(A) } = 1 :- time(T).
:- occurs(A,T), pre(A,F), not holds(F,T-1).

holds(F,T) :- occurs(A,T), add(A,F).
holds(F,T) :- holds(F,T-1), time(T), not occurs(A,T) : del(A,F).

:- query(F), not holds(F,k).

#show occ/2.

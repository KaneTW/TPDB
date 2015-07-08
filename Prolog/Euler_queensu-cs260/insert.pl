%Source: http://research.cs.queensu.ca/home/cisc260/2015w/examples/Arithmetic.pl
%query:insert(g,g,f).
insert(X,[],[X]).
insert(X,[Y|Ys],[X,Y|Ys]) :-
    X =< Y.
insert(X,[Y|Ys],[Y|Tail]) :-
    X > Y,
    insert(X,Ys,Tail).

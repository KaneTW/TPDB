%query: reverse(i,i,o).

% mode: reverse[i,o,i]
reverse([],X,X).
reverse([X|Y],Z,U) :- reverse(Y,Z,[X|U]).

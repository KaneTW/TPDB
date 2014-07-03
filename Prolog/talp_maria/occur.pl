%query: occurall(i,i,o).

%------------------------------------------------------------------------------
%	Benchmark Program - Counting occurrences in lists
%
%	Author: B. Ramkumar and L. V. Kale
%	Date: 
%
%	To test: run o/1.  
%------------------------------------------------------------------------------
% Benchmark is o(31), runs with -A1 -E256 -C128

%:- module(occur, [o/1]).
%:- seqex([occur/3, count/3, addx/4]).
%:- entry(occurall(g,g,f)).

occur(X,[],0).
occur(X,[Y|Z],W) :- (count(X,Y,A) , occur(X,Z,B)) -> W is A + B.

count(X,[],0).
count(X,[Y|Z],W) :- count(X,Z,W1) -> addx(X,Y,W1,W).

addx(X,X,W1,W)  :- W is W1 + 1.
addx(X,Y,W1,W1) :- X =\= Y.

occurall([], X, []).
occurall([X|Y],Z, [[X,W]|V]) :- (occur(X,Z,W) , occurall(Y,Z,V)).
/*
:- noparallelize.
%-----------------------------------------------------------------

o(N) :-
	time(_),
	test(N,L),
	report(L).

time(A) :- statistics(runtime,[_,A]).

report([H|R]) :- 
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	length(H,A), length([H|R],B),
	write('Checksum = '), write(A), write(' - '), write(B), nl.

test(0,[]).
test(N,[X|T]) :-   N > 0, N1 is N-1,
	     occurall([5,3,6,7,2,1,4,11,8],
		   [[3,4,5,6,7,6,5,4,5,6,5,4,3,5,6,2,3,4,5],
		    [3,4],
		    [4,5,5,5,5],
		    [13,4,5,6,7,8,7,6,5,4,5,6,7,6,5,5,5,5,4,5,5,5,6,6,6,5,5,4],
		    [1,2,2,2,1,1,3,2,3,2,3,3,3],
		    [3,4],
		    [4,5,5,5,5],
		    [1,2,3,4,5,6,7,8,7,6,5,4,5,6,7,6,5,5,5,5,4,5,5,5,6,6,6,5],
		    [1,2,2,2,1,1,3,2,3,2,3,3,3],
		    [3,4],
		    [4,5,5,5,5],
		    [1,2,3,4,5,6,7,8,7,6,5,4,5,6,7,6,5],
		    [5,5,5,4,5,5,5,6,6,6,5,5,4],
		    [1,2,2,2,1,1,3,2,3,2,3,3,3],
		    [],
		    [3,4],
		    [4,5,5,5,5],
		    [1,2,3,4,5,6,7,8,7,6,5,4,5,6,7,6,5],
		    [5,5,5,4,5,5,5,6,6,6,5,5,4],
		    [1,2,2,2,1,1,3,2,3,2,3,3,3],
		    [3,4],
		    [4,5,5,5,5],
		    [1,2,3,4,5,6,7,8,7,6,5,4,5,6,7,6,5],
		    [5,5,5,4,5,5,5,6,6,6,5,5,4],
		    [1,2,2,2,1,1,3,2,3,2,3,3,3],
		    [5],
		    [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]],X),
	test(N1,T).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %
% 
% In this case, test/2 has been modified to get_query/2 in order to 
% obtain the result and print it

no_trace_main:- 
	get_query(X,Y),
	time(_),
	occurall(X,Y,Z),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write(Z), nl.

trace_main(Eventfile):-
	get_query(X,Y),
	start_event_trace, 
	occurall(X,Y,Z),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), write(Z),nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).
*/
get_query(X,Y):-
	X = [5,3,6,7,2,1,4,11,8],
	Y = [[3,4,5,6,7,6,5,4,5,6,5,4,3,5,6,2,3,4,5],
		    [3,4],
		    [4,5,5,5,5],
		    [13,4,5,6,7,8,7,6,5,4,5,6,7,6,5,5,5,5,4,5,5,5,6,6,6,5,5,4],
		    [1,2,2,2,1,1,3,2,3,2,3,3,3],
		    [3,4],
		    [4,5,5,5,5],
		    [1,2,3,4,5,6,7,8,7,6,5,4,5,6,7,6,5,5,5,5,4,5,5,5,6,6,6,5],
		    [1,2,2,2,1,1,3,2,3,2,3,3,3],
		    [3,4],
		    [4,5,5,5,5],
		    [1,2,3,4,5,6,7,8,7,6,5,4,5,6,7,6,5],
		    [5,5,5,4,5,5,5,6,6,6,5,5,4],
		    [1,2,2,2,1,1,3,2,3,2,3,3,3],
		    [],
		    [3,4],
		    [4,5,5,5,5],
		    [1,2,3,4,5,6,7,8,7,6,5,4,5,6,7,6,5],
		    [5,5,5,4,5,5,5,6,6,6,5,5,4],
		    [1,2,2,2,1,1,3,2,3,2,3,3,3],
		    [3,4],
		    [4,5,5,5,5],
		    [1,2,3,4,5,6,7,8,7,6,5,4,5,6,7,6,5],
		    [5,5,5,4,5,5,5,6,6,6,5,5,4],
		    [1,2,2,2,1,1,3,2,3,2,3,3,3],
		    [5],
		    [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]]. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





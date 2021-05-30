%move([R1,R2,R3,R4,R5,R6,R7,R8,R9],[R1,R2,R3,R4,R5,R6,R7,R8,R9]).

%blanck in the first cell from 1 =>2
move([-1,R2,R3,R4,R5,R6,R7,R8,R9],[R2,-1,R3,R4,R5,R6,R7,R8,R9]).
move([-1,R2,R3,R4,R5,R6,R7,R8,R9],[R4,R2,R3,-1,R5,R6,R7,R8,R9]).


move([R1,-1,R3,R4,R5,R6,R7,R8,R9],[-1,R1,R3,R4,R5,R6,R7,R8,R9]).
move([R1,-1,R3,R4,R5,R6,R7,R8,R9],[R1,R3,-1,R4,R5,R6,R7,R8,R9]).
move([R1,-1,R3,R4,R5,R6,R7,R8,R9],[R1,R5,R3,R4,-1,R6,R7,R8,R9]).

move([R1,R2,-1,R4,R5,R6,R7,R8,R9],[R1,-1,R2,R4,R5,R6,R7,R8,R9]).
move([R1,R2,-1,R4,R5,R6,R7,R8,R9],[R1,R2,R6,R4,R5,-1,R7,R8,R9]).

move([R1,R2,R3,-1,R5,R6,R7,R8,R9],[-1,R2,R3,R1,R5,R6,R7,R8,R9]).
move([R1,R2,R3,-1,R5,R6,R7,R8,R9],[R1,R2,R3,R5,-1,R6,R7,R8,R9]).
move([R1,R2,R3,-1,R5,R6,R7,R8,R9],[R1,R2,R3,R7,R5,R6,-1,R8,R9]).

move([R1,R2,R3,R4,-1,R6,R7,R8,R9],[R1,-1,R3,R4,R2,R6,R7,R8,R9]).
move([R1,R2,R3,R4,-1,R6,R7,R8,R9],[R1,R2,R3,-1,R4,R6,R7,R8,R9]).
move([R1,R2,R3,R4,-1,R6,R7,R8,R9],[R1,R2,R3,R4,R6,-1,R7,R8,R9]).
move([R1,R2,R3,R4,-1,R6,R7,R8,R9],[R1,R2,R3,R4,R8,R6,R7,-1,R9]).


move([R1,R2,R3,R4,R5,-1,R7,R8,R9],[R1,R2,-1,R4,R5,R3,R7,R8,R9]).
move([R1,R2,R3,R4,R5,-1,R7,R8,R9],[R1,R2,R3,R4,-1,R5,R7,R8,R9]).
move([R1,R2,R3,R4,R5,-1,R7,R8,R9],[R1,R2,R3,R4,R5,R9,R7,R8,-1]).


move([R1,R2,R3,R4,R5,R6,-1,R8,R9],[R1,R2,R3,-1,R5,R6,R4,R8,R9]).
move([R1,R2,R3,R4,R5,R6,-1,R8,R9],[R1,R2,R3,R4,R5,R6,R8,-1,R9]).


move([R1,R2,R3,R4,R5,R6,R7,-1,R9],[R1,R2,R3,R4,-1,R6,R7,R5,R9]).
move([R1,R2,R3,R4,R5,R6,R7,-1,R9],[R1,R2,R3,R4,R5,R6,-1,R7,R9]).
move([R1,R2,R3,R4,R5,R6,R7,-1,R9],[R1,R2,R3,R4,R5,R6,R7,R9,-1]).

move([R1,R2,R3,R4,R5,R6,R7,R8,-1],[R1,R2,R3,R4,R5,-1,R7,R8,R6]).
move([R1,R2,R3,R4,R5,R6,R7,R8,-1],[R1,R2,R3,R4,R5,R6,R7,-1,R8]).


%base case ([-1,0,1,2,3,4,5,6,7],[-1,0,1,2,3,4,5,6,7]).

puzzle(S,G):-
path(S,[S],G).

path([-1,0,1,2,3,4,5,6,7],Visited,Visited).

path(State,Visited,G):-
move(State,NextState),
not(member(NextState,Visited)),
path(NextState,[NextState|Visited],G).









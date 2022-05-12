male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice,bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob,carl).
parent(bob, charlie).

%carls grandparents  parent(Y,carl), parent(X,Y).
%alberts grandchildren parent(albert,X), parent(X,Y).

get_grandchild :-
    parent(albert, X),
    parent(X,Y),
    write('Alberts grandchild is '),
    write(Y), nl.

get_grandparent :-
    parent(X, carl),
    parent(X,charlie),
    format('~w ~s grandparent ~n', [X, "is the"]).

brothers(bob,bill).

%parent(X,carl), brothers(X,Y).

grand_parent(X,Y) :-
    parent(Z, X),
    parent(Y, Z).
%grand_parent(carl,A).

blushes(X) :- human(X).
human(derek).

stabs(tybalt, mercutio, sword).
hates(romeo,X) :- stabs(X,mercutio,sword).

%check if there is any male predicates without results: male(_).

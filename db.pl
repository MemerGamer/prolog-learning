cls :- write('\33\[2J'). %clear command

%Romeo loves Juliet
loves(romeo, juliet).

% :- if

%Juliet loves romeo if and only if Romeo loves juliet
loves(juliet, romeo) :- loves(romeo, juliet).

%cute program hehe
loves(me, you).
loves(you, me) :- loves(me, you).

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
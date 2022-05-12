% instead of using: has(albert, olive). we should use:
owns(albet, pet(cat,olive)).

customer(tom,smith, 20.55).
customer(sally,smith, 120.55).
%balance of sally customer(sally,_, Bal).

get_cust_bal(FName, LName) :-
    customer(FName, LName, Bal),
    write(FName), tab(1),
    format('~w owes us $~2f ~n', [LName,Bal]).
%usage: get_cust_bal(sally,smith).

vertical(line(point(X,Y), point(X,Y2))).
%asking what the second points x coordinate should be:
%vertical(line(point(5,10), point(X,20))).
%asking what the second points coordinates should be:
% vertical(line(point(5,10), X)).
horizontal(line(point(X,Y), point(X2,Y))).


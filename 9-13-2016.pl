roditelj('Abraham', 'Herb').
roditelj('Abraham', 'Homer').
roditelj('Mona', 'Herb').
roditelj('Mona', 'Homer').
roditelj('Clancy', 'Marge').
roditelj('Clancy', 'Paity').
roditelj('Clancy', 'Selma').
roditelj('Jackie', 'Marge').
roditelj('Jackie', 'Paity').
roditelj('Jackie', 'Selma').
roditelj('Selma','Ling').
roditelj('Homer','Bart').
roditelj('Homer','Lisa').
roditelj('Homer','Maggie').
roditelj('Marge','Bart').
roditelj('Marge','Lisa').
roditelj('Marge','Maggie').
pol('Abraham', 'Musko').
pol('Mona', 'Zensko').
pol('Clancy', 'Musko').
pol('Jackie', 'Zensko').
pol('Homer', 'Musko').
pol('Marge', 'Zensko').
pol('Paity', 'Zensko').
pol('Selma', 'Zensko').
pol('Herb', 'Musko').
pol('Bart', 'Musko').
pol('Lisa', 'Zensko').
pol('Maggie', 'Zensko').
pol('Ling', 'Zensko').

otac(X,Y) :- roditelj(X,Y), pol(X, 'Musko').
brat(X,Y) :- roditelj(C,X), roditelj(C,Y), not(X=Y).
stric(X,Y) :- brat(X, C), otac(C, Y).
deda(X,Y) :- otac(X, C), roditelj(C, Y).
predak(X,Y) :-  predak(C, Y),roditelj(X, C).
predak(X,Y) :- roditelj(X,Y).

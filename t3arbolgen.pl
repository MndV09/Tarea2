%relacion paterna
padre(anastacia,fidela).
padre(gregorio,armando).
padre(santiago,yaravid).
padre(federico,armando).
padre(armando,emmanuel).
padre(armando,adriana).
padre(armando,amanda).
padre(said,adrian).
padre(said,iker).

%relacion materna
madre(juana,ines).
madre(anastacia,fidela).
madre(ines,yaravid).
madre(fidela,armando).
madre(yaravid,emmanuel).
madre(yaravid,adriana).
madre(yaravid,amanda).
madre(adriana,iker).
madre(adriana,adrian).
madre(amanda,zeus).

%reglas
%bisabuelos
bisabuelo(X,Y) :- abuelo(X,Z), padre(Z,Y); madre(Z,Y).
bisabuela(X,Y) :- abuela(X,Z), padre(Z,Y); madre(Z,Y).
%abuelos
abuelo(X,Y) :- padre(X,Z); madre(Z,Y).
abuela(X,Y) :- padre(X,Z); madre(Z,Y).
%padres propios
propio(X, Y) :- padre(X, Y).
propio(X, Y) :- madre(X, Y).
%hijos propios
hijo(X,Y) :- padre(Y,X); madre(Y,X).
%hermanos
hermano(X,Y) :- padre(Z,X), padre(Z,Y), madre(W,X), X \= Y.
hermana(X,Y) :- padre(Z,X), padre(Z,Y), madre(W,X),  X \= Y.
%nietos
nieto(X,Y) :- abuelo(Y,X); abuela(Y,X).
%sobrinos
sobrino(X,Y) :- hermano(Y,Z), padre(Z,X); madre(Z,X).
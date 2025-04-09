% Definición de nacionalidades
nacionalidad(manolo, espanol).
nacionalidad(juan, mexicano).
nacionalidad(john, estadounidense).
nacionalidad(piter, ingles).
nacionalidad(anselmo, colombiano).

% Regla: ¿Es europeo?
es_europeo(Persona) :- nacionalidad(Persona, espanol).
es_europeo(Persona) :- nacionalidad(Persona, ingles).

% Regla: ¿Es americano?
es_americano(Persona) :- nacionalidad(Persona, mexicano).
es_americano(Persona) :- nacionalidad(Persona, estadounidense).
es_americano(Persona) :- nacionalidad(Persona, colombiano).

% Regla: ¿Es terrícola?
es_terricola(Persona) :- nacionalidad(Persona, _).

% Regla: ¿Son del mismo continente?
son_del_mismo_continente(P1, P2) :-
    es_europeo(P1), es_europeo(P2).
son_del_mismo_continente(P1, P2) :-
    es_americano(P1), es_americano(P2).

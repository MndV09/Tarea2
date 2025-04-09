%Hechos: Persona tiene mascota
tiene_mascota(juan,perro).
tiene_mascota(maria,gato).
tiene_mascota(carlos,pez).
tiene_mascota(luisa, tortuga).

%Hechod: Tipo animal
es_mamifero(perro).
es_mamifero(gato).
es_reptil(tortuga).
es_pez(pez).

%Reglas
%Tuve que cambiar un poco las reglas, dado que me marcaba error.
es_dueno(X, Y) :- tiene_mascota(X, Y).

mascota_mamifera(X) :- tiene_mascota(X, Y), es_mamifero(Y).

tipo_mascota(X, Tipo) :- tiene_mascota(X, Y), (es_mamifero(Y) -> Tipo = mamifero; es_reptil(Y) -> Tipo = reptil; es_pez(Y) -> Tipo = pez).
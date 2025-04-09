% Hechos: Definimos qué lenguajes programa cada
persona.
sabe(ana, python).
sabe(ana, java).
sabe(juan, prolog).
sabe(carlos, python).
sabe(carlos, cplusplus).

% Regla: Una persona es programadora si sabe al menos un lenguaje.
programador(Persona) :- sabe(Persona, _).

% Regla: Una persona es desarrollador full-stack si sabe Python y Java.
desarrollador_fullstack(Persona) :- sabe(Persona, python), sabe(Persona, java).
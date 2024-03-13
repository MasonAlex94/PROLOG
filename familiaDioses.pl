% atomos
cronos.
ares.
hera.
poseidon.
afrodita.
hefesto.
hipolita.
zeus.
baco.
atena.
nera.
hermes.


% hechos
esHombre(cronos).
esHombre(ares).
esHombre(poseidon).
esHombre(hefesto).
esHombre(zeus).
esHombre(baco).
esHombre(hermes).

esMujer(hera).
esMujer(afrodita).
esMujer(hipolita).
esMujer(atena).

esDedendienteDirecto(hera,cronos).
esDedendienteDirecto(afrodita,ares).
esDedendienteDirecto(afrodita,hera).
esDedendienteDirecto(hefesto,hera).
esDedendienteDirecto(hefesto,ares).
esDedendienteDirecto(zeus,afrodita).
esDedendienteDirecto(zeus,poseidon).
esDedendienteDirecto(baco,afrodita).
esDedendienteDirecto(baco,hefesto).
esDedendienteDirecto(atena,afrodita).
esDedendienteDirecto(atena,hefesto).
esDedendienteDirecto(nera,hipolita).
esDedendienteDirecto(nera,zeus).
esDedendienteDirecto(hermes,atena).

% Reglas
esPadre(Padre, Hijo) :-
    esHombre(Padre),
    esDedendienteDirecto(Hijo, Padre).

esMadre(Madre, Hijo) :-
    esMujer(Madre),
    esDedendienteDirecto(Hijo, Madre).

esHijo(Hijo, Progenitor):-
    esHombre(Hijo),
    esDedendienteDirecto(Hijo, Progenitor).

esHija(Hija, Progenitor):-
    esMujer(Hija),
    esDedendienteDirecto(Hija, Progenitor).

esHermano(Persona1, Persona2) :-
    esHombre(Persona1),
    esPadre(Padre, Persona1),
    esPadre(Padre, Persona2),
    Persona1 \= Persona2.

esHermano(Persona1, Persona2) :-
    esHombre(Persona1),
    esMadre(Madre, Persona1),
    esMadre(Madre, Persona2),
    Persona1 \= Persona2.

esHermana(Persona1, Persona2) :-
    esMujer(Persona1),
    esPadre(Padre, Persona1),
    esPadre(Padre, Persona2),
    Persona1 \= Persona2.

esHermana(Persona1, Persona2) :-
    esMujer(Persona1),
    esMadre(Madre, Persona1),
    esMadre(Madre, Persona2),
    Persona1 \= Persona2.

esAbuelo(Abuelo, Nieto) :-
    esHombre(Abuelo),
    esPadre(Abuelo, PadreOMadre),
    esDedendienteDirecto(Nieto, PadreOMadre).

esAbuela(Abuela, Nieto) :-
    esMujer(Abuela),
    esMadre(Abuela, PadreOMadre),
    esDedendienteDirecto(Nieto, PadreOMadre).

% esDescendienteDe(Descendiente, Ancestro) es verdadero si Descendiente es descendiente directo o indirecto de Ancestro.
esDescendienteDe(Descendiente, Ancestro) :-
    esDedendienteDirecto(Descendiente, Ancestro).

esDescendienteDe(Descendiente, Ancestro) :-
    esDedendienteDirecto(Descendiente, Intermedio),
    esDescendienteDe(Intermedio, Ancestro).

    maximoAncestro(Ancestro) :-
        esDescendienteDe(_, Ancestro), % Asegura que Ancestro es un ancestro de alguien
        \+ (esDescendienteDe(_, PosibleAncestroSuperior), % Verifica que no hay un ancestro superior
            esDescendienteDe(Ancestro, PosibleAncestroSuperior)). % Ancestro debe ser descendiente de nadie más
%enseña

ensenaA(juan,'Base de datos II').
ensenaA(estela,'Redes I').
ensenaA(estela,'Inteligencia artificial').
ensenaA(maria,'Base de datos II').
ensenaA(maria,'Redes I').
ensenaA(maria,'Inteligencia artificial').

%asiste

asisteA(arturo,'Redes I').
asisteA(arturo,'Base de datos II').
asisteA(andres,'Redes i').
asisteA(andres,'Inteligencia Artificial').
asisteA(jose,'Redes I').
asisteA(jose,'Base de datos II').
asisteA(jose,'Inteligencia Artificial').
asisteA(karina,'Redes I').
asisteA(karina,'Inteligencia Artificial').
asisteA(mariel,'Inteligencia Artificial').

%1er paso Identificar las condiciones
%2do paso Identificar si es AND y OR
%3do Escribir Condiciones en prolog

esDocenteDe(Docente,Estudiante):-ensenaA(Docente,Materia),asisteA(Estudiante,Materia).
esCompaneroDe(EstudianteA,EstudianteB):-asisteA(EstudianteA,Materia),asisteA(EstudianteB,Materia).
ensena(juan, 'Base de datos II').
ensena(maria, 'Base de datos II').
ensena(maria, 'Redes I').
ensena(maria, 'IA').
ensena(estela, 'Redes I').
ensena(estela, 'IA').

asisteA(arturito, 'Base de datos II').
asisteA(arturito, 'Redes I').
asisteA(andres, 'Redes I').
asisteA(jose, 'Base de Datos II').
asisteA(jose, 'Redes I').
asisteA(jose, 'IA').
asisteA(karina, 'Redes I').
asisteA(karina, 'IA').
asisteA(mariel, 'IA').

% es docente de
% define el nombre y variable de la cabeza
esDocenteDe(Docente, Estudiante):-ensena(Docente, Materia),asisteA(Estudiante, Materia). 

% es pana de

esCompaDe(Estudiante, Materia):-asiste(EstudianteA, Materia),asiste(EstudianteB, Materia).

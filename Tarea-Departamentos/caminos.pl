% Hechos que definen ciudad
esCiudad(apolo).
esCiudad(cobija).
esCiudad(riberalta).
esCiudad(trinidad).
esCiudad(san_jose_de_chiquitos).
esCiudad(puerto_suarez).
esCiudad(uyuni).
esCiudad(villamontes).
esCiudad(sucre).
esCiudad(lago_popo).
esCiudad(ciudad_de_santa_cruz).
esCiudad(ciudad_de_la_paz).
esCiudad(ciudad_de_oruro).
esCiudad(ciudad_de_cochabamba).
esCiudad(ciudad_de_tarija).

% Hechos que definen los departamentos
esDepartamento(la_paz).
esDepartamento(pando).
esDepartamento(beni).
esDepartamento(santa_cruz).
esDepartamento(potosi).
esDepartamento(oruro).
esDepartamento(tarija).
esDepartamento(chuquisaca).
esDepartamento(cochabamba).

% Hechos que indican la capital de cada departamento
capital_departamental(sucre, chuquisaca).
capital_departamental(ciudad_de_la_paz, la_paz).
capital_departamental(cobija, pando).
capital_departamental(trinidad, beni).
capital_departamental(ciudad_de_santa_cruz, santa_cruz).
capital_departamental(potosi, potosi).
capital_departamental(ciudad_de_oruro, oruro).
capital_departamental(ciudad_de_tarija, tarija).
capital_departamental(ciudad_de_cochabamba, cochabamba).

% Hechos que indican que una ciudad pertenece a un departamento
pertenece_a(apolo, la_paz).
pertenece_a(ciudad_de_la_paz, la_paz).
pertenece_a(cobija, pando).
pertenece_a(riberalta, pando).
pertenece_a(trinidad, beni).
pertenece_a(san_jose_de_chiquitos, santa_cruz).
pertenece_a(puerto_suarez, santa_cruz).
pertenece_a(ciudad_de_santa_cruz, santa_cruz).
pertenece_a(uyuni, potosi).
pertenece_a(ciudad_de_oruro, oruro).
pertenece_a(villamontes, tarija).
pertenece_a(ciudad_de_cochabamba, cochabamba).
pertenece_a(sucre, chuquisaca).
pertenece_a(ciudad_de_tarija, tarija).

% Regla para encontrar ciudades destino desde un punto de origen (recursiva)
ciudades_destino_desde(CiudadOrigen, CiudadDestino) :-
    conectado_directamente(CiudadOrigen, CiudadDestino).
ciudades_destino_desde(CiudadOrigen, CiudadDestino) :-
    conectado_directamente(CiudadOrigen, CiudadIntermedia),
    ciudades_destino_desde(CiudadIntermedia, CiudadDestino).

% Regla para encontrar desde qué ciudades se puede llegar directamente a 'sucre' (recursiva)
ciudades_con_acceso_directo_a_sucre(CiudadOrigen) :-
    conectado_directamente(CiudadOrigen, sucre).
ciudades_con_acceso_directo_a_sucre(CiudadOrigen) :-
    conectado_directamente(CiudadOrigen, CiudadIntermedia),
    ciudades_con_acceso_directo_a_sucre(CiudadIntermedia).
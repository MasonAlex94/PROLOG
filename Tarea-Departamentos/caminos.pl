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

% Conexiones ciudades
conectado_directamente(cobija, apolo).
conectado_directamente(apolo, cobija).
conectado_directamente(riberalta, cobija).
conectado_directamente(ciudad_de_la_paz, apolo).
conectado_directamente(apolo, ciudad_de_la_paz).
conectado_directamente(ciudad_de_la_paz, oruro).
conectado_directamente(oruro, ciudad_de_la_paz).
conectado_directamente(ciudad_de_la_paz, cochabamba).
conectado_directamente(cochabamba, ciudad_de_la_paz).
conectado_directamente(ciudad_de_la_paz, trinidad).
conectado_directamente(ciudad_de_oruro, uyuni).
conectado_directamente(ciudad_de_oruro, sucre).
conectado_directamente(sucre, ciudad_de_cochabamba).
conectado_directamente(ciudad_de_cochabamba, sucre).
conectado_directamente(ciudad_de_santacruz, cochabamba).
conectado_directamente(uyuni, ciudad_de_tarija).
conectado_directamente(ciudad_de_tarija, uyuni).
conectado_directamente(ciudad_de_tarija, villamontes).
conectado_directamente(villamontes, ciudad_de_tarija).
conectado_directamente(ciudad_de_santacruz, san_jose_de_chiquitos).
conectado_directamente(puerto_suarez, san_jose_de_chiquitos).
conectado_directamente(san_jose_de_chiquitos, puerto_suarez).
conectado_directamente(ciudad_de_santa_cruz, trinidad).
conectado_directamente(ciudad_de_tarija, sucre).

% conexiones directas entre departamentos
conectado_directamente(la_paz, pando).
conectado_directamente(la_paz, oruro).
conectado_directamente(la_paz, cochabamba).
conectado_directamente(la_paz, beni).
conectado_directamente(pando, la_paz).
conectado_directamente(pando, beni).
conectado_directamente(beni, la_paz).
conectado_directamente(beni, pando).
conectado_directamente(beni, cochabamba).
conectado_directamente(beni, santa_cruz).
conectado_directamente(cochabamba, la_paz).
conectado_directamente(cochabamba, beni).
conectado_directamente(cochabamba, santa_cruz).
conectado_directamente(cochabamba, oruro).
conectado_directamente(cochabamba, potosi).
conectado_directamente(cochabamba, chuquisaca).
conectado_directamente(oruro, la_paz).
conectado_directamente(oruro, cochabamba).
conectado_directamente(oruro, potosi).
conectado_directamente(oruro, chuquisaca).
conectado_directamente(potosi, oruro).
conectado_directamente(potosi, cochabamba).
conectado_directamente(potosi, chuquisaca).
conectado_directamente(potosi, tarija).
conectado_directamente(chuquisaca, santa_cruz).
conectado_directamente(chuquisaca, cochabamba).
conectado_directamente(chuquisaca, potosi).
conectado_directamente(chuquisaca, tarija).
conectado_directamente(tarija, chuquisaca).
conectado_directamente(tarija, potosi).


% Consulta para encontrar a qué ciudades se puede viajar
ciudades_destino_desde(CiudadOrigen, CiudadDestino) :-
    conectado_directamente(CiudadOrigen, CiudadDestino).


% Consulta para encontrar desde qué ciudades se puede llegar directamente a 'sucre'
ciudades_con_acceso_directo_a_sucre(CiudadOrigen) :-
    conectado_directamente(CiudadOrigen, sucre).






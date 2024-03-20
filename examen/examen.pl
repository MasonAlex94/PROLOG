% atomos
maria.
juana.
jeremias.
electrodomesticos.
entretenimiento.
computadoras.
batidora.
lavadora.
parlantes.
consolas.
laptop.
escritorio.
verde.
blanco.
barato.
rojo.
malo.
caro.
bueno.
negro.
plateado.



% regla clientes
esCliente(maria).
esCliente(juana).
esCliente(jeremias).
% regla categoria
esCategoria(electrodomesticos).
esCategoria(entretenimiento).
esCategoria(computadoras).
esCategoria(batidora).
esCategoria(lavadora).
esCategoria(parlantes).
esCategoria(consolas).
esCategoria(laptop).
esCategoria(escritorio).

% regla solo productos

esProducto('LG-510').
esProducto('Samsung B125').
esProducto('LG Batimix').
esProducto('Samsung L 200').
esProducto('Bosa').
esProducto('LG').
esProducto('Xbox').
esProducto('Play Station').
esProducto('Dell').
esProducto('HP').
esProducto('Marca patito').

%Hechos

%Hecho de que pertenece a que
esElectrodomestico(batidora,electrodomesticos).
esElectrodomestico(lavadora,electrodomesticos).
esEntretenimiento(parlantes, entretenimiento).
esEntretenimiento(consolas, entretenimiento).
esComputadora(laptop,computadoras).
esComputadora(escritorio,computadoras).

esBatidora('LG-510',batidora).
esBatidora('Samsung B125',batidora).
esLavadora('LG Batimix',lavadora).
esLavadora('Samsung L 200',lavadora).
esParlante('Bose',parlantes).
esParlante('LG',parlantes).
esConsola('Xbox',consolas).
esConsola('Play Station',consolas).
esLaptop('Dell',laptop).
esLaptop('HP',laptop).
esEscritorio('Dell',escritorio).
esEscritorio('HP',escritorio).
esEscritorio('Marca patito',escritorio).

%xbox y play
esModelo('Xbox', 'Xbox 360').
esModelo('Xbox', 'Xbox One').
esModelo('Play Station', 'PS 2').
esModelo('Play Station', 'PS 3').

%Laptops y escritorio
esDell('Omen 560', 'Dell').
esHP('Pavilon15a','HP').
esMarcaPato('Destrunaitor 500','Marca patito').

%hechos color negro
esNegro('Samsung B125'). 
esNegro('Samsung L 200'). 
esNegro('PS 3'). 
esNegro('PS 2').
esNegro('Bosa').  
%hecho color blanco 
esBlanco('LG-510'). 
esBlanco('Bosa'). 
%hecho color rojo
esRojo('LG Batimix').
esRojo('LG').
% hecho color verde
esVerde('Xbox 360').
esVerde('Xbox One').
%hecho plateado
esPlateado('Omen 560').
esPlateado('Pavilon15a').
esPlateado('Destrunaitor 500').


% es bueno
esBueno('LG-510').
esBueno('Samsung L 200').
esBueno('Xbox One').
esBueno('PS 3').
esBueno('PS 2').
esBueno('Pavilon15a').
esBueno('Destrunaitor 500').
% es malo
esMalo('Samsung B125').
esMalo('LG Batimix').
esMalo('LG').
esMalo('Xbox 360').
esMalo('Omen 560').

% es caro
esCaro('Samsung B125').
esCaro('Samsung L 200').
esCaro('Bosa').
esCaro('Xbox One').
esCaro('Pavilon15a').

% es barato
esBarato('LG-510').
esBarato('LG Batimix').
esBarato('Xbox 360').
esBarato('PS 2').
esBarato('PS 3').
esBarato('Omen560').
esBarato('Destrunaitor 500').


%gustos maria

gustoMaria(maria, []) :- esCliente(maria).
gustoMaria(maria, [Producto|RestoProductos]) :-
    (esVerde(Producto), esCliente(maria) ; 
    esBlanco(Producto), esCliente(maria) ; 
    (esBlanco(Producto), esCategoria(entretenimiento), esCliente(maria)) ; 
    (esRojo(Producto), esCategoria(electrodomesticos), esCliente(maria)) ; 
    (esMalo(Producto), esCategoria(electrodomesticos), esCliente(maria)) ; 
    (esCaro(Producto), esCliente(maria))),
    gustoMaria(maria, RestoProductos).

% a partir de aca me esta fallando pero con maria si funciona la consulta
% gusto juana
gustoJuana(juana, []) :- esCliente(juana).
gustoJuana(juana, [Producto|RestoProductos]) :-
    (esNegro(Producto), esCaro(Producto), esCategoria(entretenimiento), esCliente(juana) ; 
    (esPlateado(Producto), esBueno(Producto), esCategoria(computadoras), esCliente(juana) ; 
    (esBarato(Producto), esProducto(Producto), esCliente(juana))),
    gustoJuana(juana, RestoProductos).
% Gustos de Jeremías
gustoJeremias(jeremias, []) :- esCliente(jeremias).
gustoJeremias(jeremias, [Producto|RestoProductos]) :-
    (esBueno(Producto), esCaro(Producto), esCategoria(electrodomesticos), esCliente(jeremias) ; 
    (esBarato(Producto), esBueno(Producto), esCliente(jeremias)),
    gustoJeremias(jeremias, RestoProductos).



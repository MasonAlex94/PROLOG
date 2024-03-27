esProducto("LG-510").
esProducto("Samsung B125").
esProducto("LG Batimix").
esProducto("Samsung L200").

esProducto("Bose",parlantes).
esProducto("LG",parlantes).


esCategoria(batidora).
esCategoria(lavadora).
esCategoria(parlantes).

esCategoria(electrodomestico).
esCategoria(entretenimiento).

esCliente(maria).

estaCategoria(batidora,electrodomestico).
estaCategoria(lavadora,electrodomestico).

estaCategoria(parlantes,entretenimiento).

estaCategoria("LG-510",batidora).
estaCategoria("Samsung B125",batidora).

estaCategoria("LG Batimix",lavadora).
estaCategoria("Samsung L200",lavadora).

estaCategoria("Bose",parlantes).
estaCategoria("LG",parlantes).

tieneCaracteristica("LG-510",blanco).
tieneCaracteristica("LG-510",barato).
tieneCaracteristica("LG-510",bueno).

tieneCaracteristica("Samsung B125",negro).
tieneCaracteristica("Samsung B125",caro).
tieneCaracteristica("Samsung B125",malo).

tieneCaracteristica("LG Batimix",rojo).
tieneCaracteristica("LG Batimix",barato).
tieneCaracteristica("LG Batimix",malo).

tieneCaracteristica("Samsung L200",negro).
tieneCaracteristica("Samsung L200",caro).
tieneCaracteristica("Samsung L200",bueno).

tieneCaracteristica("Bose",blanco).
tieneCaracteristica("Bose",caro).
tieneCaracteristica("Bose",negro).

tieneCaracteristica("LG",rojo).
tieneCaracteristica("LG",barato).
tieneCaracteristica("LG",malo).

% reglas
productoDentroCategoria(Producto, Categoria):- esCategoria(Categoria),esProducto(Producto), estaCategoria(Producto, Categoria); esCategoria(Categoria),esCategoria(Producto), estaCategoria(Producto, Categoria).
productoDentroCategoria(Producto, Categoria):- estaCategoria(SubCategoria, Categoria), estaCategoria(SubCategoria, Categoria).

tieneCaracteristica(Producto):-esProducto(Producto),tieneCaracteristica(Producto,verde),productoDentroCategoria(Producto,producto).
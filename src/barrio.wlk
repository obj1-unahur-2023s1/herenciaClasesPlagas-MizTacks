import elementos.*

class Barrio {
	const property barrio = []
	
	method agregarElemento(elem) = barrio.add(elem)
	method sacarElemento(elem) = barrio.remove(elem)
	
	method cantidadBuenos() = barrio.count({e => e.esBueno()})
	method cantidadNoBuenos() = barrio.count({e => !e.esBueno()})
	
	method esCopado() = self.cantidadBuenos() > self.cantidadNoBuenos()
	
	
	
	method listaDeBuenos() = barrio.map({ e => e.esBueno()})
	
	method elementoEsBueno(elemento) = self.listaDeBuenos().any({e=> e == elemento})
	
	
}

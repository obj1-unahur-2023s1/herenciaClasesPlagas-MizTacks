class Hogar{
	var property mugre 
	var property confort = 0
	method esBueno()= confort >= mugre/2
	
}

class Huerta{
	var property produccion = 0

	method esBueno()= produccion > nivelDeProduccion.nivel()
	
}

object nivelDeProduccion{
	var property nivel = 0
}

class Mascota{
     var property salud = 0
     method esBueno() = salud > 250	
 }
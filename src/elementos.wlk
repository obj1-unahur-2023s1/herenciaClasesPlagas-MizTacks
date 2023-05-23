import plagas.*

class Hogar{
	var property mugre 
	var property confort = 0
	method esBueno()= confort/2 <= mugre
	
	method recibirAtaque(unaPlaga){
		mugre += unaPlaga.nivelDeDano()
	}
}

class Huerta{
	var property produccion = 0

	method esBueno()= produccion > nivelDeProduccion.nivel()
	method recibirAtaque(unaPlaga){
		produccion += (unaPlaga.nivelDeDano())*0.1
		if (unaPlaga.transmiteEnfermedades()){
			produccion = 0.max(produccion-10)
		}
		
	}
	
}

object nivelDeProduccion{
	var property nivel = 0
}

class Mascota{
     var property salud = 0
     method esBueno() = salud > 250	
     method recibirAtaque(unaPlaga){
          if (unaPlaga.transmiteEnfermedades()){salud = 0.max(salud-unaPlaga.nivelDeDano())}
	}
 }
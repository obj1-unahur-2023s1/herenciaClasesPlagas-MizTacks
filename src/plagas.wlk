import elementos.*

class Plaga{
	var property poblacion
	method transmiteEnfermedades() = poblacion >10
	method atacar(objetivo){
		poblacion *= 1.1
		objetivo.recibirAtaque(self)
	}
}


class Cucarachas inherits Plaga{
   var property pesoPromedio
   method nivelDeDano() = poblacion/2
   override method transmiteEnfermedades() = super() and pesoPromedio > 9
   
   override method atacar(elemento){
   	  super(elemento)
   	  pesoPromedio +=2
   }

}


class Pulgas inherits Plaga{
   method nivelDeDano() = poblacion*2

}

class Garrapatas inherits Pulgas{
	override method atacar(objetivo){
		super(objetivo)
		poblacion *= 1.2
	}
}

/* 
class Garrapatas inherits Plaga{
   method nivelDeDano() = poblacion*2
}
*/
class Mosquitos inherits Plaga{
   method nivelDeDano() = poblacion
   override method transmiteEnfermedades() = super() and poblacion % 3 == 0

}
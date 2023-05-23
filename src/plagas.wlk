class Plaga{
	var property poblacion
}


class Cucarachas inherits Plaga{
   var property pesoPromedio
   method nivelDeDano() = poblacion/2
   method transmiteEnfermedades() = poblacion > 10 && pesoPromedio > 9

}


class Pulgas inherits Plaga{
   method nivelDeDano() = poblacion*2
   method transmiteEnfermedades() = poblacion > 10

}

class Garrapatas inherits Plaga{
   method nivelDeDano() = poblacion*2
   method transmiteEnfermedades() = poblacion > 10

}

class Mosquitos inherits Plaga{
   method nivelDeDano() = poblacion
   method transmiteEnfermedades() = poblacion > 10 && poblacion % 3 == 0

}
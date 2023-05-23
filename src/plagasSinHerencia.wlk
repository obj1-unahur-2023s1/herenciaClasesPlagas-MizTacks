class Cucarachas{
var property poblacion
var property pesoPromedio
method nivelDeDano() = poblacion/2
method transmiteEnfermedades() = poblacion > 10 and pesoPromedio > 9

}


class Pulgas{
var property poblacion
method nivelDeDano() = poblacion*2
method transmiteEnfermedades() = poblacion > 10

}

class Garrapatas{
var property poblacion
method nivelDeDano() = poblacion*2
method transmiteEnfermedades() = poblacion > 10

}

class Mosquitos{
var property poblacion
method nivelDeDano() = poblacion
method transmiteEnfermedades() = poblacion > 10 and poblacion % 3 == 0

}
 //Sin Herencia
 
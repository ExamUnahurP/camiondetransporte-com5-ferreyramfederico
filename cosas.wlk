object kinghtRider {
    var peso = 500
    var peligrosidad = 10
    method peso() = return peso
    method nivelPeligrosidad() = return peligrosidad   
}

object bumblebee(){
    var peso = 800
    var peligrosidad = 15
    var comoEsta = false
    method peso() = return peso
    method nivelPeligrosidad() = return peligrosidad
    method cambiarPeligrosidad()[
        if comoEsta == true{
            peligrosidad = 15
        }else{
            peligrosidad = 30
        }
    ]    
}

object paqueteDeLadrillos(){
    var peso = 2
    var peligrosidad = 2
    method peso() = return peso
    method nivelPeligrosidad() = return peligrosidad
    method cambiarPeso(cant){
        peso = cant*2
    }
}

object arenaAGradel(){
    var peso = 0
    var peligrosidad = 1
    method peso()= return peso
    method nivelPeligrosidad() = return peligrosidad
    method cambiarPeso(cant){
        peso = cant
    }
}

object bateriaAntiaerea(){
    var peso = 200
    var peligrosidad = 0
    var tieneMisiles = false

}
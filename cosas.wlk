object kinghtRider {
    var peso = 500
    var peligrosidad = 10
    method peso() = peso
    method nivelPeligrosidad() = peligrosidad   
}

object bumblebee(){
    var peligrosidad = 15
    var transformadoAuto = true
    method nivelPeligrosidad() = peligrosidad
    method peso() = 800
    method transformarce() {transformadoAuto = not transformadoAuto}
    method cambiarPeligrosidad()[
        if (transformadoAuto){
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
    method peso()= return peso
    method nivelPeligrosidad()= return peligrosidad
    method tieneMisles()[
        if tieneMisiles{
            peligrosidad = 100
            peso = 300
        }else{
            peligrosidad = 0
            peso = 200
        }
    ]
}

object contenedorPortuario(){
    var peso = 100
    var peligrosidad = 0
    method peso() = return peso
    method nivelPeligrosidad()=return peligrosidad
    method meterCosaDentro(cosa){
        peso = peso + cosa.peso()
        peligrosidad = peligrosidad + cosa.nivelPeligrosidad()
    }
}

object residuosRadioactivos(){
    var peso = 0
    var peligrosidad = 200
    method peso()= return peso
    method nivelPeligrosidad()=return peligrosidad
    method cambiarPeso(cant){
        peso = cant
    }
}

object embalajeDeSeguridad(cosa){
    var peso = cosa.peso()
    var peligrosidad = cosa.nivelPeligrosidad() / 2
    method peso() = return peso
    method nivelPeligrosidad() = return peligrosidad
}
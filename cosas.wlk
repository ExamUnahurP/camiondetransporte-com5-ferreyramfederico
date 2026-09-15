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
    method cambiarPeligrosidad(){
        if (transformadoAuto){
            peligrosidad = 15
        }else{
            peligrosidad = 30
        }
    }
}

object paqueteDeLadrillos(){
    var cantidadTotalLadrillos = 1
    method cantidadDeLadrillos() = cantidadTotalLadrillos
    method peso() = 2 * cantidadTotalLadrillos
    method peligrosidad() = 2
}


object arenaAGradel(){
    var peso = 0
    method peso() = peso
    method cambiarPeso(pesoNuevo) {peso = pesoNuevo}
    method peligrosidad() = 1
}

object bateriaAntiaerea(){
    var peso = 200
    var peligrosidad = 0
    var tieneMisiles = false
    method peso() =  peso
    method nivelPeligrosidad() = peligrosidad
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
    var cosasAdentro = []
    method cargar(cosas) {cosasAdentro.add(cosas)}
    method descargar(cosas) {cosasAdentro.remove(cosas)}
    method pesoCosasAdentro() = cosasAdentro.sum({c => c.peso()})
    method peso(cosas) = 100 + self.cosasAdentro()
    method nivelPeligrosidad()
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
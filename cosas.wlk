object kinghtRider {
    var peso = 500
    var peligrosidad = 10
    method peso() = peso
    method nivelPeligrosidad() = peligrosidad   
}

object bumblebee {
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

object paqueteDeLadrillos {
    var cantidadTotalLadrillos = 1
    method cantidadDeLadrillos() = cantidadTotalLadrillos
    method cambiarCantidadDeLadrillos(nuevoPeso) { cantidadTotalLadrillos = nuevoPeso}
    method peso() = 2 * cantidadTotalLadrillos
    method nivelPeligrosidad() = 2
}


object arenaAGradel {
    var peso = 0
    method peso() = peso
    method cambiarPeso(pesoNuevo) {peso = pesoNuevo}
    method nivelPeligrosidad() = 1
}

object bateriaAntiaerea {
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

object contenedorPortuario {
    var cosasAdentro = []
    method cargar(listaDeElementos) {cosasAdentro.addAll(listaDeElementos)}
    method pesoCosasAdentro() = cosasAdentro.sum({c => c.peso()})
    method peso() = 100 + self.pesoCosasAdentro()
    method nivelMaximo() = cosasAdentro.max(c => c.nivelPeligrosidad())
    method nivelPeligrosidad() {
        if(cosasAdentro.isEmpty()){
            return 0
        } else {
            return self.nivelMaximo()
        }
    }
}

object residuosRadioactivos {
    var peso = 0
    method peso() = peso 
    method agregarPeso(nuevoPeso) {peso += nuevoPeso}
    method nivelPeligrosidad() = 200

}

object embalajeDeSeguridad {
    const embala = []
    method peso() = embala.sum{c => c.peso()}
    method nivelPeligrosidad() = embala.sum{c => c.nivelPeligrosidad} / 2
}
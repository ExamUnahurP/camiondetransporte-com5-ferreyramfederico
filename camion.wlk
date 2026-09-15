object camion {
    const cosasDelCamion = []
    method cargar(cosa) {cosasDelCamion.add(cosa)}
    method descargar(cosa) {cosasDelCamion.remove(cosa)}
    method pesoTotal() = 1000 + self.pesoDeCarga()
    method pesoDeCarga() = cosasDelCamion.sum({c => c.peso()}) 
    method pesosDeCargasPares() = cosasDelCamion.all({c => c.peso().even()})
    method cosaPesa(peso) = cosasDelCamion.any({c => c.peso() == peso})
    method cosasPeligrosas() = cosasDelCamion.filter({c => c.esPeligroso()})
    method primerCosaPeligrosa(nivel) = self.cosasPeligrosas.find({c => c.peligrosidad() == nivel})
    method supera
    method superaPeligrosidadDe(cosa) = self.cosasPeligrosas()
}
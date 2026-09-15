object camion {
    const cosasDelCamion = []
    method cargar(cosa) {cosasDelCamion.add(cosa)}
    method descargar(cosa) {cosasDelCamion.remove(cosa)}
    method pesoTotal() = 1000 + self.pesoDeCarga()
    method pesoDeCarga() = cosasDelCamion.sum({c => c.peso()}) 
    method pesosDeCargasPares() = cosasDelCamion.all({c => c.peso().even()})
    method cosaPesa(peso) = cosasDelCamion.any(c,  => c.peso() == peso) 
}
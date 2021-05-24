class Farolito {
	
	method peso() { return 0.5 }
	method carga() { return 0 }
	method luminoso() { return true }
}

class Canasto {
	var property volumen = 0 
	
	method peso() { return volumen / 10 }
	method carga() { return volumen * 2 }
	method luminoso() { return false }
}
class MorralDeBici {
	var property largo = 0
	var property tieneOjoDeGato = false
	
	method peso() { return 1.2 }
	method carga() { return largo / 3 }
	method luminoso() { return tieneOjoDeGato }
}
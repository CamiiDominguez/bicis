import bicis.*
import accesorios.*

class Deposito {
	const property col = []
	
	method rapidas() { return col.filter({bici => bici.velocidadDeCrucero() > 25}) }
	method marca() { return col.map({bici => bici.marca()}) }
	method nocturno() { return col.all({bici => bici.tieneLuz()}) }
	method soportaCargaPesada(kilos) { return col.any({b => b.carga() > kilos}) }
	method marcaMasRapida() { return col.max({b => b.velocidadDeCrucero()}).marca() }
	method bicisLargas() { return col.filter({b => b.largo() > 170}) }
	method cargaTotalDeBicisLargas() { return self.bicisLargas().sum({b => b.carga()}) }
	method bicisSinAccesorios() { return col.count({b => b.sinAccesorios()}) }
}

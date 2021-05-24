import bicis.*
import accesorios.*

class Deposito {
	const property col = []
	
	method rapidas() { return col.filter({bici => bici.velocidadDeCrucero() > 25}) }
	method marca() { return col.map({bici => bici.marca()}) }
	method nocturno() { return col.all({bici => bici.tieneLuz()}) }
	method soportaCargaPesada(kilos) { return col.any({b => b.carga() > kilos}) }
}

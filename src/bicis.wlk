import accesorios.*

class Bici {
	const property accesorios = []
	var property rodado = 0
	var property largo = 0
	var property marca = "" 
	

	method altura() { return rodado * 2.5 + 15 }
	method velocidadDeCrucero() { return if (largo > 120) { rodado + 6 } else { rodado + 2 } }
	method carga() { return accesorios.map({a => a.carga()}).sum() }
	method peso() { return rodado / 2 + accesorios.map({a => a.peso()}).sum() }
	method tieneLuz() { return accesorios.any({a => a.luminoso()}) }
	method accesoriosLivianos() { return accesorios.count({a => a.peso() < 1})}
}
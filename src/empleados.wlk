import categorias.*
import bonos.*

object pepe {

	var categoria = cadete // cadete o gerente
	var bonoResultado = bonoResultadoNulo // bonoResultadoNulo, porcentual, fijo 
	var bonoPresentismo = bonoPresentismoNulo // demagogico, ajuste, bonoPresentismoNulo 
	var faltas = 0

	method sueldo() {
		return self.neto() + self.extraBonoResultado() + self.extraBonoPresentismo()
	}

	method faltas(_faltas) {
		faltas = _faltas
	}

	method faltas() {
		return faltas
	}

	method neto() { // cadete o gerente
		return categoria.neto() // categoria.neto()
	}

	method extraBonoPresentismo() {
		return bonoPresentismo.valor(self)
	}

	method categoria(_categoria) {
		categoria = _categoria
	}

	method bonoPresentismo(_bonoPresentismo) {
		bonoPresentismo = _bonoPresentismo
	}

	method bonoResultado(_bonoResultado) {
		bonoResultado = _bonoResultado
	}

	method extraBonoResultado() {
		return bonoResultado.valor(self)
	}

}

object sofia {

	var categoria = cadete
	var bonoResultado = bonoResultadoNulo

	method sueldo() {
		return self.neto() + self.extraBonoResultado()
	}

	method neto() {
		return categoria.neto() * 1.3
	}

	method extraBonoResultado() {
		return bonoResultado.valor(self)
	}

	method categoria(_categoria) {
		categoria = _categoria
	}

	method bonoResultado(_bonoResultado) {
		bonoResultado = _bonoResultado
	}

}


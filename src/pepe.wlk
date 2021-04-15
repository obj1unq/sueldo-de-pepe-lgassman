object pepe {
	
	var categoria = cadete //cadete o gerente
	var bonoResultado = fijo //bonoResultadoNulo, porcentual, fijo 
	var bonoPresentismo = normal // demagogico, ajuste, presentismoNulo 
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
	
	method neto() {//cadete o gerente
		return categoria.neto()//categoria.neto()
	}
	
	method extraBonoPresentismo() {
		return bonoPresentismo.valor()
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

object fijo {
	method valor(empleado) {
		return 800
	}
}

//BONOS PRESENTISMO
object bonoPresentismoNulo {
	
	method valor(empleado) {
		return 0
	}
}

object demagogico {
	method valor(empleado) {
		return if (empleado.neto() < 18000) {500} else {300}
	}
}

object ajuste {
	method valor(empleado) {
		return if ( empleado.faltas() == 0 ) 300 else 0 
	}
}

object normal {
	method valor(empleado) {
		return (2000 - empleado.faltas() * 1000).max(0)
	}
}


//BONOS RESULTADO
object bonoResultadoNulo {
	method valor(empleado) {
		return 0
	}
}

object bonoPorcentual {
	method valor(empleado) {
		return empleado.neto() * 0.1
	}
}

//CATEGORIAS
object gerente {
	var neto = 15000
	method neto() {
		return neto	
	}
	method neto(_neto) {
		neto = _neto
	}
}

object cadete {
	method neto() {
		return 20000
	}
}

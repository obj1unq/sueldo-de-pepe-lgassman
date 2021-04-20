
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

object fijo {
	method valor(empleado) {
		return 800
	}
}

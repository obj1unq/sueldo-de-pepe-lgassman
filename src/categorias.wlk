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

object vendedor {

	const netoBase = 16000
	var muchasVentas = false

	method neto() {
		return if (muchasVentas) {
			netoBase * 1.25
		} else {
			netoBase
		}
	}

	method activaAumentoPorMuchasVentas() {
		muchasVentas = true
	}

	method desactivaAumentoPorMuchasVentas() {
		muchasVentas = false
	}

}

object medioTiempo {

	var categoriaBase

	method categoriaBase(categoria) {
		categoriaBase = categoria
	}

	method neto() {
		return categoriaBase.neto() / 2
	}

}


object pepe {
	var categoria = gerente
    var cantidadDeFaltas = 0
    var bonoResultado = bonoNulo
    var bonoPresentismo = bonoNulo

    method cantidadDeFaltas() { /*retorno la cantidad de faltas que tiene el empleado(pepe) */
      return cantidadDeFaltas
    }

    method sueldoNeto() { /*retorno el saldo neto segun la categoria que tenga el empleadpo(pepe) */
      return categoria.sueldoNeto()
    }

    method sueldo() {
      return self.sueldoNeto() + bonoResultado.monto(self) + bonoPresentismo.monto(self) /*sueldo = SN + BR + BP*/
    }

    method cantidadDeFaltas(_faltas) { /*con un setter cambio la cantidad de faltas */
      cantidadDeFaltas = _faltas
    }

    method cambiarBonoR(_bonoR) { /*con un setter cambio el bono resultado */
      bonoResultado = _bonoR
    }

    method cambiarBonoP(_bonoP) { /*con un setter cambio el bono presentismo */
      bonoPresentismo = _bonoP
    }

    method cambiarCategoria(_categoria) { /*con un setter cambio la categoria que tendra el empleado(pepe) */
      categoria = _categoria
    }
}

object gerente {
    method sueldoNeto(){
        return 15000
    }
}

object cadete {
    method sueldoNeto(){
        return 20000
    }
}

object bonoPorcentaje {
  method monto(empleado) {
    return empleado.sueldoNeto() * 10 / 100
  }
}

object bonoMontoFijo {
  method monto(empleado){
    return 800
  }
}

object bonoNulo {
  method monto(empleado) {
    return 0
  }
}

object bonoPresentismoNormal {
  method monto(empleado) {
    return if (empleado.cantidadDeFaltas() == 0) {
        2000
    } else {
      if (empleado.cantidadDeFaltas() == 1) {
        1000
      } else {
        0
      }
    }
  }
}

object bonoPresentismoAjuste {
  method monto(empleado) {
    return if (empleado.cantidadDeFaltas() == 0){
        100
    } else {
        0
    }
  }
}

object bonoPresentimoDemagogico {
  method monto(empleado) {
    return if (empleado.sueldoNeto() < 18000){
        500
    } else {
        300
    }
  }
}

object moria {
  var categoria = gerente
  var bonoResultado = bonoNulo

  method sueldoNeto() {
    return categoria.sueldoNeto() * 1.3
  }

  method sueldoo() {
    return self.sueldoNeto() + bonoResultado.monto(self)
  }

  method cambiarBonoR(_bonoR) { /*con un setter cambio el bono resultado */
      bonoResultado = _bonoR
  }

  method cambiarCategoria(_categoria) { /*con un setter cambio la categoria que tendra el empleado(pepe) */
      categoria = _categoria
  }
}

object vendedor{
  var aumentoPorMuchasVentas = false
  method sueldoNeto() {
    return if (aumentoPorMuchasVentas){
      16000 * 1.25
    }
    else {
      16000
    }
  }

  method activarAumentoPorMuchasVentas() {
    aumentoPorMuchasVentas = true
  }

  method desactivarAumentoPOrMUchasVetas() {
    aumentoPorMuchasVentas = true
  }
}

object medioTiempo{
  var categoria = gerente

  method categoriaBase(_categoria) {
    categoria = _categoria
  }

  method sueldoNeto(){
    return categoria.sueldoNeto() / 2
  }
}

object roque{
  var bonoResultado = bonoNulo

  method sueldo() {
    return self.sueldoNeto() + bonoResultado.monto(self) + 9000
  }

  method sueldoNeto() {
    return 28000
  }

  method cambiarBonoR(_bonoR) { /*con un setter cambio el bono resultado */
      bonoResultado = _bonoR
  }
}

object ernesto {
  var sueldoNeto = 0
  var bonoPresentismo = bonoNulo

  method cambiarSueldoAlDe(empleado) {
    sueldoNeto = empleado.sueldoNeto()
  }

  method sueldoNeto(){
    return sueldoNeto
  } 

  method sueldo() {
    return self.sueldoNeto() + bonoPresentismo.monto(self)
  }

  method cambiarBonoP(_bonoP) { /*con un setter cambio el bono presentismo */
      bonoPresentismo = _bonoP
  }

  method cantidadDeFaltas() {
    return 0
  }
}




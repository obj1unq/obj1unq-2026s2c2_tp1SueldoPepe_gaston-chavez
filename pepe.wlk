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


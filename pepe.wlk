object pepe {
	

    var cantidadDeFaltas = 0
    var bonoResultado = 0
    var bonoPresentismo = 0
    method sueldoNeto(){

    }
    
    method sueldo(categoria){
        sueldo = categoria.neto() + bonoResultado + bonoPresentismo
    }

    method cantidadDeFaltas(){
        return cantidadDeFaltas
    }

    method cantidadDeFaltas(_cantidad){
        cantidad = _cantidad
    }
}

object gerente {
    method neto(){
        return 15000
    }
}

object cadete {
    method neto(){
        return 20000
    }
}

object bonoPorcentaje(){
    method monto(empleado){
         
    }
}

object montoFijo(){
    method monto(empleado){
        return 800
    }
}

/*### Bono por presentismo */
object bonoNulo(){
    method monto(empledo){
        return 0
    }
}

object bonoNormal(){
    monto(empleado){
       
    }
}

object bonoAjuste(){
    method monto(empleado){
       
    }
}

object bonoDemagogico(){
    method monto(empleado){
        
    }
}
//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  var dinero = 0
  
  method sueldo() {
    return sueldo
  }

  method cambierSueldo(_sueldo) {
    sueldo = _sueldo
  }

  method gastar(cuanto) {
    dinero -= cuanto
  }

  method deuda() = dinero.min(0).abs()
  
  method dinero() = dinero.max(0)

  method cobrarSueldo() {
    dinero += sueldo
  }
}

object baigorria {
  var precioEmpanada = 15
  var empanadasVendidas = 0
  var totalcobrado = 0
  
  method empanadasVendidas(cantidad) {
    empanadasVendidas = cantidad
  }
  
  method precioEmpanada(_precioEmpanada) {
    precioEmpanada = _precioEmpanada
  }
  
  method sueldo() = empanadasVendidas * precioEmpanada

  method cobrarSueldo() {
    totalcobrado += self.sueldo()
    empanadasVendidas = 0
  }

}

object gimenez {
  var fondo = 300000
  
  method importeActual(empleado) {
    empleado.cobrarSueldo()
    fondo -= empleado.sueldo()
  }
}
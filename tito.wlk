object tito {
  var bebida = null
  var cantidad = 0
  method inercia() {
    return(
      490
    )
  }
  method peso(){
    return(
      80
    )
  }
  method consumir(unaCantidad, unaBebida){
    bebida = unaBebida
    cantidad = unaCantidad
  }
  method velocidad(){
    return(
      (bebida.rendimiento(cantidad) * self.inercia()) / self.peso()
    )
  }
}

object whisky{
  method rendimiento(unaCantidad){
    return(
      0.9**unaCantidad
    )
  }
}

object terere {
  method rendimiento(unaCantidad) {
    return(
      1.max(0.1*unaCantidad)
    )
  }
}

object cianuro {
  method rendimiento(unaCantidad) {
    return(
      0
    )
  }
}

object licuado {
  const nutrientes = []
  method agregar(unaCantidadNutrientes){
    nutrientes.add(unaCantidadNutrientes)
  }
  method rendimiento(unaCantidad) {
    return(
      nutrientes.sum()*unaCantidad
    )
  }
}

object aguaSaborizada {
  var bebidaAdicional = null
  const rendimientoAgua = 1
  method cambiarBebida(unaBebida){
    bebidaAdicional = unaBebida
  }
  method rendimiento(unaCantidad){
    return(
      rendimientoAgua + (bebidaAdicional.rendimiento(unaCantidad)*0.25)
    )
  }
}

object coctel {
    const bebidas = []
    method agregarBebida(unaBebida) {
      bebidas.add(unaBebida)
    }
    method rendimiento(unaCantidad) {
      bebidas.sum{bebida=>bebida.rendimiento(unaCantidad)}
    }
}

object coctelSuave {
  const bebidas = []
  method agregarBebida(unaBebida) {
    bebidas.add(unaBebida)
  }
  method rendimiento(unaCantidad){
    const bebidasMayores =[]
    bebidas.forEach{bebida => 
      if(bebida.rendimiento(unaCantidad)>0.5){
        bebidasMayores.add(bebida)
      }
    }
    return(bebidasMayores.sum{bebida=>bebida.rendimiento(unaCantidad)})
  } 
}
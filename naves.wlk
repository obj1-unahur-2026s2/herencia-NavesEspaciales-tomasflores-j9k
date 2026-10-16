class Nave {

  var velocidad
  var direccion = 0
  combustible = 0

  method acelerar(velocidadASubir) = (velocidad + velocidadASubir).min(100000)

  method desacelerar(velocidadABajar) = (velocidad - velocidadABajar).max(0)

  method irHaciaElSol() = 
            direccion = - 10

  method escaparDelSol() = 
            direccion = 10

  method ponerseParaleloAlSol() =
            direccion = 0

  method acercarseUnPocoAlSol() = 
            direccion = (direccion - 1).max(-10)

  method alejarseUnPocoDelSol() = 
            direccion = (direccion + 1).min(10)

  method cargarCombustible(cantidad) = 
                  combustible = combustible + cantidad

  method descargarCombustible(cantidad) = 
                  combustible = combustible - cantidad
}


class Naves-baliza inherits Nave {
  color baliza = "color"

  method cambiarColorDeBaliza(colorNuevo) = baliza = "colorNuevo"

  method prepararViaje() = 
        cambiarColorDeBaliza(Verde)
        overrited method ponerseParaleloAlSol()
        overrited method cargarCombustible(30000) 
        method acelerar(5000)
}


class Naves-Pasajeros inherits Nave {

  var cantidadDeRaciones =  0
  var cantidadBebidas = 0

  method cargarComida(cantidad) = cantidadDeRaciones = cantidadDeRaciones + cantidad

  method descargarComida(cantidad) = cantidadDeRaciones = cantidadDeRaciones - cantidad

  method cargarBebida(cantidad) = cantidadBebidas = cantidadBebidas + cantidad

  method descargarBebida(cantidad) = cantidadBebidas = cantidadBebidas - cantidad

  method prepararViaje() = 
          cargarComida(4)
          cargarBebida(6)
          overrited method acercarseUnPocoAlSol()
}

class Naves-Combate inherits Nave {

  var invisibilidad = false
  var misilesDesplegadis = 0
  const mensajes = []
    
    method ponerseVisible() = invisibilidad = false
    method ponerseInvisible() = invisibilidad = true
    method estaInvisible() =  invisibilidad 
    
    method desplegarMisiles() = 
            misilesDesplegados = misilesDesplegados + 1
    method replegarMisiles() = 
            misilesDesplegados = (misilesDesplegados - 1)max(0)
    method misilesDesplegados() = 
            misilesDesplegados = 0

    method emitirMensaje(mensaje) = mensajes.add("mensaje")
    method mensajesEmitidos() = mensajes.sum()
    method primerMensajeEmitido()  = mensajes.first()
    method ultimoMensajeEmitido() = mensajes.last()
    method esEscueta() = mensajes.isEmpty()
    method emitioMensaje(mensaje) = mensajes.contains("mensaje")

    method prepararViaje() =
          ponerseVisible()
          replegarMisiles()
          overrited acelerar(15000)
          emitirMensaje("Saliendo en mision")
}

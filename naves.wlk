class Nave {

  var velocidad
  const direccion 

  method acelerar() = (velocidad + velocidadASubir).min(100000)

  method desacelerar() = (velocidad - velocidadABajar).max(0)

  method irHaciaElSol() =

  method escaparDelSol() = 

  method ponerseParaleloAlSol =

  method acercarseUnPocoAlSol() = 

  method alejarseUnPocoDelSol() = 
  
}

class Naves-baliza inerethed Nave {
  color baliza = 

  method cambiarColorDeBaliza(colorNuevo) = baliza = "colorNuevo"
}

class Naves-Pasajeros inerethed Nave {

  var cantidadDeRaciones =  0
  var cantidadBebidas = 0

  method cargarComida(comida) = cantidadDeRaciones = cantidadDeRaciones + comida

  method descargarComida(comida) = cantidadDeRaciones = cantidadDeRaciones - comida

  method cargarComida(bebida) = cantidadBebidas = cantidadBebidas + bebida

  method descargarComida(bebida) = cantidadBebidas = cantidadBebidas - bebida

}

class Naves-Combate inerethed Nave {

  var invisibilidad = false
  var misilesDesplegadis = 0
  const mensajes = []
    
    method ponerseVisible() = invisibilidad = false
    method ponerseInvisible() = invisibilidad = true
    estaInvisible() =  invisibilidad 
    
    desplegarMisiles() = 
            misilesDesplegados = misilesDesplegados + 1
    replegarMisiles() = 
            misilesDesplegados = (misilesDesplegados - 1)max(0)
    misilesDesplegados() = 
            misilesDesplegados = 0

    emitirMensaje(mensaje) = mensajes.add("mensaje")
    mensajesEmitidos() = mensajes.sum()
    primerMensajeEmitido()  = mensajes.first()
    ultimoMensajeEmitido() = mensajes.last()
    esEscueta() = mensajes.isEmpty()
    emitioMensaje(mensaje) = mensajes.contains("mensaje")
  
}

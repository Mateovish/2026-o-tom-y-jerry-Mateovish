object casa {
  var quilombero = jerry
  var cuidador = robocat
  var suciedad = 1000
  method cuidador()=cuidador
  method suciedad () = suciedad
  method limpiar (cuanto) {
    suciedad -= cuanto
  }
  method ensuciar (cuanto) {
    suciedad += cuanto
  }
  method interrumpirSuenio () = cuidador.despertar()
  method pasarElDia() {
    cuidador.limpiarCasa() 
    cuidador.puedeAtrapar(quilombero)
  }
  method pasarNoche() {
    cuidador.dormir()
    quilombero.hacerQuilombo()
  }
}

object tom {
  var energia = 0
  method limpiarCasa(){
    casa.limpiar(100)
    energia -= 40
  }
  method velocidad() = 5 + energia / 10
  method dormir() { 
    energia += 50
  }
  method puedeAtrapar (quilombero) = self.velocidad() > quilombero.velocidad()
  method despertar () {
    energia -= 20
  }
}

object nulo {
    method hacerQuilombo() {}
    method velocidad () = 0
}



object jerry {
  var peso = 1
  method peso() = peso
  method hacerQuilombo() {
    casa.ensuciar(110)
    peso += 1
  }
  method velocidad () = 10-peso
}
  
object tuffy {
  const velocidad = 10
  method velocidad () = velocidad
  method hacerQuilombo () {
    casa.interrumpirSuenio()
  }
}

object robocat {
  const sucieda = casa.suciedad()
  method limpiarCasa() { 
    casa.limpiar(sucieda)
  }
  method despertar () {}
  method dormir() {  
  }
  method puedeAtrapar (quilombero) = true
  }


object pandilla {
  const miembros = []
  method agregarMiembro (nombre) = miembros.add(nombre)
  method hacerQuilombo () {
    miembros.map{tipo=> tipo.hacerQuilombo()}
    if(miembros.size() > 3) casa.cuidador.interrumpirSuenio()
  }
  method velocidad () = miembros.map{tipo => tipo.velocidad()}.min()/2
}

object spike {
  method limpiarCasa() { 
    casa.limpiar(250)
  }
  method despertar () {}
  method puedeAtrapar (quilombero) = true
}

object mateo {
  const velocidad = 67
  var peso = 67
  method peso() = peso
  method hacerQuilombo(){
     casa.interrumpirSuenio()
     peso += 5
  }

  method velocidad () = velocidad
}
/* d*/

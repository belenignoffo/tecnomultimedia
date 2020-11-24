/*
Esta clase se encarga de estructurar/dibujar la pantalla.
Los parámetros quedan a cargo de la clase AventuraGráfica y/o Aventura.
*/

class Pantalla {
  PImage fondo;
  Boton boton1, boton2, boton3; 

  Pantalla(PImage fondo, Boton boton1, Boton boton2, Boton boton3) {
    this.fondo = fondo;
    this.boton1 = boton1;
    this.boton2 = boton2;
    this.boton3 = boton3;
  }

  void dibujar() {   
    image(this.fondo, 0, 0, width, height);
    
    if (boton1 != null) {
      boton1.dibujar();
    }

    if (boton2 != null) {
      boton2.dibujar();
    }

    if (boton3 != null) {
      boton3.dibujar();
    }
  }
}

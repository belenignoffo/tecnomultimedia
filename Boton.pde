/*
Clase que se encarga de dibujar el objeto BOTÓN.
Los parámetros están sujetos a la Aventura Gráfica, salvo el parámetro "image", el cual depende de Aventura.
*/

class Boton {
  PImage imgBoton;
  float x, y, ancho, alto;
  
  Boton(PImage imgBoton, float x, float y) {
    this.imgBoton = imgBoton;
    this.x = x;
    this.y = y;
    
    ancho = 200;
    alto = 75;
  }

  void dibujar() {
    image(this.imgBoton, resize.porcentajeX(x), resize.porcentajeY(y), resize.porcentajeX(ancho), resize.porcentajeY(alto));
  }
  
// --- BOOLEAN que devuelve verdadero siempre que el mouse esté posicionado sobre el botón  

  boolean mouseClicked() {
    if (mouseX > resize.porcentajeX(x) && mouseX < resize.porcentajeX(x + ancho) && mouseY > resize.porcentajeY(y) && mouseY < resize.porcentajeY(y + alto)) {
      return true;
    } else {
      return false;
    }
  }
}

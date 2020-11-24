/*
Hechizos que determinan qué camino va a seguir durante la aventura gráfica
 */
class Hechizo {
  float x, y, ancho, alto;
  int numHechizo;
  PImage [] hechizos = new PImage [2];

  Hechizo(float p_x, float p_y, float p_ancho, float p_alto, int p_numHechizo) {
    x = p_x;
    y = p_y;
    ancho = p_ancho;
    alto = p_alto;
    numHechizo = p_numHechizo;
    hechizos[0] = loadImage("glacius.png");
    hechizos[1] = loadImage("transgresus.png");
  }

  void dibujar() {
    image(hechizos[numHechizo], resize.porcentajeX(x), resize.porcentajeY(y), resize.porcentajeX(ancho), resize.porcentajeY(alto));
  }

  boolean clickHechizo() {
    if (mouseX > resize.porcentajeX(x) && mouseX < resize.porcentajeX(x + ancho) && mouseY > resize.porcentajeY(y) && mouseY < resize.porcentajeY (y + alto)) {
      return true;
    } else {
      return false;
    }
  }
}

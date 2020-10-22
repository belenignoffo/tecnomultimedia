class Hechizo {/*--- No realicé una arreglo de clase (Hechizo [] hechizos) porque consideré que no se justificaba hacerlo solo por dos hechizos.
El número no va a cambiar, está condicionado por la historia de la aventura gráfica.
*/
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
    image(hechizos[numHechizo], x, y, ancho, alto);
  }

  boolean clickHechizo() {
   if (mouseX > x && mouseX < x + ancho && mouseY > y && mouseY < y + alto) {
        return true;
      } else {
        return false;
    }
  }
}

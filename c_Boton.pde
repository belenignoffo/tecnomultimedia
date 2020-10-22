class Boton { // Flecha a la que hay que llegar para pasar de nivel
  float x, y, ancho, alto;
  PImage boton;

  Boton(float p_x, float p_y, float p_ancho, float p_alto) {
    x = p_x;
    y = p_y;
    ancho = p_ancho;
    alto = p_alto;
    boton = loadImage("flecha.png");
  }

  void dibujar() {
    image(boton, x, y, ancho, alto);
  }
}

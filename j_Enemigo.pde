class Enemigo {
  float x, y;
  float tam, vel;
  int tipo;
  PImage enemigo;

  Enemigo(float p_x, float p_y, float p_tam, float p_vel, int p_tipo) {
    x = p_x;
    y = p_y;
    tam = p_tam;
    vel = p_vel;
    tipo = p_tipo;
    if (tipo == 0) {
      enemigo = loadImage("enemigo0.png");
    } else if (tipo == 1) {
      enemigo = loadImage("enemigo1.png");
    } else if (tipo == 2) {
      enemigo = loadImage("enemigo2.png");
    }
  }


  void dibujar() {
    image(enemigo, resize.porcentajeX(x), resize.porcentajeY(y), resize.porcentajeX(tam), resize.porcentajeY(tam));
    y = y + vel;
  }

  boolean saleDePantalla() {
    return resize.porcentajeY(y) > height;
  }

  void reset(float p_x, float p_y) {
    x = p_x;
    y = p_y;
  }
}

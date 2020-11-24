class Vida {
  int cantVidas; 
  float x, y;
  PFont vidas; 

  Vida(int p_cantVidas, float p_x, float p_y, PFont p_vidas) {
    cantVidas = p_cantVidas;
    x = p_x;
    y = p_y;
    vidas = p_vidas;
  }

  void dibujar() {
    pushStyle(); 
    fill(255);
    textFont(vidas);
    textSize(resize.porcentajeX(26));
    text("Vidas:" + cantVidas, resize.porcentajeX(x), resize.porcentajeY(y));
    popStyle();
  }

  void decrementar() {
    cantVidas--;
  }
}

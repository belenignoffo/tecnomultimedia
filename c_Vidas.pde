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
    textSize(26);
    text("Vidas:" + cantVidas, x, y);
    popStyle();
  }

  void decrementar() {
    cantVidas--;
  }
}

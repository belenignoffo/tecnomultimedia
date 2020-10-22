class Jugador {
  float x, y, tam;
  PImage jugador;

  Jugador(float p_x, float p_y, float p_tam) {
    y = p_y;
    x = p_x;
    tam = p_tam;
    jugador = loadImage("jugador.png");
    jugador.resize(int(tam), int (tam));
  }

  void dibujar() {
    image(jugador, x, y);
  }

  void moverLaterales() {
    if (keyCode == LEFT) {
      x = x - tam;
    } else if (keyCode == RIGHT) {
      x = x + tam;
    }
    x = constrain (x, 0, width - tam);
  }

  void reset(float p_x, float p_y) {
    x = p_x;
    y = p_y;
  }

  boolean pasoDeNivel(Boton boton) {
    return x > boton.x;
  }

  boolean haPerdido(Vida vidas) {
    return vidas.cantVidas == 0;
  }

  boolean colisionaCon(Enemigo enemigos) {
    if (dist(x, y, enemigos.x, enemigos.y) <= tam/2) {
      return true;
    } else {
      return false;
    }
  }

  boolean haGanado(Barra energia) {
    return energia.contadorEnergia > energia.valorMaxEnergia;
  }

  boolean haPerdido(Barra energia) {
    return energia.contadorEnergia < 0;
  }
}

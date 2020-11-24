class Jugador {
  float x, y, tam;
  PImage jugador;

  Jugador(float p_x, float p_y, float p_tam) {
    y = p_y;
    x = p_x;
    tam = p_tam;
    jugador = loadImage("jugador.png");
  }

  void dibujar() {
    image(jugador, resize.porcentajeX(x), resize.porcentajeY(y), resize.porcentajeX(tam), resize.porcentajeY(tam));
  }

  void moverLaterales() {
    if (keyCode == LEFT) {
      x = x - tam;
    } else if (keyCode == RIGHT) {
      x = x + tam;
    }
  }

  boolean pasoDeNivel(Flecha flecha) {
    return resize.porcentajeX(x) > resize.porcentajeX(flecha.x);
  }

  boolean haPerdido(Vida vidas) {
    return vidas.cantVidas == 0;
  }

  boolean colisionaCon(Enemigo enemigos) {
    if (dist(resize.porcentajeX(x), resize.porcentajeY(y), enemigos.x, enemigos.y) <= tam/2) {
      return true;
    } else {
      return false;
    }
  }

  boolean haGanado(Barra energia) {
    return energia.contadorEnergia > energia.valorMaxEnergia;
  }

  boolean haPerdido(Barra energia) {
    return energia.contadorEnergia <= 0;
  }
}

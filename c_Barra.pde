class Barra {
  float x, y, ancho, alto; // Propiedades del rect y la imagen
  float valorMaxEnergia; // Valor maximo al que llega la barra de energia
  float contadorEnergia; // Variable que decrementa automáticamente e incrementa con los clicks
  float velDec, velAum; // Velocidad de Decremento e Incremento
  PImage energia;

  Barra(float p_ancho, float p_alto, float p_velDec, float p_velAum) {
    alto = p_alto;
    ancho = p_ancho;
    velDec = p_velDec;
    velAum = p_velAum;
    x = width/2 - ancho/2;
    y = height/2 + alto * 3;
    valorMaxEnergia = p_ancho;
    contadorEnergia = valorMaxEnergia * 0.6;
    energia = loadImage("energia.png");
  }

  void dibujar() {
    pushStyle();
    image(energia, x+1, y+1, contadorEnergia - 1, alto-1);
    stroke(255);
    noFill();
    rect(x, y, ancho, alto);
    contadorEnergia -= velDec;
    popStyle();
  }

  void clickear() {
    if (valorMaxEnergia > 0) {
      contadorEnergia += velAum;
    }
  }
}

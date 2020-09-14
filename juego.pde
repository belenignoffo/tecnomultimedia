void dibujarJuego() {
  if (estoyJugando()) {
    aJugar();
  } else if (perdi()) {
    perdiste();
  } else if (gane()) {
    ganaste();
  }
}

boolean estoyJugando() {
  return estado == 0;
}

boolean perdi() {
  return estado == 2;
}

boolean gane() {
  return estado == 1;
}

void perdiste() {
  background(200);
  textSize(40);
  textAlign(CENTER);
  text("PERDISTE!!!!", width/2, height/2);
}

void ganaste() {
  background(200);
  textSize(40);
  textAlign(CENTER);
  text("GANASTE!!!!", width/2, height/2);
}

void aJugar() {
  dibujarPantalla(imagenAleatoria, textoAleatorio);
}


void dibujarPantalla(int imagenAleatoria, int textoAleatorio) {
  image(imagenes[imagenAleatoria], 0, 0, width, height);
  textAlign(CENTER);
  textSize(40);
  text(textos[textoAleatorio], width/2, height/2);
  println(imagenAleatoria, textoAleatorio);
  textAlign(LEFT);
  textSize(30);
  text("Vidas: " + vidas, 20, 80);
  text("Puntos: " + puntos, 20, 120);
}

void matchOK() {
  if (imagenAleatoria == textoAleatorio) {
    puntos++;
    generarAleatorios();
  } else {
    vidas--;
    generarAleatorios();
  }
  if (vidas == 0) {
    estado = 2;
  } else if (puntos == 10) {
    estado = 1;
  }
}

void matchKO() {
  if (imagenAleatoria != textoAleatorio) {
    puntos++;
    generarAleatorios();
  } else {
    vidas--;
    generarAleatorios();
  }
  if (vidas == 0) {
    estado = 2;
  } else if (puntos == 10) {
    estado = 1;
  }
}

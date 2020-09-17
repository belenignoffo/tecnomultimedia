//Funciones para que los botones se adapten al resize
int porcentajeX(int valor_) {
  return round(map(valor_, 0, 800, 0, width));
}

int porcentajeY(int valor_) {
  return round(map(valor_, 0, 600, 0, height));
}

//Cargo las fuentes
void fuentes() {
  narracion = loadFont ("Gabriola-34.vlw");
  creditos = loadFont ("Garamond-40.vlw");
  textFont(narracion);
  textSize(26);
}

//Cargo las imágenes
void inicializarImagenes() {
  for (int i = 0; i < imagen.length; i++) {
    imagen[i] = loadImage("imagen" + i + ".jpg");
  }
}

//Cargo las imágenes de los botones
void inicializarBotones() {
  boton[0] = loadImage("comenzar.png");
  boton[1] = loadImage("creditos.png");
  boton[2] = loadImage("volver.png");
  boton[3] = loadImage("continuar.png");
  boton[4] = loadImage("elegirotro.png");
  boton[5] = loadImage("restart.png");
  boton[6] = loadImage("glacius.png");
  boton[7] = loadImage("transgresus.png");
  boton[8] = loadImage("ignotus.png");
  boton[9] = loadImage("antioch.png");
  boton[10] = loadImage("cadmus.png");
  boton[11] = loadImage("festejar.png");
  boton[12] = loadImage("descansar.png");
  boton[13] = loadImage("elixir.png");
  boton[14] = loadImage("revivir.png");
}


//-------Funciones para activar el cambio de cursor
void cursor2botones(){
      if (mouseX > porcentajeX(posXizq) && mouseX < porcentajeX(posXizq + ancho) && mouseY > porcentajeY(posY) && mouseY < porcentajeY(posY + alto) 
      || mouseX > porcentajeX(posXder) && mouseX < porcentajeX(posXder + ancho) && mouseY > porcentajeY(posY) && mouseY < porcentajeY(posY + alto)) {
      cursor(HAND);
    } else { 
      cursor(ARROW);
    }
}

void cursor1boton(int posX_){
    if (mouseX > porcentajeX(posX_) && mouseX < porcentajeX(posX_ + ancho) && mouseY > porcentajeY(posY) && mouseY < porcentajeY(posY + alto)){
    cursor(HAND);
    } else {
      cursor(ARROW);
    }
}

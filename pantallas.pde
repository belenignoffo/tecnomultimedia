/* El estado de la pantalla coincide con el n° de arreglo del texto y también de la imagen
*/

void pantalla2botones(int pantalla, float posXtxt_, float posYtxt_, int relleno_, int b1, int b2) {
  //-------Dibujo las pantallas que tienen dos botones. Lo diferencié del "pantallaEoC" porque en este caso las opciones van cambiando
  if (estado == pantalla) { //-------La condición está para que el contenido se imprima sólo cuando sea verdadera y no se superponga c/ otras pantallas
    image(imagen[pantalla], 0, 0, width, height);
    fill(relleno_);
    text(historia[pantalla], width*posXtxt_, height*posYtxt_);
    image(boton[b1], porcentajeX(posXizq), porcentajeY(posY), porcentajeX(ancho), porcentajeY(alto));
    image(boton[b2], porcentajeX(posXder), porcentajeY(posY), porcentajeX(ancho), porcentajeY(alto));
    cursor2botones();
  }
}

void pantallaUnica(int pantalla) {
  //-------Es la única pantalla que tiene el botón "Comenzar de nuevo" en esta posición
  if (estado == pantalla) {
    image(imagen[pantalla], 0, 0, width, height);
    fill(255);
    text(historia[pantalla], width*0.45, height*0.3);
    image(boton[5], porcentajeX(posXlateral2), porcentajeY(posY), porcentajeX(ancho), porcentajeY(alto));
    cursor1boton(posXlateral2);
  }
}

void pantallaEoC(int pantalla, float posXtxt_, float posYtxt_, int relleno_) {
  //-------Dibujo las pantallas que tienen los botones "Elegir" o "Comenzar de nuevo" (en total son 5)
  if (estado == pantalla) {
    image(imagen[pantalla], 0, 0, width, height);
    fill(relleno_);
    text(historia[pantalla], width*posXtxt_, height*posYtxt_);
    image(boton[4], porcentajeX(posXizq), porcentajeY(posY), porcentajeX(ancho), porcentajeY(alto));
    image(boton[5], porcentajeX(posXder), porcentajeY(posY), porcentajeX(ancho), porcentajeY(alto));
    cursor2botones();
  }
}

void pantallaContinuar(int pantalla, float posXtxt_, float posYtxt_, int relleno_) {
  //-------Dibujo las pantallas que tienen los botones "Continuar" (en total son 10)
  if (estado == pantalla) {
    image(imagen[pantalla], 0, 0, width, height);
    fill(relleno_);
    text(historia[pantalla], width*posXtxt_, height*posYtxt_);
    image(boton[3], porcentajeX(posXlateral2), porcentajeY(posY), porcentajeX(ancho), porcentajeY(alto));
    cursor1boton(posXlateral2);
  }
}

void pantalla3hermanos(int pantalla) {
  //-------Dibujo la única pantalla que tiene 3 botones
  if (estado == pantalla) {
    image(imagen[pantalla], 0, 0, width, height);
    fill(0);
    text(historia[pantalla], round(width*0.045), round(height*0.060));
    image(boton[8], porcentajeX(posXlateral1), porcentajeY(posY), porcentajeX(ancho), porcentajeY(alto));
    image(boton[9], porcentajeX(300), porcentajeY(posY), porcentajeX(ancho), porcentajeY(alto));
    image(boton[10], porcentajeX(posXlateral2), porcentajeY(posY), porcentajeX(ancho), porcentajeY(alto));
    if ((mouseX > porcentajeX(posXlateral1) && mouseX < porcentajeX(posXlateral1 + ancho) && mouseY > porcentajeY(posY) && mouseY < porcentajeY(posY + alto))
      ||(mouseX > porcentajeX(300) && mouseX < porcentajeX(300 + ancho) && mouseY > porcentajeY(posY) && mouseY < porcentajeY(posY + alto))
      || (mouseX > porcentajeX(posXlateral2) && mouseX < porcentajeX(posXlateral2 + ancho) && mouseY > porcentajeY(posY) && mouseY < porcentajeY(posY + alto))) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  }
}

void pantallaCreditos(int pantalla, float posYtxt_) {
  /*-------Creé una función específica para los créditos así modificaba cosas como la tipografía, la alineación, el tamaño.
           No se justificaba añadir este tipo de parámetros a las demás funciones sólo por una excepción */  
  if (estado == pantalla) {
    pushStyle();

    fill(0);
    textAlign(CENTER);
    textFont(creditos);
    textSize(36);
    image(imagen[pantalla], 0, 0, width, height);
    image(boton[2], posXlateral1, posY, ancho, alto);
    text(historia[pantalla], width/2, posYtxt_);
    posYCred -= vel;
    cursor1boton(posXlateral1);
    popStyle();
  }
}

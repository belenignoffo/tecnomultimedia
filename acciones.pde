void clickHistoria() {
  if (pantallaActual(0)) {
    click2botones(1, 21);
  } else if (pantallaActual(21)) {
    click1boton(posXlateral1, 0);
    posYCred = posYCred_i; //------- Reinicio los créditos
  } else if (pantallaActual(1)) {
    click1boton(posXlateral2, 2);
  } else if (pantallaActual(2)) {
    click2botones(3, 5);
  } else if (pantallaActual(3)) {
    click1boton(posXlateral2, 4);
  } else if (pantallaActual(4)) {
    click1boton(posXlateral2, 0);
  } else if (pantallaActual(5)) {
    click1boton(posXlateral2, 6);
  } else if (pantallaActual(6)) {
    click1boton(posXlateral2, 7);
  } else if (pantallaActual(7)) {
    click1boton(posXlateral1, 18);
    click1boton(300, 8);
    click1boton(posXlateral2, 13);
  } else if (pantallaActual(8)) {
    click2botones(9, 11);
  } else if (pantallaActual(9)) {
    click1boton(posXlateral2, 10);
  } else if (pantallaActual(10)) {
    clickEoC();//-------"E == Elegir otro hermano" ; "C == Comenzar de nuevo"
  } else if (pantallaActual(11)) {
    click1boton(posXlateral2, 12);
  } else if (pantallaActual(12)) {
    clickEoC();
  } else  if (pantallaActual(13)) {
    click2botones(14, 16);
  } else if (pantallaActual(14)) {
    click1boton(posXlateral2, 15);
  } else if (pantallaActual(15)) {
    clickEoC();
  } else if (pantallaActual(16)) {
    click1boton(posXlateral2, 17);
  } else if (pantallaActual(17)) {
    clickEoC();
  } else  if (pantallaActual(18)) {
    click1boton(posXlateral2, 19);
  } else if (pantallaActual(19)) {
    click1boton(posXlateral2, 20);
  } else if (pantallaActual(20)) {
    clickEoC();
  }
}

//-------Función que me devuelve el valor de la pantalla en la que estoy
boolean pantallaActual(int pantalla) {
  if (estado == pantalla) {
    return true;
  } else {
    return false;
  }
}

//-------Indico las coordenadas para que se realice el cambio de pantalla al clickear
void click2botones(int opc1, int opc2) {
  if (mouseX > porcentajeX(posXizq) && mouseX < porcentajeX(posXizq + ancho) && mouseY > porcentajeY(posY) && mouseY < porcentajeY(posY + alto)) {
    estado = opc1;
  } else if (mouseX > porcentajeX(posXder) && mouseX < porcentajeX(posXder + ancho) && mouseY > porcentajeY(posY) && mouseY < porcentajeY(posY + alto)) {
    estado = opc2;
  }
}

void click1boton(int posx_, int proxPantalla) {
  if (mouseX > porcentajeX(posx_) && mouseX < porcentajeX(posx_ + ancho) && mouseY > porcentajeY(posY) && mouseY < porcentajeY(posY + alto)) {
    estado = proxPantalla;
  }
}

void clickEoC(){
  //-------Encapsulé esta función porque la llamaba en el código 5 veces con los mismos parámetros
  click2botones(7, 0);
}

/* El objetivo es llegar al otro lado 3 veces.
 Tenés 3 intentos para poder cumplirlo
 */

int cantH = 10, intentos = 3;
float tam, valor = 4;
float [] posX = new float [cantH]; // Posiciones en X de cada ellipse
float [] dirX = new float [cantH]; // Direcciones en X de cada ellipse
float personajePosX, personajePosY, posInicial;
int puntos = 0;
int incremento = 1;

void setup() {
  size(500, 500);
  tam = height/cantH;
  posInicial = height - tam/2;

  surface.setResizable(true);

  textSize(20);
  textAlign(CENTER);

  //No calculo la última fila, que es donde arranca el personaje
  for (int h=0; h < cantH-1; h++) {
    //Genero aleatoriamente la posX de la elipse
    posX[h] = round(random(tam, width-tam));
    //Genero aleatoriamente la dirección
    if (random(0, width)>width/2)
      dirX[h] = 1;
    else
      dirX[h] = -1;
  }

  //La ubicación del Personaje
  personajePosX = width/2;
  personajePosY = posInicial;
}

void draw() {  
  tam = height/cantH;
  background(204);
  //Imprimo la cantidad de puntos y vidas que tiene
  fill(0);
  textSize(15);
  text("Puntos: " + puntos, 50, height-tam/2);
  text("Intentos: " + intentos, 55, height - valor);

  //No calculo la última fila, que es donde arranca el personaje
  for (int h=0; h < cantH-1; h++) {
    fill(0);
    ellipse(posX[h], h*tam + tam/2, tam, tam);

    //Calculo la nueva posición
    posX[h] = posX[h] + dirX[h];
    if (dist(posX[h], h*tam + tam/2, personajePosX, personajePosY)<= tam - tam/2) {
      personajePosY = height - tam/2;
      intentos = intentos - incremento;
    }
    if (intentos == 0) {

      background(0);
      fill(255);
      text("¡Mejor suerte para la próxima!\nHaz click en el círculo para comenzar de nuevo", width/2, height/2);
    }
    //Si toca algún borde, cambia la dirección
    if (posX[h] < tam/2 || posX[h] > width-tam/2) {
      dirX[h] = floor(dirX[h] * -1.2);
    } //Aumenta de velocidad. El máximo es de 4.0
    if (dirX[h] == 5.0 || dirX[h] == - 5.0) {
      dirX[h] = valor * -1;
    }
  }

  if (puntos == 3) {
    background(0);
    text("¡Ganaste!\nHaz click en el círculo para comenzar de nuevo", width/2, height/2);
  }

  fill(111, 30, 245);
  ellipse(personajePosX, personajePosY, tam, tam);
}

void keyPressed() {
  if (keyCode == UP) {
    personajePosY = personajePosY - tam;
  } else if (keyCode == DOWN) {
    personajePosY = personajePosY + tam;
  }
  if (personajePosY <= 0) {
    puntos += incremento;
    personajePosY = posInicial;
  }
  if (intentos == 0) {
    intentos = 3;
  }
}


void mouseClicked() {
  if (dist(mouseX, mouseY, personajePosX, personajePosY) < tam/2) {
    background (204);
    personajePosX = width/2;
    personajePosY = posInicial;
    puntos = 0;
    intentos = 3;
    for (int h=0; h < cantH-1; h++) {
      //Genero aleatoriamente la posX de la elipse
      posX[h] = round(random(tam, width-tam));
      //Genero aleatoriamente la dirección
      if (random(0, width)>width/2)
        dirX[h] = 1;
      else
        dirX[h] = -1;
    }
  }
}

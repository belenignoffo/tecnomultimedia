/*
TP FINAL
 Alumna: LARA BELÉN IGNOFFO
 Legajo: 85137/1
 Comisión 4
 Las clases con el prefijo "j_" corresponden a las clases del videojuego.
 */

import processing.sound.*;
Aventura aventura;
Resize resize;  

void setup() {
  size(800, 600);
  surface.setResizable(true);
  aventura = new Aventura(this);
  resize = new Resize();
}

void draw() {
  aventura.dibujarPantallas();
}

void mouseClicked() {
  aventura.mouseClicked();
}

void keyPressed() {
  aventura.keyPressed();
}

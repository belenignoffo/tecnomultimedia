/*
 Este minijuego ocuparía la pantalla 2 de la aventura gráfica.
*/

Juego juego;

void setup() {
  size(800, 600);
  juego = new Juego();
}

void draw() {
  background(204);
  juego.dibujar();
}

void mouseClicked() {
  juego.mouse();
}

void keyPressed(){
juego.teclas();
}

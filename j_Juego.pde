/* Instancias del juego:
 0 : Presentación.
 1 : Juego. El objetivo es esquivar los obstáculos y llegar al botón con la flecha
 2 : Perder. Se llega perdiendo en la instancia 1, 4 o 5.
 3 : Elegir un hechizo para proseguir.
 4 : Juego. El objetivo es completar el hechizo Glacius llenando una barra de energía.
 5 : Juego. El objetivo es completar el hechizo Transgresus llenando una barra de energía.
 6 : Ganar. Se llega únicamente superando la instancia 4. Corresponde al estado 3 de la aventura.
 7: Ganar. Se llega únicamente superando la instancia 5. Corresponde al esado 5 de la aventura.
 */

class Juego {
  int estado;
  PImage fondoMsj;
  PFont fuenteMsj;
  VideoJuego videoJuego;

  Juego() {
    inicializar();
    fondoMsj = loadImage("fondomensaje.png");
    fuenteMsj = loadFont("Consolas-Bold-48.vlw");
  }

  //-------- FUNCIONES "DIBUJAR"
  void dibujar() {
    if (estadoActual(0)) {
      dibujarMensaje("Deberás esquivar los obstáculos que aparezcan\na lo largo de la sinuosa carretera.\n\n\n\nPresiona la tecla 'S' cuando estés listo.");
    } else if (estadoActual(1)) {
      dibujaJuegoEnemigos();
    } else if (estadoActual(2)) {
      dibujarMensaje("¡Ups! No lo haz conseguido esta vez.\n\n\n\n\nHaz click para continuar");
    } else if (estadoActual(3)) {
      dibujaHechizos();
    } else if (estadoActual(4) || estadoActual(5)) {
      dibujarJuegoBarra();
    }
  }

  void dibujaJuegoEnemigos() {//---- Dibujo la primera instancia del juego y asigno nuevos valores al estado
    videoJuego.dibujaJuegoEnemigos();
    if (videoJuego.controlaPasarOPerder() == 1) {
      estado = 2;
    } else if (videoJuego.controlaPasarOPerder() == 2) {
      estado = 3;
    }
  }


  void dibujaHechizos() {//---- Dibujo la segunda instancia del juego.
    // La asignación de valores está en la parte de "ACCIONES" dado que la interacción se daba con el mouse en una zona determinada de la pantalla, y
    // si lo asignaba en esta instancia, la interacción tenía lugar sin hacer click
    dibujarMensaje("¡Lograste atravesar los obstáculos!\nPero te topaste con un río\ndemasiado profundo y peligroso.\n\nElige algún hechizo para poder cruzarlo.");
    videoJuego.dibujaHechizos();
  }

  void dibujarJuegoBarra() {//---- Dibujo la tercera instancia del juego.
    dibujarMensaje("Clickea en cualquier parte de la pantalla\n\nlo más rápido que puedas para completar\n\nla barra del hechizo.");
    videoJuego.dibujaBarra();
    if (videoJuego.controlaGanarOPerder() == 1) {
      estado = 2; //Si el valor = 1, significa que el juego se perdió
    }
  }

  void dibujarMensaje(String p_mensaje) {//---- Función para dibujar todos los mensajes del juego
    pushStyle();
    rectMode(CENTER);
    textFont(fuenteMsj);
    image(fondoMsj, 0, 0, width, height);
    textAlign(CENTER);
    textSize(resize.porcentajeX(26));
    text(p_mensaje, resize.porcentajeX(400), resize.porcentajeY(200)); 
    popStyle();
  }

  //-------- ACCIONES (MouseClicked y KeyPressed)
  void mouse() {
    if (estadoActual (3)) {
      clickHechizos();
    } else if (estadoActual (4)) { // estadoActual(4) == Hechizo Glacius.
      videoJuego.clickBarra();
      if (videoJuego.controlaGanarOPerder() == 2) {
        estado = 6; // Instancia de "Ganar". Se dibuja un mensaje en la pantalla y se clickea para proseguir
      }
    } else if (estadoActual (5)) { // estadoActual(5) == Hechizo Transgresus.
      videoJuego.clickBarra();
      if (videoJuego.controlaGanarOPerder() == 2) {
        estado = 7; // Instancia de "Ganar". Se dibuja un mensaje en la pantalla y se clickea para proseguir
      }
    } else if (estadoActual (2)) {
      estado = 8;
    }
  }


  void teclas() {
    if (estadoActual(0)) {
      if (key == 's' || key == 'S')
        estado = 1;
    } else if (estadoActual(1)) {
      videoJuego.teclaPresionada();
    }
  }

  void clickHechizos() { //---- Corroboro las coordenadas y límites del botón y asigno un nuevo valor al estado
    if (videoJuego.controlaClickHechizos() == 4) {
      estado = 4;
    } else if (videoJuego.controlaClickHechizos() == 5) {
      estado = 5;
    }
  }

  boolean estadoActual(int p_valor) {//---- Devuelve el valor actual del estado
    return estado == p_valor;
  }

  void inicializar() {//Valores iniciales
    videoJuego = new VideoJuego();
    estado = 0;
  }
}

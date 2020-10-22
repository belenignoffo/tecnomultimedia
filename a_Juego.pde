/* Instancias del juego:
 0 : Presentación.
 1 : Juego. El objetivo es esquivar los obstáculos y llegar al botón con la flecha
 2 : Perder. Se llega perdiendo en la instancia 1, 4 o 5.
 3 : Elegir un hechizo para proseguir.
 4 : Juego. El objetivo es completar el hechizo Glacius llenando una barra de energía.
 5 : Juego. El objetivo es completar el hechizo Transgresus llenando una barra de energía.
 6 : Ganar. Se llega únicamente superando la instancia 4 o 5.
 --- En esta ocasión, tanto la instancia 4 como la 5 conducen a un mismo final. En la aventura gráfica corresponderían a caminos diferentes. 
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
      dibujarMensaje("¡Bienvenido a mi minijuego!\n\n\nPresiona 'S' para comenzar.\n\n\n\n\n\nAlumna: Lara Belén Ignoffo");
    } else if (estadoActual(1)) {
      dibujaJuegoEnemigos();
    } else if (estadoActual(3)) {
      dibujaHechizos();
    } else if (estadoActual(4) || estadoActual(5)) {
      dibujarJuegoBarra();
    } else if (estadoActual(2)) {
      dibujarMensaje("¡Oh no!\n\nNo lo conseguiste esta vez.\n\n\nPresiona la tecla 'R' para comenzar de nuevo");
    } else if (estadoActual(6)) {
      dibujarMensaje("¡Enhorabuena!\n\nCompletaste el hechizo correctamente.\n\n\n\nPresiona la tecla 'R' para volver al inicio");
    }
  }

  void dibujaJuegoEnemigos() {//---- Dibujo la primera instancia del juego y asigno nuevos valores al estado
    videoJuego.dibujaJuegoEnemigos();
    if (videoJuego.controlaPasarOPerder() == 2) {
      estado = 2;
    } else if (videoJuego.controlaPasarOPerder() == 3) {
      estado = 3;
    }
  }

  void dibujaHechizos() {//---- Dibujo la segunda instancia del juego.
    // La asignación de valores está en la parte de "ACCIONES" dado que la interacción se daba con el mouse en una zona determinada de la pantalla, y
    // si lo asignaba en esta instancia, la interacción tenía lugar sin hacer click
    dibujarMensaje("¡Lograste atravesar los obstáculos!\nPero te topaste con un río\ndemasiado profundo y peligroso.\n\nElige un hechizo para poder cruzarlo.");
    videoJuego.dibujaHechizos();
  }

  void dibujarJuegoBarra() {//---- Dibujo la tercera instancia del juego.
    dibujarMensaje("Clickea en cualquier parte de la pantalla\n\nlo más rápido que puedas para completar\n\nel hechizo.");
    videoJuego.dibujaBarra();
    if (videoJuego.controlaGanarOPerder() == 2) {
      estado = 2;
    } else if (videoJuego.controlaGanarOPerder() == 6) {
      estado = 6;
    }
  }

  void dibujarMensaje(String p_mensaje) {//---- Función para dibujar todos los mensajes del juego
    pushStyle();
    rectMode(CENTER);
    textFont(fuenteMsj);
    image(fondoMsj, 0, 0, width, height);
    textAlign(CENTER);
    textSize(26);
    text(p_mensaje, width/2, height/2 - 100); 
    popStyle();
  }

  //-------- ACCIONES (MouseClicked y KeyPressed)
  void mouse() {
    if (estadoActual(2)) {
      inicializar();
    } else if (estadoActual (3)) {
      clickHechizos();
    } else if (estadoActual (4) || estadoActual (5)) {
      videoJuego.clickBarra();
    }
  }

  void teclas() {
    if (estadoActual(0)) {
      if (key == 's' || key == 'S')
        estado = 1;
    } else if (estadoActual(1)) {
      videoJuego.teclaPresionada();
    } else if (estadoActual(2) || estadoActual(6)) {
      if (key == 'r' || key == 'R') {
        inicializar();
      }
    } else if (estadoActual(6)) {
      if (key == 'r' || key == 'R') {
        inicializar();
      }
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

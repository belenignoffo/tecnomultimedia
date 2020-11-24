/*
Esta clase se encarga de controlar los estados de la Aventura Grafica.
 Crea la clase Juego, correspondiente al video juego.
 Crea la clase Aventura Grafica.
 Determina qué es lo que se va a dibujar dependiendo de cada estado (estado 0, 1...21)
 Se encarga del mouseClicked de la Aventura Grafica
 */
class Aventura {

  AventuraGrafica aventuraGrafica;
  Juego juego;
  int estado;
  float yTextoInicial, yTexto, velocidad;
  SoundFile sonido;

  Aventura(PApplet miSonido_) {
    aventuraGrafica = new AventuraGrafica();
    juego = new Juego();
    estado = 0;
    yTextoInicial = 610;
    yTexto = yTextoInicial;
    sonido = new SoundFile (miSonido_, "deathlyhallows.mp3");
    sonido.play();
    sonido.loop();
    sonido.amp(0.5);
    velocidad = 1.7;
  }

  boolean estadoActual(int valor) {
    return estado == valor;
  }

  void dibujarPantallas() {
    if (estadoActual(0)) {
      aventuraGrafica.pantallaDosBotones(0, 0, 1, 0, 0, 0);
    } else if (estadoActual(1)) {
      aventuraGrafica.pantallaUnBoton(1, 3, 30, 280, 0);
    } else if (estadoActual(2)) {
      juego.dibujar();
    } else if (estadoActual(3)) {
      aventuraGrafica.pantallaUnBoton(3, 3, 35, 150, #361f02);
    } else if (estadoActual(4)) {
      aventuraGrafica.pantallaUnBoton(4, 5, 360, 180, #ded8a1);
    } else if (estadoActual(5)) {
      aventuraGrafica.pantallaUnBoton(5, 3, 360, 180, 0);
    } else if (estadoActual(6)) {
      aventuraGrafica.pantallaUnBoton(6, 3, 35, 90, 0);
    } else if (estadoActual(7)) {
      aventuraGrafica.pantallaTresBotones(7);
    } else if (estadoActual(8)) {
      aventuraGrafica.pantallaDosBotones(8, 9, 10, 35, 60, #030500);
    } else if (estadoActual(9)) {
      aventuraGrafica.pantallaUnBoton(9, 3, 240, 60, #FFF3D3);
    } else if (estadoActual(10)) {
      aventuraGrafica.pantallaDosBotones(10, 4, 5, 55, 60, #FFF3D3);
    } else if (estadoActual(11)) {
      aventuraGrafica.pantallaUnBoton(11, 3, 35, 60, #FFF3D3);
    } else if (estadoActual(12)) {
      aventuraGrafica.pantallaDosBotones(12, 4, 5, 35, 285, #030500);
    } else if (estadoActual(13)) {
      aventuraGrafica.pantallaDosBotones(13, 11, 12, 35, 60, #FFF3D3);
    } else if (estadoActual(14)) {
      aventuraGrafica.pantallaUnBoton(14, 3, 160, 150, #030500);
    } else if (estadoActual(15)) {
      aventuraGrafica.pantallaDosBotones(15, 4, 5, 40, 40, #FFF3D3);
    } else if (estadoActual(16)) {
      aventuraGrafica.pantallaUnBoton(16, 3, 25, 40, #FFF3D3);
    } else if (estadoActual(17)) {
      aventuraGrafica.pantallaDosBotones(17, 4, 5, 25, 40, #FFF3D3);
    } else if (estadoActual(18)) {
      aventuraGrafica.pantallaUnBoton(18, 3, 385, 25, #2d210b);
    } else if (estadoActual(19)) {
      aventuraGrafica.pantallaUnBoton(19, 3, 55, 85, #2d210b);
    } else if (estadoActual(20)) {
      aventuraGrafica.pantallaDosBotones(20, 4, 5, 200, 90, #2d210b);
    } else if (estadoActual(21)) {
      aventuraGrafica.pantallaCreditos(21, yTexto);
      yTexto -= velocidad;
    }
  }

  void mouseClicked() {
    if (estadoActual(0)) {
      clickDosBotones(1, 21);
    } else if (estadoActual(21)) {
      clickUnBoton(0);
      yTexto = yTextoInicial;
    } else if (estadoActual(1)) {
      clickUnBoton(2);
    } else if (estadoActual(2)) {
      juego.mouse(); // Llamo al mouseClicked del Juego
      if (juego.estado == 6) {
        estado = 3; // Si, después de haber ganado, elegí el hechizo Glacius y completé la barra, sigo con la pantalla 3 de la aventura
        juego.inicializar(); // Reinicio los valores del juego
      } else if (juego.estado == 7) {
        estado = 5; // Si, después de haber ganado, elegí el hechizo Transgresus y completé la barra, sigo con la pantalla 5 de la aventura
        juego.inicializar();
      } else if (juego.estado == 8) {
        estado = 21; // Si perdí, en cualquiera de las dos instancias, continúo a la pantalla de créditos para empezar de nuevo
        juego.inicializar();
      }
    } else if (estadoActual(3)) {
      clickUnBoton(4);
    } else if (estadoActual(4)) {
      clickUnBoton(0);
    } else if (estadoActual(5)) {
      clickUnBoton(6);
    } else if (estadoActual(6)) {
      clickUnBoton(7);
    } else if (estadoActual(7)) {
      clickTresBotones(18, 8, 13);
    } else if (estadoActual(8)) {
      clickDosBotones(9, 11);
    } else if (estadoActual(9)) {
      clickUnBoton(10);
    } else if (estadoActual(10)) {
      clickDosBotones(7, 0);
    } else if (estadoActual(11)) {
      clickUnBoton(12);
    } else if (estadoActual(12)) {
      clickDosBotones(7, 0);
    } else if (estadoActual(13)) {
      clickDosBotones(14, 16);
    } else if (estadoActual(14)) {
      clickUnBoton(15);
    } else if (estadoActual(15)) {
      clickDosBotones(7, 0);
    } else if (estadoActual(16)) {
      clickUnBoton(17);
    } else if (estadoActual(17)) {
      clickDosBotones(7, 0);
    } else if (estadoActual(18)) {
      clickUnBoton(19);
    } else if (estadoActual(19)) {
      clickUnBoton(20);
    } else if (estadoActual(20)) {
      clickDosBotones(7, 0);
    }
  }

  void keyPressed() {
    // Evento del Juego para comenzar a jugar y mover al personaje
    juego.teclas();
  }

  /* --- AGRUPO los eventos del mouseClicked según los botones que haya en pantalla (1, 2 o 3).
   En Aventura Grafica, hay un método que me devuelve un valor (1, 2 o 3) dependiendo de la posición del mouse.
   Es ese el parámetro que utilizo para cambiar de estado.
   */

  void clickUnBoton(int irAPantalla) {
    if (aventuraGrafica.mouseClicked() == 1) {
      estado = irAPantalla;
    }
  }

  void clickDosBotones(int irAPantalla1, int irAPantalla2) {
    if (aventuraGrafica.mouseClicked() == 1) {
      estado = irAPantalla1;
    } else if (aventuraGrafica.mouseClicked() == 2) {
      estado = irAPantalla2;
    }
  }

  void clickTresBotones(int irAPantalla1, int irAPantalla2, int irAPantalla3) {
    if (aventuraGrafica.mouseClicked() == 1) {
      estado = irAPantalla1;
    } else if (aventuraGrafica.mouseClicked() == 2) {
      estado = irAPantalla2;
    } else if (aventuraGrafica.mouseClicked() == 3) {
      estado = irAPantalla3;
    }
  }
}

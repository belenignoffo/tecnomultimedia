class VideoJuego {
  int cantEnemigos = 10;
  float jugadortam;
  float tam;
  float botonLargo;
  PImage fondo;
  PFont fuenteVida;
  Enemigo [] enemigos = new Enemigo [cantEnemigos];
  Jugador jugador;
  Vida vidas;
  Hechizo hechizo1, hechizo2;
  Barra energia;
  Boton boton;

  VideoJuego() {//---- Dejé por fuera valores que no requerían reset o nuevas inicializaciones cada vez que el estado cambia
    jugadortam = width/8;
    botonLargo = width/4;
    tam = width/cantEnemigos;
    fondo = loadImage("fondojuego.png");
    fuenteVida = loadFont("Consolas-28.vlw");

    inicializar();
  }

  //-------- ESQUIVAR ENEMIGOS

  void dibujaJuegoEnemigos() {
    image(fondo, 0, 0, width, height);
    dibujaEnemigos();
    boton.dibujar();
    jugador.dibujar();
    vidas.dibujar();
  }

  void dibujaEnemigos() {
    for (int i = 0; i <  enemigos.length; i++) {
      enemigos[i].dibujar();
      if (enemigos[i].saleDePantalla()) {
        enemigos[i].reset(i*tam, 0);
      } 
      if (jugador.colisionaCon(enemigos[i])) {
        enemigos[i].reset(i*tam, 0);
        vidas.decrementar();
      }
    }
  }

  void teclaPresionada() {
    jugador.moverLaterales();
  }

  //-------- ELEGIR Y REALIZAR HECHIZO

  void dibujaHechizos() {
    hechizo1.dibujar();
    hechizo2.dibujar();
  }

  void dibujaBarra() {
    energia.dibujar();
  }

  void clickBarra() {
    energia.clickear();
  }

  //-------- CONTROLO INSTANCIAS

  int controlaPasarOPerder() {
    if (jugador.haPerdido(vidas)) {
      return 2; // Juego perdido (vidas = 0)
    } else if (jugador.pasoDeNivel(boton)) {
      return 3; // Paso al siguiente "nivel" (elección de hechizos)
    }
    return 0;
  }

  int controlaClickHechizos() {
    if (hechizo1.clickHechizo()) {
      return 4; // Devuelve el hechizo Glacius. Interacción con botón izquierdo.
    } else if (hechizo2.clickHechizo()) {
      return 5; // Devuelve el hechizo Transgresus. Interacción con botón derecho.
    } else return 0;
  }

  int controlaGanarOPerder() {
    if (jugador.haPerdido(energia)) {
      return 2; // Juego perdido (vidas = 0)
    } else if (jugador.haGanado(energia)) {
      return 6; // Juego ganado (barra de energía completa)
    } else return 0;
  }

  void inicializar() {
    jugador = new Jugador(0, height - jugadortam * 2, width/8);
    vidas = new Vida (3, width - tam * 1.5, tam, fuenteVida);
    for (int i = 0; i <  enemigos.length; i++) {
      int tipoEnemigo = int(random(0, 3));
      enemigos[i] = new Enemigo (i*tam + tam, 0, tam - cantEnemigos, random(5, 9), tipoEnemigo);
    }    
    hechizo1 = new Hechizo ((width/4 * 0.85), height/2 + tam * 1.5, botonLargo, tam, 0);
    hechizo2 = new Hechizo((width/2 + 30), height/2 + tam * 1.5, botonLargo, tam, 1);
    boton = new Boton(width - 150, height - tam * 2.5, 150, 100);
    energia = new Barra(width/4, height * 0.07, 2.5, 15);
  }
}

class VideoJuego {

  int cantEnemigos = 10;
  float tam;
  float flechaLargo;
  PImage fondo;
  PFont fuenteVida;

  Enemigo [] enemigos = new Enemigo [cantEnemigos];
  Jugador jugador;
  Vida vidas;
  Hechizo hechizo1, hechizo2;
  Barra energia;
  Flecha flecha;

  VideoJuego() {//---- Dejé por fuera valores que no requerían reset o nuevas inicializaciones cada vez que el estado cambia
    flechaLargo = width/4;
    tam = 80;//width/cantEnemigos;
    fondo = loadImage("fondojuego.png");
    fuenteVida = loadFont("Consolas-28.vlw");
    inicializar();
  }

  //-------- ESQUIVAR ENEMIGOS

  void dibujaJuegoEnemigos() {
    image(fondo, 0, 0, width, height);
    dibujaEnemigos();
    flecha.dibujar();
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
      return 1; // Juego perdido (vidas = 0)
    } else if (jugador.pasoDeNivel(flecha)) {
      return 2; // Paso al siguiente "nivel" (elección de hechizos)
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
      return 1; // Juego perdido (vidas = 0)
    } else if (jugador.haGanado(energia)) {
      return 2; // Juego ganado (barra de energía completa)
    } else return 0;
  }

  void inicializar() {
    jugador = new Jugador(0, 400, 100);
    vidas = new Vida (3, 680, 80, fuenteVida);
    for (int i = 0; i <  enemigos.length; i++) {
      int tipoEnemigo = int(random(0, 3));
      enemigos[i] = new Enemigo (i*tam + tam, 0, tam - cantEnemigos, random(5, 9), tipoEnemigo);
    }    
    hechizo1 = new Hechizo (170, 420, 200, 80, 0); //Posición en x, posición en y, ancho, alto, arreglo de imagen
    hechizo2 = new Hechizo(430, 420, 200, 80, 1); //Posición en x, posición en y, ancho, alto, arreglo de imagen
    flecha = new Flecha(650, 400, 150, 100); //Posición en x, posición en y, ancho, alto
    energia = new Barra(200, 42, 2.5, 15); //Ancho, alto, velocidad de decremento, velocidad de incremento
  }
}

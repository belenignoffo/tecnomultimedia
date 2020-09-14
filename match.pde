int estado = 0;
int cantTextos = 5;
int cantImagenes = cantTextos;
PImage [] imagenes = new PImage [cantImagenes]; 
String [] textos = new String [cantTextos]; 
int imagenAleatoria;
int textoAleatorio;
int puntos, vidas;

void setup() {
  size(600, 600);
  inicializarJuego();
}

void draw() {
  dibujarJuego();
}

void mouseClicked() {
  if (clickBotonOK()) {
    matchOK();
  } else if (clickBotonKO()) {
    matchKO();
  }
}

void keyPressed() {
  if (gane() || perdi()) {
    if (key == 'r' || key == 'R') {
      inicializarJuego();
    }
  }
}

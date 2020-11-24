/*
La clase Aventura Grafica crea las clases y objetos correspondientes a cada pantalla (Boton, Pantalla (fondo), Texto...)
Y los agrupa en métodos (según la cantidad de botones o su comportamiento) que serán llamados por la clase Aventura.
*/

class AventuraGrafica {

  int cantPantallas = 22;
  int cantBotones = 13;
  int posYBoton = 500;
  PImage [] fondo = new PImage [cantPantallas];
  PImage [] imgBoton = new PImage [cantBotones];

  Pantalla [] pantallas = new Pantalla [cantPantallas];
  Texto [] textos = new Texto[cantPantallas];
  Boton [] botones;
  Boton boton1, boton2, boton3;

  AventuraGrafica() {
    cargarFondos();
    cargarBotones();
  }

// --- MÉTODOS "genéricos" que se encargan de dibujar pantallas (1 boton, 2 botones, 3 botones y créditos) 
// --- Los parámetros los termina por definir la clase Aventura:

  void pantallaUnBoton(int pantalla, int i_boton1, float xTexto, float yTexto, int colorTexto) {
    boton1 = new Boton(imgBoton[i_boton1], 560, posYBoton);
    pantallas[pantalla] = new Pantalla(fondo[pantalla], boton1, null, null);
    textos[pantalla] = new Texto(pantalla, xTexto, yTexto, colorTexto);
    pantallas[pantalla].dibujar();
    textos[pantalla].historia();
  }

  void pantallaDosBotones(int pantalla, int i_boton1, int i_boton2, float xTexto, float yTexto, int colorTexto) {
    boton1 = new Boton(imgBoton[i_boton1], 150, posYBoton);
    boton2 = new Boton(imgBoton[i_boton2], 450, posYBoton);
    pantallas[pantalla] = new Pantalla(fondo[pantalla], boton1, boton2, null);
    textos[pantalla] = new Texto(pantalla, xTexto, yTexto, colorTexto);   
    pantallas[pantalla].dibujar();
    textos[pantalla].historia();
  }

  void pantallaTresBotones(int pantalla) {
    boton1 = new Boton(imgBoton[6], (20), posYBoton);
    boton2 = new Boton(imgBoton[7], (300), posYBoton);
    boton3 = new Boton(imgBoton[8], (580), posYBoton);
    pantallas[pantalla] = new Pantalla(fondo[pantalla], boton1, boton2, boton3);
    textos[pantalla] = new Texto(pantalla, 35, 35, 0);
    pantallas[pantalla].dibujar();
    textos[pantalla].historia();
  }

  void pantallaCreditos(int pantalla, float yTexto) {
    boton1 = new Boton(imgBoton[2], 20, posYBoton);
    pantallas[pantalla] = new Pantalla(fondo[pantalla], boton1, null, null);
    textos[pantalla] = new Texto(pantalla, 400, yTexto, 0);  
    pantallas[pantalla].dibujar();
    textos[pantalla].creditos();
  }

// --- CARGA DE IMÁGENES 

  void cargarFondos() {
    for (int i = 0; i < cantPantallas; i++) {
      fondo[i] = loadImage("imagen" + i + ".jpg");
    }
  }

  void cargarBotones() {
    for (int i = 0; i < cantBotones; i++) {
      imgBoton[i] = loadImage("boton" + i + ".png");
    }
  }

// --- FUNCIÓN que constata la posición del mouse y, dependiendo de donde esté, devuelve un valor entero específico. 

  int mouseClicked() {
    if (boton1 != null) { 
      if (boton1.mouseClicked()) {
        return 1;
      }
    }
    if (boton2 != null) { 
      if (boton2.mouseClicked()) {
        return 2;
      }
    }
    if (boton3 != null) { 
      if (boton3.mouseClicked()) {
        return 3;
      }
    }
    return 0;
  }
}

//Declaro la cantidad de imágenes y botones que necesito 
int cantImg = 22, cantBotones = 15;
int estado = 0; //Estado inicial de la pantallas

//Variables de los botones
int alto, ancho;
int divAncho = 4, divAlto = 8; // Parámetros por los que divido el alto y ancho de los botones para mantener una relación con el size de la pantallas

//Variable creditos
float posYCred_i = 610;
float posYCred = posYCred_i;
float vel = 0.7;

//Posición de los botones
int posXizq = 175, posXder = 425; //Botones del centro (izq y derecha)
int posXlateral1 = 20, posXlateral2 = 580; //Botones laterales (1 = izq y 2 = derecha)
int posY = 500; // Es la misma posición en Y para todos

//Fuentes
PFont narracion;
PFont creditos;

//Declaro arreglos para la carga de imágenes, botones y texto
PImage [] imagen = new PImage [cantImg];
PImage [] boton = new PImage [cantBotones];
String [] historia = new String [cantImg];

void setup() {
  size(800, 600);
  //Asigno valores a las variables de los botones
  ancho = width/divAncho;
  alto = height/divAlto;

  inicializarBotones();
  inicializarImagenes();
  textoHistoria();
  fuentes();
  surface.setResizable(true);

}

void draw() {
historia();
}

void mouseClicked() {
clickHistoria();
}

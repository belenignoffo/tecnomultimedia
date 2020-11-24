/*
Clase que se encarga de cargar el arreglo de textos y dibujarlo.
*/
class Texto {
  String [] historia =  new String [22];
  PFont narracion, creditos;
  float x, y;
  int colorTexto, numArreglo;

  Texto(int numArreglo, float x, float y, int colorTexto) {
    narracion = loadFont("Gabriola-34.vlw");
    creditos = loadFont("Garamond-40.vlw");
    inicializarTexto(); 
    this.numArreglo = numArreglo;
    this.x = x;
    this.y = y;
    this.colorTexto = colorTexto;
  }

// --- Método para el texto de la historia de la aventura
  void historia() {
    push();
    textFont(narracion);
    textSize(resize.porcentajeX(26));
    fill(colorTexto);
    text(historia[numArreglo], resize.porcentajeX(x), resize.porcentajeY(y));
    pop();
  }

// --- Método para el texto de los créditos

  void creditos() {
  push();
    textFont(creditos);
    textAlign(CENTER);
    textSize(resize.porcentajeX(36));
    fill(colorTexto);
    text(historia[numArreglo], resize.porcentajeX(x), resize.porcentajeY(y));
    pop();
  }
  
  void inicializarTexto() {
    historia[0] = ""; //------- Si bien está vacío de contenido, lo dejé para que el array Historia coincidiera con la cantidad de estados e imágenes
    historia[1] = "Había una vez tres hermanos, Antioch, Cadmus e Ignotus Peverell,\nque viajaban a la hora del crepúsculo por una solitaria y sinuosa \ncarretera.";
    historia[2] = "Pero como eran muy diestros en\n      las artes mágicas, no tuvieron que hacer\n   nada más que agitar sus varitas.";
    historia[3] = "Los hermanos congelaron las peligrosas aguas que los amenazaban y\ncontinuaron con su travesía a pie.\n\nPero para su desgracia, ninguno de los tres había recordado un\nimportantísimo detalle: el encantamiento solo duraba quince\nminutos.";
    historia[4] = "El encantamiento se rompió antes que llegaran\n      al otro lado, y las fuertes corrientes regresaron.\n\n\n\nUna figura encapuchada apareció y se llevó\n    las tres valiosas vidas de los Peverell.";
    historia[5] = "Los hermanos hicieron aparecer un puente\n   y cruzaron a pie.\n       Cuando se hallaban a mitad de camino,\n                una figura encapuchada les cerró el paso.";
    historia[6] = "Estaba contrariada porque acababa de perder a tres posibles víctimas.\n\nPero ella fue muy astuta y, fingiendo feliciarlos, les dio\nla opción a cada uno de elegir una recompensa por\nhaberla eludido.\n\n El hermano mayor, que era muy combativo, pidió\n la varita mágica más poderosa que existiera.\n\nEl hermano del medio, arrogante, pidió el poder \nde devolver la vida a los muertos.\n\nIgnotus, más humilde, pidió algo que le permitiera marcharse\nsin que ella pudiera seguirlo";
    historia[7] = "La Muerte hizo una varita con una rama de un sáuco y se  entregó a Antioch.\n\nLuego, sacó una piedra de la orilla del río y se la entregó a Cadmus, diciéndole que tenía\nel poder de resitar a los muertos.\n\nFinalmente, de mala gana, le entregó su propia capa de invisibilidad al menor de los tres.\nEntonces se apartó, y dejó que los Peverell siguiea cada quien su camino.";
    historia[8] = "Antioch siguió viajando algo más de una semana.\n\n\nAl llegar a una lejana aldea, buscó a un mago\ncon el que mantenía una grave disputa.\nNaturalmente, armado con la Varita de Saúco,\nera inevitable que ganara el duelo.\n\n\nTras matarlo, se marchó...";
    historia[9] = "Se dirigió a una posada donde se jactó de lo invencible que se\nhabía vuelto gracias a la varita, y festejó sus victorias.\n\nEsa misma noche, un hechicero se acercó con sigilio mientras\nel hermano mayor yacía borracho en su cama, le robó la varita y\npor si acaso, le cortó el cuello.";
    historia[10] = "Y así fue como La Muerte,\n              se llevó al hermano mayor...";
    historia[11] = "Decidió descansar antes de retomar su viaje temprano por la mañana.\nEsa misma noche, un hechicero se acercó con sigilo e intentó robarle varita,pero Antioch\nlogró defenderse a tiempo, evitando el robo y acabando con la vida del hechicero\ncomo recompensa.";
    historia[12] = "La muerte, enfurecida porque la habían burlado\nnuevamente, se apareció en la habitación de Antioch.\nAstuta como siempre, lo retó a un duelo que él aceptó sin saber\nque estaba condenado a perder.\nAsí fue como, en un intercambio sin sentido y desigual,\nla Muerte se llevó al hermano mayor.";
    historia[13] = "Entretanto, el hermano del medio regresó a su casa\n  donde vivía en soledad.\n    Con la piedra filosofal en mano, debía decidir\n        el uso que iba a darle.";
    historia[14] = "Arrogante y sediento de poder, se encargó de preparar\n      la cantidad suficiente de elíxeres como para vivir eternamente.";
    historia[15] = "Pasado un tiempo y habiendo quedado solo,\n  Cadmus se arrepintió del poder que le había dado a la piedra.\n     Comprendió que vivir eternamente no tenía sentido sin sus queridos.\n\n               Y en medio de tanta angustia, decidió ponerle fin a su vida.";
    historia[16] = "Cadmus giró tres veces la piedra en la mano.\nPara su asombro y placer, apareció ante él la figura de la muchacha con quien\nse habría casado si ella no hubiera muerto prematuramente\n\nPero la muchacha estaba triste y distante, separada de él por un velo.";
    historia[17] = "Pese a que ella había regresado al mundo de los mortales, no pertenecía a él y por eso sufría.\nAl fin, el hombre enloqueció a causa de su desesperada nostalgia\nse suicidó para reunirse con su amada.\n\nY así fue como la Muerte se llevó al hermano del medio.";
    historia[18] = "Ignouts continuó con su camino alejado de sus dos\n    hermanos.\n      La muerte lo buscó durante años pero nunca\n          logró dar con él.\n\nLlegada una edad muy avanzada, el hermano del\n    medio decidió quitarse por fin la capa.";
    historia[19] = "A diferencia de sus hermanos, Ignotus era de corazón noble.\n     Decidió regalarle la capa a su hijo y recibió a la Muerte como si fuera una vieja amiga.";
    historia[20] = "Y así, como iguales, ambos se alejaron de la vida";
    historia[21] = "Este trabajo se realizó a partir de la historia\n'La fabula de los tres hermanos',\nescrita por J.K Rowling.\n\n\n\nAlgunas imágenes fueron tomadas de la película,\notras son ilustraciones sacadas de la web.\n\n\n\nPara su edición se utilizaron los programas:\nPhotoshop CC 2020\n&\nIllustrator CC 2020\n\n\n\nTipografías utilizadas:\n'Gabriola' para la narración\n&\n'Garamond' para los créditos\n\n\n\nAlumna encargada del trabajo: Lara Belén Ignoffo.\n\n\n\n¡Espero que lo hayas disfrutado!";
  }
}

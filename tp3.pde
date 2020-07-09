PImage sc1, sc2, sc3, sc4, sc5, sc6, sc7, sc8, sc9, sc10, sc11, sc12, sc13, sc14, sc15, sc16, sc17, sc18, sc19, sc20, sc21, sc22;

PFont historia;
PFont creditos;

int pantalla = 1;
float vel = 0.7;
float posy1_i = 610;
float posy1 = posy1_i;

void setup() {
  size(800, 600);
  sc1 = loadImage ("Imagen1.jpg");
  sc2 = loadImage ("Imagen2.jpg");
  sc3 = loadImage ("Imagen3.jpg");
  sc4 = loadImage ("Imagen4.jpg");
  sc5 = loadImage ("Imagen5.jpg");
  sc6 = loadImage ("Imagen6.jpg");
  sc7 = loadImage ("Imagen7.jpg");
  sc8 = loadImage ("Imagen8.jpg");
  sc9 = loadImage ("Imagen9.jpg");
  sc10 = loadImage ("Imagen10.jpg");
  sc11 = loadImage ("Imagen11.jpg");
  sc12 = loadImage ("Imagen12.jpg");
  sc13 = loadImage ("Imagen13.jpg");
  sc14 = loadImage ("Imagen14.jpg");
  sc15 = loadImage ("Imagen15.jpg");
  sc16 = loadImage ("Imagen16.jpg");
  sc17 = loadImage ("Imagen17.jpg");
  sc18 = loadImage ("Imagen18.jpg");
  sc19 = loadImage ("Imagen19.jpg");
  sc20 = loadImage ("Imagen20.jpg");
  sc21 = loadImage ("Imagen21.jpg");
  sc22 = loadImage ("Imagen22.jpg");
  historia = loadFont ("Gabriola-34.vlw");
  creditos = loadFont ("Garamond-40.vlw");
}

void draw() {
  if (pantalla == 1) {
    image(sc1, 0, 0);
    if ((mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565) 
      || (mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 2) {
    image(sc2, 0, 0);
    fill(0);
    textAlign(LEFT);
    textFont(historia);
    textSize(28);
    text("Había una vez tres hermanos, Antioch, Cadmus e Ignotus Peverell,\nque viajaban a la hora del crepúsculo por una solitaria y sinuosa \ncarretera.", 35, 240);
    text("Los hermanos llegaron a un río demasiado profundo para vadearlo\n y demasiado peligroso para cruzarlo a nado.", 35, 350);
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) { 
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 3) {
    image(sc3, 0, 0);
    textAlign(LEFT);
    text("Pero como eran muy diestros en", 380, 200);
    textSize(34);
    text("las artes mágicas, no tuvieron que", 400, 225);
    textSize(28);
    text("hacer nada más que agitar sus varitas.", 435, 250);
    textAlign(CENTER);
    text("ELIGE UN HECHIZO", 400, 450);
    if ((mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565) 
      || (mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 4) {
    image(sc4, 0, 0);
    textAlign(LEFT);
    text("Congelaron las peligrosas aguas que los amenazaban y\ncontinuaron con su travesía a pie.\n\nPero para su desgracia, ninguno de los tres había recordado un\nimportantísimo detalle: el encantamiento solo duraba quince\nminutos.", 35, 200);
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 5) {
    image(sc5, 0, 0);
    fill(219, 207, 186);
    textSize(28);
    text("El encantamiento se rompió antes que llegaran", 280, 100);
    text("al otro lado, y las fuertes corrientes regresaron.", 315, 125);
    text("Una figura encapuchada apareció y se llevó consigo las", 280, 240);
    text("de los Peverell.", 580, 265);
    textSize(34);
    text("tres valiosas vidas", 380, 265);
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 6) {
    image(sc6, 0, 0);
    fill(0);
    textSize(28);
    textAlign(LEFT);
    text("Hicieron aparecer un puente y cruzaron a pie.\n\nCuando se hallaban a mitad de camino, una\nfigura encapuchada les cerró el paso.", 360, 90);
    textSize(34);
    text("Y la Muerte les habló.", 500, 240);
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 7) {
    image(sc7, 0, 0);
    textAlign(LEFT);
    textSize(28);
    text("Estaba contrariada porque acababa de perder a tres posibles", 35, 75);
    text("Pero ella fue muy\nla opción a cada uno de elegir una recompensa por\nhaberla eludido", 35, 150);
    text("y, fingiendo felicitarlos, les dio", 260, 150);
    text("El hermano mayor, que era muy combativo, pidió\nla varita mágica más poderosa que existiera.\n\nEl hermano del medio, arrogante, pidió el poder de\ndevolver la vida a los muertos.\n\nIgnotus, más humilde, pidió algo que le permitiera marcharse\nsin que ella pudiera seguirlo.", 35, 270);
    textSize(34);
    text("víctimas.", 35, 105);
    text("astuta", 190, 150);
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 8) {
    image(sc8, 0, 0);
    textAlign(CENTER);
    fill(0);
    textSize(26);
    text("La Muerte hizo una varita con una rama de un sáuco y se la entregó a Antioch.\nLuego, sacó una piedra de la orilla del río y se la entregó a Cadmus, diciéndole que tenía el\npoder de resucitar a los muertos.\nFinalmente, de mala gana, le entregó su propia capa de invisibilidad al menor de los tres.\nEntonces se apartó, y dejó que los Peverell siguiera cada quien su camino.", 400, 50);
    textAlign(CENTER);
    text("ELIGE A UN HERMANO", 400, 230);
    if ((mouseX > 325 && mouseX < 475 && mouseY > 510 && mouseY < 570) 
      || (mouseX > 615 && mouseX < 765 && mouseY > 510 && mouseY < 570) 
      || (mouseX > 35 && mouseX < 185 && mouseY > 510 && mouseY < 570)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 9) {
    image(sc9, 0, 0);
    textAlign(LEFT);
    textSize(28);
    text("Antioch siguió viajando algo más de una semana.\nAl llegar a una lejana aldea, buscó a un mago con el que mantenía una grave disputa.\nNaturalmente, armado con la Varita de Saúco, era inevitable que ganara el duelo.\n\nTras matarlo, se marchó.", 35, 45);
    textAlign(CENTER);
    text("REALIZA UNA ACCIÓN", 400, 475);
    if ((mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565)
      || (mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 10) {
    image(sc10, 0, 0);
    textAlign(LEFT);
    text("Se dirigió a una posada donde se jactó de lo invencible que se había vuelto\ngracias a la varita, y festejó sus victorias.\nEsa misma noche, un hechicero se acercó con sigilio mientras el hermano mayor\nyacía borracho en su cama, le robó la varita y, por si acaso, le cortó el cuello.", 75, 50);
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 11) {
    image(sc11, 0, 0);
    fill(219, 207, 186);
    textSize(28);
    text("Y así fue como", 150, 85);
    text("se llevó al hermano mayor.", 250, 110);
    textSize(34);
    text("la Muerte", 283, 85);
    if ((mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565)
      ||(mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 12) {
    image(sc12, 0, 0);
    fill(219, 207, 186);
    textAlign(LEFT);
    textSize(28);
    text("Decidió descansar antes de retomar su viaje por la mañana temprano.", 150, 50);
    text("Esa misma noche, un hechicero se acercó con sigilo e intentó robar ", 200, 75);
    text("la varita, pero Antioch, astuto y perspicaz, logró defenderse", 250, 100);
    text("a tiempo, evitando el robo y acabando con la vida del", 300, 125);
    text("hechicero como recompensa.", 350, 150); 
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 13) {
    image(sc13, 0, 0);
    fill(0);
    textAlign(LEFT);
    text("La muerte, enfurecida porque la habían burlado\nnuevamente, se apareció en la habitación de Antioch.\nAstuta como siempre, lo retó a un duelo que él aceptó sin saber\nque estaba condenado a perder.\nAsí fue como, en un intercambio sin sentido y desigual,\nla Muerte se llevó al hermano mayor", 35, 280);
    if ((mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565)
      ||(mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 14) {
    image(sc14, 0, 0);
    fill(219, 207, 186);
    textAlign(LEFT);
    text("Entretanto, el hermano del medio regresó a su casa \ndonde vivía en soledad.\nCon la piedra filosofal en mano, debía decidir el uso\nque iba a darle.", 35, 75);
    textAlign(RIGHT);
    text("ELIGE QUÉ HACER", 400, 475);
    textAlign(LEFT);
    fill(0);
    text("CON LA PIEDRA", 410, 475);
    if ((mouseX > 200 && mouseX <350 && mouseY > 505 && mouseY < 565)
      ||(mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 15) {
    image(sc15, 0, 0);
    text("Arrogante y sediento de poder, se encargó de preparar", 210, 175);
    text("la cantidad suficiente de elíxeres como para vivir eternamente.", 280, 200);
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 16) {
    image(sc16, 0, 0);
    fill(219, 207, 186);
    textSize(28);
    text("Pasado un tiempo y habiendo quedado solo,", 150, 75);
    textSize(24);
    text("Cadmus se arrepintió del uso que le había dado a la piedra.", 200, 100);
    textSize(26);
    text(" Comprendió que vivir eternamente no tenía sentido", 250, 125);
    text("si sus seres queridos no podían acompañarlo.", 300, 150);
    text("Y en medio de la angustia, decidió poner", 350, 175);
    textSize(33);
    text("fin a su vida.", 580, 200);
    if ((mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565)
      ||(mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 17) {
    image(sc17, 0, 0);
    textAlign(LEFT);
    textSize(28);
    fill(219, 207, 186);
    text("Cadmus giró tres veces la piedra en la mano.\nPara su asombro y placer, apareció ante él la figur\nde la muchacha con quien se habría casado si ella no \nhubiera muerto prematuramente\n\nPero la muchacha estaba triste y distante, separada de él por\n una especie de velo.", 30, 30);
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 18) {
    image(sc18, 0, 0);
    fill(219, 297, 186);
    textSize(26);
    text("Pese a que ella había regresado al mundo de los mortales, no pertenecía a él y por eso sufría.\nAl fin, el hombre enloqueció a causa de su desesperada nostalgia y se suicidó para\nreunirse de una vez por todas con su amada.", 30, 30);
    text("Y así fue como ", 30, 120);
    text("se llevó al hermano mediano.", 250, 120);
    textSize(32);
    text("la Muerte", 150, 120);
    if ((mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565)
      ||(mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 19) {
    image(sc19, 0, 0);
    fill(0);
    textSize(24);
    textAlign(LEFT);
    text("Ignouts continuó con su camino alejado de sus dos", 380, 30);
    text("hermanos.", 395, 55);
    text("La Muerte lo buscó durante años pero nunca", 410, 100);
    text("logró encontrarlo.", 425, 125);
    text("Llegado a una edad muy avanzada, el hermano menor", 380, 185);
    text("decidió por fin quitarse la capa de invisibilidad.", 395, 210);
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 20) {
    image(sc20, 0, 0);
    textSize(26);
    text("A diferencia de sus hermanos, Ignotus era de corazón noble.", 50, 80);
    text("Decidió regalarle la capa a su hijo y recibió a la Muerte como si fuera una vieja amiga.", 80, 105);
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 21) {
    image(sc21, 0, 0);
    textSize(30);
    textAlign(CENTER);
    text("Y así, como iguales, ambos se alejaron de la vida", 400, 800);
    if ((mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565)
      ||(mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565)) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if
    (pantalla == 22) {
    image(sc22, 0, 0);
    fill(0);
    textAlign(CENTER);
    textFont(creditos);
    textSize(36);
    text("Este trabajo se realizó a partir de la historia\n'La fabula de los tres hermanos',\nescrita por J.K Rowling.\n\n\n\nPara la edición de imágenes se utilizaron los programas:\nPhotoshop CC 2020\n&\nIllustrator CC 2020\n\n\n\nAlumna encargada del trabajo: Lara Belén Ignoffo.\n\n\n\n¡Espero que lo hayas disfrutado!", 400, posy1);
    posy1 = posy1 - vel;      
    if (mouseX > 45 && mouseX < 195 && mouseY > 505 && mouseY < 565) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  }
}

void mouseClicked() {
  if (pantalla == 1) {
    if (mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565) {
      pantalla = 2;
    }
    if (mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565) {
      pantalla = 22;
    }
  } else if
    (pantalla == 2) {
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      pantalla = 3;
    }
  } else if
    (pantalla == 3) {
    if (mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565) {
      pantalla = 4;
    }
    if (mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565) {
      pantalla = 6;
    }
  } else if
    (pantalla == 4) {
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      pantalla = 5;
    }
  } else if
    (pantalla == 5) {
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      pantalla = 1;
    }
  } else if
    (pantalla == 6) {
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      pantalla = 7;
    }
  } else if
    (pantalla == 7) {
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      pantalla = 8;
    }
  } else if
    (pantalla == 8) {
    if (mouseX > 325 && mouseX < 475 && mouseY > 510 && mouseY < 565) {
      pantalla = 9;
    }
    if (mouseX > 615 && mouseX < 765 && mouseY > 510 && mouseY < 570) {
      pantalla = 14;
    }
    if (mouseX > 35 && mouseX < 185 && mouseY > 510 && mouseY < 570) {
      pantalla = 19;
    }
  } else if
    (pantalla == 9) {
    if (mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565) {
      pantalla = 10;
    }
    if (mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565) {
      pantalla = 12;
    }
  } else if
    (pantalla == 10) {
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 710) {
      pantalla = 11;
    }
  } else if
    (pantalla == 11) {
    if (mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565) {
      pantalla = 8;
    }
    if (mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565) {
      pantalla = 1;
    }
  } else if
    (pantalla == 12) {
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      pantalla = 13;
    }
  } else if
    (pantalla == 13) {
    if (mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565) {
      pantalla = 8;
    }
    if (mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565) {
      pantalla = 1;
    }
  } else if
    (pantalla == 14) {
    if (mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565) {
      pantalla = 15;
    }
    if (mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565) {
      pantalla = 17;
    }
  } else if
    (pantalla == 15) {
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      pantalla = 16;
    }
  } else if
    (pantalla == 16) {
    if (mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565) {
      pantalla = 8;
    }
    if (mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565) {
      pantalla = 1;
    }
  } else if
    (pantalla == 17) {
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      pantalla = 18;
    }
  } else if
    (pantalla == 18) {
    if (mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565) {
      pantalla = 8;
    }
    if (mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565) {
      pantalla = 1;
    }
  } else if
    (pantalla == 19) {
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      pantalla = 20;
    }
  } else if
    (pantalla == 20) {
    if (mouseX > 605 && mouseX < 755 && mouseY > 505 && mouseY < 565) {
      pantalla = 21;
    }
  } else if
    (pantalla == 21) {
    if (mouseX > 200 && mouseX < 350 && mouseY > 505 && mouseY < 565) {
      pantalla = 8;
    }
    if (mouseX > 450 && mouseX < 600 && mouseY > 505 && mouseY < 565) {
      pantalla = 1;
    }
  } else if
    (pantalla == 22) {
    if (mouseX > 45 && mouseX < 195 && mouseY > 505 && mouseY < 565) {
      posy1 = posy1_i;
      pantalla = 1;
    }
  }
}

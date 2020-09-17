/*El primer parámetro indica el estado (estado == imagen[] == historia[]).
Los decimales son los números que se multiplican por width y height, indicando la posición en X e Y del texto. 
El 0 o 255 indica si el texto está negro o blanco.
Los últimos números en las funciones de "pantalla2botones" indican el número de arreglo del botón al que se quiere acceder
*/
void historia() {
  pantalla2botones(0, 0, 0, 0, 0, 1); //------- Los valores en "0" porque no tiene texto para mostrar
  pantallaCreditos(21, posYCred);
  pantallaContinuar(1, 0.035, 0.4, 0);
  pantalla2botones(2, 0.48, 0.3, 0, 6, 7);
  pantallaContinuar(3, 0.045, 0.3, 0);
  pantallaUnica(4);
  pantallaContinuar(5, 0.45, 0.15, 0);
  pantallaContinuar(6, 0.045, 0.15, 0);
  pantalla3hermanos(7);
  pantalla2botones(8, 0.045, 0.045, 0, 11, 12);
  pantallaContinuar(9, 0.1, 0.1, 255);
  pantallaEoC(10, 0.045, 0.1, 255);
  pantallaContinuar(11, 0.045, 0.055, 255);
  pantallaEoC(12, 0.045, 0.47, 0);
  pantalla2botones(13, 0.045, 0.1, 255, 13, 14);
  pantallaContinuar(14, 0.2, 0.1, 0);
  pantallaEoC(15, 0.030, 0.045, 255);
  pantallaContinuar(16, 0.030, 0.045, 255);
  pantallaEoC(17, 0.030, 0.045, 255);
  pantallaContinuar(18, 0.48, 0.04, 0);
  pantallaContinuar(19, 0.07, 0.14, 0);
  pantallaEoC(20, 0.25, 0.15, 0);
}

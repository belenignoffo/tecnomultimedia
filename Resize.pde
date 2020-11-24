/*
Clase de redimención
*/
class Resize {

  float porcentajeX (float p_valor) {
    return round(map(p_valor, 0, 800, 0, width));
  }
  
  float porcentajeY (float p_valor) {
    return round(map(p_valor, 0, 600, 0, height));
  }
}


class hacha {
  PVector start, end, middle;
  int r;
  float caca = 0;
  float velocidad;

  hacha(PVector posicion, PVector destino, float velocidad) {
    this.velocidad = velocidad;
    start = posicion;
    end = destino;
  }

  void pintHacha() {
    r=r+20;
    caca=caca+velocidad;
    middle = PVector.lerp(start, end, caca); //caca es el porcentaje (de 0 a 1) del recorrido que tiene que hacer la hacha. Por eso le voy sumando un poco en cada ciclo.
    //println(middle);
    pushMatrix();
    translate(middle.x, middle.y);
    rotate(radians(r));
    image(DB, 0, 0, 50, 50);
    popMatrix();
  }
}
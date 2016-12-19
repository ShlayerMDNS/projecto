
class malo {
  PVector start, end;
  PVector middle = new PVector(0,0,0);
  int r;
  float unotage = 0;
  float velocidad;
  int nskin;

  malo(PVector posicion, PVector destino, float velocidad, int nskin) {
    this.velocidad=velocidad;
    this.nskin=nskin;
    start = posicion;
    end = destino;
  }


  void datass() {
    middle = PVector.lerp(start, end, unotage);
    image(skins[nskin], middle.x, middle.y);
    r=r+20;
    unotage=unotage+velocidad;
    
    if(col(middle.x, middle.y, Hal.x,Hal.y)){
      vida=vida-1;
    }
  }
}
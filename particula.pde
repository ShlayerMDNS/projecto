class Particula {
  PImage particula;
  int x, y;

  Particula(PImage particula) {
    this.x=x;
    this.y=y;
    this.particula=particula;
    y=0;
    x=(int)random(0, 1000);
  }

  void actu() {
    y=y+(int)random(1, 5);
  }

  void pint() {
      //fill(255,0,0);
      //ellipse(x,y,50,50);
      //println("x"+x+"y"+y);
    image(particula, x, y);
  }
}

class GBot {
  PImage bot;
  int x, y;
  int pos_x;
  int pos_y;
  int an=0;
  int velW;
  int velA;



  GBot(int x, int y) {
    this.bot=bot;
    this.x=x;
    this.y=y;
  }


  void actu() {
    if(vida > 0){
    image(botTiles[an], x-16, y-16, 32, 32);
    pos_x=x/32;
    pos_y=y/32;
    x=x+velA;
    y=y+velW;
    }
  }
}


void keyPressed() {
  if (keyCode == 'W') {
    Hal.velW = -3;
  }
  if (keyCode == 'S') {
    Hal.velW = 3;
  }
  if (keyCode == 'A') {
    Hal.velA = -3;
  }
  if (keyCode == 'D') {
    Hal.velA = 3;
  }

}




void keyReleased() {
  if (Hal.an==1) {
    Hal.an=0;
  }
  if (Hal.an==8) {
    Hal.an=6;
  }
  if (Hal.an==4) {
    Hal.an=3;
  }
  if (Hal.an==10) {
    Hal.an=9;
  }
    //separacion(int vel)
    if (Hal.velW==3) {
    Hal.velW = 0;
    //println("hola");
  }
  if (Hal.velW==-3) {
    Hal.velW = 0;
  }
  if (Hal.velA==3) {
    Hal.velA = 0;
  }
  if (Hal.velA==-3) {
    Hal.velA = 0;
  }
  if (key == CODED) {
    if (keyCode == UP) {
      pointSpawn();
      println("TIO ESTO FUNCIONA!!!");
    }
  }
}
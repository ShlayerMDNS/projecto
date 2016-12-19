particleSystem lol;
int estado;
PImage title;
PImage Bjugar;
int mx = mouseX;
int my = mouseY;
GBot Hal;
HachaSystem HS;
PImage GD;
PImage paw;
PImage blo;
PImage torso;
PImage DB;
PImage BKG;
int xBoss=500;
int yBoss=120;
int pawR=270;
int pawX=500;
int pawY=500;
int r=1;
int yy=1;
int m=1;
int tiempo=0;
int mark=0;
int tem=0;
PImage[] botTiles;
PImage bot;
int a=12;
PImage skin;
PImage parti;
gatuno cat;
PImage[] skins = new PImage[2];
maloSystem MS;
int puntos=1;
int vida = 3;
PFont f;
PImage YouDied;
int opacidad = 0;
import ddf.minim.*;
import ddf.minim.effects.*;
Minim minim;
AudioPlayer groove;

void init() {
  skins[0]= loadImage("malo1.png");
  skins[1]= loadImage("malo2.png");   
  cat = new gatuno();
  lol = new particleSystem();
  title = loadImage("title.png");
  Bjugar = loadImage("btnJugar.png");
  GD = loadImage("gato-destroyer.png");
  paw = loadImage("PAW.png");
  blo = loadImage("Untitled-1.png");
  torso = loadImage("Untitled-2.png");
  botTiles = new PImage [a];
  bot=loadImage("Untitled-3.png");
  DB=loadImage("DravenBlade.png");
  BKG=loadImage("images.png");
  skin=loadImage("spainv.png");
  parti=loadImage("SpaceParticle.png");
  imageMode(CENTER);
  Hal=new GBot(500, 500);
  HS=new HachaSystem();
  MS=new maloSystem();
  for (int i=0; i<a; i++) {
    botTiles[i]= createImage(32, 32, ARGB);
    botTiles[i].copy(bot, i*15, 0, 15, 19, 0, 0, 32, 32);
  }
  YouDied = loadImage("YouDied.png");
}


void pointSpawn() {
  if((int)random(0,100)<(puntos/5)+1){
  PVector teemo =  new PVector(random(0, 1000), 0);
  MS.algo(teemo, new PVector(Hal.x, Hal.y), 0.01, (int)random(0, 2));
  }
}


boolean col (float x, float y, float x2, float y2) {
  if (dist(x, y, x2, y2) < 30) {
    return true;
  }
  return false;
}
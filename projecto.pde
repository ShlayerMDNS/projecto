

void settings() {
  size(1000, 800);
}
void setup() {
  init();  
  f = loadFont("Carlito-Italic-30.vlw");
  textSize(39);
  textFont(f);
  minim = new Minim(this);
  groove = minim.loadFile("DarkSouls.mp3", 2048);
}


void draw() {
  background(0);
  lol.actu();
  lol.algo();
  switch(estado) {
  case 0:

    image(title, 500, 100);
    image(Bjugar, 500, 350);
    if (mouseX>450 && mouseX<649 && mouseY>320 && mouseY<405) {
      estado=estado+1;
    }
    break;
  case 1:
    //image(BKG, 0, 0);
    image(torso, 500, 300);
    cat.demientras();
    cat.gatugat();
    pawR=pawR+r;
    Hal.actu();
    HS.actu();
    MS.actu(); 
    pointSpawn();
    pointSpawn();
    text("Puntos="+puntos, 20, 50);
    text("Vidas="+vida,20,80);
    if(vida==0){
    estado=2;
    }
    break;
    case 2:
    YD();
    groove.play();
    
    break;
  }
  println(estado);
}

class HachaSystem {
  ArrayList hachas=new ArrayList();
  HachaSystem() {
  }

  void algo(PVector posicion, PVector destino, float velocidad) {
    hachas.add(new hacha(posicion, destino, velocidad));
  }

  void actu() {
    for (int i=0; i<hachas.size(); i++) {
      hacha c=(hacha)hachas.get(i);
      c.pintHacha();
      //println(hachas.size());
      if (c.middle.x<0 || c.middle.y<0 || c.middle.x>1000 || c.middle.y>800) {
        hachas.remove(i);
      }
      if (c.caca >= 1) hachas.remove(i); //Miro si ya ha acabado el recorrido
    }
    MS.colisionhachamalo(hachas);
  }

  /*void clic() {
   for (int i=0; i<hachas.size(); i++) {
   hacha c = (hacha)hachas.get(i);
   c.start.set(Hal.x, Hal.y);
   c.end.set(mouseX, mouseY);
   }
   }*/
}

void mouseReleased() {
  HS.algo(new PVector(Hal.x, Hal.y), new PVector(mouseX, mouseY), 0.01);
  //HS.clic();
  
}
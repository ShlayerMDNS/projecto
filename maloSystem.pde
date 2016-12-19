
class maloSystem {
  ArrayList malos=new ArrayList();
  maloSystem() {
  }

  void algo(PVector posicion, PVector destino, float velocidad, int nskin) {
    malos.add(new malo(posicion, destino, velocidad, nskin));
  }

  void actu() {
    for (int i=0; i<malos.size(); i++) {
      malo k=(malo)malos.get(i);
      k.datass();
      if (k.middle.x<0 || k.middle.y<0 || k.middle.x>1000 || k.middle.y>800) {
        malos.remove(i);
      }
      if (k.unotage >= 1) malos.remove(i); //Miro si ya ha acabado el recorrido
    }
  }

  void colisionhachamalo(ArrayList hachas) {
    for (int i=0; i<hachas.size(); i++) {
      hacha c=(hacha)hachas.get(i);
      //guardo el vector d las hachas
      for (int ii=0; ii<malos.size(); ii++) {
        malo k=(malo)malos.get(ii);
        //guardo el vector del malo
        //k.datass();
        println(k.middle);
        println(c.middle);

        
        if(col(k.middle.x,k.middle.y,c.middle.x,c.middle.y) == true){
          malos.remove(ii);
          puntos = puntos+1;
        }
      }
    }
  }
} 
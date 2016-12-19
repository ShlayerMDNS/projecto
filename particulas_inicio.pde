class particleSystem {
  ArrayList particulas = new ArrayList();

  particleSystem() {
  }

  void algo() {
    particulas.add(new Particula(parti));
  }

  void actu() {
    for(int i=0; i<particulas.size(); i++){
    Particula j=(Particula)particulas.get(i);
    j.pint();
    j.actu();
    if (j.x<0 || j.y<0 || j.x>1000 || j.y>800) {
        particulas.remove(i);
      }
    }
  }
}
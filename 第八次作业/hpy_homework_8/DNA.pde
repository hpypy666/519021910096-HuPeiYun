class DNA{
  
  PVector[] genes;
  
  float maxforce = 0.1;
   
  //初始生成
   DNA() {
    genes = new PVector[lifetime];
    for (int i = 0; i < genes.length; i++) {
      float angle = random(TWO_PI);
      genes[i] = new PVector(cos(angle), sin(angle));
      genes[i].mult(random(0, maxforce));
    }
    
    genes[0].normalize();
   }
   
   //复制
    DNA(PVector[] newgenes) {
    genes = newgenes;
  }
  
  //交叉
  DNA crossover(DNA partner) {
    PVector[] child = new PVector[genes.length];
    // Pick a midpoint
    int crossover = int(random(genes.length));
    // Take "half" from one and "half" from the other
    for (int i = 0; i < genes.length; i++) {
      if (i > crossover) child[i] = genes[i];
      else               child[i] = partner.genes[i];
    }    
    DNA newgenes = new DNA(child);
    return newgenes;
  }
  
  
  //变异
    void mutate(float m) {
    for (int i = 0; i < genes.length; i++) {
      if (random(1) < m) {
        float angle = random(TWO_PI);
        genes[i] = new PVector(cos(angle), sin(angle));
        genes[i].mult(random(0, maxforce));
        //        float angle = random(-0.1,0.1);
        //        genes[i].rotate(angle);
        //        float factor = random(0.9,1.1);
        //        genes[i].mult(factor);
        if (i ==0) genes[i].normalize();
      }
    }
  }
  
}

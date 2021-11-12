class Ball {
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  float r;  //小球半径
  
  float recordDist;
  float fitness;
  
  DNA dna;
  int geneCounter = 0;
  
  boolean hitObstacle = false;    // 是否撞击障碍物
  boolean hitTarget = false;   // 是否撞击目标
  int finishTime;              // 完成时间
  
 Ball(PVector l, DNA dna_, int totalRockets) {
    acceleration = new PVector();
    velocity = new PVector();
    position = l.get();
    r = 10;
    dna = dna_;
    finishTime = 0;          // We're going to count how long it takes to reach target
    recordDist = 10000;      // Some high number that will be beat instantly
  }
  
  void fitness() {
    if (recordDist < 1) recordDist = 1;

    // Reward finishing faster and getting close
    fitness = (1/(finishTime*recordDist));

    // Make the function exponential
    fitness = pow(fitness, 4);

    if (hitObstacle) fitness *= 0.1; // lose 90% of fitness hitting an obstacle
    if (hitTarget) fitness *= 2; // twice the fitness for finishing!
  }
  
    void run(ArrayList<Obstacle> os) {
    if (!hitObstacle && !hitTarget) {
      applyForce(dna.genes[geneCounter]);
      geneCounter = (geneCounter + 1) % dna.genes.length;
      update();
      obstacles(os);
    }
    // Draw me!
    if (!hitObstacle) {
      display();
    }
  }
  
  void checkTarget() {
    float d = dist(position.x, position.y, target.position.x, target.position.y);
    if (d < recordDist) recordDist = d;

    if (target.contains(position) && !hitTarget) {
      hitTarget = true;
    } 
    else if (!hitTarget) {
      finishTime++;
    }
  }
  
  
  void applyForce(PVector f) {
    acceleration.add(f);
  }
  
    void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }


  void obstacles(ArrayList<Obstacle> os) {
    for (Obstacle obs : os) {
      if (obs.contains(position)) {
        hitObstacle = true;
      }
    }
  }
  
  void display() {
    //background(255,0,0);
    float theta = velocity.heading2D() + PI/2;
    fill(200, 100);
    stroke(0);
    strokeWeight(1);
    pushMatrix();
    translate(position.x, position.y);
    rotate(theta);

    fill(#3C61F0);
    circle(0,0,r);
    

    popMatrix();
  }

  float getFitness() {
    return fitness;
  }

  DNA getDNA() {
    return dna;
  }

  boolean stopped() {
    return hitObstacle;
  }
  
  
}

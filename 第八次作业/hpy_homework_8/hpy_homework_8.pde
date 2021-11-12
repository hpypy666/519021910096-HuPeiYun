int lifetime;  //一代的存活时间
Population population; 
Obstacle target; 

int lifecycle; 
int recordtime;

ArrayList<Obstacle> obstacles;


void setup() {
  size(800, 800);
  lifetime = 500;

  lifecycle = 0;
  recordtime = lifetime;
  
  target = new Obstacle(width/2-12, 24, 24, 24);
  float mutationRate = 0.01;
  population = new Population(mutationRate, 70);
  obstacles = new ArrayList<Obstacle>();
  obstacles.add(new Obstacle(0, height/2, width/4+50, height/2));
  obstacles.add(new Obstacle(0, height/4, width/2+80, height/4+80));
  obstacles.add(new Obstacle(3*width/4, height/4, width/4+40, height/2));
  obstacles.add(new Obstacle(width/2+30, 3*height/4, width/2, height/4));
}

void draw(){
   background(255);
   target.display();
   
   if (lifecycle < lifetime) {
    population.live(obstacles);
    if ((population.targetReached()) && (lifecycle < recordtime)) {
      recordtime = lifecycle;
    }
    lifecycle++;
    // Otherwise a new generation
  } 
  else {
    lifecycle = 0;
    population.fitness();
    population.selection();
    population.reproduction();
  }
  
    for (Obstacle obs : obstacles) {
    obs.display();
  }
  
    fill(0);
  text("Generation #: " + population.getGenerations(), 10, 18);
  text("Cycles left: " + (lifetime-lifecycle), 10, 36);
  text("Record cycles: " + recordtime, 10, 54);
  
  
}

void mousePressed() {
  target.position.x = mouseX;
  target.position.y = mouseY;
  recordtime = lifetime;
}

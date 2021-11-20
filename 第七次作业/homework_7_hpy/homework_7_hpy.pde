color green = color(9,95,24);
color gray = color(255);
color red = color(234,132,28);


float system_radius = 3.0;
float mx=0,my=0;
int mode=0;

void setup()
{
  size(400,400);
  color c1=(#03045e);
  color c2=(#6A8EAA);
  gradientBackground(c1, c2);
  textSize(20);
  fill(255);
  text("press 'g' or 'r' to change mode",50,50);
//  background(#03045e);
  myset(new PVector(0,0));
}


void gradientBackground(color c1, color c2) {
  for (int i=0; i<=width; i++){
    for (int j = 0; j<=height; j++){
      color c = color(
      (red(c1)+(j)*((red(c2)-red(c1))/height)),
      (green(c1)+(j)*((green(c2)-green(c1))/height)),
      (blue(c1)+(j)*((blue(c2)-blue(c1))/height)) 
        );
      set(i, j, c);
    }
  }
} 

void draw()
{
  if(key=='g'){
    mode=0;
  }
  if(key=='r'){
    mode=1;
  }
  float theta = random(6*PI/5,9*PI/5);
  PVector ploc = new PVector(cos(theta)*system_radius,sin(theta)*system_radius);
  float phi = random(-atan(0.5),atan(0.5));
  PVector pdir = new PVector(cos(theta-PI+phi),sin(theta-PI+phi));
  boolean hit = false;
  if(mode==0){
  while (!hit && ploc.mag() <= system_radius) {
    ploc.add(pdir);
    if (myget(ploc) == green) {
      myset(ploc);
      hit = true;
    }    
  }
}
  if(mode==1){
    while (!hit && ploc.mag() <= system_radius) {
    ploc.add(pdir);
    if (myget(ploc) == red) {
      myset(ploc);
      hit = true;
    }    
  }
    
  }
}

color myget(PVector pos)
{
  return get(int(pos.x + mx),int(pos.y + my));
}
void myset(PVector pos)
{
  int x = int(pos.x + mx);
  int y = int(pos.y + my);
  for (int i = x - 2; i <= x + 2; i++) {
    for (int j = y - 2; j <= y + 2; j++) {
      if (mode==0&&get(i,j) != green) {
        set(i,j,green);
      }
      if(mode==1&&get(i,j) !=red){
        set(i,j,red);
      }
    }
  }
  set(x+1,y+1,gray);
  set(x,y,gray);
  // set new system radius if appropriate
  float m = pos.mag();
  if (m * 2.0 >= system_radius) {
    system_radius = m * 2.0;
  }
}

void mousePressed()
{
  mx=mouseX;
  my=mouseY;
//  background(64);
  myset(new PVector(0,0));
  system_radius = 2.0;
}

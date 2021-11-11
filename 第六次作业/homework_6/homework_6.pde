int mover_num=100;
Mover[] movers = new Mover[mover_num];
int mode=1;
float theta=PI/3;

void setup(){
 size(1000,800);
 background(255);
 
 for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }
  
}

void draw() {
 // background(255);
  fill(6,40,52,50);
  rect(0,0,1000,800);
 
    textSize(32);
    fill(#6B6ED8);
  text("Press'c'or'r'to choose different modes",50,50);
  text("Press'1'or mouse to stop",50,750);
  text("Press'2'to display",500,750);
  

 // frameRate(100);
 checkMode();
  for (int i = 0; i < movers.length; i++) {
    if(mousePressed||key=='1'){
      movers[i].stop();
    }else if(key=='2'){
    }
    if(mode==1) {movers[i].update1();}
    else if(mode==2) {movers[i].update2();}
    movers[i].display();
    movers[i].crack();
}
}

void checkMode(){
  if(keyPressed){
    if(key=='c')mode=1;
    if(key=='r')mode=2;
    
  }
}

int penWeight=20;
int mode=0;      // 定义mode用于切换不同的画笔
int button_weight=70, button_height=40;
int color_weight=40,color_height=40;
int pen_color_R,pen_color_G,pen_color_B;

void setup() {
  size(1000, 800);
  background(255);
  fill(#118ab2);
  rect(0, 700, 1000, 120, 10);
  fill(0);
  textSize(20);
  text("Change Pen",45,730);
  fill(#ffd166);
  rect(50, 750, button_weight, button_height, 10);
   fill(#ffd166);
  rect(150, 750, button_weight, button_height, 10);
    fill(#ffd166);
  rect(250, 750, button_weight, button_height, 10);
   fill(0);
  textSize(20);
  text("Change Color",400,730);
   fill(0);
  rect(400, 750, color_weight, color_height);
  
}

void draw() {
  if(mouseX>=50&&mouseX<=(50+button_weight)&&mouseY>=750&&mouseY<=(750+button_height)&&mousePressed){
     noStroke();
     fill(#ca6702);
     rect(50, 750, button_weight, button_height, 10);
      mode=1;
  }else if(mouseX>=50&&mouseX<=(50+button_weight)&&mouseY>=750&&mouseY<=(750+button_height)&&!mousePressed) {
    fill(#ffd166);
    noStroke();
    rect(50, 750, button_weight, button_height, 10);
  }
  if(mouseX>=150&&mouseX<=(150+button_weight)&&mouseY>=750&&mouseY<=(750+button_height)&&mousePressed) {
    noStroke();
     fill(#ca6702);
     rect(150, 750, button_weight, button_height, 10);
      mode=2;
  }else if(mouseX>=50&&mouseX<=(50+button_weight)&&mouseY>=750&&mouseY<=(750+button_height)&&!mousePressed) {
    fill(#ffd166);
    noStroke();
    rect(150, 750, button_weight, button_height, 10);
  }
  if(mouseX>=250&&mouseX<=(250+button_weight)&&mouseY>=750&&mouseY<=(750+button_height)&&mousePressed) {
     noStroke();
     fill(#ca6702);
     rect(250, 750, button_weight, button_height, 10);
      mode=3;
  }else if(mouseX>=250&&mouseX<=(250+button_weight)&&mouseY>=750&&mouseY<=(750+button_height)&&!mousePressed) {
    fill(#ffd166);
    noStroke();
    rect(250, 750, button_weight, button_height, 10);
  }
  
  checkMode();
  }
  
  void checkMode(){
     if(mode==3)Erase();
     if(mode==2)createCloud();
  if(mode==1)basicPen();

  } 


void basicPen(){
  if (mouseY>=0&&mouseY<=700&&mousePressed) {    
    stroke(pen_color_R,pen_color_G,pen_color_B);
    strokeWeight(penWeight);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}

void Erase(){
   if (mouseY>=0&&mouseY<=700&&mousePressed) {
    stroke(255);
    strokeWeight(penWeight);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}
  

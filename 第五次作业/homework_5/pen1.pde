class Ball{
  float r, x, y;
  float al;
  color coCloud[]={#9d0208,#e63946,#d90429};
  Ball(){
    r=random(0,60);
    al=random(100,200);
    x=random(mouseX,mouseX+50);
    y=random(mouseY,mouseY+50);
  } 
  
  void createBall(){
    int n=int(random(0,2));
  fill(coCloud[n],al);
  noStroke();
  ellipse(x,y,r,r);
}
}

void createCloud(){
  if(mouseY>=0&&mouseY<=700&&mousePressed){
  for(int i=0;i<5;i++){
     Ball b;
  b=new Ball();
   if(b.y+b.r<=700)b.createBall();
  }
  }
}

int locX[]={0,200,200,700,0,0,200,200,500,500,500,530,700,0,100,100,200,360,200,530,530,700,700};
int locY[]={0,0,50,0,200,420,200,420,200,320,420,320,200,450,450,525,450,450,525,450,525,450,525};
int width[]={200,500,500,100,200,200,300,300,200,30,30,170,100,100,100,100,160,170,330,170,170,100,100};
int height[]={200,50,150,200,220,30,220,30,120,100,30,130,250,150,75,75,75,75,75,75,75,75,75};
color RecColor[]={#3C3C3C,#E0E0E0,#FFFFFF,#ADADAD,#FFFFFF,#FFFFFF,#ADADAD,#FFFFFF,#3C3C3C,#FFFFFF,#7B7B7B,#FFFFFF,#FFFFFF,#ADADAD,#FFFFFF,#FFFFFF,#E0E0E0,#3C3C3C,#FFFFFF,#FFFFFF,#ADADAD,#3C3C3C,#FFFFFF};



void setup(){
  size(800,600);
  for(int i=0;i<=22;i++){
    stroke(#000000);
      strokeWeight(5);
      fill(RecColor[i]);
      CreateRect(i);
     
     // color(RecColor[i]);
      }
    

}

void CreateRect(int n){
    rect(locX[n],locY[n],width[n],height[n]);

}

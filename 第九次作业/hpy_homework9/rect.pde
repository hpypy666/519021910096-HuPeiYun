class Rect{
  float RectWidth=kwid;
  float RectHeight=height-Theight;
  float pos_x;
  float pos_y;
  
  Rect(float px,float py){
  //  RectWidth=w;
 //   RectHeight=h;
    pos_x=px;
    pos_y=py;
    
  }
  
  void display(){
   // if(i==0){
    stroke(0);
    strokeWeight(3);
    fill(255);
    rect(pos_x,pos_y,RectWidth,RectHeight);
//    }
  //  if(i==1){
 //   stroke(0);
 //   fill(255);
 //   rect(pos_x,pos_y,RectWidth,RectHeight);
//    }
  }  
  
}

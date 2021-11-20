class Key{
  float wid=kwid;
  float heit=Theight;
  float pos_x;
  float pos_y;
  
  Key(float x,float y){
    pos_x=x;
    pos_y=y;
  }
  
  void display(){
    fill(#F2F7BE);
    alpha(10);
    stroke(0);
    strokeWeight(3);
    rect(pos_x,pos_y,wid,heit);
    
  }
  
  
  
  
}

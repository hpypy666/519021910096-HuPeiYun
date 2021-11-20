class boom{
  PVector ppos;
  PVector vvel;
//  PVector aacc;
  int r=5;
  color co[]={#757bc8,#8187dc,#8e94f2,#9fa0ff,#ada7ff,#bbadff,#cbb2fe,#dab6fc,#ddbdfc,#e0c3fc};
  int alp=255;
  
  
  boom(PVector pos_){
    ppos=pos_;
    vvel=new PVector(random(-1,1),random(-1,0),0);
  }
  
  void display(){
    for(int i=0;i<10;i++){
      fill(co[i],alp);
      ellipse(ppos.x,ppos.y,r,r);
    }
  }
  
  void update(){
    alp--;
    ppos.add(vvel);
  }
  
  void run(){
    display();
    update();
  }
  
  
  
  
  
  
  
  
}

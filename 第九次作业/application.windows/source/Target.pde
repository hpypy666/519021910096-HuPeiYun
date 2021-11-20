class Target{
  float w=kwid;
  float h=Theight;
  PVector pos;
  PVector vel;
  PVector acc;
  int i;
  int col=0;
  
  Target(int i_){
    i=i_;
    pos=new PVector(i*kwid,0,0);
    vel=new PVector(0,5,0);
    acc=new PVector(0,3,0);
  }
  
  
  void run(){
    update();
    display();
  }
  
  
  void update(){
  // vel.add(acc);
   pos.add(vel);
  }
  
  void display(){
    fill(col);
    stroke(#BAD2DB);
    rect(pos.x,pos.y,w,h);
  }
  
  void miss(){
    if(pos.y>=height-Theight-20){
      col=col+20;
      if(keyPressed==false){
    if(pos.y>height+35&&pos.y<=height+40){
   //  TT[j]=new Target(floor(random(0,5.9)));
     // TT[j].run();
     if(hp>0)hp--;
     if(hp<=0)dead=true;
  }
    }
    }
}

//点击键盘可以得分
  void getT(){
    if(keyPressed){
      if(pos.y<=height+30&&pos.y>=height-Theight-30&&pos.x<=kwid&&key=='d'){
     // TT[j]=new Target(floor(random(0,5.9)));
      score++;
      fill(#f3722c);
      rect(pos.x,pos.y,w,h);
    //  bb[n]=new boom(pos);
   //   bb[n].run();
   //   n++;
      }
    }
     if(keyPressed){
      if(pos.y<=height+30&&pos.y>=height-Theight-30&&pos.x>=kwid&&pos.x<=2*kwid&&key=='f'){
   //   TT[j]=new Target(floor(random(0,5.9)));
      score++;
       fill(#f3722c);
      rect(pos.x,pos.y,w,h);
 // bb[n]=new boom(pos);
 //     bb[n].run();
 //     n++;
      }
    }
     if(keyPressed){
      if(pos.x>=2*kwid&&pos.x<=3*kwid&&pos.y>=height-Theight-30&&pos.y<=height+30&&key=='g'){
    //  TT[j]=new Target(floor(random(0,5.9)));
      score++;
       fill(#f3722c);
      rect(pos.x,pos.y,w,h);
      }
    }
     if(keyPressed){
      if(pos.x>=3*kwid&&pos.x<=4*kwid&&pos.y>=height-Theight-30&&pos.y<=height+30&&key=='h'){
  //    TT[j]=new Target(floor(random(0,5.9)));
      score++;
       fill(#f3722c);
      rect(pos.x,pos.y,w,h);
      }
    }
     if(keyPressed){
      if(pos.x>=4*kwid&&pos.x<=5*kwid&&pos.y>=height-Theight-30&&pos.y<=height+30&&key=='j'){
 //     TT[j]=new Target(floor(random(0,5.9)));
      score++;
       fill(#f3722c);
      rect(pos.x,pos.y,w,h);
      }
    }
     if(keyPressed){
      if(pos.x>=5*kwid&&pos.x<=6*kwid&&pos.y>=height-Theight-30&&pos.y<=height+30&&key=='k'){
  //    TT[j]=new Target(floor(random(0,5.9)));
      score++;
       fill(#f3722c);
      rect(pos.x,pos.y,w,h);
      }
    }     
    }
    
    
    
    }

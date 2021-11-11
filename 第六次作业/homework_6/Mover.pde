class Mover{
  
  PVector location;
  PVector v;
  PVector a;
  float topspeed;
  
  
  Mover(){
     location = new PVector(random(width),random(height));
     v = new PVector(0,0);
     topspeed=10;
  }
  
  void update1(){
   PVector mouse= new PVector(mouseX,mouseY);
   PVector dir= PVector.sub(mouse,location);
   dir.normalize();
   dir.mult(0.5);
   a= dir;
   
   v.add(a);
   v.limit(topspeed);
   location.add(v);
 }

void update2(){
 // location.set(random(width),random(height));
  theta=random(0,2*PI);
  PVector r=new PVector(cos(theta),sin(theta));
  
  a=r;
  
  v.add(a);
  v.limit(topspeed);
  location.add(v);
  if(location.x>1000)location.x=0;
  if(location.x<0)location.x=1000;
  if(location.y>height)location.y=0;
  if(location.y<0)location.y=height;
}
 
 void display(){
 //   stroke(0);
    noStroke();
    fill(#CEE7F0);
  //  if(mode==1)
    ellipse(location.x,location.y,5,5);
  
 }
 

 
 void crack(){
   for(Mover m : movers){
     if(m !=this){
       /*
     float mr=( m.location.x*m.location.x+m.location.y*m.location.y);
     float nr=location.x*location.x+location.y*location.y;
     float rr=mr-nr;
     */
     float rr=location.dist(m.location);
       if(rr<5)
       {
         PVector a_crack=m.location.sub(location);
         a_crack.normalize();
         a_crack.mult(0.5);
         location=new PVector(random(width),random(height));
         a=a_crack;
     //    v.add(a);
     //    v.limit(topspeed);
      //   location.add(v);
         
       }
     }
   }
 }
 
void stop(){
  a.set(0,0);
  v.set(0,0);
}
}

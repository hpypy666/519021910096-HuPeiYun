/* autogenerated by Processing revision 1276 on 2021-11-20 */
import processing.core.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

import ddf.minim.*;
import ddf.minim.analysis.*;

import java.util.HashMap;
import java.util.ArrayList;
import java.io.File;
import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.IOException;

public class hpy_homework9 extends PApplet {

Rect[] road;
Key[] keys;
Target[] TT;
boom[] bb;
//char KK[]={'d','','f','j','k','l'};
int num=6;
int Theight=35;
int Tnum=1000;
int kwid=100;
int score=0;
int getTh=30;  //距离底部多高可以点击
int hp=100;    //血量初始值

int mode=0;  //播放暂停两种模式

int j=0;
int n=0;

boolean dead=false;
boolean gett=false;





Minim minim;
AudioPlayer song;
BeatDetect beat;

 public void setup(){
  /* size commented out by preprocessor */;
  
  
  /*
  background(255);
  textSize(100);
  text("score",width/2,height/2);
  fill(3);
  delay(1000);
  
   textSize(100);
  text("2",width/2,height/2);
  fill(0);
  delay(1000);
  */
  
  minim = new Minim(this);
  song = minim.loadFile("周杰伦 - 稻香.mp3", 2048);
  song.play();
  beat = new BeatDetect();
 
  keys= new Key[num];
  for(int i=0;i<keys.length;i++){
    keys[i]=new Key(i*kwid,height-Theight);
  }
  road= new Rect[num];
  for(int i=0;i<road.length;i++){
    road[i]=new Rect(i*kwid,0);
  }
  TT= new Target[Tnum];
//  for(int i=0;i<TT.length;i++){
//     TT[i]=new Target(floor(random(0,5.9)));
//  }
  text("score",30,100);
  fill(0);

}


 public void draw(){
  background(255);
//  fill(255);
//  rect(0,0,width,height);
beat.detect(song.mix);
 for(int i=0;i<keys.length;i++){
    keys[i].display();
    road[i].display();
  } 
  if(beat.isOnset()){
    TT[j]=new Target(floor(random(0,5.9f)));
   // TT[j].run();
    j++;
    delay(100);
  }
  for(int i=0;i<j;i++){
  TT[i].run();
  TT[i].miss();
  TT[i].getT();
    
  }
  fill(0);
  textSize(20);
  text("score="+score,30,50);
 // text("hp="+hp,30,70);
  
  if(isDead()){
    song.pause();
      fill(0);
      textSize(50);
  text("you lose!",width/2-30,height/2-30);
  
  
  //  for(int i=0;i<TT.length;i++){
 //     TT[i].pos=new PVector(0,0,0);
 //     TT[i].vel=new PVector(0,0,0);
 //   }
  }
  //if(key==' '){
    //if(keyPressed){
   // mode=(mode+1)%2;
   // }
//  }
//  playandpause();
}

 // void playandpause(){
 //   if(mode==0)song.play();
 //   if(mode==1)song.pause();
 // }

  

    public boolean isDead(){
        return dead;
    }
    
    
class Key{
  float wid=kwid;
  float heit=Theight;
  float pos_x;
  float pos_y;
  
  Key(float x,float y){
    pos_x=x;
    pos_y=y;
  }
  
   public void display(){
    fill(0xFFF2F7BE);
    alpha(10);
    stroke(0);
    strokeWeight(3);
    rect(pos_x,pos_y,wid,heit);
    
  }
  
  
  
  
}
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
  
  
   public void run(){
    update();
    display();
  }
  
  
   public void update(){
  // vel.add(acc);
   pos.add(vel);
  }
  
   public void display(){
    fill(col);
    stroke(0xFFBAD2DB);
    rect(pos.x,pos.y,w,h);
  }
  
   public void miss(){
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
   public void getT(){
    if(keyPressed){
      if(pos.y<=height+30&&pos.y>=height-Theight-30&&pos.x<=kwid&&key=='d'){
     // TT[j]=new Target(floor(random(0,5.9)));
      score++;
      fill(0xFFF3722C);
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
       fill(0xFFF3722C);
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
       fill(0xFFF3722C);
      rect(pos.x,pos.y,w,h);
      }
    }
     if(keyPressed){
      if(pos.x>=3*kwid&&pos.x<=4*kwid&&pos.y>=height-Theight-30&&pos.y<=height+30&&key=='h'){
  //    TT[j]=new Target(floor(random(0,5.9)));
      score++;
       fill(0xFFF3722C);
      rect(pos.x,pos.y,w,h);
      }
    }
     if(keyPressed){
      if(pos.x>=4*kwid&&pos.x<=5*kwid&&pos.y>=height-Theight-30&&pos.y<=height+30&&key=='j'){
 //     TT[j]=new Target(floor(random(0,5.9)));
      score++;
       fill(0xFFF3722C);
      rect(pos.x,pos.y,w,h);
      }
    }
     if(keyPressed){
      if(pos.x>=5*kwid&&pos.x<=6*kwid&&pos.y>=height-Theight-30&&pos.y<=height+30&&key=='k'){
  //    TT[j]=new Target(floor(random(0,5.9)));
      score++;
       fill(0xFFF3722C);
      rect(pos.x,pos.y,w,h);
      }
    }     
    }
    
    
    
    }
class boom{
  PVector ppos;
  PVector vvel;
//  PVector aacc;
  int r=5;
  int co[]={0xFF757BC8,0xFF8187DC,0xFF8E94F2,0xFF9FA0FF,0xFFADA7FF,0xFFBBADFF,0xFFCBB2FE,0xFFDAB6FC,0xFFDDBDFC,0xFFE0C3FC};
  int alp=255;
  
  
  boom(PVector pos_){
    ppos=pos_;
    vvel=new PVector(random(-1,1),random(-1,0),0);
  }
  
   public void display(){
    for(int i=0;i<10;i++){
      fill(co[i],alp);
      ellipse(ppos.x,ppos.y,r,r);
    }
  }
  
   public void update(){
    alp--;
    ppos.add(vvel);
  }
  
   public void run(){
    display();
    update();
  }
  
  
  
  
  
  
  
  
}
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
  
   public void display(){
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


  public void settings() { size(600, 500); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "hpy_homework9" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

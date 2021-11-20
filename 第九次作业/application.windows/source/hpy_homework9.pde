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


import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;
BeatDetect beat;

void setup(){
  size(600,500);
  
  
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


void draw(){
  background(255);
//  fill(255);
//  rect(0,0,width,height);
beat.detect(song.mix);
 for(int i=0;i<keys.length;i++){
    keys[i].display();
    road[i].display();
  } 
  if(beat.isOnset()){
    TT[j]=new Target(floor(random(0,5.9)));
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

  

   boolean isDead(){
        return dead;
    }
    
    

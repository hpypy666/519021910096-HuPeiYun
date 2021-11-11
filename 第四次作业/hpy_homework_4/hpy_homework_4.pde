/*
作业说明：
点击鼠标左键出现单个字母；
按住鼠标左键拖拽出现一连串字母，字母大小与鼠标移动速度相关，移动越快，字母越大。
字母出现的位置为鼠标此时所在的位置。
*/



int x=0,y=0;
int Stepsize=5;
String string="hpy";
int fontSizeMin=3;
int counter=0;
float d;
char a;
color co[]={#D1F0B1,#B6CB9E,#92B4A7,#8C8A93,#81667A};
int num=0;


void setup(){
size(800, 800);
background(255);
smooth();
cursor(CROSS);

x=mouseX;
y=mouseY;

textAlign(LEFT);

}
void draw(){
  if(mousePressed){
    d=dist(x,y,mouseX,mouseY);
    x=mouseX;
    y=mouseY;
  fill (co[num%5]);
  num++;
  textSize(fontSizeMin+d/2);
  a=string.charAt(counter);
    if(d>Stepsize){
 push();
 translate(x,y);
 text(a,0,0);
 pop();
 
 counter++;
 if(counter==string.length()){
 counter=0;
 }
}
  }
}

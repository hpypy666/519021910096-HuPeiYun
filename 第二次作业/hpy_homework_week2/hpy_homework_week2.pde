float angle;  //定义旋转角
float r=0;   //定义旋转半径
int bl=126;  //蓝色
int re=120;  //红色
int gr=25;  //绿色
int num=1;

void setup() {
  size(800, 800);
  background(#000000);
  noFill();

  //  function2();
}


void draw() {

  function1();
}


//// 以(400,400)为圆心画扇形,半径、旋转角度、红绿蓝数值随迭代次数逐渐升高。

void function1() {
  if (num==40) {
    function2();
    return;
  }
  stroke(re, gr, bl);                   //线条颜色
  strokeWeight(random(10));          //线条随机粗细
  arc(400, 400, r, r, angle, angle+3*PI/5);  // 画扇形
  angle+=10;
  bl+=5;
  r+=15;
  re+=2;
  gr+=7;
  num+=1;
  delay(10);
}

////画半径为600的最外圈圆形

void function2() {
  if (r==600);
  strokeWeight(8);
  arc(400, 400, 600, 600, angle, angle+PI/2);
  angle+=10;
  bl+=1;
  re+=3;
  gr+=1;
  delay(10);
}

# 创意编程第四讲作业

## 作业1：创意编程元素—字体与文本

###### 胡沛筠   519021910096

#### 概述：

通过鼠标交互完成文本的显示。

单击鼠标左键会出现一个字母；

按住鼠标左键进行拖拽会出现一串字母，字母大小与鼠标移动速度相关。

字母出现位置为此时鼠标所在的位置。

#### 效果图：

![image](https://github.com/hpypy666/processing/blob/main/Homework_4/%E6%95%88%E6%9E%9C1.png)

![image](https://github.com/hpypy666/processing/blob/main/Homework_4/%E6%95%88%E6%9E%9C2.png)



### 实现方法：

##### draw函数中：

```
if(mousePressed){
    d=dist(x,y,mouseX,mouseY);   //计算距离
    x=mouseX;					//将坐标移至当前鼠标位置
    y=mouseY;
    fill (co[num%5]);
    num++;
    textSize(fontSizeMin+d/2);
    a=string.charAt(counter);		//取字符串中的一个字母
    if(d>Stepsize){
		 push();
		 translate(x,y);		//变换坐标系
		 text(a,0,0);			//输出字母
		 pop();
		 counter++;
		 if(counter==string.length()) counter=0;
		 }
  }
```

(1)判断鼠标是否点击，若点击则计算上一个字母的坐标和鼠标坐标的距离。并取出字符串中的一个字母。

(2)判断距离是否大于设定的Stepsize（初始值为5），若大于，则变换坐标系，输出当前字母。

(3)判断计数值counter是否大于字符串长度，大于则令counter=0；





## 作业2：文本可视化项目整理

### 《Zero One》

#### 作者： Raven Kwok

#### 来源：http://ravenkwok.com/zero-one/

#### 概要描述：

#### Zero One is a code-based generative video commissioned by [Zero One Technology Festival 2018](http://www.zeroone-tech.com/) in Shenzhen, PR China. In this project, I collaborate with L.A. based producer / music technologist [Mike Gao](https://soundcloud.com/mikegao).

#### This project consists of multiple interlinked generative systems, each of which has its customized features, but collectively share the core concept of an evolving elementary cellular automaton.

#### 视频素材：



![Zero One](C:\Users\HPY\Desktop\Zero One.gif)





### 《Processing is》

#### 作者： Vamoss

#### 来源：https://openprocessing.org/sketch/1243860

#### 概要描述：

#### 利用圆与直线的规则变换达到融化字符的效果。

#### 图片素材：



![Processing is](C:\Users\HPY\Desktop\Processing is.png)





## 文本可视化的一般方法思路：

#### 1，文本文字提取，得到文字云。

#### 2，将单个字体放在矩阵中构成，对矩阵中每个元素进行一定规则的变化，从而使字体变换。例如让文字像粒子一样爆炸。

#### 3，2D文字创建3D立体效果。

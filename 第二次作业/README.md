# 《创意编程》week2 作业

### 概述：

这是一个在相同圆心下，通过旋转不同半径不同颜色的扇形弧线来构造图案的规则。

### 效果图：

![image-20210926233746112](C:\Users\HPY\AppData\Roaming\Typora\typora-user-images\image-20210926233746112.png)

### 实现方法：

##### <u>定义变量</u>

角度 angle

半径 r

蓝色 bl

红色 re

绿色 gr

绘图次数 num

##### <u>定义函数</u>

function1(): 绘制在r＜600时的圆弧。

function2(): 绘制在r=600时的圆弧。

##### <u>方法</u>

利用arc（）函数绘制圆弧，重复40次，使angle、r、bl、gr、re各项值依次递增。

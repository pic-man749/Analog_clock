# Analog_clock

好みの色・大きさのアナログ時計をどこにでも表示することができます．

## 使用例

~~~Processing
Clock clock1, clock2;

void setup() {
  size(800, 800);
  background(100);
  clock1 = new Clock(0, 0, 400); // 左上X, 左上Y, 大きさ
  clock2 = new Clock(400,     // 左上X
                     400,     // 左上Y
                     400,     // 大きさ
                     #FF0000, // 文字盤の色
                     #00FFFF, // 針の色
                     #A0A0A0  // 背景色
                     );
}

void draw(){

  clock1.draw();
  clock2.draw();

}
~~~

↓

<img src="https://raw.githubusercontent.com/pic-man749/Analog_clock/master/picture/main.png" width="400px">

## メソッド

~~~Processing
Clock clock = new Clock();

// 左上X座標の更新
clock.setX(int);

// 左上Y座標の更新
clock.setY(int);

// サイズの更新
clock.setSize(int);

// 文字盤の色の更新
clock.setFaceColor(color);

// 背景色の更新
clock.setBgColor(color);

// 針の色の更新
clock.setHandsColor(color);
~~~

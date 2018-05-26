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

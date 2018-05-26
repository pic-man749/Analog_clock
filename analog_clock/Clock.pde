class Clock {

  private int leftTopX, leftTopY, size;
  private color faceColor, handsColor, bgColor;

  Clock(int leftTopX, int leftTopY, int size, color faceColor, color handsColor, color bgColor) {
    this.leftTopX = leftTopX;
    this.leftTopY = leftTopY;
    this.size = size;
    this.faceColor = faceColor;
    this.handsColor = handsColor;
    this.bgColor = bgColor;
  }

  Clock(int centerX, int centerY, int size) {
    this(centerX, centerY, size, #FFFFFF, #FFFFFF, #565656);
  }
  
  // 引数なしコンストラクタが呼ばれたらとりあえず最大で表示する
  Clock() {
    this(int(width/2.0), int(height/2.0), (width < height)? width : height, #FFFFFF, #FFFFFF, #565656);
  }

  // 時計の描画
  void draw() {
    
    // BGcolorで埋める
    noStroke();
    fill(bgColor);
    rect(leftTopX, leftTopY, size, size);
    // 描く
    drawFace();
    drawHands();
    
  }

  // 文字盤描くやつ
  void drawFace(){
    
    // 座標保存
    pushMatrix();
    // 時計のセンターを(0, 0)に
    translate(leftTopX + size/2.0, leftTopY + size/2.0);
    
    for(int i = 0; i<12; i++){
      // 座標保存
      pushMatrix();
      // 描画するところを真上へ
      rotate(radians(i * 360.0 / 12.0));
      // 端っこへ
      translate(0, size/2.0 - 10);
      // 色
      fill(faceColor);
      // 枠線なし
      noStroke();
      // 太さ
      int faceWidth = (i % 3 == 0)? 8 : 2;
      // 線の描画
      rect(-faceWidth/2.0, 0, faceWidth, -size/18.0);
      // 座標復元
      popMatrix();
    }
    
    // 座標復元
    popMatrix();
    
  }
  
  // 針描くやつ
  void drawHands(){
    
    // 時間の取得
    int h = hour();
    int m = minute();
    int s = second();
    
    // 座標保存
    pushMatrix();
    // 時計のセンターを(0, 0)に
    translate(leftTopX + size/2.0, leftTopY + size/2.0);

    // 時
    pushMatrix();
    rotate(radians( (h / 12.0)*360.0 + (m / 60.0)*30.0 ));
    stroke(handsColor);
    strokeWeight(10);
    line(0, 0, 0, -size/4.0);
    popMatrix();

    // 分
    pushMatrix();
    rotate(radians( (m / 60.0)*360.0 + (s / 60.0)*6.0 ));
    stroke(handsColor);
    strokeWeight(3);
    line(0, 0, 0, -1.0*(size/2.0 - size/15.0));
    popMatrix();
    
    // 秒
    pushMatrix();
    rotate(radians((s / 60.0)*360.0));
    stroke(handsColor);
    strokeWeight(1);
    line(0, 0, 0, -1.0*(size/2.0 - size/10.0));
    popMatrix();
    
    // 座標復元
    popMatrix();    
    
  }
  
  //　セッター
  void setX(int x){
    this.leftTopX = x;
  }
  
  void setY(int y){
    this.leftTopY = y;
  }
  
  void setSize(int size){
    this.size = size;
  }
  
  void setFaceColor(color fc){
    this.faceColor = fc;
  }
  
  void setBgColor(color bc){
    this.bgColor = bc;
  }
  
  void setHandsColor(color hc){
    this.handsColor = hc;
  }
  
  

}

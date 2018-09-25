class Thing {

  float x, y;

  Thing(float mX, float mY) {
    
    x = mX;
    y = mY;
    
  }

  void update() {
    x += random(-3, 3);
    y += random(-3, 3);
    ellipse(x, y, 10, 10);
  }
}

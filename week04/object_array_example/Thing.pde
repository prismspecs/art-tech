class Thing {

  float x, y;

  Thing() {
    
    x = mouseX;
    y = mouseY;
    
  }

  void update() {
    x += random(-3, 3);
    y += random(-3, 3);
    ellipse(x, y, 10, 10);
  }
}

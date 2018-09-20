// keep track of and change brush color
float r = 0;
float g = 0;
float b = 0;

void setup() {
  size(500, 500);
}

void draw() {
  // draw the brush
  noStroke();
  fill(r, g, b);
  ellipse(mouseX, mouseY, 10, 10);

  // render button1
  fill(255, 0, 0);
  rect(0, 0, 20, 20);

  // render button2
  fill(255, 255, 0);
  rect(20, 0, 20, 20);

  
}

void mousePressed() {
  // is the mouse inside of button1?
  // red button1 is 0,0,20,20
  if (mouseX > 0) {
    if (mouseX < 20) {
      if (mouseY > 0) {
        if (mouseY < 20) {
          // we've met all four conditions, turn red.
          r = 255;
          b = 0;  // zero out blue and green
          g = 0;
        }
      }
    }
  }
}

void setup() {
  size(600, 600);
}

void draw() {
  
  // print the mouse coords in the console
  println(mouseX, mouseY);
  
  background(0);
  // red line down the center
  stroke(255, 0, 0);
  line(width/2, height, width/2, 0);

  // is the mouse on the right side of the screen?
  if (mouseX > width/2) {
    // if so...
    background(255, 0, 0);
  }
}

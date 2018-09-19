boolean circleOn = false;

void setup() {
  size(500, 500);
}

void draw() {
  if (circleOn==true) {
    ellipse(mouseX, mouseY, 10, 10);
  }
}

void keyPressed() {
  // flip the value of circleOn
  
  // if circleOn is currently false...
  if (circleOn==false) {
    // make it true
    circleOn=true;
  } else {
    // otherwise, make it false
    circleOn=false;
  }
}

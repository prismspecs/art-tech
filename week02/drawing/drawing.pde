void setup() {
  size(600, 600);
  background(255);
  strokeWeight(100);  // big lines!!
}

void draw() {
  
  fill(0);
  //noStroke();
  //stroke(0);
  
  // mouseX and mouseY store the location of the
  // mouse, you can use them to 'draw' with shapes
  //ellipse(mouseX, mouseY, 20, 20);
}

// mouseDraffted is called when you move the mouse with
// the left button pressed
void mouseDragged() {
  // draw a line from last mouse pos.
  line(mouseX, mouseY, pmouseX, pmouseY);
  //noStroke();
  //fill(random(255), random(255),random(255));
  //ellipse(mouseX, mouseY, random(25),random(25));
}

// this function gets called anytime a key is pressed
void keyPressed() {
  if (key == 's') {
    // save a screengrab
    save("test.png");
  } else {
    // if it wasnt an 's' keypress, do other stuff
    // in this case just change the line color
    //background(255);
    stroke(random(255), random(255), random(255));
    
  }
}

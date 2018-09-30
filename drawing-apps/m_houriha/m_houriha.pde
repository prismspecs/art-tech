//Mimi Hourihane

boolean circleOn = false;
boolean rectOn = false;

void setup() {
  size(600, 600);
  background(255, 244, 178);
  strokeWeight(5);
}

void draw() {
  if (circleOn==true) {
    noStroke();
    ellipse(mouseX, mouseY, 20, 20);
  }
  if (rectOn==true) {
    noStroke();
    rect(mouseX, mouseY, 20, 20);
  }
  
}
void mouseDragged() {
  line(mouseX, mouseY, pmouseX, pmouseY);
  fill(random(255), random(255), random(255));
}

void keyPressed() {

  //draw with squares, hold down mouse to change color
  if (key == 's') {
    if (rectOn==false) {
      rectOn=true;
    } else {
      rectOn = false;
      noStroke();
      fill(random(255), random(255), random(255));
      rect(mouseX, mouseY, 20, 20);
    }
  }
  //draw with strokes, press d to change color
  if (key == 'd') {
    stroke(random(255), random(255), random(255));
  }

  //draw with ellipses, color change when press mouse down
  if (key == 'a') {
    if (circleOn==false) {
      //flip the value of the circleOn
      circleOn=true;
    } else {
      circleOn=false;
      fill(random(255), random(255), random(255));
    }
  }
  //draw with triangles, must press f repeatedly
  if (key == 'f') {
    translate(mouseX, mouseY);
    fill(random(255), random(255), random(255));
    triangle(50, 30, 40, 25, 40, 20);
  }
  //change color scheme to HSB
  if (key == 'g') {
    colorMode(HSB, 150, 240, 120);
  }
  //change the color mode back to RGB
  if (key == 'h') {
    colorMode(RGB, random(255), random(255), random(255));
  }
  //change the color of the background/wipe background
  if (key == 'j') {
    background(255, 244, 178);
  }
  //save your drawing
  if(key == 'k') {
    save("test.png");
  }
}
//please work :) 

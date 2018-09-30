//boolean is making things true or false arbitrarily 
//making modes
boolean circlePen = false;
boolean strokePen = false;
boolean fadeBackground = true;
boolean colorCycle = true;
//variables for boolean color cycle 
float h = 100;
float s = 200;
float b = 250;

//variables for max and min size of drawing circles
float maxD = 40;
float minD = 2;
//start as a minimum
float d = minD;
//how quickly do we want to expand the circle
float dSpeed = 1;

int drawingMode = 1;

void setup() {
  size(600, 600);
  //background in setup makes it so the circle becomes a line
  background(0);

  //tell processing you're using HSB!
  colorMode(HSB, 255, 255, 255);
}

void draw() {
  //drawing mode 2 is the pinkish color circle line
  if (drawingMode == 2) {
    colorMode(RGB, 255, 255, 255);
    fill(255, 0, random(255));
    ellipse(mouseX, mouseY, 10, 15);
  }

  //drawing mode 4 is with the white lines and circular stuff coming from 
  //the center
  if (drawingMode == 4) {
    stroke(255);
    line(mouseX, mouseY, pmouseX, pmouseY);
    stroke(255);
    line(width/2, height/2, mouseX, mouseY);
  }

  //drawing mode 3 is the stroke that changes size according to speed -- is yellowff
  if (drawingMode == 3) {
    colorMode(RGB, 255, 255, 255);
    //neon yellow in color
    fill(random(220, 250), random(200, 220), random(0, 20), random(60, 100));
    noStroke();
    //draw circle
    ellipse(mouseX, mouseY, d, d);
    //expand the circle
    d = d + dSpeed;
    //did the circle reach the edges
    if (d > maxD) {
      dSpeed = dSpeed * -1;
    }
    if (d < minD) {
      dSpeed = dSpeed * -1;
    }
  }

  //drawing mode 1 is the fade and HSB colorful stroke mode
  if (drawingMode == 1) {
    //this is shorthand for and means the same thing as if(fadeBackground==true);
    if (fadeBackground) {
      fill(0, 20);
      rect(0, 0, width, height);
    }

    //color cycle pen, needs to be before the fill of the background
    colorMode(HSB, 255, 255, 255);
    if (colorCycle == true) {
      h = h + 1; //increase hue     
      if (h > 255) {
        h = 0;
      }
    }

    //change pen color
    fill(h, s, b);

    //adding or taking out the stroke of the circle 
    if (strokePen==true) {
      stroke(0);
      strokeWeight(2);
    } else {
      noStroke();
    }

    if (circlePen==true) {
      colorMode(HSB, 255, 255, 255);
      ellipse(mouseX, mouseY, 5, 5);
    }
  }
}

void keyPressed() {
  if (key == 's') {
    strokePen = !strokePen; //flip the value
  }

  if (key == '1') {
    drawingMode = 1;
  }
  if (key == '2') {
    drawingMode = 2;
 
  }
  if (key == '3') {
    drawingMode = 3;
  }
  if (key == '4') {
    drawingMode =4;
  }

  if (key=='f') {
    //stylish clear key, make the background fade and the stroke fade into the background 
    //shorthand for the else function!
    fadeBackground = !fadeBackground;
  }
}

void mousePressed() {

  //if lights is true, turn it false. if lights is false, turn it true.
  if (circlePen==true) {
    circlePen = false;
  } else { 
    circlePen = true;
  }

  //shorthand lights = !lights; -- make lights equal to whatever lights is not
}

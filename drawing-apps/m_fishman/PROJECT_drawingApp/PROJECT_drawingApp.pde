//"DRAWING" "APP" HAHA
//MIKAELA FISHMAN 
//SEPTEMBER 19, 2018
//IN WHICH I GIVE YOU THE ILLUSION OF CONTROL

//for gradually color changing
int r = 0;
int rSpeed = 1;
int g = 0;
int gSpeed = 2;
int b = 0;
int bSpeed = 3;
int size = 1;
int sizeChange = 1;

//for the falling circles
float x1;
float x2;
float x3;
float x4;
float x5;
float y1=0;
float y2=0;
float y3=0;
float y4=0;
float y5=0;
float y1Speed = 15;
float y2Speed = 16;
float y3Speed = 13;
float y4Speed = 17;
float y5Speed = 14;
float x1Speed = 14;
float x2Speed = 15;
float x3Speed = 12;
float x4Speed = 16;
float x5Speed = 13;
boolean ballsFall = false;

boolean drawLine = true;

int ellipseSize = 100;

void setup() {
  fullScreen();
  background(0);
  //these are for the falling cirlces
  x1 = width*.1;
  x2 = width*.3;
  x3 = width*.5;
  x4 = width*.7;
  x5 = width*.9;
}

void draw() {

  //the "background" aka just a rectangle
  fill(r, g, b, 5);
  noStroke();
  //making the instructions appear on the bottom
  rect(0, 0, displayWidth, displayHeight);
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text("hit 's' to make the lines shrink/ hit 'a' for chaos / click and drag for a change / hit 'a' again to end the chaos / hit 'spacebar' to clear", width/2, height*.95);

  // MAKING THE GRADUAL COLOR CHANGES 
  r = r+ rSpeed;
  g = g+ gSpeed;
  b = b+ bSpeed;

  if (r >= 255) { 
    rSpeed = rSpeed * -1;
  }

  if (r <= 0) { 
    rSpeed = rSpeed * -1;
  }

  if (g >= 255) { 
    gSpeed = gSpeed * -1;
  }

  if (g <= 0) { 
    gSpeed = gSpeed * -1;
  }

  if (b >= 255) { 
    bSpeed = bSpeed * -1;
  }

  if (b <= 0) { 
    bSpeed = bSpeed * -1;
  }

  // MAKING CIRCLES THAT ALSO CHANGE COLOR SLOWLY
  fill(r, 255, b, 2);
  ellipse(0, 0, height*.5, height*.5);

  fill(r, g, 255, 2);
  ellipse(width*.58, 0, height*.5, height*.5);

  fill(255, g, b, 2);
  ellipse(width*.67, height*.25, height*.5, height*.5);

  fill(r, 155, b, 2);
  ellipse(width*.25, height*.375, height*.5, height*.5);

  fill(r, g, 155, 2);
  ellipse(width, height*.375, height*.5, height*.5);

  fill(155, g, b, 2);
  ellipse(width*.25, height*.75, height*.5, height*.5);

  fill(r, 55, b, 2);
  ellipse(width*.58, height*.58, height*.5, height*.5);

  fill(r, g, 55, 2);
  ellipse(width*.88, height*.73, height*.5, height*.5);

  fill(55, g, b, 2);
  ellipse(width*.47, height, height*.5, height*.5);

  fill(r, 10, b, 2);
  ellipse(width*.66, height, height*.5, height*.5);

  fill(r, g, 10, 2);
  ellipse(width*.39, 0, height*.5, height*.5);

  fill(10, g, b, 2);
  ellipse(width*.1, height*.62, height*.5, height*.5);

  fill(r, 0, b, 2);
  ellipse(width*.95, height*.1, height*.5, height*.5);


  // MAKING THE THING WHERE YOU DRAW

  if (drawLine == true) {
    stroke(r, g, b);
    strokeWeight(size);
    size = size + sizeChange;
    if (size == 1) {
      sizeChange = sizeChange*-1;
    }
    line(mouseX, mouseY, pmouseX, pmouseY);
  }

  // MAKING THE FALLING CIRCLES 

  if (ballsFall == true) {
    if (drawLine == false) {
      stroke(r, 255, b);
    } else {         
      stroke(r, 255, b, 45);
    }
    noFill();
    ellipse(x1, y1, ellipseSize, ellipseSize);
    y1 = y1 + y1Speed;
    ellipse(x2, y2, ellipseSize, ellipseSize);
    y2 = y2 + y2Speed;
    ellipse(x3, y3, ellipseSize, ellipseSize);
    y3 = y3 + y3Speed;
    ellipse(x4, y4, ellipseSize, ellipseSize);
    y4 = y4 + y4Speed;
    ellipse(x5, y5, ellipseSize, ellipseSize);
    y5 = y5 + y5Speed;

    if (y1>height) {
      y1Speed = y1Speed * -1;
    }

    if (y1<-35) {
      y1Speed = y1Speed * -1;
    }

    if (y2>height) {
      y2Speed = y2Speed * -1;
    }

    if (y2<-400) {
      y2Speed = y2Speed * -1;
    }

    if (y3>height) {
      y3Speed = y3Speed * -1;
    }

    if (y3<-10) {
      y3Speed = y3Speed * -1;
    }

    if (y4>height) {
      y4Speed = y4Speed * -1;
    }

    if (y4<-30) {
      y4Speed = y4Speed * -1;
    }

    if (y5>height) {
      y5Speed = y5Speed * -1;
    }

    if (y5<-20) {
      y5Speed = y5Speed * -1;
    }
  }

  //CLEARING THE BACKGROUND WHEN YOU PRESS THE SPACE BAR

  if (keyPressed) {
    if (key == ' ') {
      fill(0);
      noStroke();
      rect(0, 0, displayWidth, displayHeight);
    }
  }
}

void keyPressed() {

  //CHANGING THE SIZE OF THE LINE AND THE CIRCLE STROKES
  if (key == 's') {
    sizeChange = sizeChange*-1;
  }
  //MAKING THE CIRCLES FALL OR STOP FALLING
  if (key == 'a') { 
    if (ballsFall == true) {
      ballsFall = false;
    } else {
      ballsFall = true;
    }
  }
}

void mouseDragged() {
  //MAKING THE LINES THAT EMENATE FROM THE CENTER WHEN YOU HOLD DOWN THE MOUSE
  strokeWeight(1);
  stroke(r, g, 255);
  line(width/2, height/2, pmouseX, pmouseY);
  //MAKING IT SO THAT THE NORMAL LINE GOES AWAY WHILE YOU DO THIS
  drawLine = false;
} 
void mouseReleased() {    
  //NORMAL DRAWING LINE 
  drawLine = true;
}

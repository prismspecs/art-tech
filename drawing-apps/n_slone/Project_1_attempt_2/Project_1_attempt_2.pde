boolean circleOn = false;

// keep track of and change brush color
float r = 0;
float g = 0;
float b = 0;



void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  // draw the brush


  // render button1
  fill(255, 0, 0);
  rect(0, 0, 20, 20);

  // render button2
  fill(255, 255, 0);
  rect(20, 0, 20, 20);

  fill(255);
  rect(40, 0, 20, 20);

  fill(0, 0, 255);
  rect(60, 0, 20, 20);

  fill(0, 255, 0);
  rect(80, 0, 20, 20);

  fill(#7D03AA);
  rect(100, 0, 20, 20);

  fill(#B4680B);
  rect(140, 0, 20, 20);

  fill(0);
  rect(120, 0, 20, 20);
}
void mouseDragged() {
  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      noStroke();
      fill(r, g, b);
      rect(mouseX, mouseY, 10, 10);
    }
  } else {
    stroke(r, g, b);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  if (keyPressed) {
    if (key == 'c' || key == 'C') {
      noStroke();
      fill(r, g, b);
      ellipse(mouseX, mouseY, 10, 10);
    }
  }
  if (keyPressed) {
    if (key == 'z' || key == 'Z') {
      background(0);
    }
  }
  if (keyPressed) {
    if (key == 'o' || key == 'O') {
      noFill();
      stroke(r,g,b);
      ellipse(mouseX,mouseY,10,10);
    }
  }
  if (keyPressed) {
    if (key == 's' || key == 'S') {
      noFill();
      stroke(r,g,b);
      rect(mouseX,mouseY,10,10);
    }
  }
}

//if (circleOn==true) {
//noStroke();
//fill(r,g,b);
// rect(mouseX, mouseY, 10, 10);
//    if (circleOn==false) {

// stroke(r, g, b);
// line(pmouseX, pmouseY, mouseX, mouseY);
//

void mousePressed() {

  if (mouseX > 0) {
    if (mouseX < 20) {
      if (mouseY > 0) {
        if (mouseY < 20) {
          r = 255;
          g = 0;
          b = 0;
        }
      }
    }
  }

  if (mouseX > 20) {
    if (mouseX < 40) {
      if (mouseY > 0) {
        if (mouseY < 20) {

          r = 255;
          g = 255;
          b = 0;
        }
      }
    }
  }
  if (mouseX > 40) {
    if (mouseX < 60) {
      if (mouseY > 0) {
        if (mouseY < 20) {

          r = 255;
          g = 255;
          b = 255;
        }
      }
    }
  }

  if (mouseX > 60) {
    if (mouseX < 80) {
      if (mouseY > 0) {
        if (mouseY < 20) {

          r = 0;
          g = 0;
          b = 255;
        }
      }
    }
  }
  if (mouseX > 80) {
    if (mouseX < 100) {
      if (mouseY > 0) {
        if (mouseY < 20) {

          r = 0;
          g = 255;
          b = 0;
        }
      }
    }
  }
  if (mouseX > 100) {
    if (mouseX < 120) {
      if (mouseY > 0) {
        if (mouseY < 20) {

          r = 125;
          g = 3;
          b = 170;
        }
      }
    }
  }
  if (mouseX > 140) {
    if (mouseX < 160) {
      if (mouseY > 0) {
        if (mouseY < 20) {

          r = 180;
          g = 104;
          b = 11;
        }
      }
    }
  }
  if (mouseX > 120) {
    if (mouseX < 140) {
      if (mouseY > 0) {
        if (mouseY < 20) {

          r = 0;
          g = 0;
          b = 0;
        }
      }
    }
  }
}
void keyPressed() {
  if (circleOn==false) {
    circleOn=true;
  } else {
    circleOn=false;
    //background(0);
  }
}

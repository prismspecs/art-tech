float s=5; // size of the shape 
float sSpeed=.5; // how much i want the shape to increase 

float r = 255; // red
float g =255; // green 
float b= 255; //blue 
float a=255; // opacity 



void setup() { 
  size (900, 900); 
  background(255);
}

void draw() {
  if (key== CODED) {
    if (keyCode == UP) {
      if (s<100) {
        s=s+sSpeed;
      }//increase size of drawing shape
    } else if (keyCode == DOWN) {
      if (s>0) {
        s=s-sSpeed;
      }// decrease size of drawing shape
    }
  }
  stroke(0); 
  fill(255, 0, 0); //red fill
  rect(0, 0, 20, 20); //red rect

  fill(240, 140, 0); //orange fill
  rect(20, 0, 20, 20); //orange rect

  fill(255, 255, 0); //yellow fill
  rect(40, 0, 20, 20); //yellow rect

  fill(110, 200, 0); //green fill
  rect(60, 0, 20, 20); //green rect

  fill(0, 0, 255); //blue fill
  rect(80, 0, 20, 20); //blue rect 

  fill(155, 0, 255); //purple fill
  rect(100, 0, 20, 20); //purple rect 

  fill(255, 0, 235); //pink fill
  rect (120, 0, 20, 20); //pink rect

  fill(0); //black fill
  rect(140, 0, 20, 20); //black rect

  fill(255); //white fill
  rect(160, 0, 20, 20); //white rect 


  noStroke(); //no stroke for drawing shape
}

void mousePressed() {
  //fill drawing shape w red when u click on red rect 
  if (mouseX >0) {
    if (mouseX<20) {
      if (mouseY<20) {
        r=255; 
        g=0;
        b=0;
      }
    }
  }
  //fill the drawing shape w orange when u click on orange rect
  if (mouseX >20) {
    if (mouseX<40) {
      if (mouseY<20) {
        r=240; 
        g=140;
        b=0;
      }
    }
  }
  //fill the drawing shape w yellow when u click on yellow rect
  if (mouseX>40) {
    if (mouseX<60) {
      if (mouseY<20) {
        r=255; 
        g=255;
        b=0;
      }
    }
  }
  //fill the drawing shape w green when u click on green rect
  if (mouseX>60) {
    if (mouseX<80) {
      if (mouseY<20) {
        r=110; 
        g=200;
        b=0;
      }
    }
  }
  //fill the drawing shape w blue when u click on blue rect
  if (mouseX>80) {
    if (mouseX<100) {
      if (mouseY<20) {
        r=0; 
        g=0;
        b=255;
      }
    }
  }
  //fill the drawing shape w purple when u click on purple rect
  if (mouseX>100) {
    if (mouseX<120) {
      if (mouseY<20) {
        r=155; 
        g=0;
        b=255;
      }
    }
  }
  //fill the drawing shape w pink when u click on pink rect
  if (mouseX>120) {
    if (mouseX<140) {
      if (mouseY<20) {
        r=255; 
        g=0;
        b=235;
      }
    }
  }
  //fill the drawing shape w black when u click on black rect
  if (mouseX>140) {
    if (mouseX<160) {
      if (mouseY<20) {
        r=0; 
        g=0;
        b=0;
      }
    }
  }
  //fill the drawing shape w white when u click on white rect
  if (mouseX>160) {
    if (mouseX<180) {
      if (mouseY<20) {
        r=255; 
        g=255;
        b=255;
      }
    }
  }
} 


void mouseDragged() {
  if (key == 'e' || key == 'E') {
    fill(r, g, b, a); 
    ellipse (pmouseX, pmouseY, s, s); //drawing shape, ellipse if e key pressed
  } 
  if (key == 'r' || key == 'r' ) {
    fill(r, g, b, a); 
    rect (pmouseX, pmouseY, s, s); //drawing shape, square if r key pressed
  }
  if (key=='q' || key=='q') {
    fill(random(255), random(255), random(255), a); 
    ellipse(pmouseX, pmouseY, s, s); //makes randomly colored circles w q key
  }
  if (key=='w' || key=='W') {
    fill(random(255), random(255), random(255), a); 
    rect(pmouseX, pmouseY, s, s); //makes randomly colored rectangles w w key
  }
  if (key=='z' || key =='Z') {
    fill(random(255), random(255), random(255), a);
    ellipse(pmouseX, pmouseY, random(s), random(s)); //makes randomly sized and colored circles with z key
  }
  if (key=='x' || key== 'X') {
    fill(random(255), random(255), random(255), a);
    rect(pmouseX, pmouseY, random(s), random(s)); //makes randomly sized and randomly colored rectangles with x key
  }
}

void keyPressed() { 
  if (key=='s'|| key =='S') {
    save("image.png");  //save frame to folder?
  }
  if (key == 'c' || key == 'C') {
    background(255); // to clear background
  }
  if (key== CODED) {
    if (keyCode == RIGHT) {
      if (a<255) {
        a=a+10;
      } //increase opacity of drawing shape
    } else if (keyCode == LEFT) {
      if (a>0) {
        a=a-10;
      } // decrease opacity of drawing shape
    }
  }
  if (key == '1') {
    background(255); //background white
  }
  if (key == '2') {
    background(255, 0, 0); //background red
  }
  if (key == '3') {
    background (225, 135, 0); //background orange
  } 
  if (key== '4') {
    background(255, 255, 0); //background yellow
  }
  if (key == '5') {
    background (110, 255, 0); //background green
  }
  if (key=='6') {
    background(0, 0, 255); //background blue
  }
  if (key=='7') {
    background(155, 0, 255); //background purple
  }
  if (key=='8') {
    background(255, 0, 235); //background pink
  }
  if (key=='9') {
    background(0); //background black
  }
  if (key=='0') {
    background (random(255), random(255), random(255)); //background random
  }
}

//max and min size of ellipses
float maxD = 30;
float minD = 1;
float d = minD;
//speed of ellipses
float dSpeed = 1;

void setup(){
  size(600,600);
  background(0);
}

void draw(){

  //random color change
  stroke(random(255),random(255),random(255));
  //line follows mouse
    line(pmouseX, pmouseY, mouseX,mouseY);
}

void keyPressed(){
 // if (key=='r')
 // stroke(255,0,0);
 // if( key=='o')
 // stroke(255,100,0);
 //if (key=='y')
 //stroke(255,200,100);
 // if (key=='g')
 // stroke(0,255,0);
 //if (key=='b')
 // stroke(0,0,255);
 // if (key=='p')
 // stroke(100,0,255);
 // if (key=='k')
  stroke(random(255),random(255),random(255));
  //black background with space bar
  if (key==32) {
   background(0);
 }
  }
  
  void mouseDragged()
{
  noStroke();
  fill(random(255),random(255),random(255));
  ellipse(pmouseX,pmouseY,d,d);
  //speed of line/line of ellipses
  d = d + dSpeed;
  if(d > maxD) {
   dSpeed = dSpeed * -1;
  }
    if(d < minD) {
   dSpeed = dSpeed * -1;
    }
}

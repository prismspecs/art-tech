// Rachel Clark
// Arts & Tech

int size=1;
float lastCircle=600;

float r=255; float g=0; float b=0;
int redMode=1;
int blueMode=0;
int greenMode=0;
int returnMode=0;
int circlewidth=0;
int circleheight=0;
boolean top=true; //stop incrementing width; start decrementing
boolean right=false; 
boolean bottom=false;
boolean left=false;
int transparency=255;
int circTransparency=255;

boolean reverseCircle=false;
boolean reachedMax=false;
float maxSize;
boolean firstItr=true;

float x = 300;
float y = 300;
int initFlag=0; 

float theta = 0.0;
float speed = 0.002;
float diameter = 1000;

void setup() {
  size(600, 600);
  background(0);
}

void draw() {
  float x = width/2 + cos(theta) * diameter;
  float y = height/2 + sin(theta) * diameter;
  
  /** SHRINKS CIRCLES FROM THE EDGE TO THE MIDDLE **/
  if (reverseCircle==false){
    if (size==maxSize){
      reachedMax=true;
    }
    if (size>=(lastCircle*0.9)) {
      if (firstItr==true){
        maxSize=lastCircle;
        firstItr=false;
      }
      lastCircle=size;
      size=1;
    }
    if (lastCircle<=60){
      if (firstItr==false){
        lastCircle=size;
        reverseCircle=true;
      }
    }
  }

  /** GROWS CIRCLES FROM THE MIDDLE TO THE EDGE **/ 
  else if (reverseCircle==true){
    if (size>=(lastCircle*1.2)){
      lastCircle=size;
      size=1;
      circTransparency=125;
    }
    else if (size>=maxSize-10){
      lastCircle=maxSize;
      reverseCircle=false;
      reachedMax=true;
      size=1;
      circTransparency=255;
    }
  }
  
  /** CHECKING TO SEE WHAT MODE WE'RE IN FOR COLORS**/
  if (redMode==1){
    // if we've reached the end of the red spectrum (Yellow)...
    if (g>=255 && r>=255){
      greenMode=1;
      redMode=0;
      r=255; g=255; b=0;
    }
    r+=3; g+=0.5; b+=0.1;
    stroke(r, g, b, transparency);
    line(x, y, width/2, height/2);
    stroke(0, 0, 0, 40);
    line(x+1, y+1, width/2, height/2);
  }     
  else if (greenMode==1){
    if (g>=255 && b>=255){
      //check if it's time to switch
      greenMode=0;
      blueMode=1;
      g=255;
      b=255;
      r=-55;
    }
    r-=1; g+=1; b+=0.5;
    stroke(r, g, b, transparency);
    line(x, y, width/2, height/2);
    stroke(0, 0, 0, 40);
    line(x+1, y+1, width/2, height/2);
  }
  else if (blueMode==1){
    if (b>=255 && g<=0){
      returnMode=1;
      blueMode=0;
      b=255;
      g=0;
    }
    r+=0.2; g-=0.2; b+=0.1;
    stroke(r, g, b, transparency);
    line(x, y, width/2, height/2);
    stroke(0, 0, 0, 40);
    line(x+1, y+1, width/2, height/2);
  }
  else if (returnMode==1){
    if (r>=255 && b<=0){
      returnMode=0;
      redMode=1;
      r=235;
      b=0;
      g=20;
      transparency=125;
    }
    r+=0.3; b-=0.4;
    stroke(r, g, b, transparency);
    line(x, y, width/2, height/2);
    stroke(0, 0, 0, 40);
    line(x+1, y+1, width/2, height/2);
  }
    size+=1;
  /** DRAWING CIRCLES **/
  fill(r, g, b, circTransparency);
  stroke(r, g, b);
  //float x = x +  r*cos(pos);
  //float y = y +  r*sin(pos);
  ellipse(width/2, height/2, size, size);
  theta+=speed;
}

void mousePressed(){
  speed*=-1;
}

void keyPressed(){
  if (r>=255 && g>=255 && b>=255){
    r-=3; g-=3; b-=3; 
  }
  else {
  r+=3; g+=3; b+=3;
  }
}

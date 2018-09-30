// Leslie Lang
//
// create an application that draws designs with 
// rotationally symmetrical "spokes"
// that emanate from a given center point. 

// centerX and centerY gives coordinates to an alternate 
// cener point
float centerX = width/2;
float centerY = width/2;

// determines whether to use the real center
// or an alternate center
int trueCenter = 1;

// coordinates for 8 different endpoints 
// for each of the 8 line() objects
float x;
float y;
float x2;
float y2;
float x3; 
float y3; 
float x4;
float y4;
float x5;
float y5;
float x6;
float y6;
float x7;
float y7;
float x8;
float y8;

// determines whether a particular line is 
// drawn or not
int on1;
int on2;
int on3;
int on4;
int on5;
int on6;
int on7;
int on8;


// holds values for stroke()
float r;
float g;
float b;

// the rate at which each color value oscillates
float rSpeed;
float gSpeed;
float bSpeed;

// determines whether each line is black or colorful
int colorOn1 = -1; 
int colorOn2 = -1;
int colorOn3 = -1;
int colorOn4 = -1;
int colorOn5 = -1;
int colorOn6 = -1;
int colorOn7 = -1;
int colorOn8 = -1;

// determines whether to oscillate between colors
int gradientOn;

// provides timestamp for save function
int i = 0;
int d = day();
int m = month();
int year = year();
    
int min = minute();
int hr = hour();


void setup() {
  fullScreen();
  //size(600,600); 
  background(255); 
  
  r = random(255); 
  g = random(255);
  b = random(255); 
  
  rSpeed = 5;
  gSpeed = 5;
  bSpeed = 5;
  
  on1 = 1;
  on2 = -1;
  on3 = -1;
  on4 = -1;
  on5 = -1;
  on6 = -1;
  on7 = -1;
  on8 = -1;
  
  gradientOn = -1;

  
}

void draw() {
  
  // every frame, calculates 8 different endpoints 
  // for the 8 different lines 
  x = mouseX;
  y = mouseY;
  
  x2 = width-mouseX;
  y2 = height-mouseY;
  
  x3 = mouseX;
  y3 = height - mouseY;
  
  x4 = width-mouseX;
  y4 = mouseY;
  
  x5 = width-mouseX/2;
  y5 = mouseY;
  
  x6 = mouseX;
  y6 = height-mouseY/2;
  
  x7 = width-x5;
  y7 = height-y5;
  
  x8 = width-x6;
  y8 = height-y6;
} 

// the lines are only drawn once the mouse is dragged
void mouseDragged() {
  
  // if gradient is on...
  if (gradientOn > 0){
    // make sure values for r g and b 
    // all fall inbetween 0 and 255...
    if (r > 255){
      rSpeed = rSpeed*-1;
    }
    if (r < 0) {
      rSpeed = rSpeed*-1;
    }
    //
    if (g > 255){
      gSpeed = gSpeed*-1;
    }
    if (g < 0) {
      gSpeed = gSpeed*-1;
    }
    //
    if (b > 255){
      bSpeed = bSpeed*-1;
    }
    //
    if (b < 0) {
      bSpeed = bSpeed*-1;
    }
    //
    // and if they do increment r g and b by their speeds
    r = r+rSpeed;
    g = g+gSpeed;
    b = b+bSpeed;
  }
////////////////////////
  // check to see if line is on
  if (on1 > 0) {
    // check to see if it should be black or a color
    if (colorOn1 > 0) {
      stroke(r, g, b);
    }else{
      stroke(0);
    }
    //
    // check to see where to draw the center point
    if (trueCenter > 0){
      line(x,y,width/2,height/2);
    }else{
      line(centerX,centerY,x, y);
    } 
  }
  //
  if (on2 > 0) {
    if (colorOn2 > 0) {
      stroke(r, g, b);
    }else{
      stroke(0);
    } 
    //
    if (trueCenter > 0){
      line(x2,y2,width/2,height/2);
    }else{
      line(centerX,centerY,x2, y2);
    }
  }
  //
  if (on3 > 0) {
    if (colorOn3 > 0) {
      stroke(r, g, b);
    }else{
      stroke(0);
    }  
    //
    if (trueCenter > 0){
      line(x3,y3,width/2,height/2);
    }else{
      line(centerX,centerY,x3, y3);
    }
  }
  //
  if (on4 > 0) {
    if (colorOn4 > 0) {
      stroke(r, g, b);
    }else{
      stroke(0);
    }  
    //
    if (trueCenter > 0){
      line(x4,y4,width/2,height/2);
    }else{
      line(centerX,centerY,x4, y4);
    }
  }
  //
  if (on5 > 0) {
    if (colorOn5 > 0) {
      stroke(r, g, b);
    }else{
      stroke(0);
    }  
    //
    if (trueCenter > 0){
      line(x5,y5,width/2,height/2);
    }else{
      line(centerX,centerY,x5, y5);
    }
  }
  //
  if (on6 > 0) {
    if (colorOn6 > 0) {
      stroke(r, g, b);
    }else{
      stroke(0);
    }  
    //
    if (trueCenter > 0){
      line(x6,y6,width/2,height/2);
    }else{
      line(centerX,centerY,x2, y2);
    }
  }
  //
  if (on7 > 0) {
    if (colorOn7 > 0) {
      stroke(r, g, b);
    }else{
      stroke(0);
    }  
    //
    if (trueCenter > 0){
      line(x7,y7,width/2,height/2);
    }else{
      line(centerX,centerY,x7, y7);
    }
  }
  //
  if (on8 > 0) {
    if (colorOn8 > 0) {
      stroke(r, g, b);
    }else{
      stroke(0);
    } 
    //
    if (trueCenter > 0){
      line(x8,y8,width/2,height/2);
    }else{
      line(centerX,centerY,x8, y8);
    }
  }

}

void keyPressed() {
  // toggles "on" variables based on keypress
  if (key == '1'){
    on1 = on1*-1;
  }
  if (key == '2'){
    on2 = on2*-1;
  }
  if (key == '3'){
    on3 = on3*-1;
  }
  if (key == '4'){
    on4 = on4*-1;
  }
  if (key == '5'){
    on5 = on5*-1;
  }
  if (key == '6'){
    on6 = on6*-1;
  }
  if (key == '7'){
    on7 = on7*-1;
  }
  if (key == '8'){
    on8 = on8*-1;
  }
////////////////////////
  // randomizes the given color
  if (key == 'c'){
    r = random(255);
    g = random(255);
    b = random(255);
    
    //rSpeed = random(10);
    //gSpeed = random(10);
    //bSpeed = random(10);
    
    //println(r,g,b);
  }
  // toggles the gradient on and off
  if (key == 'v'){
    gradientOn = gradientOn*-1;
  }
//////////////////////// 
  // toggles between color/black 
  // for each line 
  if (key == 'q'){
    colorOn1 = colorOn1*-1;
  }
  if (key == 'w'){
    colorOn2 = colorOn2*-1;
  }
  if (key == 'e'){
    colorOn3 = colorOn3*-1;
  }
  if (key == 'r'){
    colorOn4 = colorOn4*-1;
  }
  if (key == 't'){
    colorOn5 = colorOn5*-1;
  }
  if (key == 'y'){
    colorOn6 = colorOn6*-1;
  }
  if (key == 'u'){
    colorOn7 = colorOn7*-1;
  }
  if (key == 'i'){
    colorOn8 = colorOn8*-1;
  }
////////////////////////
  // clears the screen
  if (key == ' '){
    background(255);
  }
////////////////////////
  // places the alternate center
  // at the cursor position
  if (key == 'p'){
    trueCenter = trueCenter*-1;
    centerX = mouseX;
    centerY = mouseY;
  }
//////////////////////// 
  // turns all lines on
  // and makes them all black
  if (key == '.'){
    colorOn1 = -1;
    colorOn2 = -1;
    colorOn3 = -1;
    colorOn4 = -1;
    colorOn5 = -1;
    colorOn6 = -1;
    colorOn7 = -1;
    colorOn8 = -1;
    
    on1 = 1; 
    on2 = 1;
    on3 = 1;
    on4 = 1;
    on5 = 1;
    on6 = 1;
    on7 = 1;
    on8 = 1;
  }
  if (key == ','){
    // makes all the lines colorful
    colorOn1 = 1;
    colorOn2 = 1;
    colorOn3 = 1;
    colorOn4 = 1;
    colorOn5 = 1;
    colorOn6 = 1;
    colorOn7 = 1;
    colorOn8 = 1;
  }
//////////////////////// 
  // saves a screenshot to a new folder
  //
  // all files saved while the program is running
  // go to the same folder labeled with date and time
  if (key == 's'){
    save("lineDrawing"+ d + "-" + m + "_" + hr + ";" + min + "/" + i);
    println("saved");
    i++;
  }  
}

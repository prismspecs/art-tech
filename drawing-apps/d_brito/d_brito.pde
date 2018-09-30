
float r=0;
float g =0;
float b =0;

boolean triangleOn = false; 
void setup() {
  size(600,600);
  background(0);
}


void draw() {
  if (triangleOn ==true) {
  triangle(mouseX,mouseY, 2, 2,10,10);
  ellipse(mouseX, mouseY,30,30);
}
//void mouseDragged(){
  noStroke();
  //fill(random(255), random(255),random(255));
  //noStroke();
  ellipse(mouseX, mouseY,30,30);
  triangle(mouseX,mouseY, 2, 2, 0,50);
  
}
void keyPressed(){
  //if(triangleOn == false){
    //triangleOn=true;
    //fill(random(255), random(255), random(255));
    if (key == 'r')
      fill(255,0,0);
      if (key == 'y')
      fill (0,154,255);
      if (key == 'b')
      fill (0,140,220);
      if (key == 'w')
      fill (255);
      if (key == 'n')
      fill (0);
      ellipse(mouseX, mouseY,30,30);
  triangle(mouseX,mouseY, 2, 2, 5,20);
      //fill(100,200,0);
    }

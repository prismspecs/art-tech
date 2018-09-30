//Olivia Lu

//key '4' command - to make ellipse stroke change colors
int r = 0;
int rSpeed = 5;

int g = 100;
int gSpeed = 5;

int b = 255;
int bSpeed = 5;

void setup() {
  //size(800, 800);
  fullScreen();
  background(255, 255, 255);
  
  //sidebar command text
  String s = " ";
  fill(50);
  text(s, 10, 10, 100, 180);
  textSize(14);
  text("R = red", 10, 30); 
  text("O = orange", 10, 60); 
  text("Y = yellow", 10, 90);
  text("G = green", 10, 120); 
  text("B = blue", 10, 150); 
  text("P = purple", 10, 180); 
  text("space = black", 10, 210);
  text("1 = ", 10, 240);
  text("2 = ", 10, 270);
  text("3 = ", 10, 300);
  text("4 = ", 10, 330);
  text("5 = ", 10, 360);
  text("enter = restart", 10, height-10);
  noFill();
  ellipse(55, 235, 20, 20);
  noFill();
  rect(45, 255, 20, 20);
  noFill();
  triangle(55, 285, 45, 305, 65, 305);
  fill(255,160,243);
  ellipse(55, 325, 20, 20);
  fill(random(255),random(255),random(255));
  ellipse(55, 355, 25, 15);

}

void draw() {

  //key commands
  if (keyPressed) {
    if (key == 'o' || key == 'O') {
      stroke(255, 125, 3);
    }
    if (key == 'r' || key == 'R') {
      stroke(255, 3, 3);
    } 
    if (key == 'y' || key == 'Y') {
      stroke(255, 243, 3);
    } 
    if (key == 'b' || key == 'B') {
      stroke(3, 126, 255);
    } 
    if (key == 'g' || key == 'G') {
      stroke(114, 250, 130);
    } 
    if (key == 'p' || key == 'P') {
      stroke(186, 114, 250);
    } 
    if (key == ' ') {
      stroke(0);
    }
  }  

  if (key == '1') {
    fill(random(255),random(255),random(255));
    //ellipse(mouseX, mouseY, random(100), random(100));
    ellipse(mouseX,mouseY,abs(pmouseX-mouseX),abs(pmouseY-mouseY)); 

  } 
  if (key == '2') {
    noStroke();
    fill(random(255),random(255),random(255), 60);
    rect(mouseX, mouseY, random(100), random(100));
  } 
  if (key == '3') {
    fill(random(255),random(255),random(255));
    triangle(width/2,height/2,mouseX,mouseY,pmouseX,pmouseY);
  }
  if(key == '4'){ 
    noStroke();
    fill(r,g,b);
    ellipse(mouseX, mouseY,20,20);
    r = r + rSpeed;
    g = g + gSpeed;
    b = b + bSpeed;
    
    if(r >= 255 || r <= 0){
      rSpeed = rSpeed * -1;
    }
    if(g >= 255 || g <= 0){
      gSpeed = gSpeed * -1;
    }
    if(b >= 255 || b <= 0){
      bSpeed = bSpeed * -1;
    }  
  } 
  if(key == '5'){
    noStroke();
    fill(random(255),random(255),random(255),40);
    ellipse(width/2, height/2, mouseX*.5, mouseY*.5);
  }
   if (key == ENTER) {
      background(255,255,255);
      stroke(0);
      String s = " ";
      fill(50);
      text(s, 10, 10, 100, 180);
      textSize(14);
      text("R = red", 10, 30); 
      text("O = orange", 10, 60); 
      text("Y = yellow", 10, 90);
      text("G = green", 10, 120); 
      text("B = blue", 10, 150); 
      text("P = purple", 10, 180); 
      text("space = black", 10, 210);
      text("1 = ", 10, 240);
      text("2 = ", 10, 270);
      text("3 = ", 10, 300);
      text("4 = ", 10, 330);
      text("5 = ", 10, 360);
      text("enter = restart", 10, height-10);
      noFill();
      ellipse(55, 235, 20, 20);
      noFill();
      rect(45, 255, 20, 20);
      noFill();
      triangle(55, 285, 45, 305, 65, 305);
      fill(255,160,243);
      ellipse(55, 325, 20, 20);
      fill(random(255),random(255),random(255));
      ellipse(55, 355, 25, 15);
  } 
  

}
 
//draw with mouse being dragged
void mouseDragged() {
  line(mouseX, mouseY, pmouseX, pmouseY);

}



//  if(mouseX == 30 && mouseY == 240){
//    ellipse(mouseX,mouseY,20,20);
//  }

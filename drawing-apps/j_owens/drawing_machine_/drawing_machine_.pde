//code by Josie Owens!
void setup() {
  size(800,800);
  //fullScreen();
  background(255);
  strokeWeight(5);
}

void draw() {
  
  fill(0);
  
}

void mouseDragged() {
  line(mouseX,mouseY,pmouseX,pmouseY);
  
  }
  void keyPressed() {
    
    //changes thickness of line
    if(key == 'w') {
      strokeWeight(random(30));
    }
    //selects a red shade for the line
    if(key == 'r') {
      stroke(random(255),0,0);
    }
    //selects a green shade for the line
    if(key == 'g') {
      stroke(0,random(255),0);
    }
     //selects a blue shade for the line
    if(key == 'b') {
      stroke(0,0,random(255));
    }
    //resets/selects a random background color w/ full opacity
    if(key == 'q') {
      background(random(100),random(100),random(100));
    }
    //selects a random shade for the line
    if(key == 'c') {
      stroke(random(255),random(255),random(255));
    }
    if(key == 'a') {
      noStroke();
      fill(random(255),random(255),random(255),random(255));
      ellipse(random(width),random(height),random(200),random(200));
      
    }
  }

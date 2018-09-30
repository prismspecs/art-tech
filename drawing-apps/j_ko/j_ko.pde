
void setup() {
  size(900, 600);

  
  noStroke();
  frameRate(1.2);
  background(15,10,150);
  
 tint(255, 127);
 PImage img;
  img = loadImage("foggy rainy window pane.jpg");
  image(img, 0, 0);

}

void draw() {



 background(15,10,150,0.2);
 
    fill (random (255) ,random (255), random (255)); 
    noStroke();
  ellipse (random(900),random(600), 230, 230);
  
   tint(255, 127);
  PImage img;
  img = loadImage("foggy rainy window pane.jpg");
  image(img, 0, 0);
  
  
 
}

void mouseDragged() {
   stroke(89,97,161,200);
  strokeWeight(20);
line(mouseX,mouseY,pmouseX,pmouseY);
}

//Michelle Li 

//opacity
float op=0;

//triangle,rectangle,ellipse size
float s =random(5);
float maxD = 40;
float minD = 2;
float d = minD;
float dSpeed = 1;

//rainbow confetti size
float l=random(50);

float r=0;
float g=0;
float b=0;

void setup() {
  fullScreen();
  background(0);
  noStroke();  
}


void draw() {
  //red square 
   fill(255,0,0);//red square in corner
  rect(0,0,20,20);
  
  //orange square
   fill(255,195,28);//orange square
  rect(20,0,20,20);
  
  //yellow square
  fill(255,255,0);
  rect(40,0,20,20);
  
  //green square
  fill(105,245,74);
  rect(60,0,20,20);
  
  //turquoise square 
  fill(95,248,255);//turquoise square//haven't done yet
  rect(0,20,20,20);
  
  //dark blue square
  fill(57,68,255);//dark blue square//havent done
  rect(20,20,20,20);
  
  //purple square
  fill(152,57,255);
  rect(40,20,20,20);
  
  //magenta square
  fill(211,57,255);
  rect(60,20,20,20);
  
}

void keyPressed() {
  //draw ellipses
    if (key=='e'){ 
     op++;

  float xOffset=random(-5, 5);
  float yOffset=random(-5, 5);

  noStroke();//color
  fill(r,g,b,op);
 
  ellipse(mouseX, mouseY, d, d);
  ellipse(mouseX+xOffset, mouseY+yOffset, d, d);
  d = d + dSpeed;
  if (d > maxD) {
    dSpeed = dSpeed * -1;
  }
  if (d < minD) {
    dSpeed = dSpeed * -1;
  } 
    }   

//draw rectangles
  if (key == 'r') {
      float xOffset=random(-5, 5);
      float yOffset=random(-5, 5);

   noStroke();
   fill(r,g,b,op);
 
  rect(mouseX, mouseY, d, d);
  rect(mouseX+xOffset,mouseY+yOffset,d,d);
  d = d + dSpeed;
  if (d > maxD) {
    dSpeed = dSpeed * -1;
  }
  if (d < minD) {
    dSpeed = dSpeed * -1;
  } 
    } 
    
//draw triangle
  if (key == 't') {
    
   noStroke();
   fill(r,g,b);
   
    noFill();
  stroke(r,b,g,op);
  strokeWeight(random(10));
  triangle(mouseX, mouseY,mouseX+10,mouseY+20,mouseX+10,mouseY+10);
 
    }   

//ellipse stroke
if(key=='1'){
   noFill();
  stroke(r,g,b,op);
  strokeWeight(random(10));
  ellipse(pmouseX,pmouseY,mouseX/2,mouseY/2);
}
    
//rectangle stroke
if(key=='2'){
 noFill();
  stroke(r,g,b,op);
  strokeWeight(random(10));
  rect(pmouseX,pmouseY,mouseX/2,mouseY/2);
}
  
  
//rainbow circles
  if (key=='3'){
    stroke(random(255), random(255), random(255),op);
    noFill();
    ellipse (mouseX, mouseY, l, l);
    ellipse(mouseX, mouseY, l, l);
}


 if (key==ENTER){ //want to make clear function 
  background(0);
 }
}



void mousePressed(){
  //red square button
   if(mouseX>0) {
    if(mouseX<20){
      if(mouseY>0){
        if(mouseY<20){
          r=random(255);
          b=0; 
          g=0;
          op=random(100);  
          }
        }
      }
    }
    
// Orange square button
    if(mouseX>20){
      if(mouseX<40){
        if(mouseY>0){
          if(mouseY<20){
            r=255;
            g=195;
            b=28;
          }
        }
      }
    }
    
//yellow square button
    if(mouseX>40){
      if(mouseX<60){
        if(mouseY>0){
          if(mouseY<20){
            r=255;
            g=255;
            b=0;
            op=random(100);
          }
        }
      }
    }
        
  
 //green square button
   if(mouseX>60){
      if(mouseX<80){
        if(mouseY>0){
          if(mouseY<20){
            r=105;
            g=245;
            b=74;
            op=random(100);
          }
        }
      }
    }
 
 //turquoise button
 if(mouseX>0){
      if(mouseX<20){
        if(mouseY>20){
          if(mouseY<40){
            r=95;
            g=248;
            b=255;
            op=random(100);
          }
        }
      }
    }
 
 //dark blue button
  if(mouseX>20){
      if(mouseX<40){
        if(mouseY>20){
          if(mouseY<40){
            r=57;
            g=68;
            b=255;
            op=random(100);
          }
        }
      }
    }

//purple button
  if(mouseX>40){
      if(mouseX<60){
        if(mouseY>20){
          if(mouseY<40){
            r=152;
            g=57;
            b=255;
            op=random(100);
          }
        }
      }
    }

//magenta button
  if(mouseX>60){
    if(mouseX<80){
      if(mouseY>20){
        if(mouseY<40){
          r=211;
          g=57;
          b=255;
          op=random(100);
        }
      }
    }
  }  
}

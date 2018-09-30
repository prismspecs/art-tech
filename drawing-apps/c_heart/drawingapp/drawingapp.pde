/* Drawing App
*Clarissa Heart
*Art and Technology*/

String typing = "";
String saved = "";
PFont f;
float menuW = 200;
float menuH = 100;


public void setup(){
  size(2500,1500);
  background(255);
  textSize(80);
  textAlign(CENTER);

}

int size = 50;
int brush = 0; //0=line, 1=fan
int col = 0;

public void keyPressed(){

  if( key == 'e' ){
    noStroke();
    fill(255);
    rect(201,0,width-200,height);
    stroke(0);
  }
  if( key == 't' ){ //prints random characters
    stroke(0);
    int i = PApplet.parseInt(random(9));
    text(words(i), random(2250)+250,random(1500));
  }
  if( key == '+' ){ //size goes up
    size+= size/4;
  }
  if( key == '-' ){ // size goes down
    size -= size/4;
    if( size <= 0 ) size=1;
  }
  if( key == ' ' ){
    brush++;
    brush = brush%6;
  }
}

void drawMenu(){
  noStroke();
  //menu rectangle
  fill(50);
  rect(0,0,menuW,height);
  
  //red menu button
  fill(255,0,0);
  rect(0,0,menuW,menuH); //bounded x 0-200, y 0-200
  
  //orange menu button
  fill(255,128,0);
  rect(0,menuH,menuW,menuH);
  
  //yellow menu button
  fill(255,255,0);
  rect(0,menuH*2,menuW,menuH); //bounded x 50-150, 250-350


  //light green menu button
  fill(128,255,0);
  rect(0,menuH*3,menuW,menuH);
  
  //green menu button
  fill(0,240,0);
  rect(0,menuH*4,menuW,menuH);

  //blue-green menu button
  fill(0,255,128);
  rect(0,menuH*5,menuW,menuH);
  
  //light blue menu button
  fill(0,255,255);
  rect(0,menuH*6,menuW,menuH);
  
  //med blue menu button
  fill(0,128,255);
  rect(0,menuH*7,menuW,menuH);
  
 //blue menu button
  fill(0,0,255);
  rect(0,menuH*8,menuW,menuH);
  
  //purple menu button
  fill(128,0,255);
  rect(0,menuH*9,menuW,menuH);
  
  //pink menu button
  fill(255,0,255);
  rect(0,menuH*10,menuW,menuH);
 
  //magenta menu button
  fill(240,0,124);
  rect(0,menuH*11,menuW,menuH);
  
 //white menu button
  fill(255,255,255);
  rect(0, menuH*12, menuW, menuH);
  
  //black menu button
  fill(0);
  rect(0,menuH*13,menuW,menuH);

  //instructions
  stroke(0);
  strokeWeight(2);
  fill(255);
  rect(width-500,0,500,100);
  fill(0);
  textSize(25);
  text("press space to change the brush", width-250,30);
  text("press + to increase brush size", width -250, 60);
  text("press - to decrease brush size", width-250,90);

}

//random characters to print to t
public String words(int num){
  if( num == 0 ) return "~";
  if( num == 1 ) return "!";
  if( num == 2 ) return "@";
  if( num == 3 ) return "#";
  if( num == 4 ) return "$";
  if( num == 5 ) return "%";
  if( num == 6 ) return "^";
  if( num == 7 ) return "&";
  if( num == 8 ) return "*";
  else return "";
}


public void mouseClicked(){
  if( mouseX <= 150 ){
    if( mouseX >= 50){
      if( mouseY <= menuH*1){ //RED
        if( mouseY >= menuH*0){
          col=0;
        }
      }
      if( mouseY <= menuH*2 ){
        if( mouseY >= menuH*1 ){
          col=1;
        }
      }
      if( mouseY <= menuH*3 ){
        if( mouseY >= menuH*2 ){
          col=2;
        }
      }
      if( mouseY <= menuH*4 ){
        if( mouseY >= menuH*3 ){
          col=3;
        }
      }
      if( mouseY <= menuH*5 ){
        if( mouseY >= menuH*4 ){
          col=4;
        }
      }
      if( mouseY <= menuH*6 ){
        if( mouseY >= menuH*5 ){
          col=5;
        }
      }
      if( mouseY <= menuH*7 ){
        if( mouseY >= menuH*6 ){
          col=6;
        }
      }
      if( mouseY <= menuH*8 ){
        if( mouseY >= menuH*7 ){
          col=7;
        }
      }
      if( mouseY <= menuH*9 ){
        if( mouseY >= menuH*8 ){
          col=8;
        }
      }
      if( mouseY <= menuH*10 ){
        if( mouseY >= menuH*9 ){
          col=9;
        }
      }
      if( mouseY <= menuH*11 ){
        if( mouseY >= menuH*10 ){
          col=10;
        }
      }
      if( mouseY <= menuH*12 ){
        if( mouseY >= menuH*11 ){
          col=11;
        }
      }
      if( mouseY <= menuH*13 ){
        if( mouseY >= menuH*12 ){
          col=12;
        }
      }
      if( mouseY <= menuH*14 ){
        if( mouseY >= menuH*13 ){
          col=13;
        }
      }
      if( mouseY <= height ){
        if( mouseY >= menuH*14 ){
          col=14;
        }
      }
    }
  }
}

public void setColor(){
  if( col == 0 ){
    stroke(255,0,0);
    fill(255,0,0);
  }
  if( col == 1 ){
    stroke(255,128,0);
    fill(255,128,0);
  }
  if( col == 2 ){
    stroke(255,255,0);
          fill(255,255,0);
  }
  if( col == 3 ){
    stroke(128,255,0);
          fill(128,255,0);
  }
  if( col == 4 ){
    stroke(0,240,0);
          fill(0,240,0);
  }
  if( col == 5 ){
    fill(0,255,128);
          stroke(0,255,128);
  }
  if( col == 6 ){
    fill(0,255,255);
          stroke(0,255,255);
  }
  if( col == 7 ){
    fill(0,128,255);
          stroke(0,128,255);
  }
  if( col == 8 ){
    fill(0,0,255);
          stroke(0,0,255);
  }
  if( col == 9 ){
    stroke(128,0,255);
          fill(128,0,255);
  }
  if( col == 10 ){
    stroke(255,0,255);
          fill(255,0,255);
  }
  if( col == 11 ){
    stroke(240,0,124);
          fill(240,0,124);
  }
  if( col == 12 ){
    stroke(255,255,255);
          fill(255,255,255);
  }
  if( col == 13 ){
    stroke(0);
    fill(0);
  }
  if( col == 14 ){
    stroke(50);
    fill(50);
  }
    
    
  
}


public void draw(){

  drawMenu();
  setColor();
  
    strokeWeight(size);
  if( mousePressed ){
    if( brush == 0 ){
      line(mouseX,mouseY, pmouseX, pmouseY);
    }
    else if( brush == 1 ){ //sprinkles
      strokeWeight(5);
      line(mouseX-random(50), mouseY-random(50), pmouseX-random(50), pmouseY-random(50));
    }
    else if(brush == 2 ){ //eyes
      size = 100;
      strokeWeight(size);
      fill(0);
      ellipse(mouseX, mouseY, random(size/4), random(size/4));
    }
    else if(brush == 3 ){ //scribble brush
      for( int i=0; i<10; i++ ){
        ellipse(mouseX+random(size),mouseY+random(size),2,2);
      }
    }
    else if(brush == 4 ){ //spray paint 
      strokeWeight(3);
      size = 100;
      for( int i=0; i<size/4; i++ ){
        point(mouseX+random(size/2),mouseY+random(size/2));
      }
    }
    else if( brush == 5 ){ //pixelated?
    noStroke();
    size = 40;
    int X = int(map(mouseX,0,width,0,width/size));
    int Y = int(map(mouseY,0,height,0,height/size));
    rect(X*size,Y*size,size,size);
    }
   
  }
}

//    Elie McAfee-Hahn 09.20.2018



//BEST WITH A MOUSE!


//t = time in frames
float t = 0;
//x and y for the parametric placement values
float x = width/2;
float y = height/2;
//a and b are the sizes of the ellipse (a for width, b for height)
float a = 10;
float b = 10;
//c and d are coefficients for the parametric equation
float c = 1;
float d = 1;

//the mouse x and y to reposition the parametic equation
float mx=300;
float my=300;

//color fills for color settings
float red = 255;
float green = 255;
float blue = 255;
float o = 255;


void setup() {
  background(0);
  size (600, 600);
  //fullScreen();
}

void draw() {
  //stroke(255);
  //strokeWeight(4);  // Thicker
  //line(20, 40, 80, 40);

  //translate(width/2, height/2);

  x = c*t*cos(t)+mx;
  y = d*t*sin(t)+my;

  fill(red, green, blue, o);
  ellipse(x, y, a, b);



  t++;
}

void mouseDragged() {
  /*rect(mouseX,height-100,15,30); - tried to make a slider
   
   if (mouseX < 600) {
   f = mouseX/10; 
   println(f);
   }*/


  a = mouseX/10;
  b = mouseY/10;
}


void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(e);

  if (e == -1) {
    c = mouseX/100;
    d = mouseY/100;
  }

  if (e == 1) {
    c = 1;
    d = 1;
  }
}



void keyPressed() {

  //if space it restarts the t variable to restart the whole parametric equation
  if (key == 32) {
    background(0);
    t=0;
    x=width/2;
    y=height/2;
  }


  //press "." to make a new parametric equation where the mouse is!
  if (key == 46) {
    t=0;
    mx=mouseX;
    my = mouseY;
  }


  //if press 1 make blue
  if (key== 49) {
    red = 0;
    green = 0;
    blue = 255;
  }

  //if press 2 make red
  if (key== 50) {
    red = 100;
    green = 0;
    blue = 0;
  } 

  //if hold o you add a weird sort of fade
   if(key== 111){
   fill(0,20);
     rect(0,0,width,height);
   
   }

  //0 resets color back to default
  if (key== 48) {
    red = 255;
    green = 255;
    blue = 255;
    o = 255;
  }

  //if you hold down q its rainbow mode
  if (key== 113) {
    red = random(255);
    green = random(255);
    blue = random(255);
    o = 255;
  }


if (key== 115) {
    // Saves a TIFF file named "diagonal.tif"
    saveFrame("drawing_app####.jpeg");
  }

// it HATED THIS
//if (key== 102) {
 //  fullScreen();
 // }
 

}


//if you click with the right mouse button then set size of ellipses to 0
// to get them drawing again click and drag mouse
void mouseClicked() {
  if (mouseButton == RIGHT) {
    a=0;
    b=0;
  }
}

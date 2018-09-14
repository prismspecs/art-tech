// create some variables
// float x = 300 means create a variable of type float,
// named 'x' and give it a value of 300
float x = 300;
float y = 300;

// how fast the pong ball moves
float xSpeed = 3;
float ySpeed = 5;

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  // erase background
  background(80, 52, 100);
  
  // draw pongball
  ellipse(x, y, 50, 50);

  // increase x and y
  x = x + xSpeed;
  y = y + ySpeed;

  // conditional logic!
  // if pongball x has gone off screen right...
  if (x > width) {
    // reverse the xspeed
    xSpeed = xSpeed * -1;
  }
  // if pongball has gone off the left side of the screen
  if (x < 0) {
    xSpeed = xSpeed * -1;
  }
  // if pongball hits bottom of screen
  if(y > height) {
    ySpeed = ySpeed * -1;
  }
  // if pongball hits top of screen
  if(y < 0) {
    ySpeed = ySpeed * -1;
  }
}

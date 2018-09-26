class Thing {
  float x;
  float y;

  float xSpeed;
  float ySpeed;

  // remember your color
  float red, green, blue;

  // constructor, a function that gets called
  // when you create this thing
  Thing() {
    // when the Thing is born, tell its x and y vars to
    // be set to the mouse position
    x = mouseX;
    y = mouseY;

    // start each one at a random direction
    xSpeed = random(-5, 5);
    ySpeed = random(-5, 5);

    // start w randomized color
    red = random(255);
    green = random(255);
    blue = random(255);
  }

  // a "method" or internal function of the object
  // that i can call
  void update() {

    // update the position of the pong ball
    x = x + xSpeed;
    y = y + ySpeed;

    // if it hits the right side of the screen
    if (x > width) {
      xSpeed = xSpeed *-1;
      // random color
      red = random(255);
      green = random(255);
      blue = random(255);
    }
    // left side
    if (x < 0) {
      xSpeed = xSpeed *-1;
      // random color
      red = random(255);
      green = random(255);
      blue = random(255);
    }
    // bottom
    if (y > height) {
      ySpeed = ySpeed *-1;
      // random color
      red = random(255);
      green = random(255);
      blue = random(255);
    }
    // top
    if (y < 0) {
      ySpeed = ySpeed *-1;
      // random color
      red = random(255);
      green = random(255);
      blue = random(255);
    }

    // fill it with its random color vars
    fill(red, green, blue);
    ellipse(x, y, 10, 10);
  }
}

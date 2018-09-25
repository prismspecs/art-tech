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

    x = x + xSpeed;
    y = y + ySpeed;

    if (x > width) {
      xSpeed = xSpeed *-1;
      // random color
      red = random(255);
      green = random(255);
      blue = random(255);
    }
    if (x < 0) {
      xSpeed = xSpeed *-1;
      // random color
      red = random(255);
      green = random(255);
      blue = random(255);
    }
    if (y > height) {
      ySpeed = ySpeed *-1;
      // random color
      red = random(255);
      green = random(255);
      blue = random(255);
    }
    if (y < 0) {
      ySpeed = ySpeed *-1;
      // random color
      red = random(255);
      green = random(255);
      blue = random(255);
    }

    fill(red, green, blue);
    ellipse(x, y, 10, 10);
  }
}

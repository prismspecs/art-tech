class Bubble {

  // store coordinates
  float x, y;

  // also store and vary the diameter of the bubble
  float diameter;

  // lets also store and randomize some color
  float r, g, b;

  Bubble() {

    // set x and y to mouse location
    x = mouseX;
    y = mouseY;

    // random diameter to begin
    diameter = random(60, 160);

    // semi random colors (adjust to taste)
    r=200;
    g=random(100, 200);
    b=random(200, 255);
  }

  void update() {
    // have the bubble get smaller as it updates
    diameter -= 1;

    // wiggle on the x axis but go upwars on the y axis
    x += random(-3, 3);
    y += random(-9);

    // if the diameter is still greater than 0, draw it
    if (diameter > 0) {
      noStroke();
      fill(r, g, b);
      ellipse(x, y, diameter, diameter);
    }
  }
}

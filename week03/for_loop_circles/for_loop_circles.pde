// draw circles across the screen from left to right,
// all different random colors

void setup() {
  size(600, 600);

  // start x at 10 so that the first circle doesnt get cut off
  for (int x = 10; x < width; x = x + 20) {

    // random fill (please)
    fill(random(255), random(255), random(255));

    // draw the circle (using the x variable from the loop)
    ellipse(x, height/2, 20, 20);
  }
}

void draw() {
}

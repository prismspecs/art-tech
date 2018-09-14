// create a variable 'r' of type int, meaning
// store a whole number
int r = 0;
int rSpeed = 5;
// also do this for green
int g = 85;
int gSpeed = 5;
// and blue
int b = 170;
int bSpeed = 5;

void setup() {
  size(600, 600);
}

void draw() {
  // change background color
  background(r, g, b);

  // increase r
  r = r + rSpeed;
  // increase g
  g = g + gSpeed;
  // increase b
  b = b + bSpeed;

  println(r);  // give us a peak at r value

  // if r is equal to or goes over 255...
  if (r >= 255) {
    // reverse rSpeed so that it goes back to black
    rSpeed = rSpeed * -1;
  }
  // if r has gone down to 0, reverse rSpeed so 
  // it gets red again
  if (r < 0) {
    rSpeed = rSpeed * -1;
  }

  // same for green
  if (g >= 255) {
    gSpeed = gSpeed * -1;
  }
  if (g < 0) {
    gSpeed = gSpeed * -1;
  }
  // same for blue
  if (b >= 255) {
    bSpeed = bSpeed * -1;
  }
  if (b < 0) {
    bSpeed = bSpeed * -1;
  }
}

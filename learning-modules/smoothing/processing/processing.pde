// this is also referred to as "easing"
// see here for another example: https://processing.org/examples/easing.html

// we have to keep track of the previous value of smoothed Y
float previousY;  

void setup() {
  size(600,600);
  stroke(255);
  strokeWeight(4);
}

void draw() {
  background(0);
  
  // draw the "actual" mouse Y position on the left side of the screen
  line(0, mouseY, 50, mouseY);
  
  // now draw the "smoothed" mouse Y position
  // the "smoothed" value is really just a value that tends towards
  // the previous value, so if it jumps from 0 -> 20, the value will
  // gradually go from 0 to 20 rather than an immediate change
  
  // here we are using 90% of the previous smoothY and 10% of the current mouseY
  // which results in a smooth but somewhat delayed change. you can play
  // around with the relationship between these two numbers. try .99 and .01
  float smoothY = (previousY * .9) + (mouseY * .1);
  previousY = smoothY;
  line(width, smoothY, width-50, smoothY);
}

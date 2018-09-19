void setup() {
  size(600, 600);

  // loop!
  // for loops have 4 parts
  // 1. declare a variable (in this case i) and give it a value
  // 2. a conditional evaluation, in this case is i less than width
  // 3. some code that executes if the above condition is true
  // 4. an incrementor, in this case, i plus 1
  for (int i = 0; i < width; i++) {

    // map wants 5 arguments:
    // 1. an input value
    // 2. an input minimum
    // 3. an input maximum
    // 4. an output minimum
    // 5. an output maximum
    float mappedValue = map(i, 0, width, 0, 255);
    
    // use this mapped value as the line color
    stroke(mappedValue);
    
    // draw the line
    line(i, 0, i, height);
  }
}

void draw() {
}

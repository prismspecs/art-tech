float x, y, z;

float xSpeed, ySpeed, zSpeed;

// this may be initially confusing, but you'll have to set some
// arbitrary limits on where objects can be on the Z axis
// as in, how "deep" into the screen and how "shallow"
float minZ = -500; // deep / far
float maxZ = 200;  // shallow / near

void setup() {
  // notice the third argument "p3d" which enables 3d
  size(500, 500, P3D);

  // give sphere random starting position
  x = random(width);
  y = random(height);
  z = random(minZ, maxZ);
  
  // these could all be randomized
  xSpeed = 5;
  ySpeed = 9;
  zSpeed = -4; 
}

void draw() {

  background(180, 24, 68);

  // when drawing in 3d, you have to first describe the 3d shape's
  // point of origin by "translating" to that coordinate
  translate(x, y, z);
  
  noFill();
  //noStroke();

  // notice the box function only takes one argument (it's size)
  // because we already described its position with translate
  sphere(50);

  x += xSpeed;
  y += ySpeed;
  z += zSpeed;
  
  // same logic for bouncing off "walls"
  if(x < 0 || x > width) {
    xSpeed *= -1;
  }
  
  if(y < 0 || y > height) {
    ySpeed *= -1;
  }
  
  // z doesnt have a system variable like width or height,
  //  so we have to set our own values
  if(z > maxZ || z < minZ) {
    zSpeed *= -1;
  }
}

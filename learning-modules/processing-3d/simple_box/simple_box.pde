float rotation = 0.0;
float rotSpeed = 0.01;

void setup() {
  // notice the third argument "p3d" which enables 3d
  size(500, 500, P3D);
  
  // try it with and without the following line
  smooth(8);
}

void draw() {
  
  background(180,24,68);
  
  // when drawing in 3d, you have to first describe the 3d shape's
  // point of origin by "translating" to that coordinate
  translate(width/2, height/2, 0);

  // you can choose what axis upon which to rotate
  rotateY(rotation);

  // notice the box function only takes one argument (it's size)
  // because we already described its position with translate
  box(250);

  // rotate some more
  rotation+=rotSpeed;
}

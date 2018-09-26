// this sketch creates pong balls at the mouse
// location when you click
// since they are objects, you can create an arbitrary
// number of them

// create an array of things instead
ArrayList<Thing> things = new ArrayList<Thing>();

void setup() {
  size(500, 500);
}

void draw() {
  background(126);

  // count from 0 to however many things are in play
  for (int i = 0; i < things.size(); i ++) {
    // call the update method of the Thing class instance
    things.get(i).update();
  }
}

void mousePressed() {
  // every time the mouse is pressed, add a new Thing instance
  things.add(new Thing());
}

// remove all objects
void keyPressed() {
  for(int i = things.size()-1; i >= 0; i--) {
    things.remove(i);
  }
}

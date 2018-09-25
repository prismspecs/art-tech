//// create space in memory for instance of Thing class
//Thing thing;

// create an array of things instead
ArrayList<Thing> things = new ArrayList<Thing>();

void setup() {
  size(500, 500);

  //// breathe life into instance!
  //thing = new Thing();
}

void draw() {
  background(126);
  //thing.update();

  // count from 0 to however many things are in play
  for (int i = 0; i < things.size(); i ++) {
    things.get(i).update();
  }
}

void mousePressed() {
  // every time the mouse is pressed, add a new Thing instance
  things.add(new Thing());
}

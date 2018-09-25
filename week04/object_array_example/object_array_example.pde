ArrayList<Thing> things = new ArrayList<Thing>();

void setup() {
  size(500, 500);
}

void draw() {
  for (int i = 0; i < things.size(); i++) {
    things.get(i).update();
  }
}

void mousePressed() {
  things.add(new Thing(mouseX, mouseY));
}

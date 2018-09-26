// an arraylist of bubbles, since we will
// be making a ton of them
ArrayList<Bubble> bubbles = new ArrayList<Bubble>();

void setup() {
  fullScreen();
}

void draw() {
  background(0);
  
  // update each bubble
  for (int i = 0; i < bubbles.size(); i++) {
    bubbles.get(i).update();
  }
}

void mouseDragged() {
  // when the mouse is dragged, create new bubbles
  // at the mouse location
  bubbles.add(new Bubble());
}

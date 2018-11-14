import ddf.minim.*;  // note that you need to add and import this library!

Minim minim;
AudioInput in;

// our variables for keeping track of the audio threshold,
// the current state of whether the audio is over the threshold
// and what the previous state of the audio was
float threshold = .2;  // audio input amplification runs from 0->1, this is arbitrary and not related to decibels
boolean hit = false;  // is audio over threshold?
boolean previousHit = false;  // was it the last time we checked?

void setup() {
  size(500, 500);
  background(0);

  minim = new Minim(this);

  // use the getLineIn method of the Minim object to get an AudioInput
  in = minim.getLineIn();

  noStroke();
}

void draw() {

  // was the audio volume below the threshold the last time we checked?
  if (previousHit == false) {
    // is it now above the threshold?
    if (in.left.level() > threshold) {
      // if so, set hit to true
      hit = true;
    }
  }

  // was the audio volume above the threshold the last time we checked?
  if (previousHit == true) {
    // is it now below the threshold?
    if (in.left.level() < threshold) {
      // set hit to false in that case
      hit = false;
    }
  }

  // the only state we want to capture is the moment where the audio
  // volume crosses the threhold from below to above, so...
  // if it was previously below threhshold, now is above:
  if (previousHit == false && hit == true) {
    println("tap!");  // do whatever. in this case, print a message
    // and draw a circle?

    fill(random(255), random(255), random(255));
    ellipse(random(width), random(height), 20, 20);
  }

  previousHit = hit;
}

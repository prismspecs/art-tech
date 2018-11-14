import processing.serial.Serial;

// an array to store incoming serial data
// if there are two incoming values, it will be
// readings[0] and readings[1]
int[] readings;

void setup() {
  size(500, 500);

  printArray(Serial.list());

  // we will set up the Serial object with an additional function
  // "bufferUntil" basically tells the Serial device to wait until
  // it receives a terminating character to start a "serial event"
  // the '\n' here means new line, as in the character at the end
  // of a println (usually invisible)
  new Serial(this, Serial.list()[1], 9600).bufferUntil('\n');

  background(0);
  noStroke();
}

void draw() {
  // print out the readings
  println(readings);
  println();

  // only draw the ellipse IF the button is being pressed
  if (readings[2] == 0) {

    // use incoming serial values to draw to a location
    float x = map(readings[0], 0, 1023, 0, width);
    float y = map(readings[1], 0, 1023, 0, height);

    fill(255);
    ellipse(x, y, 8, 8);
  }
}

// this event is called whenever there is an incoming value on
// the serial connection
void serialEvent(Serial s) {

  // because our data is coming as a string with numbers
  // split up by commas, we need to parse it as such
  // look up the split and trim functions on processing.org
  // for further information
  readings = int(trim(split(s.readString(), ',')));
}
